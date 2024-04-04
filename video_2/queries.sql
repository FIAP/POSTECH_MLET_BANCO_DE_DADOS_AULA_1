--Selecionar todas as transações de um investidor específico
SELECT * FROM transacoes WHERE investidor_id = 1;

--Criação de index
CREATE INDEX idx_transacoes_investidor_id ON transacoes(investidor_id);
SELECT * FROM transacoes WHERE investidor_id = 1;


--exemplo 2 - Calcular o valor total investido por cada investidor
SELECT investidor_id, SUM(preco * quantidade) AS valor_total
FROM transacoes
GROUP BY investidor_id;

--Criação de index
CREATE INDEX idx_transacoes_preco_quantidade ON transacoes(preco, quantidade);

--Exemplo de Query 3: Buscar o último preço de cada ação
SELECT a.simbolo, t.preco
FROM acoes a
JOIN transacoes t ON a.acao_id = t.acao_id
WHERE t.data_transacao = (
    SELECT MAX(data_transacao)
    FROM transacoes t2
    WHERE t2.acao_id = t.acao_id
);

--Criação de index
CREATE INDEX idx_transacoes_data_transacao ON transacoes(data_transacao);


/*
Considerações Gerais de Otimização
Uso de Índices: Como visto nos exemplos, índices são fundamentais para otimizar consultas. No entanto, índices também aumentam o tempo de inserção, atualização e deleção, pois o banco de dados precisa manter o índice atualizado. Use-os estrategicamente.

Consultas Específicas: Evite o uso de SELECT * em produção, especialmente em tabelas grandes. Especifique apenas as colunas que você realmente precisa.

Tabelas Materializadas: Para dados que não mudam frequentemente mas requerem consultas complexas, considere usar tabelas materializadas. Elas armazenam o resultado da consulta no disco, agilizando consultas repetitivas.

Análise de Planos de Execução: Utilize ferramentas como EXPLAIN para entender como suas consultas são executadas e onde podem ser feitas otimizações.
*/