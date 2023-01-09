-- Não é possível deletar a tabela fornecedores uma vez que há chave
-- estrangeira na tabela pedidos com constraint on delete restrict
-- A princípio deveria ser possível deletar a tabela, mas como
-- fiz de um atributo 'Unique' para poder referenciar a tabela
-- em outra, será necessário remover a chave estrangeira na tabela
-- pedidos. No mais, os 'pedidos' ficarão sem identificador de fornecedor.

alter table pedidos 
    drop constraint fornecedores_fk_fornecedores_fornecem_produtos;
    
drop table fornecedores;

drop index fornecedores_fk_fornecedores_fornecem_produtos on pedidos;