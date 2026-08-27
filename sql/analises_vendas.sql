use projeto_vendas;

-- =====================================================
-- PROJETO DE VENDAS
-- ANÁLISES SQL
-- =====================================================


-- 1 — Evolução das vendas

SELECT 
    YEAR(Data_Venda) AS Ano,
    SUM(Qtd_Vendida) AS Qtd_Vendida_Anualmente
FROM vendas
GROUP BY YEAR(Data_Venda);


-- 2 — Produtos com maior volume de vendas

SELECT 
	produtos.Produto AS Produto, 
    SUM(Qtd_Vendida) AS Qtd_Produto_Vendida
FROM vendas 
    INNER JOIN produtos ON vendas.SKU = produtos.SKU
    GROUP BY produtos.Produto
    ORDER BY Qtd_Produto_Vendida DESC
    LIMIT 10;


-- 3 — Produtos com maior receita

SELECT 
	produtos.Produto AS Produto, 
    SUM(vendas.Qtd_Vendida * produtos.Preco_Unitario) AS Receita
FROM vendas 
    INNER JOIN produtos ON vendas.SKU = produtos.SKU
    GROUP BY produtos.Produto
    ORDER BY Receita DESC
    LIMIT 10;
    

-- 4 — Produtos com maior lucro bruto

SELECT 
	produtos.Produto AS Produto, 
    SUM( (vendas.Qtd_Vendida * produtos.Preco_Unitario) - (vendas.Qtd_Vendida * produtos.Custo_Unitario) ) AS Lucro_Bruto
FROM vendas 
    INNER JOIN produtos ON vendas.SKU = produtos.SKU
    GROUP BY produtos.Produto
    ORDER BY Lucro_Bruto DESC
    LIMIT 10;


-- 5 — Lojas com maior volume

SELECT 
	lojas.Nome_Loja AS Loja, 
    SUM(vendas.Qtd_Vendida) AS Qtd_Produtos_Vendida 
FROM vendas 
    INNER JOIN lojas ON vendas.ID_Loja = lojas.ID_Loja
    GROUP BY lojas.Nome_Loja
    ORDER BY Qtd_Produtos_Vendida DESC
    LIMIT 10;

-- 6 — Lojas com maior receita

SELECT 
	lojas.Nome_Loja AS Loja, SUM(vendas.Qtd_Vendida * produtos.Preco_Unitario) AS Receita
FROM vendas 
    INNER JOIN lojas ON vendas.ID_Loja = lojas.ID_Loja
    INNER JOIN produtos ON vendas.SKU = produtos.SKU
    GROUP BY lojas.Nome_Loja
    ORDER BY Receita DESC
    LIMIT 10;


-- 7 — Desempenho das lojas entre os anos

SELECT 
	lojas.Nome_Loja AS Loja, YEAR(vendas.Data_Venda) AS Ano,
	SUM(vendas.Qtd_Vendida) AS Qtd_Produtos_Vendida, 
	SUM(vendas.Qtd_Vendida * produtos.Preco_Unitario) AS Receita
FROM vendas
		INNER JOIN lojas ON vendas.ID_Loja = lojas.ID_Loja
		INNER JOIN produtos ON vendas.SKU = produtos.SKU
        GROUP BY lojas.Nome_Loja, YEAR(vendas.Data_Venda)
		ORDER BY lojas.Nome_Loja, YEAR(vendas.Data_Venda);

