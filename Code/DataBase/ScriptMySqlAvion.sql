-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema test_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema test_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test_db` DEFAULT CHARACTER SET utf8 ;
USE `test_db` ;

-- -----------------------------------------------------
-- Table `test_db`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `birthday` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`type_produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`type_produit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`produit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  `type_produit_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produit_type_produit1_idx` (`type_produit_id` ASC) VISIBLE,
  CONSTRAINT `fk_produit_type_produit1`
    FOREIGN KEY (`type_produit_id`)
    REFERENCES `test_db`.`type_produit` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`commande` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `produit_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_commande_user_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_commande_produit1_idx` (`produit_id` ASC) VISIBLE,
  CONSTRAINT `fk_commande_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `test_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commande_produit1`
    FOREIGN KEY (`produit_id`)
    REFERENCES `test_db`.`produit` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`plane_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`plane_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `model` VARCHAR(45) NULL,
  `brand` VARCHAR(45) NULL,
  `nb_pax` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`crew_member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`crew_member` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `clearance` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`airport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`airport` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `capacity` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`plane`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`plane` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `purchase_date` DATE NULL,
  `name` VARCHAR(45) NULL,
  `plane_type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_plane_plane_type1_idx` (`plane_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_plane_plane_type1`
    FOREIGN KEY (`plane_type_id`)
    REFERENCES `test_db`.`plane_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`flight` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL,
  `departure` TIME NULL,
  `arrival` TIME NULL,
  `number` VARCHAR(45) NULL,
  `plane_id` INT NOT NULL,
  `depart_airport_id` INT NOT NULL,
  `arrival_airport_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_flight_airport1_idx` (`depart_airport_id` ASC) VISIBLE,
  INDEX `fk_flight_plane1_idx` (`plane_id` ASC) VISIBLE,
  INDEX `fk_flight_airport2_idx` (`arrival_airport_id` ASC) VISIBLE,
  CONSTRAINT `fk_flight_airport1`
    FOREIGN KEY (`depart_airport_id`)
    REFERENCES `test_db`.`airport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_plane1`
    FOREIGN KEY (`plane_id`)
    REFERENCES `test_db`.`plane` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_airport2`
    FOREIGN KEY (`arrival_airport_id`)
    REFERENCES `test_db`.`airport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_db`.`flight_crew`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_db`.`flight_crew` (
  `crew_member_id` INT NOT NULL,
  `flight_id` INT NOT NULL,
  PRIMARY KEY (`crew_member_id`, `flight_id`),
  INDEX `fk_flight_crew_crew_member1_idx` (`crew_member_id` ASC) VISIBLE,
  INDEX `fk_flight_crew_flight1_idx` (`flight_id` ASC) VISIBLE,
  CONSTRAINT `fk_flight_crew_crew_member1`
    FOREIGN KEY (`crew_member_id`)
    REFERENCES `test_db`.`crew_member` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_crew_flight1`
    FOREIGN KEY (`flight_id`)
    REFERENCES `test_db`.`flight` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
