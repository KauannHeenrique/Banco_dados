create database biblioteca;
use biblioteca;

create table livros(
	id_livro int auto_increment primary key, 
    nome_livro varchar(100) not null, 
    quantidade_estoque int not null, 
    ano_publicacao int not null, 
    genero_livro varchar (50) not null
);

insert into livros (nome_livro, quantidade_estoque, ano_publicacao, genero_livro) values 
('Harry Potter e a Pedra Filosofal', 20, 1997, 'Fantasia'),
('O Senhor dos Anéis: A Sociedade do Anel', 15, 1954, 'Fantasia'),
('Orgulho e Preconceito', 30, 1813, 'Romance'),
('1984', 25, 1949, 'Distopia'),
('O Hobbit', 20, 1937, 'Fantasia'),
('O Código Da Vinci', 18, 2003, 'Suspense'),
('Cem Anos de Solidão', 22, 1967, 'Realismo Mágico'),
('O Pequeno Príncipe', 35, 1943, 'Literatura Infantil'),
('Moby Dick', 10, 1851, 'Aventura'),
('A Revolução dos Bichos', 20, 1945, 'Satírico'),
('O Sol é Para Todos', 25, 1960, 'Drama'),
('A Menina que Roubava Livros', 18, 2005, 'Drama Histórico'),
('O Nome do Vento', 15, 2007, 'Fantasia'),
('O Caçador de Pipas', 20, 2003, 'Drama'),
('A Garota no Trem', 18, 2015, 'Thriller'),
('O Alquimista', 30, 1988, 'Ficção Filosófica'),
('As Aventuras de Sherlock Holmes', 22, 1892, 'Mistério'),
('Drácula', 15, 1897, 'Horror'),
('A Culpa é das Estrelas', 20, 2012, 'Romance'),
('O Senhor das Moscas', 12, 1954, 'Drama'),
('O Silêncio dos Inocentes', 18, 1988, 'Suspense'),
('Jane Eyre', 25, 1847, 'Romance'),
('A Princesa Prometida', 20, 1973, 'Fantasia'),
('Beloved', 15, 1987, 'Literatura Americana'),
('A Sombra do Vento', 22, 2001, 'Mistério'),
('O Último dos Moicanos', 10, 1826, 'Aventura'),
('Os Homens que Não Amavam as Mulheres', 18, 2005, 'Thriller'),
('O Diário de Anne Frank', 25, 1947, 'Autobiografia'),
('O Guia do Mochileiro das Galáxias', 30, 1979, 'Ficção Científica'),
('O Lobo das Estepes', 15, 1927, 'Filosófico'),
('O Leão, a Feiticeira e o Guarda-Roupa', 28, 1950, 'Fantasia'),
('O Príncipe', 20, 1532, 'Filosofia Política'),
('O Mundo de Sofia', 22, 1991, 'Filosofia'),
('O Perfume: A História de um Assassino', 18, 1985, 'Suspense'),
('Laranja Mecânica', 15, 1962, 'Ficção Científica'),
('O Pintassilgo', 20, 2013, 'Drama'),
('Os Miseráveis', 12, 1862, 'Romance Histórico'),
('A Caverna', 18, 2000, 'Romance'),
('O Ciclo da Herança: Eragon', 15, 2002, 'Fantasia');

select * from livros;

create table autores(
	id_autor int auto_increment primary key, 
    nome_autor varchar(255) not null, 
    data_nascimento_autor date not null, 
    foto_autor blob, 
    email_autor varchar(100) not null
);

