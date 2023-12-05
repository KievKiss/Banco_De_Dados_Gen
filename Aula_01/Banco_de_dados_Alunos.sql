CREATE DATABASE db_alunos;

USE db_alunos;

CREATE TABLE tb_aluno(
ra BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
aniversario DATE,
serie VARCHAR(255) NOT NULL,
Sexo VARCHAR(255) NOT NULL,
Nota INT,
PRIMARY KEY (ra)
);

INSERT INTO tb_aluno(nome, aniversario, serie, sexo,nota)
VALUES("Kevin Oliveira", "2000-06-26", "Quinta série", "Masculno",10),
("Julia De lima Souza", "2000-05-20", "Quinta série", "Feminino",8),
("Simone Camilo", "1983-02-26", "Ensino médio", "Feminino",10),
("Augusto bloob", "1998-04-04", "saexta série", "Masculno",3),
("Petunia da silva", "2002-05-09", "Primeira série", "Feminino",7),
("Roger tadeu", "1998-05-06", "ensino medio", "Masculno",8),
("Maria joaquina", "2005-07-07", "segunda série", "Feminino",4),
("Gust", "1990-02-08", "primeira série", "Masculno",5);

SELECT * FROM tb_aluno WHERE nota > 7;
SELECT * FROM tb_aluno WHERE nota < 7;

SELECT * FROM tb_aluno;
