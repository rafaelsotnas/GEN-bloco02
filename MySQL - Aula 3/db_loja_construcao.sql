create database db_loja_construcao;
use db_loja_construcao;

create table tb_categoria(
     id bigint auto_increment,
     tipo varchar(50) not null,
     recursonatural boolean not null,
     primary key(id)
);
insert into tb_categoria(tipo, recursonatural) values ("Cimento", true);
insert into tb_categoria(tipo, recursonatural) values ("MDF", true);
insert into tb_categoria(tipo, recursonatural) values ("Cal", true);
insert into tb_categoria(tipo, recursonatural) values ("Martelete", false);
insert into tb_categoria(tipo, recursonatural) values ("Pedra", true);
select * from tb_categoria;

create table tb_produto(
    id bigint auto_increment,
    nome varchar(50) not null,
    quantidade int,
    preco decimal(6,2),
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Cimento Votoran", "20", 29.90, 1);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Pedra Miracema", "15", 22.90, 5);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Martelete Makita", "8", 749.90, 4);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("MDF Nogal Sevilha", "4", 299.00, 2);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Cal Engecal", "10", 9.79, 3);
insert into tb_produto(nome, quantidade, preco, categoria_id) values ("Martelete Philco", "6", 499.90, 4);
select * from tb_produto;

select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like '%c%';
select tb_produto.nome, tb_produto.quantidade, tb_produto.preco,
tb_categoria.tipo, tb_categoria.recursonatural
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;