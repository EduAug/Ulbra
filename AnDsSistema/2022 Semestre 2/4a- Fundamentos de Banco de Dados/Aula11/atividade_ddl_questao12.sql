-- Primeiro será criado um terceiro produto, para ter seu codigo modificado
-- Porém, há apenas uma PK na tabela, logo, a primary key não pode ser removida
-- Ao tentar criar uma nova chave primária, a tabela é limitada em apenas
-- 1 por tabela (Ou apenas no sqliteonline), logo, não é possível 
-- criar uma "segunda" chave provisória, e assim, não é possível
-- alterar a PK, além do fato desta PK ser uma FK na tabela
-- "pedidos" que restringe mudanças na referência


-- Codiqo que, talvez, funcionaria

insert into produtos(codigo, descricao, valor_unitario, categoria) 
    values(NULL, 'Esfregão Bruxa Mop', 16.10, default);

alter table produtos
    drop codigo,
    add codigo_v2 int auto_increment,
    add constraint codigo_new
        primary key (codigo_v2);
