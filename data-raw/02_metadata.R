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

# load(
#   here::here(
#     "data",
#     "tables.rda"
#   )
# )

# This function requires authentication to work, see `??wiesbaden` for details.
metadata_list <- purrr::map(
  tables[["tablename"]],
  wiesbaden::retrieve_metadata,
  genesis = c(
    db = "nrw"
  )
)

metadata <- metadata_list |>
  purrr::set_names(
    tables[["tablename"]]
  ) |>
  purrr::list_rbind(
    names_to = "table"
  ) |>
  tibble::as_tibble()

usethis::use_data(
  metadata,
  overwrite = TRUE,
  version = 3
)

