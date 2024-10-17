CREATE DATABASE sorveteria;
USE sorveteria;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(200) NOT NULL,
    telefone_cliente VARCHAR(25) NOT NULL,
    endereco_cliente VARCHAR(200) NOT NULL,
    cpf_cliente VARCHAR(14) NOT NULL UNIQUE
);

INSERT INTO clientes (nome_cliente, telefone_cliente, endereco_cliente, cpf_cliente) VALUES
('Maria Silva', '123456789', 'Rua A, 123', '123.456.789-00'),
('João Santos', '987654321', 'Rua B, 456', '234.567.890-11'),
('Ana Costa', '456789123', 'Rua C, 789', '345.678.901-22'),
('Lucas Oliveira', '321654987', 'Rua D, 159', '456.789.012-33'),
('Fernanda Lima', '654987321', 'Rua E, 753', '567.890.123-44');

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(200) NOT NULL,
    cargo_funcionario VARCHAR(50) NOT NULL,
    salario_funcionario DECIMAL(10, 2) NOT NULL,
    telefone_funcionario VARCHAR(25) NOT NULL
);

INSERT INTO funcionarios (nome_funcionario, cargo_funcionario, salario_funcionario, telefone_funcionario) VALUES
('Carlos Almeida', 'Atendente', 1500.00, '321321321'),
('Juliana Pereira', 'Gerente', 3000.00, '654654654'),
('Roberto Nascimento', 'Caixa', 1800.00, '987987987'),
('Patrícia Santos', 'Sorveteiro', 2000.00, '159159159'),
('Ricardo Gomes', 'Auxiliar', 1200.00, '753753753');

CREATE TABLE sabores (
    id_sabor INT AUTO_INCREMENT PRIMARY KEY,
    nome_sabor VARCHAR(200) NOT NULL,
    preco_sabor DECIMAL(10, 2) NOT NULL
);

INSERT INTO sabores (nome_sabor, preco_sabor) VALUES
('Chocolate', 5.00),
('Baunilha', 4.50),
('Morango', 5.50),
('Limão', 4.00),
('Manga', 5.00),
('Coco', 6.00),
('Açaí', 7.00),
('Doce de Leite', 5.50),
('Pistache', 6.50),
('Frutas Vermelhas', 7.00);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente) ON DELETE CASCADE
);

INSERT INTO pedidos (id_cliente) VALUES
(1),
(2),
(1),
(3),
(4);

CREATE TABLE pedido_sabores (
    id_pedido_sabor INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_sabor INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_sabor) REFERENCES sabores (id_sabor) ON DELETE CASCADE
);

INSERT INTO pedido_sabores (id_pedido, id_sabor, quantidade) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 3),
(3, 4, 1),
(4, 5, 2),
(4, 6, 1);

SELECT * FROM clientes;

SELECT pd.id_pedido, c.nome_cliente, s.nome_sabor AS sabor_pedido, 
s.preco_sabor FROM pedidos pd
JOIN clientes c ON pd.id_cliente = c.id_cliente
JOIN pedido_sabores ps ON pd.id_pedido = ps.id_pedido
JOIN sabores s ON ps.id_sabor = s.id_sabor;

select COUNT(id_pedido) AS total_vendas from pedidos;

select nome_funcionario, cargo_funcionario, salario_funcionario from funcionarios;

SELECT s.nome_sabor, SUM(ps.quantidade) AS total_vendido
FROM sabores s
JOIN pedido_sabores ps ON s.id_sabor = ps.id_sabor
JOIN pedidos p ON ps.id_pedido = p.id_pedido
GROUP BY s.id_sabor, s.nome_sabor
ORDER BY total_vendido DESC
LIMIT 3;

UPDATE sabores SET preco_sabor = 8.45 WHERE nome_sabor = 'Pistache';

DELETE FROM clientes WHERE id_cliente = 2;

