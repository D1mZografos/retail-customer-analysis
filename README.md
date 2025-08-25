# 🛍️ Customer Shopping Trends - Data Analytics Project

## 🔍 Overview

This project analyzes customer shopping behavior based on a dataset of 3,900 retail transactions. The dataset captures customer demographics, product details, review ratings, purchase patterns, and promotional data.  
The aim is to explore trends using **SQL** and present insights through **Power BI dashboards** to support better retail decisions.

---

## 📦 Data Source

All data is sourced from **Kaggle**:  
🔗 [Customer Shopping Trends Dataset](https://www.kaggle.com/datasets/whenamancodes/customer-shopping-dataset)

---

## 🧾 Dataset Columns

| Column Name             | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `customer_id`           | Unique identifier for each customer                                         |
| `age`                   | Age of the customer                                                         |
| `gender`                | Gender (Male/Female)                                                        |
| `item_purchased`        | Specific item purchased                                                     |
| `category`              | Category of the item (e.g., Clothing, Accessories)                          |
| `purchase_amount_usd`   | Amount spent in USD                                                         |
| `location`              | Location of the purchase                                                    |
| `size`                  | Size of the item (S, M, L, XL)                                              |
| `color`                 | Color of the item                                                           |
| `season`                | Season when purchase was made (Winter, Spring, etc.)                        |
| `review_rating`         | Rating provided by the customer (1.0 to 5.0)                                |
| `subscription_status`   | Whether the customer has a subscription (Yes/No)                            |
| `shipping_type`         | Type of shipping selected                                                   |
| `discount_applied`      | If a discount was applied (Yes/No)                                          |
| `promo_code_used`       | If a promo code was used (Yes/No)                                           |
| `previous_purchases`    | Number of prior purchases by the customer                                   |
| `payment_method`        | Preferred payment method (e.g., Credit Card, PayPal)                        |
| `frequency_of_purchases`| How often the customer shops (e.g., Monthly, Annually)                      |

---

## 🎯 Business Objective

Retailers often collect customer transaction data but struggle to turn it into meaningful insights.

This project aims to:
- Identify high-performing products and categories
- Analyze demographic-driven purchasing behavior
- Understand the impact of promos, discounts, and subscriptions
- Segment customers based on frequency and loyalty

✅ **Outcome**: Inform product strategy, promotional planning, and customer retention efforts.

---

## 🧰 Tools Used

| Tool       | Purpose                                  |
|------------|------------------------------------------|
| **SQL**    | Data cleaning, aggregation, trend analysis |
| **Power BI** | Dashboard creation, interactive visual exploration |

---

## 📊 Analysis Components

### 1. 🔍 SQL Analysis

Using SQL, we extracted key business metrics including:
- Most purchased items and revenue-generating categories
- Demographics by age, gender, and location
- Seasonal and size-based trends
- Subscription vs. non-subscription spending
- Discount/promo code effectiveness
- Customer loyalty segmentation
- Average rating by item and category
- Payment behavior

📁 See [`sql/README.md`](sql/README.md) for query details and screenshots.

---

### 2. 📊 Power BI Dashboards

The Power BI report includes:
- Slicers by gender, category, and season
- Interactive charts: top items, category-wise revenue, review scores
- Customer segments by loyalty and purchase frequency
- Insights into promo and discount behaviors

📁 See [`powerbi/README.md`](powerbi/README.md) for dashboard explanation.

---

📌 *This project is part of a professional data portfolio and showcases end-to-end data analysis using SQL and Power BI.*
