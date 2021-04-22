create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("Pertence feijoada",true);
insert tb_categoria (descricao, ativo) values ("Imbutidos",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (10,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Asa de frango",19.90,20,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",79.90,10,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",25.90,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",35.50,50,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",14.90,80,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",39.90,25,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.90,20,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",14.60,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.90,35,5);



select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "C%";


select tb_produtos.id as id, nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 select tb_produtos.id as id,nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id where descricao = "Aves";
 
 