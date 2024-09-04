create database escola;
use escola;

create table alunos(
	aluno_id int auto_increment primary key,
    nome varchar (255) not null,
    data_nascimento date not null,
    endereco varchar (255) not null,
    telefone varchar (25) not null, 
    email varchar (50)
);

insert into alunos (nome, data_nascimento, endereco, telefone, email) values 
('Joao Silva', '2005-05-15', 'Rua A, 123', '1111-1111', 'joao.silva@example.com'),
('Maria Oliveira', '2006-06-22', 'Rua B, 456', '2222-2222', 'maria.oliveira@example.com');

create table professores(
	professor_id int auto_increment primary key,
    nome varchar (255) not null,
    especialidade varchar (35) not null,
    endereco varchar (255) not null, 
    telefone varchar (25) not null,
    email varchar (50) not null unique
);

insert into professores (nome, especialidade, endereco, telefone, email) values
('Carlos Pereira', 'Matemática', 'Avenida C, 789', '3333-3333', 'carlos.pereira@escola.com'),
('Ana Santos', 'História', 'Avenida D, 101', '4444-4444', 'ana.santos@escola.com');

create table cursos(
	curso_id int auto_increment primary key,
    nome varchar (50) not null,
    descricao text not null,
    carga_horaria int not null
);

insert into cursos (nome, descricao, carga_horaria) values 
('Matemática Básica', 'Curso de Matemática para iniciantes', '60'),
('História Geral', 'Curso sobre história geral do mundo', '45');

create table matriculas(
	matricula_id int auto_increment primary key, 
    aluno_id int, 
    curso_id int, 
    data_matricula date not null, 
    foreign key (aluno_id) references alunos(aluno_id),
    foreign key (curso_id) references cursos(curso_id)
);

insert into matriculas (aluno_id, curso_id, data_matricula) values 
('1', '1', '2024-08-01'),
('2', '2', '2024-08-02');

create table aulas(
	aula_id int auto_increment primary key,
    curso_id int,
    professor_id int, 
    data_aula date not null,
    horario time not null,
    foreign key (curso_id) references cursos(curso_id),
    foreign key (professor_id) references professores(professor_id)
);

insert into aulas (curso_id, professor_id, data_aula, horario) values 
('1', '1', '2024-08-05', '09:00:00'),
('2', '2', '2024-08-06', '11:00:00');

select * from alunos;

select c.nome as cursos, p.nome as professor from aulas a 
join cursos c on a.curso_id = c.curso_id

join professores p on a.professor_id = p.professor_id;

select a.nome as aluno, c.nome as curso, m.data_matricula
from matriculas m
join alunos a on m.aluno_id = a.aluno_id
join cursos c on m.curso_id = c.curso_id
where a.nome = 'João Silva';