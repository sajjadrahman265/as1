# Load the two CSV files
cases_file  <- "C:/Users/sajjad/Downloads/1data/cases_malaysia_clean.csv"
deaths_file <- "C:/Users/sajjad/Downloads/1data/deaths_malaysia.csv"

cases  <- read.csv(cases_file)
deaths <- read.csv(deaths_file)

# Convert date columns to Date format
cases$date  <- as.Date(cases$date)
deaths$date <- as.Date(deaths$date)

# Select only the needed columns
cases_small  <- cases[, c("date", "cases_new")]
deaths_small <- deaths[, c("date", "deaths_new")]

# Check column names
print(names(cases_small))
print(names(deaths_small))

# Merge both datasets by date
merged <- merge(cases_small, deaths_small, by = "date")

# Remove rows with missing values
merged <- merged[!is.na(merged$cases_new) & !is.na(merged$deaths_new), ]

# Quick summary of the merged dataset
summary(merged)

# Histogram: daily new cases
hist(merged$cases_new,
     main = "Histogram of Daily New Cases",
     xlab = "Daily New Cases",
     col = "skyblue")

# Histogram: daily new deaths
hist(merged$deaths_new,
     main = "Histogram of Daily New Deaths",
     xlab = "Daily New Deaths",
     col = "tomato")

# Scatter plot: cases vs deaths
plot(merged$cases_new, merged$deaths_new,
     main = "Scatter Plot: Cases vs Deaths",
     xlab = "Daily New Cases",
     ylab = "Daily New Deaths",
     col = "lightblue",
     pch = 16)

# Run the correlation test
cor_result <- cor.test(merged$cases_new, merged$deaths_new)

# Print important outputs using print()
print(paste("Correlation:", round(cor_result$estimate, 3)))
print(paste("P-value:", cor_result$p.value))
print(paste("95% CI:", 
            round(cor_result$conf.int[1], 3), "to", 
            round(cor_result$conf.int[2], 3)))
