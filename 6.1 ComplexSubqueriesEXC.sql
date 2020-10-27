SELECT  
		client_id,
		name,
        (SELECT SUM(invoice_total) -- dont give a space infront of sum() like sum ()
			FROM invoices
            WHERE client_id = c.client_id) AS total_sales, -- for each client_id
		(SELECT AVG(invoice_total) FROM invoices) AS average,
        (select total_sales - average) AS difference
FROM clients c