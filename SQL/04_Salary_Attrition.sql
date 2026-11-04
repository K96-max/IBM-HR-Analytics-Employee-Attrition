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