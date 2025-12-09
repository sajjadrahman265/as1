## 1. Introduction

### 1.1 Problem statement and research motivation (≈100 words)

COVID-19 caused many waves of infection in Malaysia, and vaccines were introduced to reduce the number of cases and serious illness. Even though vaccination helped the country, it is still not very clear how daily new cases changed alongside the different vaccination groups. Understanding this relationship can help explain how the situation developed during the pandemic. In this project, I use daily COVID-19 data from Malaysia to see whether unvaccinated, partially vaccinated, fully vaccinated and booster groups are linked with the number of new cases each day. This may give a simple but helpful picture of how vaccination affected the spread.

### 1.2 The data set (≈75 words)

The original dataset has 31 columns, but for this project I selected only seven columns: date, cases_new, cases_unvax, cases_pvax, cases_fvax, cases_boost, and cases_active. These columns are directly connected to the research question and make the work easier and more focused. The date column was changed into the correct Date format, and missing values in the vaccination columns were replaced with zeros to keep the analysis consistent.

### 1.3 Research question (≈50 words)

**RQ:** Is there a significant relationship between different vaccination groups (unvaccinated, partially vaccinated, fully vaccinated and booster) and the number of new COVID-19 cases in Malaysia?

This question helps to understand if changes in vaccination-group cases match the changes in total daily new cases.

### 1.4 Null and alternative hypothesis (≈100 words)

To answer the research question, Pearson correlation and a multiple linear regression model were used.

**H0 (Null Hypothesis):** There is no significant relationship between vaccination-group case numbers and new daily COVID-19 cases.

**H1 (Alternative Hypothesis):** There is a significant relationship between vaccination-group case numbers and new daily COVID-19 cases.

The hypothesis is tested by checking the p-value. If p < 0.05, we reject H0. This shows whether changes in new cases are related to the vaccination groups.

---

## 2. Background research

### 2.1 Research papers (≈200 words)

Many research papers have discussed how vaccination affects COVID-19 infection levels. Several studies found that unvaccinated people had the highest chance of getting infected and often made up a large part of new cases during major waves. Other studies showed that partially and fully vaccinated individuals had a lower risk of infection. Booster doses were also reported to provide extra protection, especially when new variants appeared.

However, most papers look at vaccine effectiveness in general, and fewer studies examine daily case numbers for different vaccination groups inside one country. Some research focuses more on hospital admissions or deaths rather than daily infection patterns. Because of this, it is useful to look directly at Malaysia’s daily data and compare different vaccination categories.

By studying these relationships in the dataset, we can see whether the patterns in Malaysia agree with earlier research findings. For example, we can check if unvaccinated cases rise together with daily new cases or if booster groups show lower case counts.

### 2.2 Why the RQ is of interest (≈100 words)

This research question is important because it helps to understand how vaccination status may be connected with daily case numbers. Many reports say vaccines reduce infection, but they do not always show the day-to-day relationship in one dataset. By separating the data into unvaccinated, partially vaccinated, fully vaccinated and booster groups, we can get a clearer picture. This type of analysis may also support future public health decisions, especially if similar outbreaks happen again.

---

## 3. Visualisation

### 3.1 Appropriate graphs for the RQ (≈50 words)

A histogram of daily new cases shows how cases are spread over the whole period. A scatter plot of unvaccinated cases against new cases is used as the main graph because it directly relates to the research question. Time-series plots and a correlation heatmap were added to help understand the data better.

### 3.2 Additional information (≈50 words)

The histogram shows that case numbers rise and fall a lot, with clear peaks during major waves. The scatter plot shows an upward trend between unvaccinated cases and total new cases. Time-series graphs help show how vaccination groups changed over time.

### 3.3 Useful information (≈50 words)

The visuals show that higher unvaccinated case numbers usually happen on days with more new cases. Other vaccination groups also show some level of connection. These early patterns make the dataset suitable for correlation and regression analysis.

---

## 4. Analysis

### 4.1 Statistical test used (≈75 words)

Pearson correlation was used because all variables were continuous, and the goal was to measure how strongly two variables move together. A multiple linear regression model was also included to test how all vaccination-group variables together influence new cases. These tests match the research question and follow the assignment requirement for using a continuous-data statistical test.

### 4.2 Hypothesis test result (≈100 words)

The Pearson correlation between new cases and unvaccinated cases was positive and statistically significant (p < 0.05). This means the two variables tend to increase together. Other vaccination groups also showed meaningful correlations. The regression model results supported this by showing that the vaccination-group variables together help explain the changes in new cases. Since the p-values were below the 0.05 level, the null hypothesis is rejected. This means there is a significant relationship between vaccination status and new daily COVID-19 cases in Malaysia.

---

## 5. Evaluation – group’s experience at 7COM1079

### 5.1 What went well (≈75 words)

Our group worked well when preparing and cleaning the dataset. We were able to choose the correct columns and fix issues with the date format and missing values. Once the data was ready, the R analysis became easier to run. Everyone shared ideas, and communication improved across the project. The visualisations and statistical tests gave results that were clear and helpful.

### 5.2 Points for improvement (≈75 words)

At the start, we were unsure about which variables to use and which ones matched the research question. Some of us also struggled with R commands. In the future, we could plan earlier, practise using R sooner, and divide tasks in a clearer way. Learning more about the statistical methods at the beginning would also help us work more confidently.

### 5.3 Group's time management (≈50 words)

Our group managed time fairly well, although some parts were done closer to the deadline. After we divided tasks properly, progress became much faster. Regular discussions helped keep everyone on track.

### 5.4 Project’s overall judgement (≈50 words)

Overall, the project went smoothly. We cleaned the data, made suitable graphs, and used the correct statistical tests. The results supported the research question and showed clear relationships between the variables.

### 5.5 Changes to group (write only if needed)

*(No changes.)*

### 5.6 Comment on GitHub log output (≈50 words)

The GitHub log shows a steady workflow. The main commits include cleaning the dataset, adding the R scripts, and generating the figures. These updates reflect key parts of the analysis and show that the group worked together throughout the project.

---

## 6. Conclusions

### 6.1 Results explained (≈75 words)

The results show a clear relationship between vaccination-group case numbers and total new COVID-19 cases. Unvaccinated cases had the strongest connection with new cases, while other vaccination groups also showed some level of relationship. These findings suggest that vaccination status affected how daily case numbers behaved during the pandemic.

### 6.2 Interpretation of the results (≈75 words)

Days with more unvaccinated cases usually had higher total new cases. This agrees with previous studies that say unvaccinated people have a higher risk of infection. Fully vaccinated and booster groups showed weaker but noticeable patterns. Overall, the results suggest that vaccination helped reduce the spread, especially during large waves.

### 6.3 Limitations and future work (≈50 words)

The dataset does not include extra factors such as variants, movement restrictions, or testing frequency, which may influence case numbers. Future studies could add more variables or look at lag effects between groups for a deeper analysis.

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
library(cor
```
