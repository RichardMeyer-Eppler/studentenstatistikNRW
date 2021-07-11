#' 21311NW001B - Studierende / Studenten, Land, Hochschulen, Fachsemester, Nationalität, Hörerstatus, Angestrebte Abschlussprüfung, Semester
#'
#' The table is sourced from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (*Education, Social Benefits, Health, Administration of Justice*) -> 21 Bildung und Kultur (*Education and Culture*) -> 213 Hochschulen (*Universities*) -> 21311 Statistik der Studenten (*Student Statistics*).
#'
#' @format A tibble with `r get_nrow(df_21311NW001B)` rows and `r get_ncol(df_21311NW001B)` variables:
#' \describe{
#'  \item{bil002}{Studierende / Studenten}
#'  \item{dland}{Land}
#'  \item{bilhs1}{Hochschulen}
#'  \item{bilfs1}{Fachsemester}
#'  \item{nat}{Nationalität}
#'  \item{bilhn1}{Hörerstatus}
#'  \item{bilap1}{Angestrebte Abschlussprüfung}
#'  \item{semest}{Semester}
#' }
#' @details
#' The following summary is automatically generated using [skimr::skim()]
#' 
#' ```{r, results = 'asis', echo = FALSE}
#'  skimr::skim(df_21311NW001B)
#' ```
#' @examples
#' df_21311NW001B
#' @source The data in this package was obtained from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) (retrieved on 2021-07-11) using the code 21311NW001B. The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): [Data licence Germany – attribution – Version 2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.
#'
#' Paragraph 3 stipulates that 'changes, editing, new designs or other amendments must be marked as such in the source note'. Compared to the raw data, the following changes were made: (1) column names were changed to lower case, (2) some technical columns were excluded and (3) value labels were turned into factors using the description of each value label. The code for all these transformations is available through this package.
'df_21311NW001B'

