create table clientes(
	id int auto_increment primary key,
    nome varchar(50) not null
);
-- insert into clientes values(null, "Patrick"),(null, "Peter"),(null, "Pit"),(null, "Po"),(null, "Pumba");
create table livros(
	id int auto_increment primary key,
    titulo varchar(30) not null,
    valor_unit double(6,2) not null
);
/*insert into livros values	(null, "DBAdvanced", 99.90),(null, "HowToModeL", 180.53),(null, "ProperHtmlProjects", 105.89),
							(null, "SQLittle-ler", 94.65),(null, "C, The Reckoning", 359.90),(null, "SOS - O.S.", 112.10);*/
create table autores(
	id int auto_increment primary key,
    nome varchar(50) not null
);
-- insert into autores values(null, "Jimmy"),(null, "Joe"),(null, "Johnson"),(null, "Lightning"),(null, "Zema N. E.");
create table autores_livros(
	id_autor int,
    id_livro int,
    constraint a_fk_al
		foreign key(id_autor) references autores(id)
			on update cascade
            on delete set null,
	constraint l_fk_al
		foreign key(id_livro) references livros(id)
			on update cascade
            on delete set null
);
-- insert into autores_livros values(1, 1),(1, 2),(2, 3),(3, 4),(3, 5),(4, 6);
create table vendas(
	id int auto_increment primary key,
    dataVenda date not null,
    id_cliente int,
    constraint c_fk_v
		foreign key(id_cliente) references clientes(id)
			on update cascade
            on delete set null
);
/*insert into vendas values	(null, "2017-11-23",1),(null, "2017-12-06",1),(null, "2017-12-23",2),(null, "2017-12-25",3),(null, "2018-02-26",4),(null, "2018-02-27",4),(null, "2018-02-27",3),
							(null, "2018-03-06",2),(null, "2018-03-06",5),(null, "2018-03-17",4),(null, "2018-03-19",1),(null, "2018-03-20",5),(null, "2018-03-23",4),(null, "2018-03-23",2);
*/create table vendas_livros(
	id int auto_increment primary key,
    qtd int not null default 1,
    valor_unit double(7,2) not null,
    id_livro int,
	constraint l_fk_vl
		foreign key(id_livro) references livros(id)
			on update cascade
            on delete set null
);
 insert into vendas_livros values	(null, 5,110,1),(null, 2,190,2),(null, 1,110,3),(null, 3,96,4),(null, 1,365,5),(null, 2,115,6),(null, 3,110,1),(null, DEFAULT,110,3),
									(null, 4,110,1),(null, 1,115,6),(null, 7,96,4),(null, 2,115,6),(null, 1,190,2),(null, 2,96,4); 

-- Criar view com livros mais vendidos e seus dados respectivos

create view livros_mais_vendidos as 
select L.titulo as Titulo, A.nome as Autor, VL.valor_unit as Preco, SUM(VL.qtd) as Quantidade_vendida_total, COUNT(VL.qtd) as Quantia_vendida_por_venda
from vendas_livros VL
	inner join livros L on L.id = VL.id_livro
    inner join autores_livros AL on L.id=AL.id_livro
    inner join autores A on A.id=AL.id_autor
group by L.titulo
order by SUM(VL.qtd) desc;

select * from livros_mais_vendidos;


-- Criar view com autores sem publicações


create view autores_sem_publicacoes as
select A.nome
from vendas_livros VL
	inner join livros L on L.id = VL.id_livro
    inner join autores_livros AL on L.id=AL.id_livro
    right join autores A on A.id=AL.id_autor
where AL.id_livro is null;

select * from autores_sem_publicacoes;


-- Criar view com a data de última venda de cada livro

create view ultimas_vendas as
select L.titulo as Titulo, MAX(V.dataVenda) as Data_Venda
from vendas_livros VL
	inner join vendas V on V.id=VL.id			-- Comentário pra justificar a lógica, achei estranho não ter um id de venda em vendas_itens, "por sorte", as ids coincidiram
	inner join livros L on L.id=VL.id_livro
group by L.id;
    
select * from ultimas_vendas;