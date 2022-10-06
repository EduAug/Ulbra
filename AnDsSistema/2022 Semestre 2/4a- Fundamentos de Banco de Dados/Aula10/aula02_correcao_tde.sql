create table colaboladores(
    id int auto_increment primary key, 
    matricula varchar(20) not null unique,
    nome varchar(100) not null,
    email varchar(50) not null,
    senha varchar(30) not null,
    id_coordenador int not null,
    constraint coordenadores_fk_colaboradores
    foreign key(id_coordenador) references colaboladores(id)
    on delete set null
);

create table projetos(
    id int auto_increment primary key, 
    nome varchar(100) not null,
    descricao varchar(200),
    duracao int not null
);

create table projetos_comentarios(
    id int not null auto_increment primary key,
    data_hora datetime not null,
    id_colaborador int not null,
    id_projetos int not null,
    constraint colaboradores_fk_colaboradores_fazem_comentarios
    foreign key(id_colaborador) references colaboladores(id)
    on delete cascade,
    constraint projetos_fk_projetos_comentarios
    foreign key(id_projetos) references projetos(id)
    on delete cascade
    on update cascade
);

create table projetos_tem_colaboradores(
    id int auto_increment primary key, 
    id_projeto int not null,
    id_colaborador int not null,
    constraint projetos_fk_projetos_tem_colaboradores
    foreign key(id_projeto) references projetos(id)
    on delete cascade
    on update cascade,
    constraint colaboladores_fk_projetos_tem_colaboradores
    foreign key(id_colaborador) references colaboladores(id)
    on delete restrict
);

create table departamentos(
    id int auto_increment primary key,
    nome varchar(50) not null
);

create table projetos_melhoria_processo(
    id int auto_increment primary key,
    resultados_esperados varchar(500) not null,
    id_projeto int not null,
    id_departamento int not null,
    constraint projetos_fk_projetos_melhoria_processos
    foreign key(id_projeto) references projetos(id)
    on delete restrict
    on update restrict,
    constraint departamentos_fk_projetos_melhoria_processos
    foreign key(id_departamento) references departamentos(id)
    on delete restrict
);

create table projetos_sociais(
    id int auto_increment primary key,
    publico_beneficiario varchar(200) not null,
    id_projeto int not null,
    constraint projetos_fk_projetos_sociais
    foreign key(id_projeto) references projetos(id)
    on delete restrict
);
