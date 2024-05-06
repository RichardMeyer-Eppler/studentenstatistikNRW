################################################################################
# The code here is used to download the table names in the student statistics
# series.
# Retrieval of raw data needs to proceed in this order:
# 00. authentification.R
# 01. tables.R
# 02. metadata.R
# 03. value_labels.R
# 04. table_data.R
################################################################################

# This function requires authentication to work, see `??wiesbaden` for details.
tables <- wiesbaden::retrieve_datalist(
  tableseries = "21311*",
  genesis = c(db = "nrw")
) |>
  tibble::as_tibble()

usethis::use_data(
  tables,
  overwrite = TRUE,
  version = 3
)
