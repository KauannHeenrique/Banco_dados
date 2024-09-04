create database faculdade;
use faculdade;


create table alunos(
	id_aluno int auto_increment primary key,
    nome_aluno varchar (150) not null,
    cpf_aluno varchar (15) not null,
    data_nascimento date not null,
    telefone_aluno varchar(20) not null,
    email_aluno varchar(50)
    );

insert into alunos (nome_aluno, cpf_aluno, data_nascimento, telefone_aluno, email_aluno) values
('Ana Silva', '123.456.789-00', '2002-03-15', '(11) 11111-1111', 'ana.silva@gmail.com'),
('João Oliveira', '987.654.321-00', '2001-07-22', '(22) 22222-2222', 'joao.oliveira@outlook.com'),
('Maria Santos', '111.222.333-44', '2000-11-05', '(33) 96543-3333', 'maria.santos@hotmail.com'),
('Pedro Almeida', '555.666.777-88', '1999-01-30', '(44) 44444-4444', 'pedro.almeida@gmail.com'),
('Carla Lima', '444.555.666-77', '2002-05-10', '(55) 55555-5555', 'carla.lima@gmail.com'),
('Roberto Costa', '333.444.555-66', '2003-09-20', '(66) 66666-6666', 'roberto.costa@outlook.com'),
('Fernanda Almeida', '222.333.444-55', '2001-12-25', '(77) 77777-7777', 'fernanda.almeida@outlook.com'),
('Lucas Pereira', '888.999.000-11', '1998-04-14', '(88) 88888-8888', 'lucas.pereira@gmail.com'),
('Juliana Mendes', '777.888.999-22', '2000-08-19', '(99) 99999-9999', 'juliana.mendes@hotmail.com'),
('Thiago Martins', '666.777.888-33', '2002-02-28', '(12) 12345-1234', 'thiago.martins@hotmail.com');

create table professores(
	id_professor int auto_increment primary key,
    nome_professor varchar(100) not null, 
    cpf_professor varchar(15) not null,
    telefone_professor varchar (20) not null,
    email_professor varchar(50) not null
);

insert into professores (nome_professor, cpf_professor, telefone_professor, email_professor) values 
('Carlos Pereira', '123.456.789-01', '(11) 1000-0001', 'carlos.pereira@gmail.com'),
('Laura Costa', '234.567.890-12', '(21) 2000-0002', 'laura.costa@gmail.com'),
('Fernando Almeida', '345.678.901-23', '(31) 3000-0003', 'fernando.almeida@outlook.com'),
('Ana Paula Santos', '456.789.012-34', '(41) 4000-0004', 'ana.santos@gmail.com'),
('Roberto Silva', '567.890.123-45', '(51) 5000-0005', 'roberto.silva@outlook.com'),
('Juliana Martins', '678.901.234-56', '(61) 6000-0006', 'juliana.martins@gmail.com'),
('Eduardo Lima', '789.012.345-67', '(71) 7000-0007', 'eduardo.lima@outlook.com'),
('Camila Fernandes', '890.123.456-78', '(81) 8000-0008', 'camila.fernandes@gmail.com'),
('Ricardo Oliveira', '901.234.567-89', '(91) 9000-0009', 'ricardo.oliveira@outlook.com'),
('Tatiane Almeida', '012.345.678-90', '(11) 0101-0101', 'tatiane.almeida@gmail.com');

create table cursos(
	id_curso int auto_increment primary key,
    nome_curso varchar(100) not null,
    modalidade_curso varchar(50) not null,
    duracao_curso varchar(50) not null, 
    vagas_disponiveis int not null,
    turno varchar(10) not null
);

insert into cursos (nome_curso, modalidade_curso, duracao_curso, vagas_disponiveis, turno) values 
('Administração', 'Presencial', '4 anos', 50, 'Matutino'),
('Engenharia da Computação', 'Semipresencial', '5 anos', 60, 'Noturno'),
('Psicologia', 'Presencial', '5 anos', 40, 'Vespertino'),
('Design Gráfico', 'EAD', '3 anos', 100, 'Flexível'),
('Educação Física', 'Presencial', '4 anos', 30, 'Matutino e Vespertino'),
('Ciências Contábeis', 'Semipresencial', '4 anos', 55, 'Noturno'),
('Engenharia Civil', 'Presencial', '5 anos', 50, 'Matutino'),
('Medicina', 'Presencial', '6 anos', 20, 'Integral'),
('Arquitetura e Urbanismo', 'Semipresencial', '5 anos', 35, 'Vespertino'),
('Marketing', 'EAD', '2 anos', 200, 'Flexível');

create table matriculas(
	id_matricula int auto_increment primary key, 
    id_aluno int, 
    id_curso int, 
    data_matricula date not null,
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_curso) references cursos(id_curso)
);

insert into matriculas (id_aluno, id_curso, data_matricula) values
(1, 1, '2024-01-15'),
(2, 2, '2024-02-01'),
(3, 3, '2024-03-10'),
(4, 4, '2024-01-22'),
(5, 5, '2024-02-20'),
(6, 6, '2024-03-05'),
(7, 7, '2024-01-18'),
(8, 8, '2024-02-15'),
(9, 9, '2024-03-12'),
(10, 10, '2024-01-25');

create table tb_leciona(
	id_lecionada int auto_increment primary key,
    id_professor int, 
    id_curso int,
    foreign key (id_professor) references professores(id_professor),
    foreign key (id_curso) references cursos(id_curso)
);

insert into tb_leciona (id_professor, id_curso) values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

select nome_professor, email_professor, nome_curso from tb_leciona l
join professores p on l.id_professor = p.id_professor
join cursos c on l.id_curso = c.id_curso;


select a.nome_aluno, c.nome_curso, p.nome_professor, m.data_matricula from tb_leciona l
join matriculas m on l.id_curso = m.id_curso
join professores p on l.id_professor = p.id_professor
join alunos a on m.id_aluno = a.id_aluno
join cursos c on l.id_curso = c.id_curso
where m.data_matricula < '2024-03-01'
order by m.data_matricula;
