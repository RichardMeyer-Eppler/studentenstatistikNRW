################################################################################
# The code here is used to download the value labels for all variables used in
# the student statistics tables.
# Retrieval of raw data needs to proceed in this order:
# 1. tables.R
# 2. metadata.R
# 3. value_labels.R
# 4. table_data.R
################################################################################

# Retrieve value labels for the vector of unique variable names
list_value_labels <- purrr::map(
  unique(
    metadata[["name"]]
  ) %>%
    setNames(
      nm = .
  ),
  wiesbaden::retrieve_valuelabel,
  genesis = c(
    db = "nrw"
  )
)

# Variables with no value labels return a list with the character "No results found." Drop all these elements of type character with `purrr::discard`.
list_value_labels_wrangled<- purrr::discard(
  list_value_labels,
  is.character
) %>%
  # Clean all column names with janitor
  purrr::map(
    janitor::clean_names,
    case = "snake"
  ) %>%
  # Rename first column of each data frame in the list to "value_label"
  purrr::map(
    dplyr::rename,
    "value_label" = 1
  )

# Transform list of data frames into one data frame
value_labels <- purrr::map_dfr(
  list_value_labels_wrangled,
  dplyr::bind_rows,
  .id = "variable"
)

usethis::use_data(
  value_labels,
  overwrite = TRUE,
  version = 3
)
