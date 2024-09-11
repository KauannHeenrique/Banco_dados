CREATE DATABASE vendas_produtos;
USE vendas_produtos;

CREATE TABLE produtos(
	id_produto int primary key auto_increment,
    nome_produto varchar (250) not null, 
    preco_produto float (10,2) not null
);

INSERT INTO produtos (nome_produto, preco_produto) VALUES
('Camiseta Estampada', 34.99),
('Vestido Floral', 79.90),
('Blusa de Frio', 59.95),
('Saia de Couro', 89.90),
('Tênis Casual', 99.99),
('Botas de Montanha', 149.90),
('Bolsa de Couro', 119.50),
('Carteira de Couro', 39.99),
('Tênis de Corrida', 109.99),
('Mochila Escolar', 69.90),
('Casaco de Lã', 139.90),
('Chapéu de Sol', 25.50),
('Camisa de Seda', 84.99),
('Tênis de Skate', 95.00),
('Jaqueta de Inverno', 159.90),
('Suéter de Tricô', 49.90),
('Blusão Esportivo', 74.99),
('Sandália de Verão', 39.90),
('Rasteirinha', 29.90),
('Tênis de Baseball', 119.00);

CREATE TABLE clientes(
	id_cliente int auto_increment primary key,
    nome_cliente varchar (250) not null
);

INSERT INTO clientes (nome_cliente) VALUES
('Ana Maria Souza'),
('Carlos Alberto Lima'),
('Fernanda Costa'),
('João Pedro Silva'),
('Juliana Oliveira'),
('Lucas Santos'),
('Mariana Ferreira'),
('Roberto Almeida'),
('Tatiane Lima');

CREATE TABLE vendas(
	id_venda int auto_increment primary key, 
    data_venda date not null, 
    id_produto int, 
    id_cliente int,
    foreign key (id_produto) references produtos(id_produto),
    foreign key (id_cliente) references clientes(id_cliente)
);

INSERT INTO vendas (data_venda, id_produto, id_cliente) VALUES
('2024-09-01', 1, 1),
('2024-09-02', 1, 2),
('2024-09-03', 1, 3),
('2024-09-04', 2, 4),
('2024-09-05', 2, 5),
('2024-09-06', 3, 6),
('2024-09-07', 3, 7),
('2024-09-08', 4, 8),
('2024-09-09', 4, 9),
('2024-09-10', 5, 1),
('2024-09-11', 5, 2),
('2024-09-12', 6, 3),
('2024-09-13', 6, 4),
('2024-09-14', 7, 5),
('2024-09-15', 7, 6),
('2024-09-16', 8, 7),
('2024-09-17', 8, 8),
('2024-09-18', 9, 9),
('2024-09-19', 9, 1);

select p.nome_produto, p.preco_produto,
v.data_venda, c.nome_cliente from produtos p
JOIN vendas v ON p.id_produto = v.id_produto
JOIN clientes c ON v.id_cliente = c.id_cliente; 

select ROUND(AVG(produtos.preco_produto),2) AS media_produtos FROM produtos;

select COUNT(vendas.id_venda) AS quantidade_vendas FROM vendas;

select MAX(produtos.preco_produto) AS valor_maximo FROM produtos;

select MIN(produtos.preco_produto) AS valor_minimo FROM produtos;

select ROUND(AVG(produtos.preco_produto),2) as media_especifica from produtos
WHERE id_produto = '2';

select DISTINCT(p.nome_produto), COUNT(p.preco_produto) AS quantidade_vendas, SUM(p.preco_produto) as total_vendas from vendas v
JOIN produtos p ON v.id_produto = p.id_produto 
GROUP BY nome_produto;