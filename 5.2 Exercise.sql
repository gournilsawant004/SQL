SELECT date,name AS payment_method, -- or SUM(amount) isthesame
amount AS total_payments
FROM payments p
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id -- canot use USING() since both tables dont have a common coloumn
GROUP BY payment_method,date
ORDER BY date;
