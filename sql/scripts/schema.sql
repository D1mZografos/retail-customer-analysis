# Create Schema 
CREATE TABLE customer_shopping_trends (
    customer_id VARCHAR(20) PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    item_purchased VARCHAR(100),
    category VARCHAR(50),
    purchase_amount_usd DECIMAL(10, 2),
    location VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(30),
    season VARCHAR(20),
    review_rating DECIMAL(2, 1),         
    subscription_status VARCHAR(5),      
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(5),         
    promo_code_used VARCHAR(5),         
    previous_purchases INT,
    payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(20)
);
