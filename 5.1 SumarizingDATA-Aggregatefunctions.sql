-- SUMMARIZING DATA
SELECT
	MAX(invoice_total) AS hightest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS mean,
    -- SUM(invoice_total) AS total,
    -- COUNT(invoice_total) AS number_of_invoices,
    COUNT(payment_date) AS count_of_payments, -- COUNT FUNCTION COUNTS ONLY NOT NULL VALUE AND DUPLICATES TOO
    COUNT(*) AS total_records, -- to find to records irrespective of null values
    SUM(invoice_total * 1.1) AS totalll,
    -- COUNT(client_id) as counts returns duplicate also to avoid it we use
    COUNT(DISTINCT client_id) AS totaluniq -- 3 because of the where clause
FROM invoices
WHERE invoice_date > '2019-07-01';