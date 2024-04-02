-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`room_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`room_type` (
  `id` TINYINT UNSIGNED NOT NULL,
  `type` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`room` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `capacity` TINYINT UNSIGNED NOT NULL,
  `room_type_id` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_room_room_type1_idx` (`room_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_room_room_type1`
    FOREIGN KEY (`room_type_id`)
    REFERENCES `mydb`.`room_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`client` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `birthday` DATE NOT NULL,
  `mail` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`group` (
  `id` INT UNSIGNED NOT NULL,
  `contact_client_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_group_client1_idx` (`contact_client_id` ASC) VISIBLE,
  CONSTRAINT `fk_group_client1`
    FOREIGN KEY (`contact_client_id`)
    REFERENCES `mydb`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`booking` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `arrival` DATE NOT NULL,
  `departure` VARCHAR(45) NOT NULL,
  `total_cost` INT UNSIGNED NULL,
  `client_id` INT UNSIGNED NOT NULL,
  `room_id` SMALLINT UNSIGNED NOT NULL,
  `group_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_booking_client1_idx` (`client_id` ASC) VISIBLE,
  INDEX `fk_booking_room1_idx` (`room_id` ASC) VISIBLE,
  INDEX `fk_booking_group1_idx` (`group_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_client1`
    FOREIGN KEY (`client_id`)
    REFERENCES `mydb`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `mydb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_group1`
    FOREIGN KEY (`group_id`)
    REFERENCES `mydb`.`group` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`option` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `cost_per_person` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`booking_has_option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`booking_has_option` (
  `booking_id` INT UNSIGNED NOT NULL,
  `option_id` TINYINT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  `coupon` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`booking_id`, `option_id`),
  INDEX `fk_booking_has_option_option1_idx` (`option_id` ASC) VISIBLE,
  INDEX `fk_booking_has_option_booking1_idx` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_has_option_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `mydb`.`booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_has_option_option1`
    FOREIGN KEY (`option_id`)
    REFERENCES `mydb`.`option` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`group_has_client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`group_has_client` (
  `group_id` INT UNSIGNED NOT NULL,
  `client_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`, `client_id`),
  INDEX `fk_group_has_client_client1_idx` (`client_id` ASC) VISIBLE,
  INDEX `fk_group_has_client_group1_idx` (`group_id` ASC) VISIBLE,
  CONSTRAINT `fk_group_has_client_group1`
    FOREIGN KEY (`group_id`)
    REFERENCES `mydb`.`group` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_group_has_client_client1`
    FOREIGN KEY (`client_id`)
    REFERENCES `mydb`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
