create database exercicio;
use exercicio;

create table professor(
	codigo int auto_increment primary key, 
    nome varchar (70), 
    data_nascimento date,
    disciplina varchar (70)
);

insert into professor (nome, data_nascimento, disciplina) 
values
('Pedro Almeida',	'1983-08-22',	'Filosofia'),
('Karla Sousa',	'1995-08-12',	'Música'),
('Gabriel Oliveira',	'1988-03-21',	'História'),
('Ana Silva',	'1980-02-15',	'Matemática'),
('Júlia Costa',	'1992-09-10',	'Química'),
('Roberto Lima',	'1981-12-05',	'Literatura'),
('Ana Beatriz Reis',	'1985-04-16',	'Geografia'),
('Flávio Rodrigues',	'1987-06-23',	'Biologia'),
('Camila Santos',	'1990-07-30',	'Arte'),
('Ricardo Mendes',	'1983-11-11',	'Educação Física'),
('Helena Martins',	'1989-08-19',	'Música'),
('Bruno Fernandes',	'1991-01-27',	'Sociologia'),
('Mariana Ferreira',	'1984-10-03',	'Informática'),
('Lucas Pereira',	'1982-02-12',	'História da Arte'),
('Sofia Albuquerque',	'1995-06-09',	'Matemática'),
('André Costa',	'1978-12-25',	'Inglês'),
('Beatriz Campos',	'1994-03-19',	'Filosofia'),
('Eduardo Santos',	'1986-07-15',	'Química'),
('Daniela Silva',	'1993-11-20',	'Geografia'),
('Felipe Nogueira',	'1980-08-13',	'Física'),
('Larissa Costa',	'1992-05-02',	'Sociologia'),
('Gustavo Almeida',	'1988-09-30',	'Biologia'),
('Joana Oliveira',	'1987-01-11',	'Arte'),
('Lucas Ferreira',	'1991-10-04',	'História'),
('Letícia Rocha',	'1983-05-18',	'Matemática'),
('Marcelo Santos',	'1995-12-27',	'Educação Física'),
('Patrícia Silva',	'1984-04-21',	'Música'),
('Pedro Henrique',	'1980-06-12',	'Física'),
('Aline Pereira',	'1987-11-05',	'Literatura'),
('Igor Carvalho',	'1993-02-22',	'História da Arte'),
('Natalia Lima',	'1991-07-09',	'Química'),
('Renan Almeida',	'1986-10-30',	'Geografia'),
('Sabrina Santos',	'1984-08-17',	'Filosofia'),
('Vítor Campos',	'1990-09-24',	'Música'),
('Mariana Silva',	'1982-03-05',	'Educação Física'),
('Wellington Costa',	'1994-12-12',	'Sociologia'),
('Fernanda Oliveira',	'1988-07-30',	'Arte'),
('Gabriel Santos',	'1983-05-10',	'Matemática'),
('Ingrid Almeida',	'1995-11-22',	'Física'),
('Rodrigo Pereira',	'1987-04-17',	'Química'),
('Yasmin Lima',	'1992-08-15',	'História'),
('Cláudia Campos',	'1980-09-12',	'Biologia'),
('Francisco Ribeiro',	'1991-02-06',	'Educação Física'),
('Teresa Costa',	'1984-01-18',	'História da Arte'),
('Diego Ferreira',	'1990-04-21',	'Sociologia'),
('Alice Souza',	'1986-07-28',	'Inglês'),
('Renato Lima',	'1993-06-14',	'Literatura'),
('Priscila Almeida',	'1989-12-05',	'Matemática'),
('Andréia Martins',	'1983-10-22',	'Geografia'),
('Mauro Nogueira',	'1982-02-28',	'Física');

create table tb_categoria(
	id_categoria int primary key auto_increment,
    nome_produto varchar (200),
	desc_categoria varchar(2000)
);

