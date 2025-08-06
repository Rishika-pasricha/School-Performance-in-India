# 🎓 Student Performance Analysis and Predictive Modeling

## 📖 Overview
This project presents a comprehensive analysis of the *Students Performance* dataset.  
The primary goal is to identify key factors that influence students' academic scores in *Math, **Reading, and **Writing*.  

The analysis involves several stages:
- *Data Cleaning and Preprocessing*: Ensuring the data is consistent, accurate, and ready for analysis.
- *Feature Engineering*: Creating new, insightful variables from the existing data to deepen the analysis.
- *Exploratory Data Analysis (EDA)*: Using visualizations to uncover trends, patterns, and relationships between different factors and student scores.
- *Descriptive Statistics*: Calculating key statistical measures to summarize the data and quantify variability.
- *Machine Learning*: Building and evaluating both regression and classification models to predict student performance based on demographic and preparatory data.

The entire analysis is conducted in *Python* using libraries such as:
Pandas, NumPy, Matplotlib, Seaborn, and Scikit-learn.  
The findings are also summarized in the *Tableau dashboard* (see screenshot in repo).

---

## 📂 Dataset Description
The analysis is based on the StudentsPerformance.csv dataset, which contains records for *1,000 students*.

### *Original Features*
- gender: The gender of the student (Male/Female).
- race/ethnicity: The student's ethnic group (Group A–E).
- parental level of education: Highest education attained by the student’s parent(s).
- lunch: Type of lunch (Standard / Free-Reduced).
- test preparation course: Whether completed (Completed / None).
- math score: Student’s Math exam score.
- reading score: Student’s Reading exam score.
- writing score: Student’s Writing exam score.

### *Engineered Features*
- average score: Mean of the three subject scores (holistic performance measure).
- performance category: Categorical tier (Low, Medium, High) based on average score.
- preparation effectiveness: Binary flag (Effective / Not Effective) from test preparation completion.

---

---

## 🧹 Data Cleaning and Preprocessing
Before analysis, the data was cleaned and standardized:

- *Initial Checks*: Verified no missing values or duplicate rows.
- *Standardization of Categorical Data*:
  - Parental Education: Consolidated values like “some high school” and “high school” into *High School*.
  - Test Preparation: Mapped “none” → *Not Completed*.
  - Other Fields: Ensured consistent capitalization (e.g., "female" → "Female").

---

## 📊 Exploratory Data Analysis (EDA) & Key Findings

### *Score Distributions & Correlations*
- Math, Reading, and Writing scores are *approximately normally distributed*.
- Strong *positive correlations* between all three subjects → excelling in one usually means excelling in others.

### *Key Performance Influencers*
- *Lunch Program: Students with *Standard lunch score significantly higher → reflects a socioeconomic link.
- *Test Preparation Course*: Completing it → higher scores across all subjects.
- *Parental Education*: Higher education level of parents → better student performance.
- *Gender*:  
  - Females outperform males in *Reading and Writing*.  
  - Males slightly higher in *Math*.

---

## 🤖 Machine Learning Models

### *1. Regression Analysis (Predicting Average Score)*
- *Models Used*: Linear Regression, Random Forest Regressor  
- *Performance*:
  - Linear Regression *R² = 0.218*
  - Random Forest *R² = 0.194*
- *Conclusion*: Demographic/prep features explain only ~19–22% of score variance.

### *2. Classification Analysis (Performance Category: Low/Medium/High)*
- *Models Used*: Logistic Regression, Decision Tree, Random Forest Classifier
- *Performance: ~**53–54% accuracy* (better than random 33%, but not reliable).
- *Feature Importance*: Lunch type & Parental education were the most influential.

### *Overall ML Conclusion*
The dataset features are *influential but insufficient* for high-accuracy predictions.  
Other unmeasured factors (study habits, teacher quality, socioeconomic environment) likely play a major role.

---

## 🚀 How to Run the Project

### Clone the repository
```bash
git clone <repository-url>
cd student-performance-analysis
