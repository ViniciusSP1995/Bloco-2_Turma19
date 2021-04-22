create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagens (
id bigint auto_increment,
nome varchar(255) not null,
poderAtaque bigint not null,
poderDefesa bigint not null,
velocidade bigint not null,
Primary key(id)
);

insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Blanka", 1800, 1300, 1100);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Ryu", 2400, 2100, 2200);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Guile", 2800, 1900, 1900);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Sagat", 2900, 2300, 900);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Dhalsim", 2500, 2600, 800);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Zangief", 2800, 2200, 500);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Chun li", 2700, 1800, 2500);
insert into tb_personagens (nome, poderAtaque, poderDefesa, velocidade) values ("Ken", 2400, 2000, 2000);


create table tb_classe (
id bigint auto_increment,
pais varchar(255) not null,
estiloLuta varchar(255) not null,
corRoupa varchar(255) not null,
poder varchar(255) not null,
categoria_id bigint,
primary key (id),
Foreign key(categoria_id) References tb_personagens(id)
);

insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("Brasil", "Luta Selvagem", "Marrom", "Choque",1);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("Japão", "Karatê", "Branca", "Radouken",2);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("EUA", "Artes Marciais Militar", "Verde", "Sonic Boom",3);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("Tailândia", "Muay Thai", "Azul", "Tiger Uppercut",4);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("Índia", "Mysteries of the Yoga", "Amarela", "Yoga Fire",5);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("Rússia", "Sambo", "Vermelha", "Girar braços",6);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("China", "Chinese Kempo", "Azul", "Ming-Na Wen",7);
insert tb_classe (pais, estiloLuta, corRoupa, poder, categoria_id) values ("EUA", "Karatê", "Vermelha", "Radouken",8);

select * from tb_personagens;

select * from tb_personagens where poderAtaque > 2000;

select * from tb_personagens where poderDefesa between 1000 and 2000;

select * from tb_personagens where nome like "C%";

select tb_personagens.id as id, tb_personagens.nome as descricao_do_personagem, pais, estiloLuta, poder ,tb_personagens.poderAtaque as numero_ataque, tb_personagens.poderDefesa as numero_defesa
 from tb_classe inner join tb_personagens on  tb_personagens.id = tb_classe.categoria_id;
 
select tb_personagens.id as id, tb_personagens.nome as descricao_do_personagem, pais, estiloLuta, poder ,tb_personagens.poderAtaque as numero_ataque, tb_personagens.poderDefesa as numero_defesa
 from tb_classe inner join tb_personagens on  tb_personagens.id = tb_classe.categoria_id where pais like "EUA";