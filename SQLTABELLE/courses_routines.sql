-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: courses
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Temporary view structure for view `iscritti`
--

DROP TABLE IF EXISTS `iscritti`;
/*!50001 DROP VIEW IF EXISTS `iscritti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `iscritti` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `genere`,
 1 AS `eta`,
 1 AS `email`,
 1 AS `Corso`,
 1 AS `Prezzo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `iscritti_over30`
--

DROP TABLE IF EXISTS `iscritti_over30`;
/*!50001 DROP VIEW IF EXISTS `iscritti_over30`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `iscritti_over30` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `eta`,
 1 AS `corso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `studenti_v`
--

DROP TABLE IF EXISTS `studenti_v`;
/*!50001 DROP VIEW IF EXISTS `studenti_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studenti_v` AS SELECT 
 1 AS `studente_id`,
 1 AS `nome`,
 1 AS `cognome`,
 1 AS `email`,
 1 AS `provincia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contatti`
--

DROP TABLE IF EXISTS `contatti`;
/*!50001 DROP VIEW IF EXISTS `contatti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contatti` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `genere`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contatti_f`
--

DROP TABLE IF EXISTS `contatti_f`;
/*!50001 DROP VIEW IF EXISTS `contatti_f`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contatti_f` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `genere`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `studenti_giovani`
--

DROP TABLE IF EXISTS `studenti_giovani`;
/*!50001 DROP VIEW IF EXISTS `studenti_giovani`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studenti_giovani` AS SELECT 
 1 AS `cognome`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `eta`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `iscritti`
--

/*!50001 DROP VIEW IF EXISTS `iscritti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `iscritti` AS select `s`.`cognome` AS `cognome`,`s`.`nome` AS `nome`,`s`.`genere` AS `genere`,`s`.`eta` AS `eta`,`s`.`email` AS `email`,`c`.`titolo` AS `Corso`,`i`.`prezzo` AS `Prezzo` from ((`studenti` `s` join `iscrizioni` `i` on((`s`.`studente_id` = `i`.`studente_id`))) join `corsi` `c` on((`c`.`corso_id` = `i`.`corso_id`))) order by `c`.`titolo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `iscritti_over30`
--

/*!50001 DROP VIEW IF EXISTS `iscritti_over30`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `iscritti_over30` AS select `s`.`cognome` AS `cognome`,`s`.`nome` AS `nome`,`s`.`email` AS `email`,`s`.`eta` AS `eta`,`corsi`.`titolo` AS `corso` from ((`studenti` `s` join `iscrizioni` `i` on((`s`.`studente_id` = `i`.`studente_id`))) join `corsi` on((`i`.`corso_id` = `corsi`.`corso_id`))) where (`s`.`eta` > 30) order by `corsi`.`titolo`,`s`.`eta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studenti_v`
--

/*!50001 DROP VIEW IF EXISTS `studenti_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studenti_v` AS select `studenti`.`studente_id` AS `studente_id`,`studenti`.`nome` AS `nome`,`studenti`.`cognome` AS `cognome`,`studenti`.`email` AS `email`,`studenti`.`provincia` AS `provincia` from `studenti` where (`studenti`.`provincia` = 'to') */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contatti`
--

/*!50001 DROP VIEW IF EXISTS `contatti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contatti` AS select `studenti`.`cognome` AS `cognome`,`studenti`.`nome` AS `nome`,`studenti`.`email` AS `email`,`studenti`.`genere` AS `genere` from `studenti` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contatti_f`
--

/*!50001 DROP VIEW IF EXISTS `contatti_f`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contatti_f` AS select `contatti`.`cognome` AS `cognome`,`contatti`.`nome` AS `nome`,`contatti`.`email` AS `email`,`contatti`.`genere` AS `genere` from `contatti` where (`contatti`.`genere` = 'f') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studenti_giovani`
--

/*!50001 DROP VIEW IF EXISTS `studenti_giovani`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studenti_giovani` AS select `studenti`.`cognome` AS `cognome`,`studenti`.`nome` AS `nome`,`studenti`.`email` AS `email`,`studenti`.`eta` AS `eta` from `studenti` where (`studenti`.`eta` < 30) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:08:34