insert into tb_categoria (nome_produto, desc_categoria) values
('Smartphone Ultra Rápido', 'Smartphone de alta velocidade com câmera avançada.'),
('Tênis de Corrida Confortável', 'Tênis com ótimo amortecimento para corrida.'),
('Relógio Inteligente', 'Relógio com rastreamento de saúde e notificações.'),
('Cafeteira Expresso Compacta', 'Cafeteira compacta para expresso perfeito.'),
('Fones de Ouvido Sem Fio', 'Fones sem fio com som de alta qualidade.'),
('Câmera Digital 4K', 'Câmera 4K para fotos e vídeos nítidos.'),
('Aspirador de Pó Robótico', 'Aspirador robótico para limpeza automática.'),
('Cadeira de Escritório Ergonômica', 'Cadeira confortável com suporte lombar ajustável.'),
('Bolsa de Viagem Resistente', 'Bolsa durável com vários compartimentos.'),
('Monitor 27" Ultra HD', 'Monitor Ultra HD de 27" para imagem clara.'),
('Ventilador de Mesa Compacto', 'Ventilador compacto e eficiente para mesas.'),
('Kit de Maquiagem Profissional', 'Kit completo para maquiagem profissional.'),
('Aquecedor Elétrico Portátil', 'Aquecedor portátil para ambientes pequenos.'),
('Livro de Receitas Gourmet', 'Livro com receitas sofisticadas e saborosas.'),
('Tênis Casual Estiloso', 'Tênis moderno e confortável para o dia a dia.'),
('Garrafas de Água Reutilizáveis', 'Garrafas duráveis e ecológicas.'),
('Kit de Ferramentas Básico', 'Kit essencial de ferramentas para casa.'),
('Cesta de Café da Manhã Gourmet', 'Cesta com itens gourmet para café da manhã.'),
('Cadeira de Praia Dobrável', 'Cadeira dobrável com porta-copos integrado.'),
('Notebook Slim', 'Notebook leve e com alta performance.'),
('Liquidificador Potente', 'Liquidificador potente para smoothies e mais.'),
('Cadeira de Massagem', 'Cadeira com diferentes modos de massagem.'),
('Grill Elétrico', 'Grill elétrico fácil de limpar e usar.'),
('Luminária LED Moderna', 'Luminária LED com design moderno.'),
('Tênis de Futebol', 'Tênis confortável para praticar futebol.'),
('Jogo de Panelas Antiaderente', 'Panelas antiaderentes para cozinhar sem esforço.'),
('Máquina de Costura', 'Máquina de costura com várias funções.'),
('Churrasqueira Portátil', 'Churrasqueira compacta e fácil de transportar.'),
('Kit de Jardinagem', 'Kit com ferramentas básicas para jardinagem.'),
('Câmera de Segurança Wi-Fi', 'Câmera Wi-Fi para monitoramento fácil.'),
('Tênis de Skate', 'Tênis durável e estiloso para skate.'),
('Organizador de Mesa', 'Organizador para manter a mesa arrumada.'),
('Sacola Térmica Reutilizável', 'Sacola térmica para manter alimentos frescos.'),
('Mouse Ergônomico', 'Mouse com design ergonômico para conforto.'),
('Fritadeira Elétrica', 'Fritadeira sem óleo para refeições crocantes.'),
('Bolsa de Laptop', 'Bolsa acolchoada para proteger seu laptop.'),
('Roteador Wi-Fi de Alta Velocidade', 'Roteador para conexão rápida e estável.'),
('Câmera Instantânea', 'Câmera que imprime fotos na hora.'),
('Pipoqueira Elétrica', 'Pipoqueira sem óleo para pipocas crocantes.'),
('Escova de Cabelo Profissional', 'Escova para desembaraçar e alisar cabelos.'),
('Aquecedor de Mãos Elétrico', 'Aquecedor compacto para mãos quentes.'),
('Mochila de Hidratação', 'Mochila com compartimento para água e equipamentos.'),
('Colchão Inflável para Camping', 'Colchão inflável confortável para camping.'),
('Batedeira de Mão', 'Batedeira com vários acessórios para receitas.'),
('Cesta Organizadora', 'Cesta para organizar itens diversos.'),
('Relógio de Parede Elegante', 'Relógio com design sofisticado para decoração.'),
('Cabos de Carregamento Rápido', 'Cabos para carregamento rápido e eficiente.'),
('Protetor Solar Facial', 'Protetor solar para proteção diária.'),
('Secador de Cabelo Compacto', 'Secador compacto e potente para uso diário.'),
('Armazenamento para Joias', 'Organizador para manter joias arrumadas.');

