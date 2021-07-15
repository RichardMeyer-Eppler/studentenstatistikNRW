#' Metadata containing the variables for each student statistics table
#'
#' The metadata for each table name in [tables] is sourced using [wiesbaden::retrieve_metadata()]. Data source is the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de).
#'
#' @format A tibble with `r get_nrow(metadata)` rows and `r get_ncol(metadata)` variables:
#' \describe{
#'  \item{tablename}{Table name}
#'  \item{name}{Variable name}
#'  \item{description}{Variable description}
#'  \item{unit}{Unit for each measure}
#' }
#'
#' @examples
#' metadata
#'
#' @source The data in this package was obtained from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) (retrieved on 2021-07-11). The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): [Data licence Germany – attribution – Version 2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.
'metadata'
