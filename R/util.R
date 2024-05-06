#' @title Get formatted number of columns / variables in a data frame
#' @param x df
#' @return Formatted string with number of columns
#' @examples
#' studentenstatistikNRW:::get_ncol(mtcars)
get_ncol <- function(x){
  x_formatted <- prettyNum(
    ncol(
      x
    ),
    big.mark = ".",
    decimal.mark = ",",
    scientific = FALSE
  )

  return(x_formatted)
}

#' @title Get formatted number of rows in a data frame
#' @param x df
#' @return Formatted string with number of rows
#' @examples
#' studentenstatistikNRW:::get_nrow(mtcars)
get_nrow <- function(x){
  x_formatted <- prettyNum(
    nrow(
      x
    ),
    big.mark = ".",
    decimal.mark = ",",
    scientific = FALSE
  )

  return(x_formatted)
}

#' Takes table code or name as input and returns table name or code
#'
#' @param table_name String with table name or code
#' @param prefix Boolean, should result include "df_" prefix or not
#'
#' @return Table name (e.g. df_21311LJ139), or code (e.g. 21311LJ139)
#' @export
#'
#' @examples
#' get_table_name(tables[[1, "tablename"]])
#' get_table_name(tables[[1, "tablename"]], prefix = FALSE)
get_table_name <- function(
    table_name,
    prefix = TRUE
  ) {

  has_prefix <- stringr::str_starts(
    table_name,
    pattern = "df_"
  )

  if(prefix == FALSE) {
    return(
      dplyr::if_else(
        has_prefix,
        stringr::str_remove(
          table_name,
          "df_"
        ),
        table_name
      )
    )
  }

  if(prefix == TRUE) {
    return(
      dplyr::if_else(
        has_prefix,
        table_name,
        paste0(
          "df_",
          table_name
        )
      )
    )
  }
}
