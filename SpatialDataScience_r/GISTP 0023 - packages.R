# Iowa State University Extension and Outreach-Spatial Data Science Task Sheets
# GISTP 00XX Spatial Data Science with R: Installing Packages with RStudio
# Task sheet URL Perma Link goes here
# Last Updated: December 20, 2022; Jay Maxwell and Christopher J. Seeger

# Section Title ----
# install package devtools
install.packages("devtools")

# Use devtools to load tidycensus from GitHub
devtools::install_github(walkerke/tidycensus)


# Load the library tidyverse and tidycensus
library(tidycensus)
library(tidyverse)

# display list of packages installed
library()

# display packages currently loaded
search()


# You can also see what you’ve installed with installed.packages()
installed.packages()

#To get help with a package you can submit a help()
help("tidyverse")


