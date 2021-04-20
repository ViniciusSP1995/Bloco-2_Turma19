create database rh_empresa;

use rh_empresa;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
matricula bigint not null,
salario decimal(10,2) not null,

primary key(id)

);

insert into tb_funcionarios (nome, idade, matricula, salario) values ("João", 25, 1111, 1200.00); 
insert into tb_funcionarios (nome, idade, matricula, salario) values ("Ana", 22, 2222, 2400.50); 
insert into tb_funcionarios (nome, idade, matricula, salario) values ("Geruza", 58, 3333, 1800.90);
insert into tb_funcionarios (nome, idade, matricula, salario) values ("Tereza", 31, 4444, 3000.75);  
insert into tb_funcionarios (nome, idade, matricula, salario) values ("Marciano", 18, 5555, 900.00); 
-- Salários acima de 2000
select * from tb_funcionarios where salario > 2000;
-- Salários abaixo de 2000
select * from tb_funcionarios where salario < 2000;

-- Alteração salário
update tb_funcionarios set salario = 1600.58 where id = 3;

select * from tb_funcionarios;

