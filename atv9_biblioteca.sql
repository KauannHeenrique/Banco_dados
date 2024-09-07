CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores(
	id_autor int auto_increment primary key,
    nome_autor varchar (200) not null
    ); 
    
INSERT INTO autores (nome_autor) VALUES 
('J.K. Rowling'),
('J.R.R. Tolkien');

CREATE TABLE categorias(
	id_categoria int auto_increment primary key,
    nome_categoria varchar (100) not null
);

INSERT INTO categorias (nome_categoria) values
('Romance'),
('Ficção'),
('Aventura'),
('Fantasia');

CREATE TABLE livros(
	id_livro int auto_increment primary key, 
    titulo_livro varchar(200) not null, 
    id_autor int,
    id_categoria int,
    foreign key (id_autor) references autores(id_autor),
    foreign key (id_categoria) references categorias(id_categoria)
);

INSERT INTO livros (titulo_livro, id_autor, id_categoria) VALUES 
	('Harry Potter e a Pedra Filosofal', 1, 4),
	('Harry Potter e a Câmara Secreta', 1, 4),
	('O Senhor dos Anéis: A Sociedade do Anel', 2, 2);

CREATE TABLE empregados(
	id_empregado int auto_increment primary key, 
    nome_empregado varchar (200) not null, 
    id_supervisor int,
    foreign key (id_supervisor) references empregados(id_empregado)
);

insert into empregados (nome_empregado, id_supervisor) values
	('Carlos Silva', NULL),  
	('Maria Souza', 1),      
	('João Oliveira', 1),    
	('Ana Pereira', 2),     
	('Pedro Lima', 2),      
	('Fernanda Costa', 3);  

SELECT livros.titulo_livro, autores.nome_autor, categorias.nome_categoria  FROM livros
JOIN autores ON livros.id_autor = autores.id_autor
join categorias on livros.id_categoria = categorias.id_categoria;

SELECT e1.id_empregado, e1.nome_empregado, e2.nome_empregado AS nome_supervisor -- AS renomeia a coluna selecionada 
FROM empregados e1  -- as colunas precisam de e1 e e2 pois precisam se consultar "duas vezes"
LEFT JOIN empregados e2 ON e1.id_supervisor = e2.id_empregado; -- left join retorna todas as linhas, mesmo as nulas

