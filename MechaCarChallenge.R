# 1.) Downloaded the appropriate data (MechaCar_mpg,csv)

# 2.) Create a new RScript in your R source pane

# 3.) Use the library() function to load the dplyr package
library(dplyr)

# 4.) Import and read in the MechaCar_mpg.csv file as a dataframe
mechaCar_mpg <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

# Also importing tidyverse
library(tidyverse)

# 5.) Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
# Note: we want to try and predict mpg using the other variables within our data.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)

# 6.) Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg))

# 7.) Saving MechaCarChallenge.RScript file to the GitHub repository.