create database db_acougue;
use db_acougue;

create table tb_categoria(
   id bigint auto_increment,
   descricao varchar(255) not null,
   ativo boolean not null,
   primary key(id)
);
insert into tb_categoria(descricao, ativo) values ("Suíno", true);
insert into tb_categoria(descricao, ativo) values ("Bovino", true);
insert into tb_categoria(descricao, ativo) values ("Ave", true);
insert into tb_categoria(descricao, ativo) values ("Soja", true);
select * from tb_categoria;

create table tb_produto(
   id bigint auto_increment,
   nome varchar(255) not null,
   quantidade int,
   preco decimal(6,2) not null,
   categoria_id bigint,
   primary key (id),
   foreign key (categoria_id) references tb_categoria(id)
);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Bacon", 10, 10.97, 1);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Chuleta", 9, 25.29, 2);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Filé de frango", 15, 11.50, 3);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Proteína texturizada de soja", 5, 7.31, 4);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Salame", 14, 20.00, 1);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Picanha", 10, 54.85, 2);
select * from tb_produto;

select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like '%c%';
select tb_produto.nome, tb_produto.quantidade, tb_produto.preco,
tb_categoria.descricao, tb_categoria.ativo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;