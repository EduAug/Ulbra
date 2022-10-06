create table funcionarios(
    matricula int not null auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    senha int not null
);

create table projetos(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    descricao char(50),
    is_type_melhoria tinyint(1) not null
);

create table melhoria_processos(       -- create if projetos(is_type_melhoria)=1 ?
    id_projeto_gen int not null,
    departamento varchar(50) not null,
    resultados varchar(50) not null,
    constraint projeto_melhoria
        foreign key(id_projeto_gen)
            references projetos(id)
);

create table social(                 -- create if projetos(is_type_melhoria)=0 ?
    id_projeto_gen int not null,
    publico_beneficiario varchar(50) not null,
    constraint proejto_social
        foreign key(id_projeto_gen)
            references projetos(id)
);

create table funcionarios_participam_projetos(
    id_participante int not null auto_increment primary key,
    id_funcionario int not null,
    constraint fk_funcionarios_funcionarios_participam_projetos
        foreign key(id_funcionario) 
            references funcionarios(matricula),
    id_projeto int not null,
    constraint fk_projetos_funcionarios_participam_projetos
        foreign key(id_projeto)
            references projetos(id)
);

create table comentarios(
    id int not null auto_increment primary key,
    data_comentario date,
    user_comment int not null,
    constraint id_comentador
        foreign key(user_comment)
            references funcionarios(matricula)
);

create table equipes(
    id int not null auto_increment primary key,
    id_coordenador int not null,
    constraint coordernador_equipe
        foreign key(id_coordenador)
            references funcionarios(matricula)
);

create table colaboradores(
    id_equipe int not null,
    constraint equipe_dos_colaboradores
        foreign key(id_equipe)
            references equipes(id),
    id_colaborador int not null,
    constraint colaboradores_da_equipe
        foreign key(id_colaborador)
            references funcionarios(matricula)
);