#load libraries
library(dplyr)

#import data and create dataframe
MechaCar_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MechaCar_df)
#create linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df) 
#create summary
summary (lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df))

#------------------------------
#import data and create dataframe
SuspensionCoil_df <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
head(SuspensionCoil_df)
#create PSI summary
total_summary <- SuspensionCoil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI, y=NULL, na.rm = FALSE), SD=sd(PSI, na.rm = FALSE))
#create PSI summary by lot
lot_summary <- SuspensionCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI, y=NULL, na.rm = FALSE), SD=sd(PSI, na.rm = FALSE))

#------------------------------
#ho: mean sample = mean population (null)
#ha: mean sample != mean population (alternative)

#compare total mean versus population mean
t.test(SuspensionCoil_df$PSI,mu=1500) 

#compare lot 1 mean versus population mean
t.test(formula = PSI ~ 1, mu=1500,
       data = SuspensionCoil_df,
       subset = Manufacturing_Lot == "Lot1")
#compare lot 2 mean versus population mean
t.test(formula = PSI ~ 1, mu=1500,
       data = SuspensionCoil_df,
       subset = Manufacturing_Lot == "Lot2")
#compare lot 3 mean versus population mean
t.test(formula = PSI ~ 1, mu=1500,
       data = SuspensionCoil_df,
       subset = Manufacturing_Lot == "Lot3")

