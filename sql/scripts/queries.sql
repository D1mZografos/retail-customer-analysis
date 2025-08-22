# 1. Dataset Exploration

-- Data preview
SELECT * FROM customer_shopping_trends
LIMIT 10;

-- Count total transactions
SELECT COUNT(*) AS total_purchases
FROM customer_shopping_trends;

# 2. Customer Demographics

-- Age distribution
SELECT age, COUNT(*) AS num_customers
FROM customer_shopping_trends
GROUP BY age
ORDER BY age;

-- Gender breakdown
SELECT gender, COUNT(*) AS total
FROM customer_shopping_trends
GROUP BY gender;

-- Location purchases
SELECT location, COUNT(*) AS total_purchases
FROM customer_shopping_trends
GROUP BY location
ORDER BY total_purchases DESC
LIMIT 10;

# 3. Product & Sales Insights

-- Top 10 most purchased items
SELECT item_purchased, COUNT(*) AS times_purchased
FROM customer_shopping_trends
GROUP BY item_purchased
ORDER BY times_purchased DESC
LIMIT 10;

-- Total revenue by category
SELECT category, SUM(purchase_amount_usd) AS total_revenue
FROM customer_shopping_trends
GROUP BY category
ORDER BY total_revenue DESC;

-- Average purchase amount by size
SELECT size, ROUND(AVG(purchase_amount_usd), 2) AS avg_amount
FROM customer_shopping_trends
GROUP BY size;

# 4. Seasonal Trends

-- Purchases by season
SELECT season, COUNT(*) AS total_purchases
FROM customer_shopping_trends
GROUP BY season
ORDER BY total_purchases DESC;

-- Average spend by season
SELECT season, ROUND(AVG(purchase_amount_usd), 2) AS avg_spend
FROM customer_shopping_trends
GROUP BY season;

# 5. Subscription, Discount & Promo Analysis

-- Subscription status impact
SELECT subscription_status, COUNT(*) AS total, AVG(purchase_amount_usd) AS avg_spent
FROM customer_shopping_trends
GROUP BY subscription_status;

-- Discount impact
SELECT discount_applied, COUNT(*) AS total, AVG(purchase_amount_usd) AS avg_spent
FROM customer_shopping_trends
GROUP BY discount_applied;

-- Promo code usage impact
SELECT promo_code_used, COUNT(*) AS total, AVG(purchase_amount_usd) AS avg_spent
FROM customer_shopping_trends
GROUP BY promo_code_used;

# 6. Review & Rating Analysis

-- Average rating by item
SELECT item_purchased, ROUND(AVG(review_rating), 2) AS avg_rating
FROM customer_shopping_trends
GROUP BY item_purchased
ORDER BY avg_rating DESC
LIMIT 10;

-- Ratings by category
SELECT category, ROUND(AVG(review_rating), 2) AS avg_rating
FROM customer_shopping_trends
GROUP BY category
ORDER BY avg_rating DESC;

# 7. Customer Loyalty

-- Previous purchases
SELECT 
  CASE 
    WHEN previous_purchases = 0 THEN 'First-time'
    WHEN previous_purchases BETWEEN 1 AND 3 THEN 'Low Loyalty'
    WHEN previous_purchases BETWEEN 4 AND 9 THEN 'Mid Loyalty'
    ELSE 'High Loyalty'
  END AS loyalty_segment,
  COUNT(*) AS customer_count
FROM customer_shopping_trends
GROUP BY loyalty_segment;

-- Frequency of purchase patterns
SELECT frequency_of_purchases, COUNT(*) AS customer_count
FROM customer_shopping_trends
GROUP BY frequency_of_purchases;

# 8. Payment Preferences

-- Preferred payment methods
SELECT payment_method, COUNT(*) AS usage_count
FROM customer_shopping_trends
GROUP BY payment_method
ORDER BY usage_count DESC;

-- Average purchase by payment method
SELECT payment_method, ROUND(AVG(purchase_amount_usd), 2) AS avg_purchase
FROM customer_shopping_trends
GROUP BY payment_method
ORDER BY avg_purchase DESC;


