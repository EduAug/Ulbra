create table pessoas(
	id int primary key,
    nome varchar(50) not null,
    sexo char(2) not null,
    data_nascimento date not null
);

DELIMITER $$
CREATE PROCEDURE inserir_tabela_pessoas(p_nome varchar(50), p_sexo char(2), p_data_nascimento date)
BEGIN

	DECLARE last_id int;
    
    IF (select max(id) from pessoas) is null then
		
        set last_id = 0;
        -- Caso a tabela esteja vazia, o primeiro vai ser 0
    elseif (select max(id) from pessoas) is not null then
    
		
		SELECT max(id) into last_id from pessoas;
        set last_id = last_id + 1;
	end if;
    
    insert into pessoas values(last_id, p_nome, p_sexo, p_data_nascimento);
    select * from pessoas;
END $$
DELIMITER ;

call inserir_tabela_pessoas("Paulin","M","200413");
call inserir_tabela_pessoas("Alfred","M","070918");
call inserir_tabela_pessoas("Paulina","F","941223");
call inserir_tabela_pessoas("Barbara","F","031216");
call inserir_tabela_pessoas("Luis","M","141210");
call inserir_tabela_pessoas("Márcia","F","990215");
call inserir_tabela_pessoas("Georgia","F","870613");
call inserir_tabela_pessoas("Zebedeu","M","720925");
call inserir_tabela_pessoas("Graça","F","120527");
select * from pessoas;


DELIMITER $$
CREATE PROCEDURE total_homens_mulheres()
BEGIN
	
	-- V1.0
	SELECT sexo as 'Gênero', COUNT(id) as 'Total'
	FROM pessoas
	GROUP BY sexo;
    
    -- V2.0
    /*
    SELECT
		COUNT(CASE WHEN sexo = 'M'then id end) as "Homens",
        COUNT(case when sexo = 'F' THEN id END) AS "Mulheres"
	FROM pessoas;
    */
END $$
DELIMITER ;
call total_homens_mulheres();



DELIMITER $$
CREATE PROCEDURE idade_homens_mulheres()
BEGIN

	DECLARE dataHoje DATE;
    SET dataHoje = current_date();
    
    SELECT sexo as 'Gênero', COUNT(CASE WHEN DATEDIFF(dataHoje, data_nascimento) >= '6570' THEN id END) as 'Maiores de idade',
							 COUNT(CASE WHEN DATEDIFF(dataHoje, data_nascimento) < '6570' THEN id END) as 'Menores de idade'
    FROM pessoas
    group by sexo
    HAVING 	COUNT(CASE WHEN DATEDIFF(dataHoje, data_nascimento) >= 6570 THEN id END) >= 0
		AND COUNT(CASE WHEN DATEDIFF(dataHoje, data_nascimento) < 6570 THEN id END) >= 0;
END $$
DELIMITER ;

call idade_homens_mulheres();

-- ////////////////////////////////////////////////////////////////////////////////////////

DELIMITER $$
CREATE PROCEDURE calcular(n1 int, n2 int)
BEGIN

    SELECT (n1+n2) as 'Soma', (n1-n2) as 'Subtração', (n1*n2) as 'Multiplicação', (n1/n2) as 'Divisão';
END $$
DELIMITER ;


call calcular(36,5);
