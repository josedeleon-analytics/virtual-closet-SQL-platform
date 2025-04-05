--4. Database Implementation (SQL + User Story)
--Step 1: Buyer and Seller are Linked in a Transaction
SELECT 
    Users.user_id,
    Users.username,
    User_Transactions.transaction_id,
    User_Transactions.role,
    Transactions.total_amount
FROM Users
JOIN User_Transactions ON Users.user_id = User_Transactions.user_id
JOIN Transactions ON User_Transactions.transaction_id = Transactions.transaction_id
WHERE User_Transactions.role = 'seller';

--Step 2: Track Clothing Item Sold in the Transaction
SELECT 
    Clothing_Item.name,
    Clothing_Item.category,
    Clothing_Transaction.price,
    Clothing_Transaction.condition_at_sale,
    Transactions.transaction_date
FROM Clothing_Item
JOIN Clothing_Transaction ON Clothing_Item.clothing_id = Clothing_Transaction.clothing_id
JOIN Transactions ON Clothing_Transaction.transaction_id = Transactions.transaction_id
WHERE Transactions.payment_status = 'completed';


--Step 3: Buyer Views Item History Before Purchasing
SELECT 
    Clothing_Item.clothing_id,
    Clothing_Item.name,
    COUNT(Clothing_Transaction.clothing_transaction_id) AS resale_count
FROM Clothing_Item
JOIN Clothing_Transaction 
    ON Clothing_Item.clothing_id = Clothing_Transaction.clothing_id
GROUP BY Clothing_Item.clothing_id, Clothing_Item.name;


--Step 4: Seller Reviews Revenue Generated from Sales
SELECT 
    Users.user_id,
    Users.username,
    SUM(Transactions.total_amount) AS total_revenue
FROM Users
JOIN User_Transactions 
    ON Users.user_id = User_Transactions.user_id
JOIN Transactions 
    ON User_Transactions.transaction_id = Transactions.transaction_id
WHERE User_Transactions.role = 'seller'
  AND Transactions.payment_status = 'completed'
GROUP BY Users.user_id, Users.username
ORDER BY total_revenue DESC;

--5. Analytics, Reports, and Metrics
-- Example 1: “Top Revenue-Generating Sellers”
SELECT 
    Users.user_id,
    Users.username,
    SUM(Transactions.total_amount) AS total_revenue
FROM Users
JOIN User_Transactions ON Users.user_id = User_Transactions.user_id
JOIN Transactions ON User_Transactions.transaction_id = Transactions.transaction_id
WHERE User_Transactions.role = 'seller'
  AND Transactions.payment_status = 'completed'
GROUP BY Users.user_id, Users.username
ORDER BY total_revenue DESC
LIMIT 10;



--Example 2: “Most Resold Clothing Categories (Last 6 Months)”
SELECT 
    Clothing_Item.category,
    COUNT(Clothing_Transaction.clothing_transaction_id) AS resale_count
FROM Clothing_Item
JOIN Clothing_Transaction ON Clothing_Item.clothing_id = Clothing_Transaction.clothing_id
JOIN Transactions ON Clothing_Transaction.transaction_id = Transactions.transaction_id
WHERE Transactions.payment_status = 'completed'
  AND Transactions.transaction_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY Clothing_Item.category
ORDER BY resale_count DESC;


--Example 3: “Average Number of Items Per Transaction by Buyer”
SELECT 
    Users.user_id,
    Users.username,
    COUNT(Clothing_Transaction.clothing_transaction_id) * 1.0 / COUNT(DISTINCT User_Transactions.transaction_id) AS avg_items_per_transaction
FROM Users
JOIN User_Transactions ON Users.user_id = User_Transactions.user_id
JOIN Clothing_Transaction ON User_Transactions.transaction_id = Clothing_Transaction.transaction_id
WHERE User_Transactions.role = 'buyer'
GROUP BY Users.user_id, Users.username
ORDER BY avg_items_per_transaction DESC;


--Example 4: “Most Versatile Clothing Items (Used in Multiple Looks)”
SELECT 
    Clothing_Item.clothing_id,
    Clothing_Item.name,
    COUNT(DISTINCT Clothing_Look.look_id) AS look_count
FROM Clothing_Item
JOIN Clothing_Look ON Clothing_Item.clothing_id = Clothing_Look.clothing_id
GROUP BY Clothing_Item.clothing_id, Clothing_Item.name
ORDER BY look_count DESC;


--Example 5: “Average Sale Price by Item Condition”
SELECT 
    Clothing_Transaction.condition_at_sale,
    AVG(Clothing_Transaction.price) AS avg_price
FROM Clothing_Transaction
JOIN Transactions ON Clothing_Transaction.transaction_id = Transactions.transaction_id
WHERE Transactions.payment_status = 'completed'
GROUP BY Clothing_Transaction.condition_at_sale
ORDER BY avg_price DESC;