insert into autores (nome_autor, data_nascimento_autor, foto_autor, email_autor) values 
('J.K. Rowling', '1965-07-31', NULL, 'jk.rowling@example.com'),
('J.R.R. Tolkien', '1892-01-03', NULL, 'jrr.tolkien@example.com'),
('Jane Austen', '1775-12-16', NULL, 'jane.austen@example.com'),
('George Orwell', '1903-06-25', NULL, 'george.orwell@example.com'),
('Dan Brown', '1964-06-22', NULL, 'dan.brown@example.com'),
('Gabriel García Márquez', '1927-03-06', NULL, 'gabriel.garcia.marquz@example.com'),
('Antoine de Saint-Exupéry', '1900-06-29', NULL, 'antoine.saint.exupery@example.com'),
('Herman Melville', '1819-08-01', NULL, 'herman.melville@example.com'),
('Markus Zusak', '1975-06-23', NULL, 'markus.zusak@example.com'),
('Patrick Rothfuss', '1973-06-06', NULL, 'patrick.rothfuss@example.com'),
('Khaled Hosseini', '1965-03-04', NULL, 'khaled.hosseini@example.com'),
('Paula Hawkins', '1972-08-26', NULL, 'paula.hawkins@example.com'),
('Paulo Coelho', '1947-08-24', NULL, 'paulo.coelho@example.com'),
('Arthur Conan Doyle', '1859-05-22', NULL, 'arthur.doyle@example.com'),
('Bram Stoker', '1847-11-08', NULL, 'bram.stoker@example.com'),
('John Green', '1977-08-24', NULL, 'john.green@example.com'),
('William Golding', '1911-09-19', NULL, 'william.golding@example.com'),
('Thomas Harris', '1940-04-11', NULL, 'thomas.harris@example.com'),
('Charlotte Brontë', '1816-04-21', NULL, 'charlotte.bronte@example.com'),
('William Goldman', '1931-08-12', NULL, 'william.goldman@example.com'),
('Toni Morrison', '1931-02-18', NULL, 'toni.morrison@example.com'),
('Carlos Ruiz Zafón', '1964-09-25', NULL, 'carlos.ruiz.zafon@example.com'),
('James Fenimore Cooper', '1789-09-15', NULL, 'james.cooper@example.com'),
('Stieg Larsson', '1954-08-15', NULL, 'stieg.larsson@example.com'),
('Anne Frank', '1929-06-12', NULL, 'anne.frank@example.com'),
('Douglas Adams', '1952-03-11', NULL, 'douglas.adams@example.com'),
('Hermann Hesse', '1877-07-02', NULL, 'hermann.hesse@example.com'),
('C.S. Lewis', '1898-11-29', NULL, 'cs.lewis@example.com'),
('Nicolau Maquiavel', '1469-05-03', NULL, 'nicolaus.machiavelli@example.com'),
('Jostein Gaarder', '1952-08-08', NULL, 'jostein.gaarder@example.com'),
('Patrick Süskind', '1949-03-26', NULL, 'patrick.suskind@example.com'),
('Anthony Burgess', '1917-02-25', NULL, 'anthony.burgess@example.com'),
('Donna Tartt', '1963-09-23', NULL, 'donna.tartt@example.com'),
('Victor Hugo', '1802-02-26', NULL, 'victor.hugo@example.com'),
('José Saramago', '1922-11-16', NULL, 'jose.saramago@example.com'),
('Christopher Paolini', '1983-11-17', NULL, 'christopher.paolini@example.com'),
('Harper Lee', '1926-04-28', NULL, 'harper.lee@example.com');

select * from autores;

create table autor_escreve(
    id_livro int, 
    id_autor int, 
    contribuicao varchar(100),
    primary key (id_livro, id_autor),
    foreign key (id_livro) references livros(id_livro),
    foreign key (id_autor) references autores(id_autor)
);

insert into autor_escreve(id_livro, id_autor, contribuicao) values
(1, 1, 'Autor principal'),
(2, 2, 'Autor principal'),
(3, 3, 'Autor principal'),
(4, 4, 'Autor principal'),
(5, 2, 'Autor principal'),
(6, 5, 'Autor principal'),
(7, 6, 'Autor principal'),
(8, 7, 'Autor principal'),
(9, 8, 'Autor principal'),
(10, 4, 'Autor principal'),
(11, 37, 'Autor principal'),
(12, 9, 'Autor principal'),
(13, 10, 'Autor principal'),
(14, 11, 'Autor principal'),
(15, 12, 'Autor principal'),
(16, 13, 'Autor principal'),
(17, 14, 'Autor principal'),
(18, 15, 'Autor principal'),
(19, 16, 'Autor principal'),
(20, 17, 'Autor principal'),
(21, 18, 'Autor principal'),
(22, 19, 'Autor principal'),
(23, 20, 'Autor principal'),
(24, 21, 'Autor principal'),
(25, 22, 'Autor principal'),
(26, 23, 'Autor principal'),
(27, 24, 'Autor principal'),
(28, 25, 'Autor principal'),
(29, 26, 'Autor principal'),
(30, 27, 'Autor principal'),
(31, 28, 'Autor principal'),
(32, 29, 'Autor principal'),
(33, 30, 'Autor principal'),
(34, 31, 'Autor principal'),
(35, 32, 'Autor principal'),
(36, 33, 'Autor principal'),
(37, 34, 'Autor principal'),
(38, 35, 'Autor principal'),
(39, 36, 'Autor principal');

select l.id_livro, a.id_autor, a.nome_autor, l.nome_livro from autor_escreve ae
join autores a on ae.id_autor = a.id_autor
join livros l on ae.id_livro = l.id_livro

order by l.id_livro;