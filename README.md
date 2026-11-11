# IBM HR Analytics: Employee Attrition & Retention

An end-to-end HR analytics project exploring employee attrition, retention patterns and workforce indicators using **Python, SQL (MySQL) and Tableau**.

> **Business context:** Employee turnover can create recruitment costs, disrupt teams and affect organisational performance. HR teams need reliable evidence about where attrition is concentrated before deciding what to investigate.

## Business problem

How can an organisation use employee data to identify patterns in attrition, understand which workforce groups may need further investigation, and help HR prioritise retention activity?

## Project objectives

- Establish a clear baseline attrition measure.
- Identify differences by department, job role, age and length of service.
- Explore whether overtime, income and job satisfaction vary between employees who stay and leave.
- Translate the analysis into practical questions for HR and people managers.

## Data and approach

| | |
|---|---|
| Dataset | IBM HR Analytics Employee Attrition & Performance (simulated practice dataset) |
| Records | 1,470 employees |
| Original fields | 35 |
| Tools | Python, Pandas, Jupyter Notebook, MySQL and Tableau |
| Focus | Attrition, retention, overtime, tenure, department and job role |

1. **Prepare the data:** inspect structure, data types, missing values and duplicates in Python; prepare a consistent dataset for analysis.
2. **Analyse workforce patterns:** use MySQL aggregations and grouped comparisons to calculate attrition and compare employee groups.
3. **Communicate findings:** use Tableau to bring key measures together and make patterns easier to explore.

## Key findings

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

Attrition was 30.53% among employees recorded as working overtime, compared with 10.44% among those not recorded as working overtime. Employees who left also had lower average monthly income and slightly lower average job satisfaction scores.

## What the findings could mean for the business

The results point to areas HR could investigate rather than proving why employees leave:

- **Early-tenure experience:** review onboarding, role expectations and manager check-ins.
- **Workload:** explore overtime patterns, workload allocation and employee feedback.
- **Role-specific retention:** understand the working conditions and progression routes in roles with higher attrition.
- **Reward and engagement:** examine pay and satisfaction alongside other relevant factors.

A sensible next step would be to combine these indicators with exit reasons, manager data, engagement results and longitudinal records, then test whether targeted actions improve retention.

## Limitations

- This is a simulated, cross-sectional practice dataset, not verified employee data from IBM.
- Descriptive associations do not establish causation.
- Results should not be generalised to a real employer.
- The Tableau workbook is included, but a polished dashboard preview and verified public interactive link still need to be added.

## Repository contents

| Path | Contents |
|---|---|
| `Python/IBM_HR_Analytics.ipynb` | Python analysis notebook |
| `Python/IBM_HR_Analytics_Clean.csv` | Prepared analysis dataset |
| `SQL/` | Nine SQL scripts covering the analysis questions |
| `Tableau/IBM_HR_Analytics_Dashboard.twb` | Tableau workbook |

- [Python analysis](Python/IBM_HR_Analytics.ipynb)
- [SQL analysis](SQL/)
- [Tableau workbook](Tableau/IBM_HR_Analytics_Dashboard.twb)

## Business value

This project demonstrates how employee data can be turned into a measurable view of retention, how analysis can help HR prioritise further investigation, and how findings can be communicated without overstating what the data proves.

**Skills:** HR metrics · data quality · Pandas · SQL · exploratory analysis · workforce segmentation · Tableau · insight communication

---
*Portfolio project by K96-max.*
