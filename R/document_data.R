#' Generate roxygen documentation for a table code
#'
#' @param table_name Table name as a string
#' @param table_description Table description as a string
#' @param table_rda Name of the rda file as string
#' @param download_date Date on which the data was retrieved, defaults to `Sys.Date()`
#'
#' @return The roxygen documentation as character
#'
#' @examples
document_data <- function(
  table_name,
  table_description,
  table_rda,
  download_date = Sys.Date()
) {

  roxy_items <- generate_items_roxy(
    table_name
  )

  roxy_text <- knitr::knit_expand(
    text = c(
      "#' {{table_nm}} - {{table_desc}}
#'
#' The table is sourced from the Landesdatenbank NRW from the series 2 Bildung, Sozialleistungen, Gesundheit, Rechtspflege (**Education, Social Benefits, Health, Administration of Justice**) -> 21 Bildung und Kultur (**Education and Culture**) -> 213 Hochschulen (**Universities**) -> 21311 Statistik der Studenten (**Student Statistics**).
#'
#' @source <https://www.landesdatenbank.nrw.de>, {{date}}
#' @format A tibble with:
#' \\describe{",
      "{{items}}",
      "#' }
#'
'{{rda_file}}'
"
    ),
    table_nm = table_name,
    table_desc = table_description,
    rda_file = table_rda,
    date = download_date,
    items = roxy_items
  )

  return(roxy_text)
}

#' Generates the item list for a table code
#'
#' @param table_name Table name as a string
#'
#' @return Roxygen item list
#'
#' @examples
generate_items_roxy <- function(table_name)  {

  items <- studentenstatistikNRW::df_table %>%
    dplyr::left_join(
      studentenstatistikNRW::df_metadata,
      by = c(
        "tablename"
      ),
      suffix = c(
        "",
        "_meta"
      )
    ) %>%
    dplyr::mutate(
      name_roxy = paste0(
        "#'  \\item{",
        tolower(
          name
        ),
        "}{",
        description_meta,
        "}"
      )
    ) %>%
    dplyr::filter(
      tablename == table_name
    ) %>%
    dplyr::pull(
      name_roxy
    ) %>%
    paste0(
      collapse = "\n"
    )

  return(items)
}
