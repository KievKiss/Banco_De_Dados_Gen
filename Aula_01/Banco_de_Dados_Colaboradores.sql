CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT, -- um int só que maior
    nome VARCHAR(255) NOT NULL, -- 255 [] caracteres disponiveis // NOT NULL diz que tem que ter pelomenos 1 caracter
    cargo VARCHAR(255) NOT NULL,
    aniversario DATE,
    idade INT,
    salario DECIMAL NOT NULL, -- DECIMAL == FLOAT
    PRIMARY KEY (id) -- Toda tabela tem que ter uma chave primaria // um identificador especifio que nunca podera ser repetido
);
-- Inserindo dados na tabela
-- INSERT INTO nome_tabela(campos da tabela ) VALUES (valores que serão adicionados )
INSERT INTO tb_colaboradores(nome, cargo,aniversario, idade,salario) 
VALUES ("bianca", "full-stack", "1998-03-18",25,"8000");
INSERT INTO tb_colaboradores(nome, cargo,aniversario, idade,salario)
VALUES ("isabella", "back-end", "2005-01-13",18,"10000");
INSERT INTO tb_colaboradores(nome, cargo,aniversario, idade,salario)
VALUES ("pedro", "gerente", "2003-11-05",20,"20000");
INSERT INTO tb_colaboradores(nome, cargo,aniversario, idade,salario)
VALUES ("igor", "senior", "1996-07-28",27,"15000");
INSERT INTO tb_colaboradores(nome, cargo,aniversario, idade,salario)
VALUES ("vitória", "junior", "2001-07-29",22,"1000");
SELECT * FROM tb_colaboradores;


DELETE FROM tb_colaboradores WHERE Id = 6;
UPDATE tb_colaboradores SET salario = 1839 where id = 10;

SELECT * FROM tb_colaboradores where salario > 2000;
SELECT * FROM tb_colaboradores where salario < 2000;
