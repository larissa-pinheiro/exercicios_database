# Exercício 1 - Game Online (Tibia)

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    tipo_combate VARCHAR(40) NOT NULL,
    arma_principal VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    fk_id_classe BIGINT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (fk_id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (nome_classe, tipo_combate, arma_principal)
VALUES
	('Knight', 'Melee', 'Sword/Axe/Club'),
	('Paladin', 'Distance', 'Bow/Crossbow'),
	('Druid', 'Magic/Support', 'Rod'),
	('Sorcerer', 'Magic Advanced', 'Wand'),
	('Monk', 'Melee/Support', 'Fist Weapons');

INSERT INTO tb_personagens (nome_personagem, nivel, poder_ataque, poder_defesa, fk_id_classe)
VALUES
	('Eternal Oblivion', 297, 3564, 2970, 1),
	('Kharsek', 180, 2160, 1800, 1),
	('Bubble', 95, 950, 665, 2),
	('Shawtay', 120, 960, 600, 3),
	('Daniel Paladino', 90, 900, 630, 2),
	('Lord Paulistinha', 85, 1020, 850, 1),
	('Tynusi', 88, 792, 352, 4),
	('Tommy', 78, 780, 546, 2);

SELECT * 
FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * 
FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * 
FROM tb_personagens
WHERE nome_personagem LIKE '%c%' OR nome_personagem LIKE '%C%';

SELECT p.id_personagem, p.nome_personagem, p.nivel, p.poder_ataque, p.poder_defesa,
       c.nome_classe, c.tipo_combate, c.arma_principal
FROM tb_personagens p
INNER JOIN tb_classes c ON p.fk_id_classe = c.id_classe;

SELECT p.id_personagem, p.nome_personagem, p.nivel, p.poder_ataque, p.poder_defesa,
       c.nome_classe, c.tipo_combate, c.arma_principal
FROM tb_personagens p
INNER JOIN tb_classes c ON p.fk_id_classe = c.id_classe
WHERE c.nome_classe = 'Paladin';