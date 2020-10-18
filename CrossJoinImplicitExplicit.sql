/*SELECT 
sh.name AS shipper,
p.name AS product
FROM sql_store.shippers sh
CROSS JOIN  products p
ORDER BY sh.name;(explicit syntax)*/
SELECT 
sh.name AS shipper,
p.name AS product
FROM shippers sh, products p
order by sh.name ;