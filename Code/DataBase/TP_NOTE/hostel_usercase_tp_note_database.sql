-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hostel_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hostel_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hostel_db` DEFAULT CHARACTER SET utf8 ;
USE `hostel_db` ;

-- -----------------------------------------------------
-- Table `hostel_db`.`room_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`room_type` (
  `id` TINYINT UNSIGNED NOT NULL,
  `type` VARCHAR(50) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`room` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `capacity` TINYINT UNSIGNED NOT NULL,
  `room_type_id` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_room_room_type1_idx` (`room_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_room_room_type1`
    FOREIGN KEY (`room_type_id`)
    REFERENCES `hostel_db`.`room_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`client` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `birthday` DATE NOT NULL,
  `mail` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`group` (
  `id` INT UNSIGNED NOT NULL,
  `contact_client_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_group_client1_idx` (`contact_client_id` ASC) VISIBLE,
  CONSTRAINT `fk_group_client1`
    FOREIGN KEY (`contact_client_id`)
    REFERENCES `hostel_db`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`booking` (
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
    REFERENCES `hostel_db`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `hostel_db`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_group1`
    FOREIGN KEY (`group_id`)
    REFERENCES `hostel_db`.`group` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`option` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `cost_per_person` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`booking_has_option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`booking_has_option` (
  `booking_id` INT UNSIGNED NOT NULL,
  `option_id` TINYINT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  `coupon` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`booking_id`, `option_id`),
  INDEX `fk_booking_has_option_option1_idx` (`option_id` ASC) VISIBLE,
  INDEX `fk_booking_has_option_booking1_idx` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_has_option_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `hostel_db`.`booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_has_option_option1`
    FOREIGN KEY (`option_id`)
    REFERENCES `hostel_db`.`option` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hostel_db`.`group_has_client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_db`.`group_has_client` (
  `group_id` INT UNSIGNED NOT NULL,
  `client_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`, `client_id`),
  INDEX `fk_group_has_client_client1_idx` (`client_id` ASC) VISIBLE,
  INDEX `fk_group_has_client_group1_idx` (`group_id` ASC) VISIBLE,
  CONSTRAINT `fk_group_has_client_group1`
    FOREIGN KEY (`group_id`)
    REFERENCES `hostel_db`.`group` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_group_has_client_client1`
    FOREIGN KEY (`client_id`)
    REFERENCES `hostel_db`.`client` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
