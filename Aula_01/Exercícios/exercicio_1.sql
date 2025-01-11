CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_colaboradores
(
	matricula bigint auto_increment PRIMARY KEY,
    nome varchar(255) not null,
    departamento varchar(255) NOT NULL,
    cargo varchar(255) not null,
    data_admissao date not null,
    data_demissao date,
    ultimo_salario decimal(10,2) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cargo, departamento, data_admissao, data_demissao, ultimo_salario) 
VALUES
('João Pedro Almeida', 'Analista Financeiro', 'Financeiro', "2005-07-15", NULL, 5200.00),
('Camila Andrade Santos', 'Coordenadora de Marketing', 'Marketing', "2012-01-10", NULL, 7300.00),
('Gustavo Lima Ferreira', 'Gerente de TI', 'Tecnologia da Informação', "2010-11-25", NULL, 9500.00),
('Beatriz Souza Silva', 'Assistente Administrativo', 'Administrativo', '2001-05-18', '2009-03-22', 1450.00),
('Lucas Mendes Rocha', 'Analista de Dados', 'Recursos Humanos', '2003-09-12', '2008-06-30', 2750.50);

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE ultimo_salario >= 2000;
SELECT * FROM tb_colaboradores WHERE ultimo_salario < 2000;

UPDATE tb_colaboradores SET ultimo_salario = 10000.00, cargo = "Tech Lead" WHERE matricula = 2 ;
SELECT * FROM tb_colaboradores WHERE matricula = 2;