create table tb_produtos(
	id_produtos int auto_increment primary key, 
    desc_produto varchar (50), 
    valor decimal(25,2),
    id_categoria int
); 

insert into tb_produtos (desc_produto, valor,id_categoria) values
('Smartphone de alta velocidade com câmera avançada.', 1499.99, 1),
('Tênis com ótimo amortecimento para corrida.', 299.99, 2),
('Relógio com rastreamento de saúde e notificações.', 499.99, 3),
('Cafeteira compacta para expresso perfeito.', 199.99, 4),
('Fones sem fio com som de alta qualidade.', 129.99, 5),
('Câmera 4K para fotos e vídeos nítidos.', 799.99, 6),
('Aspirador robótico para limpeza automática.', 349.99, 7),
('Cadeira confortável com suporte lombar ajustável.', 399.99, 8),
('Bolsa durável com vários compartimentos.', 149.99, 9),
('Monitor Ultra HD de 27" para imagem clara.', 499.99, 10),
('Ventilador compacto e eficiente para mesas.', 59.99, 11),
('Kit completo para maquiagem profissional.', 89.99, 12),
('Aquecedor portátil para ambientes pequenos.', 79.99, 13),
('Livro com receitas sofisticadas e saborosas.', 39.99, 14),
('Tênis moderno e confortável para o dia a dia.', 249.99, 15),
('Garrafas duráveis e ecológicas.', 19.99, 16),
('Kit essencial de ferramentas para casa.', 99.99, 17),
('Cesta com itens gourmet para café da manhã.', 89.99, 18),
('Cadeira dobrável com porta-copos integrado.', 69.99, 19),
('Notebook leve e com alta performance.', 1299.99, 20),
('Liquidificador potente para smoothies e mais.', 139.99, 21),
('Cadeira com diferentes modos de massagem.', 899.99, 22),
('Grill elétrico fácil de limpar e usar.', 149.99, 23),
('Luminária LED com design moderno.', 79.99, 24),
('Tênis confortável para praticar futebol.', 279.99, 25),
('Panelas antiaderentes para cozinhar sem esforço.', 199.99, 26),
('Máquina de costura com várias funções.', 399.99, 27),
('Churrasqueira compacta e fácil de transportar.', 179.99, 28),
('Kit com ferramentas básicas para jardinagem.', 69.99, 29),
('Câmera Wi-Fi para monitoramento fácil.', 119.99, 30),
('Tênis durável e estiloso para skate.', 229.99, 31),
('Organizador para manter a mesa arrumada.', 29.99, 32),
('Sacola térmica para manter alimentos frescos.', 39.99, 33),
('Mouse com design ergonômico para conforto.', 59.99, 34),
('Fritadeira sem óleo para refeições crocantes.', 159.99, 35),
('Bolsa acolchoada para proteger seu laptop.', 89.99, 36),
('Roteador para conexão rápida e estável.', 149.99, 37),
('Câmera que imprime fotos na hora.', 199.99, 38),
('Pipoqueira sem óleo para pipocas crocantes.', 79.99, 39),
('Escova para desembaraçar e alisar cabelos.', 49.99, 40),
('Aquecedor compacto para mãos quentes.', 39.99, 41),
('Mochila com compartimento para água e equipamentos.', 89.99, 42),
('Colchão inflável confortável para camping.', 119.99, 43),
('Batedeira com vários acessórios para receitas.', 79.99, 44),
('Cesta para organizar itens diversos.', 24.99, 45),
('Relógio com design sofisticado para decoração.', 59.99, 46),
('Cabos para carregamento rápido e eficiente.', 19.99, 47),
('Protetor solar para proteção diária.', 29.99, 48),
('Secador compacto e potente para uso diário.', 89.99, 49),
('Organizador para manter joias arrumadas.', 49.99, 50);

