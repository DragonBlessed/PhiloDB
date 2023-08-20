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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branches`
--

LOCK TABLES `Branches` WRITE;
/*!40000 ALTER TABLE `Branches` DISABLE KEYS */;
INSERT INTO `Branches` VALUES (1,'Nietzschean','Emphasizes the affirmation of life, the rejection of traditional moral values, and the pursuit of individual greatness through the will to power.'),(2,'Socratic','focused on the pursuit of wisdom and truth through critical questioning and self-examination.'),(3,'Platonism','centered on the belief in a realm of abstract Forms as the true reality, and the concept of knowledge as innate and recollected.'),(4,'Aristotelian','emphasizes the study of the natural world, empirical observation, and the pursuit of virtue through moderation and the golden mean.'),(5,'Cynicism','advocates a simple, ascetic lifestyle in accordance with nature, rejects societal conventions and values self-sufficiency and virtue.'),(6,'Metaphysics','explores the fundamental nature of reality, including the relationship between mind and matter, existence, and causality.'),(7,'Rationalism','holds reason and innate knowledge as the primary sources of truth and understanding, as opposed to sensory experience.'),(8,'Empiricism','emphasizes the importance of sensory experience and observation in gaining knowledge and understanding the world.'),(9,'Political Philosophy','investigates questions about governance, authority, justice, and the organization of societies and political systems.'),(10,'Idealism','holds that reality is fundamentally mental or spiritual in nature, and that ideas and consciousness shape the material world.'),(11,'Confucianism','emphasizes personal and governmental morality, the correctness of social relationships, justice, and sincerity, often guiding social harmony and individual virtue in East Asian cultures.'),(12,'Scientific Philosophy','emphasizes the application of the scientific method and empirical evidence to the exploration and understanding of philosophical concepts and questions.'),(13,'Taoism','Emphasizes living in harmony with the Tao and includes various philosophical and religious traditions.'),(14,'Military Strategy','Focuses on planning and conduct of campaigns, the movement and disposition of forces, and the deception of the enemy.'),(15,'Buddhism','A path of practice and spiritual development, leading to Insight into the true nature of reality.'),(16,'Legalism','Chinese philosophy emphasizing strict adherence to law and statecraft.'),(17,'Jewish Philosophy','Combination of Jewish tradition with elements of Greek philosophy.'),(18,'Islamic Philosophy','Incorporates aspects of Islamic theology and Arab philosophy, emphasizing reason and revelation.'),(19,'Christian Philosophy','Combines elements of Christian theology with philosophical principles.'),(20,'Existentialism','A philosophical movement emphasizing individual existence, freedom, and choice, often focusing on themes of absurdity, existential angst, and the search for authentic existence.'),(21,'Phenomenology','A philosophical approach that emphasizes the study of consciousness and the objects of direct experience, exploring the phenomena of experience and how they are perceived.');
/*!40000 ALTER TABLE `Branches` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Influences`
--

