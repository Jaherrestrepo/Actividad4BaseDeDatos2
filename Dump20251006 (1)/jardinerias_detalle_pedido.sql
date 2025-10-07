-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jardinerias
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `ID_pedido` int NOT NULL,
  `ID_producto` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL,
  PRIMARY KEY (`ID_pedido`,`ID_producto`),
  KEY `ID_producto` (`ID_producto`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`),
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,'FR-67',10,70.00,3),(1,'OR-127',40,4.00,1),(1,'OR-141',25,4.00,2),(1,'OR-241',15,19.00,4),(1,'OR-99',23,14.00,5),(2,'FR-4',3,29.00,6),(2,'FR-40',7,8.00,7),(2,'OR-140',50,4.00,3),(2,'OR-141',20,5.00,2),(2,'OR-159',12,6.00,5),(2,'OR-227',67,64.00,1),(2,'OR-247',5,462.00,4),(3,'FR-48',120,9.00,6),(3,'OR-122',32,5.00,4),(3,'OR-123',11,5.00,5),(3,'OR-213',30,266.00,1),(3,'OR-217',15,65.00,2),(3,'OR-218',24,25.00,3),(4,'FR-31',12,8.00,7),(4,'FR-34',42,8.00,6),(4,'FR-40',42,9.00,8),(4,'OR-152',3,6.00,5),(4,'OR-155',4,6.00,3),(4,'OR-156',17,9.00,4),(4,'OR-157',38,10.00,2),(4,'OR-222',21,59.00,1),(8,'FR-106',3,11.00,1),(8,'FR-108',1,32.00,2),(8,'FR-11',10,100.00,3),(9,'AR-001',80,1.00,3),(9,'AR-008',450,1.00,2),(9,'FR-106',80,8.00,1),(9,'FR-69',15,91.00,2),(10,'FR-82',5,70.00,2),(10,'FR-91',30,75.00,1),(10,'OR-234',5,64.00,3),(11,'AR-006',180,1.00,3),(11,'OR-247',80,8.00,1),(12,'AR-009',290,1.00,1),(13,'11679',5,14.00,1),(13,'21636',12,14.00,2),(13,'FR-11',5,100.00,3),(14,'FR-100',8,11.00,2),(14,'FR-13',13,57.00,1),(15,'FR-84',4,13.00,3),(15,'OR-101',2,6.00,2),(15,'OR-156',6,10.00,1),(15,'OR-203',9,10.00,4),(16,'30310',12,12.00,1),(16,'FR-36',10,9.00,2),(17,'11679',5,14.00,1),(17,'22225',5,12.00,3),(17,'FR-37',5,9.00,2),(17,'FR-64',5,22.00,4),(17,'OR-136',5,18.00,5),(18,'22225',4,12.00,2),(18,'FR-22',2,4.00,1),(18,'OR-159',10,6.00,3),(19,'30310',9,12.00,5),(19,'FR-23',6,8.00,4),(19,'FR-75',1,32.00,2),(19,'FR-84',5,13.00,1),(19,'OR-208',20,4.00,3),(20,'11679',14,14.00,1),(20,'30310',8,12.00,2);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 20:48:18
