-- find the products that has never been ordered
SELECT * from products p 
WHERE NOT EXISTS (
		SELECT product_id
        FROM order_items
        WHERE product_id = p.product_id) -- to check whether we have a product by this id in the order_items table subq will return true
        
        -- WITH IN operator (not recommended for large result sets)

SELECT * FROM products
WHERE product_id NOT IN(
		SELECT product_id
        FROM order_items)
