#' Cleans column names, removes unwanted columns and turns data frame into a tibble.
#'
#' @param df Data frame returned by [wiesbaden::retrieve_data()]
#'
#' @return Tibble with cleaned column names and removed columns
#' @export
#'
#' @examples
#' \dontrun{
#' df <- wiesbaden::retrieve_data(
#'   tablename = "21311LS001A",
#'   genesis = c(db = "nrw")
#' )
#'
#' clean_df(df)
#' }
clean_df <- function(df)  {
  df_cleaned <- df %>%
    dplyr::select(
      -dplyr::starts_with(
        "id21311"
      ),
      -dplyr::ends_with(
        c(
          "qual",
          "err",
          "lock"
        )
      )
    ) %>%
    dplyr::rename_with(
      .fn = gsub,
      .cols = tidyselect::ends_with(
        "_val"
      ),
      pattern = "_val",
      replacement = ""
    ) %>%
    dplyr::as_tibble()

  return(df_cleaned)
}

#' Turns character vector into a factor. The labels for the levels are retrieved
#' by joining [value_labels].
#'
#' @param x Character vector containing value labels from the Landesdatenbank NRW
#'
#' @return Factor using the description from [value_labels]
#' @export
#'
#' @importFrom gtools mixedsort
#' @importFrom rlang .data
#'
#' @examples
#' create_factor(value_labels[["value_label"]])
create_factor <- function(x) {

  df_factor <- tibble::as_tibble_col(
    x,
    "value_label"
  ) %>%
  dplyr::left_join(
    value_labels,
    by = c(
      "value_label"
    )
  ) %>%
  dplyr::mutate(
    factor_level = dplyr::coalesce(
      .data$description,
      .data$value_label
    ),
    factor = forcats::as_factor(
      factor_level
    )
  ) %>%
    dplyr::left_join(
      value_labels,
      by = c(
        "value_label"
      )
    ) %>%
    dplyr::mutate(
      factor_level = dplyr::coalesce(
        .data$description,
        .data$value_label
      ),
      factor = forcats::as_factor(
        factor_level
      )
    )

  ordered_levels <- df_factor %>%
    dplyr::distinct(
      factor_level
    ) %>%
    dplyr::pull(
      factor_level
    ) %>%
    gtools::mixedsort()


  factor_ordered <- forcats::fct_relevel(
    df_factor[["factor"]],
    ordered_levels
  )

  return(factor_ordered)
}

#' Turns all character vectors of the data frame or tibble into vectors using
#' [create_factor()].
#'
#' @param df Data frame returned by [wiesbaden::retrieve_data()]
#'
#' @return Data frame with all character vectors turned into factors. If a match
#'   can be found, levels will be retrieved from [value_labels].
#' @export
#'
#' @examples
#' create_factors(value_labels)
create_factors <- function(df)  {

  df_factor <- df %>%
    dplyr::mutate(
    dplyr::across(
      where(
        is.character
      ),
      create_factor
    )
  )

  value_labels |>
    dplyr::mutate(
      dplyr::across(
        where(
          is.character
        ),
        create_factor
      )
    )


  return(df_factor)
}

utils::globalVariables("where")
