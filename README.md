# 📊 Superstore Sales Analysis

## 1. Project Overview

This project analyzes a retail superstore's sales data 
to uncover insights about sales performance, product 
profitability, regional trends, customer behavior, 
and the impact of discounts on profit.

The goal is to provide **data-driven business recommendations** 
to help the company improve revenue, reduce losses, 
and optimize discount strategy.

**This is an end-to-end data analysis project** using:
- Python for data cleaning and exploratory data analysis
- SQL for structured querying
- Power BI for interactive dashboard visualization

---

## 2. Dataset

| Item | Detail |
|------|--------|
| Source | [Kaggle — Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) |
| Records | ~9,994 |
| Columns | 21 |
| Time Period | 2014 — 2017 |

**Key columns used:**
- Order Date, Ship Date, Ship Mode
- Customer ID, Customer Name, Segment
- Country, State, City, Region
- Product ID, Category, Sub-Category
- Sales, Quantity, Discount, Profit

---

## 3. Tools Used

| Tool | Purpose |
|------|---------|
| **Python** | Data cleaning, EDA, visualization |
| **Pandas / NumPy** | Data manipulation |
| **Matplotlib / Seaborn** | Charts and plots |
| **SQL** | Data querying |
| **Power BI** | Interactive dashboard |
| **Jupyter Notebook** | Analysis environment |
| **Git / GitHub** | Version control |

---

## 4. Project Structure

```
superstore-sales-analysis/
│
├── data/
│   ├── raw/
│   │   └── superstore.csv
│   └── processed/
│       └── superstore_cleaned.csv
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_sales_performance.ipynb
│   ├── 03_product_analysis.ipynb
│   ├── 04_regional_analysis.ipynb
│   ├── 05_customer_analysis.ipynb
│   └── 06_discount_profitability.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── dashboard_preview.gif
│
├── images/
│   └── (all chart images)
│
├── reports/
│   └── tables/
│       └── (all CSV summary tables)
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## 5. Analysis Workflow

```
Step 1 → Data Cleaning
         Handle missing values, duplicates,
         convert data types, create new columns

Step 2 → Sales Performance Analysis
         KPIs, yearly/monthly/quarterly trends,
         seasonality patterns

Step 3 → Product Analysis
         Category & sub-category performance,
         top/bottom products, loss-making products

Step 4 → Regional Analysis
         Region/state/city performance,
         loss-making states, geographic patterns

Step 5 → Customer Analysis
         Segment performance, top customers,
         order behavior, Pareto analysis

Step 6 → Discount & Profitability Analysis
         Discount impact, discount bands,
         category/region/segment discount patterns

Step 7 → SQL Queries
         Structured queries for key business questions

Step 8 → Dashboard
         Interactive Power BI dashboard
```

---

## 6. Key Findings

### 📈 Sales Performance
- (your insight here)
- (your insight here)

### 📦 Product Analysis
- (your insight here)
- (your insight here)

### 🌍 Regional Analysis
- (your insight here)
- (your insight here)

### 👥 Customer Analysis
- (your insight here)
- (your insight here)

### 💰 Discount & Profitability
- (your insight here)
- (your insight here)

---

## 7. Business Recommendations

Based on the analysis, the following actions are recommended:

1. **(your recommendation)**

2. **(your recommendation)**

3. **(your recommendation)**

4. **(your recommendation)**

5. **(your recommendation)**

---

## 8. Dashboard Preview

![Dashboard Preview](dashboard/dashboard_preview.gif)

> Interactive Power BI dashboard with 4 pages:
> Executive Overview, Product Performance, 
> Regional Analysis, and Discount Analysis.

---

## 9. SQL Queries

Key SQL queries are available in `sql/analysis_queries.sql`.

Example queries include:
- Total sales, profit, and orders
- Sales and profit by year and month
- Category and sub-category performance
- Loss-making states and products
- Discount band profitability analysis

---

## 10. How to Run

```bash
# Clone the repository
git clone https://github.com/toilakhanh123123/superstore-sales-analysis.git

# Navigate to project folder
cd superstore-sales-analysis

# Install dependencies
pip install -r requirements.txt

# Open Jupyter Notebook
jupyter notebook
```

---

## 11. What I Learned

This project helped me practice and demonstrate:

- **Data Cleaning**: handling missing values, duplicates, 
  data type conversion
- **Exploratory Data Analysis**: asking business questions 
  and answering them with data
- **Data Visualization**: creating meaningful charts 
  that communicate insights clearly
- **SQL**: writing structured queries to extract 
  business metrics
- **Dashboard Design**: building interactive dashboards 
  for business stakeholders
- **Business Thinking**: translating data findings 
  into actionable recommendations

---

## 12. Author

**Your Name**

- GitHub: [toilakhanh123123](https://github.com/toilakhanh123123)
- LinkedIn: (your link — optional)
- Email: (your email — optional)
