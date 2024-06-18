-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestionale
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
-- Table structure for table `ordini_dettaglio`
--

DROP TABLE IF EXISTS `ordini_dettaglio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordini_dettaglio` (
  `id_ordine` int NOT NULL,
  `id_articolo` int NOT NULL,
  `quantita` tinyint DEFAULT NULL,
  `prezzo` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id_ordine`,`id_articolo`),
  KEY `fk_od_articoli` (`id_articolo`),
  CONSTRAINT `fk_od_articoli` FOREIGN KEY (`id_articolo`) REFERENCES `articoli` (`id_articolo`) ON UPDATE CASCADE,
  CONSTRAINT `fk_od_ordini` FOREIGN KEY (`id_ordine`) REFERENCES `ordini` (`id_ordine`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordini_dettaglio`
--

LOCK TABLES `ordini_dettaglio` WRITE;
/*!40000 ALTER TABLE `ordini_dettaglio` DISABLE KEYS */;
INSERT INTO `ordini_dettaglio` VALUES (1,2,20,38.50),(1,7,3,68.00),(2,5,1,700.00),(2,6,5,350.50),(3,2,10,38.50),(3,4,1,400.00),(4,1,3,350.00),(4,3,2,300.00),(4,7,1,68.00),(5,3,2,300.00),(5,4,3,400.00),(5,5,1,700.00),(5,7,1,68.00),(7,2,5,38.50),(7,3,2,300.00),(7,7,1,68.00),(12,1,10,350.00);
/*!40000 ALTER TABLE `ordini_dettaglio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 13:08:36