create table funcionarios(
	id int auto_increment primary key, 
	nome varchar (50), 
    email varchar(50), 
    endereco varchar (50)
);

insert into funcionarios (nome, email, endereco) values 
('Ana Pereira', 'ana.pereira@gmail.com', 'Rua das Flores, 123, São Paulo, SP'),
('Bruno Silva', 'bruno.silva@hotmail.com', 'Avenida Paulista, 456, São Paulo, SP'),
('Carla Santos', 'carla.santos@yahoo.com.br', 'Rua da Lapa, 789, Rio de Janeiro, RJ'),
('Daniel Oliveira', 'daniel.oliveira@outlook.com', 'Praça da República, 101, Belo Horizonte, MG'),
('Eliane Costa', 'eliane.costa@gmail.com', 'Rua das Palmeiras, 202, Salvador, BA'),
('Felipe Almeida', 'felipe.almeida@hotmail.com', 'Rua das Acácias, 303, Porto Alegre, RS'),
('Gabriela Rocha', 'gabriela.rocha@yahoo.com', 'Avenida Beira-Mar, 404, Fortaleza, CE'),
('Henrique Martins', 'henrique.martins@gmail.com', 'Rua dos Jasmins, 505, Recife, PE'),
('Isabela Fernandes', 'isabela.fernandes@outlook.com', 'Rua dos Lírios, 606, Curitiba, PR'),
('João Sousa', 'joao.sousa@hotmail.com', 'Avenida Brasil, 707, Manaus, AM'),
('Karla Almeida', 'karla.almeida@gmail.com', 'Rua do Carmo, 808, João Pessoa, PB'),
('Lucas Pereira', 'lucas.pereira@yahoo.com', 'Rua das Margaridas, 909, Florianópolis, SC'),
('Mariana Lima', 'mariana.lima@outlook.com', 'Praça da Sé, 1010, Brasília, DF'),
('Natália Costa', 'natalia.costa@hotmail.com', 'Rua do Catete, 1111, Vitória, ES'),
('Otávio Santos', 'otavio.santos@gmail.com', 'Rua da Consolação, 1212, Natal, RN'),
('Patrícia Gomes', 'patricia.gomes@yahoo.com.br', 'Rua dos Espinheiros, 1313, Campo Grande, MS'),
('Quélia Dias', 'quelia.dias@outlook.com', 'Avenida dos Estados, 1414, São Luís, MA'),
('Ricardo Martins', 'ricardo.martins@gmail.com', 'Rua das Azaleias, 1515, São Bernardo do Campo, SP'),
('Sabrina Costa', 'sabrina.costa@hotmail.com', 'Rua da Paz, 1616, Maceió, AL'),
('Tiago Ribeiro', 'tiago.ribeiro@yahoo.com', 'Avenida Rio Branco, 1717, Cuiabá, MT'),
('Ursula Vieira', 'ursula.vieira@gmail.com', 'Rua das Oliveiras, 1818, Teresina, PI'),
('Vinícius Andrade', 'vinicius.andrade@hotmail.com', 'Avenida São João, 1919, Aracaju, SE'),
('Wellington Silva', 'wellington.silva@outlook.com', 'Rua das Américas, 2020, Palmas, TO'),
('Xuxa Lima', 'xuxa.lima@gmail.com', 'Rua da Alegria, 2121, Macapá, AP'),
('Yara Pimentel', 'yara.pimentel@yahoo.com.br', 'Avenida Central, 2222, Boa Vista, RR'),
('Zé Fernandes', 'ze.fernandes@hotmail.com', 'Rua do Sol, 2323, Porto Velho, RO'),
('Amanda Ferreira', 'amanda.ferreira@gmail.com', 'Avenida D. Pedro II, 2424, Belém, PA'),
('Bruno Costa', 'bruno.costa@outlook.com', 'Rua dos Girassóis, 2525, Ribeirão Preto, SP'),
('Cíntia Martins', 'cintia.martins@yahoo.com.br', 'Rua dos Olmos, 2626, São José dos Campos, SP'),
('Diego Almeida', 'diego.almeida@hotmail.com', 'Rua das Orquídeas, 2727, Sorocaba, SP'),
('Eliana Pereira', 'eliana.pereira@gmail.com', 'Rua do Horto, 2828, Juiz de Fora, MG'),
('Felipe Souza', 'felipe.souza@yahoo.com', 'Avenida Tancredo Neves, 2929, Niterói, RJ'),
('Gabriel Costa', 'gabriel.costa@outlook.com', 'Rua das Violetas, 3030, Londrina, PR'),
('Heloísa Nascimento', 'heloisa.nascimento@gmail.com', 'Rua da Piedade, 3131, Blumenau, SC'),
('Igor Oliveira', 'igor.oliveira@hotmail.com', 'Rua das Estrelas, 3232, São José, SC'),
('Juliana Campos', 'juliana.campos@yahoo.com.br', 'Avenida das Nações, 3333, Vitória da Conquista, BA'),
('Kátia Almeida', 'katia.almeida@gmail.com', 'Rua da Harmonia, 3434, São João de Meriti, RJ'),
('Leandro Fernandes', 'leandro.fernandes@outlook.com', 'Rua da Liberdade, 3535, São Vicente, SP'),
('Marlene Dias', 'marlene.dias@yahoo.com', 'Rua das Flores, 3636, Valença, BA'),
('Nicolas Silva', 'nicolas.silva@gmail.com', 'Rua dos Lírios, 3737, Joinville, SC'),
('Olga Santos', 'olga.santos@hotmail.com', 'Avenida Independência, 3838, Varginha, MG'),
('Patrícia Martins', 'patricia.martins@outlook.com', 'Rua do Bosque, 3939, Piracicaba, SP'),
('Rafael Costa', 'rafael.costa@gmail.com', 'Rua da Serra, 4040, Itabuna, BA'),
('Sandra Almeida', 'sandra.almeida@yahoo.com.br', 'Avenida das Árvores, 4141, Petrolina, PE'),
('Tânia Souza', 'tania.souza@hotmail.com', 'Rua das Begônias, 4242, Itajaí, SC'),
('Ulysses Gomes', 'ulysses.gomes@gmail.com', 'Rua das Orquídeas, 4343, Macaé, RJ'),
('Vanessa Santos', 'vanessa.santos@yahoo.com', 'Rua do Comércio, 4444, Montes Claros, MG'),
('Wagner Lima', 'wagner.lima@outlook.com', 'Avenida da República, 4545, Santarém, PA'),
('Xander Pires', 'xander.pires@gmail.com', 'Rua do Jardim, 4646, Nova Iguaçu, RJ'),
('Yuri Almeida', 'yuri.almeida@hotmail.com', 'Rua das Azaleias, 4747, Caxias do Sul, RS'),
('Zilda Costa', 'zilda.costa@yahoo.com.br', 'Rua da Estrela, 4848, Campo Grande, MS'),
('Aline Fernandes', 'aline.fernandes@outlook.com', 'Avenida Alagoas, 4949, São Sebastião, SP'),
('Bárbara Lima', 'barbara.lima@gmail.com', 'Rua da Luz, 5050, Juazeiro do Norte, CE'),
('Cláudia Almeida', 'claudia.almeida@hotmail.com', 'Rua da Estação, 5151, Uberlândia, MG');
