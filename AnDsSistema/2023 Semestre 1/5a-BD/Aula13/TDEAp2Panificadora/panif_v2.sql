-- 2.
create table Categorias(
	Id int auto_increment primary key,
    descricao varchar(20) not null
);

create table Ingredientes(
	Id int auto_increment primary key,
    descricao varchar(50) not null,
    qtd_estoque decimal(10,2) not null,
    data_compra datetime not null
);
create table Receitas(
	Id int auto_increment primary key,
    tempo_preparo_min int not null,
    rendimento_kg int not null
);

create table Produtos(
	Id int auto_increment primary key,
    descricao varchar(40) not null,
    id_categoria int not null,
    constraint cat_fk_pro
		foreign key(id_categoria) references Categorias(Id)
			on update cascade
			on delete restrict
);

create table estoqueVenda(
	id_produto int not null,
    qtd_venda int not null,
    valor_venda decimal(10,2) not null,
    data_producao datetime not null,
  	constraint pro_fk_ven
		foreign key(id_produto) references Produtos(Id)
			on update cascade
			on delete restrict
); 

create table Receitas_tem_Ingredientes(
	id_receita int not null,
    id_ingrediente int not null,
    qtd_ingrediente decimal(10,2) not null,
    constraint rec_fk_rti
		foreign key(id_receita) references Receitas(Id)
			on update cascade
			on delete restrict,
	constraint ing_fk_rti
		foreign key(id_ingrediente) references Ingredientes(Id)
			on update cascade
			on delete restrict
);
create table Produtos_tem_Receitas(
	id_produto int,
    id_receita int not null,
    constraint pro_fk_ptr
		foreign key(id_produto) references Produtos(Id)
			on update cascade
			on delete set null,
	constraint rec_fk_ptr
		foreign key(id_receita) references Receitas(Id)
			on update cascade
			on delete restrict
);

-- 3.
alter table Produtos add column tempo_validade_dias int not null;

-- 4.
insert into Categorias (descricao) values ("Pães"),("Bolos"),("Salgados");
insert into Ingredientes values (null,"Ovo (Unit)",74,"2023-04-29 09:18:22"),(null,"Chocolate em pó (Kg)",10,"2023-04-29 09:18:22"),(null,"Farinha (Kg)",29,"2023-04-29 13:04:16"),
								(null,"Leite (L)",16,"2023-04-30 09:21:49"),(null,"Sal (Kg)",14,"2023-04-30 09:21:49"),(null,"Açúcar (Kg)",26,"2023-04-30 12:48:31"),
                                (null,"Fermento (g)",1570,"2023-04-30 19:43:16"),(null, "Raspa Limão (g)",540,"2023-04-27 15:41:55"),(null, "Manteiga (g)",3500,"2023-04-30 19:43:16");
                                
insert into Receitas values (null, 60, 2),(null, 120, 2),(null, 180, 1),(null, 30, 1);


insert into Produtos values (1, "Mini baurú",3,3),(2, "Pão francês",1,2),(3, "Bolo Chocolate",2,3),(4, "Pastel frito",3,1); -- É uma porrada de pastel
insert into estoqueVenda values (3, 2, 45.27, "2023-05-01 08:37:16"), (2, 16, 20, "2023-05-01 07:43:06");


/*-- TESTE ITEM EM VENDA
select P.descricao, eV.qtd_venda, eV.valor_venda, eV.data_producao, ADDDATE(eV.data_producao, interval P.tempo_validade_dias DAY) as Validade
FrOM Produtos P
	inner join estoqueVenda eV ON eV.id_produto = P.Id;
*/
    
insert into Receitas_tem_Ingredientes values	(1,1,2),(1,3,1),(1,4,1),(1,5,0.2),(1,6,0.2),(1,9,40),
												(2,1,1),(2,3,0.8),(2,5,0.02),(2,6,0.01),(2,7,60),(2,9,30),
                                                (3,1,4),(3,2,0.07),(3,9,36),(3,3,0.36),(3,6,0.24),(3,7,36),(3,4,0.12),
                                                (4,1,1),(4,3,1),(4,9,110),(4,5,0.01);
INSERT INTO Produtos_tem_Receitas VALUES	(1,1),(2,2),(3,3),(4,4);

/* -- Mostrar os produtos que usam açúcar em sua receita, ordenando do que mais usa ao que menos usa açúcar
SELECT P.descricao, I.descricao, RtI.qtd_ingrediente
FROM Produtos_tem_Receitas PtR
	inner join Produtos P on P.Id = PtR.id_produto
    INNER JOIN Receitas R ON R.Id = PtR.id_receita
    INNER JOIN Receitas_tem_Ingredientes RtI ON R.Id = RtI.id_receita
    INNER JOIN Ingredientes I ON I.Id = RtI.id_ingrediente
WHERE I.descricao LIKE "Açúcar%"
ORDER BY RtI.qtd_ingrediente DESC;*/

-- 5.
-- a) "Exibir quantos produtos há para cada categoria"
SELECT COUNT(C.Id), C.descricao
FROM Produtos P 
	Inner JOIN Categorias C ON C.Id = P.id_categoria
GROUP BY P.id_categoria;

-- Li Errado a anterior, mas mesmo assim, Query de quantos ingredientes cada Categoria consome (－‸ლ)
/*
SELECT C.descricao as Categoria, SUM(RtI.qtd_ingrediente) as Ingredientes_por_receita
FROM Produtos P 
	INNER JOIN Categorias C ON C.Id = P.id_categoria
    INNER JOIN Produtos_tem_Receitas PtR ON PtR.id_produto = P.Id
    INNER JOIN Receitas R on R.Id = PtR.id_receita
    INNER JOIN Receitas_tem_Ingredientes RtI ON RtI.id_receita = R.Id
GROUP BY C.Id;
*/

