.onLoad <- function (libname, pkgname)
{
  # https://github.com/r-lib/tidyselect/issues/201
  utils::globalVariables("where")
  # Internal datasets
  utils::globalVariables("metadata")
  utils::globalVariables("tables")
  utils::globalVariables("value_labels")
  invisible ()
}
