## 🧾  `cases_malaysia_filtered_10cols.csv` — columns:

* date
* cases_new
* cases_active
* cases_recovered
* cases_import
* cases_unvax
* cases_pvax
* cases_fvax
* cases_boost
* cases_adult

**ধরি final RQ:**

> **“Is there a significant difference in average daily COVID-19 new cases in Malaysia before and after the national vaccination rollout?”**

---

# 1. Introduction

### 1.1 Problem statement and research motivation

এখানে ১–২ প্যারাগ্রাফে লিখো:

* COVID-19 Malaysia–তে কীভাবে বড় public health issue ছিল
* কেন daily cases বোঝা important
* Vaccination rollout–এর আগে/পরে cases পরিবর্তন হয়েছে কিনা → policy, future pandemic planning এর জন্য important
* এক লাইনে main problem:

  * “We want to investigate whether vaccination rollout was associated with a change in average daily reported cases.”

👉 এখানে এখনও numbers/plots দরকার নেই, শুধু context + কেন interesting।

---

### 1.2 The data set

এখানে লিখবে:

* ডেটার source:

  * Ministry of Health Malaysia public COVID-19 dataset (via GitHub / Kaggle mirror)
* Time period: 2020-01-25 থেকে 2023-08-19 পর্যন্ত (তুমি summary থেকে দেখেছো)
* কতগুলো row আছে (1303 days – এটা তুমি R/Python দিয়ে count করে লিখতে পারো)
* তুমি **original dataset থেকে শুধু ১০টা column রেখেছো** — এগুলো লিস্ট করে দাও এবং **প্রতি টার ১ লাইনে meaning লিখো**

  * যেমন:

    * `cases_new`: নতুন confirm করা daily cases
    * `cases_active`: active infections
    * `cases_recovered`: daily recovered cases
    * … ইত্যাদি
* কেন সব ৩১টা column না নিয়ে ১০টা নিলে, এক লাইনে justify করো (নিজের ভাষায়, যেমন):

  * “Only variables directly related to overall case trends and vaccination status were retained to keep the analysis focused and relevant to the research question.”

---

### 1.3 Research question

এখানে এক বা দুই লাইনে তোমার RQ লিখবে:

> “Is there a significant difference in the mean daily number of COVID-19 new cases in Malaysia before and after the national vaccination rollout?”

ইচ্ছে করলে date boundary mention করতে পারো (e.g. vaccination rollout around 24 Feb 2021)।

---

### 1.4 Null hypothesis and alternative hypothesis (H0/H1)

এখানে স্পষ্ট করে দুইটা hypothesis লিখবে:

* **H₀ (Null):**
  The mean daily number of new COVID-19 cases before vaccination rollout is equal to the mean after rollout.

* **H₁ (Alternative):**
  The mean daily number of new COVID-19 cases before vaccination rollout is different from the mean after rollout.

এক লাইনে লিখতে পারো:
“If p-value < 0.05, we will reject H₀ in favour of H₁.”

---

# 2. Background research

### 2.1 Research papers (at least 3)

এখানে তোমাকে **নিজে** ৩টা paper খুঁজে নিতে হবে (Google Scholar / library থেকে), যেমন:

* Malaysia COVID-19 wave patterns
* Impact of vaccination on COVID-19 transmission
* Time series analysis of COVID-19 cases

প্রতি paper এর জন্য লিখবে:

* ২–৩ লাইন summary: they studied what, method (short), key findings
* ১ লাইন: কীভাবে সেটা তোমার কাজের সাথে related

---

### 2.2 Why RQ is of interest (research gap & future)

এখানে বোঝাবে:

* আগের কাজগুলো কী করেছে (e.g. national level trend, modelling)
* **গ্যাপ**: হয়তো অনেক paper modelling করেছে, কিন্তু simple before–after mean comparison করেনি / certain period focus করেনি
* তোমার কাজ কী contribution দিচ্ছে (simple but clear evidence if average cases changed)
* Future direction:

  * অন্য দেশ compare করা
  * State-level analysis
  * Age-group 별 cases etc.

---

# 3. Visualisation

### 3.1 Appropriate plot for the RQ + required supplementary graphic

এখানে তুমি R দিয়ে বানানো প্লট embed করবে + text এ ব্যাখ্যা করবে।

তোমার জন্য minimum set:

**Main plot (for RQ):**

* **Boxplot**

  * x-axis: group (“Before vaccination”, “After vaccination”)
  * y-axis: `cases_new`

Text এ explain করবে:

* median, spread, outliers difference, visually কি বোঝা যাচ্ছে before vs after–এ।

**Required supplementary graphic: Histogram**

* Histogram of `cases_new`

  * একটা overall histogram
  * Optionally, দুইটা আলাদা histogram (before এবং after)

Explain করবে:

* distribution skewed নাকি roughly normal
* কি মতো extreme peaks ছিল waves সময়ে

*(R code Appendix এ থাকবে, এখানে শুধু গ্রাফ আর explanation)*

