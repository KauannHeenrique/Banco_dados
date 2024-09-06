CREATE DATABASE ecomerce;
use ecomerce;

CREATE TABLE produtos(
	id_produto int primary key auto_increment,
    nome_produto varchar (100) not null, 
    quantidade_produto int not null, 
    preco_produto float not null, 
    categoria_produto varchar (100) not null, 
    status_produto varchar (50) not null
);

insert into produtos (nome_produto, quantidade_produto, preco_produto, categoria_produto, status_produto) values
('Smartphone XYZ', 50, 1999.99, 'Eletrônicos', 'Ativo'),
('Notebook ABC', 30, 3999.99, 'Eletrônicos', 'Ativo'),
('Tênis de Corrida', 100, 299.99, 'Roupas', 'Ativo'),
('Camiseta Polo', 150, 89.99, 'Roupas', 'Ativo'),
('Fone de Ouvido Bluetooth', 75, 299.99, 'Eletrônicos', 'Inativo'),
('Cadeira Gamer', 20, 1199.99, 'Móveis', 'Ativo'),
('Relógio de Pulso', 60, 499.99, 'Acessórios', 'Ativo'),
('Mochila Escolar', 80, 129.99, 'Acessórios', 'Ativo'),
('Monitor LED 24"', 25, 899.99, 'Eletrônicos', 'Ativo'),
('Teclado Mecânico', 40, 349.99, 'Eletrônicos', 'Inativo'),
('Mouse Gamer', 70, 149.99, 'Eletrônicos', 'Ativo'),
('Smartwatch', 35, 799.99, 'Acessórios', 'Ativo'),
('Impressora Multifuncional', 15, 549.99, 'Eletrônicos', 'Ativo'),
('Cadeira de Escritório', 22, 699.99, 'Móveis', 'Inativo'),
('Estante de Livros', 18, 349.99, 'Móveis', 'Ativo'),
('Microfone USB', 28, 229.99, 'Eletrônicos', 'Ativo'),
('Cafeteira Elétrica', 40, 159.99, 'Eletrodomésticos', 'Inativo'),
('Liquidificador', 35, 199.99, 'Eletrodomésticos', 'Ativo'),
('Ferro de Passar Roupa', 45, 119.99, 'Eletrodomésticos', 'Ativo'),
('Ventilador de Mesa', 50, 89.99, 'Eletrodomésticos', 'Ativo'),
('Aspirador de Pó', 20, 399.99, 'Eletrodomésticos', 'Inativo'),
('Notebook Gaming', 12, 5499.99, 'Eletrônicos', 'Ativo'),
('Projetor Full HD', 10, 2499.99, 'Eletrônicos', 'Ativo'),
('Teclado Musical', 8, 1599.99, 'Instrumentos Musicais', 'Ativo'),
('Guitarra Elétrica', 15, 1999.99, 'Instrumentos Musicais', 'Ativo'),
('Câmara Digital', 25, 1799.99, 'Eletrônicos', 'Inativo'),
('Drone com Câmera', 12, 999.99, 'Eletrônicos', 'Ativo'),
('Tênis Casual', 90, 199.99, 'Roupas', 'Ativo');

CREATE TABLE clientes(
	id_cliente int auto_increment primary key,
    nome_cliente varchar (200) not null, 
    email_cliente varchar (100) not null, 
    telefone varchar (20) not null, 
    endereco varchar (300) not null,
    cpf_cliente varchar (20) not null, 
    status_cliente varchar (50) not null 
);

