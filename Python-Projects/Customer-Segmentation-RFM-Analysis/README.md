# 🐍 Customer Segmentation & Sales Analysis

> **Python Data Analytics Project | Exploratory Data Analysis & RFM Customer Segmentation**

## 📌 Project Overview

This Python project analyzes customer behavior, transaction patterns, sales trends, and customer segments.

The project uses Exploratory Data Analysis (EDA), data visualization, correlation analysis, and RFM analysis to identify valuable customers and customers who may be at risk of churn.

---

# 🎯 Project Objectives

- Analyze customer demographics.
- Explore customer distribution by age, gender, and city.
- Analyze transaction amount distribution.
- Study monthly sales trends.
- Identify relationships between numerical variables.
- Perform RFM customer segmentation.
- Identify high-value and at-risk customers.
- Generate business insights from customer behavior.

---

# 🛠️ Tools & Technologies

- 🐍 Python
- 📊 Pandas
- 🔢 NumPy
- 📈 Matplotlib
- 📊 Seaborn
- 📓 Jupyter Notebook
- 📐 Statistical Analysis
- 🎯 RFM Analysis

---

# 📊 Exploratory Data Analysis

## 👥 Customer Age Analysis

Most customers fall between approximately 25 and 45 years old.

The customer distribution gradually decreases beyond age 50, indicating a younger customer base.

---

## 🚻 Customer Gender Analysis

The customer distribution is relatively balanced across Male, Female, and Not Disclosed groups.

This indicates that the dataset is not heavily concentrated toward a single gender.

---

## 🏙️ Customer Distribution by City

Jaipur has the highest customer count, with more than 110 customers.

Kolkata and Chennai have comparatively lower customer counts, while cities such as Delhi, Pune, Hyderabad, and Mumbai have moderate representation.

---

# 📈 Sales Analysis

## 💰 Transaction Amount Distribution

The transaction amount distribution is right-skewed.

Most transactions are below ₹1,000, while a smaller number of transactions extend to approximately ₹7,000.

A large concentration of transactions falls between ₹500 and ₹1,300.

---

## 📅 Monthly Sales Trend

The analysis shows an overall upward trend in monthly sales over the five-year period.

Key observations:

- Steady growth from 2020 to 2023.
- Fluctuations around 2024–2025.
- Higher peaks during later periods.
- Possible seasonal or promotional effects.

---

# 🔗 Correlation Analysis

The project includes a correlation heatmap to analyze relationships between numerical variables.

The correlation between **Age** and **NumChildren** is approximately **-0.04**, indicating a very weak negative relationship.

This relationship is not strong enough to be considered statistically meaningful.

---

# 🎯 RFM Customer Segmentation

A major part of this project is **RFM Analysis**.

RFM stands for:

| Metric | Meaning |
|---|---|
| **R — Recency** | How recently a customer purchased |
| **F — Frequency** | How often a customer purchased |
| **M — Monetary** | How much a customer spent |

RFM analysis is used to understand customer purchasing behavior and divide customers into meaningful segments.

---

# 👥 Customer Segments

The analysis identifies seven customer segments:

| Segment | Customers |
|---|---:|
| 🟢 Potential Loyalists | 252 |
| 🔴 At Risk | 207 |
| ⚪ Others | 181 |
| 🔵 Loyal Customers | 122 |
| ⚫ Lost | 105 |
| 🟡 Big Spenders | 98 |
| 🏆 Champions | 35 |

Potential Loyalists are the largest segment, while Champions are the smallest but most valuable segment. :contentReference[oaicite:2]{index=2}

---

# 📊 Customer Segmentation Distribution

The percentage distribution is:

| Segment | Share |
|---|---:|
| Potential Loyalists | 25.2% |
| At Risk | 20.7% |
| Others | 18.1% |
| Loyal Customers | 12.2% |
| Lost | 10.5% |
| Big Spenders | 9.8% |
| Champions | 3.5% |

Potential Loyalists represent the largest share, while At Risk customers represent the second-largest segment. :contentReference[oaicite:3]{index=3}

---

# 💰 Revenue Contribution by Segment

The analysis shows the following approximate revenue contributions:

| Segment | Revenue |
|---|---:|
| At Risk | ₹5.36M |
| Potential Loyalists | ₹5.09M |
| Others | ₹3.40M |
| Loyal Customers | ₹3.30M |
| Big Spenders | ₹2.79M |
| Lost | ₹2.02M |
| Champions | ₹1.10M |

At Risk customers contribute the highest revenue, making customer retention especially important. :contentReference[oaicite:4]{index=4}

---

# 📉 Recency vs Monetary Analysis

The project uses a scatter plot to compare Recency and Monetary values across customer segments.

### Key observations

- 🏆 Champions → Recent buyers with high spending.
- 💙 Loyal Customers → Consistent purchasing behavior.
- 🟢 Potential Loyalists → Good opportunity for conversion.
- 🔴 At Risk → High spending but declining engagement.
- 💰 Big Spenders → High monetary value.
- ⚫ Lost → Low monetary value and low engagement.
- ⚪ Others → Mixed customer behavior.

At Risk customers with high spending represent an important retention opportunity. :contentReference[oaicite:5]{index=5}

---

# 📌 Key Business Insights

### 1. Retention Opportunity

The large **At Risk** segment indicates a significant group of customers who may need re-engagement.

### 2. Growth Opportunity

**Potential Loyalists** are the largest segment and provide an opportunity to increase customer loyalty through targeted engagement.

### 3. High-Value Customers

**Champions** are the most valuable customers based on their combination of recency, frequency, and monetary value.

### 4. Revenue Risk

At Risk customers contribute approximately **₹5.36M**, making retention particularly important. :contentReference[oaicite:6]{index=6}

### 5. Sales Growth

The five-year monthly sales analysis shows an overall upward trend in sales. :contentReference[oaicite:7]{index=7}

---

# 📊 Dashboard-Style KPIs

The project presents key business indicators including:

- 💰 Revenue: approximately ₹20M
- 👥 Unique Customers: approximately 1,000
- 🟢 Potential Loyalists: approximately 250
- 🔴 At Risk Customers: approximately 200

These KPIs highlight strong overall revenue and customer activity while also showing important retention risks. :contentReference[oaicite:8]{index=8}

---

# 🔄 Data Analysis Workflow

```text
Raw Data
   ↓
Data Cleaning
   ↓
Exploratory Data Analysis
   ↓
Statistical Analysis
   ↓
Data Visualization
   ↓
RFM Calculation
   ↓
Customer Segmentation
   ↓
Business Insights
