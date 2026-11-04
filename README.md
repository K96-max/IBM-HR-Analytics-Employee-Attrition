
# IBM HR Analytics – Employee Attrition & Retention Analysis

## Project Overview

This project investigates employee attrition and retention patterns using an HR analytics dataset. The aim is to identify workforce trends, explore factors associated with employees leaving an organisation, and demonstrate how data analytics can support evidence-based HR decision-making.

I completed this project as part of my development in data analytics, combining my interest in HR and workforce management with practical experience using Python, SQL and Tableau.

**Dataset:** IBM HR Analytics Employee Attrition & Performance (Kaggle practice dataset)  
**Records analysed:** 1,470 employees  
**Tools:** Python, Pandas, Jupyter Notebook, MySQL, SQL and Tableau Public

> **Data note:** This is a simulated practice dataset commonly referred to as the IBM HR Analytics dataset. It does not represent verified real IBM employee records.

---

## Project Objectives

The analysis focused on answering the following questions:

- What proportion of employees leave the organisation?
- Which departments and job roles have the highest attrition rates?
- Is overtime associated with higher employee attrition?
- Does employee age influence attrition patterns?
- At what stage of employment are employees most likely to leave?
- Are there differences in average monthly income and job satisfaction between employees who stay and those who leave?

---

## Tools & Technologies

| Tool | How it was used |
|---|---|
| Python | Data cleaning and exploratory analysis |
| Pandas | Data manipulation and analysis |
| Jupyter Notebook | Running and documenting Python analysis |
| MySQL | Storing and querying the dataset |
| SQL | Investigating attrition trends and calculating metrics |
| Tableau Public | Building interactive visualisations and a dashboard |
| GitHub | Documenting and presenting the project |

---

## Project Workflow

### 1. Data Cleaning – Python

Used Python and Pandas to inspect and prepare the dataset.

Tasks included:
- Loading the CSV dataset into Pandas.
- Reviewing dataset structure and column types.
- Checking for missing values.
- Checking for duplicate records.
- Preparing a cleaned dataset for further analysis.
- Exporting the cleaned CSV file for use in MySQL and Tableau.

**Data quality checks:**
- 1,470 employee records.
- 35 original columns.
- No missing values identified.
- No duplicate records identified.

### 2. Data Analysis – MySQL

Imported the cleaned dataset into MySQL and created a database called `ibm_hr_analytics`.

Created SQL queries to investigate:

1. Overall employee attrition.
2. Department attrition.
3. Overtime and attrition.
4. Salary and attrition.
5. Job satisfaction.
6. Length of service.
7. Age groups.
8. Job roles.
9. Final attrition summary.

### 3. Data Visualisation – Tableau

Created a Tableau dashboard to present the main findings through visual analysis.

The dashboard explores:
- Overall employee attrition.
- Department-level attrition.
- Overtime and attrition.
- Attrition by age group.
- Attrition by length of service.
- Attrition by job role.
- Average monthly income by attrition status.

---

## Key Findings

### Overall Attrition

| Metric | Result |
|---|---:|
| Total employees | 1,470 |
| Employees who left | 237 |
| Employees who stayed | 1,233 |
| Overall attrition rate | 16.12% |
| Average length of service | 7.01 years |

### Department Attrition

| Department | Attrition Rate |
|---|---:|
| Sales | 20.63% |
| Human Resources | 19.05% |
| Research & Development | 13.84% |

Sales had the highest attrition rate of the three departments.

### Overtime and Attrition

| Overtime | Attrition Rate |
|---|---:|
| Overtime | 30.53% |
| No overtime | 10.44% |

Employees recorded as working overtime had an attrition rate almost three times that of employees who did not.

This suggests overtime may be an important area for further workforce investigation.

### Attrition by Length of Service

| Length of Service | Attrition Rate |
|---|---:|
| 0–1 years | 34.88% |
| 2–3 years | 18.43% |
| 4–5 years | 13.07% |
| 6–10 years | 12.28% |
| 10+ years | 8.13% |

The highest attrition occurred during the first year of employment.

This highlights the importance of recruitment quality, onboarding, employee expectations and early engagement.

### Attrition by Age

| Age Group | Attrition Rate |
|---|---:|
| Under 25 | 39.18% |
| 25–34 | 20.22% |
| 35–44 | 10.10% |
| 45–54 | 10.20% |
| 55+ | 15.94% |

Employees under 25 had the highest attrition rate across the age groups analysed.

### Attrition by Job Role

The highest attrition rates were identified in:

| Job Role | Attrition Rate |
|---|---:|
| Sales Representative | 39.76% |
| Laboratory Technician | 23.94% |
| Human Resources | 23.08% |
| Sales Executive | 17.48% |
| Research Scientist | 16.10% |

Sales Representatives had the highest attrition rate among the job roles analysed.

### Salary and Attrition

| Employee Status | Average Monthly Income |
|---|---:|
| Stayed | 6,832.74 |
| Left | 4,787.09 |

Employees who left had a lower average monthly income than those who stayed.

The dataset does not specify a currency, so these figures are presented in the dataset's original units.

### Job Satisfaction

| Employee Status | Average Job Satisfaction |
|---|---:|
| Stayed | 2.78 |
| Left | 2.47 |

Employees who left reported slightly lower average job satisfaction scores.

---

## Recommendations & Business Implications

Based on the patterns identified, the analysis suggests several areas organisations could investigate further:

**1. Strengthen employee onboarding**

The high first-year attrition rate highlights the importance of effective onboarding, realistic job expectations, early engagement and regular check.

## Tableau Dashboard

[IBM HR Analytics Dashboard](Tableau/IBM_HR_Analytics_Dashboard.png)
