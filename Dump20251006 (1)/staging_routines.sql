-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: staging
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
-- Temporary view structure for view `productos_mas_vendidos`
--

DROP TABLE IF EXISTS `productos_mas_vendidos`;
/*!50001 DROP VIEW IF EXISTS `productos_mas_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_mas_vendidos` AS SELECT 
 1 AS `ID_producto`,
 1 AS `nombre`,
 1 AS `total_vendido`,
 1 AS `ingresos_totales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_anio`
--

DROP TABLE IF EXISTS `ventas_por_anio`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_anio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_anio` AS SELECT 
 1 AS `anio`,
 1 AS `total_ventas`,
 1 AS `total_pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientes_segmentados`
--

DROP TABLE IF EXISTS `clientes_segmentados`;
/*!50001 DROP VIEW IF EXISTS `clientes_segmentados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_segmentados` AS SELECT 
 1 AS `ID_cliente`,
 1 AS `nombre_cliente`,
 1 AS `total_compras`,
 1 AS `categoria_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `productos_mas_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `productos_mas_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_mas_vendidos` AS select `p`.`ID_producto` AS `ID_producto`,`p`.`nombre` AS `nombre`,sum(`v`.`cantidad`) AS `total_vendido`,sum(`v`.`total_venta`) AS `ingresos_totales` from (`ventas` `v` join `producto` `p` on((`v`.`ID_producto` = `p`.`ID_producto`))) group by `p`.`ID_producto`,`p`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_anio`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_anio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_anio` AS select year(`v`.`fecha_venta`) AS `anio`,sum(`v`.`total_venta`) AS `total_ventas`,count(distinct `v`.`ID_pedido`) AS `total_pedidos` from `ventas` `v` group by `anio` order by `anio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_segmentados`
--

/*!50001 DROP VIEW IF EXISTS `clientes_segmentados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_segmentados` AS select `c`.`ID_cliente` AS `ID_cliente`,`c`.`nombre_cliente` AS `nombre_cliente`,sum(`v`.`total_venta`) AS `total_compras`,(case when (sum(`v`.`total_venta`) > 50000) then 'VIP' when (sum(`v`.`total_venta`) between 20000 and 50000) then 'FRECUENTE' else 'OCASIONAL' end) AS `categoria_cliente` from (`ventas` `v` join `cliente` `c` on((`v`.`ID_cliente` = `c`.`ID_cliente`))) group by `c`.`ID_cliente`,`c`.`nombre_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'staging'
--

--
-- Dumping routines for database 'staging'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06 20:48:21
