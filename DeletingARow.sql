DELETE FROM invoices -- NEVER EXECUTE THIS LINE OR WHOLE TABLE WILL BE DELETED
WHERE invoice_id = 1 
SELECT * 
FROM clients
WHERE name = 'MyWorks'  -- always run the sub query first