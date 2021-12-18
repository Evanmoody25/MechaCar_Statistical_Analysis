# Deliverable 1
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

# Deliverable 2

#1,) Download the Suspension_Coil.csv file, and place it in the active directory for your R session.

#2.) In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspension_coil = read.csv(file='./Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#3.) Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary_coil = Suspension_coil %>% summarize(Mean_PSI=mean(PSI),
                                                   Median_PSI=median(PSI),
                                                   Var_PSI=var(PSI),
                                                   Std_Dev_PSI=sd(PSI),
                                                   .groups = 'keep')

#4 summary statistics by lot
lot_summary_coil = Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                   Median_PSI=median(PSI),
                                                   Var_PSI=var(PSI),
                                                   Std_Dev_PSI=sd(PSI),
                                                   .groups = 'keep')

#Deliverable 3 

# 1.) In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_coil$PSI,mu=1500)

#2.) Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 = subset(Suspension_coil, Manufacturing_Lot=="Lot1")
lot2 = subset(Suspension_coil, Manufacturing_Lot=="Lot2")
lot3 = subset(Suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

