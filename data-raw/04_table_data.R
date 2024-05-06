################################################################################
# The code here is used to download the data for all tables in `tables`
# Retrieval of raw data needs to proceed in this order:
# 1. tables.R
# 2. metadata.R
# 3. value_labels.R
# 4. table_data.R
################################################################################

# Base data for all following operations
#table_names <- studentenstatistikNRW::tables[["tablename"]][1:2]
table_names <- tables$tablename

list_df <- purrr::map(
  table_names,
  wiesbaden::retrieve_data,
  genesis = c(
    db = "nrw"
  )
)

# save(
#   list_df,
#   file = "D:\\Git\\list_df.rda",
#   version = 3
# )
# load(
#   file = "D:\\Git\\list_df.rda"
# )

list_df_wrangled <- list_df %>%
  # The table codes in the data source start with numbers, so the prefix "df_" is added for convenience when working in R
  setNames(
    nm = paste0(
    # "df_",
      table_names
    )
  ) %>%
  # Cleans column names, removes unwanted columns and turns data frame into a tibble.
  purrr::map(
    studentenstatistikNRW::clean_df
  ) %>%
  # Sorts table by all character columns
  purrr::map(
    dplyr::arrange,
    dplyr::across(
      where(
        is.character
      )
    )
  ) |>
  purrr::map2(
    table_names,
    studentenstatistikNRW::label_variables
  ) %>%
  purrr::map2(
    table_names,
    studentenstatistikNRW::label_values
  ) %>%
  setNames(
    nm = paste0(
      "df_",
      table_names
    )
  )

# head(list_df_wrangled[[1]])
# dplyr::glimpse(list_df_wrangled[[1]])
# labelled::var_label(list_df_wrangled[[1]])
# labelled::generate_dictionary(list_df_wrangled[[1]])

# Create rda files for each data frame
# See https://stackoverflow.com/questions/21809055/save-elements-of-a-list-to-rda-file-inside-a-function for as.environment
purrr::pwalk(
  list(
    list = names(
      list_df_wrangled
    ),
    file = here::here(
      "data",
      paste0(
      #  "df_",
        names(
          list_df_wrangled
        ),
        ".rda"
      )
    )
  ),
  save,
  version = 3,
  envir = as.environment(
    list_df_wrangled
  )
)

# Create table documentation for every data frame
table_documentation <- purrr::map(
  table_names,
  studentenstatistikNRW::document_table
)

# Write table documentation to R files
purrr::walk2(
  table_documentation,
  here::here(
    "R",
    paste0(
      get_table_name(
        table_names
      ),
      ".R"
    )
  ),
  writeLines,
  useBytes = TRUE
)

devtools::document()