LOCK TABLES `Influences` WRITE;
/*!40000 ALTER TABLE `Influences` DISABLE KEYS */;
INSERT INTO `Influences` VALUES (1,2,3),(2,3,4),(3,8,6),(4,12,1),(5,13,1),(6,14,1),(7,15,2),(8,17,2),(9,16,2),(11,17,3),(12,14,3),(13,18,3),(15,2,4),(16,15,4),(17,3,11),(18,4,11),(19,12,13),(30,26,10),(31,20,18),(32,4,22),(33,4,23),(34,19,31),(35,31,38),(36,1,39),(37,42,39),(38,1,39),(39,42,39),(40,43,40),(41,43,40),(42,44,40),(43,42,41),(44,11,42),(45,1,43),(46,44,43);
/*!40000 ALTER TABLE `Influences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nationalities`
--

DROP TABLE IF EXISTS `Nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nationalities` (
  `NationalityID` int NOT NULL AUTO_INCREMENT,
  `Nationality_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NationalityID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nationalities`
--

LOCK TABLES `Nationalities` WRITE;
/*!40000 ALTER TABLE `Nationalities` DISABLE KEYS */;
INSERT INTO `Nationalities` VALUES (1,'German'),(2,'Greek'),(3,'French'),(4,'Scottish'),(5,'English'),(6,'Swiss/French'),(7,'Austrian'),(8,'Chinese'),(9,'Italian'),(10,'Polish'),(11,'Irish'),(12,'Egyptian'),(13,'Persian'),(14,'North African'),(15,'Indian'),(16,'Russian'),(17,'Danish');
/*!40000 ALTER TABLE `Nationalities` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhiloDB`
--

LOCK TABLES `PhiloDB` WRITE;
/*!40000 ALTER TABLE `PhiloDB` DISABLE KEYS */;
INSERT INTO `PhiloDB` VALUES (1,'Friedrich Nietzsche',1844,1900,1,1,'Thus Spoke Zarathustra','The Ubermensch who has achieved the highest level \nof self-realization and is capable of creating his own values and ideals','Schopenhauer, Lange, Heraclitus'),(2,'Socrates',-470,-399,2,2,'None. Passed down by his students, Plato and Xenophon.','I know that I know nothing.','Pre-Socratics, Pythagoras, Protagoras, Anaxagoras, Athenian Society'),(3,'Plato',-428,-347,2,3,'The Republic','emphasizes a hierarchical structure where individuals are divided into distinct classes based on their innate abilities, with philosopher-kings ruling as the guardians and guiding the state towards the pursuit of wisdom, justice, and the common good.','Socrates, Pythagoras, Heraclitus, Parmenides, Sophists, Greek Literature, Democritus'),(4,'Aristotle',-384,-322,2,4,'Nicomachean Ethics','The ultimate purpose of human life is to attain happiness, which is defined as living a life of virtue and fulfilling one\'s potential.','Plato, Socrates, Pre-Socratics, Plato\'s Academy'),(5,'Diogenes',-412,-323,2,5,'None, teachings recorded by his followers','all the artificial growths of society were incompatible with happiness and that morality implies a return to the simplicity of nature.','Antisthenes, Cynics, Socratic'),(6,'Immanuel Kant',1724,1804,1,6,'Critique of Pure Reason','Introduced the \'Categorical Imperative\', a principle asserting an action is morally right if one can will that everyone should act in the same way.','Rationalism, Empiricism, Wolff, Newton, Hume, Leibniz, Berkeley, Rousseau'),(7,'René Descartes',1596,1650,3,7,'Meditations on First Philosophy','\'Cogito, ergo sum\' is the foundational element of Western rationalism, asserting that the act of thinking proves one\'s existence.','Aquinas, Scholasticism, Mathematics, Galileo'),(8,'David Hume',1711,1776,4,8,'A Treatise of Human Nature','Challenged causality by emphasizing our belief in cause and effect arises more from habit than from logical or empirical reasons.','Locke, Newton, Skepticism, Pyrrhonism'),(9,'John Locke',1632,1704,5,8,'An Essay Concerning Human Understanding','Promoted the idea of \'Tabula rasa\', suggesting the human mind starts as a blank slate, with knowledge arising only from experience.','Bacon, Descartes, Boyle'),(10,'Jean-Jacques Rousseau',1712,1778,6,9,'The Social Contract','Introduced the concept of the \'General will\', arguing that laws are just when they align with the collective will of the people.','Locke, Montesquieu'),(11,'Georg Wilhelm Friedrich Hegel',1770,1831,1,10,'The Phenomenology of Spirit','Highlighted the \'Hegelian dialectic\', where an idea (thesis) confronts its opposite (antithesis) and resolves in a higher state (synthesis).','Kant, Plato, Aristotle, Christian Theology'),(12,'Arthur Schopenhauer',1788,1860,1,10,'The World as Will and Representation','Pessimistic philosophy asserting that the \"will\" is the underlying driving force of human behavior.','Kant'),(13,'Friedrich Lange',1828,1875,1,10,'History of Materialism','Materialism, considered as an education to abstract thought, and as an introduction to the methods of science.','Schopenhauer'),(14,'Heraclitus',-535,-475,2,6,'On Nature','Doctrine of Flux and Unity of Opposites: \"No man ever steps in the same river twice.\"','None'),(15,'Pre-Socratics',NULL,NULL,2,6,'None','Focus on the natural world and its processes, rather than on the gods or the human condition.','None'),(16,'Anaxagoras',-510,-428,2,6,'None','Introduced the concept of Nous (Mind) as an ordering force for the cosmos.','None'),(17,'Pythagoras',-570,-490,2,6,'None','Pythagoreanism: the belief in mathematical harmony as the nature of the physical world.','None'),(18,'Democritus',-460,-370,2,6,'None','Atomism: the belief that everything is composed of small, indestructible units called atoms.','Leucippus'),(19,'Confucius',-551,-479,8,11,'Analects','Confucianism: Emphasized personal and governmental morality, correctness of social relationships, justice, and sincerity.','None'),(20,'Leucippus',-490,-370,2,6,'None','Atomism: the belief that everything is composed of small, indestructible units called atoms.','None'),(21,'Galileo Galilei',1564,1642,9,12,'Sidereus Nuncius','Championed heliocentrism and made significant contributions to observational astronomy.','Copernicus'),(22,'Thomas Aquinas',1225,1274,3,4,'Summa Theologica','Thomism: The synthesis of Aristotelian philosophy with Christian doctrine.','Aristotle'),(23,'Francis Bacon',1561,1626,5,8,'Novum Organum','Empiricism: Advocated the scientific method and induction.','Aristotle'),(24,'Robert Boyle',1627,1691,11,8,'The Sceptical Chymist','Boyle’s law: The relationship between the pressure and volume of a gas at constant temperature.','Bacon'),(25,'Isaac Newton',1642,1727,5,6,'Mathematical Principles of Natural Philosophy','Laws of motion and universal gravitation.','Galileo'),(26,'Montesquieu',1689,1755,3,9,'The Spirit of the Laws','Theory of separation of powers in government.','Locke'),(27,'Christian Wolff',1679,1754,1,7,'Rational Thoughts on God, the World and the Soul of Human Beings','Rationalist philosophy and systematic presentation of knowledge.','Leibniz'),(28,'Gottfried Leibniz',1646,1716,1,7,'Monadology','Monads as simple substances that make up reality.','Descartes'),(29,'George Berkeley',1685,1753,5,10,'A Treatise Concerning the Principles of Human Knowledge','Immaterialism: \"To be is to be perceived.\"','Locke'),(30,'Nicolaus Copernicus',1473,1543,10,12,'De revolutionibus orbium coelestium','Heliocentrism: Proposed that the Earth and other planets revolve around the Sun, challenging the geocentric model.','Ptolemy'),(31,'Lao Tzu',-604,-531,8,13,'Tao Te Ching','Founder of Taoism, emphasizing living in harmony with the Tao.','Zhuangzi, Confucius'),(32,'Sun Tzu',-544,-496,8,14,'The Art of War','Military strategist, emphasizing cunning and deception in warfare.',NULL),(33,'Buddha',-563,-483,15,15,NULL,'Founder of Buddhism, emphasizing the Four Noble Truths and the Eightfold Path.',NULL),(34,'Shang Yang',-390,-338,8,16,NULL,'A key figure in the development of Chinese Legalism, emphasizing law and state control.',NULL),(35,'Philo of Alexandria',-20,50,12,17,NULL,'Influential Jewish philosopher who combined Jewish religious thought with Greek philosophy.',NULL),(36,'Abū Bakr Muhammad ibn Zakariyyā al-Rāzī',865,925,13,18,NULL,'Prominent philosopher and physician, known for his works in medicine and his contributions to Islamic philosophy.',NULL),(37,'Augustine of Hippo',354,430,14,19,'Confessions','Influential Christian theologian and philosopher, known for his writings on original sin and divine grace.',NULL),(38,'Zhuangzi',-369,-286,8,13,'Zhuangzi','Prominent figure in Taoism, known for his thoughts on naturalness and spontaneity.','Lao Tzu'),(39,'Albert Camus',1913,1960,3,20,'The Stranger','Known for his concept of the Absurd and existentialist philosophy.','Nietzsche, Kierkegaard, Existentialism'),(40,'Jean-Paul Sartre',1905,1980,3,20,'Being and Nothingness','A leading figure in existentialism, known for his emphasis on existential freedom and responsibility.','Heidegger, Husserl, Phenomenology'),(41,'Fyodor Dostoevsky',1821,1881,16,20,'Crime and Punishment','Renowned for his exploration of psychological and existential themes in literature.','Christian Thought, Russian Literature, Kierkegaard'),(42,'Søren Kierkegaard',1813,1855,17,20,'Fear and Trembling','Considered the father of existentialism, known for his critiques of systematic philosophy.','Hegel, Christianity'),(43,'Martin Heidegger',1889,1976,1,21,'Being and Time','Known for his existential and phenomenological explorations of ontology.','Nietzsche, Husserl'),(44,'Edmund Husserl',1859,1938,1,21,'Ideas','Founder of phenomenology; focused on structures of consciousness.','Brentano, Descartes');
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

-- Dump completed on 2023-08-19 23:07:30
