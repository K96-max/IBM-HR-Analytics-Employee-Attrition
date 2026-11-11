# IBM HR Analytics: Employee Attrition & Retention

An end-to-end HR analytics portfolio project exploring employee attrition, retention patterns and workforce indicators using **Python, SQL (MySQL) and Tableau**.

> **Purpose:** Demonstrate how HR data can be prepared, analysed and translated into practical workforce questions. This is a simulated practice dataset, not verified employee data from IBM.

## Project at a glance

| | |
|---|---|
| Dataset | IBM HR Analytics Employee Attrition & Performance (practice dataset) |
| Records | 1,470 employees |
| Original fields | 35 |
| Analysis tools | Python, Pandas, Jupyter Notebook, MySQL |
| Visualisation | Tableau workbook |
| Focus | Attrition, retention, overtime, tenure, department and job role |

## Business questions

- What is the overall employee attrition rate?
- Which departments and job roles show the highest attrition?
- How does attrition vary by age and length of service?
- Is overtime associated with higher attrition in this dataset?
- How do average monthly income and job satisfaction differ between employees who stay and leave?
- What could HR teams investigate in response to these patterns?

## Workflow and methods

1. **Data preparation – Python / Pandas**
   - Loaded and inspected the source data.
   - Reviewed data types, missing values and duplicate records.
   - Prepared a clean dataset for analysis and exported it for downstream use.
2. **Exploratory analysis – MySQL**
   - Imported the cleaned employee data.
   - Used SQL aggregations and grouped comparisons to examine attrition by department, overtime, salary, satisfaction, tenure, age and job role.
3. **Visual communication – Tableau**
   - Developed a dashboard concept to bring the key workforce measures together.
   - The Tableau workbook is included in the repository; a polished dashboard screenshot still needs to be added.

## Selected findings

| Measure | Finding |
|---|---:|
| Employees who left | 237 |
| Employees who stayed | 1,233 |
| Overall attrition rate | 16.12% |
| Sales department attrition | 20.63% |
| Human Resources department attrition | 19.05% |
| Research & Development attrition | 13.84% |
| Attrition among employees with 0–1 years' service | 34.88% |
| Attrition among employees under 25 | 39.18% |
| Attrition among Sales Representatives | 39.76% |

In this dataset, the attrition rate was **30.53%** for employees recorded as working overtime, compared with **10.44%** for those not recorded as working overtime. Employees who left also had lower average monthly income and slightly lower average job satisfaction scores.

These are descriptive associations within a simulated dataset. They do not establish that any single factor caused an employee to leave.

## HR interpretation and questions for further investigation

- **Early-tenure retention:** Explore onboarding, role expectations, manager check-ins and early employee experience.
- **Workload and overtime:** Review workload distribution and whether sustained overtime is associated with retention risks.
- **Role-level differences:** Investigate why some job families have higher attrition rather than applying one organisation-wide intervention.
- **Reward and experience:** Examine pay and job satisfaction alongside other factors before drawing conclusions.

## Repository contents

| Path | Contents |
|---|---|
| `Python/IBM_HR_Analytics.ipynb` | Python analysis notebook |
| `Python/IBM_HR_Analytics_Clean.csv` | Prepared analysis dataset |
| `SQL/` | Nine SQL scripts covering the main attrition questions |
| `IBM_HR_Analytics.png.twb` | Tableau workbook file (Tableau workbook format) |

- [Open the Python notebook](Python/IBM_HR_Analytics.ipynb)
- [Browse the SQL analysis](SQL/)
- [Open the Tableau workbook file](IBM_HR_Analytics.png.twb)

## Limitations

- The dataset is a simulated, cross-sectional practice dataset.
- The analysis describes associations; it cannot establish causation.
- Results should not be generalised to IBM or any real employer.
- The Tableau workbook is present, but a dashboard preview image and a verified public interactive dashboard link are not currently included.

## What this project demonstrates

**HR domain understanding · data cleaning · exploratory data analysis · Pandas · SQL querying · workforce metrics · dashboard development · communicating findings for HR decision-making**

---
*Portfolio project by K96-max.*
