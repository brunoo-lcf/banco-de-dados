create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    categoria varchar(255),
    descricao varchar (255),
    PRIMARY KEY(id)
);
	
INSERT INTO tb_classes (categoria,descricao) values ("Sentinela","Guarda um posto no mapa");
INSERT INTO tb_classes (categoria,descricao) values ("Duelista","Duelos 1x1");
INSERT INTO tb_classes (categoria,descricao) values ("Controlador","Controla as passagens do mapa");
INSERT INTO tb_classes (categoria,descricao) values ("Iniciador","Abre o bomb fazendo spot");
INSERT INTO tb_classes (categoria,descricao) values ("Cura","Cura os aliados");

select * from tb_classes;

create table tb_personagens(
	id bigint auto_increment,
    nome varchar (255),
    nivel int,
    ataque int,
    defesa int,
    id_classes bigint,
    PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_classes_personagens foreign key (id_classes) REFERENCES tb_classes(id);

INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Cypher",123,1250,1500,1);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Reyna",260,1900,1000,2);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Sova",29,1500,1500,4);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Brimstone",80,1250,1300,3);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Jett",140,1750,1000,2);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Sage",10,1300,1800,5);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("Skye",70,1300,1600,5);
INSERT INTO tb_personagens (nome,nivel,ataque,defesa,id_classes) values ("KillJoy",55,1600,1500,1);

select * from tb_personagens;

update tb_personagens set ataque = 2200 where id = 9;

update tb_personagens set ataque = 2150 where id = 12;

select * from tb_personagens where ataque > 2000; 

select * from tb_personagens where defesa >= 1000 and defesa <=2000;

select * from tb_personagens where nome LIKE "%C%";

select * from tb_personagens INNER JOIN tb_classes on tb_classes.id = tb_personagens.id_classes;

select * from tb_personagens INNER JOIN tb_classes on tb_personagens.id_classes = tb_classes.id where tb_classes.categoria = "Duelista";





