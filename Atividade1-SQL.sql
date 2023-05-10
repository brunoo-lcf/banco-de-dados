create database db_rh;

use db_rh;

create table tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    email varchar(100) not null,
    setor varchar(50)not null,
    cargo varchar(100) not null,
    salario int not null,
    PRIMARY KEY(id)
);

insert into tb_colaboradores (nome,email,setor,cargo,salario) values ("Bruno Ferreira","brunoferreira1@gmail.com","TI","DEV JUNIOR",4750);
insert into tb_colaboradores (nome,email,setor,cargo,salario) values ("João da Silva","joaosilva1@gmail.com","TI","ESTAGIARIO",1870);
insert into tb_colaboradores (nome,email,setor,cargo,salario) values ("Bianca Costa","biancacosta1@gmail.com","VENDAS","VENDEDOR 1",2200);
insert into tb_colaboradores (nome,email,setor,cargo,salario) values ("Lucas Mendes","lucasmendes1@gmail.com","ADMINISTRAÇÃO","JOVEM APRENDIZ",850);
insert into tb_colaboradores (nome,email,setor,cargo,salario) values ("Cleiton Sousa","cleitonsousa1@gmail.com","TI","DEV PLENO",8870);
insert into tb_colaboradores (nome,email,setor,cargo,salario) values ("Giovanna Oliveira","giovannaoliveira1@gmail.com","TI","DEV SENIOR",12560);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set email = "brunoferreira2@gmail.com" where id = 1;



