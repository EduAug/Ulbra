SELECT Nome, Preço
FROM Vendas V, Vendas_itens VI, Produtos P
WHERE V.id = VI.id_venda AND VI.id_produto = P.id 
    AND V.data_vendas LIKE '%-10-2022' AND V.data_vendas LIKE '%-11-2022'

-- V1 ^
-- Correção v

SELECT P.Nome AS Produto, P.Preço AS 'Valor Unitário', V.Data_venda
FROM Vendas V, Vendas_itens VI, Produtos P
WHERE V.id = VI.id_venda AND VI.id_produto = P.id 
    AND V.data_vendas >= '2022-10-01' AND V.data_vendas <= '2022-11-30'



    -- Cenário 2

    SELECT SUM(VI.Valor_unitario)*6
    FROM Vendas V, Vendas_itens VI
    WHERE V.id = VI.id_venda AND V.Id = 1001

    -- V1 ^
    -- Correção V

    SELECT SUM(VI.Qtd*VI.Valor_unitario) AS 'Total'
    FROM Vendas_itens AS VI
    WHERE VI.id_venda = 1001


-- Cenário 3

SELECT P.Nome
FROM Vendas V, Produtos P
WHERE V.Data_venda >= '2022-10-01' AND V.Data_venda <= '2022-10-31'
ORDER BY P.Preço ASC

-- V1 ^
-- Correção V

SELECT P.Id, P.Nome, VI.Valor_unitario
FROM Vendas V, Produtos P, Vendas_itens VI
WHERE V.Data_venda >= '2022-10-01' AND V.Data_venda <= '2022-10-31'
    AND VI.id_venda = V.Id AND P.Id = VI.id_produto
ORDER BY Vi.Valor_unitario ASC