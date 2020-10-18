/*update invoices
set payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1*/

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01'




UPDATE invoices
SET 
	payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id IN (3,4)


SELECT client_id
FROM clients
WHERE name = 'Myworks'