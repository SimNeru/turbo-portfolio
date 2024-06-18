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
-- Table structure for table `libri`
--

DROP TABLE IF EXISTS `libri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libri` (
  `libro_id` int NOT NULL AUTO_INCREMENT,
  `titolo` varchar(255) DEFAULT NULL,
  `prezzo` decimal(6,2) DEFAULT NULL,
  `pagine` smallint unsigned DEFAULT NULL,
  `editore_id` int DEFAULT NULL,
  PRIMARY KEY (`libro_id`),
  KEY `k_titolo` (`titolo`),
  KEY `fk_libri_editori` (`editore_id`),
  CONSTRAINT `fk_libri_editori` FOREIGN KEY (`editore_id`) REFERENCES `editori` (`editore_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libri`
--

LOCK TABLES `libri` WRITE;
/*!40000 ALTER TABLE `libri` DISABLE KEYS */;
INSERT INTO `libri` VALUES (1,'L\'Alchimista',12.00,10,1),(2,'Cinquanta sfumature di grigio',10.20,560,1),(3,'Dieci piccoli indiani',10.20,208,1),(4,'Don Chisciotte della Mancha',20.40,NULL,3),(5,'Harry Potter e la Pietra Filosofale',8.50,302,4),(6,'Il Codice da Vinci',11.00,512,1),(7,'Il giovane Holden',10.20,251,3),(8,'Il leone, la strega e l\'armadio',7.65,182,1),(9,'Il libretto rosso',7.22,160,5),(10,'Il Piccolo Principe',4.25,95,1),(11,'Il Signore degli Anelli: La compagnia dell\'anello. Le due torri. Il ritorno del re',25.00,1255,10),(12,'Il sogno della camera rossa. Romanzo cinese del XVIII secolo',15.30,721,3),(13,'La colonna di fuoco',27.00,912,1),(14,'La donna della domenica',12.00,434,1),(15,'Lo Hobbit',9.35,417,10),(16,'Macerie prime',14.45,192,6),(17,'Origin',21.25,564,1),(18,'Quel che resta del giorno',12.00,276,3),(19,'Un mese con Montalbano',12.75,512,7),(20,'Una storia tra due città',9.77,600,10),(21,'Marcovaldo',10.00,120,7),(22,'IT',25.00,550,9),(23,'Gomorra',12.59,345,1),(24,'Acqua in bocca',9.90,128,14),(26,'Almost blue',10.90,194,3);
/*!40000 ALTER TABLE `libri` ENABLE KEYS */;
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