---

### 3.2 Additional information (optional)

এখানে ১–২টা extra plot দিলে ভালো নম্বর:

* Line plot:

  * x = date, y = cases_new
  * visualize পুরো সময়ের trend, waves, peaks
* আরেকটা: line plot for `cases_active` বা `cases_boost`

Short text:

* “This plot shows major waves around [months/years]. We also see that booster doses start rising in later period.”

---

### 3.3 Useful information for data understanding

এখানে summarise করবে:

* Descriptive stats (mean, median, sd of `cases_new` before এবং after)
* Maybe small table:

| Group | Mean cases_new | SD | Min | Max |
| ----- | -------------- | -- | --- | --- |

এগুলো R-এর `summary()` বা `dplyr` দিয়ে করবে, টেবিল report এ পেস্ট করবে।

---

# 4. Analysis

### 4.1 Statistical test used & output

এখানে তুমি explain করবে:

* কোন test use করছো:

  * “Independent two-sample t-test to compare mean daily cases before and after vaccination rollout.”
* কেন t-test valid:

  * দুইটা independent group
  * numeric outcome
  * sample size বড় → normality assumption less critical

তারপর:

* R t-test output থেকে:

  * t-statistic
  * degrees of freedom
  * p-value
  * confidence interval
  * group means

এসব সংখ্যা টেক্সটে লিখবে, যেমন:

> “The mean daily cases before rollout were XXXX, compared to YYYY after rollout.
> The t-test produced a t-statistic of … with p-value …, indicating (no) statistically significant difference at the 5% level.”

(এই exact sentence তুমি নিজের ভাষায় লিখবে, আমি শুধু structure বুঝাচ্ছি।)

---

### 4.2 H₀ rejected / not rejected

এখানে শুধু পরিষ্কার decision:

* যদি p < 0.05 →

  * “We reject the null hypothesis and conclude that the average daily cases differ significantly before and after vaccination rollout.”

* যদি p ≥ 0.05 →

  * “We fail to reject the null hypothesis; the data do not provide sufficient evidence of a difference in mean daily cases.”

একই সঙ্গে ১–২ লাইনে **real-world meaning** explain করবে।

---

# 5. Evaluation – group’s experience

এটা pure writing, data analysis না।

### 5.1 What went well

* Group communication, dataset selection, GitHub use, division of tasks
* R শেখা/ভিজ্যুয়ালাইজেশন তৈরি ইত্যাদি

### 5.2 Points for improvement

* Earlier start, better version control, more frequent meetings etc.

### 5.3 Time management

* কবে থেকে শুরু করেছো
* deadline এর আগে কতটা done ছিল
* next time কী better করতে পারো

### 5.4 Project’s overall judgement

* আপনারা নিজেদের কাজকে কীভাবে rate করো
* strengths / weaknesses

### 5.5 Comment on GitHub log output

* কে কী commit করেছে
* সবাই weekly contribute করেছে কিনা
* log থেকে কী বোঝা যায় (e.g. balanced contribution বা last-minute rush)

---

# 6. Conclusions

### 6.1 Results explained

Short summary:

* RQ remind
* Key numerical findings (means, p-value)
* Direction (increased/decreased or no change)

### 6.2 Interpretation

* public health view: vaccination rollout সত্ত্বেও cases wave হয়েছে কিনা
* আপনার findings কি intuitive লাগছে?
* cases_boost, cases_unvax ইত্যাদির pattern দেখে কি support করে?

### 6.3 Limitations, future work

* শুধুমাত্র national-level data
* অন্যান্য factors consider করা হয়নি (variants, policy, mobility)
* Future: state-level, age-specific, regression model etc.

---

# 7. Reference list (Harvard format)

এখানে:

* Dataset citation (MoH Malaysia repo + Kaggle page)
* অন্তত ৩টা research paper
* ভালো হলে ১–২টা guideline/report (WHO, MoH Malaysia)

সব Harvard style এ:

* Author (Year) Title. Source, etc.

---

# 8. Appendices

### A. R code

এখানে full R scripts:

* data load
* filtering / date split
* plots
* t-test

সব nicely commented থাকবে।

### B. GitHub log output

* GitHub থেকে commits list copy করে
* তারিখ + message সহ paste করবে।

---

## এখন প্রশ্ন: **R script কোথায় লিখবে? Colab allow করে?**

### ✅ Option 1 — RStudio Desktop (Laptop এ install)

সবচেয়ে common ও সহজ (especially for R module):

1. R + RStudio install করো
2. New Project → নতুন `.R` script
3. Code লিখো, run করো, plots export করো
4. Final `.R` file টা Appendix-এ use করো

### ✅ Option 2 — Posit Cloud / RStudio Cloud (browser-based RStudio)

কোনো install লাগবে না:

1. Posit Cloud এ account
2. New R Project
3. R script লিখো, একই RStudio interface
4. প্লট download করে report-এ বসাও

এটা অনেক ইউনিভার্সিটি use করে।
 
