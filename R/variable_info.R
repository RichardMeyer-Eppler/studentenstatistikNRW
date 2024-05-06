#' Additional information and comments for some variables
#'
#' The additional information for each variable is sourced using [wiesbaden::retrieve_varinfo()]. Data source is the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de).
#'
#' @format A tibble with `r get_nrow(variable_info)` rows and `r get_ncol(variable_info)` variables:
#' \describe{
#'  \item{variable}{Variable name}
#'  \item{description}{Additional information for each variable}
#' }
#'
#' @examples
#' variable_info
#'
#' @source The data in this package was obtained from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) (retrieved on 2024-05-05). The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): [Data licence Germany – attribution – Version 2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.
'variable_info'
