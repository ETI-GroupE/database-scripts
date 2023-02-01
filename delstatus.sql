CREATE SCHEMA `statusdb` ;
CREATE TABLE `statusdb`.`orderstatus` (
  `statusId` INT NOT NULL,
  `statusName` VARCHAR(45) NOT NULL,
  `orderId` INT NOT NULL,
  `productId` INT NOT NULL,
  `shipLocation` VARCHAR(45) NULL,
  `shipDestination` VARCHAR(45) NULL);

insert into statusdb.orderstatus values(3,"In transit to destination",1,1,"China" ,"Singapore")