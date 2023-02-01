CREATE SCHEMA `discountdb` ;

CREATE TABLE `discountdb`.`cartdiscount` (
  `shopCartId` INT NOT NULL,
  `discountId` INT NOT NULL);

insert into discountdb.cartdiscount values(1,1)
insert into discountdb.cartdiscount values(1,2)
insert into discountdb.cartdiscount values(1,3)

CREATE TABLE `discountdb`.`discounts` (
  `discountId` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `amount` INT NULL,
  `percentage` INT NULL,
  `startDate` DATETIME NOT NULL,
  `endDate` DATETIME NOT NULL,
  PRIMARY KEY (`discountId`));

insert into discountdb.discounts values(1,"$15 off",15,0,"2022-12-12" ,"2023-12-12")
insert into discountdb.discounts values(2,"$10 off",10,0,"2022-12-12" ,"2023-12-12")







