/*USE sql_inventory;
SELECT * 
FROM products
WHERE unit_price>(
SELECT unit_price FROM 
products 
WHERE product_id=3);*/
/*USE sql_hr;
SELECT * FROM 
employees 
WHERE salary>(
SELECT AVG(salary) 
FROM employees);*/
/*USE sql_store;
SELECT * FROM 
products WHERE product_id NOT IN (SELECT distinct product_id FROM order_items);*/
/*USE sql_invoicing;
SELECT * FROM clients 
WHERE client_id NOT IN (SELECT distinct client_id FROM invoices);*/
/*select * FROM clients 
LEFT JOIN invoices USING(client_id)
WHERE invoice_id IS NULL;*/
/*USE sql_store;
SELECT customer_id,first_name,last_name FROM customers 
WHERE customer_id IN (SELECT o.customer_id FROM order_items oi
JOIN orders o USING(order_id)
WHERE product_id=3);*/
/*SELECT customer_id,first_name,last_name FROM customers 
JOIN orders USING(customer_id) 
JOIN order_items USING(order_id) 
WHERE product_id=3;*/
/*USE sql_invoicing;
SELECT * FROM 
invoices WHERE invoice_total>(SELECT MAX(invoice_total) FROM invoices WHERE client_id=3);*/
SELECT * FROM 
invoices WHERE invoice_total>ALL (SELECT invoice_total FROM invoices WHERE client_id=3);
