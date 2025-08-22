
# 📊 SQL Analysis - Customer Shopping Trends

This document contains the SQL queries and their insights used in the **Customer Shopping Trends** project.

---

## 🧠 Objectives

- Analyze customer demographics, spending, and preferences.
- Segment customers by loyalty, subscription, and discount usage.
- Evaluate purchasing patterns by season, size, payment, and category.
- Support Power BI dashboard visualizations.

---

## ✅ Key SQL Queries & Insights

### 1. Total Number of Transactions
```sql
SELECT COUNT(*) AS total_purchases FROM shopping_trends;
```
**🟢 Insight:** 3,900 total purchases recorded.

---

### 2. Customer Age Distribution
```sql
SELECT age, COUNT(*) AS num_customers
FROM shopping_trends
GROUP BY age
ORDER BY age;
```

---

### 3. Gender Breakdown
```sql
SELECT gender, COUNT(*) AS total
FROM shopping_trends
GROUP BY gender;
```

---

### 4. Top Locations by Number of Purchases
```sql
SELECT location, COUNT(*) AS total_purchases
FROM shopping_trends
GROUP BY location
ORDER BY total_purchases DESC
LIMIT 10;
```

---

### 5. Most Purchased Items
```sql
SELECT item_purchased, COUNT(*) AS times_purchased
FROM shopping_trends
GROUP BY item_purchased
ORDER BY times_purchased DESC
LIMIT 10;
```

---

### 6. Revenue by Product Category
```sql
SELECT category, SUM(purchase_amount_usd) AS total_revenue
FROM shopping_trends
GROUP BY category
ORDER BY total_revenue DESC;
```

---

### 7. Average Spending by Size
```sql
SELECT size, ROUND(AVG(purchase_amount_usd), 2) AS avg_amount
FROM shopping_trends
GROUP BY size;
```

---

### 8. Seasonal Spending Analysis
```sql
-- Total Purchases by Season
SELECT season, COUNT(*) AS total_purchases
FROM shopping_trends
GROUP BY season;

-- Average Spend per Season
SELECT season, ROUND(AVG(purchase_amount_usd), 2) AS avg_spend
FROM shopping_trends
GROUP BY season;
```

---

### 9. Subscription Status vs Spending
```sql
SELECT subscription_status, COUNT(*) AS total,
       ROUND(AVG(purchase_amount_usd), 2) AS avg_spent
FROM shopping_trends
GROUP BY subscription_status;
```

---

### 10. Discount/Promo Code Effect
```sql
-- Discount
SELECT discount_applied, COUNT(*) AS total,
       ROUND(AVG(purchase_amount_usd), 2) AS avg_spent
FROM shopping_trends
GROUP BY discount_applied;

-- Promo Code
SELECT promo_code_used, COUNT(*) AS total,
       ROUND(AVG(purchase_amount_usd), 2) AS avg_spent
FROM shopping_trends
GROUP BY promo_code_used;
```

---

### 11. Ratings by Item and Category
```sql
-- By Item
SELECT item_purchased, ROUND(AVG(review_rating), 2) AS avg_rating
FROM shopping_trends
GROUP BY item_purchased
ORDER BY avg_rating DESC
LIMIT 10;

-- By Category
SELECT category, ROUND(AVG(review_rating), 2) AS avg_rating
FROM shopping_trends
GROUP BY category;
```

---

### 12. Loyalty Segmentation
```sql
SELECT
  CASE
    WHEN previous_purchases >= 10 THEN 'High Loyalty'
    WHEN previous_purchases >= 5 THEN 'Mid Loyalty'
    ELSE 'Low Loyalty'
  END AS loyalty_segment,
  COUNT(*) AS customer_count
FROM shopping_trends
GROUP BY loyalty_segment;
```

---

### 13. Frequency of Purchases
```sql
SELECT frequency_of_purchases, COUNT(*) AS customer_count
FROM shopping_trends
GROUP BY frequency_of_purchases;
```

---

### 14. Payment Preferences & Spend
```sql
-- Usage Count
SELECT payment_method, COUNT(*) AS usage_count
FROM shopping_trends
GROUP BY payment_method
ORDER BY usage_count DESC;

-- Average Purchase Amount
SELECT payment_method, ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase
FROM shopping_trends
GROUP BY payment_method
ORDER BY avg_purchase DESC;
```

---
