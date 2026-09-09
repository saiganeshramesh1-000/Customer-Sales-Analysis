# 🛒 E-Commerce Sales Analytics — Customer & Product Performance

![Executive Sales Overview](https://github.com/saiganeshramesh1-000/Customer-Sales-Analysis/blob/main/Dashboards/Executive%20Sales%20Overview.png)

> **End-to-end E-Commerce Analytics project** using SQL, Python (Pandas, Matplotlib, Seaborn), and Power BI — built on 5,000 e-commerce orders to uncover what drives revenue, which customers matter most, and where operations can improve.

---

## 🗂️ Table of Contents

- [Project Overview](#-project-overview)
- [Tools & Tech Stack](#-tools-tech-stack)
- [Dataset](#-dataset)
- [Key Findings](#-key-findings)
- [Power BI Dashboards](#-power-bi-dashboards)
- [Python EDA Visuals](#-python-eda-visuals)
- [SQL Analysis](#-sql-analysis)
- [Project Structure](#-project-structure)
- [How to Run](#-how-to-run)
- [Author](#-author)

---

## 📌 Project Overview

Understanding *what* drives e-commerce revenue is only half the picture — understanding *why* is what makes it actionable. This project performs a **full exploratory data analysis** on an e-commerce sales dataset to identify:

- Which product categories, regions, and payment methods drive the most revenue
- Which customers are most valuable, and how loyal the customer base is
- Whether discounting, delivery speed, and ratings actually move the needle on revenue

The project spans three layers: **SQL queries** for structured business questions, **Python EDA** for statistical visualization, and a **3-page Power BI dashboard** for executive-level storytelling.

---

## 🛠️ Tools & Tech Stack

| Layer | Tool |
|---|---|
| Database & Querying | MySQL / PostgreSQL |
| Data Analysis | Python — Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| BI Dashboard | Power BI Desktop |
| Notebook | Jupyter Notebook |
| Version Control | Git & GitHub |

---

## 📂 Dataset

- **source:** [kaggle data](https://www.kaggle.com/datasets/srisyra02/e-commerce-sales-performance-analysis)
- **Rows:** 5,000 orders
- **Columns:** 20 features
- **Unique Customers:** 989
- **Date Range:** Jan 2022 – Sep 2035
- **Key Fields:** order_id, order_date, customer_id, product_category, region, quantity, unit_price, discount, payment_method, delivery_days, customer_rating, revenue, delivery_speed, rating_group
- **Missing Values:** None
- **Duplicates:** None

---

## 🔑 Key Findings

| # | Finding | Value |
|---|---|---|
| 1 | Total Revenue | **$5,109,775.74** |
| 2 | Total Orders | **5,000** |
| 3 | Unique Customers | **989** |
| 4 | Average Order Revenue | **$1,021.96** |
| 5 | Average Customer Rating | **2.97 / 5** |
| 6 | Top Revenue Category | Electronics — **$1.83M** |
| 7 | Highest AOV Category | Beauty — **$1,059.28** |
| 8 | Top Revenue Region | West — **$1.35M** |
| 9 | Top Payment Method | Card — **46.3%** of revenue |
| 10 | Strongest Revenue Correlator | Unit Price (**r = 0.68**) |
| 11 | Discount → Revenue Correlation | **-0.14** (weak negative) |
| 12 | Repeat Customers (>8 orders) | **76 (7.7%)** |
| 13 | Top Customer Lifetime Revenue | **$17,680.69** (Customer 1663) |

---

## 📊 Power BI Dashboards

3-page interactive dashboard covering executive KPIs, product/customer behavior, and operational performance.

### Page 1 — Executive Sales Overview

![Executive Sales Overview](https://github.com/saiganeshramesh1-000/Customer-Sales-Analysis/blob/main/Dashboards/Executive%20Sales%20Overview.png)
Key visuals: Total revenue, orders, unique customers, avg order revenue & rating KPI cards · Revenue by year trend · Revenue by region · Revenue by category · Revenue by payment method (donut) · Revenue by delivery speed

---

### Page 2 — Product & Customer Analysis

![Product & Customer Analysis](https://github.com/saiganeshramesh1-000/Customer-Sales-Analysis/blob/main/Dashboards/Customer%20%26%20Operational%20Insights.png)

Key visuals: Quantity sold by category · Average unit price by category · Average discount by category · Revenue by category · Average order revenue by category · Revenue by region × category (stacked) · Customer rating distribution by category and rating group

---

### Page 3 — Customer & Operational Insights

![Customer & Operational Insights](https://github.com/saiganeshramesh1-000/Customer-Sales-Analysis/blob/main/Dashboards/Product%20%26%20Customer%20Analysis.png)

Key visuals: Average rating group by category · Average delivery days by category · Rating group distribution · Revenue vs. discount (scatter) · Revenue by order weekday · Revenue by delivery days

---

## 📈 Python EDA Visuals

All charts generated in [`Customer_Sales_Analysis.ipynb`](Customer_Sales_Analysis.ipynb)

| # | Chart | What it shows |
|---|---|---|
| 1 | Revenue by Product Category | Electronics leads total revenue, followed by Clothing, Home, Beauty |
| 2 | Revenue by Region | West edges out North, South, and East for top regional revenue |
| 3 | Monthly Revenue Trend | Revenue trend across the full order history, month by month |
| 4 | Annual Revenue Trend | Year-over-year revenue — largely flat with a partial final year |
| 5 | Quantity Sold by Product Category | Electronics moves the most units (7.1K), Beauty the fewest (3.0K) |
| 6 | Average Unit Price by Product Category | Prices are tightly clustered ($304–$315) across all categories |
| 7 | Payment Method Distribution | Card (46.3%), COD (35%), Wallet (18.7%) — pie breakdown |
| 8 | Discount vs Revenue (scatter) | Weak negative relationship — heavier discounts don't lift order value |
| 9 | Customer Ratings by Product Category (heatmap) | Rating group counts (1–5) broken out per category |
| 10 | Delivery Time by Product Category (boxplot) | Delivery time is consistent (~6–6.2 days) across all categories |
| 11 | Customer Rating Distribution by Category (violin) | Ratings center around ~3.0/5 for every category |
| 12 | Monthly Revenue Performance by Year (heatmap) | Seasonality check across months and years |
| 13 | Revenue by Region and Product Category (heatmap) | Cross-tab of where each category earns the most |
| 14 | Revenue Distribution Across Orders (histogram) | Right-skewed order value distribution with a long tail of high-value orders |
| 15 | Top 15 Customers by Revenue | Highest lifetime-value customers, led by Customer 1663 at $17.7K |
| 16 | Customer Purchase Frequency (histogram) | Most customers order 3–6 times; a small tail orders up to 14 times |
| 17 | Average Order Revenue by Product Category | Beauty has the highest AOV despite the lowest volume |
| 18 | Revenue by Delivery Speed | Standard delivery drives the highest total and average revenue |
| 19 | Revenue vs Quantity Sold (scatter) | Confirms quantity as a strong positive revenue driver |
| 20 | Average Discount by Product Category | Discounting is nearly flat (~18%) across all four categories |
| 21 | Average Delivery Time by Region | Delivery time barely varies by region (6.08–6.17 days) |
| 22 | Unique Customers by Region | Customer base is evenly spread across all four regions |
| 23 | Average Order Revenue by Region | West and North slightly outperform South and East per order |
| 24 | Revenue by Payment Method and Product Category (heatmap) | Cross-tab of which payment method dominates in each category |
| 25 | Discount Distribution by Customer Rating (boxplot) | Checks whether discount levels differ by how customers rate their order |
| 26 | Average Order Revenue by Customer Rating | Tests whether higher-rated orders also carry higher revenue |
| 27 | Revenue vs Delivery Time (scatter) | Confirms delivery days have little to no effect on order revenue |

---

## 🗄️ SQL Analysis

**File:** [`SQL.sql`](SQL.sql) | **Database:** MySQL / PostgreSQL

| Query | Business Question |
|---|---|
| Q1 | How many total orders are in the dataset? |
| Q2 | How many unique customers placed orders? |
| Q3 | What is the total revenue generated? |
| Q4 | What is the average order revenue? |
| Q5 | Which product category generates the most revenue? |
| Q6 | Which product category sells the most units? |
| Q7 | Which category has the highest average unit price? |
| Q8 | Which category is discounted the most, on average? |
| Q9 | Which region generates the most revenue? |
| Q10 | Which payment method drives the most revenue and orders? |
| Q11 | Which region has the slowest average delivery time? |
| Q12 | How does revenue break down by region and product category? |
| Q13 | Who are the top 10 customers by total revenue? |
| Q14 | How many orders has each customer placed? |
| Q15 | Which customers have placed more than 8 orders (loyal customers)? |
| Q16 | How does delivery speed (Fast/Standard/Slow) affect revenue? |
| Q17 | How does each order classify into High/Medium/Low value tiers? |
| Q18 | Which product categories outperform the company-wide average order revenue? |
| Q19 | How do customers rank by total revenue (window function)? |

---

## 📁 Project Structure

```
E-Commerce-Sales-Analytics/
│
├── Dashboards/
│   ├── Executive_Sales_Overview.png
│   ├── Product___Customer_Analysis.png
│   └── Customer___Operational_Insights.png
│
├── Customer_Sales_Analysis.ipynb
├── SQL.sql
│
├--Data/
|    |── E-Commerce_Sales_Analytics.csv
├    |── E-Commerce_Sales_Analytics_Cleaned.csv
|
|--python output visuals
│
├── README.md
└── report.md
```

---

## ▶️ How to Run

### Python Notebook
```bash
pip install pandas numpy matplotlib seaborn jupyter
jupyter notebook Customer_Sales_Analysis.ipynb
```

### SQL (MySQL / PostgreSQL)
```sql
-- Load E-Commerce_Sales_Analytics_Cleaned.csv into the ecommerce_sales table, then:
SOURCE SQL.sql;   -- MySQL



## 👤 Author



**Saiganesh** | [GitHub](https://github.com/saiganeshramesh1-000) | [LinkedIn](www.linkedin.com/in/r-saiganesh) | Saiganeshramesh1@gmail.com

---

*Analysis on E-Commerce Sales Analytics dataset (5,000 orders, 989 customers). All figures rounded to 2 decimal places.*
