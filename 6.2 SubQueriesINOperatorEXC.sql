-- Clients without invoices

SELECT *
	FROM clients
    WHERE client_id NOT IN
    (SELECT distinct client_id -- subquery should return client_id as per the where clause
	FROM invoices);
    
    OR

SELECT *
	FROM clients
LEFT JOIN invoices -- returns all invoices whether null or not
USING (client_id)
WHERE invoice_id IS NULL -- the first code is more readable