insert into clientes (nome_cliente, email_cliente, telefone, endereco, cpf_cliente, status_cliente) values
('Ana Silva', 'ana.silva@gmail.com', '1111-1111', 'Rua das Flores, 123', '123.456.789-00', 'Ativo'),
('João Oliveira', 'joao.oliveira@outlook.com', '2222-2222', 'Avenida Paulista, 456', '234.567.890-01', 'Inativo'),
('Maria Santos', 'maria.santos@gmail.com', '3333-3333', 'Rua da Paz, 789', '345.678.901-12', 'Ativo'),
('Pedro Costa', 'pedro.costa@yahoo.com', '4444-4444', 'Praça da Sé, 101', '456.789.012-23', 'Ativo'),
('Carla Pereira', 'carla.pereira@gmail.com', '5555-5555', 'Avenida Brasil, 202', '567.890.123-34', 'Inativo'),
('José Almeida', 'jose.almeida@outlook.com', '6666-6666', 'Rua do Comércio, 303', '678.901.234-45', 'Ativo'),
('Fernanda Lima', 'fernanda.lima@gmail.com', '7777-7777', 'Rua das Palmeiras, 404', '789.012.345-56', 'Ativo'),
('Roberto Martins', 'roberto.martins@yahoo.com', '8888-8888', 'Avenida das Nações, 505', '890.123.456-67', 'Inativo'),
('Patrícia Souza', 'patricia.souza@gmail.com', '9999-9999', 'Rua das Américas, 606', '901.234.567-78', 'Ativo'),
('Lucas Almeida', 'lucas.almeida@outlook.com', '0000-0000', 'Rua dos Andradas, 707', '012.345.678-89', 'Ativo'),
('Juliana Rocha', 'juliana.rocha@yahoo.com', '1111-2222', 'Avenida Beira Mar, 808', '123.456.789-90', 'Inativo'),
('Marcelo Gomes', 'marcelo.gomes@gmail.com', '2222-3333', 'Rua do Sol, 909', '234.567.890-01', 'Ativo'),
('Isabela Fernandes', 'isabela.fernandes@outlook.com', '3333-4444', 'Praça da Liberdade, 1010', '345.678.901-12', 'Inativo'),
('Carlos Alberto', 'carlos.alberto@yahoo.com', '4444-5555', 'Rua dos Navegantes, 1111', '456.789.012-23', 'Ativo'),
('Jéssica Martins', 'jessica.martins@gmail.com', '5555-6666', 'Avenida da República, 1212', '567.890.123-34', 'Inativo'),
('André Silva', 'andre.silva@outlook.com', '6666-7777', 'Rua do Comércio, 1313', '678.901.234-45', 'Ativo'),
('Tatiane Costa', 'tatiane.costa@yahoo.com', '7777-8888', 'Rua das Orquídeas, 1414', '789.012.345-56', 'Ativo'),
('Roberta Oliveira', 'roberta.oliveira@gmail.com', '8888-9999', 'Avenida dos Trabalhadores, 1515', '890.123.456-67', 'Inativo'),
('Gustavo Lima', 'gustavo.lima@outlook.com', '9999-0000', 'Rua da Serra, 1616', '901.234.567-78', 'Ativo'),
('Eliane Santos', 'eliane.santos@yahoo.com', '0000-1111', 'Avenida dos Verdes, 1717', '012.345.678-89', 'Ativo'),
('Leandro Costa', 'leandro.costa@gmail.com', '1111-2222', 'Rua dos Pimentas, 1818', '123.456.789-00', 'Inativo'),
('Aline Pereira', 'aline.pereira@outlook.com', '2222-3333', 'Rua das Cerejeiras, 1919', '234.567.890-01', 'Ativo'),
('Ricardo Souza', 'ricardo.souza@yahoo.com', '3333-4444', 'Avenida das Flores, 2020', '345.678.901-12', 'Ativo'),
('Cíntia Almeida', 'cintia.almeida@gmail.com', '4444-5555', 'Praça dos Anjos, 2121', '456.789.012-23', 'Inativo'),
('Sérgio Lima', 'sergio.lima@outlook.com', '5555-6666', 'Rua da Colina, 2222', '567.890.123-34', 'Ativo'),
('Patrícia Fernandes', 'patricia.fernandes@yahoo.com', '6666-7777', 'Avenida do Parque, 2323', '678.901.234-45', 'Ativo'),
('Vera Silva', 'vera.silva@gmail.com', '7777-8888', 'Rua das Palmeiras, 2424', '789.012.345-56', 'Inativo'),
('João Pedro', 'joao.pedro@outlook.com', '8888-9999', 'Rua dos Lírios, 2525', '890.123.456-67', 'Ativo'),
('Mariana Rocha', 'mariana.rocha@yahoo.com', '9999-0000', 'Avenida das Estações, 2626', '901.234.567-78', 'Inativo'),
('Tiago Souza', 'tiago.souza@gmail.com', '0000-1111', 'Rua do Bosque, 2727', '012.345.678-89', 'Ativo'),
('Lorena Almeida', 'lorena.almeida@outlook.com', '1111-2222', 'Praça do Sol, 2828', '123.456.789-00', 'Ativo'),
('Marcela Costa', 'marcela.costa@yahoo.com', '2222-3333', 'Rua dos Pássaros, 2929', '234.567.890-01', 'Inativo'),
('Ricardo Fernandes', 'ricardo.fernandes@gmail.com', '3333-4444', 'Avenida dos Lagos, 3030', '345.678.901-12', 'Ativo');

CREATE TABLE pedidos(
	id_pedido int auto_increment primary key, 
    id_cliente int not null,
    data_pedido date not null,
    metodo_pagamento varchar (100) not null, 
    endereco_entrega varchar (300) not null, 
    observacao_pedido varchar (200),
    foreign key (id_cliente) references clientes(id_cliente)
);

