SELECT 
order_id,
order_date,
'ACTIVE' AS STATUS
FROM sql_store.orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
order_id,
order_date,
'ARCHIVED' AS STATUS
FROM sql_store.orders
WHERE order_date < '2019-01-01'
;