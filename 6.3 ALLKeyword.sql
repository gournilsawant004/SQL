-- SELECT invoices larger than all invoices of client 3

-- SELECT *
-- FROM invoices
-- WHERE invoice_total >
-- 		(SELECT MAX(invoice_total) this subq returns single value hence we dont need the all keyword
-- 		FROM invoices
-- 		WHERE client_id = 3)
--         
-- USING ALL keyword

SELECT *
FROM invoices
WHERE invoice_total > ALL ( -- if we dont use the ALL keyword subq returns more than 1 row since subq returns multiple rows
			SELECT invoice_total
            FROM invoices
            WHERE client_id = 3)