SELECT * FROM customers
RIGHT JOIN ORDERS
ON
customers.id = ORDERS.customer_id;