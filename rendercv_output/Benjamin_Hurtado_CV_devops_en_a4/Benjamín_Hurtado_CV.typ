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


== Summary

Software engineer specialized in DevOps and backend development: I design AWS cloud architectures, automate deployments with Docker and GitHub Actions, and build APIs with Django and Django REST Framework. Free Software enthusiast who self-hosts and manages my own Linux servers, with a particular interest in security and applied cryptography for infrastructure.

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

== Education

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

#strong[Backend & Data:] Python, Django, Django REST Framework, Celery

#strong[Cloud & DevOps:] AWS (EC2, S3, RDS, ECR, SES, CloudFront), Docker, GitHub Actions, Linux

#strong[Frontend:] React, JavaScript

#strong[Additional Tools:] Java, C, Rust, Git, LaTeX, Emacs, OpenWRT

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
