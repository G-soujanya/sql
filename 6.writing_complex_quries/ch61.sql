/*USE sql_invoicing;
SELECT * FROM invoices i
WHERE invoice_total>(
SELECT AVG(invoice_total) FROM invoices WHERE client_id=i.client_id
);*/
/*USE sql_store;
SELECT * FROM products p
WHERE NOT EXISTS(
	SELECT DISTINCT product_id FROM order_items 
    WHERE product_id=p.product_id
);*/
/*SELECT * FROM products 
WHERE product_id NOT IN(
SELECT product_id FROM order_items
)*/
-- USE sql_invoicing;
SELECT client_id,name ,
(SELECT SUM(invoice_total) FROM invoices WHERE client_id=c.client_id) AS total_sales,
(SELECT AVG(invoice_total) FROM invoices) AS average,
(SELECT total_sales)-(SELECT average) AS difference
FROM clients c;