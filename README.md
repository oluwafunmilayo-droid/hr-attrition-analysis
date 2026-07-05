# IBM HR Analytics: Employee Attrition Analysis

A full end-to-end analysis of employee attrition at a fictional company, using the IBM HR Analytics dataset (1,470 employees). Built as my capstone for the TechCrush Data Analytics Bootcamp (Cohort 6) — from raw data cleaning to an interactive Power BI dashboard.

**Headline finding:** Employees are leaving at a **16.1% attrition rate**, and it isn't random — overtime, low job satisfaction, and stalled career growth show up again and again as the strongest drivers.

## The Business Question

This analysis was framed around a fictional leadership audience — Head of People Analytics and CBO, trying to answer one question: **why are we losing people, and what can we do about it?** Every chart, query, and slide in this repo was built to answer that, not just describe the data.

## Project Files

- [Final HR-Employee-Attrition (1).xlsx](Final%20HR-Employee-Attrition%20%281%29.xlsx) — Raw dataset
- [HR Cleaned Data.jpg](HR%20Cleaned%20Data.jpg) — Visual reference of cleaned dataset structure
- [IBM HR Cleaned Dataset.xlsx](IBM%20HR%20Cleaned%20Dataset.xlsx) — Pivot tables + 15 analytical questions (COUNTIF/COUNTIFS)
- [attrition_analysis_queries.sql](attrition_analysis_queries.sql) — SQL versions of the core analytical questions
- [Dashboard Portfolio.pbix](Dashboard%20Portfolio.pbix) — Interactive 3-page Power BI dashboard
- [Dashboard Page 1.png](Dashboard%20Page%201.png) — Detailed Analysis
- [Dashboard Page 2.png](Dashboard%20Page%202.png) — Attrition Drivers
- [Dashboard Page 3.png](Dashboard%20Page%203.png) — Performance & Career Growth
- [TechCrush_Attrition_Report.pdf](TechCrush_Attrition_Report.pdf) — Full written report (15 charts + findings)
- [TechCrush_Attrition_Group24_Presentation_Final.pptx](TechCrush_Attrition_Group24_Presentation_Final.pptx) — Slide deck version


## Tools used

- **Excel** — data cleaning, pivot tables, COUNTIF/COUNTIFS analysis
- **SQL** — replicating the core questions as queries for a portfolio-ready technical layer
- **Power BI** — DAX measures, 3-page interactive dashboard, custom color palette (navy `#1F4E79` / red `#C00000`)


## Key findings

- Overall attrition rate: **16.1%**
- Employees who work overtime leave at a noticeably higher rate than those who don't
- Job satisfaction and work-life balance ratings are strongly linked to attrition — lower ratings, higher risk
- Certain job roles and departments carry disproportionately higher attrition than others
- Career stagnation (longer time since last promotion) shows up as a risk factor alongside pay

## Dashboard preview

Static previews are in [Dashboard Page 1.png](Dashboard%20Page%201.png), [Dashboard Page 2.png](Dashboard%20Page%202.png), and [Dashboard Page 3.png](Dashboard%20Page%203.png). Open [Dashboard Portfolio.pbix](Dashboard%20Portfolio.pbix) in Power BI Desktop to interact with it directly.

## How to explore this repo

1. Start with the [full report](TechCrush_Attrition_Report.pdf) for the narrative and findings
2. Check the [SQL queries](attrition_analysis_queries.sql) for the technical query layer
3. Open the [cleaned Excel workbook](IBM%20HR%20Cleaned%20Dataset.xlsx) to see the underlying pivot analysis
4. View the dashboard screenshots or open the `.pbix` file for the interactive version

## About this project

I'm Elizabeth Atoyeje — a Physiology graduate transitioning into data analytics, currently interning at Decodelabs. This project was one of my ways of proving I can take a messy dataset all the way to a business-ready insight, using the same tools analysts use on the job every day.

- Portfolio: [https://bit.ly/ElizabethAtoyejePortfolio]
- LinkedIn: [www.linkedin.com/in/atoyeje-elizabeth03]
- Email: atoyejeelizabeth03@gmail.com
