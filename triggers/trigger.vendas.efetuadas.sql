/* TRIGGER VENDAS EFETUADAS*/

DELIMITER $$

CREATE TRIGGER TRIGGER_VENDAS_EFETUADAS AFTER INSERT
ON VENDAS
FOR EACH ROW
BEGIN

	UPDATE CAIXA SET SALDO_FINAL = SALDO_FINAL + NEW.VALOR;
    
END $$



