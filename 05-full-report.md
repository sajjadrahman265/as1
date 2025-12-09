## 1. Introduction

### 1.1 Problem statement and research motivation (≈100 words)

COVID-19 created several infection waves in Malaysia, and vaccination programmes were introduced to lower the spread and severity of the disease. However, it is not always clear how daily new case numbers relate to infections in different vaccination groups. Understanding these relationships can help explain how vaccination progress influenced the behaviour of the pandemic. This study uses Malaysia’s daily COVID-19 data to explore whether changes in unvaccinated, partially vaccinated, fully vaccinated, and booster categories are associated with total daily new cases. The motivation is to identify meaningful statistical patterns that can support public health understanding.

### 1.2 The data set (≈75 words)

The dataset contains daily observations from January 2020 to August 2023. Although the original file includes 31 columns, only seven were selected for this project: date, cases_new, cases_unvax, cases_pvax, cases_fvax, cases_boost, and cases_active. These variables directly relate to the research question and keep the analysis simple. The date was converted to proper Date format, and missing values in vaccination subgroups were replaced with zeros to ensure consistent analysis.

### 1.3 Research question (≈50 words)

**RQ:** Is there a significant relationship between vaccination status (unvaccinated, partially vaccinated, fully vaccinated and booster groups) and the number of new COVID-19 cases in Malaysia?

This question helps identify whether different vaccination-level case counts move together with total new daily cases.

### 1.4 Null and alternative hypothesis (≈100 words)

To answer the research question, Pearson correlation and a multiple linear regression model were used.

**H0 (Null Hypothesis):** There is no significant relationship between vaccination-group case counts and the number of new COVID-19 cases.

**H1 (Alternative Hypothesis):** There is a significant relationship between vaccination-group case counts and the number of new COVID-19 cases.

If p < 0.05, H0 will be rejected. The hypotheses allow us to see whether new daily cases increase or decrease in connection with vaccination status.

---

## 2. Background research

### 2.1 Research papers (≈200 words)

Previous research has examined how vaccination affects COVID-19 transmission and case severity. Several studies reported that unvaccinated individuals had the highest risk of infection and contributed more strongly to case surges. Research also showed that partially and fully vaccinated groups had reduced infection risk, while booster doses offered stronger protection during later waves. Some Malaysian studies found changes in vaccine effectiveness over time, especially during the appearance of new variants.

Although many papers discuss the overall benefits of vaccination, fewer studies directly analyse how different vaccination categories relate to daily new case numbers inside one dataset. Some papers focus mainly on hospitalisation or mortality rather than transmission-related daily patterns. Therefore, this project attempts to fill a small gap by directly analysing Malaysian daily data across vaccination groups.

The findings from this dataset can be compared with previous research trends to see if similar outcomes appear, such as higher infection levels among unvaccinated individuals or reduced risk among fully vaccinated and booster groups.

### 2.2 Why the RQ is of interest (≈100 words)

The research question is useful because it allows us to explore whether daily changes in COVID-19 cases match changes in vaccination-group case counts. This adds insight into how vaccination progress affected case numbers in real time. Many reports explain the benefits of vaccination but do not present daily relationships within one dataset. Understanding these connections may help with future public health planning, especially during new outbreaks. By separating unvaccinated, partially vaccinated, fully vaccinated and booster groups, the analysis gives more detailed and meaningful comparisons.

---

## 3. Visualisation

### 3.1 Appropriate graphs for the RQ (≈50 words)

A histogram of daily new cases was used to show the distribution of cases over time. A scatter plot between unvaccinated cases and new cases was selected as the main visualisation because it directly tests the relationship for the research question. Time-series plots and a correlation heatmap were also included for additional understanding.

### 3.2 Additional information (≈50 words)

The histogram shows that case numbers vary widely, with clear peaks that match major outbreak periods. The scatter plot indicates a positive trend between unvaccinated cases and new cases, supporting the statistical tests. Time-series plots show how each vaccination group changes over time.

### 3.3 Useful information (≈50 words)

The visuals confirm that unvaccinated case counts tend to rise with new daily cases. The correlation heatmap also shows positive correlations for other vaccination groups. These patterns support further statistical testing.

---

## 4. Analysis

### 4.1 Statistical test used (≈75 words)

Pearson correlation was used because all variables were continuous, and the goal was to measure linear relationships between new cases and vaccination-group counts. A multiple linear regression model was added to test how all vaccination variables together explain changes in new cases. These methods match the research question and satisfy the assignment’s statistical requirements.

### 4.2 Hypothesis test result (≈100 words)

The Pearson correlation between new cases and unvaccinated cases was statistically significant (p < 0.05), showing a positive relationship. Other vaccination groups also had meaningful correlations with new cases. The regression model confirmed that vaccination-group counts jointly help explain variations in total new cases. Because the p-values were below 0.05, the null hypothesis is rejected. This means the data supports the idea that vaccination status is related to how many new cases appear each day.

---

