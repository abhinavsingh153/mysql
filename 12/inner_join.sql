
-- Implicit inner join
SELECT * FROM customers , ORDERS WHERE customers.id = ORDERS.customer_id;

SELECT first_name , last_name , amount
	FROM customers , ORDERS 
	WHERE customers.id = ORDERS.customer_id;

-- Explicit inner join

SELECT * FROM customers
JOIN ORDERS
ON 
customers.id = ORDERS.customer_id;

SELECT first_name , last_name , amount
FROM customers
JOIN ORDERS
ON
customers.id = ORDERS.customer_id;

SELECT  first_name , last_name , order_date , amount
FROM customers 
JOIN ORDERS 
ON 
customers.id = ORDERS.customer_id
ORDER BY order_date;

SELECT first_name ,
 last_name ,
 SUM(amount) AS total_amount
FROM customers
JOIN ORDERS
ON 
customers.id = ORDERS.customer_id
GROUP BY ORDERS.customer_id 
ORDER BY total_amount;

-- SELECT 
--     first_name, 
--     last_name
-- FROM customers
-- JOIN ORDERS
--     ON customers.id = ORDERS.customer_id
-- GROUP BY ORDERS.customer_id;

