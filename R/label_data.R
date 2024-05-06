#' Set variable labels using [labelled::set_variable_labels]
#'
#' @param df Data frame
#' @param table_name String with table name
#'
#' @return Data frame with labeled variables
#' @export
#'
#' @importFrom rlang .data
#'
#' @examples
#' label_variables(
#'   df_21311LS001A,
#'   table_name = "21311LS001A"
#' )
label_variables <- function(df, table_name) {

  table_name <- gsub(
    table_name,
    pattern = "df_",
    replacement = "",
    ignore.case = TRUE
  )

  metadata_df <- metadata %>%
    dplyr::filter(
      .data$table == table_name
    )

  var_labels <- setNames(
    as.list(
      metadata_df[["description"]]
    ),
    metadata_df[["name"]]
  )

  df_labeled <- df %>%
    labelled::set_variable_labels(
      .labels = var_labels,
      .strict = FALSE
    )

  return(df_labeled)
}

#' Set value labels using [labelled::set_value_labels]
#'
#' @param df Data frame
#' @param table_name String with table name
#'
#' @return Data frame with labeled values
#' @export
#'
#' @importFrom rlang .data
#'
#' @examples
#' label_values(
#'   df_21311LS001A,
#'   table_name = "21311LS001A"
#' )
label_values <- function(df, table_name) {

  table_name <- gsub(
    table_name,
    pattern = "df_",
    replacement = "",
    ignore.case = TRUE
  )

  val_labels <- metadata %>%
    dplyr::filter(
      .data[["table"]] == table_name
    ) %>%
    dplyr::left_join(
      value_labels,
      by = c(
        "name" = "variable"
      ),
      suffix = c(
        "",
        "_lab"
      )
    ) %>%
    dplyr::filter(
      !is.na(
        value_label
      )
    ) %>%
    dplyr::select(
      variable = name,
      value = value_label,
      value_label = description_lab
    )

  val_labels_split <- split(
    val_labels,
    f = val_labels[["variable"]]
  )

  values_named <- purrr::map(
    val_labels_split,
    ~ .x %>%
      dplyr::mutate(
        value = setNames(
          value,
          nm = value_label
        )
      ) %>%
      dplyr::pull(
        value
      )
  )

  vars_named <- names(df) %>%
    setNames(
      nm =.
    )

  df_labeled <- df %>%
    labelled::set_value_labels(
      vars_named,
      .labels = values_named,
      .strict = FALSE
    )

  return(df_labeled)
}
