# Spatial Data Science with R: Installing Packages with RStudio
# Iowa State University Extension and Outreach-Spatial Data Science Task Sheets
# URL to Task sheet: 
# Last Updated: December 15, 2022; Jay Maxwell and Christopher J. Seeger

#The following code supports task sheet GISTP 00XX


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


