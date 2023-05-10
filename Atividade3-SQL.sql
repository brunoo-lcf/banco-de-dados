create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar (255),
    email varchar(255),
    matricula int,
    periodo varchar(50),
    nota decimal(6,2),
    PRIMARY KEY(id)
);

insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Bruno Ferreira", "brunoferreira1@gmail.com",0001,"Manha",8);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Lucas Sousa", "lucassousa1@gmail.com",0002,"Manha",6);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Pedro Neto", "pedroneto1@gmail.com",0003,"Manha",9);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Felipe Dias", "felipedias1@gmail.com",0004,"Manha",10);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Bianca Oliveira", "biancaoliveira1@gmail.com",0005,"Manha",10);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Giovanna Silva", "giovannasilva1@gmail.com",0006,"Manha",7);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Isabela Pereira", "isabelapereira1@gmail.com",0007,"Manha",6);
insert into tb_estudantes(nome,email,matricula,periodo,nota) values ("Leticia Neves", "leticianeves1@gmail.com",0008,"Manha",3);

select * from tb_estudantes;

select * from tb_estudantes where nota >=7;

select * from tb_estudantes where nota <=7;

update tb_estudantes set nota = 5 where id = 8;
    
    
    
