-- Criando o bando de dados da pizzaria
CREATE DATABASE db_pizzaria_do_kiev;
USE db_pizzaria_do_kiev;


-- criando a tabela de categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY(id)
)
-- mostrando a tabela
SELECT * FROM tb_categorias;

-- adicionando dados a tabela
INSERT INTO tb_categorias(categoria, descricao)
VALUES
("Salgada","Pizza salgada a moda da italiana "),
("Vegetariana","Amigos da nataruzera"),
("Doce","Agrade seu paladar infantil"),
("Vegana","Animais são amigos não comida");


SELECT * FROM tb_categorias;

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
ingredientes VARCHAR(255),
categoria_id BIGINT NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id),
PRIMARY KEY(id)
);

SELECT * FROM tb_pizzas;
-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(nome,preco,ingredientes,categoria_id)
VALUE("Mussarela",30,"Molho, muzzarela, tomate, oregano",1),
("Marguerita",30,"Molho, muzzarela, tomate, oregano, manjericao",1),
("Alho e Óleo",30,"Alho e óleo",2),
("Escarola",30,"Molho de tomate, escarola, rucula, alface e tomate",2),
("Romeu e julieta",45,"Muzzarela e goiabada",3),
("Banana c/ canela",45,"Muzzarela, banana, canela e açucar",3),
("Do mato",25,"Molho de tomate,rabanete, pepino, batata e cenoura",4),
("Da roça",25,"Alface lisa, alface roxa, alface crespa,almerão e mimosa",4);

SELECT * FROM tb_pizzas;

-- Teste deletando id's
DELETE FROM tb_pizzas WHERE id BETWEEN 9 AND 16;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 35;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN  30 AND 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- Faça um SELECT utilizando a cláusula INNER JOIN
SELECT nome, preco, ingredientes, tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Doce";
