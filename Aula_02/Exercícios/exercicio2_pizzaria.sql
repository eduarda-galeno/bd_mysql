CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(5000),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES  ('Clássica', 'Pizzas tradicionais com os sabores populares'),
		('Premium', 'Pizzas gourmet com combinações exclusivas'),
        ('Doce', 'Pizzas com opções de sobremesas'),
        ('Vegana', 'Pizzas que não contêm ingredientes de origem animal'),
        ('Vegana doce', 'Pizzas doces sem ingredientes de origem animal');
        
SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(5,2) not null,
    tamanho varchar(50) not null,
    ingredientes varchar(5000),
    categorias_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categorias_id)
VALUES
('Mussarela', 32.50, 'Média', 'Molho de tomate, queijo mussarela, orégano', 1),
('Pepperoni', 40.00, 'Grande', 'Molho de tomate, queijo mussarela, pepperoni, orégano', 1),
('Carbonara', 56.00, 'Grande', 'Molho branco, queijo parmesão, bacon, gema de ovo, pimenta do reino', 2),
('Camarão Gourmet', 78.90, 'Grande', 'Camarão, molho branco, alho, queijo mussarela, cebolinha', 2),
('Trufa Negra', 85.00, 'Média', 'Trufa negra, queijo parmesão, molho especial, azeite de oliva', 2),
('Frango e Requeijão', 39.00, 'Média', 'Frango desfiado, requeijão, milho, molho de tomate', 1),
('Nutella com Morango', 36.50, 'Média', 'Nutella, morango fresco, lascas de chocolate', 3),
('Ovomaltine', 35.00, 'Média', 'Ovomaltine, chocolate ao leite, leite condensado', 3),
('Abobrinha com Tofu', 48.00, 'Grande', 'Abobrinha grelhada, tofu temperado, alho, molho vegano', 4),
('Tomate Seco com Rúcula', 43.50, 'Grande', 'Tomate seco, rúcula fresca, queijo vegano, azeite', 4),
('Maçã com Canela', 29.00, 'Média', 'Maçã, canela, açúcar mascavo, leite condensado vegano', 5);
    
SELECT * FROM tb_pizzas WHERE preco > 45.00
ORDER BY preco ASC;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00
ORDER BY preco ASC;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_pizzas.categorias_id IN (1, 4);