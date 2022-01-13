create database db_empresa;
use db_empresa;
create table tb_funcionarios(
    id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    salario varchar(255) not null,
    primary key(id)
);
insert into tb_funcionarios(nome, cargo, salario) values ("Félix Milán", "Dev Junior", 3.000);
insert into tb_funcionarios(nome, cargo, salario) values ("Freddie Patek", "Dev Pleno", 6.000);
insert into tb_funcionarios(nome, cargo, salario) values ("Dal Maxvill", "Dev Senior", 9.000);

select * from tb_funcionarios where salario > 500;
select * from tb_funcionarios where salario < 500;

update tb_funcionarios set salario = 3.500 where id = 1;