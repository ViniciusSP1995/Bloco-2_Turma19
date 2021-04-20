create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
codigo bigint not null,
marca varchar(255) not null,
preco decimal(10,2) not null,
primary key (id)
);

insert into tb_produtos (nome, codigo, marca, preco) values ("Celular", 1111,"Motorola", 1000.00);
insert into tb_produtos (nome, codigo, marca, preco) values ("Notebook", 1111,"Dell", 2499.90);
insert into tb_produtos (nome, codigo, marca, preco) values ("Impressora", 1111,"HP", 400.00);
insert into tb_produtos (nome, codigo, marca, preco) values ("Televisão", 1111,"Samsung", 1200.00);
insert into tb_produtos (nome, codigo, marca, preco) values ("Controle PS4", 1111,"Sony", 240.90);
insert into tb_produtos (nome, codigo, marca, preco) values ("Ventilador", 1111,"Mondial", 99.90);
insert into tb_produtos (nome, codigo, marca, preco) values ("Microondas", 1111,"Brastemp", 349.90);
insert into tb_produtos (nome, codigo, marca, preco) values ("Violão", 1111,"Takamine", 1500.00);

-- produtos acima de R$ 500
select * from tb_produtos where preco > 500;
-- produtos abaixo de R$ 500
select * from tb_produtos where preco < 500;
-- Alteração de preço
update tb_produtos set preco = 400.00 where id = 7;

select * from tb_produtos
