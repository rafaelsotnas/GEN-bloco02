create database db_curso;
use db_curso;

create table tb_categoria(
   id bigint auto_increment,
   descricao varchar(50) not null,
   certificado boolean not null,
   primary key(id)
);
insert into tb_categoria(descricao, certificado) values ("Curso extra", false);
insert into tb_categoria(descricao, certificado) values ("Curso integral", true);
select * from tb_categoria;

create table tb_produto(
   id bigint auto_increment,
   nome varchar(50) not null,
   periodo varchar(50) not null,
   numerodeturmas int,
   preco decimal(6,2) not null,
   categoria_id bigint,
   primary key (id),
   foreign key (categoria_id) references tb_categoria(id)
);
insert into tb_produto(nome, periodo, numerodeturmas, preco, categoria_id) values ("Oficina de redação", "Matutino", 3, 25.00, 1);
insert into tb_produto(nome, periodo, numerodeturmas, preco, categoria_id) values ("Atendimento e planejamento publicitário", "Noturno", 2, 150.00, 2);
insert into tb_produto(nome, periodo, numerodeturmas, preco, categoria_id) values ("Biblioteconomia", "Noturno", 1, 120.00, 2);
insert into tb_produto(nome, periodo, numerodeturmas, preco, categoria_id) values ("Fotografia", "Vespertino", 2, 300.00, 2);
insert into tb_produto(nome, periodo, numerodeturmas, preco, categoria_id) values ("Produção musical", "Matutino", 1, 200.00, 2);
insert into tb_produto(nome, periodo, numerodeturmas, preco, categoria_id) values ("Interpretação de texto", "Matutino", 1, 22.00, 1);
select * from tb_produto;

select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like '%j%';
select tb_produto.nome, tb_produto.periodo,
tb_categoria.descricao, tb_categoria.certificado
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 1;