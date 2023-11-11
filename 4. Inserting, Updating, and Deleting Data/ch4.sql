-- USE sql_inventory;
-- INSERT INTO products VALUES(DEFAULT,"bag",100,50);
-- INSERT INTO products (name,quantity_in_stock,unit_price) VALUES("pen",20,5);
-- INSERT INTO products VALUES(DEFAULT,"pencil",105,3);
-- DELETE FROM products WHERE product_id IN (10,11,15);
/*INSERT INTO products (name,quantity_in_stock,unit_price) VALUES
	("bag",100,10),
    ("pen",9,4),                                      
    ("pencil",5,5);
SELECT * FROM products;*/
-- USE sql_invoicing;
/*CREATE TABLE invoices_archieve AS
SELECT invoice_id,number,c.name,invoice_total,payment_total,invoice_date,due_date,payment_date FROM invoices 
	JOIN clients c USING(client_id)
    WHERE payment_date IS NOT NULL;*/
-- USE sql_store;
-- UPDATE customers SET points=points+50 WHERE birth_date>'1990-01-01';
-- SELECT * FROM customers;alter
update orders 
SET comments='GOLD CUSTOMER' 
WHERE customer_id IN
(SELECT customer_id FROM customers
WHERE points>3000);
