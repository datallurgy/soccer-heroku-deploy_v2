library(shinymanager)

# Init DB using credentials data
credentials <- data.frame(
  user = c("shiny", "shinymanager"),
  password = c("qwerty", "12345"),
  admin = c(FALSE, TRUE),
  stringsAsFactors = FALSE
)

# you can use keyring package to set database key
# library(keyring)
# key_set("R-shinymanager-key", "obiwankenobi")

# Init the database
create_db(
  credentials_data = credentials,
  sqlite_path = "data/database.sqlite", # will be created
  # passphrase = key_get("R-shinymanager-key", "obiwankenobi")
  passphrase = "passphrase_without_keyring"
)
