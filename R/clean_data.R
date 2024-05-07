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
