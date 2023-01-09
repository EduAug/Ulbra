-- 1
create table cidades(
    codcid int auto_increment primary key,
    nome varchar(30) not null,
    UF char(2) not null
);

create table medicamentos(
    codmedicamento int auto_increment primary key,
    nome varchar(50) not null,
    composicao varchar(100) not null,
    preco decimal(11,2) not null default 0--123,456,789.01
);

create table medicos(
    codmed int auto_increment primary key,
    nome varchar(70) not null,
    endereco varchar(100) not null,
    telefone char(20) not null,
    crm char(10) not null unique,
    cpf char(11) not null unique,
    codcid int,
    constraint medicos_fk_medicos_cidades
        foreign key(codcid) references cidades(codcid)
        on delete restrict
        on update cascade
);

create table pacientes(
    codpac int auto_increment primary key,
    nome varchar(70) not null,
    endereco varchar(100) not null,
    telefone int not null,
    codcid int,
    constraint pacientes_fk_pacientes_cidades
        foreign key(codcid) references cidades(codcid)
        on delete restrict
        on update cascade
);

create table consultas(
    codconsulta int auto_increment primary key,
    data_cons date not null,
    hora_cons timestamp not null,
    codmed int not null,
    codpac int not null,
    constraint consultas_fk_medicos_consultas
        foreign key(codmed) references medicos(codmed)
        on delete restrict
        on update cascade,
    constraint consultas_fk_pacientes_consultas
        foreign key(codpac) references pacientes(codpac)
        on delete restrict
        on update cascade
);

create table prescricoes(
    codconsulta int primary key,
    codmedicamento int unique,
    posologia text not null,
    constraint prescricoes_fk_consulta_prescricoes
        foreign key(codconsulta) references consultas(codconsulta)
        on delete restrict
        on update cascade,
    constraint prescricoes_fk_medicamento_prescricoes
        foreign key(codmedicamento) references medicamentos(codmedicamento)
        on delete restrict
        on update cascade
);

-- 2
insert into cidades (nome, UF)
values ('Torres', 'RS');
insert into cidades (nome, UF)
values ('São Paulo', 'SP');
insert into cidades (nome, UF)
values ('Porto Alegre', 'RS');

insert into medicamentos (nome, composicao, preco)
values ('BandAid 40un.', 'Fita cirurgica, Algodão', 12.90);
insert into medicamentos (nome, composicao, preco)
values ('Neosaldina 30dgs.', 'Dipirona sodica 300mg, mucato de isometepteno 30mg, cafeína anidra 30mg', 28.90);
insert into medicamentos (nome, composicao, preco)
values ('Gen. Fluoxetina 30comp.', 'Cloridrato de Fluoxetina 22.36mg, amido, celulose microcristalina, hipromelose', 25.63);

insert into medicos (nome, endereco, telefone, crm, cpf, codcid)
values ('João Alastor Pinheiro', 'Pablo Picasso 380, Apto. 473 Beira Mar, Iguape, SP', 13912345678, 123456789, 12345678901, 2 );
insert into medicos (nome, endereco, telefone, crm, cpf, codcid)
values ('Paola D`Anastásio Américo', 'XXXXX XXXX, XX, Centro, Torres, RS', 51912345678, 987654321, 00011122233, 1 );
insert into medicos (nome, endereco, telefone, crm, cpf, codcid)
values ('Marco Antônio Reverendo Filho', 'Rua Exemplo 002, Apto. 014, Bairro Exemplo, Cidade Não Registrada, RS', 51987654321, 987656789, 83672094312, 3 );

