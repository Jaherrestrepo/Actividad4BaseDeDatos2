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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre_contacto` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_contacto` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `fax` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `linea_direccion1` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `linea_direccion2` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codigo_postal` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID_empleado_rep_ventas` int DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_cliente`),
  KEY `ID_empleado_rep_ventas` (`ID_empleado_rep_ventas`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_empleado_rep_ventas`) REFERENCES `empleado` (`ID_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'GOLDFISH GARDEN','Daniel','G','5556901745','5556901746','False Street 52 2 A',NULL,'San Francisco',NULL,'USA','24006',19,3000.00),(2,'GARDENING ASSOCIATES','Anne','Wright','5557410345','5557410346','Wall-e Avenue',NULL,'Miami','Miami','USA','24010',19,6000.00),(3,'GERUDO VALLEY','Link','Flaute','5552323129','5552323128','Oaks Avenue nº22',NULL,'New York',NULL,'USA','85495',22,12000.00),(4,'TENDO GARDEN','Akane','Tendo','5559123321','5559123322','Null Street nº69',NULL,'Miami',NULL,'USA','696969',22,600000.00),(5,'LASAS S.A.','Antonio','Lasas','34916540145','34914851312','C/Leganes 15',NULL,'Fuenlabrada','Madrid','Spain','28945',8,154310.00),(6,'BERAGUA','Jose','Bermejo','654987321','916549872','C/Pintor Segundo',NULL,'Getafe','Madrid','Spain','28942',11,20000.00),(7,'CLUB GOLF PUERTA DEL HIERRO','Paco','Lopez','62456810','919535678','C/Sinesio Delgado',NULL,'Madrid','Madrid','Spain','28930',11,40000.00),(8,'NATURAGUA','Guillermo','Rengifo','689234750','916428956','C/Majadahonda',NULL,'Boadilla','Madrid','Spain','28947',11,32000.00),(9,'DARADISTRIBUCIONES','David','Serrano','675598001','916421756','C/Azores',NULL,'Fuenlabrada','Madrid','Spain','28946',11,50000.00),(10,'MADRILEÑA DE RIEGOS','Jose','Tacaño','655983045','916689215','C/Lagañas',NULL,'Fuenlabrada','Madrid','Spain','28943',11,20000.00),(11,'CAMUNAS JARDINES S.L.','Pedro','Camunas','34914873241','34914871541','C/Vírgenes 45','C/Princesas 2 1ºB','San Lorenzo del Escorial','Madrid','Spain','28145',8,16481.00),(12,'DARDENA S.A.','Juan','Rodriguez','34912453217','34912484764','C/Nueva York 74',NULL,'Madrid','Madrid','Spain','28003',8,321000.00),(13,'JARDIN DE FLORES','Javier','Villar','654865643','914538776','C/Oña 34',NULL,'Madrid','Madrid','Spain','28950',30,40000.00),(14,'FLORES MARIVI','Maria','Rodriguez','666555444','912458657','C/Leganes 24',NULL,'Fuenlabrada','Madrid','Spain','28945',5,1500.00),(15,'FLOWERS, S.A','Beatriz','Fernandez','698754159','978453216','C/Luis Salquillo 4',NULL,'Montornes del Valles','Barcelona','Spain','24586',5,3500.00),(16,'NATURAJARDIN','Victoria','Cruz','612343529','916548735','Plaza Magallón 15',NULL,'Madrid','Madrid','Spain','28011',30,5050.00),(17,'GOLF S.A.','Luis','Martinez','916458762','912354475','C/Estancado',NULL,'Santa Cruz de Tenerife','Islas Canarias','Spain','38297',12,30000.00),(18,'AMERICH GOLF MANAGEMENT SL','Mario','Suarez','964493072','964493063','C/Letardo',NULL,'Barcelona','Cataluña','Spain','12320',12,20000.00),(19,'ALOHA','Cristian','Rodriguez','916485852','914489898','C/Roman 3',NULL,'Canarias','Canarias','Spain','35488',12,50000.00),(20,'EL PRAT','Francisco','Camacho','916882323','916493211','Avenida Tibidabo',NULL,'Barcelona','Cataluña','Spain','12320',12,30000.00),(21,'SOTOGRANDE','Maria','Santillana','915576622','914825645','C/Paseo del Parque',NULL,'Sotogrande','Cadiz','Spain','11310',12,60000.00),(22,'VIVERO HUMANES','Federico','Gomez','654987690','916040875','C/Miguel Echegaray 54',NULL,'Humanes','Madrid','Spain','28970',30,7430.00),(23,'FUENLA CITY','Tony','Muñoz Mena','675842139','915483754','C/Callo 52',NULL,'Fuenlabrada','Madrid','Spain','28574',5,4500.00),(24,'JARDINES Y MANSIONES CACTUS SL','Eva María','Sánchez','916877445','914477777','Polígono Industrial Maspalomas Nº52',NULL,'Móstoles','Madrid','Spain','29874',9,76000.00),(25,'JARDINERÍAS MATÍAS SL','Matías','San Martín','916544147','917897474','C/Francisco Arce Nº44',NULL,'Bustarviejo','Madrid','Spain','37845',9,100500.00),(26,'AGROJARDIN','Benito','Lopez','675432926','916549264','C/Mar Caspio 43',NULL,'Getafe','Madrid','Spain','28904',30,8040.00),(27,'TOP CAMPO','Joseluis','Sanchez','685746512','974315924','C/Ibiza 32',NULL,'Humanes','Madrid','Spain','28574',5,5500.00),(28,'JARDINERIA SARA','Sara','Marquez','675124537','912475843','C/Lima 1',NULL,'Fuenlabrada','Madrid','Spain','27584',5,7500.00),(29,'CAMPOHERMOSO','Luis','Jimenez','645925376','916159116','C/Peru 78',NULL,'Fuenlabrada','Madrid','Spain','28945',30,3250.00),(30,'FRANCE TELECOM','François','Toulou','(33)5120578961','(33)5120578961','6 Place d Alleray 15ème',NULL,'Paris',NULL,'France','75010',16,10000.00),(31,'MUSÉE DU LOUVRE','Pierre','Delacroux','(33)0140205050','(33)0140205442','Quai du Louvre',NULL,'Paris',NULL,'France','75058',16,30000.00),(32,'TUTIFRUTI S.A','Jacob','Jones','292612433','292831695','Level 24, St. Martins Tower, 31 Market St.',NULL,'Sydney','Nueva Gales del Sur','Australia','2000',31,10000.00),(33,'FLORES S.L.','Antonio','Romero','654352981','685249700','Avenida España',NULL,'Madrid','Fuenlabrada','Spain','29643',18,6000.00),(34,'THE MAGIC GARDEN','Richard','Mcain','926523468','9364875882','Lighting Park',NULL,'London','London','United Kingdom','65930',18,10000.00),(35,'EL JARDIN VIVIENTE S.L','Justin','Smith','280057161','280057162','176 Cumberland Street The Rocks',NULL,'Sydney','Nueva Gales del Sur','Australia','2003',31,8000.00);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
