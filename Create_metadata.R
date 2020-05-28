# create metadata for Dryad submission

# install dmdScheme
install.packages("dmdScheme")
remotes::install_github("Exp-Micro-Ecol-Hub/dmdScheme", ref = "master")


# load the library
library(dmdScheme)

# make the cache permanent, otherwise it will be deleted when this R session is finished
cache(createPermanent = TRUE)

# show the available schemes
scheme_list_in_repo()

# install the scheme for ecological microcosm experiments
scheme_install("emeScheme", "0.9.5")

# show the schemes installed
scheme_list()

# use emeScheme
scheme_use("emeScheme", "0.9.5")

# enter the metadata
open_new_spreadsheet(format = FALSE)

x <- read_excel(
  file = "/Users/vanessaweberdemelo/Documents/GitHub/Temperature_response_Tetrahymena/2-code/emeScheme_0.9.5_temperature_choice.xlsx",
  verbose = TRUE
)

validate("/Users/vanessaweberdemelo/Documents/GitHub/Temperature_response_Tetrahymena/2-code/emeScheme_0.9.5_temperature_choice.xlsx")


scheme_active()
