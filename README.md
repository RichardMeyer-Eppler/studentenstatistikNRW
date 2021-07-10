
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
der Studenten”) of the Landesdatenbank NRW. The data is obtained using
the [wiesbaden package](https://github.com/sumtxt/wiesbaden) by Moritz
Marbach.

## Installation

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("RichardMeyer-Eppler/studentenstatistikNRW")
#> Using github PAT from envvar GITHUB_PAT
#> Downloading GitHub repo RichardMeyer-Eppler/studentenstatistikNRW@HEAD
#> 
#>          checking for file 'C:\Users\Richard\AppData\Local\Temp\RtmpCKvBNg\remotes2cc015ad619d\RichardMeyer-Eppler-studentenstatistikNRW-c44efd4/DESCRIPTION' ...  v  checking for file 'C:\Users\Richard\AppData\Local\Temp\RtmpCKvBNg\remotes2cc015ad619d\RichardMeyer-Eppler-studentenstatistikNRW-c44efd4/DESCRIPTION'
#>       -  preparing 'studentenstatistikNRW':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
#>       -  checking for LF line-endings in source and make files and shell scripts
#>   -  checking for empty or unneeded directories
#>      NB: this package now depends on R (>=        NB: this package now depends on R (>= 3.5.0)
#>        WARNING: Added dependency on R >= 3.5.0 because serialized objects in  serialize/load version 3 cannot be read in older versions of R.  File(s) containing such objects:  'studentenstatistikNRW/data/df_metadata.rda'  WARNING: Added dependency on R >= 3.5.0 because serialized objects in  serialize/load version 3 cannot be read in older versions of R.  File(s) containing such objects:  'studentenstatistikNRW/data/df_table.rda'  WARNING: Added dependency on R >= 3.5.0 because serialized objects in  serialize/load version 3 cannot be read in older versions of R.  File(s) containing such objects:  'studentenstatistikNRW/data/df_value_labels.rda'  WARNING: Added dependency on R >= 3.5.0 because serialized objects in  serialize/load version 3 cannot be read in older versions of R.  File(s) containing such objects:  'studentenstatistikNRW/data/table_21311LS001A.rda'
#>   -  building 'studentenstatistikNRW_0.0.0.9000.tar.gz'
#>      
#> 
#> Warning: package 'studentenstatistikNRW' is in use and will not be installed
```

## Data

This package provides the following tables:

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

## Data license for the Destatis data

Data obtained from Destatis is available under the [Data licence Germany
– attribution – version 2.0
(dl-de/by-2-0)](www.govdata.de/dl-de/by-2-0). The data in this package
was obtained from the Landesdatenbank NRW using the code “21311” for
“Statistik der Studenten”. The license requests a reference to the
dataset using the URI. To the best of my knowledge, the Landesdatenbank
NRW does not yet provide Uniform Resource Identifiers (URI) to identify
these tables.
