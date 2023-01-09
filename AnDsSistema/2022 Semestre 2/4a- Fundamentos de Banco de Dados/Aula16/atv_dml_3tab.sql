create table planos(
    idplano char(1) primary key,
    descricaoplano varchar(10) not null
);

create table musculos(
    idmusc char(2) primary key,
    descricaoregiao varchar(20) not null
);

create table maquinas(
    id int auto_increment primary key,
    nome varchar(20) not null,
    regiaotrabalhada char(2) not null,
    constraint maquinas_fk_regiaomuscular
        foreign key(regiaotrabalhada) references musculos(idmusc)
            on delete restrict
            on update cascade
);

create table alunos(
    id int auto_increment primary key,
    nome varchar(50) not null,
    data_ingresso date,
    plano char(1),
    constraint alunos_fk_plano  
        foreign key(plano) references planos(idplano)
            on delete restrict
            on update cascade
);

create table treinos(
    idtreino int,
	datatreino datetime not null,
    series int not null,
    repeticoes int not null,
    aluno int not null,
    maquina int not null,
    constraint treinos_fk_aluno
		foreign key(aluno) references alunos(id)
			on delete restrict
            on update cascade,
	constraint treinos_fk_maquinas
		foreign key(maquina) references maquinas(id)
			on delete restrict
            on update cascade
);

-- Popular &

insert into planos values('T','Teste');
insert into planos values('I','Inicial');
insert into planos values('B','Básico');
insert into planos values('M','Meio');
insert into planos values('C','Completo');
insert into planos values('P','Plus');

insert into musculos values('MS','Membros Sup.');
insert into musculos values('MI','Membros Inf.');
insert into musculos values('CO','Core');
insert into musculos values('BK','Costas');

insert into maquinas values(
    null, 'Banco Supino', 'MS' 
);
insert into maquinas values(
    null, 'Torre Puxada Alta', 'MS'
);
insert into maquinas values(
    null, 'Esteira', 'MI'
);
insert into maquinas values(
    null, 'Colchonete Abd.', 'CO'
);
insert into maquinas values(
    null, 'Torre Remada Alta', 'BK'
);
insert into maquinas values(
    null, 'Bicicleta Ergo.', 'MI'
);

insert into alunos values(
    null, 'José da Silva', '2022-11-28', 'T'
);
insert into alunos values(
    null, 'Bruna Silveira', '2022-10-20', 'I'
);
insert into alunos values(
    null, 'Pedro Paulo Paulista', '2022-07-30', 'B'
);
insert into alunos values(
    null, 'Arnaldo Schwimmehaus', '2015-04-09', 'M'
);
insert into alunos values(
    null, 'Pedro Prado', '2020-01-15', 'C'
);
insert into alunos values(
    null, 'Ana Bolena Catarina', '2022-10-21', 'P'
);

insert into treinos values(
    1, '2022-11-27 08:03:26', 4, 10, 4, 1
);
insert into treinos values(
    1, '2022-11-27 08:15:33', 5, 10, 4, 2
);
insert into treinos values(
    1, '2022-11-27 08:31:04', 5, 15, 4, 5
);
insert into treinos values(
    2, '2022-11-27 12:28:22', 1, 40, 2, 3
);
insert into treinos values(
    2, '2022-11-27 13:20:07', 3, 15, 2, 1
);
insert into treinos values(
    3, '2022-11-27 13:21:29', 1, 30, 5, 3
);
insert into treinos values(
    3, '2022-11-27 13:57:16', 1, 20, 5, 6
);
insert into treinos values(
    4, '2022-11-27 19:13:34', 4, 20, 3, 1
);
insert into treinos values(
    4, '2022-11-27 19:22:17', 3, 15, 3, 2
);
insert into treinos values(
    5, '2022-11-27 23:43:49', 1, 15, 6, 3
);
insert into treinos values(
    5, '2022-11-28 00:05:03', 6, 12, 6, 4
);
insert into treinos values(
    5, '2022-11-28 00:21:49', 3, 15, 6, 2
);
insert into treinos values(
    6, '2022-11-28 13:03:26', 1, 30, 4, 6
);
insert into treinos values(
    7, '2022-11-28 13:08:22', 4, 10, 1, 5
);

-- Tesar queries com 
--              função de agregação (minimo 2), joins, group by, having
--                   [2]                         [2]       [2]      [X]


-- contar quantos alunos foram a academia no dia 27 do 11
SELECT count(DISTINCT(aluno)) as 'Total Alunos no dia 27/11'
FROM treinos
WHERE datatreino like '%11-27%'

-- nomeie 3 alunos que possuem mais de 40 repetições por treino,
-- bem como a maquina responsável pela maior quantia de repetições
-- (series*repeticoes)
SELECT A.nome as 'Nome', MAX(T.series*T.repeticoes) as 'Repetições', M.id
FROM treinos T
	inner join alunos A on A.id=T.aluno
    inner join maquinas M on M.id=T.maquina
group by T.aluno, T.maquina
having MAX(T.series*T.repeticoes) > 40
order by MAX(T.series*T.repeticoes) desc
limit 3;