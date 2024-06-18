-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: libri_goal
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
-- Table structure for table `autori_libri`
--

DROP TABLE IF EXISTS `autori_libri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autori_libri` (
  `libro_id` int NOT NULL,
  `autore_id` int NOT NULL,
  PRIMARY KEY (`libro_id`,`autore_id`),
  KEY `fk_autoriLibri_autori` (`autore_id`),
  CONSTRAINT `fk_autoriLibri_autori` FOREIGN KEY (`autore_id`) REFERENCES `autori` (`autore_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_autoriLibri_libri` FOREIGN KEY (`libro_id`) REFERENCES `libri` (`libro_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autori_libri`
--

LOCK TABLES `autori_libri` WRITE;
/*!40000 ALTER TABLE `autori_libri` DISABLE KEYS */;
INSERT INTO `autori_libri` VALUES (11,1),(15,1),(6,2),(17,2),(1,3),(7,4),(3,5),(5,6),(12,7),(2,8),(10,9),(20,10),(4,11),(8,12),(9,13),(16,14),(19,15),(24,15),(13,16),(18,17),(14,18),(14,19),(21,20),(22,21),(23,23),(24,24),(26,24);
/*!40000 ALTER TABLE `autori_libri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:08:38
