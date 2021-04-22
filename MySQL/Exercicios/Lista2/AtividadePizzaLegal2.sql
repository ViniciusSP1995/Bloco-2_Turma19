create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
sabor varchar(255) not null,
ativo boolean not null,
Primary key (id)
);

insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 30.00, "Calabresa",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 30.00, "Mussarela",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 39.90, "Portuguesa",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 34.90, "Chocolate",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 55.90, "Doce de leite",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 49.90, "Frango C/ Catupiry",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 44.90, "Banana",true);
insert into tb_pizza (nome, preco, sabor, ativo) values ("Pizza", 69.90, "Baiana",true);

create table tb_categoria (
	id bigint auto_increment,
	tipo varchar(255) not null,
    qtde bigint not null,
    bordaRecheada boolean not null,
    formato varchar(255) not null,
    categoria_id bigint,
	primary key(id),
    Foreign key (categoria_id) References tb_pizza(id)
);

insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Salgada", 30, true, "Redonda", 1);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Salgada", 10, true, "Redonda", 2);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Salgada", 10, true, "Redonda", 3);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Doce", 15, true, "Quadrada", 4);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Doce", 15, true, "Quadrada", 5);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Salgada", 15, true, "Quadrada", 6);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Doce", 15, false, "Redonda", 7);
insert into tb_categoria (tipo, qtde, bordaRecheada, formato, categoria_id) values ("Salgada", 7, true, "Redonda", 8);
 
select * from tb_categoria;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "C%";

select tb_pizza.id as id, sabor, preco, tb_categoria.tipo as tipo_de_pizza, tb_categoria.qtde as quantidade_disponivel, tb_categoria.formato as formato_da_pizza
from tb_categoria inner join tb_pizza on tb_pizza.id = tb_categoria.categoria_id;

select tb_pizza.id as id, nome, sabor, preco, tb_categoria.tipo as tipo_de_pizza, tb_categoria.qtde as quantidade_disponivel, tb_categoria.formato as formato_da_pizza
from tb_categoria inner join tb_pizza on tb_pizza.id = tb_categoria.categoria_id where tipo like "Doce";