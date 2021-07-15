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
