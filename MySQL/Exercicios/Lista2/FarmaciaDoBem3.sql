create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
	id bigint auto_increment,
    descricao varchar(255) not null,
    ativo boolean not null,
	Primary key(id)

);

insert into tb_categoria (descricao, ativo) values ("Cósmeticos", true);
insert into tb_categoria (descricao, ativo) values ("Medicamentos", true);
insert into tb_categoria (descricao, ativo) values ("Higiene", true);
insert into tb_categoria (descricao, ativo) values ("Infantil", true);
insert into tb_categoria (descricao, ativo) values ("Genéricos", true);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (10,2) not null,
qtdeProduto bigint not null,
receitaMedica boolean not null,
categoria_id bigint,
primary key(id),
Foreign Key(categoria_id) References tb_categoria(id)
);

insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Fenergan", 15.90, 20, false, 2);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Dexametasona", 7.75, 30, false, 5);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Shampo", 25.90, 10, false, 1);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Orlistate", 79.50, 25, false, 5);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Sinvastina", 4.90, 10, false, 5);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Buscopan", 15.00, 40, false, 2);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Chupeta", 4.90, 50, false, 4);
insert into tb_produto (nome, preco, qtdeProduto, receitaMedica, categoria_id) values ("Creme dental", 9.90, 10, false, 3);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "B%";

select tb_produto.id as id, nome, preco, qtdeProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id;
 
 select tb_produto.id as id, nome, preco, qtdeProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id where descricao like "Cósmeticos";

