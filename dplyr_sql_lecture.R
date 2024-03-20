# Packages
library(tidyverse)
library(sqldf)

# First load in data set from DRYAD
species_clean <- read.csv("site_by_species.csv")
var_clean <- read.csv("site_by_variables.csv")

# look at them first
head(species_clean)
head(var_clean)

#Start operations using 1 file
# subsetting rows

# dplyr: filter() method 
species <- filter(species_clean, Site<30)
view(species)
var <- filter(var_clean, Site<30)

# SQL Method
# Create a Query firstL sort of like a statment RE, determining the dataset, what functions/actions/ you're doing and any conditions for it. You then apply taht query to sqldf()

query="SELECT Site, Sp1, Sp2, Sp3 FROM species WHERE Site<'30'"
sqldf(query)

# Subset columns we use the dplyr method select() function and it can use either column number or name
edit_species <- species %>$
  select(Site, Sp1, Sp2, Sp3)

# Query entire table in SQUL
query="SELECT * FROM species:"
a=sqldf(query)
sqldf(query)

# reordering columns
query="SELECT Sp1, Sp2, Sp3, site FROM Species"

# Pivot longer and wider
# Pivot_longer is the same as gather, lengthens data, decreases columns

species_long <-pivot longer(edit_species, cols-c(Sp1, Sp2, Sp3), names to "ID"
hand(species_long

species_wide <- pivot_wider(species_long, names_from=ID
head(species-wide

# SQL Method
# aggregate to give counts of objecvtive

query=''
SELECT SUM(Sp1, Sp2,dDP3
FROM species_wide
GROUP BY SITE


edit_species<-species_clean%>%
  filter(Site <30)%>%
  select(Site, Sp1, Sp2, Sp3, Sp4, Longitude.x., Latitude.y.)

edit_var<-var_clean%>%
  filter(Site <30)%>%
  select(Site, Longitude.x., Latitude.y.,
  BIO1_Annual_mean_temperature, BIO12_Annual_precipitation)

#Left join - stitching the matching rows of fil B to file A
#dplyr method
left<-left_join(edit_species, edit_var, by="Site")
View(left)

# right join - stitching the matching rows of File a to file b. Only difference is what is lost when you match them together

right <- right_join(edit_species, edit_var, by="site")
View(right)

#Inner Join - retain rows that match between both a and b. Loses a lot of information if the origignal files don't match up very well

inner <- 
