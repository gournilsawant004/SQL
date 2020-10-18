 -- customers living in virginia having more than 100 total sales
SELECT c.customer_id,c.first_name,c.last_name,(oi.quantity* oi.unit_price) AS total_sales
FROM customers c
JOIN orders o
USING (customer_id)
JOIN order_items oi
USING (order_id)
WHERE state  = 'VA' -- where clause used to filter data before groupby
GROUP BY 
	c.customer_id,c.first_name,c.last_name
HAVING total_sales > 100 -- Having clause used to filter data after groupby
-- some error in database needs to be restored
	
