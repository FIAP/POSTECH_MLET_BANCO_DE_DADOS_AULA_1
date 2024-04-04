--DDL (Data Definition Language)
--Primeiro, vamos definir a estrutura do nosso banco de dados relacionado a investimentos na bolsa de valores. 
--Criaremos três tabelas principais: investidores, acoes, e transacoes.

-- Criação da tabela investidores
CREATE TABLE investidores (
    investidor_id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Criação da tabela acoes
CREATE TABLE acoes (
    acao_id SERIAL PRIMARY KEY,
    simbolo VARCHAR(10) UNIQUE NOT NULL,
    nome_empresa VARCHAR(255) NOT NULL,
    preco_atual NUMERIC(10, 2) NOT NULL
);

-- Criação da tabela transacoes
CREATE TABLE transacoes (
    transacao_id SERIAL PRIMARY KEY,
    investidor_id INT REFERENCES investidores(investidor_id),
    acao_id INT REFERENCES acoes(acao_id),
    tipo_transacao VARCHAR(10) CHECK (tipo_transacao IN ('COMPRA', 'VENDA')),
    quantidade INT CHECK (quantidade > 0),
    preco NUMERIC(10, 2),
    data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
