create table socios(
    numSocio int auto_increment primary key,
    nome varchar(50) not null,
    endereco varchar(70) not null,
    codTipoSocio int not null default 0,
    descTipoSocio varchar(45) not null
);

create table servicos(
    codServico int auto_increment primary key,
    descricao varchar(50) not null,
    mesRef datetime not null,
    valPago decimal(9,2) not null
);

create table ordemServico(
    numOrdemSev int auto_increment primary key,
    dataEmissao datetime not null,
    numSocio int not null,
    codServ int not null,
    constraint os_fk_ordemserv_socio
        foreign key(numSocio) references socios(numSocio)
        on delete restrict
        on update cascade,
    constraint os_fk_ordemserv_servico
        foreign key(codServ) references servicos(codServico)
        on delete restrict
        on update cascade
);


insert into socios
values (1234, 'Lucas Damasceno da Silva', 'Barão do Rio Branco, 331, Centro, Torres, RS', 1, 'Sócio de plano médio');
insert into socios
values (4321, 'Márcia Silveira Magalhães', 'Coronel Pacheco, 455, Centro, Torres, RS', 3, 'Sócio de plano senior');
insert into socios
values (2431, 'Pedro Alcântara Filho', 'Barão do Rio Branco, 045, Centro, Torres, RS', 5, 'Sócio de plano familiar - membro');

insert into servicos
values (12, 'Aluguel - Campo Futebol 7', '2021-04-28 19:00:00', 706.52);
insert into servicos
values (34, 'Aluguel - Pista de kart', '2020-01-13 14:00:00', 1200.50);
insert into servicos
values (7, 'Entrada - Teatro 03', '2020-01-27 15:30:00', 27.30);

insert into ordemServico
values (15973, '2021-04-28 10:37:12', 1234, 12);
insert into ordemServico
values (12678, '2020-01-05 11:17:45', 4321, 34);
insert into ordemServico
values (23489, '2020-01-27 10:37:38', 2431, 7);
insert into ordemServico
values (23490, '2020-01-27 10:37:38', 2431, 34);

select * from servicos
where valPago > 500;

select * from servicos
where mesRef like '2020-01-%';

select * from socios
where endereco like "Barao do Rio Branco%";