create table professor_exe(
    id_prof int not null primary key,
    nome_prof varchar(100) not null
);

create table disciplina_exe(
    id_disc int not null primary key,
    nome_disciplina varchar(100) not null,
    qtd_alunos int not null,
    id_professor int not null,
    constraint professor_leciona_disciplina
    foreign key(id_professor) references professor_exe(id_prof)
);

create table software_exe(
    id_soft int not null primary key,
    nome_software varchar(100) not null,
    fabricante varchar(100) not null
);

create table disc_soft(
    id_discip_usa_soft int not null primary key,
    id_disciplina int not null,
    id_software int not null,
    constraint disciplina_usa_software
    foreign key(id_disciplina) references disciplina_exe(id_disc),
    constraint software_usado_disciplina
    foreign key(id_software) references software_exe(id_soft)
);

-- Correção by Cassio ↓ --

create table professores(
    id int not null auto_increment primary key,
    nome varchar(100) not null
);

create table disciplinas(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    id_professor int not null,
    constraint professores_ensinam_disciplinas
    foreign key(id_professor) references professores(id)
);

create table softwares(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    fabricante varchar(100)
);

create table disciplinas_tem_softwares(
    id_disciplina int not null,
    id_software int not null,
    constraint fk_disciplinas_disciplinas_tem_softwares 
    foreign key(id_disciplina) references disciplinas(id),
    constraint fk_softwares_disciplinas_tem_software
    foreign key(id_software) references softwares(id)
);