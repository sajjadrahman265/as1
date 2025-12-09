----------------------- Peste the Below code 

# Histogram of daily new cases
hist(merged$cases_new,
     main = "Histogram of Daily New Cases",
     xlab = "Daily Cases",
     col = "skyblue")

# Histogram of daily new deaths
hist(merged$deaths_new,
     main = "Histogram of Daily New Deaths",
     xlab = "Daily Deaths",
     col = "tomato")

# Scatter plot  cases vs deaths
plot(merged$cases_new, merged$deaths_new,
     main = "Cases vs Deaths",
     xlab = "Daily New Cases",
     ylab = "Daily New Deaths",
     col = "darkgreen",
     pch = 16)

-------------------------------------------------------------------------------------------

commit message : Added histograms and scatter plot for visualization 
