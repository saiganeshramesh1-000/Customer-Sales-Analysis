# E-Commerce Sales Analytics — Customer & Product Performance Report

**Project Type:** End-to-End E-Commerce Sales Analysis
**Dataset:** E-Commerce Sales Analytics (5,000 orders · 989 unique customers · 20 features)
**Tools:** MySQL/PostgreSQL (SQL) · Python (Pandas, NumPy, Matplotlib/Seaborn) · Power BI
**Files:** `SQL.sql` · `Customer_Sales_Analysis.ipynb` · `E-Commerce_Sales_Analytics_Cleaned.csv` · 3-page Power BI dashboard

---

## 1. Executive Summary

This report analyzes 5,000 e-commerce orders placed by 989 unique customers, generating **$5.11M** in total revenue at an average order value of **$1,021.96**. Through SQL-based querying, Python EDA, and a 3-page Power BI dashboard, this project surfaces the product, regional, and customer patterns that drive revenue and repeat purchasing.

**Three core themes:**
1. **Electronics leads, Beauty converts best** — Electronics drives the most total revenue, but Beauty has the highest average order value despite the lowest volume.
2. **Regional demand is balanced, not concentrated** — revenue is spread evenly across West, North, South, and East (no region deviates more than ~9% from the average).
3. **Discounting isn't buying loyalty** — heavier discounts show a weak *negative* correlation with revenue, while unit price and quantity are the real revenue drivers.

---

## 2. Dataset Overview

| Attribute | Detail |
|---|---|
| Total Orders | 5,000 |
| Unique Customers | 989 |
| Total Revenue | **$5,109,775.74** |
| Average Order Revenue | **$1,021.96** |
| Average Customer Rating | **2.97 / 5** |
| Date Range | Jan 2022 – Sep 2035 |
| Product Categories | 4 (Electronics, Clothing, Home, Beauty) |
| Regions | 4 (West, North, South, East) |
| Payment Methods | 3 (Card, COD, Wallet) |
| Missing Values | None |
| Duplicate Records | None |

---

## 3. Executive Sales Overview Dashboard

![Executive Sales Overview](Dashboards/Executive%20Sales%20Overview.png)

**Key KPIs:** 5.11M total revenue · 5,000 total orders · 989 unique customers · $1.02K average order revenue · 2.97 average customer rating

This page answers the top-line business questions at a glance:
- Which category earns the most? → **Electronics ($1.8M)**
- Which region sells the most? → **West ($1.35M)**
- How is revenue split by payment method? → **Card leads at 46.31%**
- How does delivery speed affect volume? → **Standard and Slow delivery each carry ~1.9M in revenue, Fast only 1.3M**
- Is revenue trending up or down? → **Relatively flat year-over-year (~$0.35–0.41M/year), with a partial final year**

---

## 4. Product Category Analysis

### 4.1 Revenue & Volume by Category

| Product Category | Total Revenue | Units Sold | Avg Unit Price | Avg Discount | Avg Order Revenue |
|---|---|---|---|---|---|
| Electronics | **$1,829,899.22** | 7,109 | $314.90 | 17.7% | $1,029.77 |
| Clothing | $1,531,931.72 | 6,171 | $304.01 | 18.4% | $1,000.61 |
| Home | $982,083.92 | 3,949 | $306.26 | 17.8% | $1,013.50 |
| Beauty | $765,860.88 | 2,995 | $304.71 | 18.1% | **$1,059.28** ← Highest |

Electronics generates the most total revenue on the back of the highest sales volume, but **Beauty has the highest average order value** despite selling the fewest units — each Beauty order simply carries more value per basket. Average unit price and average discount are nearly flat across categories (~$305–315, ~18%), meaning **category-level revenue differences are driven by volume, not pricing or promotion strategy**.

### 4.2 Order Value Segmentation

| Order Value Tier | Order Count | Share of Orders |
|---|---|---|
| High Value (≥ $1,500) | 1,262 | **25.2%** |
| Medium Value ($750–$1,499) | 1,345 | 26.9% |
| Low Value (< $750) | 2,393 | 47.9% |

Nearly half of all orders fall below $750, while a quarter clear the $1,500 high-value threshold — a healthy long tail rather than a small number of outliers propping up revenue.

### 4.3 Categories Outperforming the Average Order Value

Company-wide average order revenue is **$1,021.96**. Only **Electronics** and **Beauty** beat this average — Clothing and Home both trail it, despite Clothing being the #2 revenue category by volume.

---

## 5. Product & Customer Analysis Dashboard

