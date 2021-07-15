################################################################################
# The code here is used to download the table names in the student statistics
# series.
# Retrieval of raw data needs to proceed in this order:
# 1. tables.R
# 2. metadata.R
# 3. value_labels.R
# 4. table_data.R
################################################################################

# This function requires authentication to work, see `??wiesbaden` for details.
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
