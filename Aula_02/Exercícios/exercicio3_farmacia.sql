CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias ( 
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao BOOLEAN not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
('Medicamentos Genéricos', 'Remédios genéricos para diferentes condições de saúde'),
('Cuidados', 'Itens para cuidados pessoais, como hidratantes e protetores solares'),
('Dermatologia', 'Produtos dermatológicos para tratamentos de pele'),
('Fitness', 'Suplementos e produtos para atletas e atividades físicas'),
('Equipamentos Médicos', 'Aparelhos e itens médicos, como inaladores e medidores de glicose');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    validade date not null,
    estoque int not null,
    categoria_id bigint not null,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_produtos (nome, preco, validade, estoque, categoria_id)
VALUES
('Ibuprofeno', 14.50, '2025-10-15', 180, 1),
('Omeprazol', 19.90, '2026-03-10', 200, 1),
('Protetor Solar FPS 30', 45.00, '2026-06-01', 150, 2),
('Creme Hidratante Corporal', 38.90, '2026-12-10', 120, 2),
('Sérum Facial Vitamina C', 75.00, '2027-02-15', 80, 3),
('Gel de Limpeza Facial', 65.00, '2026-11-20', 100, 3),
('Whey Protein', 125.00, '2026-09-01', 90, 4),
('BCAA', 85.50, '2027-01-01', 70, 4),
('Balança Portátil', 99.00, '2027-05-01', 60, 5),
('Termômetro Digital', 55.00, '2026-08-01', 150, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.produto_categoria = tb_categorias.id_categoria;




