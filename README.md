
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

| tablename         | description                                                                                                                      |
|:------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| `?df_21311LS001A` | Studierende / Studenten, Land, Hochschulen, Studienfach, Fachsemester, Angestrebte Abschlussprüfung, Semester                    |
| `?df_21311LS002A` | Studierende / Studenten, Land, Hochschulen, Studienfach, Hochschulsemester, Angestrebte Abschlussprüfung, Semester               |
| `?df_21311NW001A` | Studierende / Studenten, Land, Hochschulen, Fachsemester, Geschlecht, Hörerstatus, Angestrebte Abschlussprüfung, Semester        |
| `?df_21311NW001B` | Studierende / Studenten, Land, Hochschulen, Fachsemester, Nationalität, Hörerstatus, Angestrebte Abschlussprüfung, Semester      |
| `?df_21311NW002A` | Studierende / Studenten, Land, Hochschulen, Fachsemester, Geschlecht, Semester                                                   |
| `?df_21311NW002B` | Studierende / Studenten, Land, Hochschulen, Fachsemester, Nationalität, Semester                                                 |
| `?df_21311NW002C` | Studierende / Studenten, Land, Fachsemester, Nationalität, Geschlecht, Semester                                                  |
| `?df_21311NW003A` | Studierende / Studenten, Land, Hochschulen, Geschlecht, Hörerstatus, Semester                                                    |
| `?df_21311NW003B` | Studierende / Studenten, Land, Hochschulen, Nationalität, Hörerstatus, Semester                                                  |
| `?df_21311NW004A` | Studierende / Studenten, Land, Studienfach, Geschlecht, Hörerstatus, Semester                                                    |
| `?df_21311NW004B` | Studierende / Studenten, Land, Studienfach, Nationalität, Hörerstatus, Semester                                                  |
| `?df_21311NW005A` | Studierende / Studenten, Land, Hochschulen, Hochschulsemester, Geschlecht, Hörerstatus, Angestrebte Abschlussprüfung, Semester   |
| `?df_21311NW005B` | Studierende / Studenten, Land, Hochschulen, Hochschulsemester, Nationalität, Hörerstatus, Angestrebte Abschlussprüfung, Semester |
| `?df_21311NW006A` | Studierende / Studenten, Land, Hochschulen, Studienfach, Hochschulsemester, Geschlecht, Semester                                 |
| `?df_21311NW006B` | Studierende / Studenten, Land, Hochschulen, Studienfach, Hochschulsemester, Nationalität, Semester                               |
| `?df_21311NW007A` | Studierende / Studenten, Land, Hochschulen, Studienfach, Geschlecht, Semester                                                    |
| `?df_21311NW007B` | Studierende / Studenten, Land, Hochschulen, Studienfach, Nationalität, Semester                                                  |
| `?df_21311NW008`  | Studierende / Studenten, Land, Nationalität, Geschlecht, Hörerstatus, Semester                                                   |
| `?df_21311NW009`  | Studierende / Studenten, Land, Nationalität, Geschlecht, Semester                                                                |
| `?df_21311NW010`  | Studierende / Studenten, Land, Nationalität, Hörerstatus, Semester                                                               |
| `?df_21311NW011`  | Studierende / Studenten, Land, Geschlecht, Hörerstatus, Semester                                                                 |
| `?df_21311NW012`  | Studierende / Studenten, Land, Geschlecht, Semester                                                                              |
| `?df_21311NW013`  | Studierende / Studenten, Land, Nationalität, Semester                                                                            |
| `?df_21311NW014`  | Studienanfänger, Geschlecht, Hochschulen, Studienfach, Land, Semester                                                            |
| `?df_21311NW015`  | Studienanfänger, Geschlecht, Studienfach, Land, Semester                                                                         |

## Data manipulation

The downloaded raw data cannot be included in this package, as it has a
size of roughly 200 MB. The licence requires a list of all changes as
part of the source notes (see below). These are the data transformation
steps performed:

-   Column names are transformed using `janitor::clean_names()`.
-   Technical columns ending in “QUAL”, “ERR”, or “LOCK” are removed.
-   The original data uses value labels with separate lookup tables. For
    the R package, these labels are transformed into factors using the
    description from the lookup tables.

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
raw data, the following changes were made: (1) column names were changed
to lower case, (2) some technical columns were excluded and (3) value
labels were turned into factors using the description of each value
label. The code for all these transformations is available through this
package.
