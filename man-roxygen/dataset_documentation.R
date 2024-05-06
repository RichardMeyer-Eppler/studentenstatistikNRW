#' @title <%= document_title(df_table_name) %>
#'
#' @description
#' The table is sourced from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (*Education, Social Benefits, Health, Administration of Justice*) -> 21 Bildung und Kultur (*Education and Culture*) -> 213 Hochschulen (*Universities*) -> 21311 Statistik der Studenten (*Student Statistics*).
#'
#' @format
#' <%= document_format_section(df_table_name) %>
#'
#' @examples
#' library(labelled)
#'
#' <%= df_table_name %>
#'
#' @details
#' The following summary is automatically generated using [skimr::skim()]
#'
#' ```{r, results = 'asis', echo = FALSE}
#' <%# Brew comment: inside r markdown block, using 'studentenstatistikNRW::' is necessary. To avoid this prefix from displaying in the skimr summary, the df_name attribute is overwritten %>
#' df_skim <- skimr::skim(studentenstatistikNRW::<%=df_table_name%>)
#' attr(df_skim, "df_name") <- '<%= df_table_name %>'
#' df_skim
#' ```
#'
#' @source The data in this package was obtained from the [Landesdatenbank NRW](https://www.landesdatenbank.nrw.de) (retrieved on 2024-05-05) using the code '<%= gsub(df_table_name, pattern = "df_", replacement = "") %>'. The licence for data obtained from the Landesdatenbank NRW / Destatis is available here (see paragraph 2 section 2): [Data licence Germany – attribution – Version 2.0](http://www.govdata.de/dl-de/by-2-0). Paragraph 2 section 3 requires including a reference to the dataset (URI) if available. To the best of my knowledge, the Landesdatenbank NRW does not yet provide Uniform Resource Identifiers (URI) to identify their tables.
#'
#' Paragraph 3 stipulates that 'changes, editing, new designs or other amendments must be marked as such in the source note'. Compared to the raw data, the following changes were made: Compared to the raw data, the following changes were made: (1) technical columns ending in "QUAL", "ERR", or "LOCK" were removed, and (2) variable and value labels were added to each table using the [labelled](https://larmarange.github.io/labelled/) package. The code for all these transformations is available through this package.
