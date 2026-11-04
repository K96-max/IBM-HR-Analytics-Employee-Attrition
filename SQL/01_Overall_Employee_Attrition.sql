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