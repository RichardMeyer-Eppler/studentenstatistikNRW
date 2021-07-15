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
    janitor::clean_names(
      case = "snake"
    ) %>%
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
#' @examples
#' create_factor(value_labels[["value_label"]])
create_factor <- function(x) {
  factor <- forcats::fct_relabel(
    x,
    ~ .x %>%
      tibble::as_tibble_col(
        "value_label"
      ) %>%
      dplyr::left_join(
        value_labels,
        by = c(
          "value_label"
        )
      ) %>%
      dplyr::mutate(
        description = dplyr::coalesce(
          description,
          .x
        )
      ) %>%
      dplyr::pull(
        description
      )
  )

  return(factor)
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

  return(df_factor)
}

utils::globalVariables("where")
