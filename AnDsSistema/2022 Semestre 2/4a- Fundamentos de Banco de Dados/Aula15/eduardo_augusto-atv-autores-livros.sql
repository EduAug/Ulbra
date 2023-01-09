create table editoras(
    ideditora int auto_increment primary key,
    nome varchar(40) not null
);

create table assuntos(
    idassunto char(1) primary key,
    descricao varchar(40) not null
);

create table autores(
    matricula int auto_increment primary key,
    nome varchar(40) not null,
    cpf varchar(11) not null unique,
    endereco varchar(50) not null,
    data_nascimento date not null,
    nacionalidade varchar(30) not null
);

create table livros(
    idlivro int auto_increment primary key,
    titulo varchar(80) not null,
    preco float default '0.00',
    lancamento date,
    idassunto char(1),
    ideditora int,
    constraint livros_fk_assunto
        foreign key(idassunto) references assuntos(idassunto)
            on delete restrict
            on update cascade,
    constraint livros_fk_editora
        foreign key(ideditora) references editoras(ideditora)
            on delete restrict
            on update cascade

);

create table autores_livros(
    matricula int,
    idlivro int,
    constraint autorelivros_fk_autores
        foreign key(matricula) references autores(matricula)
            on delete restrict
            on update cascade,
    constraint autoreslivros_fk_livros
        foreign key(idlivro) references livros(idlivro)
            on delete restrict
            on update cascade
);

-- DB ↑
-- Insert ↓
-- Editoras
insert into editoras values(
    1, 'Mirandela Editora'
);
insert into editoras values(
    null, 'Editora Via-Norte'
);
insert into editoras values(
    null, 'Editora Ilhas Tijucas'
);
insert into editoras values(
    null, 'Maria José Editora'
);

-- Assuntos
insert into assuntos values(
    'B', 'Banco de Dados'
);
insert into assuntos values(
    'P', 'Programação'
);
insert into assuntos values(
    'R', 'Redes'
);
insert into assuntos values(
    'S', 'Sistemas Operacionais'
);

-- Livros
insert into livros values(
    1, 'Bancos de Dados para a Web', 31.20, "1999-01-10", 'B', 1
);
insert into livros values(
    null, 'Programando em Linguagem C', 30.00, "1997-10-01", 'P', 1
);
insert into livros values(
    null, 'Programando em Linguagem C++', 111.50, "1998-11-01", 'P', 3
);
insert into livros values(
    null, 'Bancos de Dados na Bioinformática', 48.00, null, 'B', 2
);
insert into livros values(
    null, 'Redes de Computadores', 42.00, "1996-09-01", 'R', 2
);

-- Autores
insert into autores values(
    null, 'José `João` Estrela', '01234567890', 'Rua 14 de Outubro, Centro, Lamentin, Guadalupe', "1967-04-13", 'Bielorrusso'
);
insert into autores values(
    null, 'Josué `Antônio` Coral', '09876543210', 'Rua 15 de Novembro, Beira-mar, Taranajarra, Brasil', "1986-12-07", 'Argentino'
);
insert into autores values(
    null, 'Abigail Flores de Oliveira', '03214569870', 'Avenida D`Agostin n°132, Centro, Atol, Colômbia', "1974-08-27", 'Brasileira'
);
insert into autores values(
    null, 'Johan Germanotta', '01478520369', 'William St, Beira-mar, Invercargill, Nova Zelândia', "1955-05-25", 'Inglesa'
);
insert into autores values(
    null, 'Ghostwriter', '00000000000', 'xxxx, xx, xxxxx, x', "00-00-00", 'Terrestre'
);
insert into autores values(
    null, 'José `Prodígio` Carvalho', '11120576412', 'Baker St., Zona Leste, Rio de Janeiro, Angola', "1991-02-13", 'Russo'
);

-- Autores_Livros
insert into autores_livros values(
    1, 1
);
insert into autores_livros values(
    4, 1
);
insert into autores_livros values(
    2, 2
);
insert into autores_livros values(
    2, 3
);
insert into autores_livros values(
    3, 3
);
insert into autores_livros values(
    6, 4
);
insert into autores_livros values(
    6, 5
);
insert into autores_livros values(
    5, 5
);
-- Insert ↑
-- SQLs 1 ↓
delete from livros
where idlivro >= 2 
    AND  preco > 50
    AND lancamento is not null  --Porque, se o lançamento for null, 
                                --ele ainda não foi lançado

select nome as 'Nome', cpf as 'CPF', endereco as 'Endereço'
from autores
where nome like 'José%'

delete from livros
where titulo like 'Banco de Dados Distribuído'
    OR titulo like 'Bancos de Dados Distribuídos'

select nome as 'Nome', cpf as 'CPF'
from autores
where data_nascimento > '1990-01-01'

select matricula as 'Matrícula', nome as 'Nome'
from autores
where endereco like '%Rio de Janeiro%'

