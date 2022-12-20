# Iowa State University Extension and Outreach-Spatial Data Science Task Sheets
# GISTP 0026 Spatial Data Science with R: Mutating and Piping Data with dplyr
# https://store.extension.iastate.edu/product/16608
# Last Updated: December 20, 2022; Jay Maxwell and Christopher J. Seeger


#### Getting Started ####
## Un-comment and install packages as needed
#install.packages("tidyverse")
#install.packages("usdata")

## Load the packaes for this lesson
library(dplyr)
library(usdata)

## Make a subset of Iowa data using filter and select
iowa <- filter(county, state=="Iowa")
iowa2<- select(iowa, name, pop2010, pop2017)

## Examine the county dataset in usdata
glimpse(iowa2)


#### Mutating Data ####
## Mutate the data by finding the difference in population
iowa3 <- mutate(iowa2, pop_diff = pop2017 - pop2010)

## The transmute function keeps the new column and discards the others
iowa4 <- transmute(iowa2, pop_diff = pop2017 - pop2010)
glimpse(iowa4)


#### Piping Data ####
## Rewrite the subsetting from lines 16-17 using the pipe operator
iowa_piped <- county %>% 
  filter(state=="Iowa") %>% 
  select(name, pop2010, pop2017) %>%
  mutate(pop_diff = pop2017 - pop2010)
