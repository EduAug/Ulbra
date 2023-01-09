create table dados_aluguel(
    cpf varchar(12) primary key,
    nome varchar(60) not null,
    telefone varchar(12) not null,
    endereco varchar(70) not null
);

create table carros(
    placaCarro varchar(8) primary key,
    modelo varchar(10) not null,
    codMarca int not null,
    marca varchar(10) not null,
    ano int not null,
    dataAluguel datetime not null,
    dataDevolucao datetime not null,
    valor decimal(18,2) not null
);

create table registro_aluguel(
    numRegistroAluguel int auto_increment primary key,
    clienteAluga varchar(12) not null,
    carroAlugado varchar(8) not null,
    constraint registro_fk_cliente_registra
        foreign key(clienteAluga) references dados_aluguel(cpf)
        on delete restrict
        on update cascade,
    constraint registro_fk_carro_registra
        foreign key(carroAlugado) references carros(placaCarro)
        on delete restrict
        on update cascade
);

insert into dados_aluguel
values ('12345678901', 'José Silva e Silva', '51987654321', '16 de Outubro, 830, Centro, Guarapariranga, RS');
insert into dados_aluguel
values ('10987654321', 'Pedro Silveira Pinheiro', '21987654321', 'Padre Candido, 007, Alvorada, Coronel Alicio, SP');

insert into carros
values ('A1B2C3Z', 'Fresno', 6, 'Bolkswagen', 2004, '2021-09-01 08:20:37', '2021-09-30 12:20:05', 6874.01);
insert into carros
values ('AD8094T', 'Highender', 18, 'Fiord', 2020, '2022-08-14 15:28:41', '2022-08-16 12:00:05', 1486.13);

insert into registro_aluguel
values (NULL, '12345678901', 'A1B2C3Z');
insert into registro_aluguel
values (NULL, '10987654321', 'AD8094T');

select * from carros
where dataAluguel like "%-09-%";

select * from dados_aluguel
where nome like "%Silva %";

update carros
set valor = valor * 1.2;
-- ou select valor, 1.2*valor as 'valor acrescido' from carros;