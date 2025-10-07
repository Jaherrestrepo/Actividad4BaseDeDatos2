-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: datamart
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
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_cliente` (
  `ID_cliente` int NOT NULL,
  `nombre_cliente` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `categoria_cliente` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
INSERT INTO `dim_cliente` VALUES (1,'GoldFish Garden','USA','San Francisco',NULL,'OCASIONAL'),(2,'Gardening Associates','USA','Miami','Miami',NULL),(3,'Gerudo Valley','USA','New York',NULL,NULL),(4,'Tendo Garden','USA','Miami',NULL,NULL),(5,'Lasas S.A.','Spain','Fuenlabrada','Madrid','FRECUENTE'),(6,'Beragua','Spain','Getafe','Madrid',NULL),(7,'Club Golf Puerta del Hierro','Spain','Madrid','Madrid','OCASIONAL'),(8,'Naturagua','Spain','Boadilla','Madrid',NULL),(9,'DaraDistribuciones','Spain','Fuenlabrada','Madrid','OCASIONAL'),(10,'Madrileña de riegos','Spain','Fuenlabrada','Madrid',NULL),(11,'Camunas Jardines S.L.','Spain','San Lorenzo del Escorial','Madrid',NULL),(12,'Dardena S.A.','Spain','Madrid','Madrid',NULL),(13,'Jardin de Flores','Spain','Madrid','Madrid',NULL),(14,'Flores Marivi','Spain','Fuenlabrada','Madrid',NULL),(15,'Flowers, S.A','Spain','Montornes del Valles','Barcelona',NULL),(16,'Naturajardin','Spain','Madrid','Madrid',NULL),(17,'Golf S.A.','Spain','Santa Cruz de Tenerife','Islas Canarias',NULL),(18,'Americh Golf Management SL','Spain','Barcelona','Cataluña',NULL),(19,'Aloha','Spain','Canarias','Canarias',NULL),(20,'El Prat','Spain','Barcelona','Cataluña',NULL),(21,'Sotogrande','Spain','Sotogrande','Cadiz',NULL),(22,'Vivero Humanes','Spain','Humanes','Madrid',NULL),(23,'Fuenla City','Spain','Fuenlabrada','Madrid',NULL),(24,'Jardines y Mansiones Cactus SL','Spain','Móstoles','Madrid',NULL),(25,'Jardinerías Matías SL','Spain','Bustarviejo','Madrid',NULL),(26,'Agrojardin','Spain','Getafe','Madrid',NULL),(27,'Top Campo','Spain','Humanes','Madrid',NULL),(28,'Jardineria Sara','Spain','Fuenlabrada','Madrid',NULL),(29,'Campohermoso','Spain','Fuenlabrada','Madrid',NULL),(30,'France Telecom','France','Paris',NULL,NULL),(31,'Musée du Louvre','France','Paris',NULL,NULL),(32,'Tutifruti S.A','Australia','Sydney','Nueva Gales del Sur',NULL),(33,'Flores S.L.','Spain','Madrid','Fuenlabrada',NULL),(34,'The Magic Garden','United Kingdom','London','London',NULL),(35,'El Jardin Viviente S.L','Australia','Sydney','Nueva Gales del Sur',NULL);
/*!40000 ALTER TABLE `dim_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 20:48:20