-- b) "Exibir todos os produtos, quais ingredientes e em que quantidade são utilizados para produzi-lo"
SELECT P.descricao, I.descricao, RtI.qtd_ingrediente
FROM Produtos_tem_Receitas PtR
	inner join Produtos P on P.Id = PtR.id_produto
    INNER JOIN Receitas R ON R.Id = PtR.id_receita
    INNER JOIN Receitas_tem_Ingredientes RtI ON R.Id = RtI.id_receita
    INNER JOIN Ingredientes I ON I.Id = RtI.id_ingrediente;
    
-- c) "Exibir qual a quantidade produzida de cada produto nos últimos 30 dias"

SELECT P.descricao as Produto, eV.qtd_venda as Producao_no_periodo, eV.data_producao
FROM Produtos P 
	INNER JOIN estoqueVenda eV on eV.id_produto = P.Id
WHERE eV.data_producao BETWEEN SUBDATE(CURRENT_DATE, INTERVAL 30 DAY) AND CURRENT_DATE
GROUP BY eV.data_producao; -- Group by data caso exista do mesmo produto em datas diferentes

-- d) "Se for dobrada a produção para o próximo mês, quanto de ingrediente será necessário" R: 2*RtI.qtd_ingredientes * qtd_em_estoque_por_produto

SELECT eV.qtd_venda as Estoque_Atual, (eV.qtd_venda*2) as Estoque_Dobrado, P.descricao as Produto, I.descricao as Ingrediente, (RtI.qtd_ingrediente*(eV.qtd_venda*2)) as Quantidade_necessaria
FROM Produtos_tem_Receitas PtR
	INNER JOIN Produtos P on P.Id = PtR.id_produto
    INNER JOIN Receitas R ON R.Id = PtR.id_receita
    inner JOIN Receitas_tem_Ingredientes RtI ON RtI.id_receita = R.Id
    InnER JOIN Ingredientes I ON I.Id = RtI.id_ingrediente
    LEFT JOIN estoqueVenda eV On eV.id_produto = P.Id;
    
-- e) "Mostrar os ingredientes que nunca foram utilizados"

SELECT I.descricao as Ingredientes_nao_utilizados
FROM Ingredientes I 
WHERE I.Id NOT IN ( Select id_ingrediente FROM Receitas_tem_Ingredientes);

-- f) Trigger para controlar a quantidade dos ingredientes no estoque, sempre que um produto for fabricado
-- SET autocommit = 0;
DELIMITER $$
CREATE TRIGGER trigger_controle_de_estoque_produtos_ingredientes_insert AFTER INSERT ON estoqueVenda
	FOR EACH ROW
BEGIN

	UPDATE Ingredientes
    INNER JOIN Receitas_tem_Ingredientes on Receitas_tem_Ingredientes.id_ingrediente = Ingredientes.Id
    INNER JOIN Receitas on Receitas.Id = Receitas_tem_Ingredientes.id_receita
    INNER JOIN Produtos_tem_Receitas on Produtos_tem_Receitas.id_receita = Receitas.Id
    
    SET qtd_estoque = qtd_estoque - (Receitas_tem_Ingredientes.qtd_ingrediente * NEW.qtd_venda)
    
    WHERE Ingredientes.Id = Receitas_tem_Ingredientes.id_ingrediente AND Produtos_tem_Receitas.id_produto = NEW.id_produto;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trigger_controle_de_estoque_produtos_ingredientes_estorno AFTER DELETE ON estoqueVenda
	FOR EACH ROW
BEGIN

	UPDATE Ingredientes
    INNER JOIN Receitas_tem_Ingredientes on Receitas_tem_Ingredientes.id_ingrediente = Ingredientes.Id
    INNER JOIN Receitas on Receitas.Id = Receitas_tem_Ingredientes.id_receita
    INNER JOIN Produtos_tem_Receitas on Produtos_tem_Receitas.id_receita = Receitas.Id
    
    SET qtd_estoque = qtd_estoque + (Receitas_tem_Ingredientes.qtd_ingrediente * OLD.qtd_venda)
    
    WHERE Ingredientes.Id = Receitas_tem_Ingredientes.id_ingrediente AND Produtos_tem_Receitas.id_produto = OLD.id_produto;
END$$
DELIMITER ;

set autocommit = 0;
START TRANSACTION;
select * from Ingredientes;
insert into estoqueVenda values (3,2,50,"2023-05-06 13:43:27");		-- A trigger funciona bem, apenas fiz em uma transaction para me certificar
select * from estoqueVenda;
select * from Ingredientes;
delete from estoqueVenda where data_producao LIKE "2023-05-06 13:43:27";
select * from estoqueVenda;
rollback;

-- g), h)
Start transaction;
select * from Receitas_tem_Ingredientes;
update Receitas_tem_Ingredientes SET qtd_ingrediente = qtd_ingrediente * 0.9 WHERE id_ingrediente = 7;
select * from Receitas_tem_Ingredientes;
commit;

-- i), j)
Start transaction;
select * from estoqueVenda;
delete from estoqueVenda WHERE data_producao >= SUBDATE(NOW(), INTERVAL 1 month);
select * from estoqueVenda;
rollback;

select * from estoqueVenda;