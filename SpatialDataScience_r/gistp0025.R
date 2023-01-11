# Iowa State University Extension and Outreach-Spatial Data Science Task Sheets
# GISTP 0025 Spatial Data Science with R: Filtering and Selecting Data with dplyr
# https://store.extension.iastate.edu/product/16607
# Last Updated: January 11, 2022; Jay Maxwell and Christopher J. Seeger


#### Getting Started ####
## Uncomment and install packages as needed
#install.packages("tidyverse")
install.packages("usdata")


## Load packages
library(dplyr)
library(usdata)


## Examine the county data
glimpse(county)


#### Filtering and Arranging Data ####
iowa <- filter(county, state=="Iowa")
glimpse(iowa)

## Filter using a vector
three_states <- filter(county, state %in% c("Iowa", "Minnesota", "Missouri"))
glimpse(three_states)

## Filter based on multiple terms
iowa_decline <- filter(county, state=="Iowa" & pop_change < 0)
glimpse(iowa_decline)

## Arrange the rows based on pop_change
iowa_decline_ordered <- arrange(iowa_decline, pop_change)
glimpse(iowa_decline_ordered)
iowa_decline_ordered2 <- arrange(iowa_decline, desc(pop_change))
glimpse(iowa_decline_ordered2)


#### Selecting Data ####
## Select only specified columns
iowa_pop17 <- select(iowa, name, pop2017)
glimpse(iowa_pop17)

## Remove a column with select
iowa2 <- select(iowa_pop17, -pop2017)
glimpse(iowa2)

## Select a range of columns
iowa_range <- select(iowa, name, poverty:metro)
glimpse(iowa_range)

## Use the helper function starts_with()
iowa_pop <- select(iowa, name, starts_with("pop"))
glimpse(iowa_pop)
?select
