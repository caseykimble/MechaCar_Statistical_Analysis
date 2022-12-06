#import the dplyr library

library(dplyr)

#import the mpg dataset
mecha_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#generate multiple linear regression model
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_table)
#generate p-value and r-squared of lm module
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_table))



#import suspension coils dataset
suspensioncoils_table <-read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
#create summary based on PSI column
total_summary <- suspensioncoils_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
#total summary based on lot number
lot_summary <- suspensioncoils_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#view total_summary as DF
as.data.frame(total_summary)
#view lot_summary as DF
as.data.frame(lot_summary)

#compare all manufacturing lots against mean PSI of the population
t.test((suspensioncoils_table$PSI),mu=1500)
#three t-tests that compare each manufacturing lot against mean PSI of the population mean
#lot 1
t.test(subset(suspensioncoils_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
#lot 2
t.test(subset(suspensioncoils_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
#lot 3
t.test(subset(suspensioncoils_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

