-- USE sql_invoicing;
-- DELETE FROM payments WHERE payment_id=10;
/*DELIMITER $$
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW 
BEGIN 
	UPDATE  invoices 
    SET payment_total=payment_total-OLD.amount
    WHERE invoice_id=OLD.invoice_id;
END $$
DELIMITER ;*/
-- INSERT INTO payments VALUES(default,5,3,'2019-01-01',10,1);
/*DELIMITER $$
CREATE TRIGGER payments_after_insert 
	AFTER INSERT ON payments
    FOR EACH ROW 
BEGIN 
	UPDATE  invoices 
    SET payment_total=payment_total+NEW.amount
    WHERE invoice_id=NEW.invoice_id;
END $$
DELIMITER ;
INSERT INTO payments VALUES(default,5,3,'2019-01-01',10,1);*/
-- SHOW TRIGGERS;
-- SHOW TRIGGERS LIKE 'payments%';
SHOW VARIABLES LIKE 'event%'; 
-- SET GLOBAL event_scheduler=ON;