![Product & Customer Analysis](Dashboards/Product%20%26%20Customer%20Analysis.png)
**Key panels on this page:**
- Quantity sold by category (Electronics 7.1K → Beauty 3.0K)
- Average unit price by category (all four within a $304–$315 band)
- Revenue by region × category (West and North each contribute the most across every category)
- Customer rating distribution by category and rating group

### 5.1 Regional × Category Breakdown

Revenue is broadly consistent across regions for every category — no single region dominates a specific product line. West and North each carry slightly more Electronics and Clothing revenue than South and East, but the gap between regions within any category is under 15%.

### 5.2 Ratings by Category

| Product Category | Avg Rating |
|---|---|
| Beauty | **3.01** |
| Clothing | 3.01 |
| Electronics | 2.95 |
| Home | 2.94 |

Ratings cluster tightly around **~3.0 / 5** across all categories — no category is a standout satisfaction risk or winner. Across the full order base, ratings skew mid-low: rating groups 2 and 4 are the most common (1,419 and 1,337 orders respectively), while the extremes (1★ and 5★) are the rarest (579 and 559 orders).

---

## 6. Regional Performance

| Region | Total Revenue | Avg Delivery Days |
|---|---|---|
| West | **$1,345,582.16** | 6.08 |
| North | $1,281,508.45 | 6.12 |
| South | $1,246,640.90 | 6.17 |
| East | $1,236,044.23 | 6.10 |

Revenue is well-balanced across all four regions — West leads by roughly 9% over the lowest-performing region (East), and average delivery time barely varies (6.08–6.17 days). **Delivery speed is not a regional differentiator** — the spread across regions is under 6 hours of average delivery time.

---

## 7. Customer & Operational Insights Dashboard

![Customer & Operational Insights](Dashboards/Customer%20%26%20Operational%20Insights.png)
**Key panels on this page:**
- Average rating group and average delivery days by category
- Rating group distribution (1–5)
- Revenue vs. discount, order weekday, and delivery days scatter/trend views

### 7.1 Discount vs. Revenue

Discount and revenue show a **weak negative correlation (r ≈ -0.14)** — heavier discounting does not translate into proportionally higher order revenue in this dataset. Combined with the near-identical average discount rates across categories (~18%), this suggests **discounting is applied fairly uniformly rather than as a targeted revenue lever**.

### 7.2 Revenue by Weekday

| Weekday | Total Revenue |
|---|---|
| Saturday | **$758,305.90** ← Highest |
| Tuesday | $742,856.04 |
| Friday | $730,978.26 |
| Monday | $729,466.69 |
| Wednesday | $727,338.13 |
| Sunday | $726,501.79 |
| Thursday | **$694,328.93** ← Lowest |

Weekday revenue is remarkably flat (a ~9% spread top to bottom), with **Saturday as the strongest day** and **Thursday consistently the weakest** — a mild but real weekly dip worth checking against fulfillment or marketing cadence.

### 7.3 Delivery Speed & Revenue

| Delivery Speed | Orders | Total Revenue | Avg Order Revenue |
|---|---|---|---|
| Standard (4–7 days) | 1,843 | $1,927,132.51 | **$1,045.65** ← Highest |
| Slow (8+ days) | 1,883 | $1,915,651.83 | $1,017.34 |
| Fast (1–3 days) | 1,274 | $1,266,991.40 | $994.50 |

Counterintuitively, **Standard delivery orders carry the highest average value**, not Fast delivery — customers aren't paying a premium-order behavior for speed in this dataset, and Fast delivery is also the least-used option by order count.

---

## 8. Payment Method Analysis

| Payment Method | Total Revenue | Orders | Share of Revenue |
|---|---|---|---|
| Card | **$2,366,248.20** | 2,270 | 46.31% |
| COD | $1,788,408.44 | 1,774 | 35.00% |
| Wallet | $955,119.10 | 956 | 18.69% |

Card is the dominant payment method by both revenue and order count, followed by Cash on Delivery. **Wallet adoption is the lowest of the three** — a potential opportunity area if digital-wallet incentives are a business priority.

---

## 9. Customer Analysis

### 9.1 Purchase Frequency

| Metric | Value |
|---|---|
| Unique Customers | 989 |
| Avg Orders per Customer | 5.06 |
| Median Orders per Customer | 5 |
| Max Orders (Single Customer) | 14 |
| Customers with > 8 Orders | **76 (7.7%)** |

### 9.2 Top 10 Customers by Revenue

