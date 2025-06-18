CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(50) NOT NULL,
    ingredientes TEXT NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    fk_id_categoria BIGINT,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (fk_id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada', 'Pizzas com sabores tradicionais salgados'),
('Doce', 'Pizzas com sabores doces'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Especial', 'Pizzas gourmet e especiais'),
('Clássica', 'Pizzas tradicionais clássicas');

INSERT INTO tb_pizzas (nome_pizza, ingredientes, tamanho, valor, fk_id_categoria) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 'Média', 42.00, 1),
('Calabresa', 'Calabresa, cebola, mussarela, molho de tomate', 'Grande', 48.00, 1),
('Chocolate com Morango', 'Chocolate, morango, mussarela', 'Média', 55.00, 2),
('Portuguesa', 'Presunto, ovo, cebola, azeitona, mussarela', 'Grande', 52.00, 1),
('Vegetariana Especial', 'Brócolis, palmito, tomate, mussarela', 'Média', 49.00, 3),
('Napolitana', 'Tomate, alho, orégano, mussarela', 'Pequena', 40.00, 5),
('Romeu e Julieta', 'Queijo minas, goiabada', 'Média', 50.00, 2),
('Quatro Queijos', 'Mussarela, gorgonzola, provolone, parmesão', 'Grande', 60.00, 4);

SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome_pizza LIKE '%m%' OR nome_pizza LIKE '%M%';

SELECT p.id_pizza, p.nome_pizza, p.ingredientes, p.tamanho, p.valor,
       c.nome_categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.fk_id_categoria = c.id_categoria;

SELECT p.id_pizza, p.nome_pizza, p.ingredientes, p.tamanho, p.valor,
       c.nome_categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.fk_id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';