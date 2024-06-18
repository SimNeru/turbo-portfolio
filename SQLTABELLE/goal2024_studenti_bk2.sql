-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: goal2024
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
-- Table structure for table `studenti_bk2`
--

DROP TABLE IF EXISTS `studenti_bk2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti_bk2` (
  `studente_id` int NOT NULL DEFAULT '0',
  `nome` varchar(40) DEFAULT NULL,
  `cognome` varchar(30) NOT NULL,
  `genere` enum('f','m','nb') DEFAULT NULL,
  `indirizzo` varchar(60) DEFAULT NULL,
  `citta` varchar(40) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT 'to',
  `regione` varchar(20) DEFAULT 'piemonte',
  `email` varchar(100) NOT NULL,
  `data_di_nascita` date DEFAULT NULL,
  `ins` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti_bk2`
--

LOCK TABLES `studenti_bk2` WRITE;
/*!40000 ALTER TABLE `studenti_bk2` DISABLE KEYS */;
INSERT INTO `studenti_bk2` VALUES (1,NULL,'nerucci',NULL,NULL,NULL,'to','piemonte','simone.nerucci@mail.com',NULL,'2024-04-17 16:11:08'),(3,NULL,'pippo',NULL,NULL,NULL,'to','piemonte','pippo@gmail.com',NULL,'2024-04-17 16:19:36'),(4,NULL,'bruni',NULL,NULL,NULL,'to','piemonte','bruni@mail.com',NULL,'2024-04-17 16:22:40'),(5,NULL,'rossi',NULL,NULL,NULL,'to','piemonte','rossi@mail.com',NULL,'2024-04-17 16:22:40'),(6,NULL,'verdi',NULL,NULL,NULL,'to','piemonte','verdi@mail.com',NULL,'2024-04-17 16:22:40'),(8,NULL,'verdi','m',NULL,NULL,'to','piemonte','verdi2@mail.com',NULL,'2024-04-17 16:34:39'),(9,NULL,'gialli','f',NULL,NULL,'to','piemonte','gialli@mail.com',NULL,'2024-04-17 16:39:18'),(10,NULL,'arancioni','m',NULL,NULL,'to','piemonte','arancioni@mail.com',NULL,'2024-04-17 16:39:18');
/*!40000 ALTER TABLE `studenti_bk2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:08:37
