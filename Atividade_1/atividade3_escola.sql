# Atividade 3 - Escola

CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id_estudante BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    turma VARCHAR(50) NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL,
    data_nascimento DATE NOT NULL,
    PRIMARY KEY (id_estudante)
);

INSERT INTO tb_estudantes (nome, matricula, turma, nota_final, data_nascimento)
VALUES
    ('Alice Silva', 'MAT2023001', '3A', 8.5, '2008-05-14'),
    ('Bruno Oliveira', 'MAT2023002', '3A', 6.8, '2008-07-21'),
    ('Carla Mendes', 'MAT2023003', '3B', 9.2, '2009-01-10'),
    ('Diego Rocha', 'MAT2023004', '3B', 7.5, '2008-12-03'),
    ('Eduarda Costa', 'MAT2023005', '3C', 5.9, '2009-02-28'),
    ('Felipe Lima', 'MAT2023006', '3C', 6.0, '2008-11-15'),
    ('Gabriela Nunes', 'MAT2023007', '3D', 7.8, '2009-06-06'),
    ('Henrique Martins', 'MAT2023008', '3D', 4.3, '2009-08-22');

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes 
SET nota_final = 7.2 
WHERE matricula = 'MAT2023006';