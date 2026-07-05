# IBM HR Analytics: Employee Attrition Analysis

A full end-to-end analysis of employee attrition at a fictional company, using the IBM HR Analytics dataset (1,470 employees). Built as my capstone for the TechCrush Data Analytics Bootcamp (Cohort 6) — from raw data cleaning to an interactive Power BI dashboard.

**Headline finding:** Employees are leaving at a **16.1% attrition rate**, and it isn't random — overtime, low job satisfaction, and stalled career growth show up again and again as the strongest drivers.

## The Business Question

This analysis was framed around a fictional leadership audience — Head of People Analytics and CBO — trying to answer one question: **why are we losing people, and what can we do about it?** Every chart, query, and slide in this repo was built to answer that, not just describe the data.

## Repository Structure

hr-attrition-analytics/
│
├── README.md
│
├── data/
│   ├── Final HR-Employee-Attrition (1).xlsx      # Raw dataset
│   └── HR Cleaned Data.jpg                       # Visual reference of cleaned structure
│
├── excel/
│   └── IBM HR Cleaned Dataset.xlsx                # Pivot tables + 15 analytical questions (COUNTIF/COUNTIFS)
│
├── sql/
│   └── attrition_analysis_queries.sql             # SQL versions of the core analytical questions
│
├── powerbi/
│   ├── Dashboard Portfolio.pbix                   # Interactive 3-page Power BI dashboard
│   ├── Dashboard Page 1.ipg                       # Detailed Analysis
│   ├── Dashboard Page 2.jpg                       # Attrition Drivers
│   └── Dashboard Page 3.jpg                       # Performance & Career Growth
│
└── report/
├── TechCrush_Attrition_Report.pdf              # Full written report (15 charts + findings)
└── TechCrush_Attrition_Group24_Presentation_Final.pptx   # Slide deck version

## Tools used

- **Excel** — data cleaning, pivot tables, COUNTIF/COUNTIFS analysis
- **SQL** — replicating the core questions as queries for a portfolio-ready technical layer
- **Power BI** — DAX measures, 3-page interactive dashboard, custom color palette (navy `#1F4E79` / red `#C00000`)
- **Python** — chart generation for the written report

## Key findings

- Overall attrition rate: **16.1%**
- Employees who work overtime leave at a noticeably higher rate than those who don't
- Job satisfaction and work-life balance ratings are strongly linked to attrition — lower ratings, higher risk
- Certain job roles and departments carry disproportionately higher attrition than others
- Career stagnation (longer time since last promotion) shows up as a risk factor alongside pay

## Dashboard preview

Static previews are in `powerbi/Dashboard Page 1.png` – `Dashboard Page 3.png`. Open `powerbi/Dashboard Portfolio.pbix` in Power BI Desktop to interact with it directly.

## How to explore this repo

1. Start with `report/TechCrush_Attrition_Report.pdf` for the full narrative and findings
2. Check `sql/attrition_analysis_queries.sql` for the technical query layer
3. Open `excel/IBM HR Cleaned Dataset.xlsx` to see the underlying pivot analysis
4. View `powerbi/` for the interactive dashboard and screenshots

## About this project

I'm Elizabeth Atoyeje — a Physiology graduate transitioning into data analytics, currently interning at Decodelabs. This project was one of my ways of proving I can take a messy dataset all the way to a business-ready insight, using the same tools analysts use on the job every day.

- Portfolio: [https://bit.ly/ElizabethAtoyejePortfolio]
- LinkedIn: [www.linkedin.com/in/atoyeje-elizabeth03]
- Email: atoyejeelizabeth03@gmail.com
