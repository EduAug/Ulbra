aluno(id, nome)
departamento (id, nome)
curso(id, nome, id_depto)
  id_depto referencia departamento (id)
professor(id, nome)
disciplina(id, nome, id_prof)
   id_prof referencia professor(id)
matricula(id_disciplina, id_aluno, data_matr)
    id_disciplina referencia disciplina(id) 
   id_aluno referencia aluno(id);

create table alunos(
    id int not null auto_increment primary key,
    nome varchar(100)
);

create table departamentos(
    id int not null auto_increment primary key,
    nome varchar(100)
);

create table cursos(
    id int not null auto_increment primary key,
    nome varchar(100),
    id_depto int not null,
    constraint fk_cursos_ref_departamentos
    foreign key(id_depto) references departamentos(id)
);

create table professores(
    id int not null auto_increment primary key,
    nome varchar(100)
);

create table disciplinas(
    id int not null auto_increment primary key,
    nome varchar(100),
    id_prof int not null,
    constraint fk_disciplinas_ref_professores
    foreign key(id_prof) references professores(id)
);

create table matriculas(
    id_disciplina int not null,
    id_aluno int not null,
    data_matr date,
    constraint fk_matriculas_references_disciplinas
    foreign key(id_disciplina) references disciplinas(id),
    constraint fk_matriculas_references_alunos
    foreign key(id_aluno) references alunos(id)
);