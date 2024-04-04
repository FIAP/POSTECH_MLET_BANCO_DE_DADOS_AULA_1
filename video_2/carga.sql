INSERT INTO investidores (nome, email) VALUES 
('Carlos Rocha', 'carlos.rocha@fiap.com.br'),
('Fernanda Lima', 'fernanda.lima@fiap.com.br'),
('Roberto Carlos', 'roberto.carlos@fiap.com.br'),
('Luciana Alves', 'luciana.alves@fiap.com.br'),
('Marcos Paulo', 'marcos.paulo@fiap.com.br'),
('Juliana Martins', 'juliana.martins@fiap.com.br'),
('Ricardo Oliveira', 'ricardo.oliveira@fiap.com.br'),
('Patrícia Souza', 'patricia.souza@fiap.com.br'),
('Eduardo Pereira', 'eduardo.pereira@fiap.com.br'),
('Sofia Gonçalves', 'sofia.goncalves@fiap.com.br');


INSERT INTO acoes (simbolo, nome_empresa, preco_atual) VALUES 
('MSFT', 'Microsoft Corporation', 305.00),
('TSLA', 'Tesla, Inc.', 720.00),
('FB', 'Meta Platforms, Inc.', 275.00),
('AMZN', 'Amazon.com, Inc.', 3300.00),
('NFLX', 'Netflix, Inc.', 500.00),
('BABA', 'Alibaba Group Holding Limited', 150.00),
('NVDA', 'NVIDIA Corporation', 800.00),
('BRK.A', 'Berkshire Hathaway Inc.', 412000.00),
('V', 'Visa Inc.', 220.00),
('JNJ', 'Johnson & Johnson', 165.00),
('WMT', 'Walmart Inc.', 140.00),
('PG', 'Procter & Gamble Company', 145.00),
('DIS', 'The Walt Disney Company', 120.00),
('MA', 'Mastercard Incorporated', 360.00),
('PFE', 'Pfizer Inc.', 38.00);


INSERT INTO transacoes (investidor_id, acao_id, tipo_transacao, quantidade, preco) VALUES 
(1, 5, 'COMPRA', 4, 495.00),
(2, 4, 'VENDA', 1, 3250.00),
(3, 6, 'COMPRA', 10, 148.00),
(4, 7, 'COMPRA', 2, 795.00),
(5, 8, 'VENDA', 3, 411000.00),
(6, 9, 'COMPRA', 5, 215.00),
(7, 10, 'COMPRA', 7, 160.00),
(8, 11, 'VENDA', 2, 135.00),
(9, 3, 'COMPRA', 6, 270.00),
(10, 2, 'VENDA', 8, 715.00),
(4, 12, 'COMPRA', 9, 140.00),
(5, 13, 'VENDA', 11, 115.00),
(6, 14, 'COMPRA', 3, 355.00),
(7, 15, 'VENDA', 4, 35.00);