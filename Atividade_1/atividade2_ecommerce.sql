# Atividade 2 - Ecommerce BoardGames

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    data_cadastro DATE NOT NULL,
    PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos (nome, categoria, preco, estoque, data_cadastro)
VALUES
    ('Catan - Jogo de Colonização', 'Estratégia', 199.90, 35, '2024-01-15'),
    ('Carcassonne', 'Família', 150.00, 50, '2024-02-10'),
    ('Ticket to Ride', 'Estratégia', 320.00, 40, '2024-03-05'),
    ('Dixit', 'Família', 180.00, 60, '2024-02-25'),
    ('Gloomhaven', 'Campanha', 1200.00, 10, '2024-01-30'),
    ('Pandemic', 'Cooperativo', 280.00, 45, '2024-03-12'),
    ('Azul', 'Família', 220.00, 70, '2024-04-01'),
    ('Terraforming Mars', 'Estratégia', 750.00, 20, '2024-04-10');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos 
SET preco = 340.00 
WHERE nome = 'Ticket to Ride';