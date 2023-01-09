create table categorias(
    codigo int auto_increment primary key,
    nome varchar(30) not null
);

create table fornecedores(
    codigo int auto_increment unique,
    nome varchar(30) not null
);

create table produtos(
    codigo int auto_increment primary key,
    categoria int,
    descricao varchar(70) not null,
    data_cadastro datetime not null,
    valor_unitario decimal(12,2),
    constraint produtos_fk_categorias
        foreign key(categoria) references categorias(codigo)
        on delete restrict
        on update cascade
);

create table pedidos(
    quantidade int primary key,
    valor_unitario decimal(12,2),
    data_ datetime not null,
    cod_prod int,
    cod_fornec int,
    constraint pedidos_fk_produtos
        foreign key(cod_prod) references produtos(codigo)
        on delete restrict
        on update cascade,
    constraint pedidos_fk_fornecedores
        foreign key(cod_fornec) references fornecedores(codigo)
        on delete restrict
        on update cascade
);

-- Tabelas só por desencargo de consciência

insert into categorias values(null, 'limpeza');
insert into categorias values(null, 'acessorios');
insert into categorias values(null, 'cozinha');

insert into fornecedores values(null, 'Gerson Sousa');
insert into fornecedores values(null, 'Candido & Filhos ltda');
insert into fornecedores values(null, 'Stobras');

insert into produtos values(null, 1, 'Pano de prato TecFio', '2022-11-14 10:02:42', 7.56);
insert into produtos values(null, 1, 'Esponja Bobrilho', '2022-11-14 10:14:36', 2.34);
insert into produtos values(null, 2, 'Pulseira Padlijja', '2022-11-10 13:25:00', 8.90);
insert into produtos values(null, 2, 'Bone Agapunhal', '2022-11-11 09:02:14', 22.37);
insert into produtos values(null, 3, 'Espatula Inox P.', '2022-11-10 12:23:34', 28.99);
insert into produtos values(null, 3, 'Frigideira Diversos', '2022-11-09 11:48:09', 17.34);

insert into pedidos values(35, 8.00, '2022-11-14 18:10:19', 1, 1);
insert into pedidos values(50, 30.00, '2022-11-14 10:20:28', 5, 2);
insert into pedidos values(15, 10.20, '2022-11-13 15:43:55', 3, 3);

-- Entradas apenas para teste

-- 1.
select *
from produtos
order by descricao asc

-- 2.
select Pr.descricao as Produto, Fo.nome as Fornecedor
from pedidos Pe, produtos Pr, fornecedores Fo
where Pe.cod_prod=Pr.codigo and Pe.cod_fornec=Fo.codigo

-- 3.
select Pr.descricao as Nome, Ca.nome as Categoria
from pedidos Pe, produtos Pr, categorias Ca
where Pr.codigo=Pe.cod_prod and Ca.codigo=Pr.categoria

-- 4.
select Fo.nome as Fornecedor, Pe.data_ as 'Último Pedido', Pr.descricao as 'Descrição Pedido'
from fornecedores Fo, pedidos Pe, produtos Pr
where Pe.cod_prod=Pr.codigo and Pe.cod_fornec=Fo.codigo