/*
2. DML (Data Manipulation Language)
Agora, vamos manipular os dados dentro das tabelas criadas, incluindo inserção, atualização e deleção de registros.
*/

-- Inserindo dados em investidores
INSERT INTO investidores (nome, email) VALUES ('João Silva', 'joao.silva@fiap.com.br');
INSERT INTO investidores (nome, email) VALUES ('Maria Oliveira', 'maria.oliveira@fiap.com.br');

-- Inserindo dados em acoes
INSERT INTO acoes (simbolo, nome_empresa, preco_atual) VALUES ('AAPL', 'Apple Inc.', 150.00);
INSERT INTO acoes (simbolo, nome_empresa, preco_atual) VALUES ('GOOGL', 'Alphabet Inc.', 2800.00);

-- Inserindo dados em transacoes
INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES (1, 1, 'COMPRA', 10, 145.00);
INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES (2, 2, 'COMPRA', 5, 2750.00);

-- Atualizando o preço de uma ação
UPDATE acoes SET preco_atual = 152.00 WHERE simbolo = 'AAPL';

select * from acoes WHERE simbolo = 'AAPL';

-- Deletando uma transação (exemplo hipotético)
DELETE FROM transacoes WHERE transacao_id = 1;
