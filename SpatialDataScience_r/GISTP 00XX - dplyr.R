#Spatial Data Science with R: Filtering and Selecting data with dplyr
#Iowa State University Extension and Outreach-Spatial Data Science Task Sheets
#URL to Task sheet: 
#Last Updated: November 30th, 2022; Jay Maxwell and Christopher J. Seeger

#The following code supports tasksheet GISTP 00XX

#Load packages
install.packages("tidyverse")
install.packages("usdata")

#Load dplyr library
library(dplyr)

#Load usdata library, 
library(usdata)

#Get a glimpse of the county data set loaded as part of usdata library. 
#This data set includes 15 columns of data for 3,142 entries 
#Optionally county_2019 includes 95 columns/variables. 
glimpse(county)

#Selecting only the Iowa counties and save into a new variable called iowa
iowa <- filter(county, state=="Iowa")

#This will result in 99 records being selected
glimpse(iowa)

#Combine the "and" and "or" operators to combine criteria in the filter.
iowa_decline <- filter(iowa, state=="Iowa" & pop_change < 0)

#68 counties have a declining population in this data set
glimpse(iowa_decline)

#filter several states using a vector
three_states <- filter(county, state %in% c("Iowa", "Minnesota", "Missouri"))

#301 records are selected for the three states
glimpse(three_states)

#arrange the order of the pop_change variable value in declining order
iowa_decline_ordered <- arrange(iowa_decline, pop_change)

#Adams County will appear at the top of the list having a value of -5.29
glimpse(iowa_decline_ordered)

#use select to to pick only the columns of interest from a data set
iowa_pop17 <- select(iowa, name, pop2017)

#the column pop2017 along with the name of the county are selected
glimpse(iowa_pop17)

#remove a column using select() and preceding the column name with a minus
iowa2 <- select(iowa_pop17, -pop2017)

#only the county name will remain after removing the pop2017 column
glimpse(iowa2)

#select a range of column names
iowa_range <- select(iowa, name, poverty:metro)

#Columns name, poverty, homeownership, multi_unit, unemployment_rate and metro 
#are selected
glimpse(iowa_range)

#select the columns that have a column name starting with "pop"
iowa_pop <- select(iowa, name, starts_with("pop"))

#5 columns selected: name, pop2000, pop2010, pop2017 and pop_change
glimpse(iowa_pop)


#run ?select to view more information about the select verb in the help pane
?select


