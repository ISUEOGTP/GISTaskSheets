#Spatial Data Science with R: Mutating and Piping Data with dplyr
#Iowa State University Extension and Outreach-Spatial Data Science Task Sheets
#URL to Task sheet: 
#Last Updated: December 1, 2022; Jay Maxwell and Christopher J. Seeger

#The following code supports task sheet GISTP 00XX

# Getting Started ----
#Load packages - if they are not already installed.
install.packages("tidyverse")
install.packages("usdata")

#Load dplyr library
library(dplyr)

#Load usdata library, 
library(usdata)

#Selecting only the Iowa counties and save into a new variable called iowa
iowa <- filter(county, state=="Iowa")

#subset the data picking only the columns iowa, name, pop2010 and pop2017
iowa2 <- select(iowa, name, pop2010, pop2017)

#This will result in 99 rows containing three columns being selected
glimpse(iowa2)


# Mutate data----
#Find the increase or decrease in population by subtracting the population
#in 2010 from the value in 2017.
iowa3 <- mutate(iowa2, pop_diff = pop2017 - pop2010)

#In the Environment tab select Global Environment and find the iowa3 variable 
#Click the blue circle with the white arrow next to iowa 3 to expand the table
#Alternatively, run iowa3 to display the first ten rows of data in the console
iowa3

#Create a calculation and then extract only the column pop_diff from iowa2
iowa4 <- transmute(iowa2, pop_diff = pop2017 - pop2010)

# This will result in 99 rows of 1 column containing a value
glimpse(iowa4)


# Piping Data ----

#DELETE SNIPPET !
#Snippet 1 - Note three functions will be added to the Environment tab
vectorList <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
outputA <- sum(vectorList)
outputB <- max(vectorList)
outputC <- sum((outputA + outputB)/outputB)

#Pipe together filter, select and mutate statements
iowa_piped <- county %>%
  filter(state=="Iowa") %>%
           select(name, pop2010, pop2017, pop_change) %>%
           mutate(pop_diff = pop2017 - pop2010)

#Make sure and comment your code! You can even do this after the %>%
iowa_piped2 <- county %>% 
  filter(state=="Iowa") %>%
  select(name, pop2010, pop2017, pop_change) %>% #optionally include pop_change
  mutate(pop_diff = pop2017 - pop2010) #units are people
