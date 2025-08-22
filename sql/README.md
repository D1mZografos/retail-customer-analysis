
# 📁 SQL Analysis - Customer Shopping Trends

## 🎯 Purpose

This folder contains all SQL-related files used to analyze the **Customer Shopping Trends** dataset.  
The analysis aimed to derive valuable business insights related to customer behavior, product performance, and purchasing patterns by running SQL queries on structured transactional data.

---

## 📂 Folder Contents

```
sql/
├── scripts/               # Scripts for database, schema and queries
├── images/                # Query result screenshots for README visualizations
└── README.md              # This file
```

---

## 🔑 Key SQL Queries

Here are some of the main queries executed in this analysis:

### 1. 🧮 Total Purchases
```sql
SELECT COUNT(*) AS total_purchases
FROM shopping_trends;
```

### 2. 👤 Customers by Age
```sql
SELECT age, COUNT(DISTINCT customer_id) AS num_customers
FROM shopping_trends
GROUP BY age
ORDER BY age;
```

### 3. 👕 Top Purchased Items
```sql
SELECT item_purchased, COUNT(*) AS times_purchased
FROM shopping_trends
GROUP BY item_purchased
ORDER BY times_purchased DESC
LIMIT 10;
```

### 4. 💰 Total Revenue by Category
```sql
SELECT category, SUM(purchase_amount_usd) AS total_revenue
FROM shopping_trends
GROUP BY category
ORDER BY total_revenue DESC;
```

### 5. 🌱 Purchases by Season
```sql
SELECT season, COUNT(*) AS total_purchases
FROM shopping_trends
GROUP BY season
ORDER BY total_purchases DESC;
```

---

## 📸 Visuals

Query results are visualized in the main [`README.md`](../README.md) file using screenshots stored under [`sql/images/`](images/).

---

## 📌 Next Steps

- Connect to Power BI for dashboarding

