CREATE DATABASE frutaria;
USE frutaria;

CREATE TABLE clientes(
	id_cliente int auto_increment primary key,
    nome_cliente varchar (200) not null,
    telefone_cliente varchar (25) not null,
    endereco_cliente varchar (200) not null,
    cpf_cliente varchar (14) not null unique
);

INSERT INTO clientes (nome_cliente, telefone_cliente, endereco_cliente, cpf_cliente) VALUES
('Maria Silva', '1234-5678', 'Rua das Flores, 123', '123.456.789-00'),
('João Santos', '9876-5432', 'Avenida das Palmeiras, 456', '234.567.890-11'),
('Ana Costa', '3456-7890', 'Praça Central, 789', '345.678.901-22'),
('Lucas Oliveira', '8765-4321', 'Rua dos Lírios, 321', '456.789.012-33'),
('Fernanda Lima', '4567-8901', 'Rua das Margaridas, 654', '567.890.123-44'),
('Carlos Almeida', '2345-6789', 'Avenida do Sol, 987', '678.901.234-55'),
('Juliana Pereira', '5432-1098', 'Rua dos Jasmins, 159', '789.012.345-66'),
('Roberto Nascimento', '3210-9876', 'Rua do Horizonte, 753', '890.123.456-77'),
('Patrícia Santos', '6543-2109', 'Rua da Esperança, 852', '901.234.567-88'),
('Ricardo Gomes', '7890-1234', 'Avenida da Liberdade, 741', '012.345.678-99'),
('Bruna Rocha', '1023-4567', 'Praça da Paz, 369', '123.987.456-00'),
('Marcos Vinícius', '5678-9012', 'Rua da Alegria, 147', '234.867.543-11'),
('Luana Martins', '7890-1234', 'Avenida da Amizade, 258', '345.765.444-22'),
('Fernando Tavares', '3456-7890', 'Rua das Acácias, 963', '456.654.231-33'),
('Tatiane Alves', '4567-8901', 'Rua do Amor, 159', '567.543.211-44'),
('Samuel Costa', '5678-9012', 'Praça do Coração, 951', '678.432.110-55'),
('Aline Dias', '6789-0123', 'Rua do Sol Nascente, 753', '789.320.098-66'),
('Júlio César', '7890-1234', 'Avenida do Futuro, 852', '890.210.988-77'),
('Cláudia Mendes', '8901-2345', 'Rua da Esperança, 654', '901.901.876-88'),
('Érika Lima', '9012-3456', 'Rua do Sorriso, 321', '011.098.765-99'),
('Vitor Hugo', '1023-4567', 'Rua das Estrelas, 852', '123.997.654-00'),
('Talita Martins', '2345-6789', 'Avenida das Nuvens, 147', '244.876.543-11'),
('Mariana Ferreira', '3456-7890', 'Rua das Ondas, 369', '345.865.432-22'),
('Gustavo Ribeiro', '4567-8901', 'Praça do Sol, 951', '456.654.321-33'),
('Rafaela Pires', '5678-9012', 'Rua do Vento, 258', '567.543.210-44'),
('Leandro Gomes', '6789-0123', 'Avenida das Flores, 753', '678.432.109-55'),
('Viviane Barros', '7890-1234', 'Rua do Amanhã, 159', '789.321.098-66'),
('Denis Carvalho', '8901-2345', 'Rua da Liberdade, 963', '890.210.987-77'),
('Cíntia Ribeiro', '9012-3456', 'Praça do Tempo, 147', '901.109.876-88'),
('André Almeida', '1023-4567', 'Rua do Riso, 258', '012.098.765-99'),
('Natália Costa', '2345-6789', 'Avenida da Luz, 951', '123.987.654-00'),
('Felipe Mendes', '3456-7890', 'Rua da Manhã, 321', '234.876.543-11'),
('Marcio Santos', '4567-8901', 'Rua do Sol Poente, 654', '345.765.432-22');

CREATE TABLE funcionarios(
	id_funcionario int auto_increment primary key,
    nome_funcionario varchar (200) not null,
    cargo_funcionario varchar (50) not null,
    salario_funcionario decimal (10,2) not null,
    telefone_funcionario varchar (25) not null
);

INSERT INTO funcionarios (nome_funcionario, cargo_funcionario, salario_funcionario, telefone_funcionario) VALUES
('Carlos Almeida', 'Atendente', 1500.00, '1122-3344'),
('Fernanda Oliveira', 'Gerente', 2500.00, '2233-4455'),
('Rafael Lima', 'Caixa', 1200.00, '3344-5566'),
('Tatiane Dias', 'Vendedor', 1800.00, '4455-6677'),
('Rodrigo Martins', 'Cozinheiro', 2000.00, '5566-7788'),
('Aline Santos', 'Supervisor', 2300.00, '6677-8899'),
('Felipe Carvalho', 'Atendente', 1500.00, '7788-9900'),
('Juliana Rocha', 'Gerente de Vendas', 2600.00, '8899-1001'),
('Lucas Silva', 'Recepcionista', 1400.00, '9900-1122'),
('Cláudia Ferreira', 'Estoquista', 1300.00, '1001-2233');

