# This function requires authentification to work, see ??wiesbaden for details.
tables <- wiesbaden::retrieve_datalist(
  tableseries = "21311*",
  genesis = c(db = "nrw")
) %>%
  tibble::as_tibble()

usethis::use_data(
  tables,
  overwrite = TRUE,
  version = 3
)
