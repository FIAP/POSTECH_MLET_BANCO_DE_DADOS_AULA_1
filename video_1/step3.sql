/*
3. DCL (Data Control Language)
Vamos criar usuários e definir permissões de acesso aos dados.
*/

-- Criando um usuário
CREATE USER analista WITH PASSWORD '102030';

----docker exec
----Validar dentro do Container: psql -U analista -d db_fiap 

-- Concedendo permissões
GRANT SELECT ON investidores, acoes, transacoes TO analista;

-- Testando o acsso
SELECT * FROM investidores;

-- Revogando permissões
REVOKE SELECT ON transacoes FROM analista;

-- Testando o acsso
SELECT * FROM transacoes;