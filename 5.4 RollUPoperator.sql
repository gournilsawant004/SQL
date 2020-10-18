SELECT
	state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients c USING (client_id)
GROUP BY state,city WITH ROLLUP -- calculates the summary for each group(total sales in respectives states eg NY)
-- last row in total_sales is the total sales in all states
-- only available in mysql