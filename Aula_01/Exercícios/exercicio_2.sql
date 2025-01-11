CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255),
    estoque int,
    preco decimal(8,2),
    PRIMARY KEY(id)
);

DESC tb_produtos;

INSERT INTO tb_produtos (nome, categoria, estoque, preco)
VALUE   ('Caderno Universitário', 'Cadernos', 150, 25.90),
        ('Caneta Esferográfica Azul', 'Canetas', 500, 1.50),
        ('Mochila Escolar', 'Mochilas', 70, 200.00),
        ('Papel E.V.A. Colorido', 'Papelaria Diversa', 300, 2.50),
        ('Tinta Guache', 'Tintas', 100, 15.00),
        ('Lápis de Cor', 'Materiais Artísticos', 200, 60.00),
        ('Régua 30cm', 'Acessórios Escolares', 400, 5.50),
        ('Cola Branca', 'Adesivos e Colas', 250, 3.90);
        
SELECT id, nome, categoria, estoque, CONCAT("R$ ", FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos WHERE preco > 50;

SELECT id, nome, categoria, estoque, CONCAT("R$ ", FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos WHERE preco <= 50;

UPDATE tb_produtos SET estoque = 60 WHERE id = 3;

SELECT * FROM tb_produtos;