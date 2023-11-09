/*USE sql_store;
SELECT order_id,o.product_id,quantity,o.unit_price 
	FROM order_items o
    JOIN products p
    ON o.product_id=p.product_id;*/
/*USE sql_invoicing;
SELECT p.payment_id,c.name,p.invoice_id,p.date,p.amount,pm.name as payment_method_type
	FROM payments p 
	JOIN clients c 
    ON c.client_id=p.client_id 
    JOIN payment_methods pm
    ON p.payment_method=pm.payment_method_id;*/
/*USE sql_store;
SELECT p.product_id,p.name,o.quantity FROM products p
LEFT JOIN order_items o
ON p.product_id=o.product_id;*/
/*USE sql_store;
SELECT o.order_date,o.order_id,c.first_name,sh.name AS shipper,os.name 
	FROM orders o 
    JOIN customers c ON c.customer_id=o.customer_id
    LEFT JOIN shippers sh ON o.shipper_id=sh.shipper_id
    LEFT JOIN order_statuses os ON o.status=os.order_status_id
    ORDER BY os.name;*/
/*USE sql_invoicing;
SELECT p.date,c.name,p.amount,pm.name 
FROM payments p 
JOIN clients c USING(client_id)
JOIN payment_methods pm ON p.payment_method=pm.payment_method_id;*/
-- USE sql_store;
-- SELECT * FROM products,shippers;
-- SELECT * FROM products
-- CROSS JOIN shippers;
/*SELECT order_id,order_date,'Active' FROM orders WHERE order_date>='2019-01-01'
UNION
SELECT order_id,order_date,'Archived' FROM orders WHERE order_date<'2019-01-01';?*/
SELECT customer_id,first_name,points,'Bronze' AS type FROM customers WHERE points<2000
UNION 
SELECT customer_id,first_name,points,'Sliver' FROM customers WHERE points<3000
UNION
SELECT customer_id,first_name,points,'Gold' FROM customers WHERE points<3000;