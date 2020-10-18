CREATE TABLE invoices_archieved1 AS
SELECT invoice_id,i.number,c.name AS client,i.invoice_total,i.payment_total,i.invoice_date,i.payment_date,i.due_date
FROM sql_invoicing.invoices i
LEFT JOIN clients c
USING (client_id)
WHERE i.payment_date IS NOT NULL