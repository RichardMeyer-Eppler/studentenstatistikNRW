#' Gets the item list for each table used in the roxygen documentation
#'
#' @param table_name Table name
#'
#' @return Character vector containing the roxygen item list to be used in the format/describe section
#' @importFrom rlang .data
document_items <- function(table_name)  {

  items <- studentenstatistikNRW::tables %>%
    dplyr::filter(
      .data$tablename == gsub(
        table_name,
        pattern = "df_",
        replacement = ""
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
        tolower(
          .data$name
        ),
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
#' @param table_name Table name as character
#'
#' @return Character vector containing the roxygen format section
#' @export
document_format_section <- function(table_name) {

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

  description_items <- stringi::stri_encode(
    str = description_items,
    from = "ISO-8859-1",
    to = "UTF-8"
  )

  format_section <- c(
    format_string,
    "\\describe{",
    description_items,
    "}"
  )

  # format_section <- c(
  #   format_string,
  #   "\\describe{",
  #   "  \\item{bil002}{Studierende / Studenten}",
  #   "  \\item{dland}{Land}",
  #   "  \\item{bilhs1}{Hochschulen}",
  #   "  \\item{bilsf1}{Studienfach}",
  #   "  \\item{bilsh1}{Hochschulsemester}",
  #   "  \\item{bilap1}{Angestrebte Abschlusspruefung}",
  #   "  \\item{semest}{Semester}",
  #   "}"
  # )

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
#' document_table("df_21311LS002A")
document_table <- function(table_name)  {

  stopifnot(
    "table_name must be a dataset included in studentenstatistikNRW" =
      match(
        gsub(
          table_name,
          pattern = "df_",
          replacement = ""
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
        table_name
      ),
      "#' @template dataset_documentation",
      paste0(
        "'",
        table_name,
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
#' document_title("21311LS001A")
#' document_title("df_21311LS001A")
document_title <- function(table_name) {
  tables %>%
    dplyr::filter(
      .data$tablename == gsub(
        table_name,
        pattern = "df_",
        replacement = ""
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
    ) %>%
    stringi::stri_encode(
      from = "ISO-8859-1",
      to = "UTF-8"
    )
}
