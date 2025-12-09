#load data
#data <- read.csv("C:/Users/samina/Downloads/1data/cases_malaysia_clean.csv")
#print(data)

# ----- 1. Read the two CSV files -----
cases_file  <- "C:/Users/sajjad/Downloads/1data/cases_malaysia_clean.csv"   # change if filename is different
deaths_file <- "C:/Users/sajjad/Downloads/1data/deaths_malaysia.csv"       # change if filename is different

cases  <- read.csv(cases_file, stringsAsFactors = FALSE)
deaths <- read.csv(deaths_file, stringsAsFactors = FALSE)


# ----- 2. Convert date columns -----
cases$date  <- as.Date(cases$date)
deaths$date <- as.Date(deaths$date)

# ----- 3. Keep only needed columns -----
# From cases: date, cases_new
# From deaths: date, deaths_new
cases_small  <- cases[, c("date", "cases_new")]
deaths_small <- deaths[, c("date", "deaths_new")]


# Check column names (quick)
print(names(cases_small))
print(names(deaths_small))


# ----- 4. Merge by date (inner join) -----
merged <- merge(cases_small, deaths_small, by = "date", all = FALSE)

# Optional: sort by date (merge usually keeps sorted but ensure)
merged <- merged[order(merged$date), ]

# Remove rows with NA in main cols (if any)
merged <- merged[!is.na(merged$cases_new) & !is.na(merged$deaths_new), ]

# Quick look
cat("Merged rows:", nrow(merged), "\n")
head(merged)
summary(merged)


# ----- 5. Basic plots (save PNGs for report) -----
# Time series plot (cases = black, deaths = red)
png("timeseries_cases_deaths.png", width = 1000, height = 400)
plot(merged$date, merged$cases_new, type = "l", lwd = 1,
     xlab = "Date", ylab = "Count",
     main = "Daily new COVID-19 cases (black) and deaths (red) - Malaysia")
lines(merged$date, merged$deaths_new, col = "red", lwd = 1)
legend("topright", legend = c("cases_new", "deaths_new"),
       col = c("black","red"), lty = 1, bty = "n")
dev.off()

# Histograms
png("hist_cases_new.png", width = 600, height = 400)
hist(merged$cases_new, breaks = 30, main = "Histogram of daily new cases", xlab = "cases_new")
dev.off()

png("hist_deaths_new.png", width = 600, height = 400)
hist(merged$deaths_new, breaks = 30, main = "Histogram of daily deaths", xlab = "deaths_new")
dev.off()

# Scatterplot (raw)
png("scatter_cases_vs_deaths.png", width = 600, height = 500)
plot(merged$cases_new, merged$deaths_new,
     pch = 20, cex = 0.6,
     main = "Scatter: daily cases vs daily deaths",
     xlab = "Daily new cases", ylab = "Daily new deaths")
dev.off()

# ----- 6. Pearson correlation (no lag) -----
cor_no_lag <- cor(merged$cases_new, merged$deaths_new, use = "complete.obs", method = "pearson")
cat("Pearson correlation (no lag):", round(cor_no_lag, 4), "\n")
print(cor.test(merged$cases_new, merged$deaths_new))

# ----- 7. Check lag effects (cases lead deaths) -----
max_lag <- 21   # test 0..21 days, change if you want wider range
n <- nrow(merged)
lag_results <- data.frame(lag = 0:max_lag, correlation = NA_real_)

for (lag in 0:max_lag) {
  if (lag == 0) {
    x <- merged$cases_new
    y <- merged$deaths_new
  } else {
    x <- merged$cases_new[1:(n - lag)]
    y <- merged$deaths_new[(1 + lag):n]
  }
  lag_results$correlation[lag + 1] <- cor(x, y, use = "complete.obs")
}

print(lag_results)

# Best lag by absolute correlation (most predictive)
best_row <- lag_results[which.max(abs(lag_results$correlation)), ]
best_lag <- best_row$lag
best_corr <- best_row$correlation
cat("Best lag (days):", best_lag, "with correlation:", round(best_corr, 4), "\n")

# Save lag table
write.csv(lag_results, "lag_correlation_results.csv", row.names = FALSE)

# Plot correlation vs lag
png("lag_correlation_plot.png", width = 700, height = 400)
plot(lag_results$lag, lag_results$correlation, type = "b", pch = 19,
     main = "Correlation between cases and deaths by lag (days)",
     xlab = "Lag (cases lead deaths) in days", ylab = "Pearson correlation")
abline(h = 0, lty = 2, col = "gray")
dev.off()

# ----- 8. Create lagged cases column using best lag -----
if (best_lag > 0) {
  # Create cases_lag so that cases_lag at row i corresponds to cases at (i + best_lag)
  # We will align so that for regression we pair cases_lag with deaths on same row
  cases_lead <- merged$cases_new
  cases_lag_col <- c(cases_lead[(1 + best_lag):n], rep(NA, best_lag))
  merged$cases_lag <- cases_lag_col
} else {
  merged$cases_lag <- merged$cases_new
}

# Keep rows without NA lag
df_reg <- merged[!is.na(merged$cases_lag) & !is.na(merged$deaths_new), ]

# ----- 9. Correlation at best lag and cor.test -----
cor_bestlag <- cor(df_reg$cases_lag, df_reg$deaths_new, use = "complete.obs")
cat("Correlation at best lag (", best_lag, "days): ", round(cor_bestlag, 4), "\n", sep = "")
print(cor.test(df_reg$cases_lag, df_reg$deaths_new))

# Scatter + regression line (lagged)
png("scatter_lagged_cases_vs_deaths.png", width = 700, height = 500)
plot(df_reg$cases_lag, df_reg$deaths_new,
     pch = 20, cex = 0.6,
     main = paste("Deaths vs Cases (lag =", best_lag, "days)"),
     xlab = paste("Cases lagged by", best_lag, "days"),
     ylab = "Daily deaths")
m <- lm(deaths_new ~ cases_lag, data = df_reg)
abline(m, col = "blue", lwd = 2)
dev.off()

# ----- 10. Regression: deaths_new ~ cases_lag -----
model <- lm(deaths_new ~ cases_lag, data = df_reg)
cat("Regression summary:\n")
print(summary(model))

# Save model summary to a text file (for appendix)
sink("model_summary.txt")
print(summary(model))
sink()

# ----- 11. Optional: log-transform regression if data is skewed -----
# Uncomment if you want to try log1p transform:
# m_log <- lm(log1p(deaths_new) ~ log1p(cases_lag), data = df_reg)
# summary(m_log)

# ----- 12. Save small example file and finish -----
write.csv(df_reg[, c("date","cases_lag","deaths_new")], "merged_for_regression_sample.csv", row.names = FALSE)

cat("Done. Figures saved as PNG. Check files:\n")
cat(" - timeseries_cases_deaths.png\n - hist_cases_new.png\n - hist_deaths_new.png\n - scatter_cases_vs_deaths.png\n - lag_correlation_results.csv\n - lag_correlation_plot.png\n - scatter_lagged_cases_vs_deaths.png\n - model_summary.txt\n - merged_for_regression_sample.csv\n")

