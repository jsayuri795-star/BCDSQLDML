--  ATIVIDADE --
-- 1. Consulte todos os campos da entidade produto
USE vendas_informatica;
SELECT * FROM `produto`

-- 2. Consulte o nome do produto, marca e estoque
USE vendas_informatica;
SELECT nome_produto, marca, estoque
FROM produto;

-- 3. Consulte nome do produto, categoria, preço unitário e a data de cadastro em ordem a fabética (crescente) por marca.
USE vendas_informatica;
SELECT nome_produto, cateoria, preco_unitario, data_cadastro
FROM `produto`
ORDER BY marca ASC;
-- 4. Consulte o nome do produto, marca, estoque considerando da Data de cadastro mais antiga para a mais recente
USE vendas_informatica;
SELECT nome_produto, marca, estoque, data_cadastro
FROM `produto`
ORDER BY data_cadastro ASC;
-- 5. Consulte todos os campos (atributos) da tabela cliente.
USE vendas_informatica;
SELECT * FROM `cliente`

-- 6. Consulte o nome, o email, a cidade e o estado do cliente.
USE vendas_informatica;
SELECT nome_cliente, email, cidade, estado
FROM `cliente`;

-- 7. Consulte a nome do cliente, cidade e estado em ordem alfabética (crescente) por estado.
USE vendas_informatica;
SELECT nome_cliente, cidade, estado
FROM `cliente`
ORDER BY estado ASC;

-- 8. Consulte o nome do cliente, email e estado por ordem de cadastro do mais antigo para o mais recente.
USE vendas_informatica;
SELECT nome_cliente, email, estado
FROM `cliente`
ORDER BY data_cadastro ASC;

-- 9. Consulte todos os campos (atributos) da tabela venda.
USE vendas_informatica;
SELECT * FROM `venda`

-- 10. Consulte o nome do cliente, data da venda, o preço unitário e a forma de pagamento.
USE vendas_informatica;
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario, venda.forma_pagamento
FROM cliente
INNER JOIN venda 
    ON cliente.id_cliente =  venda.id_cliente;
-- 11. Consulte o nome do produto. data da venda, quantidade e status.
USE vendas_informatica;
SELECT produto.nome_produto, venda.data_venda, venda.quantidade, venda.status_venda
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto

-- 12. Consulte nome do produto, preço e forma de pagamento onde a forma de pagamento seja PIX ou Boleto.
USE vendas_informatica;
SELECT produto.nome_produto, venda.forma_pagamento, venda.preco_unitario_venda
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
-- 12. Consulte none do cliente, nome do produto, data da venda e quantidade.

-- 13. Consulte none do produto, desconto, forma de pagamento da data de venda mais antiga para a mais nova.

-- 14. Consulte o nome do produto, nome do cliente, desconto e lurma de pagamento en ordem allabética (crescente)

-- 15. Consulte o nome do cliente, email, nome do produto, marca, categoria, forma de pagamento e status da venda da malor venda para a menor onde o status seja Cancelada ou Concluida.