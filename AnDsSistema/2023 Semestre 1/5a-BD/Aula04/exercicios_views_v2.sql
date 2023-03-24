create database orcamentos_views;
create table produtos(
	id int auto_increment primary key,
    nome varchar(30) not null,
    valor double(10,2) not null,
    saldo int not null
);
INSERT INTO produtos (id, nome, valor, saldo) VALUES (null, 'Torradeira', 46.00, 47),(null, 'Computador lv1', 1002.00, 10),(null, 'Computador lv2', 1500.00, 30),
													(null, 'Sombreiro', 28.00, 29),(null, 'DVD blank', 2.00, 194),(null, 'Batedeira', 92.00, 14),(null, 'Computador ExG', 3200.00, 5),
                                                    (null, 'Transferidor', 27.00, 104),(null, 'Jarro Div', 37.00, 16),(null, 'Jaqueta Div', 87.00, 19);
create table orcamentos(
	id int auto_increment primary key,
    dataCriado date not null,
    statusOrc tinyint not null
);
INSERT INTO orcamentos (id, dataCriado, statusOrc) VALUES (null, '2014-08-22', 3),(null, '2014-09-10', 2),(null, '2014-09-11', 2),(null, '2014-09-19', 2),(null, '2014-09-25', 2),
															(null, '2014-10-09', 3),(null, '2014-10-12', 2),(null, '2014-12-17', 3),(null, '2014-12-23', 2),(null, '2015-02-13', 2),
															(null, '2015-02-14', 3),(null, '2015-06-26', 2),(null, '2015-10-27', 2),(null, '2016-03-21', 3),(null, '2016-05-02', 3),
															(null, '2016-09-21', 2),(null, '2017-04-18', 3),(null, '2017-11-16', 2),(null, '2018-03-22', 3),(null, '2018-06-15', 2),
															(null, '2018-09-24', 2),(null, '2018-12-10', 2),(null, '2019-09-27', 2),(null, '2020-07-25', 2),(null, '2020-10-08', 1),
															(null, '2021-09-13', 3),(null, '2021-10-19', 1),(null, '2022-02-17', 1),(null, '2022-03-05', 2),(null, '2022-03-07', 2);

create table orcamentos_produtos(
	id_prod int,
    id_orc int,
    valor_unit double(10,2) not null,
    qtd int not null,
    valor_total_item double(12,2) not null,
    constraint p_fk_op
		foreign key(id_prod) references produtos(id)
			on update cascade on delete set null,
	constraint o_fk_op
		foreign key(id_orc) references orcamentos(id)
			on update cascade on delete set null
);
INSERT INTO orcamentos_produtos (id_prod, id_orc, valor_unit, qtd, valor_total_item) VALUES (1, 1, 48.00, 3, (valor_unit*qtd)),(2, 1, 1010.00, 2, (valor_unit*qtd)),
																							(4, 2, 30.00, 6, (valor_unit*qtd)),(1, 2, 48.00, 1, (valor_unit*qtd)),
																							(6, 2, 100.00, 3, (valor_unit*qtd)),(3, 3, 1550.00, 3, (valor_unit*qtd)),
																							(7, 4, 3400.00, 13, (valor_unit*qtd)),(8, 5, 30.00, 2, (valor_unit*qtd)),
																							(10, 5, 90.00, 5, (valor_unit*qtd)),(9, 6, 38.00, 1, (valor_unit*qtd)),
																							(4, 6, 30.00, 3, (valor_unit*qtd)),(1, 7, 48.00, 1, (valor_unit*qtd)),
																							(3, 7, 1550.00, 7, (valor_unit*qtd)),(5, 7, 2.00, 1, (valor_unit*qtd)),
																							(2, 8, 1010.00, 10, (valor_unit*qtd)),(7, 9, 3400.00, 1, (valor_unit*qtd)),
																							(9, 10, 38.00, 1, (valor_unit*qtd)),(10, 10, 90.00, 1, (valor_unit*qtd)),
																							(8, 11, 30.00, 6, (valor_unit*qtd)),(5, 11, 2.00, 10, (valor_unit*qtd)),
                                                                                            (1, 12, 48.00, 2, (valor_unit*qtd)),(8, 12, 30.00, 2, (valor_unit*qtd)),
																							(1, 13, 48.00, 3, (valor_unit*qtd)),(6, 13, 100.00, 9, (valor_unit*qtd)),
                                                                                            (2, 14, 1010.00, 4, (valor_unit*qtd)),(4, 14, 30.00, 4, (valor_unit*qtd)),
																							(4, 15, 30.00, 2, (valor_unit*qtd)),(10, 15, 90.00, 3, (valor_unit*qtd)),
                                                                                            (5, 16, 2.00, 5, (valor_unit*qtd)),(4, 16, 30.00, 2, (valor_unit*qtd)),
																							(2, 17, 1010.00, 2, (valor_unit*qtd)),(1, 17, 48.00, 7, (valor_unit*qtd)),
                                                                                            (9, 18, 38.00, 3, (valor_unit*qtd)),(3, 18, 1550.00, 9, (valor_unit*qtd)),
																							(7, 19, 3400.00, 2, (valor_unit*qtd)),(1, 20, 48.00, 3, (valor_unit*qtd)),
                                                                                            (2, 20, 1010.00, 4, (valor_unit*qtd)),(7, 20, 3400.00, 1, (valor_unit*qtd)),
																							(5, 21, 2.00, 2, (valor_unit*qtd)),(8, 21, 30.00, 3, (valor_unit*qtd)),
                                                                                            (6, 21, 100.00, 8, (valor_unit*qtd)),(9, 22, 38.00, 1, (valor_unit*qtd)),
																							(1, 22, 48.00, 3, (valor_unit*qtd)),(10, 22, 90.00, 1, (valor_unit*qtd)),
                                                                                            (3, 23, 1550.00, 6, (valor_unit*qtd)),(4, 24, 30.00, 2, (valor_unit*qtd)),
																							(7, 25, 3400.00, 3, (valor_unit*qtd)),(5, 25, 2.00, 1, (valor_unit*qtd)),
                                                                                            (10, 26, 90.00, 2, (valor_unit*qtd)),(2, 26, 1010.00, 1, (valor_unit*qtd)),
																							(2, 27, 1010.00, 2, (valor_unit*qtd)),(8, 27, 30.00, 9, (valor_unit*qtd)),
                                                                                            (5, 28, 2.00, 4, (valor_unit*qtd)),(4, 28, 30.00, 3, (valor_unit*qtd)),
																							(1, 28, 48.00, 2, (valor_unit*qtd)),(7, 29, 3400.00, 1, (valor_unit*qtd)),
                                                                                            (6, 29, 100.00, 6, (valor_unit*qtd)),(2, 30, 1010.00, 2, (valor_unit*qtd));
