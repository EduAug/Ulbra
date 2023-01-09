                            -- Só funciona se for unique, ou PK
                            -- mas não é o caso
create table fornecedores(
    codigo int NOT NULL unique, 
    nome varchar(20) NOT NULL 
);

create table categorias(
    codigo int NOT NULL primary key,
    nome varchar(30) NOT NULL
);

create table produtos(
    codigo int auto_increment primary key,
    descricao varchar(50) NOT NULL,
    data_cadastro date NOT NULL,
    valor_unitario float NOT NULL,
    categoria int NOT NULL DEFAULT 1,
    constraint categorias_fk_produtos_possuem_categorias
    foreign key(categoria) references categorias(codigo)
    on delete restrict
    on update restrict
);

create table pedidos(
    quantidade int NOT NULL primary key,
    valor_unitario float NOT NULL,
    data_hora date NOT NULL,
    codigo_fornecedor int NOT NULL DEFAULT 1,
    codigo_produto int NOT NULL DEFAULT 1,
    constraint fornecedores_fk_fornecedores_fornecem_produtos
    foreign key(codigo_fornecedor) references fornecedores(codigo)
    on delete restrict
    on update restrict,
    constraint produtos_fk_fornecedores_fornecem_produtos
    foreign key(codigo_produto) references produtos(codigo)
    on delete restrict
    on update restrict
);
