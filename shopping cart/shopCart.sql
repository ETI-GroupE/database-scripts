CREATE TABLE `checkout` (
  `ShopCartID` int NOT NULL,
  `EmailAddr` varchar(45) DEFAULT NULL,
  `Shipping` varchar(45) DEFAULT NULL,
  `PostalCode` int DEFAULT NULL,
  `CreditCard` varchar(45) DEFAULT NULL,
  `TotalPayment` int DEFAULT NULL,
  PRIMARY KEY (`ShopCartID`)
) 

CREATE TABLE `shopping_cart_user` (
  `ShopCartID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `IsCheckout` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ShopCartID`)
) 

CREATE TABLE `shopping_cart` (
  `ShopCartID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL
)

INSERT INTO checkout VALUES (1,"testing@gmail.com","1 ang mo kio central 3", "123456", "1234567891011121", "10.55");
INSERT INTO checkout VALUES (2,"usertest@gmail.com","1 king albert park 3", "654321", "5437485912673846", "402.70");
INSERT INTO shopping_cart_user VALUES (1,1,1);
INSERT INTO shopping_cart_user VALUES (2,2,1);
INSERT INTO shopping_cart_user VALUES (3,1,0);
INSERT INTO shopping_cart VALUES (1 , 2 , 2);
INSERT INTO shopping_cart VALUES (1 , 4 , 5);
INSERT INTO shopping_cart VALUES (2 , 5 , 10);