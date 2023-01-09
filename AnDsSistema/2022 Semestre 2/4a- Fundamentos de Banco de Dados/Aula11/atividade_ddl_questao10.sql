insert into categorias(codigo, nome) 
    values(000000001, 'Limpeza');

insert into produtos(codigo, descricao, valor_unitario, categoria) 
    values(000000001, 'Água sanitária marca Qrozene', 7.80, 000000001);

insert into pedidos(quantidade, valor_unitario, data_pedido, codigo_fornecedor, codigo_produto, numero_do_pedido) 
    values(12, 93.60, "2022-10-11", 001234, 000000001,'AB1234' );