-- Orçamentos p produto (?)
select P.nome as 'Produto	|', O.id as 'ID Orçamento	|'
from orcamentos_produtos OP
	inner join produtos P on OP.id_prod = P.id
    inner join orcamentos O on OP.id_orc = O.id
order by P.id asc;
-- Valor produtos orçados p/ período
select O.id as 'ID Orçamento	', SUM(OP.valor_total_item) as 'Valor Produtos Orçados em 2022-03'
from orcamentos_produtos OP
	inner join orcamentos O on OP.id_orc = O.id
where O.dataCriado like '2022-03-%' and O.statusOrc <> 3
group by O.id;
-- Produtos Computador e com estoque
select DISTINCT(P.nome) as 'Produto	|', P.saldo as 'Estoque	|'
from orcamentos_produtos OP
	inner join produtos P on OP.id_prod = P.id
having P.nome like 'Computador%' and P.saldo > 0;
-- top 10 setembro 2014, com saldo e acima de 500
select P.nome as 'Produto	|', P.saldo as 'Estoque	|', SUM(OP.valor_total_item) as 'Valor orçado em 2014-09'
from orcamentos_produtos OP
	inner join produtos P on OP.id_prod = P.id
    inner join orcamentos O on OP.id_orc = O.id
where P.saldo > 0 and OP.valor_unit > 500 and O.dataCriado like '2014-09-%'
group by P.nome
order by SUM(OP.valor_total_item) desc;

-- Transformar isso aqui tudo numa view

-- Valor top 10 orçados p/ setembro 2014, saldo, id orcamentos e apenas com estoque e acima de 500, 
CREATE VIEW top_10_produtos_setembro_2014 AS 
select P.nome as 'Produto', SUM(OP.valor_total_item) as 'Valor orçado período de 09/2014', P.saldo as 'Estoque', O.id as 'Orçamento'
from orcamentos_produtos OP
	inner join produtos P on P.id = OP.id_prod
    inner join orcamentos O on O.id = OP.id_orc
where O.dataCriado LIKE '2014-09-%' AND OP.valor_unit > 500 AND P.saldo > 0 AND O.statusOrc <> 3
GROuP BY P.nome /*Se agrupar por id de orçamento, o valor total da nota é considerado e não de cada produto, cuja nota pode aparecer mais de uma vez*/
ORDER BY SUm(OP.valor_total_item) DESC
LIMIT 10;

select * from top_10_produtos_setembro_2014;

-- deletar oq não foi orçado
delete P
from produtos P
	left join orcamentos_produtos OP on OP.id_prod = P.id
where OP.id_prod is null;
