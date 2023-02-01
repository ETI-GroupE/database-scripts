CREATE TABLE `cartdiscount` (
  `shopCartId` INT NOT NULL,
  `discountId` INT NOT NULL);

insert into cartdiscount values(1,1)
insert into cartdiscount values(1,2)
insert into cartdiscount values(1,3)

CREATE TABLE `discounts` (
  `discountId` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `amount` INT NULL,
  `percentage` INT NULL,
  `startDate` DATETIME NOT NULL,
  `endDate` DATETIME NOT NULL,
  PRIMARY KEY (`discountId`));

insert into discounts values(1,"$15 off",15,0,"2022-12-12" ,"2023-12-12")
insert into discounts values(2,"$10 off",10,0,"2022-12-12" ,"2023-12-12")