insert into pedidos (id_cliente, data_pedido, metodo_pagamento, endereco_entrega, observacao_pedido) values 
(1, '2024-09-01', 'Cartão de Crédito', 'Rua das Flores, 123', 'Entrega rápida, por favor, deixar no portão.'),
(2, '2024-09-02', 'Boleto Bancário', 'Avenida Paulista, 456', 'Incluir nota fiscal no pacote.'),
(3, '2024-09-03', 'PayPal', 'Rua da Paz, 789', 'Entregar antes das 18h.'),
(4, '2024-09-04', 'Cartão de Débito', 'Praça da Sé, 101', 'Entrega em horário comercial.'),
(5, '2024-09-05', 'Cartão de Crédito', 'Avenida Brasil, 202', 'Favor confirmar recebimento por e-mail.'),
(6, '2024-09-06', 'Dinheiro na Entrega', 'Rua do Comércio, 303', 'Entregar em mãos para a recepcionista.'),
(7, '2024-09-07', 'Cartão de Crédito', 'Rua das Palmeiras, 404', 'Não deixar pacote na área externa.'),
(8, '2024-09-08', 'Boleto Bancário', 'Avenida das Nações, 505', 'Entregar no escritório até às 17h.'),
(9, '2024-09-09', 'PayPal', 'Rua das Américas, 606', 'Incluir cartão de agradecimento.'),
(10, '2024-09-10', 'Cartão de Débito', 'Rua dos Andradas, 707', 'Solicito confirmação por telefone.'),
(11, '2024-09-11', 'Cartão de Crédito', 'Rua das Acácias, 808', 'Entrega agendada para o dia seguinte.'),
(12, '2024-09-12', 'Boleto Bancário', 'Rua das Laranjeiras, 909', 'Não deixar no portão.'),
(13, '2024-09-13', 'PayPal', 'Avenida dos Eucaliptos, 1010', 'Entregar após às 19h.'),
(14, '2024-09-14', 'Cartão de Débito', 'Rua do Lago, 1111', 'Deixar na recepção do prédio.'),
(15, '2024-09-15', 'Dinheiro na Entrega', 'Rua do Sol, 1212', 'Entrega em horário comercial.'),
(16, '2024-09-16', 'Cartão de Crédito', 'Avenida das Oliveiras, 1313', 'Incluir um bilhete de agradecimento.'),
(17, '2024-09-17', 'Boleto Bancário', 'Rua da Montanha, 1414', 'Entregar entre 10h e 15h.'),
(18, '2024-09-18', 'PayPal', 'Rua do Paraíso, 1515', 'Favor confirmar a entrega.'),
(19, '2024-09-19', 'Cartão de Débito', 'Rua do Horizonte, 1616', 'Entregar na portaria.'),
(20, '2024-09-20', 'Cartão de Crédito', 'Avenida do Oceano, 1717', 'Solicito entrega urgente.'),
(21, '2024-09-21', 'Dinheiro na Entrega', 'Rua das Palmeiras, 1818', 'Entregar após às 16h.'),
(22, '2024-09-22', 'Cartão de Crédito', 'Rua das Orquídeas, 1919', 'Deixar com o vizinho caso não encontre ninguém.'),
(23, '2024-09-23', 'Boleto Bancário', 'Avenida das Flores, 2020', 'Entregar na recepção do prédio.'),
(24, '2024-09-24', 'PayPal', 'Rua dos Jacarandás, 2121', 'Incluir uma embalagem para presente.'),
(25, '2024-09-25', 'Cartão de Débito', 'Avenida das Américas, 2222', 'Entregar no escritório até às 15h.'),
(26, '2024-09-26', 'Cartão de Crédito', 'Rua da Vitória, 2323', 'Entregar diretamente no andar.'),
(27, '2024-09-27', 'Dinheiro na Entrega', 'Rua do Campos, 2424', 'Favor ligar antes de entregar.');

CREATE TABLE detalhes_pedido(
	id_pedido int, 
    id_produto int,
    quantidade_pedido int not null,
    primary key (id_pedido, id_produto),
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_produto) references produtos(id_produto)
);

insert into detalhes_pedido (id_pedido, id_produto, quantidade_pedido) values
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(3, 4, 3),
(4, 5, 1),
(5, 6, 4),
(6, 2, 2),
(7, 7, 1),
(8, 3, 5),
(9, 1, 1),
(10, 8, 2),
(11, 4, 3),
(12, 5, 1),
(13, 6, 2),
(14, 7, 4),
(15, 8, 1),
(16, 1, 3),
(17, 3, 2),
(18, 4, 5),
(19, 5, 1),
(20, 6, 3),
(21, 7, 2),
(22, 8, 4),
(23, 1, 1),
(24, 2, 2),
(25, 3, 1),
(26, 4, 4),
(27, 5, 2);

select dp.id_pedido, p.data_pedido, pd.nome_produto, dp.quantidade_pedido, p.metodo_pagamento,  
p.endereco_entrega, p.observacao_pedido from detalhes_pedido dp
join pedidos p on p.id_pedido = dp.id_pedido
join clientes c on c.id_cliente = p.id_cliente
join produtos pd on pd.id_produto = dp.id_produto;



