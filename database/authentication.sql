CREATE  TABLE `testdb`.`users` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(20) NULL ,
  `email` VARCHAR(50) NULL ,
  `password` VARCHAR(120) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) );

INSERT INTO `testdb`.`users` (`username`, `email`, `password`) VALUES ('admin', 'admin@mail.com', 'password');
INSERT INTO `testdb`.`users` (`username`, `email`, `password`) VALUES ('kieuanh29', 'kanh@mail.com', 'password');

CREATE  TABLE `testdb`.`roles` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(20) NULL ,
  PRIMARY KEY (`id`) );

INSERT INTO `testdb`.`roles` (`name`) VALUES ('ROLE_USER');
INSERT INTO `testdb`.`roles` (`name`) VALUES ('ROLE_ADMIN');

CREATE  TABLE `testdb`.`user_roles` (
  `user_id` BIGINT(20) NOT NULL ,
  `role_id` INT(11) NOT NULL ,
  PRIMARY KEY (`user_id`) ,
	PRIMARY KEY (`role_id`));

INSERT INTO `testdb`.`user_roles` (`user_id`,`role_id`) VALUES ('1','2');
INSERT INTO `testdb`.`user_roles` (`user_id`,`role_id`) VALUES ('2','1');

