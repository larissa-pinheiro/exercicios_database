CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    tipo_produto VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    preco_kg DECIMAL(8,2) NOT NULL,
    fornecedor VARCHAR(50) NOT NULL,
    fk_id_categoria BIGINT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, tipo_produto) VALUES
('Frutas', 'Produtos frescos e naturais'),
('Verduras', 'Folhosos e leves'),
('Legumes', 'Alimentos para cozimento e refogados'),
('Raízes', 'Tubérculos e raízes comestíveis'),
('Orgânicos', 'Produtos cultivados sem agrotóxicos');

INSERT INTO tb_produtos (nome_produto, descricao, preco_kg, fornecedor, fk_id_categoria) VALUES
('Maçã', 'Fruta vermelha, doce e crocante', 6.50, 'Frutal', 1),
('Banana', 'Fruta amarela rica em potássio', 4.00, 'Frutal', 1),
('Alface', 'Verdura usada em saladas', 3.00, 'HortiBom', 2),
('Tomate', 'Usado em saladas, molhos e refogados', 5.20, 'HortiBom', 3),
('Cenoura', 'Legume laranja, ótimo para saladas e cozidos', 4.80, 'LegumeBom', 3),
('Batata', 'Raiz usada em frituras, purês e cozidos', 3.90, 'Tubérculos Brasil', 4),
('Beterraba', 'Raiz roxa, rica em ferro', 4.50, 'Tubérculos Brasil', 4),
('Couve', 'Verdura verde escura usada em refogados e sucos', 3.70, 'HortiBom', 2);

SELECT * FROM tb_produtos
WHERE preco_kg > 50.00;

SELECT * FROM tb_produtos
WHERE preco_kg BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE '%c%' OR nome_produto LIKE '%C%';

SELECT p.id_produto, p.nome_produto, p.descricao, p.preco_kg, p.fornecedor,
       c.nome_categoria, c.tipo_produto
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.fk_id_categoria = c.id_categoria;

SELECT p.id_produto, p.nome_produto, p.descricao, p.preco_kg, p.fornecedor,
       c.nome_categoria, c.tipo_produto
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.fk_id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Frutas';