-- Atividade BCDMYSQL --
-- 1. Consulte todos os campos (atributos) da entidade produto onde o nome do produto comece com a letra "D".
USE vendas_informatica;
SELECT * FROM produto WHERE nome LIKE 'D%';
-- 2. Consulte o nome do produto, marca e estoque onde a marca termine com a letra "E".
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto WHERE marca LIKE '%E';
-- 3. Consulte o nome do produto, marca e preço unitário onde o nome do produto contenha a palavra "Gamer".
USE vendas_informatica;
SELECT nome_produto, marca, preco_unitario FROM produto WHERE nome_produto LIKE '%Gamer%';
-- 4. Consulte todos os campos (atributos) da entidade cliente onde o nome do cliente contenha o sobrenome "Barbosa".
USE vendas_informatica;
SELECT * FROM cliente WHERE nome_cliente LIKE "%Barbosa%";
-- 5. Consulte o nome do cliente, data da venda, o preço unitário e a forma de pagamento onde o nome do cliente comece com a letra "C".
USE vendas_informatica;
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario, venda.forma_pagamento 
FROM cliente 
INNER JOIN venda 
ON cliente.id = venda.cliente_id 
WHERE cliente.nome_cliente LIKE 'C%';
-- 6. Consulte nome do produto, preço, ID da venda e forma de pagamento onde a forma de pagamento seja PIX ou Boleto onde o nome do produto contenha a palavra "Polegada".
USE vendas_informatica;
SELECT produto.nome_produto, venda.preco_unitario_venda, venda.id_venda, venda.forma_pagamento 
FROM produto 
INNER JOIN venda 
ON produto.id_produto = venda.id_produto WHERE (venda.forma_pagamento = 'PIX' OR venda.forma_pagamento = "Boleto") AND produto.nome_produto LIKE '%Polegada%';
-- 7. Consulte o nome do produto, nome do cliente, desconto e forma de pagamento em ordem alfabética (crescente) por status da venda onde o nome do produto contenha "Placa" ou "Notebook" ou nome do cliente contenha o nome "Ana".
SELECT produto.nome_produto, cliente.nome_cliente, venda.desconto_percentual, venda.forma_pagamento 
FROM produto 
INNER JOIN venda 
ON produto.id_produto = venda.id_produto 
INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
WHERE (produto.nome_produto LIKE '%Placa%' OR produto.nome_produto LIKE '%Notebook%') OR cliente.nome_cliente LIKE '%Ana%';
