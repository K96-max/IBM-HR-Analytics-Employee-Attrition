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