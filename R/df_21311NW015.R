#' 21311NW015 - Studienanfänger, Geschlecht, Studienfach, Land, Semester
#'
#' The table is sourced from the Landesdatenbank NRW from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (*Education, Social Benefits, Health, Administration of Justice*) -> 21 Bildung und Kultur (*Education and Culture*) -> 213 Hochschulen (*Universities*) -> 21311 Statistik der Studenten (*Student Statistics*).
#'
#' @source <https://www.landesdatenbank.nrw.de>, 2021-07-11
#' @format A tibble with `r get_nrow(df_21311NW015)` rows and `r get_ncol(df_21311NW015)` variables:
#' \describe{
#'  \item{bil016}{Studienanfänger}
#'  \item{ges}{Geschlecht}
#'  \item{bilsf1}{Studienfach}
#'  \item{dland}{Land}
#'  \item{semest}{Semester}
#' }
#' @details
#' ```{r, results = 'asis', echo = FALSE, eval = FALSE}
#'  pointblank::scan_data(df_21311NW015)
#' ```
#'
#' ```{r, results = 'asis', echo = FALSE, eval = !knitr::is_html_output()}
#'  skimr::skim(df_21311NW015)
#'  rmarkdown::metadata$output
#' ```
#'
#' @examples
#' df_21311NW015
'df_21311NW015'

