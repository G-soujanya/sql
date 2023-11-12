-- USE sql_invoicing;
/*SELECT 
	'First of 2019' AS date_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total-payment_total) AS what_we_except
FROM invoices 
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION 
SELECT 
	'second of 2019' AS date_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total-payment_total) AS what_we_except
FROM invoices 
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION 
SELECT 
	'total' AS date_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total-payment_total) AS what_we_except
FROM invoices 
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31';*/
/*USE sql_invoicing;
SELECT p.date,name,SUM(amount) AS total_payments FROM payments p
JOIN payment_methods pm ON p.payment_method=pm.payment_method_id
group by p.date,p.payment_method;*/
-- USE sql_store;
/*SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity*oi.unit_price) AS total
FROM customers c
JOIN orders o USING(customer_id)
JOIN order_items oi USING(order_id) 
WHERE state='VA'
GROUP BY c.customer_id,
    c.first_name,
    c.last_name
HAVING total>100;*/
-- USE sql_invoicing;
SELECT pm.name,SUM(p.amount) FROM payments p
JOIN payment_methods pm ON p.payment_id=pm.payment_method_id
GROUP BY pm.name WITH ROLLUP;
