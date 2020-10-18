-- UPDATE invoices
-- SET 
-- 	payment_total = invoice_total,
-- 	payment_date = due_date
-- WHERE client_id =
-- 			(SELECT client_id
-- 			FROM clients
-- 			WHERE name = 'Topiclounge');

-- 	FOR MULTIPLE CLIENTS
UPDATE invoices
SET 
	payment_total = invoice_total,
	payment_date = due_date
WHERE client_id IN -- in because subquery returns multiple records
			(SELECT client_id
			FROM clients
			WHERE state IN ('CA','NY'));
            
          --   EXERCISE
UPDATE orders
	SET comments = 'GOLD CUSTOMERS'
    
WHERE customer_id IN -- in because subquery returns multiple records
	(SELECT customer_id
    FROM customers
    WHERE points > 3000); -- always run the sub query first
