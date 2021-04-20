create database db_escola;

use db_escola;

create table tb_alunos (
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
matricula bigint not null,
nota int not null,
primary key (id)
);

insert into tb_alunos (nome, idade, matricula, nota) values ("Arthur", 13, 1111, 8);
insert into tb_alunos (nome, idade, matricula, nota) values ("Joana", 12, 2222, 9);
insert into tb_alunos (nome, idade, matricula, nota) values ("Miguel", 14, 3333, 5);
insert into tb_alunos (nome, idade, matricula, nota) values ("Felipe", 11, 4444, 6);
insert into tb_alunos (nome, idade, matricula, nota) values ("Victor", 16, 5555, 4);
insert into tb_alunos (nome, idade, matricula, nota) values ("Leticia", 13, 6666, 8);
insert into tb_alunos (nome, idade, matricula, nota) values ("Michael", 12, 7777, 3);
insert into tb_alunos (nome, idade, matricula, nota) values ("Julieta", 14, 8888, 6);

select * from tb_alunos;
-- notas acima de 7
select * from tb_alunos where nota > 7;
  -- notas abaixo de 7
select * from tb_alunos where nota < 7;
 -- alteração de nota
update tb_alunos set nota = 4 where id = 7;
  
  select * from tb_alunos