CREATE DATABASE lojaeletronicos;
USE lojaeletronicos;

CREATE TABLE fornecedores(
	id_fornecedor int auto_increment primary key,
    nome_fornecedor varchar (150) not null
);

INSERT INTO fornecedores (nome_fornecedor) VALUES 
('TechCorp'),
('Gadgets Inc.'),
('NovaTech'),
('GigaGadgets');

CREATE TABLE categorias(
	id_categoria int auto_increment primary key,
    nome_categoria varchar (150) not null
);

INSERT INTO categorias (nome_categoria) VALUES 
('Eletrônicos'),
('Acessórios');

CREATE TABLE produtos(
	id_produto int auto_increment primary key,
    nome_produto varchar (200) not null,
    preco_produto float (10,2) not null, 
    id_categoria int,
    id_fornecedor int,
    foreign key (id_categoria) references categorias(id_categoria),
    foreign key (id_fornecedor) references fornecedores(id_fornecedor)
);

INSERT INTO produtos (nome_produto, preco_produto, id_categoria, id_fornecedor) VALUES
('Smartphone', 1299.00, 1, 1),
('Carregador', 129.90, 2, 2),
('Tablet', 1279.00, 1, 1),
('Smartwatch', 299.00, 1, 4),
('Fone de Ouvido Bluetooth', 199.90, 1, 3),
('Mouse Gamer', 129.90, 1, 1),
('Caixa de Som Bluetooth', 179.99, 1, 1),
('Roteador Wi-Fi', 229.00, 1, 2),
('Disco Rígido Externo', 359.00, 1, 2),
('Laptop Gaming', 3499.00, 1, 4),
('Teclado Compacto', 99.90, 1, 1),
('Câmera de Segurança', 229.00, 1, 3),
('Headset com Microfone', 139.90, 1, 1),
('Disco SSD 1TB', 799.00, 1, 2),
('Modem 4G', 119.90, 1, 1),
('Placa de Vídeo', 1299.00, 1, 1),
('Teclado de Laptop', 79.90, 1, 4),
('Smartphone de Entrada', 799.00, 1, 1),
('Acessório para Videogame', 89.90, 1, 4),
('Kit de Ferramentas para Eletrônicos', 49.90, 1, 2),
('Amplificador de Sinal', 129.00, 1, 3),
('Painel Solar Portátil', 299.00, 1, 1),
('Fone de Ouvido com Cancelamento de Ruído', 249.00, 1, 4),
('Teclado Mecânico', 149.99, 1, 1),
('Webcam HD', 89.90, 1, 2),
('Óculos VR', 499.00, 1, 3),
('Impressora 3D', 1199.00, 1, 4),
('Adaptador USB-C', 59.90, 2, 2),
('Capinha para Smartphone', 29.90, 2, 3),
('Película para Tela', 19.90, 2, 1),
('Hub USB', 49.90, 2, 4),
('Suporte para Celular', 34.90, 2, 1),
('Cartão de Memória 64GB', 69.90, 2, 2),
('Estabilizador de Voltagem', 139.00, 2, 3),
('Carregador Veicular', 49.90, 2, 2),
('Monitor 24"', 449.00, 1, 2),
('Tablet Pro', 1799.00, 1, 4),
('Projetor Full HD', 999.00, 1, 3),
('Mouse Wireless', 89.90, 1, 2),
('Scanner de Documentos', 299.00, 1, 4),
('Roteador Mesh', 399.00, 1, 3),
('Teclado para Gaming', 159.90, 1, 1),
('Placa de Captura de Vídeo', 189.00, 1, 2),
('Smartphone Ultra', 1799.00, 1, 3),
('Sistema de Áudio Surround', 899.00, 1, 1),
('Estabilizador de Voltagem', 119.00, 2, 2),
('Dispositivo de Streaming', 149.00, 1, 3),
('Câmera de Segurança HD', 299.00, 1, 3),
('Modem Fiber Optic', 159.00, 1, 4),
('Tablet Básico', 799.00, 1, 2),
('Smartwatch Fitness', 349.00, 1, 1),
('Microfone para Estúdio', 199.00, 1, 4),
('Sistema de Iluminação Inteligente', 249.00, 1, 1),
('Cabo HDMI', 39.90, 2, 4),
('Organizador de Cabos', 39.90, 2, 1),
('Mini Ventilador USB', 39.90, 2, 3),
('Adaptador de Tomada Universal', 29.90, 2, 2),
('Carregador de Pilhas', 49.90, 2, 3),
('Suporte de Mesa para Celular', 34.90, 2, 4),
('Câmera Digital', 799.00, 1, 2),
('Telefone Sem Fio', 149.00, 1, 3),
('Central Multimídia', 499.00, 1, 2),
('Calculadora Científica', 69.90, 1, 4),
('Teclado e Mouse Sem Fio', 119.90, 1, 3),
('Luminária LED', 49.90, 2, 2),
('Adaptador para Cartão SD', 39.90, 2, 4),
('Repetidor de Sinal Wi-Fi', 89.90, 1, 2),
('Carregador de Bateria para Câmera', 79.90, 2, 3),
('Cabo de Energia para Notebook', 29.90, 2, 1),
('Tela de Projeção Manual', 299.00, 1, 3),
('Kit de Cabos para Computador', 79.90, 2, 4),
('Mini Hub USB', 29.90, 2, 3),
('Fone de Ouvido com Cancelamento de Ruído', 249.00, 1, 4),
('Cabo USB-C para Lightning', 49.90, 2, 1),
('Hub USB-C', 69.90, 2, 4),
('Ventoinha USB', 29.90, 2, 3),
('Cabo de Rede Gigabit', 39.90, 2, 1),
('Câmera de Segurança Wi-Fi', 249.00, 1, 2),
('Adaptador HDMI para VGA', 29.90, 2, 4),
('Roteador Dual Band', 199.00, 1, 3),
('Teclado Numérico', 79.90, 1, 1),
('Central de Controle de Casa Inteligente', 199.00, 1, 4),
('Roteador 4G', 149.00, 1, 2),
('Monitor Curvo 27"', 799.00, 1, 3),
('Projetor Portátil', 399.00, 1, 4),
('Fone de Ouvido com Microfone', 119.90, 1, 1),
('Teclado Ergonomico', 139.90, 1, 2),
('Modem ADSL', 89.90, 2, 3),
('Mini Repetidor Wi-Fi', 59.90, 2, 4),
('Disco Rígido Externo 2TB', 499.00, 1, 1),
('Carregador Solar', 129.90, 1, 4),
('Óculos de Realidade Aumentada', 399.00, 1, 2),
('Fone de Ouvido Sem Fio', 229.00, 1, 3),
('Teclado Compacto para Tablets', 89.90, 1, 4),
('Adaptador de Rede Ethernet', 49.90, 2, 1),
('Kit de Cabos HDMI', 69.90, 2, 2),
('Tablet de Anotações', 499.00, 1, 3),
('Central de Áudio', 299.00, 1, 4),
('Câmera de Ação Full HD', 599.00, 1, 1),
('Teclado Mecânico para Gaming', 179.00, 1, 2),
('Repetidor de Sinal 4G', 89.90, 2, 3),
('Conector USB para HDMI', 39.90, 2, 4),
('Roteador Inteligente', 349.00, 1, 1);

