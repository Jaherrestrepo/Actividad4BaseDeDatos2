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
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_pedido` int NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `comentarios` text COLLATE utf8mb4_general_ci,
  `ID_cliente` int NOT NULL,
  PRIMARY KEY (`ID_pedido`),
  KEY `ID_cliente` (`ID_cliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2006-01-17','2006-01-19','2006-01-19','Entregado','Pagado a plazos',5),(2,'2007-10-23','2007-10-28','2007-10-26','Entregado','La entrega llegó antes de lo esperado',5),(3,'2008-06-20','2008-06-25',NULL,'Rechazado','Límite de crédito superado',5),(4,'2009-01-20','2009-01-26',NULL,'Pendiente',NULL,5),(5,'2008-11-09','2008-11-14','2008-11-14','Entregado','El cliente paga la mitad con tarjeta y la otra mitad con efectivo, se le realizan dos facturas',1),(6,'2008-12-22','2008-12-27','2008-12-28','Entregado','El cliente comprueba la integridad del paquete, todo correcto',1),(7,'2009-01-15','2009-01-20',NULL,'Pendiente','El cliente llama para confirmar la fecha - Esperando al proveedor',3),(8,'2009-01-20','2009-01-27',NULL,'Pendiente','El cliente requiere que el pedido se le entregue de 16:00h a 22:00h',1),(9,'2009-01-22','2009-01-27',NULL,'Pendiente','El cliente requiere que el pedido se le entregue de 9:00h a 13:00h',1),(10,'2009-01-12','2009-01-14','2009-01-15','Entregado',NULL,7),(11,'2009-01-02','2009-01-02',NULL,'Rechazado','Mal pago',7),(12,'2009-01-09','2009-01-12','2009-01-11','Entregado',NULL,7),(13,'2009-01-06','2009-01-07','2009-01-15','Entregado',NULL,7),(14,'2009-01-08','2009-01-09','2009-01-11','Entregado','Mal estado',7),(15,'2009-01-05','2009-01-06','2009-01-07','Entregado',NULL,9),(16,'2009-01-18','2009-02-12',NULL,'Pendiente','Entregar en Murcia',9),(17,'2009-01-20','2009-02-15',NULL,'Pendiente',NULL,9),(18,'2009-01-09','2009-01-09','2009-01-09','Rechazado','Mal pago',9),(19,'2009-01-11','2009-01-11','2009-01-13','Entregado',NULL,9),(20,'2008-12-30','2009-01-10',NULL,'Rechazado','El pedido fue anulado por el cliente',5);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
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
