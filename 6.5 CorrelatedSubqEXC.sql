SELECT * FROM sql_invoicing.invoices i
WHERE invoice_total > 
	(SELECT AVG(invoice_total)
     FROM invoices
	 WHERE client_id = i.client_id) -- for each client (this line means it correlated the clientid column in the subq with main query)