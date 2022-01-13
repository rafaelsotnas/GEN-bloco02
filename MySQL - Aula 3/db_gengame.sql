create database db_gengame;
use db_gengame;

create table tb_classe(
     id bigint auto_increment,
     descricao varchar(50),
     ataque decimal(10,2),
     defesa decimal(10,2),
     lvl int,
     primary key(id)
);
insert into tb_classe(descricao, ataque, defesa, lvl) values ("Raider", 1000, 850, 6);
insert into tb_classe(descricao, ataque, defesa, lvl) values ("Vault Dweller", 2600, 2000, 19);
insert into tb_classe(descricao, ataque, defesa, lvl) values ("Suave Talker", 300, 300, 2);
insert into tb_classe(descricao, ataque, defesa, lvl) values ("NCR Soldier", 2000, 1800, 15);
insert into tb_classe(descricao, ataque, defesa, lvl) values ("Legionaire Soldier", 2300, 2100, 18);

select * from tb_classe;

create table tb_personagens(
     id bigint auto_increment,
     nome varchar(50),
     agilidade int,
     carisma int,
     forca int,
     inteligencia int,
     percepcao int,
     resistencia int,
     sorte int,
     descricao_id bigint,
     primary key(id),
     foreign key(descricao_id) references tb_classe(id)
);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Dr. Benway", 5, 2, 7, 5, 5, 6, 5, 1);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Peter Mandrake", 5, 6, 4, 5, 2, 3, 5, 2);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Casanova", 6, 9, 3, 5, 3, 4, 6, 3);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Spartacus", 6, 2, 7, 5, 5, 2, 6, 4);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Caligula", 7, 2, 3, 4, 5, 1, 5, 5);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Jean Genet", 5, 2, 7, 4, 5, 3, 5, 1);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Didi, Folha Seca", 5, 2, 4, 6, 5, 8, 5, 4);
insert into tb_personagens(nome, agilidade, carisma, forca, inteligencia, percepcao, resistencia, sorte, descricao_id) values ("Clint Eastwood", 6, 2, 7, 3, 3, 2, 5, 5);

select * from tb_personagens;
select descricao, ataque from tb_classe where ataque > 2000;
select descricao, defesa from tb_classe where defesa between 1000 and 2000;
select * from tb_personagens where nome like "%c%";
select tb_personagens.nome, tb_classe.descricao, tb_classe.ataque,
tb_classe.defesa from tb_personagens inner join tb_classe 
on tb_classe.id = tb_personagens.descricao_id;