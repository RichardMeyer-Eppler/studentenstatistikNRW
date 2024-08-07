#' Student statistics tables ("21311 Statistik der Studenten")
#'
#' The table list is sourced using [wiesbaden::retrieve_datalist()]. Data source is the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (*Education, Social Benefits, Health, Administration of Justice*) -> 21 Bildung und Kultur (*Education and Culture*) -> 213 Hochschulen (*Universities*) -> 21311 Statistik der Studenten (*Student Statistics*).
#'
#' @format A tibble with `r get_nrow(tables)` rows and `r get_ncol(tables)` variables:
#' \describe{
#'  \item{tablename}{Table name}
#'  \item{description}{Description}
#' }
#'
#' @examples
#' tables
#'
#' @source The data in this package was obtained from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) (retrieved on 2021-07-11) using the code 21311. The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): [Data licence Germany – attribution – Version 2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.
'tables'
