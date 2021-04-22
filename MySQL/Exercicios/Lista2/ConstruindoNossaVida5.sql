create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Hidráulicos", true);
insert into tb_categoria (descricao, ativo) values ("Material para construção", true);
insert into tb_categoria (descricao, ativo) values ("Ferramentas", true);
insert into tb_categoria (descricao, ativo) values ("Pisos e Revestimentos", true);
insert into tb_categoria (descricao, ativo) values ("Iluminação", true);

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
qtdeProduto int not null,
fabricante varchar(255) not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) References tb_categoria(id)
);

insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Chuveiro", 89.90, 100, "Lorenzetti",1);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Porcelanato", 81.90, 90, "Portinari",4);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Caixa D' Água", 789.90, 80, "Fortlev",1);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Lâmpada", 11.90, 150, "Taschibra",5);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Martelo", 36.90, 250, "Tramontina",3);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Cimento", 89.90, 100, "Votoran",2);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Parafusadeira/Furadeira", 249.90, 50, "Bosch",3);
insert into tb_produto (nome, preco, qtdeProduto, fabricante, categoria_id) Values ("Rejunte", 19.90, 80, "Fortaleza",2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "C%";

select tb_produto.id as id ,nome, preco, fabricante, tb_categoria.descricao as categoria_do_produto, tb_categoria.ativo as situacao_do_produto
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.id as id, nome, preco, fabricante, tb_categoria.descricao as categoria_do_produto, tb_categoria.ativo as situacao_do_produto
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where descricao = "Hidráulicos";

