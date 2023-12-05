CREATE DATABASE db_eccomerce;

USE db_eccomerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    faixaetaria INT,
    fabricante VARCHAR(255) NOT NULL,
    preco DECIMAL(6,3) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, faixaetaria, fabricante, preco) 
VALUES ("Playsatation 5 MF",0, "Sony",3799 ),
("Playsatation 5 Digital",0, "Sony",3679 ),
("GTA VI",18, "RockStar Games",450 ),
("Dark Souls 4",18, "FromSoftware",450 ),
("XBOX Series X",0, "Microsoft",4650 ),
("XBOX Series S",0, "Microsoft",2747.90 ),
("GameBoy Color",0, "Nintendo",1000 ),
("GameBoy Advanced",0, "Nintendo",500 );

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,3) NOT NULL;

SELECT * FROM tb_produtos WHERE preco < 500;
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM  tb_produtos;