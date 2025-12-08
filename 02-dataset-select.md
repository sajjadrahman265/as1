# ✅ **Step 1: What your assignment actually needs**

Your project requires:

### ✔ A **Research Question (RQ)** — meaningful statistical comparison or correlation

### ✔ A **Null & Alternative Hypothesis**

### ✔ Visualization (histogram, scatterplot, table, etc.) based on data

### ✔ A statistical test (t-test, correlation, regression, ANOVA, chi-sq, depending on RQ)

So your selected columns should:

* Not be too many
* Not have too much missing data
* Have strong meaningful relationships
* Allow **statistical tests** (t-test, regression, correlation)
* Allow **visualisation** clearly
* Tell a story about COVID trend / vaccination effect / age effect, etc.

---

# 🔍 **Step 2: What columns are bad / should avoid**

We must reject:

### ❌ Columns with **29% missing**

* cluster_import
* cluster_religious
* cluster_community
* cluster_highRisk
* cluster_education
* cluster_detentionCentre
* cluster_workplace

→ These cannot be used without imputation; unnecessary.

### ❌ Too many age-splits

Taking all age groups (0–80) creates dimensionality explosion.

---

# 🔍 **Step 3: What columns are useful**

### **Best columns must help answer an RQ like:**

### **RQ Example 1 (Strong):**

*"Does vaccination reduce the number of new COVID-19 cases?"*

→ Perfect for correlation, regression, good visuals.

### **RQ Example 2:**

*"Is there a relationship between active cases and new cases?"*

### **RQ Example 3:**

*"Do imported cases contribute significantly to total new cases?"*

---

# 🌟 **FINAL: Best 8–10 Columns to Use (after thinking 5 times)**

Below are the BEST columns that satisfy **meaningful RQ, clear hypothesis testing, strong plots, low missing values**:

---

# ✅ **Recommended Columns (8–10 total)**

### **1. date**

* Needed for time series plots.

### **2. cases_new**

* Dependent variable for almost any RQ.
* High variance → good for analysis.

### **3. cases_recovered**

* Helps understand epidemic curve relationships.

### **4. cases_active**

* Good correlation with cases_new.

### **5. cases_import**

* Useful for comparison tests (RQ: imported vs local spread)

### **6. cases_unvax**

### **7. cases_pvax (partial vaccinated)**

### **8. cases_fvax (fully vaccinated)**

### **9. cases_boost (booster vaccinated)**

→ These four columns allow a STRONG research question:

> **RQ:** “Is there a significant relationship between vaccination level and daily new COVID-19 cases in Malaysia?”

This is PERFECT for:

* Correlation
* Multiple regression
* Scatterplots
* Histograms
* Hypothesis testing

### **10. (Optional)** cases_adult **OR** cases_child

Pick only **one** age demographic if needed.

---

# ⭐ **Final Selected Columns (Recommended 8–10)**

### **8 Columns (minimal clean set):**

```
date
cases_new
cases_active
cases_recovered
cases_import
cases_unvax
cases_fvax
cases_boost
```

### **10 Columns (stronger statistical power):**

```
date
cases_new
cases_active
cases_recovered
cases_import
cases_unvax
cases_pvax
cases_fvax
cases_boost
cases_adult
```

---

# 🧠 Why these columns? (Your “reasoning justification”)

### ✔ **No missing data (100% valid)**

No cleaning required → good for R assignment.

### ✔ **Not too many variables**

Just 8–10 columns → easy for visualisation & hypothesis testing.

### ✔ **Strong correlation potential**

* Vaccination vs new cases
* Active vs new cases
* Imported vs new cases

### ✔ **Perfect for linear regression**

`cases_new ~ cases_unvax + cases_fvax + cases_boost + cases_import`

### ✔ **Perfect for histograms, scatterplots, line plots**

Assignment requirement fulfilled.

---
