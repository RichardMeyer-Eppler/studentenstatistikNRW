################################################################################
# The code here is used to download the data for all tables in `tables`
# Retrieval of raw data needs to proceed in this order:
# 1. tables.R
# 2. metadata.R
# 3. value_labels.R
# 4. table_data.R
# 5. pkgdown_yml.R
################################################################################

# _pkgdown.yml needs to be dynamically updated with list of tables

file <- "_pkgdown.yml"

pkgdown_yml <- brio::read_lines(
  path = "_pkgdown.yml"
)

# Find index where table documentation starts
pkgdown_tables_index <-
  stringr::str_which(
    pkgdown_yml,
    pattern = "- title: Data"
  )

# Replaces table documentation in _pkgdown.yml
pkdown_yml_new <- c(
  pkgdown_yml[1:pkgdown_tables_index+2],
  paste0(
    "  - df_",
    tables[["tablename"]]
  )
)

# Replaces _pkgdown.yml
brio::write_lines(
  text = pkdown_yml_new,
  path = file
)
