Create Table Produtos(
	Prd_Codigo int auto_increment primary key,
    Prd_Descricao varchar(75) not null,
    Prd_Valor decimal(18,2) not null,
    Prd_Qtd_Estoque int not null,
    Prd_Falta boolean not null,
    Prd_Status int
);
Insert into Produtos values(null,"Maçãs verdes", 9.20, 20, false, 1),(null,"Lápis 12x", 11.30, 7, false, 1),(null,"Item em Falta", 164, 0, true, 2);
select * from Produtos;

Create Table Orcamentos(
	Orc_Codigo int auto_increment primary key,
    Orc_Data date not null,
    Orc_Status int not null
);
Insert into Orcamentos values(null,'230427',1);
Insert into Orcamentos values(null,'230428',1);

Create Table Orcamentos_Produtos(
	Prd_Codigo int not null,
    Orc_Codigo int not null,
    Orp_Qtd int not null,
    Orp_Valor decimal(18,2) not null,
    Orp_Status int
);
Insert into Orcamentos_Produtos values(1,1,10,(Orp_Qtd*10),1);
Insert into Orcamentos_Produtos values(1,1,10,(Orp_Qtd*10),2);
Insert into Orcamentos_Produtos values(2,2,6,(Orp_Qtd*12),1);
select * from Orcamentos_Produtos;

Update Orcamentos_Produtos set Orp_status = 2 WHERE Orc_Codigo = 2;

-- Alterar estoque 
DELIMITER $$
CREATE TRIGGER trigger_altera_estoque_adicao_em_orcamento_produtos AFTER INSERT on Orcamentos_Produtos
	FOR EACH ROW
BEGIN

	IF (NEW.Orp_Status !=2) THEN
    
		Update Produtos set Prd_Qtd_Estoque = Prd_Qtd_Estoque - NEW.Orp_Qtd WHERE Prd_Codigo = NEW.Prd_Codigo; 	-- Subtrair do estoque a quantia requisitada pelo orçamento.
	ELSEIF (NEW.Orp_Status = 2) THEN
    
		Update Produtos set Prd_Qtd_Estoque = Prd_Qtd_Estoque + NEW.Orp_Qtd WHERE Prd_Codigo = NEW.Prd_Codigo; 		-- Adiciona ao estoque a quantia "retirada" no pedido cancelado.
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trigger_altera_estoque_update_em_orcamento_produtos AFTER UPDATE ON Orcamentos_Produtos
	FOR EACH ROW
BEGIN

	IF (NEW.Orp_Status = 2) THEN
    
		Update Produtos set Prd_Qtd_Estoque = Prd_Qtd_Estoque + OLD.Orp_Qtd WHERE Prd_Codigo = NEW.Prd_Codigo;
	ELSEIF (NEW.Orp_Status = 1) THEN
    
		Update Produtos set Prd_Qtd_Estoque = Prd_Qtd_Estoque - OLD.Orp_Qtd WHERE Prd_Codigo = NEW.Prd_Codigo;
    END IF;
END$$
DELIMITER ;

-- tabelas produtos em falta e produtos atualizados com triggers
create table produtos_atualizados(
	Prd_Codigo int not null,
    Prd_Qtd_Anterior int not null,
    Prd_Qtd_Atualizada int not null,
    Prd_Valor decimal(18,2) not null
);

create table produtos_em_Falta(
	Prd_Codigo int not null,
    Prd_Descricao varchar(75) not null,
    Prd_Qtd_Estoque int not null,
    Prd_Falta boolean not null,
    Prd_Status int
);

DELIMITER $$
Create Trigger trigger_inserir_produtos_atualizados_quando_update_produtos AFTER UPDATE ON Produtos
	FOR EACH ROW
BEGIN

	IF (NEW.Prd_Qtd_Estoque != 0) THEN
    
		Insert into produtos_atualizados values (NEW.Prd_Codigo, OLD.Prd_Qtd_Estoque, NEW.Prd_Qtd_Estoque, NEW.Prd_Valor);
	ELSEIF (NEW.Prd_Qtd_Estoque = 0) THEN
    
		Insert into produtos_em_Falta values (NEW.Prd_Codigo, NEW.Prd_Descricao, NEW.Prd_Qtd_Estoque, NEW.Prd_Falta, NEW.Prd_Status);
        Update Orcamentos_Produtos set Orp_Status = null WHERE Prd_Codigo = NEW.Prd_Codigo;	-- Aparentemente não dá pra atualizar a própria tabela dentro de uma trigger que dispare nela
    END IF;																					-- Então movi o set Null de Produtos para atualização em Orcamentos_Produtos
END $$
DELIMITER ;

DELIMITER $$ 
CREATE TRIGGER trigger_set_null_prd_status_quando_set_null_orp_status AFTER UPDATE ON Orcamentos_Produtos
	FOR EACH ROW
BEGIN

	IF (NEW.Orp_Status = NULL) THEN
    
		Update Produtos set Prd_Status = NULL, Prd_Falta = True WHERE Prd_Codigo = NEW.Prd_Codigo;
    END IF;
END $$
DELIMITER ;

drop trigger trigger_inserir_produtos_atualizados_quando_update_produtos;
drop trigger trigger_set_null_prd_status_quando_set_null_orp_status;

SELECT * FROM produtos_atualizados;
SELECT * From produtos_em_Falta;
SELECT * FROM Produtos;
UPDATE Produtos set Prd_Descricao = "Maçã Verde" WHERE Prd_Codigo = 1;
SELECT * FROM Produtos;
SELECT * FROM produtos_atualizados;
SELECT * From produtos_em_Falta;
UPDATE Produtos set Prd_Qtd_Estoque = 15 WHERE Prd_Codigo = 1;
UPDATE Produtos set Prd_Qtd_Estoque = 0 WHERE Prd_Codigo = 2;

