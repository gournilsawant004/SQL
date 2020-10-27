SELECT
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total)
		FROM invoices) AS invoice_average, -- this is an expression and invoice avg is an alias
	invoice_total - (SELECT invoice_average) AS Difference -- we cannot use a coloumn alias in an expression
FROM invoices