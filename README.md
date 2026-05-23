# Customer Support Operations Analytics
### Python + SQL | Portfolio Project

**[LinkedIn](https://linkedin.com/in/neesha-p-231746244/) | [GitHub](https://github.com/Neesha29295/my_projects)**

---

## Project Overview

This project analyses customer support ticket data to identify operational trends, ticket distribution patterns, customer satisfaction insights, and support workload behaviour using SQL and Python.

The goal is to simulate a real-world support analytics workflow combining:
- SQL-based business analysis
- Python-based data cleaning and EDA
- Visualisation and operational KPI reporting

---

## Business Problem

Customer support teams handle thousands of tickets across multiple products, priorities, and issue categories. Without proper analytics, organisations may struggle to identify:

- Operational backlog and SLA risks
- Customer dissatisfaction trends
- High workload categories
- Product-specific support issues
- Ticket growth patterns

This project uncovers operational insights from customer support ticket data to support better business decisions and service improvement strategies.

---

## Dataset Information

| Field | Details |
|---|---|
| Source | Kaggle |
| Dataset | Customer Support Ticket Dataset |
| Total Records | 8,469 |
| Domain | Customer Support / IT Operations Analytics |

---

## Tools & Technologies Used

| Tool | Purpose |
|---|---|
| MySQL | SQL Analysis |
| Python | Data Cleaning & EDA |
| Pandas | Data Manipulation |
| Matplotlib | Visualisation |
| Seaborn | Advanced Visualisation |
| Jupyter Notebook | Analysis Environment |
| VS Code | Development Environment |

---

## Project Workflow

```
Raw CSV Dataset
      ↓
Python Data Cleaning
      ↓
Data Validation & Preprocessing
      ↓
MySQL Data Import
      ↓
SQL Business Analysis
      ↓
Python Exploratory Data Analysis
      ↓
Visualisation & Business Insights
```

---

## SQL Analysis

### Basic SQL Analysis
- Total ticket count analysis
- Ticket priority distribution
- Ticket status analysis
- Ticket type analysis
- Customer satisfaction analysis
- Product-wise support analysis

### Advanced SQL Analysis
- Priority ranking using RANK() window function
- Product issue ranking using DENSE_RANK()
- Running total analysis using SUM() OVER()
- Month-over-month ticket growth using LAG()
- Customer satisfaction segmentation using CTE + CASE
- Priority-wise resolution rate using CASE statements

---

## Python Analysis

### Data Cleaning
- Date parsing and datetime conversion
- Duplicate handling
- Missing value validation
- Datatype conversion

### Feature Engineering
- Created Month column from date
- Created Day Name column
- Created Year column

### Exploratory Data Analysis
- Ticket distribution analysis
- Customer demographic analysis
- Priority analysis
- Satisfaction analysis
- Product-wise support trends
- Monthly ticket trends

### Visualisations
- Ticket Priority Distribution — Bar Chart
- Ticket Status Distribution — Bar Chart
- Monthly Ticket Trends — Line Chart
- Satisfaction vs Priority Analysis — Bar Chart

---

## Key Business Insights

**Insight 1 — Ticket Backlog**
> Open and Pending Customer Response tickets together contributed more than 65% of overall ticket volume, indicating operational backlog and customer dependency delays.

**Insight 2 — Workload Distribution**
> Medium and High priority tickets represented the majority of operational workload, highlighting the importance of prioritisation strategies.

**Insight 3 — Customer Satisfaction**
> Higher priority tickets showed relatively lower customer satisfaction scores, indicating the need for faster escalation and resolution mechanisms.

**Insight 4 — Product Support Trends**
> Certain products consistently generated higher support ticket volumes, indicating possible product quality or onboarding improvement opportunities.

**Insight 5 — Operational Growth Trends**
> Month-over-month ticket growth analysis revealed fluctuations in support demand and operational workload patterns.

---

## SQL Concepts Used

| Concept | Usage |
|---|---|
| GROUP BY | Aggregation Analysis |
| ORDER BY | Sorting |
| CASE | Business Categorisation |
| CTE (WITH clause) | Customer Segmentation |
| RANK() | Priority Ranking |
| DENSE_RANK() | Product Ranking |
| LAG() | Month-over-Month Growth |
| SUM() OVER() | Running Total Analysis |
| Subqueries | KPI Calculations |

---

## Python Concepts Used

| Concept | Usage |
|---|---|
| Pandas | Data Manipulation |
| Datetime Handling | Time-based Analysis |
| Feature Engineering | Derived Columns |
| EDA | Data Exploration |
| Matplotlib | Basic Visualisation |
| Seaborn | Advanced Charts |

---

## Project Structure

```
customer-support-operations-analytics/
│
├── dataset/
│   └── cleaned_customer_support_tickets.csv
    └── customer_support_tickets_raw.csv
├── screenshots/
    └── monthly_trend.png
    └── priority_distribution.png
    └── satisfaction_by_priority.png
    └── ticket_status.png
├── sql_queries.sql
├── analysis.ipynb
└── README.md
```

---

## Future Enhancements
- Build interactive Power BI dashboard
- Add SLA breach prediction using Machine Learning
- Automate reporting workflows
- Connect MySQL database directly to Power BI
- Create Streamlit dashboard for live monitoring

---

## Conclusion

This project demonstrates an end-to-end analytics workflow involving SQL analysis, Python-based data cleaning, exploratory data analysis, and business insight generation for customer support operations. The project simulates real-world operational analytics workflows commonly used in support and product-based organisations.

---

## Author
**Neesha Pramod**
[LinkedIn](https://linkedin.com/in/neesha-p-231746244/) | [GitHub](https://github.com/Neesha29295/my_projects)