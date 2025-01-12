 library(ggstatsplot)
 
 ggscatterstats(
   data = df,
   x = Interbank.Rate,
   y = Lending.Rate,
   type = "parametric"
 )
 
 
 
 #Student(36) = 30.90 is a value related to the student's t-distribution with 36 degrees of freedom.
 #p = 1.63e-27 is  the p-value associated with some statistical test or model.
 #Pearson = 0.98 indicates a strong positive correlation coefficient.
 
 #CI.5% = [0.96, 0.99] is the 95% confidence interval for some statistic. #We are 95% sure that if one variable
 # increase say the interbank rate, the lending rate also increases
 
 
 #n_pairs = 38 is the number of data pairs or observations in the analysis.

 
 ggscatterstats(
   data = df,
   x = Deposit.Rates,
   y = Lending.Rate,
   type = "parametric"
 )
 
 ggscatterstats(
   data = df,
   x = Policy.Rates,
   y = Lending.Rate,
   type = "parametric"
 )
 
 