/*Use sql_invoicing;
CREATE OR REPLACE VIEW clients_balance AS
SELECT client_id,
		name,
        SUM(i.invoice_total-i.payment_total) AS balance
FROM clients
JOIN invoices i USING(client_id)
GROUP BY client_id,name;*/
-- DROP VIEW clients_balance;
-- DROP VIEW clients_balances;
-- DROP VIEW clients_balanceC;
