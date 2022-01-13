create database db_ecommerce;
use db_ecommerce;

create table tb_prodts( 
    id bigint auto_increment,
    nome varchar(255) not null,
    marca varchar(100) not null,
    tipo varchar(100) not null,
    quantidade int,
    preco decimal not null,
    primary key(id)
);

insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("TV", "Samsung", "Smart TV 50 UHD 4K", 4, 2.899);
insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("TV", "LG", "Smart TV Led 55 UHD 4K", 5, 2.999);
insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("Micro-ondas", "Electrolux", "20L MTD30 220V", 6, 430.20);
insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("Cofre", "Multilaser", "Cofre eletrônico", 2, 235.00);
insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("Rádio", "Philips", "AE1500X/78", 3, 43.90);
alter table tb_prodts modify preco decimal (7, 7);
update tb_prodts set preco = 2.738 where id = 1;

delete from tb_prodts where id = 1;
delete from tb_prodts where id = 2;

insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("Ventilador", "Mondial", "Super Power VSP-30-B 6", 7, 111.90);
insert into tb_prodts(nome, marca, tipo, quantidade, preco) values ("TV", "Philco", "Smart TV LED Philco Full HD", 4, 856.24);

select nome, preco from tb_prodts where preco > 500;
select nome, preco from tb_prodts where preco < 500;