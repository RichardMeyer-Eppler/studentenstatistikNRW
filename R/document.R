#' Gets the item list for each table used in the roxygen documentation
#'
#' @param table_name String with table name or code
#'
#' @return Character vector containing the roxygen item list to be used in the format/describe section
#' @export
#'
#' @importFrom rlang .data
#'
#' @examples
#' document_items(table_name = tables[[1, "tablename"]])
document_items <- function(table_name)  {

  items <- studentenstatistikNRW::tables %>%
    dplyr::filter(
      .data$tablename == get_table_name(
        table_name = table_name,
        prefix = FALSE
      )
    ) %>%
    dplyr::left_join(
      studentenstatistikNRW::metadata,
      by = dplyr::join_by(
        "tablename" == "table"
      ),
      suffix = c(
        "",
        "_meta"
      )
    ) %>%
    dplyr::mutate(
      roxygen_desc_items = paste0(
        "\\item{",
        #tolower(
          .data$name,
        #),
        "}{",
        .data$description_meta,
        "}"
      )
    ) %>%
    dplyr::pull(
      .data$roxygen_desc_items
    )

  return(items)
}

#' Get roxygen format section for a given table name
#'
#' @param table_name String with table name or code
#'
#' @return Character vector containing the roxygen format section
#' @export
#'
#' @examples
#' document_format_section(table_name = tables[[1, "tablename"]])
document_format_section <- function(table_name) {

  table_name <- get_table_name(table_name)

  df <- eval(
    rlang::sym(
      table_name
    )
  )

  rows <- get_nrow(df)
  columns <- get_ncol(df)

  format_string <- sprintf(
    "A tibble with %s rows and %s variables:",
    rows,
    columns
  )

  description_items <- document_items(table_name)

  # description_items <- stringi::stri_encode(
  #   str = description_items,
  #   from = "ISO-8859-1",
  #   to = "UTF-8"
  # )

  format_section <- c(
    format_string,
    "\\describe{",
    description_items,
    "}"
  )

  return(format_section)
}

#' Get text for the R file documenting a table
#'
#' @param table_name Valid table name existing in [tables]
#'
#' @return Character vector for the r file creating the roxygen dataset documentation
#' @export
#'
#' @examples
#' document_table(table_name = tables[[1, "tablename"]])
document_table <- function(table_name)  {

  stopifnot(
    "table_name must be a dataset included in studentenstatistikNRW" =
      match(
        get_table_name(
          table_name = table_name,
          prefix = FALSE
        ),
        tables[["tablename"]]
      ) > 0
  )

  return(
    c(
      # The proper @format section is in the template in "man-roxygen".
      # Roxygen does not realize a @format section will be included through this
      # template and will generate a default @format section.
      # This can be suppressed with @format NULL:
      # https://github.com/r-lib/roxygen2/blob/e8cd3131f22db8256168f0b40adcd58144b2f794/tests/testthat/test-rd-markdown.R
      "#' @format NULL",
      paste0(
        "#' @templateVar df_table_name ",
        get_table_name(
          table_name = table_name
        )
      ),
      "#' @template dataset_documentation",
      paste0(
        "'",
        get_table_name(
          table_name = table_name
        ),
        "'"
      )
    )
  )
}

#' Get title for roxygen data table documentation
#'
#' @param table_name String with table name or code
#'
#' @return Title as character (Table code - Table description)
#' @export
#'
#' @importFrom rlang .data
#'
#' @examples
#' document_title(table_name = tables[[1, "tablename"]])
document_title <- function(table_name) {
  tables %>%
    dplyr::filter(
      .data$tablename == get_table_name(
        table_name = table_name,
        prefix = FALSE
      )
    ) %>%
    dplyr::mutate(
      title = paste(
        .data$tablename,
        .data$description,
        sep = " - "
      )
    ) %>%
    dplyr::pull(
      .data$title
    )
  # %>%
  #   stringi::stri_encode(
  #     from = "ISO-8859-1",
  #     to = "UTF-8"
  #   )
}
