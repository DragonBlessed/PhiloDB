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
-- Table structure for table `PhiloDB`
--

DROP TABLE IF EXISTS `PhiloDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhiloDB` (
  `PhilosopherID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Birth Year` varchar(45) DEFAULT NULL,
  `Branch of Philosophy` varchar(45) DEFAULT NULL,
  `Most Famous Book` tinytext,
  `Notable Ideas or Famous Quotes` longtext,
  PRIMARY KEY (`PhilosopherID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhiloDB`
--

LOCK TABLES `PhiloDB` WRITE;
/*!40000 ALTER TABLE `PhiloDB` DISABLE KEYS */;
INSERT INTO `PhiloDB` VALUES (1,'Friedrich Nietzsche','1844','Nietzschean','Thus Spoke Zarathustra (1892)','The Ubermensch who has achieved the highest level \nof self-realization and is capable of creating his own values and ideals'),(2,'Socrates','470 BC','Socratic','None. Passed down by his students, Plato and Xenophon.','I know that I know nothing.'),(3,'Plato','428 BC','Platonism','The Republic','emphasizes a hierarchical structure where individuals are divided into distinct classes based on their innate abilities, with philosopher-kings ruling as the guardians and guiding the state towards the pursuit of wisdom, justice, and the common good.'),(4,'Aristotle','384 BC','Aristotelian','Nicomachean Ethics','The ultimate purpose of human life is to attain happiness, which is defined as living a life of virtue and fulfilling one\'s potential.'),(5,'Diogenes','412 BC','Cynicism','None, teachings recorded by his followers','all the artificial growths of society were incompatible with happiness and that morality implies a return to the simplicity of nature.'),(6,'Immanuel Kant','1724','Metaphysics','Critique of Pure Reason','Introduced the \'Categorical Imperative\', a principle asserting an action is morally right if one can will that everyone should act in the same way.'),(7,'René Descartes','1596','Rationalism','Meditations on First Philosophy','\'Cogito, ergo sum\' is the foundational element of Western rationalism, asserting that the act of thinking proves one\'s existence.'),(8,'David Hume','1711','Empiricism','A Treatise of Human Nature','Challenged causality by emphasizing our belief in cause and effect arises more from habit than from logical or empirical reasons.'),(9,'John Locke','1632','Empiricism','An Essay Concerning Human Understanding','Promoted the idea of \'Tabula rasa\', suggesting the human mind starts as a blank slate, with knowledge arising only from experience.'),(10,'Jean-Jacques Rousseau','1712','Political Philosophy','The Social Contract','Introduced the concept of the \'General will\', arguing that laws are just when they align with the collective will of the people.'),(11,'Georg Wilhelm Friedrich Hegel','1770','Idealism','The Phenomenology of Spirit','Highlighted the \'Hegelian dialectic\', where an idea (thesis) confronts its opposite (antithesis) and resolves in a higher state (synthesis).');
/*!40000 ALTER TABLE `PhiloDB` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23  1:39:01
