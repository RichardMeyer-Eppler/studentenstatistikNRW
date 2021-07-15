################################################################################
# The code here is used to download the metadata containing the variables for
# each table.
# Retrieval of raw data needs to proceed in this order:
# 1. tables.R
# 2. metadata.R
# 3. value_labels.R
# 4. table_data.R
################################################################################

# This function requires authentication to work, see `??wiesbaden` for details.
metadata <- purrr::map_dfr(
  studentenstatistikNRW::tables[["tablename"]] %>%
    setNames(
      nm = .
    ),
  wiesbaden::retrieve_metadata,
  genesis = c(
    db = "nrw"
  ),
  .id = "tablename"
) %>%
  tibble::as_tibble()

usethis::use_data(
  metadata,
  overwrite = TRUE,
  version = 3
)
