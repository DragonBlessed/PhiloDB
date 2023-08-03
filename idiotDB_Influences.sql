-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: idiotDB
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.4

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
-- Table structure for table `Influences`
--

DROP TABLE IF EXISTS `Influences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Influences` (
  `InfluenceID` int NOT NULL AUTO_INCREMENT,
  `InfluencerID` int NOT NULL,
  `InfluenceeID` int NOT NULL,
  PRIMARY KEY (`InfluenceID`),
  KEY `InfluencerID` (`InfluencerID`),
  KEY `InfluenceeID` (`InfluenceeID`),
  CONSTRAINT `Influences_ibfk_1` FOREIGN KEY (`InfluencerID`) REFERENCES `PhiloDB` (`PhilosopherID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Influences_ibfk_2` FOREIGN KEY (`InfluenceeID`) REFERENCES `PhiloDB` (`PhilosopherID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Influences`
--

LOCK TABLES `Influences` WRITE;
/*!40000 ALTER TABLE `Influences` DISABLE KEYS */;
INSERT INTO `Influences` VALUES (1,2,3),(2,3,4),(3,8,6),(4,12,1),(5,13,1),(6,14,1),(7,15,2),(8,17,2),(9,16,2),(11,17,3),(12,14,3),(13,18,3),(15,2,4),(16,15,4),(17,3,11),(18,4,11),(19,12,13);
/*!40000 ALTER TABLE `Influences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 21:51:16
