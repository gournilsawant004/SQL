-- select clients with atleast two invoices

SELECT *
FROM clients c
WHERE client_id IN (
		SELECT client_id-- ,count(*) -- count of invoices of the respective client_id
		FROM invoices
		GROUP BY client_id
		HAVING COUNT(*) >= 2)
        
        USING ANY KEYWORD both are same
	
SELECT *
FROM clients c
WHERE client_id = ANY (
		SELECT client_id-- ,count(*) -- count of invoices of the respective client_id
		FROM invoices
		GROUP BY client_id
		HAVING COUNT(*) >= 2)
