-- -----------------------------------------------------
-- Schema sauce-svp
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sauce-svp`;

CREATE SCHEMA `sauce-svp`;
USE `sauce-svp` ;

-- -----------------------------------------------------
-- Table `sauce-svp`.`categorie_produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sauce-svp`.`categorie_produit` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nom_categorie` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `sauce-svp`.`produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sauce-svp`.`produit` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nom_produit` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(1000) DEFAULT NULL,
  `ingredients` VARCHAR(1000) DEFAULT NULL,
  `contenu_ml` SMALLINT DEFAULT NULL,
   `origine` VARCHAR(20) DEFAULT NULL,
  `prix` DECIMAL(9,2) DEFAULT NULL,
  `url_image` VARCHAR(255) DEFAULT NULL,
  `niveau_epice` BIGINT,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_categorie` FOREIGN KEY (`niveau_epice`) REFERENCES `categorie_produit` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Ajout donnees `sauce-svp`.`categorie_produit`
-- -----------------------------------------------------
INSERT INTO categorie_produit(nom_categorie) VALUES ('Nullement épicé');
INSERT INTO categorie_produit(nom_categorie) VALUES ('Légèrement épicé');
INSERT INTO categorie_produit(nom_categorie) VALUES ('Agréablement épicé');
INSERT INTO categorie_produit(nom_categorie) VALUES ('Très Épicé');
INSERT INTO categorie_produit(nom_categorie) VALUES ('Extrêmement épicé');

-- -----------------------------------------------------
-- Ajout donnees `sauce-svp`.`produit`
-- -----------------------------------------------------

INSERT INTO produit (nom_produit, description,ingredients,contenu_ml,origine,prix,niveau_epice)  VALUES ('LD50 Hot Sauce', 'Attention : Procéder avec prudence. Ce n\'est peut-être pas notre sauce extrêmement épicée la plus chaude sur le plan technique, mais ses 3 millions d\'unités de Scoville de chaleur peuvent être une dose mortelle de feu à l\'entrée, à la descente et à la sortie.','Piments habanero, Vinaigre, Concentré de tomate, Capsaïcine oléorésine, Piments jolokia, Piments scorpion, Piments reaper, Ail, Oignon, Sel, Acide citrique, Gomme xanthane',148,'États-Unis',15.55,5);
INSERT INTO produit (nom_produit, description,ingredients,contenu_ml,origine,prix,niveau_epice)  VALUES ('Tapatio Hot Sauce', 'Tapatio Hot Sauce est une sauce piquante originaire de Californie, aux États-Unis. Elle est réputée pour son équilibre parfait entre le piquant et la saveur. Fabriquée à partir de piments rouges, d\'ail, de vinaigre et d\'épices, cette sauce est appréciée pour son goût délicieux et sa chaleur modérée.','Piments rouges, eau, sel, ail, acide acétique, épices, gomme xanthane, acide citrique.',148,'États-Unis',7.85,5);
