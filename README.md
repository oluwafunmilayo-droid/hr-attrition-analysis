# IBM HR Analytics: Employee Attrition Analysis

**Tool Used:** Excel, SQL, Power BI  
**Dataset:** IBM HR Analytics Dataset  
**Total Records:** 1,470 employees  
**Programme:** TechCrush Data Analytics Bootcamp

## Project Overview
This project involved a full end-to-end analysis of employee attrition 
at a fictional company using the IBM HR Analytics dataset. The goal 
was to identify why employees were leaving and what the business could 
do about it — from raw data cleaning all the way to an interactive 
Power BI dashboard and a boardroom-ready report.

**Headline Finding:** Employees are leaving at a **16.1% attrition 
rate**, and it is not random. Overtime, low job satisfaction, and 
stalled career growth show up again and again as the strongest drivers.

---

## The Business Question
This analysis was framed around a fictional leadership audience — 
Head of People Analytics and CBO — trying to answer one question: 
**why are we losing people, and what can we do about it?** Every 
chart, query, and slide in this repo was built to answer that, 
not just describe the data.

---

## Project Files

| File | Description |
|------|-------------|
| [Final HR-Employee-Attrition (1).xlsx](Final%20HR-Employee-Attrition%20%281%29.xlsx) | Raw dataset |
| [HR Cleaned Data.jpg](HR%20Cleaned%20Data.jpg) | Visual reference of cleaned dataset structure |
| [IBM HR Cleaned Dataset.xlsx](IBM%20HR%20Cleaned%20Dataset.xlsx) | Pivot tables and 15 analytical questions using COUNTIF/COUNTIFS |
| [attrition_analysis_queries.sql](attrition_analysis_queries.sql) | SQL versions of the core analytical questions |
| [Dashboard Portfolio.pbix](Dashboard%20Portfolio.pbix) | Interactive 3-page Power BI dashboard |
| [Dashboard Page 1.png](Dashboard%20Page%201.png) | Dashboard screenshot — Detailed Analysis |
| [Dashboard Page 2.png](Dashboard%20Page%202.png) | Dashboard screenshot — Attrition Drivers |
| [Dashboard Page 3.png](Dashboard%20Page%203.png) | Dashboard screenshot — Performance and Career Growth |
| [TechCrush_Attrition_Report.pdf](TechCrush_Attrition_Report.pdf) | Full written report with 15 charts and findings |
| [TechCrush_Attrition_Group24_Presentation_Final.pptx](TechCrush_Attrition_Group24_Presentation_Final.pptx) | Slide deck version |

---

## Tools Used
- **Excel** — data cleaning, pivot tables, COUNTIF/COUNTIFS analysis
- **SQL** — replicating core analytical questions as queries for 
a portfolio-ready technical layer
- **Power BI** — DAX measures, 3-page interactive dashboard, 
custom color palette (navy #1F4E79 / red #C00000)
- **Python** — chart generation for the written report

---

## Data Cleaning Steps Performed

### 1. Removed Duplicates
Dataset was checked and cleaned to ensure no duplicate employee 
records were included in the analysis.

### 2. Standardized Column Formats
All columns were reviewed and formatted consistently — including 
numeric fields, categorical variables and date formats.

### 3. Handled Missing Values
Missing entries were identified and handled appropriately to 
maintain data integrity across all 1,470 records.

### 4. Validated Data Types
All columns were confirmed to have correct data types before 
analysis began — ensuring accurate aggregations and calculations.

---

## Key Findings

### 1. Overall Attrition Rate
- **16.1% of employees** left the company — 237 out of 1,470
- This rate is high enough to represent a significant business 
and financial risk

### 2. Overtime is a Major Driver
- Employees who work overtime leave at a noticeably higher rate 
than those who do not
- Overtime appears repeatedly as one of the strongest predictors 
of attrition across departments

### 3. Job Satisfaction and Work-Life Balance
- Lower job satisfaction ratings are strongly linked to higher 
attrition risk
- Employees rating their work-life balance poorly are significantly 
more likely to leave

### 4. Role and Department Concentration
- Certain job roles and departments carry disproportionately higher 
attrition than others
- This concentration suggests targeted interventions are more 
effective than company-wide policies

### 5. Career Stagnation
- Longer time since last promotion shows up consistently as a 
risk factor alongside pay
- Employees who feel their careers have stalled are more likely 
to seek opportunities elsewhere

---

## Dashboard Preview

Static previews are available below. Open 
[Dashboard Portfolio.pbix](Dashboard%20Portfolio.pbix) 
in Power BI Desktop to interact with it directly.

### Page 1 — Detailed Analysis
![Dashboard Page 1](Dashboard%20Page%201.png)

### Page 2 — Attrition Drivers
![Dashboard Page 2](Dashboard%20Page%202.png)

### Page 3 — Performance and Career Growth
![Dashboard Page 3](Dashboard%20Page%203.png)

---

## Recommendations

1. **Address overtime policies** — Implement workload monitoring 
and compensatory time off to reduce burnout among overtime workers.

2. **Improve job satisfaction** — Regular pulse surveys and 
manager check-ins can identify dissatisfaction early before 
it becomes attrition.

3. **Accelerate career progression** — Create clear promotion 
timelines and development plans especially for roles with 
high attrition rates.

4. **Target high-risk departments** — Focus retention programs 
on the specific roles and departments showing disproportionate 
attrition rather than applying blanket policies.

5. **Review compensation** — Pay competitiveness combined with 
career stagnation is a double attrition risk that needs 
addressing simultaneously.

---

## How to Explore This Repo
1. Start with the [full report](TechCrush_Attrition_Report.pdf) 
for the narrative and findings
2. Check the [SQL queries](attrition_analysis_queries.sql) 
for the technical query layer
3. Open the [cleaned Excel workbook](IBM%20HR%20Cleaned%20Dataset.xlsx) 
to see the underlying pivot analysis
4. View the dashboard screenshots or open the `.pbix` file 
for the interactive version

---

## Skills Demonstrated
- Data Cleaning and Validation
- Pivot Tables and COUNTIF/COUNTIFS Analysis
- SQL Querying and Aggregation
- Power BI Dashboard Design and DAX Measures
- Data Visualization and Storytelling
- Business Insight Generation and Recommendations

---

## About This Project
I am Elizabeth Atoyeje, a Physiology graduate transitioning 
into data analytics, currently interning at DecodeLabs. This project 
was my capstone for the TechCrush Data Analytics Bootcamp and it is my way of proving i can take a messy dataset all the way to a 
business-ready insight using the same tools analysts use on the job every day.

- Portfolio: [bit.ly/ElizabethAtoyejePortfolio]
- LinkedIn: [linkedin.com/in/atoyeje-elizabeth03]
- Email: atoyejeelizabeth03@gmail.com
