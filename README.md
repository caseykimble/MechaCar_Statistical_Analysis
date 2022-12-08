# MechaCar Statistical Analysis - Technical Analyses for MechaCar Data

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, the data analytics team will do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

Here are the results of our linear regression model to predict MPG based on the following metrics: vehicle weight and length, drivetrain, spoiler angle and ground clearance. 

#### Slope

<img width="664" alt="Deliverable1_LM_MPG" src="https://user-images.githubusercontent.com/105175961/206315939-87578215-0468-435d-9214-fa2d810e703f.png">

#### Summary

<img width="750" alt="Deliverable1" src="https://user-images.githubusercontent.com/105175961/206315953-b6eeaf34-a8c2-4cad-87fc-e40d1a96fc4c.png">


The slope of the line is not zero because the p-values are under 0.05 (5.35e-11.) Some variance is shown in the ground clearance and vehicle length categories since they have p-values under 0.05. The r-squared value is 0.7149. This means moderate-to-strong reliability of the model's prediction.


## Summary Statistics on Suspension Coils

<img width="632" alt="Deliverable2_DataFrames" src="https://user-images.githubusercontent.com/105175961/206320675-38d6b3a0-3d8c-4a78-b07c-f22de2c9e061.png">

The overall performance analysis on suspension coils shows us an average of 1498.78 PSI with a variance of 62.29 which does meet requirements. However when we break it down further into Lot 1, Lot 2 and Lot 3, we can see a much larger range in variance. Lot 1 and 2 meet requirements with similar means and a variance between 0.98 and 7.47 with low standard deviation, while Lot 3 is driving up the overall total variance at 170.29 and standard deviation at 13.05, which is going to affect overall totals and requirements. So overall summary and Lots 1 and 2 meet company requirements but Lot 3 does not.

## T-Tests on Suspension Coils

<img width="535" alt="Deliverable3_t_test" src="https://user-images.githubusercontent.com/105175961/206323581-daf34efa-31a6-4dd9-bcd8-ba74830eea55.png">

#### Lot 1

<img width="600" alt="Deliverable3_Lot1" src="https://user-images.githubusercontent.com/105175961/206323599-eb540a4e-f737-433c-8d56-a5f75243e346.png">

#### Lot 2

<img width="607" alt="Deliverable3_Lot2" src="https://user-images.githubusercontent.com/105175961/206323628-f84e0918-5007-42a5-a6f2-44d38640e188.png">

#### Lot 3

<img width="603" alt="Deliverable3_Lot3" src="https://user-images.githubusercontent.com/105175961/206323641-d3df4710-69d5-449c-b53e-425043ada5f1.png">

Lot 1 and Lot 2 show p-values over 0.05 therefore we can not reject the null hypothesis. Lot 3, however, shows a p-value of 0.4168.

## Study Design: MechaCar vs Competition
