-- MySQL dump 10.13  Distrib 8.0.14, for macos10.14 (x86_64)
--
-- Host: localhost    Database: Datamart
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sales_by_staff`
--

DROP TABLE IF EXISTS `sales_by_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales_by_staff` (
  `Employee` varchar(33) DEFAULT NULL,
  `order_value` decimal(42,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_by_staff`
--

LOCK TABLES `sales_by_staff` WRITE;
/*!40000 ALTER TABLE `sales_by_staff` DISABLE KEYS */;
INSERT INTO `sales_by_staff` VALUES ('Adriane Haycox',1510243),('Alphonso Lamanby',1463242),('Bonny Faye',2189152),('Cairistiona MacConneely',1114296),('Carlina Thackeray',1424683),('Clerissa Gooden',1673599),('Eirena Turk',1699947),('Em Walkden',2332475),('Ennis Boshell',2546119),('Gnni Liddon',1347592),('Granger Chaperlin',1438350),('Hewett Filmer',1202409),('Hillier Stearn',1610182),('Jermaine Dowson',1909613),('Kendrick Tohill',1789977),('Levi Crowson',1902978),('Lolly Crispe',1558280),('Marwin Mouland',1758287),('Selby Tethcote',1259426),('Zollie Postill',1754405),(NULL,33485255);
/*!40000 ALTER TABLE `sales_by_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `Customer` varchar(33) DEFAULT NULL,
  `product_id` varchar(4) NOT NULL,
  `retail_price` decimal(10,0) DEFAULT NULL,
  `staff_id` varchar(4) NOT NULL,
  `Employee` varchar(33) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `order_value` decimal(20,0) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('Moe Mathey','92',3248,'20','Eirena Turk',33,107184,'2018-01-02'),('Hammad Jeffers','86',2154,'5','Cairistiona MacConneely',4,8616,'2018-01-02'),('Bax Ingham','3',2697,'4','Jermaine Dowson',9,24273,'2018-01-03'),('Glynn Lammert','61',2918,'10','Em Walkden',43,125474,'2018-01-03'),('Armstrong Garrick','73',3381,'19','Granger Chaperlin',1,3381,'2018-01-06'),('Wittie Blaby','82',2550,'1','Adriane Haycox',30,76500,'2018-01-06');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-19 10:44:32
