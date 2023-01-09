-- Primeiro será criado um segundo produto, a fim de ser excluído
-- Então este segundo produto será "droppado"
-- Não houve conflito quanto a restrição de integridade, acredito eu, pois
-- A tabela não possuia chave estrangeira em outra, apenas havia uma em si


insert into produtos(codigo, descricao, valor_unitario, categoria) 
    values(NULL, 'Lã de aço marca Assolar', 3.20, default);

delete from produtos 
    where codigo = 2;

