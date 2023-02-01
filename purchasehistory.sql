DROP TABLE IF EXISTS `purchasehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasehistory` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `final_price` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `product_id` int NOT NULL,
  `status` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasehistory`
--

LOCK TABLES `purchasehistory` WRITE;
/*!40000 ALTER TABLE `purchasehistory` DISABLE KEYS */;
INSERT INTO `purchasehistory` VALUES (1,1,'120.00',1,3,'completed','asd'),(1,1,'154',2,6,'test','asd'),(1,1,'456',1,7,'test','test'),(2,2,'124',1,2,'completed','ads'),(2,1,'653',1,6,'asd','asd'),(3,0,'0',0,0,'test','asd'),(3,2,'321',1,6,'asd','asd'),(4,3,'125',2,3,'delivering','asd');
/*!40000 ALTER TABLE `purchasehistory` ENABLE KEYS */;
UNLOCK TABLES;