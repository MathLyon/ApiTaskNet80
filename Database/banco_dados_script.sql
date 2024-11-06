CREATE DATABASE `tarefas_db`;
USE `tarefas_db`;

CREATE TABLE `tarefas` (
  `id_tar` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `descricao_tar` text NOT NULL,
  `data_tar` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feito_tar` boolean DEFAULT false,
  `data_realizad_tar` datetime,
  `id_cat_fk` int NOT NULL,
  foreign key `id_cat_fk` references `categorias` (`id_cat`)
  PRIMARY KEY (`id_tar`)
);

INSERT INTO `tarefas` (`descricao_tar`) VALUES ("Estudo de API - PART 1"), ("Estudo de API - PART 2"), ("Estudo de API - PART 3");
UPDATE tarefas SET feito_tar = TRUE WHERE id_tar = 1;
SELECT * FROM tarefas_db.tarefas;



CREATE TABLE `categorias` (
  `id_cat` int NOT NULL AUTO_INCREMENT,
  `nome_cat` text NOT NULL,
  PRIMARY KEY (`id_cat`)
);

INSERT INTO `categorias` (`nome_cat`) VALUES ("Categoria 123"), ("Categoria 456"), ("Categoria 789");
SELECT * FROM tarefas_db.categorias;