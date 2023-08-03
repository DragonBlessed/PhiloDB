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
-- Table structure for table `PhiloDB`
--

DROP TABLE IF EXISTS `PhiloDB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhiloDB` (
  `PhilosopherID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Birth_Year` int DEFAULT NULL COMMENT 'negative integers represent B.C. e.g. "470 B.C." = -470',
  `Death_Year` int DEFAULT NULL,
  `NationalityID` int DEFAULT NULL COMMENT 'Nationalties of Philosophers - linked to `Nationalities` Table',
  `BranchID` int DEFAULT NULL COMMENT 'AKA Branches of Philosophy - other table lists them',
  `Most_Famous_Book` varchar(90) DEFAULT NULL,
  `Notable_Ideas_or_Famous_Quotes` text,
  `Influences` tinytext,
  PRIMARY KEY (`PhilosopherID`),
  KEY `PhiloDB_ibfk_2` (`BranchID`),
  KEY `FK_Nationality_idx` (`NationalityID`),
  CONSTRAINT `FK_Nationality` FOREIGN KEY (`NationalityID`) REFERENCES `Nationalities` (`NationalityID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `PhiloDB_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `Branches` (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhiloDB`
--

LOCK TABLES `PhiloDB` WRITE;
/*!40000 ALTER TABLE `PhiloDB` DISABLE KEYS */;
INSERT INTO `PhiloDB` VALUES (1,'Friedrich Nietzsche',1844,1900,1,1,'Thus Spoke Zarathustra','The Ubermensch who has achieved the highest level \nof self-realization and is capable of creating his own values and ideals','Schopenhauer, Lange, Heraclitus'),(2,'Socrates',-470,-399,2,2,'None. Passed down by his students, Plato and Xenophon.','I know that I know nothing.','Pre-Socratics, Pythagoras, Protagoras, Anaxagoras, Athenian Society'),(3,'Plato',-428,-347,2,3,'The Republic','emphasizes a hierarchical structure where individuals are divided into distinct classes based on their innate abilities, with philosopher-kings ruling as the guardians and guiding the state towards the pursuit of wisdom, justice, and the common good.','Socrates, Pythagoras, Heraclitus, Parmenides, Sophists, Greek Literature, Democritus'),(4,'Aristotle',-384,-322,2,4,'Nicomachean Ethics','The ultimate purpose of human life is to attain happiness, which is defined as living a life of virtue and fulfilling one\'s potential.','Plato, Socrates, Pre-Socratics, Plato\'s Academy'),(5,'Diogenes',-412,-323,2,5,'None, teachings recorded by his followers','all the artificial growths of society were incompatible with happiness and that morality implies a return to the simplicity of nature.','Antisthenes, Cynics, Socratic'),(6,'Immanuel Kant',1724,1804,1,6,'Critique of Pure Reason','Introduced the \'Categorical Imperative\', a principle asserting an action is morally right if one can will that everyone should act in the same way.','Rationalism, Empiricism, Wolff, Newton, Hume, Leibniz, Berkeley, Rousseau'),(7,'René Descartes',1596,1650,3,7,'Meditations on First Philosophy','\'Cogito, ergo sum\' is the foundational element of Western rationalism, asserting that the act of thinking proves one\'s existence.','Aquinas, Scholasticism, Mathematics, Galileo'),(8,'David Hume',1711,1776,4,8,'A Treatise of Human Nature','Challenged causality by emphasizing our belief in cause and effect arises more from habit than from logical or empirical reasons.','Locke, Newton, Skepticism, Pyrrhonism'),(9,'John Locke',1632,1704,5,8,'An Essay Concerning Human Understanding','Promoted the idea of \'Tabula rasa\', suggesting the human mind starts as a blank slate, with knowledge arising only from experience.','Bacon, Descartes, Boyle'),(10,'Jean-Jacques Rousseau',1712,1778,6,9,'The Social Contract','Introduced the concept of the \'General will\', arguing that laws are just when they align with the collective will of the people.','Locke, Montesquieu'),(11,'Georg Wilhelm Friedrich Hegel',1770,1831,1,10,'The Phenomenology of Spirit','Highlighted the \'Hegelian dialectic\', where an idea (thesis) confronts its opposite (antithesis) and resolves in a higher state (synthesis).','Kant, Plato, Aristotle, Christian Theology'),(12,'Schopenhauer',1788,1860,1,10,'The World as Will and Representation','Pessimistic philosophy asserting that the \"will\" is the underlying driving force of human behavior.','Kant'),(13,'Lange',1828,1875,1,10,'History of Materialism','Materialism, considered as an education to abstract thought, and as an introduction to the methods of science.','Schopenhauer'),(14,'Heraclitus',535,475,2,6,'On Nature','Doctrine of Flux and Unity of Opposites: \"No man ever steps in the same river twice.\"','None'),(15,'Pre-Socratics',NULL,NULL,2,6,'None','Focus on the natural world and its processes, rather than on the gods or the human condition.','None'),(16,'Anaxagoras',510,428,2,6,'None','Introduced the concept of Nous (Mind) as an ordering force for the cosmos.','None'),(17,'Pythagoras',570,495,2,6,'None','Pythagoreanism: the belief in mathematical harmony as the nature of the physical world.','None'),(18,'Democritus',460,370,2,6,'None','Atomism: the belief that everything is composed of small, indestructible units called atoms.','Leucippus'),(19,'Confucius',551,479,NULL,NULL,'Analects','Confucianism: Emphasized personal and governmental morality, correctness of social relationships, justice, and sincerity.','None');
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

-- Dump completed on 2023-08-02 21:51:17
