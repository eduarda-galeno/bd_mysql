CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    data_nascimento date,
    serie varchar(255),
    media_final decimal(2,1),
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, serie, media_final)
VALUE   ('Ana Silva', '2012-04-23', '6ª série', 7.8),
        ('Carlos Lima', '2013-09-10', '5ª série', 6.5),
        ('Beatriz Rocha', '2014-07-15', '4ª série', 9.0),
        ('João Pedro Santos', '2012-02-18', '6ª série', 8.3),
        ('Mariana Oliveira', '2015-05-05', '3ª série', 5.5),
        ('Fernanda Costa', '2013-11-20', '5ª série', 8.7),
        ('Lucas Mendes', '2014-03-30', '4ª série', 6.2),
        ('Larissa Almeida', '2014-06-11', '4ª série', 5.5);
        
SELECT id, nome, DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_nascimento,
serie, media_final FROM tb_estudantes WHERE media_final < 7.0;

SELECT id, nome, DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_nascimento,
serie, media_final FROM tb_estudantes WHERE media_final > 7.0;

UPDATE tb_estudantes SET media_final = 6.0 WHERE media_final = 5.5;

SELECT * FROM tb_estudantes;