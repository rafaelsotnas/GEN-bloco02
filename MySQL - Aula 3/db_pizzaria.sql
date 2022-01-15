create database db_pizzaria;
use db_pizzaria;

create table tb_categoria(
     id bigint auto_increment,
     sabor varchar(50) not null,
     massa varchar(50) not null,
     veg boolean not null,
     primary key(id)
);
insert into tb_categoria(sabor, massa, veg) values ("Doce", "Massa siciliana", true);
insert into tb_categoria(sabor, massa, veg) values ("Salgada", "Massa vegana", true);
insert into tb_categoria(sabor, massa, veg) values ("Salgada", "Massa comum", true);
insert into tb_categoria(sabor, massa, veg) values ("Doce", "Massa comum", true);
insert into tb_categoria(sabor, massa, veg) values ("Salgada", "Massa napolitana", true);
select * from tb_categoria;

create table tb_pizzas(
    id bigint auto_increment,
    nome varchar(50) not null,
    tamanho varchar(50),
    tempop decimal(6,2),
    preco decimal(6,2),
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);
insert into tb_pizzas(nome, tamanho, tempop, preco, categoria_id) values ("Atum", "Grande", 30, 35.00, 2);
insert into tb_pizzas(nome, tamanho, tempop, preco, categoria_id) values ("Chocolate", "Brotinho", 20, 25.00, 1);
insert into tb_pizzas(nome, tamanho, tempop, preco, categoria_id) values ("Calabresa", "Grande", 30, 32.00, 3);
insert into tb_pizzas(nome, tamanho, tempop, preco, categoria_id) values ("Sorvete", "Brotinho", 20, 22.00, 1);
insert into tb_pizzas(nome, tamanho, tempop, preco, categoria_id) values ("Frango com catupiry", "Grande", 35, 35.00, 5);
insert into tb_pizzas(nome, tamanho, tempop, preco, categoria_id) values ("Pepperoni especialíssima", "Grande", 30, 45.00, 5);
select * from tb_pizzas;

select * from tb_pizzas where preco >= 45.00;
select * from tb_pizzas where preco < 30.00;
select * from tb_pizzas where preco between 29.00 and 60.00;
select * from tb_pizzas where nome like '%c%';
select * from tb_categoria inner join tb_pizzas
on tb_categoria.id = tb_pizzas.categoria_id;
select tb_pizzas.nome, tb_pizzas.tamanho, tb_pizzas.tempop, 
tb_pizzas.preco, tb_categoria.sabor, tb_categoria.massa
from tb_pizzas inner join tb_categoria 
on tb_categoria.id = tb_pizzas.categoria_id
where tb_categoria.id = 2;