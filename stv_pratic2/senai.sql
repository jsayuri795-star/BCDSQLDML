
-- 1. Consulte todos os campos (atributos) da entidade produto onde contemplem todo o mês de Março de 202
USE vendas_informatica;
SELECT *
FROM produto
WHERE data_cadastro >= "2024-03-01"
AND data_cadastro < "2024-04-01";

-- 2. Consulte o nome do produto, marca, estoque e data de cadastro onde os produtos tenham sido cadastrados nos meses de Janeiro, fevereiro e Março de 2024.
USE vendas_informatica;
SELECT nome_produto, marca, estoque, data_cadastro
FROM produto
WHERE data_cadastro >= "2024-01-01"
AND data_cadastro < "2024-04-01";

-- 3. Consulte todos os campos (atributos) da tabela cliente para clientes cadastrados no mês de Janeiro de 2023.
USE vendas_informatica;
SELECT *
FROM cliente
WHERE data_cadastro >= "2023-01-01"
AND data_cadastro < "2023-02-01";

-- 4. Consulte o nome, o email, a cidade, estado e a data de cadastro para os clientes cadastrados na primeira quinzena de junho de 2023.
USE vendas_informatica;
SELECT *
FROM cliente
WHERE data_cadastro >= "2023-01-01"
AND data_cadastro < "2023-02-01";

-- 5. Consulte todos os campos (atributos) da entidade venda onde a data de venda contemple todo o mês de maio de 2025.
USE vendas_informatica;
SELECT *
FROM venda
WHERE data_venda >= "2025-05-01"
AND data_venda < "2025-06-01";

-- 6. Consulte o nome do cliente, data da venda, o preço e a forma de pagamento para as vendas realizadas de 24/12/2025 até 15/01/2026 do maior preço para o menor.
USE vendas_informatica;
SELECT
    cliente.nome_cliente,
    venda.data_venda,
    venda.preco_unitario_venda,
    venda.forma_pagamento
FROM venda 
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente
WHERE venda.data_venda >= "2025-12-24"
AND venda.data_venda < "2026-01-16"
ORDER BY venda.preco_unitario_venda DESC;

-- 7. Consulte o nome do cliente, email, nome do produto, marca, categoria, forma de pagamento, data da venda e status da venda da maior venda para a menor onde o status seja Cancelada ou Concluída contemplando todo o período de venda do mês de Dezembro de 2025.
USE vendas_informatica;
SELECT
    cliente.nome_cliente,
    cliente.email,
    produto.nome_produto,
    produto.marca,
    produto.categoria,
    venda.forma_pagamento,
    venda.data_venda,
    venda.status_venda
FROM venda 
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto 
ON venda.id_produto = produto.id_produto
WHERE venda.data_venda >= "2025-12-01"
AND venda.data_venda < "2026-01-01"
AND venda.status_venda IN ("Cancelada", "Concluída")
ORDER BY (venda.preco_unitario_venda * venda.quantidade) DESC;