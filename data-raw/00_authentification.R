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

# The passwords for the Landesdatenbank NRW expire regularly (once a year, maybe!?)
# Check website login to make sure authentification still works
# https://www.landesdatenbank.nrw.de

# usethis::edit_r_environ()

wiesbaden::save_credentials(
  db = "nrw",
  user = Sys.getenv("LANDESDATENBANK_NRW_USER"),
  password = Sys.getenv("LANDESDATENBANK_NRW_PASSWORD")
)

wiesbaden::test_login(
  genesis = c(
    db = "nrw"
  )
)
