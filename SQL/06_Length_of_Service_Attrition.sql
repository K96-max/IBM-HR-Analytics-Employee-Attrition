SELECT * 
FROM ibm_hr_analytics.ibm_hr_analytics_clean;
USE ibm_hr_analytics;

SHOW TABLES;
-- IBM HR Analytics Project
-- Investigation 1: Overall Employee Attrition
-- Objective: Count employees who stayed and left.

USE ibm_hr_analytics;

SELECT
    Attrition,
    COUNT(*) AS Employee_Count
FROM ibm_hr_analytics_clean
GROUP BY Attrition;

-- Findings:
-- Employees who left: 237
-- Employees who stayed: 1,233
-- Overall attrition rate: 16.12%

SELECT
    Attrition,
    COUNT(*) AS Employee_Count
FROM your_table_name
GROUP BY Attrition;
USE ibm_hr_analytics;

SHOW TABLES;
SELECT
    Attrition,
    COUNT(*) AS Employee_Count
FROM ibm_hr_analytics_clean
GROUP BY Attrition;

USE ibm_hr_analytics;
-- Findings:
-- Sales attrition: 20.63%
-- Human Resources attrition: 19.05%
-- Research & Development attrition: 13.84%
-- Sales has the highest attrition rate.
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS Attrition_Rate
FROM ibm_hr_analytics_clean
GROUP BY Department
ORDER BY Attrition_Rate DESC;


-- Findings:
-- Overtime employees: 416
-- Overtime employees who left: 127
-- Overtime attrition rate: 30.53%
-- Non-overtime attrition rate: 10.44%
-- Overtime group has approximately 2.92 times
-- the attrition rate of the non-overtime group.
SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS Attrition_Rate
FROM ibm_hr_analytics_clean
GROUP BY OverTime
ORDER BY Attrition_Rate DESC
;
-- Findings:
-- Average monthly income of employees who left: 4787.09
-- Average monthly income of employees who stayed: 6832.74
-- Difference: 2045.65
-- Employees who left earned approximately 30% less on average.
-- This is an association, not proof of causation.

SELECT
    Attrition,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM ibm_hr_analytics_clean
GROUP BY Attrition;
-- Findings:
-- Average satisfaction of employees who left: 2.47
-- Average satisfaction of employees who stayed: 2.78
-- Difference: 0.31 points.
-- Lower satisfaction is associated with higher attrition.
-- This does not establish causation.
SELECT
    Attrition,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(JobSatisfaction), 2) AS Average_Job_Satisfaction
FROM ibm_hr_analytics_clean
GROUP BY Attrition;
-- Findings:
-- 0-1 years attrition: 34.88%
-- 2-3 years attrition: 18.43%
-- 4-5 years attrition: 13.07%
-- 6-10 years attrition: 12.28%
-- 10+ years attrition: 8.13%
--
-- Key insight:
-- Employees in their first year have the highest attrition.
--
-- HR recommendation:
-- Review onboarding, training and early employee support.
SELECT
    CASE
        WHEN YearsAtCompany <= 1 THEN '0-1 years'
        WHEN YearsAtCompany <= 3 THEN '2-3 years'
        WHEN YearsAtCompany <= 5 THEN '4-5 years'
        WHEN YearsAtCompany <= 10 THEN '6-10 years'
        ELSE '10+ years'
    END AS Tenure_Group,

    COUNT(*) AS Total_Employees,

    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Employees_Left,

    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS Attrition_Rate

FROM ibm_hr_analytics_clean

GROUP BY Tenure_Group

ORDER BY MIN(YearsAtCompany);