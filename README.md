
<!-- README.md is generated from README.Rmd. Please edit that file -->

# studentenstatistikNRW

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/studentenstatistikNRW)](https://CRAN.R-project.org/package=studentenstatistikNRW)
<!-- badges: end -->

## Overview

This package contains all student statistics tables (“21311 Statistik
der Studenten”) of the [Landesdatenbank
NRW](https://www.landesdatenbank.nrw.de/). The package is created by
downloading the data using the [wiesbaden
package](https://github.com/sumtxt/wiesbaden) by Moritz Marbach.

## Installation

The package is not yet on CRAN. Install the development version from
[GitHub](https://github.com/) with:

``` r
# Package remotes needs to be installed!
# install.packages("remotes")
remotes::install_github("RichardMeyer-Eppler/studentenstatistikNRW")
```

## Data

The table below lists all tables included by the package. They are all
part of the student statistics tables (“21311 Statistik der Studenten”)
of the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de/):

| tablename        | description                                                                                                                                                                                                       |
|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `?df_21311LJ001` | Studierende, Ausländische Studierende, Nebenhörer, Beurlaubte, Land, Semester                                                                                                                                     |
| `?df_21311LJ002` | Studierende, Ausländische Studierende, Nebenhörer, Beurlaubte, Geschlecht, Land, Semester                                                                                                                         |
| `?df_21311LJ003` | Studierende, Nationalität, Land, Semester                                                                                                                                                                         |
| `?df_21311LJ004` | Studierende, Geschlecht, Nationalität, Land, Semester                                                                                                                                                             |
| `?df_21311LJ005` | Studierende, Nebenhörer, Hochschulart, Land, Semester                                                                                                                                                             |
| `?df_21311LJ006` | Studierende, Nebenhörer, Geschlecht, Hochschulart, Land, Semester                                                                                                                                                 |
| `?df_21311LJ007` | Studierende, Nationalität, Hochschulart, Land, Semester                                                                                                                                                           |
| `?df_21311LJ008` | Studierende, Prüfungsgruppe, Land, Semester                                                                                                                                                                       |
| `?df_21311LJ009` | Studierende, Prüfungsgruppe (nach Lehrämtern), Land, Semester                                                                                                                                                     |
| `?df_21311LJ010` | Studierende, Hochschulsemester, Land, Semester                                                                                                                                                                    |
| `?df_21311LJ011` | Studierende, Fachsemester, Land, Semester                                                                                                                                                                         |
| `?df_21311LJ012` | Studierende, Geschlecht, Prüfungsgruppe, Land, Semester                                                                                                                                                           |
| `?df_21311LJ013` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Land, Semester                                                                                                                                         |
| `?df_21311LJ014` | Studierende, Geschlecht, Hochschulsemester, Land, Semester                                                                                                                                                        |
| `?df_21311LJ015` | Studierende, Geschlecht, Fachsemester, Land, Semester                                                                                                                                                             |
| `?df_21311LJ016` | Studierende, Prüfungsgruppe, Hochschulsemester, Land, Semester                                                                                                                                                    |
| `?df_21311LJ017` | Studierende, Prüfungsgruppe (nach Lehrämtern), Hochschulsemester, Land, Semester                                                                                                                                  |
| `?df_21311LJ018` | Studierende, Prüfungsgruppe, Fachsemester, Land, Semester                                                                                                                                                         |
| `?df_21311LJ019` | Studierende, Prüfungsgruppe (nach Lehrämtern), Fachsemester, Land, Semester                                                                                                                                       |
| `?df_21311LJ020` | Studierende, Geschlecht, Prüfungsgruppe, Hochschulsemester, Land, Semester                                                                                                                                        |
| `?df_21311LJ021` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Hochschulsemester, Land, Semester                                                                                                                      |
| `?df_21311LJ022` | Studierende, Geschlecht, Prüfungsgruppe, Fachsemester, Land, Semester                                                                                                                                             |
| `?df_21311LJ023` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Fachsemester, Land, Semester                                                                                                                           |
| `?df_21311LJ024` | Studierende, Abschlussprüfung, Land, Semester                                                                                                                                                                     |
| `?df_21311LJ025` | Studierende, Geschlecht, Abschlussprüfung, Land, Semester                                                                                                                                                         |
| `?df_21311LJ026` | Studierende, Prüfungsgruppe, Abschlussprüfung, Land, Semester                                                                                                                                                     |
| `?df_21311LJ027` | Studierende, Prüfungsgruppe (nach Lehrämtern), Abschlussprüfung, Land, Semester                                                                                                                                   |
| `?df_21311LJ028` | Studierende, Geschlecht, Prüfungsgruppe, Abschlussprüfung, Land, Semester                                                                                                                                         |
| `?df_21311LJ029` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Abschlussprüfung, Land, Semester                                                                                                                       |
| `?df_21311LJ030` | Studierende, Fächergruppe, Land, Semester                                                                                                                                                                         |
| `?df_21311LJ031` | Studierende, Studienbereich, Land, Semester                                                                                                                                                                       |
| `?df_21311LJ032` | Studierende, Geschlecht, Fächergruppe, Land, Semester                                                                                                                                                             |
| `?df_21311LJ033` | Studierende, Geschlecht, Studienbereich, Land, Semester                                                                                                                                                           |
| `?df_21311LJ034` | Studierende, Prüfungsgruppe, Fächergruppe, Land, Semester                                                                                                                                                         |
| `?df_21311LJ035` | Studierende, Prüfungsgruppe, Studienbereich, Land, Semester                                                                                                                                                       |
| `?df_21311LJ036` | Studierende, Prüfungsgruppe (nach Lehrämtern), Fächergruppe, Land, Semester                                                                                                                                       |
| `?df_21311LJ037` | Studierende, Prüfungsgruppe (nach Lehrämtern), Studienbereich, Land, Semester                                                                                                                                     |
| `?df_21311LJ038` | Studierende, Hochschulsemester, Fächergruppe, Land, Semester                                                                                                                                                      |
| `?df_21311LJ039` | Studierende, Hochschulsemester, Studienbereich, Land, Semester                                                                                                                                                    |
| `?df_21311LJ040` | Studierende, Fachsemester, Fächergruppe, Land, Semester                                                                                                                                                           |
| `?df_21311LJ041` | Studierende, Fachsemester, Studienbereich, Land, Semester                                                                                                                                                         |
| `?df_21311LJ042` | Studierende, Geschlecht, Prüfungsgruppe, Fächergruppe, Land, Semester                                                                                                                                             |
| `?df_21311LJ043` | Studierende, Geschlecht, Prüfungsgruppe, Studienbereich, Land, Semester                                                                                                                                           |
| `?df_21311LJ044` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Fächergruppe, Land, Semester                                                                                                                           |
| `?df_21311LJ045` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Studienbereich, Land, Semester                                                                                                                         |
| `?df_21311LJ046` | Studierende, Geschlecht, Hochschulsemester, Fächergruppe, Land, Semester                                                                                                                                          |
| `?df_21311LJ047` | Studierende, Geschlecht, Hochschulsemester, Studienbereich, Land, Semester                                                                                                                                        |
| `?df_21311LJ048` | Studierende, Geschlecht, Fachsemester, Fächergruppe, Land, Semester                                                                                                                                               |
| `?df_21311LJ049` | Studierende, Geschlecht, Fachsemester, Studienbereich, Land, Semester                                                                                                                                             |
| `?df_21311LJ050` | Studierende, Prüfungsgruppe, Hochschulsemester, Fächergruppe, Land, Semester                                                                                                                                      |
| `?df_21311LJ051` | Studierende, Prüfungsgruppe (nach Lehrämtern), Hochschulsemester, Fächergruppe, Land, Semester                                                                                                                    |
| `?df_21311LJ052` | Studierende, Prüfungsgruppe, Fachsemester, Fächergruppe, Land, Semester                                                                                                                                           |
| `?df_21311LJ053` | Studierende, Prüfungsgruppe (nach Lehrämtern), Fachsemester, Fächergruppe, Land, Semester                                                                                                                         |
| `?df_21311LJ054` | Studierende, Prüfungsgruppe, Hochschulsemester, Studienbereich, Land, Semester                                                                                                                                    |
| `?df_21311LJ055` | Studierende, Prüfungsgruppe (nach Lehrämtern), Hochschulsemester, Studienbereich, Land, Semester                                                                                                                  |
| `?df_21311LJ056` | Studierende, Prüfungsgruppe, Fachsemester, Studienbereich, Land, Semester                                                                                                                                         |
| `?df_21311LJ057` | Studierende, Prüfungsgruppe (nach Lehrämtern), Fachsemester, Studienbereich, Land, Semester                                                                                                                       |
| `?df_21311LJ058` | Studierende, Geschlecht, Prüfungsgruppe, Hochschulsemester, Fächergruppe, Land, Semester                                                                                                                          |
| `?df_21311LJ059` | Studierende, Geschlecht, Prüfungsgruppe, Hochschulsemester, Studienbereich, Land, Semester                                                                                                                        |
| `?df_21311LJ060` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Hochschulsemester, Fächergruppe, Land, Semester                                                                                                        |
| `?df_21311LJ061` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Hochschulsemester, Studienbereich, Land, Semester                                                                                                      |
| `?df_21311LJ062` | Studierende, Geschlecht, Prüfungsgruppe, Fachsemester, Fächergruppe, Land, Semester                                                                                                                               |
| `?df_21311LJ063` | Studierende, Geschlecht, Prüfungsgruppe, Fachsemester, Studienbereich, Land, Semester                                                                                                                             |
| `?df_21311LJ064` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Fachsemester, Fächergruppe, Land, Semester                                                                                                             |
| `?df_21311LJ065` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Fachsemester, Studienbereich, Land, Semester                                                                                                           |
| `?df_21311LJ066` | Studierende, Nebenhörer, Hochschule, Land, Semester                                                                                                                                                               |
| `?df_21311LJ067` | Studierende, Nebenhörer, Hochschulen insgesamt, Land, Semester                                                                                                                                                    |
| `?df_21311LJ068` | Studierende, Nebenhörer, Hochschule (Standorte), Land, Semester                                                                                                                                                   |
| `?df_21311LJ069` | Studierende, Nebenhörer, Geschlecht, Hochschule, Land, Semester                                                                                                                                                   |
| `?df_21311LJ070` | Studierende, Nebenhörer, Geschlecht, Hochschulen insgesamt, Land, Semester                                                                                                                                        |
| `?df_21311LJ071` | Studierende, Nebenhörer, Geschlecht, Hochschule (Standorte), Land, Semester                                                                                                                                       |
| `?df_21311LJ072` | Studierende, Hochschulsemester, Hochschulart, Land, Semester                                                                                                                                                      |
| `?df_21311LJ073` | Studierende, Hochschulsemester, Hochschule, Land, Semester                                                                                                                                                        |
| `?df_21311LJ074` | Studierende, Hochschulsemester, Hochschulen insgesamt, Land, Semester                                                                                                                                             |
| `?df_21311LJ075` | Studierende, Hochschulsemester, Hochschule (Standorte), Land, Semester                                                                                                                                            |
| `?df_21311LJ076` | Studierende, Fachsemester, Hochschulart, Land, Semester                                                                                                                                                           |
| `?df_21311LJ077` | Studierende, Fachsemester, Hochschule, Land, Semester                                                                                                                                                             |
| `?df_21311LJ078` | Studierende, Fachsemester, Hochschulen insgesamt, Land, Semester                                                                                                                                                  |
| `?df_21311LJ079` | Studierende, Fachsemester, Hochschule (Standorte), Land, Semester                                                                                                                                                 |
| `?df_21311LJ080` | Studierende, Geschlecht, Hochschulsemester, Hochschulart, Land, Semester                                                                                                                                          |
| `?df_21311LJ081` | Studierende, Geschlecht, Hochschulsemester, Hochschule, Land, Semester                                                                                                                                            |
| `?df_21311LJ082` | Studierende, Geschlecht, Hochschulsemester, Hochschulen insgesamt, Land, Semester                                                                                                                                 |
| `?df_21311LJ083` | Studierende, Geschlecht, Hochschulsemester, Hochschule (Standorte), Land, Semester                                                                                                                                |
| `?df_21311LJ084` | Studierende, Geschlecht, Fachsemester, Hochschulart, Land, Semester                                                                                                                                               |
| `?df_21311LJ085` | Studierende, Geschlecht, Fachsemester, Hochschule, Land, Semester                                                                                                                                                 |
| `?df_21311LJ086` | Studierende, Geschlecht, Fachsemester, Hochschulen insgesamt, Land, Semester                                                                                                                                      |
| `?df_21311LJ087` | Studierende, Geschlecht, Fachsemester, Hochschule (Standorte), Land, Semester                                                                                                                                     |
| `?df_21311LJ088` | Studierende, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                                                       |
| `?df_21311LJ089` | Studierende, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                                                     |
| `?df_21311LJ090` | Studierende, Hochschulart, Abschlussprüfung, Land, Semester                                                                                                                                                       |
| `?df_21311LJ091` | Studierende, Hochschule, Abschlussprüfung, Land, Semester                                                                                                                                                         |
| `?df_21311LJ092` | Studierende, Hochschulen insgesamt, Abschlussprüfung, Land, Semester                                                                                                                                              |
| `?df_21311LJ093` | Studierende, Hochschule (Standorte), Abschlussprüfung, Land, Semester                                                                                                                                             |
| `?df_21311LJ094` | Studierende, Hochschulart, Fächergruppe, Land, Semester                                                                                                                                                           |
| `?df_21311LJ095` | Studierende, Hochschule, Fächergruppe, Land, Semester                                                                                                                                                             |
| `?df_21311LJ096` | Studierende, Hochschulen insgesamt, Fächergruppe, Land, Semester                                                                                                                                                  |
| `?df_21311LJ097` | Studierende, Hochschule (Standorte), Fächergruppe, Land, Semester                                                                                                                                                 |
| `?df_21311LJ098` | Studierende, Hochschulart, Studienbereich, Land, Semester                                                                                                                                                         |
| `?df_21311LJ099` | Studierende, Hochschule, Studienbereich, Land, Semester                                                                                                                                                           |
| `?df_21311LJ100` | Studierende, Hochschulen insgesamt, Studienbereich, Land, Semester                                                                                                                                                |
| `?df_21311LJ101` | Studierende, Hochschule (Standorte), Studienbereich, Land, Semester                                                                                                                                               |
| `?df_21311LJ102` | Studierende, Geschlecht, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                                           |
| `?df_21311LJ103` | Studierende, Geschlecht, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                                         |
| `?df_21311LJ104` | Studierende, Geschlecht, Hochschulart, Abschlussprüfung, Land, Semester                                                                                                                                           |
| `?df_21311LJ105` | Studierende, Geschlecht, Hochschule, Abschlussprüfung, Land, Semester                                                                                                                                             |
| `?df_21311LJ106` | Studierende, Geschlecht, Hochschulen insgesamt, Abschlussprüfung, Land, Semester                                                                                                                                  |
| `?df_21311LJ107` | Studierende, Geschlecht, Hochschule (Standorte), Abschlussprüfung, Land, Semester                                                                                                                                 |
| `?df_21311LJ108` | Studierende, Geschlecht, Hochschulart, Fächergruppe, Land, Semester                                                                                                                                               |
| `?df_21311LJ109` | Studierende, Geschlecht, Hochschule, Fächergruppe, Land, Semester                                                                                                                                                 |
| `?df_21311LJ110` | Studierende, Geschlecht, Hochschulen insgesamt, Fächergruppe, Land, Semester                                                                                                                                      |
| `?df_21311LJ111` | Studierende, Geschlecht, Hochschule (Standorte), Fächergruppe, Land, Semester                                                                                                                                     |
| `?df_21311LJ112` | Studierende, Geschlecht, Hochschulart, Studienbereich, Land, Semester                                                                                                                                             |
| `?df_21311LJ113` | Studierende, Geschlecht, Hochschule, Studienbereich, Land, Semester                                                                                                                                               |
| `?df_21311LJ114` | Studierende, Geschlecht, Hochschulen insgesamt, Studienbereich, Land, Semester                                                                                                                                    |
| `?df_21311LJ115` | Studierende, Geschlecht, Hochschule (Standorte), Studienbereich, Land, Semester                                                                                                                                   |
| `?df_21311LJ116` | Studierende, Hochschulart, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                                         |
| `?df_21311LJ117` | Studierende, Hochschule, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                                           |
| `?df_21311LJ118` | Studierende, Hochschulen insgesamt, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                                |
| `?df_21311LJ119` | Studierende, Hochschule (Standorte), Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                               |
| `?df_21311LJ120` | Studierende, Hochschulart, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                                       |
| `?df_21311LJ121` | Studierende, Hochschule, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                                         |
| `?df_21311LJ122` | Studierende, Hochschulen insgesamt, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                              |
| `?df_21311LJ123` | Studierende, Hochschule (Standorte), Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                             |
| `?df_21311LJ124` | Studierende, Geschlecht, Hochschulart, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                             |
| `?df_21311LJ125` | Studierende, Geschlecht, Hochschule, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                               |
| `?df_21311LJ126` | Studierende, Geschlecht, Hochschulen insgesamt, Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                    |
| `?df_21311LJ127` | Studierende, Geschlecht, Hochschule (Standorte), Abschlussprüfung, Fächergruppe, Land, Semester                                                                                                                   |
| `?df_21311LJ128` | Studierende, Geschlecht, Hochschulart, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                           |
| `?df_21311LJ129` | Studierende, Geschlecht, Hochschule, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                             |
| `?df_21311LJ130` | Studierende, Geschlecht, Hochschulen insgesamt, Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                  |
| `?df_21311LJ131` | Studierende, Geschlecht, Hochschule (Standorte), Abschlussprüfung, Studienbereich, Land, Semester                                                                                                                 |
| `?df_21311LJ132` | Studierende, Studienfach, Land, Semester                                                                                                                                                                          |
| `?df_21311LJ133` | Studierende, Fächerbelegungen, Land, Semester                                                                                                                                                                     |
| `?df_21311LJ134` | Studierende, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                                        |
| `?df_21311LJ135` | Studierende, Geschlecht, Studienfach, Land, Semester                                                                                                                                                              |
| `?df_21311LJ136` | Studierende, Geschlecht, Fächerbelegungen, Land, Semester                                                                                                                                                         |
| `?df_21311LJ137` | Studierende, Geschlecht, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                            |
| `?df_21311LJ138` | Studierende, Hochschulart, Studienfach, Land, Semester                                                                                                                                                            |
| `?df_21311LJ139` | Studierende, Hochschule, Studienfach, Land, Semester                                                                                                                                                              |
| `?df_21311LJ140` | Studierende, Hochschulen insgesamt, Studienfach, Land, Semester                                                                                                                                                   |
| `?df_21311LJ141` | Studierende, Hochschule (Standorte), Studienfach, Land, Semester                                                                                                                                                  |
| `?df_21311LJ142` | Studierende, Hochschulart, Fächerbelegungen, Land, Semester                                                                                                                                                       |
| `?df_21311LJ143` | Studierende, Hochschule, Fächerbelegungen, Land, Semester                                                                                                                                                         |
| `?df_21311LJ144` | Studierende, Hochschulen insgesamt, Fächerbelegungen, Land, Semester                                                                                                                                              |
| `?df_21311LJ145` | Studierende, Hochschule (Standorte), Fächerbelegungen, Land, Semester                                                                                                                                             |
| `?df_21311LJ146` | Studierende, Hochschulart, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                          |
| `?df_21311LJ147` | Studierende, Hochschule, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                            |
| `?df_21311LJ148` | Studierende, Hochschulen insgesamt, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                 |
| `?df_21311LJ149` | Studierende, Hochschule (Standorte), Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                |
| `?df_21311LJ150` | Studierende, Geschlecht, Hochschulart, Studienfach, Land, Semester                                                                                                                                                |
| `?df_21311LJ151` | Studierende, Geschlecht, Hochschule, Studienfach, Land, Semester                                                                                                                                                  |
| `?df_21311LJ152` | Studierende, Geschlecht, Hochschulen insgesamt, Studienfach, Land, Semester                                                                                                                                       |
| `?df_21311LJ153` | Studierende, Geschlecht, Hochschule (Standorte), Studienfach, Land, Semester                                                                                                                                      |
| `?df_21311LJ154` | Studierende, Geschlecht, Hochschulart, Fächerbelegungen, Land, Semester                                                                                                                                           |
| `?df_21311LJ155` | Studierende, Geschlecht, Hochschule, Fächerbelegungen, Land, Semester                                                                                                                                             |
| `?df_21311LJ156` | Studierende, Geschlecht, Hochschulen insgesamt, Fächerbelegungen, Land, Semester                                                                                                                                  |
| `?df_21311LJ157` | Studierende, Geschlecht, Hochschule (Standorte), Fächerbelegungen, Land, Semester                                                                                                                                 |
| `?df_21311LJ158` | Studierende, Geschlecht, Hochschulart, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                              |
| `?df_21311LJ159` | Studierende, Geschlecht, Hochschule, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                |
| `?df_21311LJ160` | Studierende, Geschlecht, Hochschulen insgesamt, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                     |
| `?df_21311LJ161` | Studierende, Geschlecht, Hochschule (Standorte), Studienfach, Fächerbelegungen, Land, Semester                                                                                                                    |
| `?df_21311LJ162` | Studierende, Prüfungsgruppe, Studienfach, Land, Semester                                                                                                                                                          |
| `?df_21311LJ163` | Studierende, Prüfungsgruppe, Fächerbelegungen, Land, Semester                                                                                                                                                     |
| `?df_21311LJ164` | Studierende, Prüfungsgruppe (nach Lehrämtern), Studienfach, Land, Semester                                                                                                                                        |
| `?df_21311LJ165` | Studierende, Prüfungsgruppe (nach Lehrämtern), Fächerbelegungen, Land, Semester                                                                                                                                   |
| `?df_21311LJ166` | Studierende, Prüfungsgruppe, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                                        |
| `?df_21311LJ167` | Studierende, Prüfungsgruppe (nach Lehrämtern), Studienfach, Fächerbelegungen, Land, Semester                                                                                                                      |
| `?df_21311LJ168` | Studierende, Geschlecht, Prüfungsgruppe, Studienfach, Land, Semester                                                                                                                                              |
| `?df_21311LJ169` | Studierende, Geschlecht, Prüfungsgruppe, Fächerbelegungen, Land, Semester                                                                                                                                         |
| `?df_21311LJ170` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Studienfach, Land, Semester                                                                                                                            |
| `?df_21311LJ171` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Fächerbelegungen, Land, Semester                                                                                                                       |
| `?df_21311LJ172` | Studierende, Geschlecht, Prüfungsgruppe, Studienfach, Fächerbelegungen, Land, Semester                                                                                                                            |
| `?df_21311LJ173` | Studierende, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Studienfach, Fächerbelegungen, Land, Semester                                                                                                          |
| `?df_21311LJ174` | Studierende, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                                                     |
| `?df_21311LJ175` | Studierende, Geschlecht, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                                         |
| `?df_21311LJ176` | Studierende, Hochschulart, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                                       |
| `?df_21311LJ177` | Studierende, Hochschule, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                                         |
| `?df_21311LJ178` | Studierende, Hochschulen insgesamt, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                              |
| `?df_21311LJ179` | Studierende, Hochschule (Standorte), Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                             |
| `?df_21311LJ180` | Studierende, Geschlecht, Hochschulart, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                           |
| `?df_21311LJ181` | Studierende, Geschlecht, Hochschule, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                             |
| `?df_21311LJ182` | Studierende, Geschlecht, Hochschulen insgesamt, Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                  |
| `?df_21311LJ183` | Studierende, Geschlecht, Hochschule (Standorte), Ort des Erwerbs der Hochschulzugangsberechtigung, Land, Semester                                                                                                 |
| `?df_21311LJ184` | Studierende, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                                                |
| `?df_21311LJ185` | Studierende, Geschlecht, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                                    |
| `?df_21311LJ186` | Studierende, Hochschulart, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                                  |
| `?df_21311LJ187` | Studierende, Hochschule, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                                    |
| `?df_21311LJ188` | Studierende, Hochschulen insgesamt, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                         |
| `?df_21311LJ189` | Studierende, Hochschule (Standorte), Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                        |
| `?df_21311LJ190` | Studierende, Geschlecht, Hochschulart, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                      |
| `?df_21311LJ191` | Studierende, Geschlecht, Hochschule, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                                        |
| `?df_21311LJ192` | Studierende, Geschlecht, Hochschulen insgesamt, Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                             |
| `?df_21311LJ193` | Studierende, Geschlecht, Hochschule (Standorte), Land der Hochschulzugangsberechtigung, Land, Semester                                                                                                            |
| `?df_21311LJ194` | Studierende, Art des Studiums, Land, Semester                                                                                                                                                                     |
| `?df_21311LJ195` | Studierende, Geschlecht, Art des Studiums, Land, Semester                                                                                                                                                         |
| `?df_21311LJ196` | Studierende, Zeitmodell des Studiums, Land, Semester                                                                                                                                                              |
| `?df_21311LJ197` | Studierende, Geschlecht, Zeitmodell des Studiums, Land, Semester                                                                                                                                                  |
| `?df_21311LJ198` | Studierende, Hochschulart, Zeitmodell des Studiums, Land, Semester                                                                                                                                                |
| `?df_21311LJ199` | Studierende, Fächergruppe, Zeitmodell des Studiums, Land, Semester                                                                                                                                                |
| `?df_21311LJ200` | Studierende, Geschlecht, Hochschulart, Zeitmodell des Studiums, Land, Semester                                                                                                                                    |
| `?df_21311LJ201` | Studierende, Geschlecht, Fächergruppe, Zeitmodell des Studiums, Land, Semester                                                                                                                                    |
| `?df_21311LJ202` | Studierende, Regelstudienzeit, Land, Semester                                                                                                                                                                     |
| `?df_21311LJ203` | Studierende, Geschlecht, Regelstudienzeit, Land, Semester                                                                                                                                                         |
| `?df_21311LJ204` | Studierende, Hochschulart, Regelstudienzeit, Land, Semester                                                                                                                                                       |
| `?df_21311LJ205` | Studierende, Fächergruppe, Regelstudienzeit, Land, Semester                                                                                                                                                       |
| `?df_21311LJ206` | Studierende, Geschlecht, Hochschulart, Regelstudienzeit, Land, Semester                                                                                                                                           |
| `?df_21311LJ207` | Studierende, Geschlecht, Fächergruppe, Regelstudienzeit, Land, Semester                                                                                                                                           |
| `?df_21311LJ208` | Studierende, Altersgruppen (unter 18, 1-Jahres-Schritte, 60 und mehr), Land, Semester                                                                                                                             |
| `?df_21311LJ209` | Studierende, Geschlecht, Altersgruppen (unter 18, 1-Jahres-Schritte, 60 und mehr), Land, Semester                                                                                                                 |
| `?df_21311LJ210` | Studierende, Hochschulart, Altersgruppen (unter 18, 1-Jahres-Schritte, 60 und mehr), Land, Semester                                                                                                               |
| `?df_21311LJ211` | Studierende, Fächergruppe, Altersgruppen (unter 18, 1-Jahres-Schritte, 60 und mehr), Land, Semester                                                                                                               |
| `?df_21311LJ212` | Studierende, Geschlecht, Hochschulart, Altersgruppen (unter 18, 1-Jahres-Schritte, 60 und mehr), Land, Semester                                                                                                   |
| `?df_21311LJ213` | Studierende, Geschlecht, Fächergruppe, Altersgruppen (unter 18, 1-Jahres-Schritte, 60 und mehr), Land, Semester                                                                                                   |
| `?df_21311LJ214` | Ausländische Studierende, Bildungsherkunft, Land, Semester                                                                                                                                                        |
| `?df_21311LJ215` | Ausländische Studierende, Kontinente, Land, Semester                                                                                                                                                              |
| `?df_21311LJ216` | Ausländische Studierende, Staatsangehörigkeit, Land, Semester                                                                                                                                                     |
| `?df_21311LJ217` | Ausländische Studierende, Bildungsherkunft, Kontinente, Land, Semester                                                                                                                                            |
| `?df_21311LJ218` | Ausländische Studierende, Bildungsherkunft, Staatsangehörigkeit, Land, Semester                                                                                                                                   |
| `?df_21311LJ219` | Ausländische Studierende, Geschlecht, Bildungsherkunft, Land, Semester                                                                                                                                            |
| `?df_21311LJ220` | Ausländische Studierende, Geschlecht, Kontinente, Land, Semester                                                                                                                                                  |
| `?df_21311LJ221` | Ausländische Studierende, Geschlecht, Staatsangehörigkeit, Land, Semester                                                                                                                                         |
| `?df_21311LJ222` | Ausländische Studierende, Geschlecht, Bildungsherkunft, Kontinente, Land, Semester                                                                                                                                |
| `?df_21311LJ223` | Ausländische Studierende, Geschlecht, Bildungsherkunft, Staatsangehörigkeit, Land, Semester                                                                                                                       |
| `?df_21311LJ224` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Land, Studienjahr             |
| `?df_21311LJ225` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Geschlecht, Land, Studienjahr |
| `?df_21311LJ226` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Nationalität, Land, Studienjahr                                                                                                      |
| `?df_21311LJ227` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Nationalität, Land, Studienjahr                                                                                          |
| `?df_21311LJ228` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulart, Land, Studienjahr                                                                                                      |
| `?df_21311LJ229` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulart, Land, Studienjahr                                                                                          |
| `?df_21311LJ230` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Nationalität, Hochschulart, Land, Studienjahr                                                                                        |
| `?df_21311LJ231` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Land, Studienjahr                                                                                                  |
| `?df_21311LJ232` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Prüfungsgruppe, Land, Studienjahr                                                                                                    |
| `?df_21311LJ233` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Prüfungsgruppe (nach Lehrämtern), Land, Studienjahr                                                                                  |
| `?df_21311LJ234` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Land, Studienjahr                                                                                      |
| `?df_21311LJ235` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Prüfungsgruppe, Land, Studienjahr                                                                                        |
| `?df_21311LJ236` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Prüfungsgruppe (nach Lehrämtern), Land, Studienjahr                                                                      |
| `?df_21311LJ237` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Prüfungsgruppe, Land, Studienjahr                                                                                  |
| `?df_21311LJ238` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Prüfungsgruppe (nach Lehrämtern), Land, Studienjahr                                                                |
| `?df_21311LJ239` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Prüfungsgruppe, Land, Studienjahr                                                                      |
| `?df_21311LJ240` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Prüfungsgruppe (nach Lehrämtern), Land, Studienjahr                                                    |
| `?df_21311LJ241` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschule, Land, Studienjahr                                                                                                        |
| `?df_21311LJ242` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulen insgesamt, Land, Studienjahr                                                                                             |
| `?df_21311LJ243` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschule (Standorte), Land, Studienjahr                                                                                            |
| `?df_21311LJ244` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschule, Land, Studienjahr                                                                                            |
| `?df_21311LJ245` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulen insgesamt, Land, Studienjahr                                                                                 |
| `?df_21311LJ246` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschule (Standorte), Land, Studienjahr                                                                                |
| `?df_21311LJ247` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Fächergruppe, Land, Studienjahr                                                                                                      |
| `?df_21311LJ248` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Studienbereich, Land, Studienjahr                                                                                                    |
| `?df_21311LJ249` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Fächergruppe, Land, Studienjahr                                                                                          |
| `?df_21311LJ250` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Studienbereich, Land, Studienjahr                                                                                        |
| `?df_21311LJ251` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Fächergruppe, Land, Studienjahr                                                                                    |
| `?df_21311LJ252` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Studienbereich, Land, Studienjahr                                                                                  |
| `?df_21311LJ253` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulart, Land, Studienjahr                                                                                    |
| `?df_21311LJ254` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschule, Land, Studienjahr                                                                                      |
| `?df_21311LJ255` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulen insgesamt, Land, Studienjahr                                                                           |
| `?df_21311LJ256` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschule (Standorte), Land, Studienjahr                                                                          |
| `?df_21311LJ257` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulart, Fächergruppe, Land, Studienjahr                                                                                        |
| `?df_21311LJ258` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschule, Fächergruppe, Land, Studienjahr                                                                                          |
| `?df_21311LJ259` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulen insgesamt, Fächergruppe, Land, Studienjahr                                                                               |
| `?df_21311LJ260` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschule (Standorte), Fächergruppe, Land, Studienjahr                                                                              |
| `?df_21311LJ261` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulart, Studienbereich, Land, Studienjahr                                                                                      |
| `?df_21311LJ262` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschule, Studienbereich, Land, Studienjahr                                                                                        |
| `?df_21311LJ263` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulen insgesamt, Studienbereich, Land, Studienjahr                                                                             |
| `?df_21311LJ264` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschule (Standorte), Studienbereich, Land, Studienjahr                                                                            |
| `?df_21311LJ265` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Fächergruppe, Land, Studienjahr                                                                        |
| `?df_21311LJ266` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Studienbereich, Land, Studienjahr                                                                      |
| `?df_21311LJ267` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschulart, Land, Studienjahr                                                                        |
| `?df_21311LJ268` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschule, Land, Studienjahr                                                                          |
| `?df_21311LJ269` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschulen insgesamt, Land, Studienjahr                                                               |
| `?df_21311LJ270` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschule (Standorte), Land, Studienjahr                                                              |
| `?df_21311LJ271` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulart, Fächergruppe, Land, Studienjahr                                                                            |
| `?df_21311LJ272` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschule, Fächergruppe, Land, Studienjahr                                                                              |
| `?df_21311LJ273` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulen insgesamt, Fächergruppe, Land, Studienjahr                                                                   |
| `?df_21311LJ274` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschule (Standorte), Fächergruppe, Land, Studienjahr                                                                  |
| `?df_21311LJ275` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulart, Studienbereich, Land, Studienjahr                                                                          |
| `?df_21311LJ276` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschule, Studienbereich, Land, Studienjahr                                                                            |
| `?df_21311LJ277` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulen insgesamt, Studienbereich, Land, Studienjahr                                                                 |
| `?df_21311LJ278` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschule (Standorte), Studienbereich, Land, Studienjahr                                                                |
| `?df_21311LJ279` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulart, Fächergruppe, Land, Studienjahr                                                                      |
| `?df_21311LJ280` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschule, Fächergruppe, Land, Studienjahr                                                                        |
| `?df_21311LJ281` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulen insgesamt, Fächergruppe, Land, Studienjahr                                                             |
| `?df_21311LJ282` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschule (Standorte), Fächergruppe, Land, Studienjahr                                                            |
| `?df_21311LJ283` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulart, Studienbereich, Land, Studienjahr                                                                    |
| `?df_21311LJ284` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschule, Studienbereich, Land, Studienjahr                                                                      |
| `?df_21311LJ285` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschulen insgesamt, Studienbereich, Land, Studienjahr                                                           |
| `?df_21311LJ286` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Abschlussprüfung, Hochschule (Standorte), Studienbereich, Land, Studienjahr                                                          |
| `?df_21311LJ287` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschulart, Fächergruppe, Land, Studienjahr                                                          |
| `?df_21311LJ288` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschule, Fächergruppe, Land, Studienjahr                                                            |
| `?df_21311LJ289` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschulen insgesamt, Fächergruppe, Land, Studienjahr                                                 |
| `?df_21311LJ290` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschule (Standorte), Fächergruppe, Land, Studienjahr                                                |
| `?df_21311LJ291` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschulart, Studienbereich, Land, Studienjahr                                                        |
| `?df_21311LJ292` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschule, Studienbereich, Land, Studienjahr                                                          |
| `?df_21311LJ293` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschulen insgesamt, Studienbereich, Land, Studienjahr                                               |
| `?df_21311LJ294` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Abschlussprüfung, Hochschule (Standorte), Studienbereich, Land, Studienjahr                                              |
| `?df_21311LJ295` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Fächerbelegungen, Land, Studienjahr                                                                                                  |
| `?df_21311LJ296` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Studienfach, Land, Studienjahr                                                                                                       |
| `?df_21311LJ297` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Fächerbelegungen, Land, Studienjahr                                                                                      |
| `?df_21311LJ298` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Studienfach, Land, Studienjahr                                                                                           |
| `?df_21311LJ299` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Fächerbelegungen, Studienfach, Land, Studienjahr                                                                                     |
| `?df_21311LJ300` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Fächerbelegungen, Studienfach, Land, Studienjahr                                                                         |
| `?df_21311LJ301` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Schulform der Hochschulzugangsberechtigung, Land, Studienjahr                                                                        |
| `?df_21311LJ303` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Schulform der Hochschulzugangsberechtigung, Land, Studienjahr                                                            |
| `?df_21311LJ305` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulart, Schulform der Hochschulzugangsberechtigung, Land, Studienjahr                                                          |
| `?df_21311LJ306` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Fächergruppe, Schulform der Hochschulzugangsberechtigung, Land, Studienjahr                                                          |
| `?df_21311LJ307` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulart, Schulform der Hochschulzugangsberechtigung, Land, Studienjahr                                              |
| `?df_21311LJ308` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Fächergruppe, Schulform der Hochschulzugangsberechtigung, Land, Studienjahr                                              |
| `?df_21311LJ309` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Jahre seit Erwerb der Hochschulzugangsberechtigung, Land, Studienjahr                                                                |
| `?df_21311LJ310` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Jahre seit Erwerb der Hochschulzugangsberechtigung, Land, Studienjahr                                                    |
| `?df_21311LJ311` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulart, Jahre seit Erwerb der Hochschulzugangsberechtigung, Land, Studienjahr                                                  |
| `?df_21311LJ312` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Fächergruppe, Jahre seit Erwerb der Hochschulzugangsberechtigung, Land, Studienjahr                                                  |
| `?df_21311LJ313` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulart, Jahre seit Erwerb der Hochschulzugangsberechtigung, Land, Studienjahr                                      |
| `?df_21311LJ314` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Fächergruppe, Jahre seit Erwerb der Hochschulzugangsberechtigung, Land, Studienjahr                                      |
| `?df_21311LJ315` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Altersgruppen (unter 18, 1-Jahres-Schritte, 35 und mehr), Land, Studienjahr                                                          |
| `?df_21311LJ316` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Altersgruppen (unter 18, 1-Jahres-Schritte, 35 und mehr), Land, Studienjahr                                              |
| `?df_21311LJ317` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Hochschulart, Altersgruppen (unter 18, 1-Jahres-Schritte, 35 und mehr), Land, Studienjahr                                            |
| `?df_21311LJ318` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Fächergruppe, Altersgruppen (unter 18, 1-Jahres-Schritte, 35 und mehr), Land, Studienjahr                                            |
| `?df_21311LJ319` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Hochschulart, Altersgruppen (unter 18, 1-Jahres-Schritte, 35 und mehr), Land, Studienjahr                                |
| `?df_21311LJ320` | Studienanfänger im 1. Hochschulsemester, Studienanfänger im 1. Fachsemester, Geschlecht, Fächergruppe, Altersgruppen (unter 18, 1-Jahres-Schritte, 35 und mehr), Land, Studienjahr                                |
| `?df_21311LJ321` | Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Bildungsherkunft, Land, Studienjahr                                                                        |
| `?df_21311LJ322` | Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Kontinente, Land, Studienjahr                                                                              |
| `?df_21311LJ323` | Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Geschlecht, Bildungsherkunft, Land, Studienjahr                                                            |
| `?df_21311LJ324` | Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Geschlecht, Kontinente, Land, Studienjahr                                                                  |
| `?df_21311LJ325` | Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Bildungsherkunft, Kontinente, Land, Studienjahr                                                            |
| `?df_21311LJ326` | Ausländische Studienanfänger im 1. Hochschulsemester, Ausländische Studienanfänger im 1. Fachsemester, Geschlecht, Bildungsherkunft, Kontinente, Land, Studienjahr                                                |
| `?df_21311LJ327` | Beurlaubte, Grund der Beurlaubung, Land, Semester                                                                                                                                                                 |
| `?df_21311LJ328` | Beurlaubte, Geschlecht, Grund der Beurlaubung, Land, Semester                                                                                                                                                     |

## Data manipulation

The downloaded raw data cannot be included in this package, as it has a
size of roughly 200 MB. The licence requires a list of all changes as
part of the source notes (see below). These are the data transformation
steps performed:

- Technical columns ending in “QUAL”, “ERR”, or “LOCK” are removed.
- The original data uses variable and value labels with separate lookup
  tables. For the R package, these labels are added using
  `labelled::set_variable_labels` and `labelled::set_value_labels`,
  respectively.

## License for the data from the Landesdatenbank NRW / Destatis

The data in this package was obtained from the [Landesdatenbank
NRW](https://www.landesdatenbank.nrw.de/) using the code “21311” for
“Statistik der Studenten”. The licence for data obtained from the
Landesdatenbank NRW / Destatis is available here (see paragraph 2
section 2): [Data licence Germany – attribution – Version
2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires
including a reference to the dataset (URI) if available. To the best of
my knowledge, the Landesdatenbank NRW does not yet provide Uniform
Resource Identifiers (URI) to identify their tables.

Paragraph 3 stipulates that “changes, editing, new designs or other
amendments must be marked as such in the source note”. Compared to the
raw data, the following changes were made: (1) technical columns ending
in “QUAL”, “ERR”, or “LOCK” were removed, and (2) variable and value
labels were added to each table using the
[labelled](https://larmarange.github.io/labelled/) package. The code for
all these transformations is available through this package.
