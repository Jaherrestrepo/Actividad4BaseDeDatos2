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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `ID_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido1` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido2` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_oficina` int NOT NULL,
  `ID_jefe` int DEFAULT NULL,
  `puesto` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_empleado`),
  KEY `ID_oficina` (`ID_oficina`),
  KEY `ID_jefe` (`ID_jefe`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_oficina`) REFERENCES `oficina` (`ID_oficina`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`ID_jefe`) REFERENCES `empleado` (`ID_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Marcos','Magaña','Perez','3897','marcos@jardineria.es',8,NULL,'Director General'),(2,'Ruben','López','Martinez','2899','rlopez@jardineria.es',8,1,'Subdirector Marketing'),(3,'Alberto','Soria','Carrasco','2837','asoria@jardineria.es',8,2,'Subdirector Ventas'),(4,'Maria','Solís','Jerez','2847','msolis@jardineria.es',8,2,'Secretaria'),(5,'Felipe','Rosas','Marquez','2844','frosas@jardineria.es',8,3,'Representante Ventas'),(6,'Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es',8,3,'Representante Ventas'),(7,'Carlos','Soria','Jimenez','2444','csoria@jardineria.es',4,3,'Director Oficina'),(8,'Mariano','López','Murcia','2442','mlopez@jardineria.es',4,7,'Representante Ventas'),(9,'Lucio','Campoamor','Martín','2442','lcampoamor@jardineria.es',4,7,'Representante Ventas'),(10,'Hilario','Rodriguez','Huertas','2444','hrodriguez@jardineria.es',4,7,'Representante Ventas'),(11,'Emmanuel','Magaña','Perez','2518','manu@jardineria.es',1,3,'Director Oficina'),(12,'José Manuel','Martinez','De la Osa','2519','jmmart@hotmail.es',1,11,'Representante Ventas'),(13,'David','Palma','Aceituno','2519','dpalma@jardineria.es',1,11,'Representante Ventas'),(14,'Oscar','Palma','Aceituno','2519','opalma@jardineria.es',1,11,'Representante Ventas'),(15,'Francois','Fignon',NULL,'9981','ffignon@gardening.com',5,3,'Director Oficina'),(16,'Lionel','Narvaez',NULL,'9982','lnarvaez@gardening.com',5,15,'Representante Ventas'),(17,'Laurent','Serra',NULL,'9982','lserra@gardening.com',5,15,'Representante Ventas'),(18,'Michael','Bolton',NULL,'7454','mbolton@gardening.com',6,3,'Director Oficina'),(19,'Walter Santiago','Sanchez','Lopez','7454','wssanchez@gardening.com',6,18,'Representante Ventas'),(20,'Hilary','Washington',NULL,'7565','hwashington@gardening.com',2,3,'Director Oficina'),(21,'Marcus','Paxton',NULL,'7565','mpaxton@gardening.com',2,20,'Representante Ventas'),(22,'Lorena','Paxton',NULL,'7665','lpaxton@gardening.com',2,20,'Representante Ventas'),(23,'Nei','Nishikori',NULL,'8734','nnishikori@gardening.com',9,3,'Director Oficina'),(24,'Narumi','Riko',NULL,'8734','nriko@gardening.com',9,23,'Representante Ventas'),(25,'Takuma','Nomura',NULL,'8735','tnomura@gardening.com',9,23,'Representante Ventas'),(26,'Amy','Johnson',NULL,'3321','ajohnson@gardening.com',3,3,'Director Oficina'),(27,'Larry','Westfalls',NULL,'3322','lwestfalls@gardening.com',3,26,'Representante Ventas'),(28,'John','Walton',NULL,'3322','jwalton@gardening.com',3,26,'Representante Ventas'),(29,'Kevin','Fallmer',NULL,'3210','kfalmer@gardening.com',7,3,'Director Oficina'),(30,'Julian','Bellinelli',NULL,'3211','jbellinelli@gardening.com',7,29,'Representante Ventas'),(31,'Mariko','Kishi',NULL,'3211','mkishi@gardening.com',7,29,'Representante Ventas'),(32,'Marcos','Magaña','Perez','3897','marcos@jardineria.es',8,NULL,'Director General'),(33,'Ruben','López','Martinez','2899','rlopez@jardineria.es',8,1,'Subdirector Marketing'),(34,'Alberto','Soria','Carrasco','2837','asoria@jardineria.es',8,2,'Subdirector Ventas'),(35,'Maria','Solís','Jerez','2847','msolis@jardineria.es',8,2,'Secretaria'),(36,'Felipe','Rosas','Marquez','2844','frosas@jardineria.es',8,3,'Representante Ventas'),(37,'Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es',8,3,'Representante Ventas'),(38,'Carlos','Soria','Jimenez','2444','csoria@jardineria.es',4,3,'Director Oficina'),(39,'Mariano','López','Murcia','2442','mlopez@jardineria.es',4,7,'Representante Ventas'),(40,'Lucio','Campoamor','Martín','2442','lcampoamor@jardineria.es',4,7,'Representante Ventas'),(41,'Hilario','Rodriguez','Huertas','2444','hrodriguez@jardineria.es',4,7,'Representante Ventas'),(42,'Emmanuel','Magaña','Perez','2518','manu@jardineria.es',1,3,'Director Oficina'),(43,'José Manuel','Martinez','De la Osa','2519','jmmart@hotmail.es',1,11,'Representante Ventas'),(44,'David','Palma','Aceituno','2519','dpalma@jardineria.es',1,11,'Representante Ventas'),(45,'Oscar','Palma','Aceituno','2519','opalma@jardineria.es',1,11,'Representante Ventas'),(46,'Francois','Fignon',NULL,'9981','ffignon@gardening.com',5,3,'Director Oficina'),(47,'Lionel','Narvaez',NULL,'9982','lnarvaez@gardening.com',5,15,'Representante Ventas'),(48,'Laurent','Serra',NULL,'9982','lserra@gardening.com',5,15,'Representante Ventas'),(49,'Michael','Bolton',NULL,'7454','mbolton@gardening.com',6,3,'Director Oficina'),(50,'Walter Santiago','Sanchez','Lopez','7454','wssanchez@gardening.com',6,18,'Representante Ventas'),(51,'Hilary','Washington',NULL,'7565','hwashington@gardening.com',2,3,'Director Oficina'),(52,'Marcus','Paxton',NULL,'7565','mpaxton@gardening.com',2,20,'Representante Ventas'),(53,'Lorena','Paxton',NULL,'7665','lpaxton@gardening.com',2,20,'Representante Ventas'),(54,'Nei','Nishikori',NULL,'8734','nnishikori@gardening.com',9,3,'Director Oficina'),(55,'Narumi','Riko',NULL,'8734','nriko@gardening.com',9,23,'Representante Ventas'),(56,'Takuma','Nomura',NULL,'8735','tnomura@gardening.com',9,23,'Representante Ventas'),(57,'Amy','Johnson',NULL,'3321','ajohnson@gardening.com',3,3,'Director Oficina'),(58,'Larry','Westfalls',NULL,'3322','lwestfalls@gardening.com',3,26,'Representante Ventas'),(59,'John','Walton',NULL,'3322','jwalton@gardening.com',3,26,'Representante Ventas'),(60,'Kevin','Fallmer',NULL,'3210','kfalmer@gardening.com',7,3,'Director Oficina'),(61,'Julian','Bellinelli',NULL,'3211','jbellinelli@gardening.com',7,29,'Representante Ventas'),(62,'Mariko','Kishi',NULL,'3211','mkishi@gardening.com',7,29,'Representante Ventas');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
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
