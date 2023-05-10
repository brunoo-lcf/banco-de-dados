create database db_produtos;

use db_produtos;

create table tb_produtos(
	id bigint auto_increment,
    produto varchar(255),
    quantidade int,
    descricao varchar(500),
    avaliacao decimal,
    preco int,
    PRIMARY KEY(id)
);

insert into tb_produtos (produto,quantidade,descricao,avaliacao,preco) values ("Celualar",15,"Celular iphone 14",9.7,7200);
insert into tb_produtos (produto,quantidade,descricao,avaliacao,preco) values ("Fone",25,"Fone bluetooth apple",9,1200);
insert into tb_produtos (produto,quantidade,descricao,avaliacao,preco) values ("Cabo",30,"Cabo Lightning",8.8,250);
insert into tb_produtos (produto,quantidade,descricao,avaliacao,preco) values ("Fonte",30,"Fonte para cabo Lightning",8.8,300);
insert into tb_produtos (produto,quantidade,descricao,avaliacao,preco) values ("Ipad",6,"Ipad 9 geração",9.4,3600);
insert into tb_produtos (produto,quantidade,descricao,avaliacao,preco) values ("Caneta",18,"Caneta para ipad",8,499);

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

alter table tb_produtos modify column avaliacao decimal(6,2);

update tb_produtos set quantidade = 10 where id = 1;
