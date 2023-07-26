-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: idiotDB
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `Branches`
--

DROP TABLE IF EXISTS `Branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Branches` (
  `BranchID` int NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(255) NOT NULL,
  `Description` text,
  PRIMARY KEY (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branches`
--

LOCK TABLES `Branches` WRITE;
/*!40000 ALTER TABLE `Branches` DISABLE KEYS */;
INSERT INTO `Branches` VALUES (1,'Nietzschean','Emphasizes the affirmation of life, the rejection of traditional moral values, and the pursuit of individual greatness through the will to power.'),(2,'Socratic','focused on the pursuit of wisdom and truth through critical questioning and self-examination.'),(3,'Platonism','centered on the belief in a realm of abstract Forms as the true reality, and the concept of knowledge as innate and recollected.'),(4,'Aristotelian','emphasizes the study of the natural world, empirical observation, and the pursuit of virtue through moderation and the golden mean.'),(5,'Cynicism','advocates a simple, ascetic lifestyle in accordance with nature, rejects societal conventions and values self-sufficiency and virtue.'),(6,'Metaphysics','explores the fundamental nature of reality, including the relationship between mind and matter, existence, and causality.'),(7,'Rationalism','holds reason and innate knowledge as the primary sources of truth and understanding, as opposed to sensory experience.'),(8,'Empiricism','emphasizes the importance of sensory experience and observation in gaining knowledge and understanding the world.'),(9,'Political Philosophy','investigates questions about governance, authority, justice, and the organization of societies and political systems.'),(10,'Idealism','holds that reality is fundamentally mental or spiritual in nature, and that ideas and consciousness shape the material world.');
/*!40000 ALTER TABLE `Branches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 21:00:30
