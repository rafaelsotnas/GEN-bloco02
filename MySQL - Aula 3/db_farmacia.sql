create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
    id bigint auto_increment not null,
    descricao varchar(50),
    ativo boolean,
    primary key(id)
);
insert into tb_categorias(descricao, ativo) values ("Antibiótico", true);
insert into tb_categorias(descricao, ativo) values ("Antihistamínico", true);
insert into tb_categorias(descricao, ativo) values ("Antidepressivo", true);
insert into tb_categorias(descricao, ativo) values ("Anti-inflamatório", true);
insert into tb_categorias(descricao, ativo) values ("Higiene pessoal", true);
select * from tb_categorias;

create table tb_produtos(
    id bigint auto_increment,
    nome varchar(50),
    datac timestamp,
    quantidade int,
    preco decimal(7,2),
    categorias_id bigint,
    primary key(id),
    foreign key(categorias_id) references tb_categorias(id)
);
insert into tb_produtos(nome, datac, quantidade, preco, categorias_id) values ("Cefaxelina", current_date(), 32, 19.90, 1);
insert into tb_produtos(nome, datac, quantidade, preco, categorias_id) values ("Maleato", current_date(), 17, 11.69, 2);
insert into tb_produtos(nome, datac, quantidade, preco, categorias_id) values ("Amitriptilina", current_date(), 20, 15.34, 3);
insert into tb_produtos(nome, datac, quantidade, preco, categorias_id) values ("Flanax", current_date(), 5, 19.90, 4);
insert into tb_produtos(nome, datac, quantidade, preco, categorias_id) values ("Desodorante", current_date(), 30, 19.90, 5);

select * from tb_produtos;
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like '%a%';
select * from tb_produtos inner join tb_categorias 
on tb_categorias.id = tb_produtos.categorias_id
where tb_categorias.id = 3;