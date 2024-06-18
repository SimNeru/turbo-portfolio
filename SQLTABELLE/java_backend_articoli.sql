-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: java_backend
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
-- Table structure for table `articoli`
--

DROP TABLE IF EXISTS `articoli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articoli` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(100) DEFAULT NULL,
  `specifiche` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articoli`
--

LOCK TABLES `articoli` WRITE;
/*!40000 ALTER TABLE `articoli` DISABLE KEYS */;
INSERT INTO `articoli` VALUES (1,'TV Samsung 32\" SMART TV','{\"marca\": \"Samsung\", \"pesoKg\": 5.12, \"uscite\": [\"HDMI\", \"SCART\", \"S/PDIF\", \"HDMI2\"], \"pollici\": 32, \"schermo\": \"LCD\", \"ingressi\": [\"ETHERNET\", \"USB\"]}'),(2,'TV Sony 32\" SMART TV','{\"marca\": \"SONY\", \"pesoKg\": 6.5, \"uscite\": \"HDMI\", \"pollici\": 32, \"schermo\": \"LED\"}'),(3,'TV Philips 55\" SMART TV','{\"marca\": \"PHILIPS\", \"pesoKg\": 9.5, \"uscite\": [\"HDMI\", \"RCA\", \"USB\", \"SCART\"], \"pollici\": 55, \"schermo\": \"LED\"}'),(4,'Canon 7d','{\"marca\": \"canon\", \"pesoKg\": \"1.5\", \"uscite\": [\"hdmi mini\", \"mini jack stereo\"], \"modello\": \"7d\", \"schermo\": \"lcd\", \"sensore\": \"CMOS\", \"rapporto\": \"3:2\", \"fullframe\": \"no\"}');
/*!40000 ALTER TABLE `articoli` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:08:35
