# MechaCar_Statistical_Analysis
## Objective
The objective of the analysis is to determine a production block in the manufacturing of the newest AutosRUs' prototype.
## Results
### Linear Regression to Predict MPG
<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/linear_model_results.PNG">

It can be seen that the most significant variables to the MPG are vehicle length and ground clearance. The null hypothesis can be rejected given that our P-value is less than the 95% confidence level, there is no enidence to support that the slope of the linear model is zero. The linear model will be able to predict 71.49% of the times the MPG, it will be an effective model.
### Summary Statistics on Suspension Coils
<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary_coils.PNG">
At a first glance it can be said that the specification has been met since the variance is 62.93 PSI

<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary_coils.PNG">
After analysing each lot separately it is clear that lots 1 and 2 conform to the specification and lot 3 does not, a deeper analysis has to be made in order to find the root cause of a variance of 170.29 PSI 
### T-Tests on Suspension Coils
- Total
<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_total_coils.PNG">
- Lot 1
<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot1_coils.PNG">
- Lot 2
<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot2_coils.PNG">
- Lot3
<img src="https://github.com/luisnewmanh/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot3_coils.PNG">

Once a gain if the total of the samples is analyzed it can be concluded that the total mean is the same as the population mean. It is only after looking at the results of the individual t-test that it can be concluded there is not enough evidence for lots 1 and 2 to reject the hypothesis that their means are not statistically different from the population mean of 1,500. Contrary to these lots the mean of lot 3 is statistically different from the population's mean; hence the null hypothesis is rejected. 
## Summary
### Study Design: MechaCar vs Competition
A statistical analysis can be made to compare MechaCar to the competition, the key variables to study will be:
- Initial cost
- Class
- MPG City
- MPG Highway
- Safety Rating
- Comfort Rating 
- Transmission
- Horse Power
- Top Speed

A model for MPG can be predicted with horse power, top speed, and transmission. The null hypothesis will be that these variables does not play a major factor in the model (H0: The slope of the linear model is zero, or m = 0). Getting a linear model will allow us to predict or extrapolate MPG, it will show if these variables have an effect on the MPG. On the same line it can be seen how the initial cost is correlated to the safety and comfort ratings.

Paired t-test will be used to compare safety and comfort ratings, initial cost per calss, etc from MechaCar and the competition. In this case the null hypothesis will be that the true mean is equal to 0.

With one way Anova analysis any given variable can be compared based on vehicle class.
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
