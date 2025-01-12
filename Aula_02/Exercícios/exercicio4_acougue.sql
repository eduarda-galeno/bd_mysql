CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,   
    nome VARCHAR(100) NOT NULL,          
    descricao VARCHAR (255)                       
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
('Cortes Premium Bovinos', 'Cortes nobres de bovinos, como maminha, contra-filé, e tomahawk.'),
('Carnes Defumadas', 'Produtos defumados, incluindo bacon, costelinha e linguiças.'),
('Especialidades Suínas', 'Cortes e preparações exclusivas de carne suína, como pancetta e pernil.'),
('Produtos Orgânicos', 'Carnes provenientes de criações orgânicas e livres de hormônios.'),
('Peixes e Frutos do Mar', 'Variedade de peixes frescos e frutos do mar, como salmão e camarão.');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,            
    preco DECIMAL(10, 2) NOT NULL,                 
    estoque INT NOT NULL,               
    data_validade DATE NOT NULL,                  
    carne_categoria INT NOT NULL,                     
    FOREIGN KEY (carne_categoria) REFERENCES tb_categorias(id)  
);

INSERT INTO tb_produtos (nome, preco, estoque, data_validade, carne_categoria)
VALUES
('Wagyu', 200.00, 20, '2025-12-15', 1),
('Maminha', 95.00, 30, '2025-11-30', 1),
('Bacon Defumado', 40.00, 50, '2025-10-25', 2),
('Costelinha Defumada', 60.00, 35, '2025-09-18', 2),
('Panceta', 55.00, 40, '2025-10-10', 3),
('Pernil Suíno', 80.00, 28, '2025-09-05', 3),
('Frango Caipira', 25.00, 20, '2025-08-20', 4),
('Peito de Frango', 45.00, 18, '2025-07-15', 4),
('Salmão Fresco', 150.00, 25, '2025-12-20', 5),
('Camarão Cinza', 120.00, 15, '2025-11-15', 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.carne_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.carne_categoria = tb_categorias.id
WHERE carne_categoria = 1;