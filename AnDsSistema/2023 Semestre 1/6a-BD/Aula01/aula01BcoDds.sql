create table cidade(
	idcid int auto_increment primary key,
    nome varchar(45) not null,
    uf char(2) not null
);
create table produto(
	codprod int auto_increment primary key,
    descricao varchar(20),
    preco float not null,
    nomecategoria varchar(10),
    descricaocategoria varchar(30)
);
create table filial(
	codfilial int auto_increment primary key,
    nome varchar(45),
    endereco varchar(60) not null,
    codcid int,
    constraint cidade_fk_filial
		foreign key(codcid) references cidade(idcid)
			on update cascade
			on delete restrict
);
create table vende(
	codprod int not null,
    codfilial int not null,
    constraint produto_fk_vende
		foreign key(codprod) references produto(codprod)
			on update cascade
            on delete restrict,
	constraint filial_fk_vende
		foreign key(codfilial) references filial(codfilial)
			on update cascade
			on delete restrict
);
create table empregado(
	codemp int auto_increment primary key,
    nome varchar(45) not null,
    endereco varchar(50) not null,
    ct char(11) not null unique,
    rg char(9) not null unique,
    cpf char(11) not null unique,
    salario float not null,
    codcid int,
    codfilial int,
    constraint cidade_fk_empregado	
		foreign key(codcid) references cidade(idcid)
			on update cascade
			on delete restrict,
	constraint filial_fk_empregado
		foreign key(codfilial) references filial(codfilial)
			on update cascade
            on delete restrict
);

insert into cidade values( null, 'Torres','RS' ),( null, 'Porto Alegre', 'RS'),( null, 'Passo de Torres', 'SC');
insert into produto values( null, 'Gibi Diversos', 8.90, 'Livros', 'Livros,Gibis,Revistas,etc.' ),
						( null, 'Colher de Pedreiro', 15.60, 'Ferramenta', 'Ferramentas e Materiais' ),
						( null, 'Agenda H.P.', 60.99, 'Escritorio', 'Materiais de Escritorio' );
insert into filial values( null, 'JP Materiais de Construcao','Rua X, nro 123, centro', 3),
						( null, 'f3','Rua Y, nro 098, Arquipelago', 2);
insert into vende values( 4, 2 ),( 6, 2),( 5, 1);
insert into empregado values( null,'João Joestrela','Rua x, nro 456, Azenha', 95132486752, 123456789, 05843621750, 400.00, 2, 2 ),
							( null,'Pedro Prado','Rua w, nro 160, Centro', 30035879641, 987654321, 23697142589, 1000.00, 1, 1 ),
							( null,'Betty Brant','Rua l, nro 856, Belatorres', 02649873152, 123789465, 64213598700, 550.00, 3, 1 );
-- Questões
select preco as 'Valor mais alto', descricao as 'Produto'
from produto
order by preco desc
limit 1;
-- ou
select MAX(preco) as 'Valor mais alto'
from produto;

select AVG(preco) as 'Média de valor dos produtos vendidos'
from produto;

select p.descricao as 'Produto'
from produto p
	inner join vende v on v.codprod=p.codprod
    inner join filial f on v.codfilial=f.codfilial
where f.nome LIKE 'f3';

select e.nome as 'Nome', e.rg as 'RG', e.salario as 'Salario'
from empregado e
	inner join cidade c on e.codcid = c.idcid
where c.uf LIKE 'RS' AND e.salario > 500;

-- Questões 4 e 5 abaixo (novas tabelas)
create table tb2Cat(
	codcat int auto_increment primary key,
    nome varchar(20) not null,
    descricao varchar(50)
);
create table tb2Cid(
	codcid int auto_increment primary key,
    nome varchar(30) not null,
    UF char(2) not null
);
create table tb2Aut(
	codautor int auto_increment primary key,
    nome varchar(50) not null,
    codcid int,
    constraint cid_fk_autor
		foreign key(codcid) references tb2Cid(codcid)
			on update cascade
            on delete restrict
);
create table tb2Cli(
	codcliente int auto_increment primary key,
    nome varchar(50) not null,
    endereco varchar(60),
    codcid int,
    constraint cid_fk_cliente
		foreign key(codcid) references tb2Cid(codcid)
			on update cascade
            on delete restrict
);
create table tb2Liv(
	codlivro int auto_increment primary key,
    titulo varchar(30) not null,
    nfolhas int not null,
    editora varchar(15) not null,
    valor float not null,
    codautor int,
    codcat int,
    constraint aut_fk_livro
		foreign key(codautor) references tb2Aut(codautor)
			on update cascade
			on delete restrict,
	constraint cat_fk_livro
		foreign key(codcat) references tb2Cat(codcat)
			on update cascade
            on delete cascade
);
create table tb2Ven(
	quantidade int not null,
    datavenda datetime not null,
    codlivro int,
    codcliente int,
    constraint liv_fk_venda
		foreign key(codlivro) references tb2Liv(codlivro)
			on update cascade
            on delete set null,
	constraint cli_fk_venda
		foreign key(codcliente) references tb2Cli(codcliente)
			on update cascade
            on delete set null
);

