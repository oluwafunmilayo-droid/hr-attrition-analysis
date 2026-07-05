/* ============================================================
   IBM HR ANALYTICS EMPLOYEE ATTRITION - SQL ANALYSIS
   Author: Elizabeth Atoyeje
   Dataset: IBM HR Analytics Employee Attrition & Performance
   (1,470 employees)
   ============================================================
   Table assumed name: employees
   Schema based on the standard IBM HR Attrition dataset columns:
   EmployeeNumber, Age, Attrition, BusinessTravel, Department,
   DistanceFromHome, Education, EducationField, EnvironmentSatisfaction,
   Gender, JobInvolvement, JobLevel, JobRole, JobSatisfaction,
   MaritalStatus, MonthlyIncome, NumCompaniesWorked, OverTime,
   PercentSalaryHike, PerformanceRating, RelationshipSatisfaction,
   StockOptionLevel, TotalWorkingYears, TrainingTimesLastYear,
   WorkLifeBalance, YearsAtCompany, YearsInCurrentRole,
   YearsSinceLastPromotion, YearsWithCurrManager
   ============================================================ */


/* ------------------------------------------------------------
   1. OVERALL ATTRITION RATE
   Headline number for the report (16.1%)
------------------------------------------------------------ */
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees;


/* ------------------------------------------------------------
   2. ATTRITION RATE BY DEPARTMENT
------------------------------------------------------------ */
SELECT
    Department,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY Department
ORDER BY attrition_rate_pct DESC;


/* ------------------------------------------------------------
   3. ATTRITION RATE BY JOB ROLE
   Identifies which specific roles are highest risk
------------------------------------------------------------ */
SELECT
    JobRole,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY JobRole
ORDER BY attrition_rate_pct DESC;


/* ------------------------------------------------------------
   4. OVERTIME vs ATTRITION
   Tests whether working overtime is linked to leaving
------------------------------------------------------------ */
SELECT
    OverTime,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY OverTime
ORDER BY attrition_rate_pct DESC;


/* ------------------------------------------------------------
   5. ATTRITION BY AGE GROUP
   Buckets ages into ranges (mirrors the Age Group calculated
   column built in Power BI)
------------------------------------------------------------ */
SELECT
    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY age_group
ORDER BY age_group;


/* ------------------------------------------------------------
   6. ATTRITION BY TENURE BUCKET (YearsAtCompany)
   Checks if newer employees leave more than tenured ones
------------------------------------------------------------ */
SELECT
    CASE
        WHEN YearsAtCompany < 2 THEN '0-1 yrs'
        WHEN YearsAtCompany BETWEEN 2 AND 5 THEN '2-5 yrs'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 yrs'
        ELSE '10+ yrs'
    END AS tenure_bucket,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY tenure_bucket
ORDER BY tenure_bucket;


/* ------------------------------------------------------------
   7. MONTHLY INCOME COMPARISON: STAYED vs LEFT
   Average and median-style comparison of pay by attrition status
------------------------------------------------------------ */
SELECT
    Attrition,
    COUNT(*) AS headcount,
    ROUND(AVG(MonthlyIncome), 0) AS avg_monthly_income,
    MIN(MonthlyIncome) AS min_income,
    MAX(MonthlyIncome) AS max_income
FROM employees
GROUP BY Attrition;


/* ------------------------------------------------------------
   8. ATTRITION BY JOB SATISFACTION LEVEL
   JobSatisfaction is rated 1 (Low) to 4 (Very High)
------------------------------------------------------------ */
SELECT
    JobSatisfaction,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


/* ------------------------------------------------------------
   9. ATTRITION BY WORK-LIFE BALANCE RATING
   WorkLifeBalance is rated 1 (Bad) to 4 (Best)
------------------------------------------------------------ */
SELECT
    WorkLifeBalance,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


/* ------------------------------------------------------------
   10. ATTRITION BY BUSINESS TRAVEL FREQUENCY
   Tests whether frequent travel drives attrition
------------------------------------------------------------ */
SELECT
    BusinessTravel,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY BusinessTravel
ORDER BY attrition_rate_pct DESC;


/* ------------------------------------------------------------
   11. YEARS SINCE LAST PROMOTION vs ATTRITION
   Checks if stalled career growth correlates with leaving
------------------------------------------------------------ */
SELECT
    Attrition,
    ROUND(AVG(YearsSinceLastPromotion), 2) AS avg_years_since_promotion,
    ROUND(AVG(YearsInCurrentRole), 2) AS avg_years_in_role
FROM employees
GROUP BY Attrition;


/* ------------------------------------------------------------
   12. TOP 5 HIGHEST-RISK SEGMENTS
   Combines Department + OverTime + JobSatisfaction to find
   the most vulnerable employee segments (min 15 employees
   per segment to avoid noise from tiny groups)
------------------------------------------------------------ */
SELECT
    Department,
    OverTime,
    JobSatisfaction,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY Department, OverTime, JobSatisfaction
HAVING COUNT(*) >= 15
ORDER BY attrition_rate_pct DESC
LIMIT 5;


/* ------------------------------------------------------------
   13. DISTANCE FROM HOME vs ATTRITION
   Buckets commute distance to test its effect on attrition
------------------------------------------------------------ */
SELECT
    CASE
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 15 THEN '6-15 km'
        ELSE '16+ km'
    END AS distance_bucket,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY distance_bucket
ORDER BY distance_bucket;


/* ------------------------------------------------------------
   14. ATTRITION BY MARITAL STATUS
------------------------------------------------------------ */
SELECT
    MaritalStatus,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY MaritalStatus
ORDER BY attrition_rate_pct DESC;


/* ------------------------------------------------------------
   15. STOCK OPTION LEVEL vs ATTRITION
   Tests whether equity/stock incentives reduce attrition
------------------------------------------------------------ */
SELECT
    StockOptionLevel,
    COUNT(*) AS headcount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        1
    ) AS attrition_rate_pct
FROM employees
GROUP BY StockOptionLevel
ORDER BY StockOptionLevel;
