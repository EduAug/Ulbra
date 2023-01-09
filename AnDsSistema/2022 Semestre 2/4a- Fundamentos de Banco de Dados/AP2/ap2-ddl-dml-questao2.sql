create table pesquisadores(
    codPesquisador int auto_increment primary key,
    nome varchar(50) not null
);

create table artigos(
    codArtigo int auto_increment primary key,
    titulo varchar(90) not null,
    pagInicial int not null default 0,
    pagFinal int not null,
    codPeriodico int not null unique,
    tituloPeriodico varchar(30) not null,
    editora varchar(20) not null,
    codPesquisador int not null,
    constraint artigos_fk_artigo_pesquisador
    foreign key(codPesquisador) references pesquisadores(codPesquisador)
);

insert into pesquisadores
values (1234564, 'Lucas Américo Machado');
insert into pesquisadores
values (7006528, 'João Jacques de Janeiro');
insert into pesquisadores
values (1234567, 'Carlos João Cardume');

insert into artigos
values (1234, 'Condensação climática sul-brasileira', default, 68, 333651, 'Cond. clim. sul-br', 'Namídea', 7006528);
insert into artigos
values (null, 'Limpeza oceânica das Estrelas-do-mar', 14, 134, 287020, 'Lim. ocean. das Estrelas', 'Saraiva', 1234564);

select * from artigos
where codArtigo = 1234;

select * from artigos
where editora = "Saraiva";

select * from pesquisadores
where nome like "Joao %";