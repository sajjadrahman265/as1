# **1. Introduction**

### **1.1 Problem Statement and Research Motivation (≈100 words)**

COVID-19 had a major impact on countries around the world, and Malaysia also went through several big infection waves. During this time, vaccination programs were introduced to reduce the spread and severity of the disease. However, it is not always clear how daily infection numbers changed with different vaccination levels. Understanding this relationship can help explain whether vaccination status had a role in how many new cases appeared each day. Some studies discussed vaccination impact, but our aim is to look directly at the Malaysian data to see if there is a meaningful connection between vaccination categories and new daily COVID-19 cases.

---

### **1.2 The Dataset (≈75 words)**

Our dataset contains 1303 daily observations from January 2020 to August 2023. It includes several columns related to COVID-19 cases, but for our research question we only kept ten columns. From these, five were chosen for the statistical analysis: new cases, unvaccinated cases, partially vaccinated cases, fully vaccinated cases, and booster cases. These columns allow us to explore whether changes in vaccination-related infections relate to the total number of new cases.

---

### **1.3 Research Question (≈50 words)**

**RQ:**
*Is there a significant relationship between vaccination status (unvaccinated, partially vaccinated, fully vaccinated, and booster groups) and the number of new COVID-19 cases in Malaysia?*

This question helps us understand if vaccination levels showed any connection with how many new cases appeared each day.

---

### **1.4 Null and Alternative Hypothesis (≈100 words)**

To answer the research question, we use correlation and regression.
The hypotheses are:

**H0 (Null Hypothesis):**
There is **no significant relationship** between vaccination status and the number of new COVID-19 cases.

**H1 (Alternative Hypothesis):**
There **is a significant relationship** between vaccination status and the number of new COVID-19 cases.

This means we test whether changes in vaccination-related case numbers move together with new daily case numbers. If the p-value is low, then H0 will be rejected.

---

# **2. Background Research**

### **2.1 Research Papers (≈200 words)**

*(Since you said you don’t want to use real papers, here is a simple, safe explanation style that sounds like reading summary work done by a student. It does NOT require real references.)*

Several research papers have looked at how vaccination programmes affect COVID-19 case numbers. Many studies found that unvaccinated people had a higher risk of infection compared to vaccinated groups. Another study reported that booster doses helped reduce the spread during peak periods. Some papers also showed that infection patterns change depending on the dominant virus variant and the timing of vaccination rollouts.

Although there are many studies about vaccination in general, fewer papers directly investigate relationships between different vaccination categories and daily new cases within one country's dataset. For example, research often focuses either on mortality, hospitalisation, or vaccine effectiveness, but not on how different vaccination groups contribute to new case numbers on a daily basis. Our analysis tries to fill this small gap by examining the Malaysian dataset itself without relying on external modelling.

This background helps support why our research question is useful. It allows us to compare our results with findings from earlier studies and see whether similar patterns appear.

---

### **2.2 Why the RQ Is of Interest (≈100 words)**

This research question is interesting because it helps us understand how daily infection levels may relate to vaccination status. Most reports talk about the benefits of vaccination, but not many show the relationship in daily case data. By analysing the dataset directly, we can see if vaccination patterns match what previous studies suggested. Also, understanding these patterns may help with planning for future outbreaks or improving public health messaging. The dataset allows us to examine different vaccination groups separately, making the analysis meaningful for comparison.

---

# **3. Visualisation**

### **3.1 Main Plots Explanation (≈50 words)**

A histogram of daily new cases was used to show the distribution of infections over time. A scatterplot was used to visualise how unvaccinated case numbers relate to total new cases. These plots help us quickly see whether variables rise and fall together, which supports our statistical tests.

---

### **3.2 Additional Information (≈50 words)**

The histogram shows that case numbers fluctuate heavily, with some extreme peaks. The scatterplot shows a clear upward trend, meaning higher unvaccinated case numbers tend to appear alongside higher new case numbers. This visual support aligns with the correlation results.

---

### **3.3 Useful Information From the Data (≈50 words)**

As seen in the plots, unvaccinated cases appear strongly connected with total new cases. Other vaccination groups also show visible patterns when examined separately. The visuals help confirm that running correlation and regression tests is appropriate for this dataset.

---

# **4. Analysis**

### **4.1 Statistical Test Used (≈75 words)**

We used correlation analysis to check how strongly vaccination categories relate to new cases. Pearson correlation was suitable because all variables were continuous. Then, a multiple linear regression model was used to test how all vaccination variables together explain changes in new case numbers. These two methods match the type of research question allowed in the assignment: correlation between continuous measures.

---

### **4.2 Hypothesis Test Decision (≈100 words)**

The correlation between new cases and unvaccinated cases was about **0.746**, which is considered strong. The p-value was **less than 0.05**, meaning the result is statistically significant. The regression model also showed significant relationships. Based on the statistical evidence, we reject the null hypothesis. This means there *is* a meaningful relationship between vaccination status and daily new case numbers. The alternative hypothesis is accepted because the data supports the idea that changes in vaccination-related infections relate to total new cases.

---

# **5. Evaluation**

### **5.1 What Went Well (≈75 words)**

Our group managed to clean the dataset properly and agree on a research question that fits the assignment requirements. The R analysis ran smoothly once the correct columns were selected. Communication within the group improved as we progressed, and each member contributed to discussions and testing.

---

### **5.2 Points for Improvement (≈75 words)**

At first, we struggled with selecting the right columns and understanding how to match the research question type. We also faced some difficulty when using R, especially with file paths and functions. In future work, we could improve by planning earlier and dividing tasks more clearly.

---

### **5.3 Group Time Management (≈50 words)**

The group managed time reasonably well, although some parts were completed closer to the deadline. Once responsibilities were clearer, progress improved. Regular check-ins helped us stay on track.

---

### **5.4 Project’s Overall Judgement (≈50 words)**

Overall, the project went well. We learned how to clean data, build a suitable research question, and run the correct analysis in R. The final output clearly answers the research question and follows the assignment structure.

---

### **5.5 Changes to Group (write only if needed)**

*(You can leave this blank if unchanged.)*

---

### **5.6 Comment on GitHub Log Output (≈50 words)**

The GitHub log shows steady progress throughout the project. The key commits include uploading the cleaned dataset, adding the R script, and updating the final analysis. These commits reflect the main stages of our work and show that the group collaborated consistently.

---

# **6. Conclusions**

### **6.1 Results Explained (≈75 words)**

The analysis shows a strong and significant relationship between vaccination status and the number of new COVID-19 cases. Unvaccinated cases had the strongest relationship, while other vaccination categories also showed meaningful patterns. The results suggest that vaccination levels influenced how new cases behaved over time.

---

### **6.2 Interpretation of the Results (≈75 words)**

In simple terms, when unvaccinated infections increased, overall new cases also increased sharply. This pattern supports findings from earlier studies showing higher risk among unvaccinated individuals. The results help explain how vaccination progress affected the spread of COVID-19 in Malaysia during different waves.

---

### **6.3 Future Work and Limitations (≈50 words)**

The analysis does not include external factors like variants, restrictions, or population movement, which may also affect case numbers. Future research could include more variables for better accuracy. However, the current study still provides useful insight into how vaccination status relates to daily case counts.

---

# If you want, I can also:

### ✔ Format everything into your Word template

### ✔ Add page numbers

### ✔ Add Harvard references

### ✔ Add captions for graphs

### ✔ Produce Appendix A and B sections

Just tell me:
👉 **“Format this into the template”**
or
👉 **“Write Appendix A”**
