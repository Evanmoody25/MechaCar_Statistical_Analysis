# MechaCar_Statistical_Analysis

## Overview of Project

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

* Run t-tests to determine if the manufacturing lots are statistically different from the mean population

* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverables

* Deliverable 1: Linear Regression to Predict MPG

* Deliverable 2: Summary Statistics on Suspension Coils

* Deliverable 3: T-Test on Suspension Coils

* Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Tools

* Sources: MechaChar_mpg.csv and Suspension_Coil.csv

* Data Tools: tidyverse, dplyr, and ggplot 2

* Software: RScript and R

# Deliverable 1: Linear Regression to Predict MPG

Requirments: 

* 1.) The MechaCar_mpg.csv file is imported and read into a dataframe

![deliverable1_part1](https://user-images.githubusercontent.com/89880015/146652083-aa2a5fce-ffe3-4670-b90f-205a91e1d472.PNG)

* 2.) An RScript is written for a linear regression model to be performed on all six variables

![deliverable1_part2](https://user-images.githubusercontent.com/89880015/146652117-000d0b1e-da73-47f5-bc9f-2d24f71fa4e3.PNG)

# mpg = (6.267)vehicle_length + (0.00124)vehicle_weight + (0.0677)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD + (-104.0)

* 3.) An RScript is written to create the statistical summary of the linear regression model with the intended p-values

![deliverable1_Part3](https://user-images.githubusercontent.com/89880015/146652167-115c3260-a26a-4665-ab16-5a735011391d.PNG)

* 4.) There is a summary that addresses all three questions: 

Question 1: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Our null hypothesis is that the variables that we look at have no statistically significant effect on the varience in MPG. Our alternative hypothesis is that the variables that we look at do have a statistically significant effect on the amount of varience in mpg. Assuming that we are working with a 95% confidence interval, out p value threshold is 0.05. Anything above this will not be considered statistically significant, anything below will be considered statistically significant. Vehicle Length and Ground Clearence ae statistically significant with p-values of 2.60e-12 and 5.21e-08 respectively. Again, Vehicle Length and Ground Clearence are the only variables to pass this threshold. Thus, Vehicle Length and Ground CLearence are the only variables that have a significant effect on mpg in this test which utilizes a 95% confidence interval. 

Question 2: Is the slope of the linear model considered to be zero? Why or why not?

The p-value for this entire model is 5.35e-11. This is a relatively small value and with our 95% confidence interval, it is significantly miniscule to say that there is a statistically significant relationship. So, we reject the null hypothesis that says the slope of the linear model is 0. Naturally, we then accept the alternative hypothesis which states that the slope of the linear model is not 0. 

Question 3: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

So, yes and no. Everything is relative so the word "effective" may be apropriate or inapropriate depending on the perspective of the interpreter. The Multiple R-squared of   0.7149 means that roughly 71% of mpg predictions can be made with this model. 71% sounds nice but you need to look at it in the context of the situation. The original dataset shows that we are dealing with 50 prototypes. 50 x .29 = 14.5. I will round down because the R-squared is a little over .71, but that still leaves us with 14 cars that are not going to be predicted with this model. For that reason, I suggest collaboration with the engineering department and coming up with other variables to add to out linear regression. I am not a car guy, so I cannot say with the top of my head. What I do know is that 14 prototypes is a lot and that time, effort, and money may be saved by bringing in individuals who make the cars to lend their experties in helping our division collect more comprehensive data that may capture significant variables that we are currently overlooking. In conclusion, I do not find 71% to be good enough to declare this model effective.

# Deliverable 2: Create Visualizations for the Trip Analysis

Requierments: 

* 1.) The Suspension_Coil.csv file is imported and read into a dataframe

![deliverable2_part1](https://user-images.githubusercontent.com/89880015/146653388-82eed37e-6255-4889-a5af-6546aad9f916.PNG)

![Deliverable2_part2](https://user-images.githubusercontent.com/89880015/146653411-2f641f91-8282-4320-96f0-cd46495c485c.PNG)

* 2.) An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots

![deliverable2_part3](https://user-images.githubusercontent.com/89880015/146653429-5e578028-ae04-42f2-acff-c0e0387cf537.PNG)

![deliverable2_part4](https://user-images.githubusercontent.com/89880015/146653466-40a8f810-5521-456d-aa3a-40b2c84f0269.PNG)

* 3.) An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot
* 
![deliverable2_part5](https://user-images.githubusercontent.com/89880015/146653499-71bb8027-5ead-445a-b80d-11e263d44f41.PNG)

![deliverable2_part6](https://user-images.githubusercontent.com/89880015/146653545-cc9eb5d5-3a3b-41e0-aad6-e9dacb8ed407.PNG)

* 4.) There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually

IMPORTANT: design specifications for the MechaCar suspension coils mandate that the variance of the suspension coils cannot exceed 100 pounds per square inch (PSI).

Lot one and two are looking perfectly fine with their variations being 0.98 and 7.47 PSI respectively. Lot 3, however, is encountering issues as the Var_PSI = 170.29. This is far above what is mandated and thus, time and effort needs to be put into lot 4. Questions must be asked such as, what kinds of cars are being produced here? Is quality of the materials that goes into making the cars the same? Etc. SOme good news is that the total variance of 62 is being disproportionatly pulled to a greater value by lot 3 and that lots 1 and 2 are far better then the general data of all 3 lots suggests. 

# Deliverable 3: T-Tests on Suspension Coils

Requirments: 

* 1.) An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population

![deliverable3_part1](https://user-images.githubusercontent.com/89880015/146653851-a6de2f6c-e001-438d-b9bb-cfeb266845d6.PNG)

* 2.) An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population

![deliverable3_part2](https://user-images.githubusercontent.com/89880015/146653881-e929f5b9-1949-401d-b887-9084f3333cf3.PNG)

*3.) There is a summary of the t-test results across all manufacturing lots and for each lot
## T-Tests on Suspension Coils

Note: We will beginneing each test with the knowledge that we are using a 95% confidence interval for the general data and for each lot. 

- Null hypothesis: mean is not statistically significant in its difference to the assumed population mean (1500)

-Alternative: mean is statistically significant in its difference to the assumed population mean (1500) 

# all manufacturing lots 

![deliverable3_part3](https://user-images.githubusercontent.com/89880015/146653989-24ab0cc2-d3a4-4746-a2a7-9c1c1f10802b.PNG)



