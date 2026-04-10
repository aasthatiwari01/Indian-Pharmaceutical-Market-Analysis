# Indian-Pharmaceutical-Market-Analysis

Power BI Dashboard | SQL | A-Z Medicine Dataset

Overview:
An end-to-end data analytics project analyzing 13,000+ Indian pharmaceutical products to uncover manufacturer concentration, pricing patterns, and composition trends in the Indian pharma market.
Built using SQL for data extraction and transformation, and Power BI for interactive visualization.

Dashboard Preview;
<img width="1282" height="723" alt="Indian Pharma market- analysis" src="https://github.com/user-attachments/assets/50c83119-64e4-4906-8fe8-a75dc56d7c64" />


--Tools & Technologies:
-MySQL Data cleaning, transformation, and query-based analysis

-Power BI Interactive dashboard and data visualizationExcelInitial data exploration and validation

--Dataset:
Source: A-Z Medicine Dataset of India — Kaggle

Records: 13,000+ pharmaceutical products

Key columns: Drug name, price, manufacturer, pack size, composition, discontinuation status


--SQL Queries Covered:
Top 10 manufacturers by product volume

Average, minimum, and maximum price by manufacturer

Price segmentation (Economy / Mid-Range / Premium / Speciality)

Active vs discontinued drug analysis

Top primary compositions by frequency

Average unit price calculation (price / pack size)

Combination drug vs single-molecule drug split


--Key Findings:
Dr Reddy's Laboratories commands the highest average price at ₹2,243 — nearly 8x the dataset average of ₹270.53

58.91% of drugs fall in the economy segment, confirming India's generics-dominated pharma market

Aceclofenac is the most common primary composition, highlighting anti-inflammatory drug dominance in India


Dashboard Features:
KPI cards — Total medicines, premium medicines, active manufacturers, avg drug price, unique manufacturers

Top 10 manufacturers by product volume (bar chart)

Average price by manufacturer brand (bar chart)

Top primary compositions (treemap)

Price breakdown by manufacturer and composition (decomposition tree)

Price segment distribution (donut chart)

Interactive slicers — price range filter and manufacturer brand filter


Project Structure:
├── README.md
├── dashboard.png              # Dashboard screenshot
├── SQL_Queries.sql            # All SQL queries used
└── IndianPharmaAnalysis.pbix  # Power BI file

About:
This project demonstrates end-to-end analytical skills from raw data sourcing, SQL-based transformation, to business-ready dashboard creation.
