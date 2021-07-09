#' Studierende / Studenten, Land, Hochschulen, Studienfach, Fachsemester, Angestrebte Abschlussprüfung, Semester
#'
#' Blah...
#'
#' @source <https://www.landesdatenbank.nrw.de>, downloaded 2021-07-09
#' @format A tibble with `r get_nrow(table_21311LS001A)` rows and `r get_ncol(table_21311LS001A)` variables:
#' \describe{
#'  \item{dland}{Land}
#'  \item{bilhs1}{Hochschulen}
#'  \item{bilsf1}{Studienfach}
#'  \item{bilfs1}{Fachsemester}
#'  \item{bilap1}{Angestrebte Abschlussprüfung}
#'  \item{semest}{Semester}
#'  \item{bil002_val}{Studierende / Studenten (Anzahl)}
#' }
#' @details
#'
#' ```{r, results = "asis", echo = FALSE}
#' skimr::skim(table_21311LS001A)
#' ```
#'
#' @examples
#' table_21311LS001A
"table_21311LS001A"
