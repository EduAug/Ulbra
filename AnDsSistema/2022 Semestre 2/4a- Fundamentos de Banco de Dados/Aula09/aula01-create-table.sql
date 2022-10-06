-- Comment
/* Comment
    Chain
*/

-- char: Prealocação de espaço
-- vs
-- varchar: Ocupa baseado no espaço usado

-- snake_case < camelCase PascalCase SCREAMING_SNAKE_CASE

clientes(id int primary key, nome char[100]);
enderecos(id, logradouro, numero, bairro, cidade, estado, id_cliente FK);

/* CREATE TABLE:
create table <nome_tabela> clientes(
    atributo - dominio - restrição de vazio - chave
*/
create table clientes(
    id int not null primary key,
    nome varchar(100) not null,
    CPF char(14) unique,
    limite_credito float default 0
);

create table endrecos(
    id int not null primary key,
    logradouro varchar(100) not null,
    numero int default 0,
    bairro varchar(100),
    cidade varchar(100),
    estado char(2),
    id_cliente int not null,
    constraint clientes_tem_enderecos
    foreign key(id_cliente) references clientes(id)
);


-- GitHub Cassio https://github.com/cassiocosta/FBD-2022-2