insert into tb2Cat values(null,'banco de Dados','Documentação para MySql,Sql,Postgre,...'),(null,'Desenvolvimento Web','Livros sobre HTML,PHP,JS,...'),
						(null,'Frameworks1','Livros de Bootstrap,Laravel,Angular,...'),(null,'Infantil','Literatura voltada para criancas');
insert into tb2Cid values(null,'Jaruabilo','RS'),(null,'Tramandai','RS'),(null,'Santa Rosa do Sul','SC');
insert into tb2Aut values(null,'Reed Richards',1),(null,'Caesar Zeppeli',2),(null,'Bruno Miller',3);
insert into tb2Cli values(null,'Mike W.','rua X,nro 1,bairro z',1),(null,'James P. Sullivan','rua X,nro 1,bairro z',1),
						(null,'Randall B.','rua W,nro 614,bairro h',1),(null,'Yusuke U.','rua K,nro 339,bairro J',2),
						(null,'Josuke H.','rua M,nro 048,bairro J',3),(null,'Axl L.','rua G,nro 198,bairro b',3);
insert into tb2Liv values(null,'Banco de dados powerful',198,'Novatech',156.35,1,1),(null,'PostgreSQL Vol. 17',115,'Novatech',226.75,1,1),
						(null,'Hello, Oracle!',368,'Oldtech',307.65,1,1),(null,'The ´Query´ in SQL',203,'Filamento',127.89,1,1),
                        (null,'Amigo do Mongo',106,'Filamento',98.99,1,1),(null,'HTMeLhor',213,'Novatech',150.00,1,2),
						(null,'ProgramHtmlProperly',267,'Agosto',299.98,2,2),(null,'FrameWorld Vol.2',121,'Agosto',426.99,2,3),
                        (null,'Bootstrap 6: Recomeco',381,'Jiripocapewpew',305.00,3,3),(null,'React Frame-a-Frame',204,'Novatech',102.80,3,3),
                        (null,'Voe com Vue',315,'Agosto',150.20,3,3),(null,'Scratch:Primeiros Passos',150,'Mimdo',75.00,3,4);
insert into tb2Ven values(7,'2021-01-18 09:17:14',1,1),(1,'2021-01-18 09:20:36',1,2),(6,'2021-01-19 13:48:21',4,4),(3,'2021-01-21 19:30:11',2,5),
						(2,'2021-01-22 19:54:29',11,6),(2,'2021-01-29 13:12:11',7,4),(5,'2021-02-16 11:26:06',10,6),(2,'2021-02-23 15:03:12',6,3),
                        (15,'2021-02-27 13:48:21',12,5),(1,'2021-03-07 12:24:07',3,3),(2,'2021-03-08 08:50:09',9,2),(6,'2021-03-14 16:21:15',8,1),
						(3,'2021-03-18 09:17:14',5,5),(9,'2021-03-27 19:26:35',5,2),(128,'2021-04-01 23:10:01',3,2),(1,'2021-04-02 08:07:02',12,3);
-- Questões
select COUNT(tb2Ven.datavenda)
from tb2Ven;

select L.titulo as 'Título', L.valor as 'Preço', C.nome as 'Categoria'
from tb2Cat C
	inner join tb2Liv L on L.codcat = C.codcat
where C.nome LIKE 'banco de Dados';

select L.titulo as 'Título', A.nome as 'Autor', Cli.nome as 'Comprador', C.nome as 'Cidade' , C.UF as 'UF'
from tb2Liv L
	inner join tb2Aut A ON L.codautor = A.codautor
    inner join tb2Ven V ON L.codlivro = V.codlivro
    inner join tb2Cli Cli ON Cli.codcliente = V.codcliente
    inner join tb2Cid C ON C.codcid = Cli.codcid
where L.valor > 300
order by V.datavenda asc;

select Cli.nome as 'Comprador', L.titulo as 'Titulo'
from tb2Cli Cli
	inner join tb2Ven V on V.codcliente = Cli.codcliente
    inner join tb2Liv L on L.codlivro = V.codlivro;
    
select L.codlivro as 'Cod. Livro', L.titulo as 'Titulo', A.nome as 'Autor'
from tb2Liv L
	inner join tb2Aut A ON A.codautor = L.codautor
    inner join tb2Ven V ON V.codlivro = L.codlivro
where V.datavenda LIKE '2021-03%';

select L.titulo as 'Título', A.nome as 'Autor'
from tb2Liv L
	inner join tb2Aut A on A.codautor = L.codautor
    inner join tb2Ven V on V.codlivro = L.codlivro
where V.datavenda LIKE '2021-01%'
group by L.codlivro
order by SUM(V.quantidade) desc
limit 5;

select Cli.nome as 'Comprador'
from tb2Cli Cli 
	inner join tb2Ven V on V.codcliente = Cli.codcliente
    inner join tb2Liv L on L.codlivro = V.codlivro
where L.titulo LIKE 'Banco de dados powerful';