# Atividade 1 - Serviço de RH

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
	id_funcionario BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf CHAR(11) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    data_admissao DATE,
    PRIMARY KEY (id_funcionario)
);

INSERT INTO tb_funcionarios (nome, cpf, cargo, salario, data_admissao)
VALUES
	('Ana Clara Souza', '12345678901', 'Analista de RH', 4500.00, '2022-03-15'),
	('Carlos Eduardo Lima', '98765432100', 'Desenvolvedor', 7200.50, '2021-08-01'),
	('Mariana Ferreira', '11122233344', 'Coordenadora', 8800.75, '2020-11-20'),
	('João Pedro Santos', '55566677788', 'Assistente Admin', 1850.00, '2023-01-10'),
	('Luísa Andrade', '99988877766', 'Gerente Financeiro', 10500.00, '2019-07-05');

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;