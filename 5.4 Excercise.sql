SELECT 
name,
SUM(amount) AS total
FROM sql_invoicing.payment_methods pm
JOIN payments p
ON p.payment_method = pm.payment_method_id
group by pm.name with ROLLUP
;