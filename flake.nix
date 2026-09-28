{
  description = "Entorno de build para el CV: rendercv + Python (ruamel.yaml) para build.py";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems f;
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          python = pkgs.python3.withPackages (ps: [ ps.ruamel-yaml ]);
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.rendercv
              python
            ];

            shellHook = ''
              echo "rendercv $(rendercv --version) listo. Ejemplos:"
              echo "  ./build.py full_es.yaml"
              echo "  ./build.py full_en.yaml"
              echo "  ./build.py short_en.yaml --no-render"
            '';
          };
        });
    };
}
