-- SELECT
-- 	client_id,
-- 	SUM(invoice_total) AS total_sales
-- FROM invoices i 
-- JOIN clients c USING(client_id) -- dont forget the order  FROM WHERE GROUPBY....
-- WHERE invoice_date >= '2019-07-01'
-- GROUP BY state,city
-- ORDER BY total_sales DESC;
SELECT
	state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices i 
JOIN clients c USING(client_id) -- dont forget the order  FROM WHERE GROUPBY....
GROUP BY state,city; -- group by multiple coloumns