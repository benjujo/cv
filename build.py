#!/usr/bin/env python3
"""Ensambla el contenido modular en content/*.yaml (una sola fuente por dato,
con campos traducibles etiquetados por idioma usando tags nativos de YAML,
al estilo de los literales con tag de idioma de RDF: en vez de "texto"@es,
se escribe `!es "texto"`) en un YAML final para rendercv, según un perfil
de salida (outputs/*.yaml), y opcionalmente lo renderiza.

Cada archivo en content/ define TODOS los idiomas de una vez. Un campo es
traducible si su valor es una lista cuyos elementos llevan tags YAML
(`!es`, `!en`, ...) — en ese caso build.py elige el elemento cuyo tag
coincide con el idioma pedido (con fallback si falta una traducción). No
existe una lista blanca de idiomas: cualquier tag sirve, se lee del nodo
mismo. Los campos que no varían entre idiomas (fechas, empresa, ubicación)
se escriben una sola vez, como valor plano sin tag.

Uso:
    ./build.py full_es.yaml
    ./build.py full_en.yaml
    ./build.py short_en.yaml --no-render
    ./build.py full_es.yaml --design design.yaml --settings settings.yaml
"""

import argparse
import pathlib
import sys
from typing import Any

import ruamel.yaml
import subprocess

ROOT = pathlib.Path(__file__).resolve().parent
CONTENT_DIR = ROOT / "content"

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True
yaml.width = 4096


def load(path: pathlib.Path):
    with path.open(encoding="utf-8") as f:
        return yaml.load(f)


def node_tag(obj) -> str | None:
    """Devuelve el código de idioma de un nodo tageado (`!es` -> "es"), o None."""
    tag = getattr(obj, "tag", None)
    if tag is None or not tag.value:
        return None
    return tag.value.lstrip("!")


def strip_tag(obj):
    """Copia un nodo tageado a su tipo plano equivalente, sin el tag."""
    if isinstance(obj, dict):
        return dict(obj)
    if isinstance(obj, list):
        return list(obj)
    return str(obj)


def resolve_lang(obj: Any, lang: str, path: str = "") -> Any:
    """Reemplaza cada lista de alternativas tageadas (`- !es ... / - !en ...`)
    por el elemento del idioma pedido."""
    if isinstance(obj, list):
        tags = [node_tag(item) for item in obj]
        if obj and all(tags):
            alternatives = dict(zip(tags, obj))
            if lang in alternatives:
                return resolve_lang(strip_tag(alternatives[lang]), lang, path)
            fallback = sorted(alternatives)[0]
            print(
                f"Aviso: falta traducción '{lang}' en {path or '(raíz)'};"
                f" usando '{fallback}'.",
                file=sys.stderr,
            )
            return resolve_lang(strip_tag(alternatives[fallback]), lang, path)
        return [resolve_lang(item, lang, f"{path}[{i}]") for i, item in enumerate(obj)]
    if isinstance(obj, dict):
        return {
            key: resolve_lang(value, lang, f"{path}.{key}" if path else str(key))
            for key, value in obj.items()
        }
    return obj


def strip_internal_keys(obj):
    """Elimina claves internas (prefijo `_`) que no existen en el schema de rendercv."""
    if isinstance(obj, list):
        return [strip_internal_keys(item) for item in obj]
    if isinstance(obj, dict):
        return {
            key: strip_internal_keys(value)
            for key, value in obj.items()
            if not str(key).startswith("_")
        }
    return obj


def entry_key(entry) -> str | None:
    if isinstance(entry, dict):
        return entry.get("_key")
    return None


def build(profile_path: pathlib.Path):
    profile = load(profile_path)
    lang = profile["language"]

    header = resolve_lang(load(CONTENT_DIR / "header.yaml"), lang, "header")
    manifest = resolve_lang(
        load(CONTENT_DIR / "manifest.yaml"), lang, "manifest"
    )["sections"]
    manifest_by_key = {item["key"]: item for item in manifest}

    exclude = profile.get("exclude", {}) or {}
    include_only = profile.get("include_only", {}) or {}

    sections = {}
    for section_key in profile["sections"]:
        if section_key not in manifest_by_key:
            sys.exit(
                f"Error: la sección '{section_key}' no existe en"
                f" {CONTENT_DIR / 'manifest.yaml'}"
            )
        meta = manifest_by_key[section_key]
        raw_entries = load(CONTENT_DIR / meta["file"])

        excluded_keys = set(exclude.get(section_key, []))
        included_keys = include_only.get(section_key)

        filtered = []
        for entry in raw_entries:
            key = entry_key(entry)
            if included_keys is not None and key not in included_keys:
                continue
            if key in excluded_keys:
                continue
            filtered.append(entry)

        resolved = resolve_lang(filtered, lang, meta["file"])
        sections[meta["title"]] = strip_internal_keys(resolved)

    cv = dict(header)
    cv["sections"] = sections

    build_dir = ROOT / "build"
    build_dir.mkdir(exist_ok=True)
    out_path = build_dir / f"{profile['filename']}.yaml"
    with out_path.open("w", encoding="utf-8") as f:
        yaml.dump({"cv": cv}, f)

    return out_path, profile, lang


def render(out_path: pathlib.Path, profile: dict, lang: str, args):
    design = ROOT / (args.design or profile.get("design", "design.yaml"))
    locale = ROOT / (args.locale or profile.get("locale", f"locale_{lang}.yaml"))
    settings = ROOT / (args.settings or profile.get("settings", "settings.yaml"))
    output_folder = ROOT / "rendercv_output" / profile["filename"]

    cmd = [
        "rendercv",
        "render",
        str(out_path),
        "-d",
        str(design),
        "-lc",
        str(locale),
        "-s",
        str(settings),
        "-o",
        str(output_folder),
    ]
    print("+", " ".join(cmd))
    subprocess.run(cmd, check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("profile", help="Archivo de perfil dentro de outputs/, p.ej. full_es.yaml")
    parser.add_argument("--no-render", action="store_true", help="Solo genera el YAML combinado, sin llamar a rendercv")
    parser.add_argument("--design", help="Override del archivo de design")
    parser.add_argument("--locale", help="Override del archivo de locale")
    parser.add_argument("--settings", help="Override del archivo de settings")
    args = parser.parse_args()

    profile_path = ROOT / "outputs" / args.profile
    if not profile_path.exists():
        sys.exit(f"Error: no existe el perfil {profile_path}")

    out_path, profile, lang = build(profile_path)
    print(f"Generado: {out_path.relative_to(ROOT)}")

    if not args.no_render:
        render(out_path, profile, lang, args)


if __name__ == "__main__":
    main()