update livros
set preco=0.00
where lancamento is null 
    or preco<55

delete from livros
where idassunto like 'R'

select count(matricula)
from autores


-- Acho que não compreendi direito a query dessa, média de autores/livro?
select (COUNT(A.matricula) / COUNT(L.idlivro)) as 'Avg Autores/Livro',
         L.titulo as 'Livro', 
         count(A.matricula) as 'Autores'
from autores_livros AL
    inner join autores A on A.matricula=AL.matricula
    inner join livros L on AL.idlivro=L.idlivro
where AL.matricula=A.matricula AND AL.idlivro=L.idlivro
group by A.matricula


SELECT livros.idlivro, livros.titulo
FROM livros 
	inner join autores_livros on livros.idlivro=autores_livros.idlivro
	inner join autores on autores.matricula=autores_livros.matricula
group by livros.idlivro
having /*Um "Where" no Group By*/ count(*)>1 
/*Onde a contagem de autores por livro é mais de um*/
order by livros.titulo ASC


SELECT AVG(L.preco) as 'Média', E.nome as 'Editora'
FROM livros L
	left join autores_livros AL on L.idlivro=AL.idlivro
    left join autores A on A.matricula=AL.matricula
    left join editoras E on L.ideditora=E.ideditora
WHERE L.preco > 45
group by E.ideditora


SELECT MAX(L.preco) as 'Máximo', min(L.preco) as 'Mínimo', AVG(L.preco) as 'Média', E.nome as 'Editora'
FROM livros L
	inner join autores_livros AL on L.idlivro=AL.idlivro
    inner join autores A on A.matricula=AL.matricula
    inner join editoras E on L.ideditora=E.ideditora
where L.idassunto like 'S' OR L.idassunto like 'P' OR L.idassunto LIke 'B'
GROUP by E.ideditora


SELECT MAX(L.preco) as 'Máximo', min(L.preco) as 'Mínimo', AVG(L.preco) as 'Média', E.nome as 'Editora'
FROM livros L
	inner join autores_livros AL on L.idlivro=AL.idlivro
    inner join autores A on A.matricula=AL.matricula
    inner join editoras E on L.ideditora=E.ideditora
where L.idassunto like 'S' OR L.idassunto like 'P' OR L.idassunto Like 'B'
	AND L.lancamento<"2022-11-22"
GROUP by E.ideditora
HAVING MAX(L.preco<100)


-- SQLs 2 ↓
SELECT titulo as 'Título', FORMAT(SUM(preco*1.1),2) as 'Opção_1', FORMAT(SUM(preco*1.15),2) as 'Opção_2', FORMAT(SUM(preco*1.2),2) as 'Opção_3'
FROM livros
where lancamento < "2022-11-22" 
group by idlivro


SELECT E.ideditora as 'Cod. Editora', E.nome as 'Nome Editora', L.idassunto as 'Sig. Assunto', L.titulo as 'Título'
from editoras E
	inner join livros L on L.ideditora=E.ideditora
where L.lancamento <= current_date
order by L.preco desc, E.ideditora ASC, L.titulo ASC     -- não consegui fazer os order separados ☹


SELECT A.nome as 'Autor(a)', SUBSTRING(A.data_nascimento,6) as 'Data Nascimento'
FROM autores A
	inner join autores_livros AL on AL.matricula=A.matricula
    inner join livros L on AL.idlivro=L.idlivro
WHERE A.nacionalidade like "%Brasil%"
	AND L.lancamento is null
group by AL.matricula
order by A.nome ASC     -- Acho que tá ordenado certo, só tinha uma brasileira
                        -- E ela já tinha publicado o livro
                        -- Então não aparece ninguém

SELECT A.nome as 'Nome Autor', L.titulo as 'Livro'
FROM autores A
	inner join autores_livros AL on A.matricula=AL.matricula
    inner join livros L on L.idlivro=AL.idlivro
WHERE L.lancamento < "2022-11-23"
order BY A.nome ASC


select E.nome as 'Editoras que publicaram livros de `Ana da Silva`' -- , L.titulo as 'Titulos Publicados' /*Remover o Group By*/
from editoras E
	inner join livros L on L.ideditora=E.ideditora
    inner join autores_livros AL on L.idlivro=AL.idlivro
	inner join autores A on AL.matricula=A.matricula
where A.nome like 'Ana da Silva'
group by E.ideditora


SELECT L.titulo as 'Titulo', E.nome as 'Editora'
from livros L
	inner join editoras E on L.ideditora=E.ideditora
where L.preco<50


SELECT A.cpf as 'CPF Autor', A.nome as 'Nome Autor', MAX(L.preco) as 'Valor Máximo Livros Autoria'
from autores A
	inner join autores_livros AL on AL.matricula=A.matricula
    inner join livros L on AL.idlivro=L.idlivro
GROUP by A.matricula
HAVING MAX(L.preco>50)