## 5. Evaluation – group’s experience at 7COM1079

### 5.1 What went well (≈75 words)

Our group worked well in selecting suitable variables and cleaning the dataset. Converting the date format, handling missing values and choosing the correct columns helped make the R analysis straightforward. Each member contributed ideas, and communication improved as the project progressed. The visualisations and statistical tests produced meaningful results.

### 5.2 Points for improvement (≈75 words)

At first, we struggled with understanding which variables were most relevant to the research question. Some team members also found R functions confusing. Better early planning and dividing tasks sooner would improve our workflow next time. Learning more about statistical assumptions earlier in the project could also help improve confidence.

### 5.3 Group's time management (≈50 words)

The group managed time fairly well, although some tasks were completed closer to the deadline. Regular check-ins helped us stay organised, and progress improved once responsibilities were divided clearly.

### 5.4 Project’s overall judgement (≈50 words)

Overall, the project was successful. We cleaned the data properly, created suitable visualisations, and used the correct statistical tests. The results clearly supported the research question.

### 5.5 Changes to group (write only if needed)

*(No changes.)*

### 5.6 Comment on GitHub log output (≈50 words)

The GitHub log shows steady progress during the project. Major commits included cleaning the dataset, adding R scripts, and generating the visualisations. These commits represent key steps in the analysis workflow and show consistent group collaboration.

---

## 6. Conclusions

### 6.1 Results explained (≈75 words)

The analysis found a significant relationship between vaccination-group case counts and total new cases. Unvaccinated case numbers showed the strongest positive correlation with new cases. Other vaccination categories also displayed meaningful patterns. These results suggest that vaccination status influenced daily case levels during the pandemic in Malaysia.

### 6.2 Interpretation of the results (≈75 words)

When unvaccinated case numbers increased, the total new cases increased strongly. This matches findings from previous research showing that unvaccinated groups have higher infection risk. Fully vaccinated and booster groups showed weaker but still noticeable relationships. Overall, the results support the idea that vaccination progress helped shape the behaviour of the pandemic.

### 6.3 Limitations and future work (≈50 words)

The dataset does not include factors such as variants, travel patterns, or testing rates, which may also affect case numbers. Future research could include additional variables or explore lag effects between groups to improve accuracy.

---

## 7. References (Harvard style)

Polack, F.P. et al., 2020. Safety and Efficacy of the BNT162b2 mRNA Covid-19 Vaccine. New England Journal of Medicine, 383(27), pp.2603–2615.

Suah, J.L. et al., 2022. Waning COVID-19 Vaccine Effectiveness for BNT162b2 and CoronaVac in Malaysia: An Observational Study. PubMed Central.

World Health Organization (WHO), 2021. Guidance on conducting vaccine effectiveness evaluations in the setting of new SARS-CoV-2 variants.

---

## 8. Appendices

### Appendix A: R code used for analysis and visualisation

```r
library(tidyverse)
library(lubridate)
library(ggpubr)
library(corrplot)

df <- read_csv("cases_malaysia_clean.csv", show_col_types = FALSE)
df <- df %>% mutate(date = as.Date(date))

# Select relevant columns
cols <- c("date", "cases_new", "cases_unvax", "cases_pvax", "cases_fvax", "cases_boost", "cases_active")
df <- df %>% select(all_of(cols))

# Handle missing values
df <- df %>% mutate(across(c(cases_unvax, cases_pvax, cases_fvax, cases_boost), ~replace_na(., 0)))
df <- df %>% filter(!is.na(cases_new))

# Histogram
library(ggplot2)
ggplot(df, aes(cases_new)) +
  geom_histogram(bins = 50, aes(y = ..density..)) +
  stat_function(fun = dnorm, args = list(mean = mean(df$cases_new), sd = sd(df$cases_new))) +
  labs(title = "Histogram of daily new cases", x = "New cases", y = "Density")

# Scatter plot for unvaccinated vs new cases
cor.test(df$cases_new, df$cases_unvax)
ggplot(df, aes(cases_unvax, cases_new)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(title = "New cases vs unvaccinated cases", x = "Unvaccinated", y = "New cases")

# Time series plot
ggplot(df, aes(date, cases_new)) +
  geom_line() + labs(title = "Daily new cases over time")

# Correlation heatmap
nums <- df %>% select(-date)
M <- cor(nums, use = "pairwise.complete.obs")
corrplot(M, method = "number", type = "lower")

# Regression model
model <- lm(cases_new ~ cases_unvax + cases_pvax + cases_fvax + cases_boost, data = df)
summary(model)
```

### Appendix B: GitHub log output

**Commit 1:** Initial project setup: added dataset and R Markdown structure.
*This created the base structure and allowed others to run the project files.*

**Commit 2:** Cleaned dataset: handled NA values, formatted date column.
*This enabled correct plotting and consistent statistical testing.*

**Commit 3:** Added analysis and visuals: histogram, scatter, time-series, and heatmap.
*These outputs formed the core evidence for the report's results section.*
