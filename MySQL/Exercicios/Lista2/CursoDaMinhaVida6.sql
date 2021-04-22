create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)


);

insert into tb_categoria (descricao, ativo) values ("Lógica de programação",true);
insert into tb_categoria (descricao, ativo) values ("Back-end",true);
insert into tb_categoria (descricao, ativo) values ("Front-end",true);
insert into tb_categoria (descricao, ativo) values ("Pacote Office",true);
insert into tb_categoria (descricao, ativo) values ("Idiomas",true);

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
precoMensalidade decimal(10,2) not null,
vagas int not null,
periodo varchar(255) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("Inglês", 249.90, 30, "Manhã",5);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("Java", 339.90, 20, "Noite",1);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("JavaScript", 299.90, 30, "Manhã",3);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("Francês", 389.90, 10, "Noite",5);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("MySQL", 349.90, 40, "Tarde",2);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("HTML", 149.90, 30, "Manhã",3);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("Excel", 249.90, 50, "Noite",4);
insert into tb_produtos (nome, precoMensalidade, vagas, periodo, categoria_id) values ("C++", 219.90, 30, "Tarde",1);

select * from tb_produtos;

select * from tb_produtos where precoMensalidade < 250;

select * from tb_produtos where precoMensalidade between 100 and 300;

select * from tb_produtos where nome like "J%";

select tb_produtos.id as id, nome, precoMensalidade, vagas, periodo, tb_categoria.descricao as categoria_de_estudos, tb_categoria.ativo as situacao_da_area
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.id as id, nome, precoMensalidade, vagas, periodo, tb_categoria.descricao as categoria_de_estudos, tb_categoria.ativo as situacao_da_area
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where descricao = "Back-end";