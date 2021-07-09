#' Cleans column names, removes unwanted columns and turns data frame into a
#' tibble.
#'
#' @param df
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' clean_df(df)
#' }
clean_df <- function(df)  {
  df_cleaned <- df %>%
    janitor::clean_names(
      case = "snake"
    ) %>%
    dplyr::select(
      -tidyselect::starts_with(
        "id21311"
      ),
      -tidyselect::ends_with(
        c(
          "qual",
          "err",
          "lock"
        )
      )
    ) %>%
    tibble::as_tibble()

  return(df_cleaned)
}

#' Turns character vector into a factor. The labels for the levels are retrieved
#' by joining `df_value_labels`.
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' create_factor(x)
#' }
create_factor <- function(x) {
  factor <- forcats::fct_relabel(
    x,
    ~ .x %>%
      tibble::as_tibble_col(
        "value_label"
      ) %>%
      dplyr::left_join(
        df_value_labels
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
#' \code{create_factor}.
#'
#' @param df
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' create_factors(df)
#' }
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
