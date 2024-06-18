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
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti` (
  `studente_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `cognome` varchar(30) NOT NULL,
  `nomeCompleto` varchar(91) GENERATED ALWAYS AS (concat(`nome`,_utf8mb4' ',`cognome`)) STORED,
  `genere` enum('f','m','nb') DEFAULT NULL,
  `indirizzo` varchar(60) DEFAULT NULL,
  `citta` varchar(40) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT 'to',
  `regione` varchar(20) DEFAULT 'piemonte',
  `email` varchar(100) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `ins` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`studente_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti`
--

LOCK TABLES `studenti` WRITE;
/*!40000 ALTER TABLE `studenti` DISABLE KEYS */;
INSERT INTO `studenti` (`studente_id`, `nome`, `cognome`, `genere`, `indirizzo`, `citta`, `provincia`, `regione`, `email`, `data_nascita`, `ins`) VALUES (1,'franco','rossi','m','via Tripoli 10',NULL,'TO','piemonte','franco.rossi@gmail.com','1978-10-01','2024-05-08 13:09:12'),(2,'mario','verdi','m','via Vicenza 17','asti','AT','piemonte','mario.verdi@gmail.com','1981-10-01','2024-04-24 16:18:57'),(3,'paolo','bianchi','m','via Volvera 47','asti','AT','piemonte','paolo.bianchi@gmail.com','1983-10-01','2024-04-24 16:18:57'),(4,'sara','rossi','f','corso Vigevano 301','cuneo','CN','piemonte','sara.rossi@gmail.com','1983-10-01','2024-04-24 16:18:57'),(5,'elisa','verdi','f','corso Francia 18','alessandria','AL','piemonte','elisa.verdi@gmail.com','1987-10-01','2024-04-24 16:18:57'),(6,'marco','bianchi','m','via Siccardi 3','novara','NO','piemonte','marcob@gmail.com','1993-10-01','2024-04-24 16:18:57'),(7,'franca','verdi','f','via MIlano 33','torino','TO','piemonte','fv@icloud.com','1993-10-01','2024-04-24 16:18:57'),(8,'mauro','bruni','m','via Roma 72','torino','TO','piemonte','mb@icloud.com','1988-10-01','2024-04-24 16:18:57'),(9,'osvaldo','rossi','m','via Firenze 5','torino','TO','piemonte','or@icloud.com','1987-01-02','2024-04-24 16:18:57'),(10,'oscar','verdi','m','lungo Dora Siena 34','torino','TO','piemonte','ov@icloud.com','1990-02-03','2024-04-24 16:18:57'),(11,'paola','bianchi','f','Corso Regina 300','torino','TO','piemonte','paolab@icloud.com','1985-03-04','2024-04-24 16:18:57'),(12,'franca','verdi','f','Corso Mortara 231','torino','TO','piemonte','francaverdi@icloud.com','1989-11-05','2024-04-24 16:18:57'),(13,'eleonora','verdi','f','via Bardonecchia 121','torino','TO','piemonte','ele@icloud.com','1989-12-06','2024-04-24 16:18:57'),(14,'enrico','macello','m','via Grosseto 125','asti','AT','piemonte','emacello@gmail.com','1983-10-01','2024-04-24 16:18:57'),(15,'fabio','baggio','m','via Dogliani 7','cuneo','CN','piemonte','fbaggio@gmail.com','1983-10-01','2024-04-24 16:18:57'),(16,'francesco','gamba','m','via Torino 1','alessandria','AL','piemonte','gamba@gmail.com','1987-10-01','2024-04-24 16:18:57'),(17,'marco','demarchi','m','via Napoli 10','novara','NO','piemonte','marcodem@gmail.com','1993-10-01','2024-04-24 16:18:57'),(18,'franca','verdone','f','via Parma 9','torino','TO','piemonte','fverdone@gmail.com','1994-09-01','2024-04-24 16:18:57'),(19,'marco','zippo','m','via Palermo 19','torino','TO','piemonte','zippo@gmail.com','1995-11-01','2024-04-24 16:18:57'),(20,'giorgio','galvani','m','via Reggio 9','cuneo','cn','piemonte','ggalv@icloud.com','1996-02-01','2024-04-24 16:18:57'),(21,'alex','porro','m','via Verona 13','asti','at','piemonte','porroale@gmail.com','1989-10-01','2024-04-24 16:18:57'),(22,'andrea','giorgio','f','via Bava 9','torino','TO','piemonte','giorgia@icloud.com','1998-02-01','2024-04-24 16:18:57'),(23,'paola','valeri','f','via Balbo 65','novara','no','piemonte','valerip@gamil.com','1992-10-09','2024-04-24 16:18:57'),(24,'federico','rossi','m','via Venezia 3','alessandria','al','piemonte','federoss@icloud.com','1994-08-08','2024-04-24 16:18:57'),(25,'irene','storti','f','corso vittorio 30','torino','TO','piemonte','stortii@gmail.com','1999-09-09','2024-04-24 16:18:57'),(26,'samuele','borsa','m','via Pio 9','torino','TO','piemonte','borsamu@gmail.com','1992-02-02','2024-04-24 16:18:57'),(27,'Luigi','Verdi','m','Via Garibaldi 2','Asti','AT','Piemonte','luigi.verdi@example.com','1999-06-03','2024-04-24 16:18:57'),(28,'Martina','Bianchi','f','Via Dante 3','Cuneo','CN','Piemonte','martina.bianchi@example.com','2001-01-23','2024-04-24 16:18:57'),(29,'Giulia','Neri','f','Via Mazzini 4','Alessandria','AL','Piemonte','giulia.neri@example.com','1996-07-15','2024-04-24 16:18:57'),(30,'Giovanni','Russo','m','Via Montegrappa 5','Novara','NO','Piemonte','giovanni.russo@example.com','1997-09-27','2024-04-24 16:18:57'),(31,'Luisa','Ferrari','f','Via Garibaldi 6','Vercelli','VC','Piemonte','luisa.ferrari@example.com','1998-04-10','2024-04-24 16:18:57'),(32,'Simone','Rossi','m','Via Roma 7','Torino','TO','Piemonte','simone.rossi@example.com','1992-11-02','2024-04-24 16:18:57'),(33,'Francesca','Verdi','f','Via Garibaldi 8','Asti','AT','Piemonte','francesca.verdi@example.com','1994-12-18','2024-04-24 16:18:57'),(34,'Alessandro','Bianchi','m','Via Dante 9','Cuneo','CN','Piemonte','alessandro.bianchi@example.com','1990-05-25','2024-04-24 16:18:57'),(35,'Sara','Neri','f','Via Mazzini 10','Alessandria','AL','Piemonte','sara.neri@example.com','1993-08-30','2024-04-24 16:18:57'),(36,'Fabio','Russo','m','Via Montegrappa 11','Novara','NO','Piemonte','fabio.russo@example.com','1989-03-12','2024-04-24 16:18:57'),(37,'Laura','Ferrari','f','Via Garibaldi 12','Vercelli','VC','Piemonte','laura.ferrari@example.com','1991-12-01','2024-04-24 16:18:57'),(38,'Antonio','Rossi','m','Via Roma 13','Torino','TO','Piemonte','antonio.rossi@example.com','1998-05-09','2024-04-24 16:18:57'),(39,'Mario','Rossi','m','Via Roma 1','Torino','TO','Piemonte','mario.rossi@esempio.com','1990-05-15','2024-04-24 16:18:57'),(40,'Giulia','Verdi','f','Via Garibaldi 2','Asti','AT','Piemonte','giulia.verdi@esempio.com','1995-06-12','2024-04-24 16:18:57'),(41,'Lorenzo','Bianchi','m','Corso Italia 3','Cuneo','CN','Piemonte','lorenzo.bianchi@esempio.com','1999-07-18','2024-04-24 16:18:57'),(42,'Alessia','Neri','f','Via Mazzini 4','Alessandria','AL','Piemonte','alessia.neri@esempio.com','1994-08-20','2024-04-24 16:18:57'),(43,'Paolo','Rizzo','m','Via Garibaldi 5','Novara','NO','Piemonte','paolo.rizzo@esempio.com','1998-09-27','2024-04-24 16:18:57'),(44,'Laura','Conti','f','Piazza Vittorio Emanuele II 6','Vercelli','VC','Piemonte','laura.conti@esempio.com','1992-10-08','2024-04-24 16:18:57'),(45,'Federico','Galli','m','Via Monte Napoleone 7','Milano','MI','Lombardia','federico.galli@esempio.com','1997-11-11','2024-04-24 16:18:57'),(46,'Martina','Ferrari','f','Via Manzoni 8','Monza','MB','Lombardia','martina.ferrari@esempio.com','1993-12-19','2024-04-24 16:18:57'),(47,'Simone','Marini','m','Via XX Settembre 9','Bergamo','BG','Lombardia','simone.marini@esempio.com','1991-01-24','2024-04-24 16:18:57'),(48,'Valentina','Riva','f','Corso Garibaldi 10','Pavia','PV','Lombardia','valentina.riva@esempio.com','1996-02-21','2024-04-24 16:18:57'),(49,'Andrea','Costa','m','Piazza del Popolo 11','Como','CO','Lombardia','andrea.costa@esempio.com','2000-03-30','2024-04-24 16:18:57'),(50,'Sara','Santoro','f','Via Sempione 12','Torino','TO','Piemonte','sara.santoro@esempio.com','1998-10-05','2024-04-24 16:18:57');
/*!40000 ALTER TABLE `studenti` ENABLE KEYS */;
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
