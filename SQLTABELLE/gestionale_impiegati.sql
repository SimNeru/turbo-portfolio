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
-- Table structure for table `impiegati`
--

DROP TABLE IF EXISTS `impiegati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impiegati` (
  `id_impiegati` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `ruolo` varchar(50) DEFAULT NULL,
  `rif_to` int DEFAULT NULL,
  `stipendio` decimal(9,2) DEFAULT NULL,
  `id_ufficio` int DEFAULT NULL,
  PRIMARY KEY (`id_impiegati`),
  KEY `fk_impiegato_ufficio` (`id_ufficio`),
  CONSTRAINT `fk_impiegato_ufficio` FOREIGN KEY (`id_ufficio`) REFERENCES `uffici` (`id_ufficio`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impiegati`
--

LOCK TABLES `impiegati` WRITE;
/*!40000 ALTER TABLE `impiegati` DISABLE KEYS */;
INSERT INTO `impiegati` VALUES (1,'Mario','Rossi','tecnico',NULL,2500.00,1),(2,'Marco','Bianchi','amministrativo',7,1600.00,2),(3,'Paolo','Verdi','amministrativo',7,1600.00,2),(4,'Enrico','Marrone','venditore',8,1300.00,3),(5,'Nicola','Testa','venditore',8,1300.00,3),(6,'Franco','Barba','tecnico',1,1500.00,1),(7,'Elena','Totti','amministrativo',NULL,2600.00,2),(8,'Paola','Capra','venditore',NULL,2300.00,3),(9,'Mauro','Barba','venditore',8,1300.00,3);
/*!40000 ALTER TABLE `impiegati` ENABLE KEYS */;
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
