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
-- Table structure for table `amici`
--

DROP TABLE IF EXISTS `amici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amici` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cognome` varchar(50) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `genere` enum('f','m','nb') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amici`
--

LOCK TABLES `amici` WRITE;
/*!40000 ALTER TABLE `amici` DISABLE KEYS */;
INSERT INTO `amici` VALUES (1,'rossi','franco','m'),(2,'verdi','mario','m'),(3,'bianchi','paolo','m'),(4,'rossi','sara','f'),(5,'verdi','elisa','f'),(6,'bianchi','marco','m'),(7,'verdi','franca','f'),(8,'bruni','mauro','m'),(9,'rossi','osvaldo','m'),(10,'verdi','oscar','m'),(11,'bianchi','paola','f'),(12,'verdi','franca','f'),(13,'verdi','eleonora','f'),(14,'macello','enrico','m'),(15,'baggio','fabio','m'),(16,'gamba','francesco','m'),(17,'demarchi','marco','m'),(18,'verdone','franca','f'),(19,'zippo','marco','m'),(20,'galvani','giorgio','m'),(21,'porro','alex','m'),(22,'giorgio','andrea','f'),(23,'valeri','paola','f'),(24,'rossi','federico','m'),(25,'storti','irene','f');
/*!40000 ALTER TABLE `amici` ENABLE KEYS */;
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
