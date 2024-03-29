USE restaurant_db;
-- 1. View the menu_items table.

SELECT *
FROM menu_items

-- 2. Find the number of items on the menu.  

SELECT count(*)
FROM menu_items

-- 3. What are the least and most expensive items on the menu?

SELECT price,
item_name
FROM menu_items
ORDER BY price DESC

-- 4. How many italian dishes are on the menu?

SELECT count(*)
FROM menu_items
WHERE category = 'italian';

-- 5. What are the least and most expensive italian dishes on the menu?

SELECT
item_name,
category,
price
FROM menu_items
WHERE category = 'italian'
ORDER BY price DESC

-- 6. How many dishes are in each category?

SELECT category, count(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category

-- 7. What is the average dish price for each catagory/

SELECT category, avg(price) AS avg_price
FROM menu_items
GROUP BY category
