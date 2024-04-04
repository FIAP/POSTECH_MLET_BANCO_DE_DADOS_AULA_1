/*
4. TCL (Transaction Control Language)
Por fim, vamos abordar como gerenciar transações para garantir a integridade dos dados.
*/

--Exemplo 1 com sucesso
BEGIN;

-- Suponha que vamos fazer duas operações como parte de uma única transação
UPDATE acoes SET preco_atual = preco_atual - 5 WHERE simbolo = 'AAPL';
INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES (1, 1, 'VENDA', 2, 147.00);

-- Se tudo estiver correto, commitamos a transação
COMMIT;

-- Se algo der errado, podemos fazer rollback antes do commit
-- ROLLBACK;


--Exemplo 2 com ROLLBACK
BEGIN;

-- Suponha que vamos fazer duas operações como parte de uma única transação
UPDATE acoes SET preco_atual = preco_atual - 5 WHERE simbolo = 'AAPL';

-- Inserindo uma nova transação
-- Supondo que essa operação possa falhar por algum motivo, como uma constraint de FK não satisfeita
BEGIN;
INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES (1, 1, 'VENDA', 2, 147.00);
EXCEPTION WHEN OTHERS THEN
    -- Se algo der errado, rollback na transação interna
    ROLLBACK TO SAVEPOINT;
END;

-- Se tudo estiver correto até este ponto, commitamos a transação
COMMIT;


