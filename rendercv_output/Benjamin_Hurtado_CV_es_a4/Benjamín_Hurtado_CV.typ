// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Benjamín Hurtado",
  title: "Benjamín Hurtado - CV",
  footer: context { [#emph[Benjamín Hurtado -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Última actualización Sep 2026] ],
  locale-catalog-language: "es",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(39, 174, 96),
  colors-headline: rgb(39, 174, 96),
  colors-connections: rgb(39, 174, 96),
  colors-section-titles: rgb(39, 174, 96),
  colors-links: rgb(39, 174, 96),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 29,
  ),
)


= Benjamín Hurtado

#connections(
  [#connection-with-icon("location-dot")[La Florida, RM, Chile]],
  [#link("mailto:me@benjamin.hurta.do", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[me\@benjamin.hurta.do]]],
  [#link("https://benjamin.hurta.do/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[benjamin.hurta.do]]],
  [#link("https://wa.me/+56921210199", icon: false, if-underline: false, if-color: false)[#connection-with-icon("whatsapp")[+56921210199]]],
  [#link("https://github.com/benjujo", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[benjujo]]],
)


== Resumen

Estudiante de Pedagogía en Educación Media en la Pontificia Universidad Católica de Chile. Interesado en la educación, criptografía y sus aplicaciones a la preservación de la privacidad, redes y la web semántica. Entusiasta del Software Libre. Me gusta auto-hostear aplicaciones en mi propio servidor.

== Experiencia

#regular-entry(
  [
    #strong[Cranberrychic], DevOps \/ Desarrollador

    - Desarrollo backend de aplicación web usando Django y django-rest-framework en conjunto con Celery para tareas programadas. Dockerizado para el despliegue.

    - Diseño de la arquitectura para despliegue en la nube AWS usando EC2, S3, RDS, ECR, SES y CloudFront.

    - Despliegue automático del frontend en React usando GitHub Actions, AWS S3 y CloudFront.

  ],
  [
    Santiago, Chile

    Mar 2022 – Dic 2025

  ],
)

#regular-entry(
  [
    #strong[Bloqzilla SpA], Desarrollador

    - Desarrollo de un módulo generador de reportes LaTeX en Python.

    - Desarrollo de un módulo convertidor de bases de datos en formato Microsoft Access a JSON en Java.

    - Desarrollo de una visualización web de reportes en JavaScript.

    - Arreglos de bugs.

  ],
  [
    Santiago, Chile

    Ago 2019 – Oct 2020

  ],
)

#regular-entry(
  [
    #strong[TecnoSmart SpA], Practicante

    - Desarrollo de un scrapper distribuido de datos del Poder Judicial para posterior análisis.

  ],
  [
    Santiago, Chile

    Ene 2019 – Feb 2019

  ],
)

#regular-entry(
  [
    #strong[TecnoSmart SpA], Desarrollador

    - Desarrollo de apoyo para un proyecto de Android.

  ],
  [
    Santiago, Chile

    May 2018 – May 2018

  ],
)

#regular-entry(
  [
    #strong[TecnoSmart SpA], Practicante

    - Desarrollo en Android.

  ],
  [
    Santiago, Chile

    Ene 2018 – Feb 2018

  ],
)

== Docencia

#regular-entry(
  [
    #strong[Universidad de Chile], Profesor Auxiliar — IN3501 Tecnologías de Información y Comunicaciones para la Gestión

    - Clases prácticas sobre desarrollo básico en el framework de Django.

    - Apoyo a las y los estudiantes con sus proyectos.

    - El curso cubre bases de datos, redes y tópicos introductorios de las TI para Ingenieros Industriales con un enfoque práctico.

  ],
  [
    Santiago, Chile

    Otoño 2021

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Ayudante — CC5301 Introducción a la Criptografía Moderna

    - El curso cubre desde la criptografía clásica hasta criptografía simétrica y asimétrica moderna y aplicaciones prácticas de la criptografía.

  ],
  [
    Santiago, Chile

    Otoño 2021

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Ayudante — CC5325 Taller de Hacking Competitivo

    - El curso cubre tópicos de ciberseguridad con un enfoque de metodología CTF (Capture The Flag).

  ],
  [
    Santiago, Chile

    Otoño 2021

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Ayudante — CC3301 Programación de Software de Sistemas

    - El curso cubre C introductorio, bits, punteros, threads y Unix (Sockets, señales, procesos).

  ],
  [
    Santiago, Chile

    Otoño 2018 – Primavera 2019

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Ayudante — IN3501 Tecnologías de Información y Comunicaciones para la Gestión

  ],
  [
    Santiago, Chile

    Otoño 2019

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Ayudante — CC3201 Bases de Datos

    - El curso cubre sobre Teoría de Bases de Datos, SQL, transacciones, ACID y consultas en grafos (SPARQL).

  ],
  [
    Santiago, Chile

    Primavera 2017

  ],
)

== Educación

#education-entry(
  [
    #strong[Pontificia Universidad Católica de Chile], Pedagogía en Educación Media, Mención Matemática

  ],
  [
    Santiago, Chile

    Ene 2026 – presente

  ],
  degree-column: [
    #strong[Lic]
  ],
)

#education-entry(
  [
    #strong[Universidad de Chile], Ciencias, Mención Computación

  ],
  [
    Santiago, Chile

    Ene 2020 – Ene 2026

  ],
  degree-column: [
    #strong[MSc]
  ],
)

#education-entry(
  [
    #strong[Universidad de Chile], Ingeniería Civil en Computación

  ],
  [
    Santiago, Chile

    Ene 2015 – Ene 2020

  ],
  degree-column: [
    #strong[BSc]
  ],
)

== Habilidades

#strong[Lenguajes:] Python (Avanzado), Java (Intermedio), C (Intermedio), Rust (Básico)

#strong[Frameworks:] Django (Intermedio), Django REST (Intermedio), Flask (Básico)

#strong[Tecnologías:] Linux (Avanzado), Git (Intermedio), Docker (Intermedio), OpenWRT (Intermedio)

#strong[Otros:] LaTeX (Intermedio), Emacs (Intermedio)

#strong[Idiomas:] Español (Nativo), Inglés (Fluido - TOEFL ITP B2)

== Premios

#regular-entry(
  [
    #strong[Estudiante Destacado]

    #summary[FCFM, Universidad de Chile]

  ],
  [
    Santiago, Chile

    2018 – 2020

  ],
)

#regular-entry(
  [
    #strong[Beca Universidad de Chile (BUCH)]

    #summary[Universidad de Chile]

  ],
  [
    Santiago, Chile

    Ene 2015

  ],
)

== Actividades Extracurriculares

#regular-entry(
  [
    #strong[Centro de Alumnos del Departamento de Ciencias de la Computación], Co-Director de Extensión

    - Coordinación de la presentación de Richard Stallman en la Universidad de Chile.

    - Establecer comunicaciones con Centros de Estudiantes de Computación de otras universidades.

  ],
  [
    Santiago, Chile

    Ene 2018

  ],
)
