USE restaurant_db
-- 1. View the order_details table.

SELECT *
FROM order_details

-- 2. What is the date range of the table?

SELECT min(order_date), max(order_date)
FROM order_details

-- 3. How many orders were made whithin this date range?

SELECT count(DISTINCT order_id) 
FROM order_details

-- 4. How many items were ordered whithin this date range?

SELECT count(*)
FROM order_details

-- 5. Which orders had the most number of items?

SELECT order_id, count(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC

-- 6. How many orders had more than 12 items?

SELECT count(*) FROM
(SELECT order_id, count(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders
