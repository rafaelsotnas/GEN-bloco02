create database db_escola;
use db_escola;
create table tb_alunos(
    id bigint auto_increment,
    nome varchar(255) not null,
    materia varchar(255) not null,
    nota decimal not null,
    turma int,
    periodo varchar(255) not null,
    primary key(id)
);
insert into tb_alunos (nome, materia, nota, turma, periodo) values ("Juquinha", "Português", 8.5, 16, "Manhã");
insert into tb_alunos (nome, materia, nota, turma, periodo) values ("Mariazinha", "Português", 10, 16, "Manhã");
insert into tb_alunos (nome, materia, nota, turma, periodo) values ("Luquinha", "Português", 3.5, 16, "Manhã");
insert into tb_alunos (nome, materia, nota, turma, periodo) values ("Celinha", "Português", 6.0, 16, "Manhã");
insert into tb_alunos (nome, materia, nota, turma, periodo) values ("Chiquinho", "Português", 5.0, 16, "Manhã");
insert into tb_alunos (nome, materia, nota, turma, periodo) values ("Serginho", "Português", 4.5, 16, "Manhã");

select * from tb_alunos where nota > 7;

update tb_alunos set nota = 8 where id = 6;