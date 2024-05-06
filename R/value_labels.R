#' Value labels for all variables in the student statistics tables
#'
#' The value labels are sourced using [wiesbaden::retrieve_valuelabel()]. Data source is the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de).
#'
#' @format A tibble with `r get_nrow(value_labels)` rows and `r get_ncol(value_labels)` variables:
#' \describe{
#'  \item{variable}{Variable}
#'  \item{value_label}{Value label (the name is misleading, this is effectively an ID)}
#'  \item{description}{The description for each value label (this is the text for each ID)}
#' }
#'
#' @examples
#' value_labels
#'
#' @source The data in this package was obtained from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) (retrieved on 2024-05-05). The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): [Data licence Germany – attribution – Version 2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.
#'
#' Paragraph 3 stipulates that 'changes, editing, new designs or other amendments must be marked as such in the source note'. Compared to the raw data, the following changes were made: (1) column names were changed to lower case.
'value_labels'
