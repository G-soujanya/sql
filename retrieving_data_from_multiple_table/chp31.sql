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
USE sql_store;
SELECT p.product_id,p.name,o.quantity FROM products p
LEFT JOIN order_items o
ON p.product_id=o.product_id;