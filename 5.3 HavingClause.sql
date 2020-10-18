SELECT
	client_id,
    SUM(invoice_total) AS total_sales, -- for each client total sales
    count(*) AS number_of_invoices--  actually using client id column since we group it
FROM invoices
GROUP BY client_id
HAVING total_sales >500  AND number_of_invoices > 5; -- columns that we use here has to be part of select clause