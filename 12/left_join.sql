-- LEFT JOIN
-- SELECT * FROM customers
-- LEFT JOIN ORDERS
-- ON
-- customers.id = ORDERS.customer_id;

-- SELECT first_name ,last_name , order_date , amount
-- FROM customers
-- LEFT JOIN ORDERS
-- ON
-- customers.id = ORDERS.customer_id
-- GROUP BY customers.id;

SELECT first_name,
 last_name, 
 IFNULL(SUM(amount) , 0) AS total_spent
FROM customers
LEFT JOIN ORDERS
    ON customers.id = ORDERS.customer_id
    GROUP BY customers.id
    ORDER BY total_spent DESC;