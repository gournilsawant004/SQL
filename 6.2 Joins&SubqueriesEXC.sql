SELECT c.customer_id,first_name,last_name
	FROM customers c
    WHERE customer_id IN
		(SELECT customer_id
		FROM order_items oi -- in this oi table we dont have customer_id so we use join
        JOIN orders USING (order_id)
		WHERE product_id = 3)
       
       
      --  USING JOIN
SELECT *
	FROM customers c
    LEFT JOIN orders o
USING(customer_id)
	LEFT JOIN order_items
USING(order_id)
WHERE product_id = 3