| Rank | Customer ID | Total Revenue |
|---|---|---|
| 1 | 1663 | $17,680.69 |
| 2 | 1955 | $16,265.15 |
| 3 | 1675 | $15,036.46 |
| 4 | 1276 | $15,023.71 |
| 5 | 1647 | $14,894.97 |
| 6 | 1804 | $14,330.98 |
| 7 | 1193 | $14,151.65 |
| 8 | 1836 | $14,110.78 |
| 9 | 1957 | $13,956.95 |
| 10 | 1735 | $13,146.25 |

The top 10 customers alone contribute roughly **$148K (2.9%)** of total revenue — spend is not dangerously concentrated in a tiny VIP segment, but this group is a natural target for a loyalty or retention program.

---

## 10. Correlation Analysis

Correlation of numeric features with `revenue`:

| Rank | Feature | Correlation | Insight |
|---|---|---|---|
| 1 | Unit Price | **+0.68** | Strongest positive driver of order revenue |
| 2 | Quantity | **+0.62** | Basket size is the second-strongest driver |
| 3 | Customer Rating | +0.01 | Essentially no relationship with order value |
| 4 | Delivery Days | +0.01 | No meaningful relationship with order value |
| 5 | Discount | **-0.14** | Mild negative relationship — discounting slightly *reduces* average order value |

**Revenue is a pricing-and-basket-size story, not a satisfaction or logistics story** — unit price and quantity explain far more of the variation in order revenue than rating or delivery performance.

---

## 11. Strategic Recommendations

### 🔴 High Priority

1. **Double down on Electronics and Beauty** — Electronics drives volume, Beauty drives basket value; a bundling strategy pairing the two could lift average order value across the board.
2. **Re-evaluate blanket ~18% discounting** — the weak negative correlation with revenue suggests discounts aren't earning their keep; test targeted, segment-specific discounting instead of a flat rate.
3. **Investigate the Thursday revenue dip** — a consistent ~9% shortfall versus the weekly average is worth checking against marketing send schedules or fulfillment capacity.

### 🟡 Medium Priority

4. **Grow Wallet payment adoption** — Wallet trails Card and COD by a wide margin; incentives (cashback, faster checkout) could shift volume toward a lower-friction payment rail.
5. **Build a loyalty tier for the top ~7.7% of customers** (>8 orders) — this cohort already demonstrates repeat-purchase behavior and is the cheapest segment to retain further.
6. **Audit Fast delivery economics** — Fast orders have both the lowest volume and the lowest average order value; confirm whether the premium delivery option is priced and marketed effectively.

### 🟢 Monitor

7. **Category ratings sitting at ~3.0/5 across the board** — no category is in crisis, but there's clear room to move satisfaction upward; a lightweight post-purchase survey could identify a common friction point.
8. **Regional balance** — currently healthy (West leads by only ~9%), but worth re-checking quarterly to catch any region falling behind on delivery time or revenue.

---

## 12. Summary Statistics

| Metric | Value |
|---|---|
| Total Orders | 5,000 |
| Unique Customers | 989 |
| Total Revenue | **$5,109,775.74** |
| Average Order Revenue | $1,021.96 |
| Average Customer Rating | 2.97 / 5 |
| Top Revenue Category | Electronics ($1.83M) |
| Highest AOV Category | Beauty ($1,059.28) |
| Top Revenue Region | West ($1.35M) |
| Top Payment Method | Card (46.31% of revenue) |
| Highest-Value Delivery Speed | Standard, $1,045.65 avg order |
| Best Revenue Weekday | Saturday ($758.3K) |
| Weakest Revenue Weekday | Thursday ($694.3K) |
| Strongest Revenue Correlator | Unit Price (r = 0.68) |
| Discount–Revenue Correlation | -0.14 |
| Customers with >8 Orders | 76 (7.7%) |
| Top Customer Lifetime Revenue | $17,680.69 (Customer 1663) |

---

## 13. Project Files

| File | Description |
|---|---|
| `Customer_Sales_Analysis.ipynb` | Python EDA notebook |
| `SQL.sql` | SQL — 20+ business questions (revenue, category, region, RFM-style customer ranking) |
| `E-Commerce_Sales_Analytics.csv` | Raw dataset |
| `E-Commerce_Sales_Analytics_Cleaned.csv` | Cleaned dataset used for analysis (5,000 rows × 20 columns, no nulls/duplicates) |
| `report.md` | This detailed analysis report |
| `Dashboards/Executive_Sales_Overview.png` | Power BI — Executive Sales Overview |
| `Dashboards/Product___Customer_Analysis.png` | Power BI — Product & Customer Analysis |
| `Dashboards/Customer___Operational_Insights.png` | Power BI — Customer & Operational Insights |

---

*Analysis on E-Commerce Sales Analytics dataset (5,000 orders, 989 customers). All figures rounded to 2 decimal places.*
