// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Benjamín Hurtado",
  title: "Benjamín Hurtado - CV",
  footer: context { [#emph[Benjamín Hurtado -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
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
    day: 28,
  ),
)


= Benjamín Hurtado

#connections(
  [#connection-with-icon("location-dot")[Santiago, Chile]],
  [#link("mailto:me@benjamin.hurta.do", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[me\@benjamin.hurta.do]]],
  [#link("tel:+56-9-2121-0199", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[9 2121 0199]]],
  [#link("https://benjamin.hurta.do/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[benjamin.hurta.do]]],
  [#link("https://github.com/benjujo", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[benjujo]]],
)


== Summary

Secondary Education Pedagogy student at Pontificia Universidad Católica de Chile. Interested in education, cryptography and its privacy-preserving applications, networks, and semantic web. Free Software enthusiast who enjoys self-hosting applications.

== Experience

#regular-entry(
  [
    #strong[Cranberrychic], DevOps \/ Developer

    - Backend development using Django and django-rest-framework with Celery for task scheduling, dockerized for deployment.

    - Architecture design for deployment on AWS cloud using EC2, S3, RDS, ECR, SES, and CloudFront.

    - Automatic deployment for React frontend using GitHub Actions, AWS S3, and CloudFront.

  ],
  [
    Santiago, Chile

    Mar 2022 – Dec 2025

    

    3 years 10 months

  ],
)

#regular-entry(
  [
    #strong[Bloqzilla SpA], Developer

    - Built a LaTeX report generator module in Python.

    - Built a Microsoft Access Database format to JSON converter module in Java.

    - Built web report visualization in JavaScript.

    - Performed bug fixes and system maintenance.

  ],
  [
    Santiago, Chile

    Aug 2019 – Oct 2020

    

    1 year 3 months

  ],
)

#regular-entry(
  [
    #strong[TecnoSmart SpA], Intern

    - Built a distributed scraper of judiciary data in Chile for further analysis.

  ],
  [
    Santiago, Chile

    Jan 2019 – Feb 2019

    

    2 months

  ],
)

#regular-entry(
  [
    #strong[TecnoSmart SpA], Developer

    - Provided development support for an Android project.

  ],
  [
    Santiago, Chile

    May 2018 – May 2018

    

    1 month

  ],
)

#regular-entry(
  [
    #strong[TecnoSmart SpA], Intern

    - Developed Android applications.

  ],
  [
    Santiago, Chile

    Jan 2018 – Feb 2018

    

    2 months

  ],
)

== Teaching

#regular-entry(
  [
    #strong[Universidad de Chile], Teaching Assistant — IN3501 Information and Communication Technologies for Management

    - Conducted practical classes on basic development with the Django framework.

    - Supported students with their course projects.

    - Covered databases, networks, and introductory IT topics for Industrial Engineers with a practical approach.

  ],
  [
    Santiago, Chile

    Fall 2021

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Teaching Aide — CC5301 Introduction to Modern Cryptography

    - Covered topics from classic cryptography to modern symmetric and asymmetric cryptography and practical applications.

  ],
  [
    Santiago, Chile

    Fall 2021

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Teaching Aide — CC5325 Competitive Hacking Workshop

    - Covered cybersecurity topics using a Capture The Flag (CTF) methodology approach.

  ],
  [
    Santiago, Chile

    Fall 2021

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Teaching Aide — CC3301 Systems Programming

    - Covered introductory C, bits, pointers, threads, and Unix concepts including sockets, signals, and processes.

  ],
  [
    Santiago, Chile

    Fall 2018 – Spring 2019

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Teaching Aide — IN3501 Information and Communication Technologies for Management

  ],
  [
    Santiago, Chile

    Fall 2019

  ],
)

#regular-entry(
  [
    #strong[Universidad de Chile], Teaching Aide — CC3201 Databases

    - Covered database theory, SQL, transactions, ACID compliance, and graph queries using SPARQL.

  ],
  [
    Santiago, Chile

    Spring 2017

  ],
)

== Education

#education-entry(
  [
    #strong[Pontificia Universidad Católica de Chile], Secondary Education Pedagogy

  ],
  [
    Santiago, Chile

    Jan 2026 – present

  ],
  degree-column: [
    #strong[Lic]
  ],
)

#education-entry(
  [
    #strong[Universidad de Chile], Computer Science

  ],
  [
    Santiago, Chile

    Jan 2020 – Jan 2026

  ],
  degree-column: [
    #strong[MSc]
  ],
)

#education-entry(
  [
    #strong[Universidad de Chile], Computer Science Engineering

  ],
  [
    Santiago, Chile

    Jan 2015 – Jan 2020

  ],
  degree-column: [
    #strong[BSc]
  ],
)

== Skills

#strong[Languages:] Python (Advanced), Java (Intermediate), C (Intermediate), Rust (Basic)

#strong[Frameworks:] Django (Intermediate), Django REST (Intermediate), Flask (Basic)

#strong[Technologies:] Linux (Advanced), Git (Intermediate), Docker (Intermediate), OpenWRT (Intermediate)

#strong[Tools:] LaTeX (Intermediate), Emacs (Intermediate)

#strong[Spoken Languages:] Spanish (Native), English (Fluent - TOEFL ITP B2)

== Awards

#regular-entry(
  [
    #strong[Dean's List]

    #summary[FCFM, Universidad de Chile]

  ],
  [
    Santiago, Chile

    2018 – 2020

  ],
)

#regular-entry(
  [
    #strong[BUCH Full Undergraduate Program Scholarship]

    #summary[Universidad de Chile]

  ],
  [
    Santiago, Chile

    Jan 2015

  ],
)

== Extracurricular Activities

#regular-entry(
  [
    #strong[Student Union of Computer Science Department, Universidad de Chile], Outreach Co-Director

    - Coordinated Richard Stallman's presentation at the University of Chile.

    - Handled communication with Computer Science student unions of other universities.

  ],
  [
    Santiago, Chile

    Jan 2018

  ],
)
