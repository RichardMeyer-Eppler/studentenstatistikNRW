################################################################################
# The code here is used to download the value labels for all variables used in
# the student statistics tables.
# Retrieval of raw data needs to proceed in this order:
# 1. tables.R
# 2. metadata.R
# 3. value_labels.R
# 4. table_data.R
################################################################################

# Unique variable names
unique_variables <- unique(
  metadata[["name"]]
)

# Retrieve value labels for the vector of unique variable names
list_value_labels <- purrr::map(
  unique_variables |>
    setNames(
      nm = _
  ),
  wiesbaden::retrieve_valuelabel,
  genesis = c(
    db = "nrw"
  )
)

# Variables with no value labels return a list with the character "No results found." Drop all these elements of type character with `purrr::discard`.
list_value_labels_wrangled <- purrr::discard(
  list_value_labels,
  is.character
) |>
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
) |>
  dplyr::arrange(variable) |>
  tibble::as_tibble()

usethis::use_data(
  value_labels,
  overwrite = TRUE,
  version = 3
)

list_variable_info <- purrr::map(
  unique_variables,
  wiesbaden::retrieve_varinfo,
  genesis = c(
    db = "nrw"
  )
)

variable_info <- list_variable_info |>
  purrr::map(
    dplyr::rename,
    "variable" = 1
  ) |>
  purrr::list_rbind() |>
  dplyr::filter(
    description != ""
  ) |>
  dplyr::arrange(variable) |>
  tibble::as_tibble()

usethis::use_data(
  variable_info,
  overwrite = TRUE,
  version = 3
)