CREATE TABLE produtos(
	id_produto int auto_increment primary key,
    nome_produto varchar (200) not null,
    preco_produto decimal (10,2) not null
);

INSERT INTO produtos (nome_produto, preco_produto) VALUES
('Maçã', 3.00),
('Banana', 2.00),
('Laranja', 2.50),
('Abacaxi', 4.00),
('Uva', 5.00),
('Melancia', 6.00),
('Morango', 8.00),
('Pera', 4.50),
('Kiwi', 7.00),
('Manga', 5.50),
('Coco', 6.50),
('Limão', 2.00),
('Papaya', 5.00),
('Fruta do Conde', 8.00),
('Açaí', 10.00),
('Cabeludinha', 9.00),
('Framboesa', 11.00),
('Cabeludinha', 9.00),
('Mirtilo', 12.00),
('Tangerina', 3.00),
('Goiaba', 4.00),
('Jabuticaba', 15.00),
('Pitaya', 10.00),
('Cabeludinha', 8.00),
('Pêssego', 4.00),
('Nectarina', 5.00),
('Lichia', 10.00),
('Damasco', 6.00),
('Cranberry', 14.00),
('Melão', 5.50),
('Ameixa', 6.00),
('Castanha de Caju', 20.00),
('Noz', 15.00),
('Pistache', 22.00),
('Amêndoa', 18.00),
('Sementes de Girassol', 8.00),
('Semente de Abóbora', 9.00),
('Tâmara', 12.00),
('Figo', 7.00),
('Cabeludinha', 9.00),
('Fruta-pão', 6.50),
('Sapoti', 7.50),
('Jaca', 4.00),
('Carambola', 5.00);

CREATE TABLE vendas(
	id_venda int auto_increment primary key,
    id_cliente int not null,
    id_produto int not null,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos (id_produto) ON DELETE CASCADE
);

INSERT INTO vendas (id_cliente, id_produto) VALUES
(1, 1),  
(2, 3),  
(3, 4),  
(4, 5),   
(5, 6),  
(6, 7),   
(7, 8),  
(8, 9),  
(9, 10), 
(10, 11),
(11, 12),
(12, 13), 
(13, 14), 
(14, 15), 
(15, 16),
(16, 17), 
(17, 18),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23),
(23, 24), 
(24, 25), 
(25, 26),
(26, 27), 
(27, 28),
(28, 29),
(29, 30),
(30, 31), 
(1, 32),  
(2, 33), 
(3, 34), 
(4, 35),  
(5, 36); 

CREATE TABLE vendas_produtos(
	id_venda_prod int auto_increment primary key,
    quantidade_venda int not null, 
    id_venda int not null,
    FOREIGN KEY (id_venda) REFERENCES vendas (id_venda) ON DELETE CASCADE
);

INSERT INTO vendas_produtos (quantidade_venda, id_venda) VALUES
(2, 1),
(1, 2),
(1, 3),
(3, 4),
(2, 5),
(1, 6),
(2, 7),
(1, 8),
(3, 9),
(1, 10),
(2, 11),
(1, 12),
(5, 13),
(2, 14),
(1, 15),
(2, 16),
(1, 17),
(2, 18),
(1, 19),
(1, 20),
(2, 21),
(3, 22),
(1, 23),
(2, 24),
(1, 25),
(3, 26),
(2, 27),
(1, 28),
(2, 29),
(1, 30),
(3, 31),
(1, 32),
(2, 33),
(1, 34),
(2, 35);

select * from clientes;

select v.id_venda, c.nome_cliente, c.endereco_cliente AS endereco_entrega,
p.nome_produto, p.preco_produto, vp.quantidade_venda, (p.preco_produto * vp.quantidade_venda) AS total_venda
from vendas_produtos vp
JOIN vendas v ON vp.id_venda = v.id_venda
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN produtos p ON v.id_produto = p.id_produto
ORDER BY p.id_produto;

select COUNT(id_venda) AS total_vendas from vendas;

select nome_funcionario, cargo_funcionario, 
salario_funcionario from funcionarios;

SELECT p.nome_produto, MAX(vp.quantidade_venda) AS total_vendido
FROM produtos p
JOIN vendas v ON p.id_produto = v.id_produto
JOIN vendas_produtos vp ON v.id_venda = vp.id_venda
GROUP BY p.id_produto
ORDER BY total_vendido DESC
LIMIT 3;

UPDATE produtos SET preco_produto = 2.90 WHERE nome_produto = 'Uva';



DELETE FROM clientes WHERE id_cliente = 5;