select p.nome_produto, f.nome_fornecedor, c.nome_categoria from produtos p
JOIN categorias c ON c.id_categoria = p.id_categoria
JOIN fornecedores f ON f.id_fornecedor = p.id_fornecedor; 

UPDATE produtos SET preco_produto = 549.99 WHERE nome_produto = 'Smartphone';

DELETE FROM produtos WHERE nome_produto = 'Carregador';

select c.nome_categoria, ROUND(AVG(p.preco_produto),2) AS preco_medio from produtos p
JOIN categorias c ON c.id_categoria = p.id_categoria
GROUP BY c.id_categoria;

select ROUND(AVG(preco_produto),2) AS preco_medio from produtos
GROUP BY id_categoria; 
select p.nome_produto, p.preco_produto from produtos p
where p.preco_produto > (
	select ROUND(AVG(p2.preco_produto),2) 
    from produtos p2
    WHERE p2.id_categoria = p.id_categoria
)
ORDER BY id_categoria;

CREATE TABLE empregados(
	id_empregado int auto_increment primary key,
    nome_empregado varchar (250) not null, 
    id_supervisor int,
    foreign key (id_supervisor) references empregados(id_empregado)
);

INSERT INTO empregados (nome_empregado, id_supervisor) VALUES 
('Ana Silva', NULL),
('Bruno Lancastre', 1),
('Carlos Drumond', 1),
('Diana dos Santos', 2),
('Eva Albuquerque', 2),
('Felipe Romão', 3),
('Gabriela Costa', 4),
('Hugo Almeida', 4),
('Isabela Rocha', 5),
('João Pedro', 5),
('Karina Lima', 6),
('Lucas Fernandes', 6),
('Mariana Oliveira', 7),
('Nicolas Pereira', 7),
('Olga Martins', 8),
('Paulo Souza', 8),
('Quiteria Mendes', 9),
('Rafael Santos', 9),
('Sofia Silva', 10),
('Tiago Gonçalves', 10),
('Ursula Castro', 11),
('Vitor Almeida', 11),
('Wanda Oliveira', 12),
('Xavier Lima', 12),
('Yasmin Santos', 13),
('Zé Maria', 13),
('Amanda Ferreira', 14),
('Bruno Campos', 14),
('Cláudia Moreira', 15),
('Diego Silva', 15),
('Eduarda Costa', 16),
('Felipe Pereira', 16),
('Giovanna Almeida', 17),
('Henrique Rocha', 17),
('Irene Oliveira', 18),
('Júlio César', 18),
('Karla Souza', 19),
('Luiz Gustavo', 19),
('Marcos Vinícius', 20),
('Natália Lima', 20),
('Osmar Ribeiro', 21),
('Priscila Santos', 21),
('Rogério Oliveira', 22),
('Simone Almeida', 22),
('Tatiane Martins', 23),
('Ulisses Castro', 23),
('Viviane Santos', 24),
('Walter Silva', 24),
('Xuxa Pereira', 25),
('Yuri Almeida', 25),
('Zara Ferreira', 26),
('Alexandre Costa', 26),
('Beatriz Rocha', 27),
('Carlos Eduardo', 27),
('Daniela Lima', 28),
('Eduardo Souza', 28),
('Fernanda Lima', 29),
('Gustavo Campos', 29),
('Helena Castro', 30),
('Igor Santos', 30),
('Juliana Martins', 31),
('Kleber Pereira', 31),
('Luciana Ferreira', 32),
('Mário Almeida', 32),
('Nicole Oliveira', 33),
('Otávio Silva', 33),
('Patrícia Souza', 34),
('Renato Costa', 34),
('Sílvia Mendes', 35),
('Thiago Lima', 35),
('Úrsula Silva', 36),
('Vinícius Oliveira', 36),
('Wellington Santos', 37),
('Ximena Ferreira', 37),
('Yago Almeida', 38),
('Zuleica Castro', 38),
('Ana Carolina', 39),
('Bruno Vieira', 39),
('Cláudia Silva', 40),
('Daniel Oliveira', 40),
('Eliane Pereira', 41),
('Fernando Souza', 41),
('Gabriel Costa', 42),
('Heloísa Lima', 42),
('Isabela Martins', 43),
('João Gomes', 43),
('Kátia Silva', 44),
('Luan Oliveira', 44),
('Marcela Costa', 45),
('Nathalia Pereira', 45),
('Otávio Campos', 46),
('Patrícia Almeida', 46),
('Rafael Oliveira', 47),
('Sabrina Silva', 47),
('Tiago Costa', 48),
('Uéliton Lima', 48),
('Viviane Pereira', 49),
('Wagner Souza', 49),
('Xuxa Costa', 50),
('Yuri Ferreira', 50),
('Zé Carlos', 51);

select e.id_empregado, e.nome_empregado, 
e2.nome_empregado AS nome_supervisor
from empregados e
LEFT JOIN empregados e2 ON e.id_supervisor = e2.id_empregado;

select p.nome_produto, p.preco_produto,
c.nome_categoria, f.nome_fornecedor from produtos p
JOIN categorias c ON p.id_categoria = c.id_categoria
JOIN fornecedores f ON p.id_fornecedor = f.id_fornecedor 
WHERE f.nome_fornecedor = 'TechCorp' AND c.nome_categoria = 'Eletrônicos';

select f.nome_fornecedor, COUNT(f.nome_fornecedor) as Produtos_fornecedor from produtos p
JOIN fornecedores f ON p.id_fornecedor = f.id_fornecedor
GROUP BY f.id_fornecedor;
