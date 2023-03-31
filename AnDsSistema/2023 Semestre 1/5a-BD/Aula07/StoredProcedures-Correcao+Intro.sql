/* v1.0
create table tabuada(
	num int,
  	operacao varchar(10)
);

DELIMITER $$
CREATE PROCEDURE tabuadaDo(num int)
BEGIN
	DECLARE @contador int
    SET @contador = 1
    WHILE (@contador <= @num)
    BEGIN 
    	SET = @num * @contador
        INSERT into tabuada (num, operacao) VALUES (@num, concat(@num,'*',@contador) SET @contador = @contador + 1
	end 
END $$
DELIMITER ;

CALL tabuadaDo(6);*/


/* V2.0
create table tabuada(
	num int,
  	operacao varchar(10)
);

DELIMITER $$
CREATE PROCEDURE tabuadaDo(num int)
BEGIN
    create table IF NOT EXISTS tabuada(
        num int,
        operacao varchar(10)
    );
	DECLARE contador int
    SET contador = 1
    WHILE (contador <= 10)
    BEGIN 
    	SET = num * contador
        INSERT into tabuada (num, operacao) VALUES (num, concat(num,'*',contador) SET contador = contador + 1
	end 
END $$
DELIMITER ;

CALL tabuadaDo(6);*/


/* V2.5
create table tabuada(
	num int,
  	operacao varchar(10)
);

DELIMITER $$
CREATE PROCEDURE tabuadaDo(num int)
BEGIN
    create table IF NOT EXISTS tabuada(
        num int,
        operacao varchar(10)
    );
	DECLARE contador int
    SET contador = 1
    WHILE (contador <= 10) DO
    BEGIN 
    	SET num = num * contador
        INSERT into tabuada (num, operacao) VALUES (num, concat(num,'*',contador, "=",num*contador) SET contador = contador + 1
	end WHILE;
END $$
DELIMITER ;

CALL tabuadaDo(6);*/



-- Correção

DELIMITER $$
CREATE PROCEDURE tabuada (IN p_numero INT)
BEGIN

    DECLARE contador INT DEFAULT 1;
    DECLARE resultado INT;
    DECLARE jaExiste INT;
    
 
    CREATE TABLE IF NOT EXISTS procedures.tabuada 
    (
		numero INT NOT NULL,
		multiplicador INT NOT NULL,
		resultado INT NOT NULL,
		PRIMARY KEY (numero, multiplicador)
	);
SET jaExiste = (SELECT COUNT(numero) FROM procedures.tabuada WHERE numero = p_numero);
    IF (jaExiste = 0) THEN
		WHILE (contador <= 10) DO
			INSERT INTO tabuada (numero, multiplicador, resultado)
			VALUES (p_numero, contador, p_numero * contador);
			SET contador = contador + 1;
		END WHILE;
    END IF;
    SELECT * FROM procedures.tabuada WHERE numero = p_numero;
END $$
DELIMITER ;