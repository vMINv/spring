CREATE TABLE `tlagusals`.`book` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `price` INT NULL,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`book_id`));