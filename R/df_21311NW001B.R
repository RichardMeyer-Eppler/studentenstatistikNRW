#' 21311NW001B - Studierende / Studenten, Land, Hochschulen, Fachsemester, Nationalität, Hörerstatus, Angestrebte Abschlussprüfung, Semester
#'
#' The table is sourced from the Landesdatenbank NRW from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (*Education, Social Benefits, Health, Administration of Justice*) -> 21 Bildung und Kultur (*Education and Culture*) -> 213 Hochschulen (*Universities*) -> 21311 Statistik der Studenten (*Student Statistics*).
#'
#' @source <https://www.landesdatenbank.nrw.de>, 2021-07-11
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
#' ```{r, results = 'asis', echo = FALSE, eval = FALSE}
#'  pointblank::scan_data(df_21311NW001B)
#' ```
#'
#' ```{r, results = 'asis', echo = FALSE, eval = !knitr::is_html_output()}
#'  skimr::skim(df_21311NW001B)
#'  rmarkdown::metadata$output
#' ```
#'
#' @examples
#' df_21311NW001B
'df_21311NW001B'

