-- USE sql_invoicing;
/*DELIMITER $$
CREATE PROCEDURE get_invoices_with_balancess() 
BEGIN
	SELECT * FROM invoices 
    WHERE invoice_total-payment_total>0;
END$$
DELIMITER ;*/
-- DROP PROCEDURE get_invoices_with_balance;
-- DROP PROCEDURE get_invoices_with_balances;
/*USE sql_invoicing;
DELIMITER $$
CREATE PROCEDURE get_invoice_with_client 
(
	client_id INT
)
BEGIN
SELECT * FROM invoices i 
WHERE i.client_id=client_id;
END$$
DELIMITER ;*/
-- CALL get_invoice_with_client(2);
/*DELIMITER $$
CREATE PROCEDURE get_paymentss
(
	client_id INT,
    payment_method TINYINT
)
BEGIN 
	SELECT *
    FROM payments p
	WHERE p.client_id=IFNULL(client_id,p.client_id) AND 
    p.payment_method=IFNULL(payment_method,p.payment_method);
END $$;
DELIMITER :*/
-- CALL get_payments(5,2);
CALL get_paymentss(5,2);
