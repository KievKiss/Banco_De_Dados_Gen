CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Criando a tabela de classes
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
raca varchar(255) NOT NULL,
classe varchar(255) NOT NULL,
PRIMARY KEY(id) 
);

-- mostrando a tabela
SELECT * FROM tb_classes;

-- Inserindo dados na tabela de classes
INSERT INTO tb_classes(raca,classe)
VALUES("Barbaro", "Selvagem"),
("Barbaro", "Feiticeira"),
("Humano", "Guerreiro"),
("Humano", "Mago"),
("Abissal", "Espiritualista"),
("Abissal", "Mercenario"),
("Alado", "Arqueiro"),
("Alado","Sacerdote");

SELECT * FROM tb_classes;

-- Criando a tabela de personagens
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(15)NOT NULL,
dano INT,
armadura INT,
classes_id BIGINT,
FOREIGN KEY(classes_id) REFERENCES tb_classes(id),
PRIMARY KEY(id)
);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

-- Inserindo os dados dos personagens na tabela tb_personagens
INSERT INTO tb_personagens(nome, dano, armadura, classes_id)
VALUES ("Pedro", 1000, 2500, 7),
("Julia", 3200, 1000, 8),
("Iwakura", 1750, 550, 5),
("Daniel", 1000, 7000, 1),
("Bianca", 5000, 200, 4),
("Isabella", 1700, 8000, 6),
("Felipe", 400, 6000, 1),
("Gabriel", 600, 700, 2);

UPDATE tb_personagens SET armadura = 2500 WHERE id = 1;
UPDATE tb_personagens SET nome = "Kiev " WHERE id = 1;

SELECT * FROM tb_personagens;
-- Persoangens com dano maior que 2000
SELECT * FROM tb_personagens WHERE dano > 2000;

-- Personagens com armadura entr 1000 e 2000
SELECT * FROM tb_personagens WHERE armadura BETWEEN 1000 AND 2000;

-- Personagens com a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- INNER JOIN
SELECT nome, dano, armadura,tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

-- INNER JOIN somente Selvagens
SELECT nome, dano, armadura, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.classe = "Selvagem";
