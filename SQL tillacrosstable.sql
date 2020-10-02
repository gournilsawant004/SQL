SELECT order_id,o.product_id,quantity,o.unit_price FROM sql_store.order_items o
join products p
ON o.product_id = p.product_id;