-- 1 
SELECT C.nome, SUM(P.val_total_nota), COUNT(P.id) AS qtd_pedidos
FROM clientes C
	INNER JOIN pedidos P ON C.id=P.id_cliente
WHERE qtd_pedidos > 3
GROUP BY C.nome;


-- 2
SELECT P.nome, AVG(V.valor_venda), SUM(V.id)
FROM produtos P
	LEFT join vendAS V ON V.id_produto=P.id
GROUP BY P.cat;

-- 3
SELECT F.nome, P.nome, SUM(C.qtd) AS 'qtd_por_fornecedor', SUM(C.qtd) AS 'qtd_por_produto'
FROM fornecedor F
	INNER JOIN comprAS C ON F.id=C.id_comp
    INNER JOIN produtos P ON P.id=C.id_prod
GROUP BY F.nome, P.nome
HAVING SUM(C.qtd) >= 100;

-- 4 Eu não faço ideia de como mostrar mais de um funcionário por departamento, e tirei o nome do funcionario do group pois também gerava conflito
SELECT D.nome AS 'Nome Dep.', F.nome AS 'Nome Func', AVG(F.salario) AS Media
FROM departamento D
	LEFT JOIN funcionario F ON F.id_dep=D.id
GROUP BY D.nome
HAVING Media > 5000;

-- 5 
SELECT Cli.nome, P.nome, SUM(Co.qtd*P.val_unit)
FROM cliente Cli
	RIGHT JOIN compras Co ON Co.id_cli=Cli.id
    INNER JOIN produtos P ON Co.id_comp=P.id
GROUP BY Cli.nome, P.nome;