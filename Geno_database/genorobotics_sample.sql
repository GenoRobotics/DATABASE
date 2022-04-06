-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: genorobotics
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `Sample_ID` int NOT NULL,
  `Storing_location` varchar(100) NOT NULL,
  `Sample_sequencer` varchar(100) NOT NULL,
  `Sample_stocker` varchar(100) NOT NULL,
  `Sample_uploader` varchar(100) NOT NULL,
  `Sample_identifier` varchar(100) NOT NULL,
  `Sample_collector` varchar(100) NOT NULL,
  `Sample_extractor` varchar(100) NOT NULL,
  `Sample_amplifier` varchar(100) NOT NULL,
  `Sequencing_method_name` varchar(100) NOT NULL,
  `Amplification_method_name` varchar(100) NOT NULL,
  `Extraction_method_name` varchar(100) NOT NULL,
  `Specimen_storing_ID` int NOT NULL,
  `Sequencing_timestamp` datetime NOT NULL,
  `Amplification_timestamp` datetime NOT NULL,
  `Extraction_timestamp` datetime NOT NULL,
  `Primer_codes` varchar(100) NOT NULL,
  `Read_direction` enum('Forward','Reverse') NOT NULL COMMENT 'true = forward, false = reverse',
  `Sequence_length` int NOT NULL,
  `Marker` varchar(100) NOT NULL,
  `Primer_description` varchar(1000) NOT NULL,
  `Sequence_data` longtext NOT NULL,
  `Base_calling_file` varchar(100) NOT NULL COMMENT 'file enabling to assess the quality and correctness of the sequence',
  PRIMARY KEY (`Sample_ID`),
  UNIQUE KEY `Sample ID_UNIQUE` (`Sample_ID`),
  KEY `Specimen Storing ID FK_idx` (`Specimen_storing_ID`),
  KEY `Amplification Method ID Sample FK_idx` (`Amplification_method_name`),
  KEY `Extraction Method ID Sample FK_idx` (`Extraction_method_name`),
  KEY `Sequencing Method ID Sample FK_idx` (`Sequencing_method_name`),
  KEY `Samplue uploader email_idx` (`Sample_uploader`),
  KEY `Sample sequencer email_idx` (`Sample_sequencer`),
  KEY `Sample stocker email_idx` (`Sample_stocker`),
  KEY `Samplie identifier email_idx` (`Sample_identifier`),
  KEY `Sample collector email_idx` (`Sample_collector`),
  KEY `Sample extractor email_idx` (`Sample_extractor`),
  KEY `Sample amplifier email_idx` (`Sample_amplifier`),
  CONSTRAINT `Amplification Method ID Sample FK` FOREIGN KEY (`Amplification_method_name`) REFERENCES `amplification methods` (`Amplification_method_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Extraction Method ID Sample FK` FOREIGN KEY (`Extraction_method_name`) REFERENCES `extraction methods` (`Extraction_method_Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Sample amplifier email` FOREIGN KEY (`Sample_amplifier`) REFERENCES `person` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Sample collector email` FOREIGN KEY (`Sample_collector`) REFERENCES `person` (`Email`),
  CONSTRAINT `Sample extractor email` FOREIGN KEY (`Sample_extractor`) REFERENCES `person` (`Email`),
  CONSTRAINT `Sample sequencer email` FOREIGN KEY (`Sample_sequencer`) REFERENCES `person` (`Email`),
  CONSTRAINT `Sample stocker email` FOREIGN KEY (`Sample_stocker`) REFERENCES `person` (`Email`),
  CONSTRAINT `Sample uploader email` FOREIGN KEY (`Sample_uploader`) REFERENCES `person` (`Email`),
  CONSTRAINT `Samplie identifier email` FOREIGN KEY (`Sample_identifier`) REFERENCES `person` (`Email`),
  CONSTRAINT `Sequencing Method ID Sample FK` FOREIGN KEY (`Sequencing_method_name`) REFERENCES `sequencing methods` (`Sequencing_method_Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Specimen Storing ID FK` FOREIGN KEY (`Specimen_storing_ID`) REFERENCES `specimen` (`Specimen_storing_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (326,'Lausanne','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','Sequencing 1','Amplification 1','Extraction 1',1,'2021-01-01 12:00:00','2021-01-01 12:00:00','2021-01-01 12:00:00','a code','Forward',10000,'ITS','short desc','XXXXXXXX','C/User/...'),(539,'Lausanne','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolan.chappuis@epfl.ch','nolan.chappuis@epfl.ch','nolan.chappuis@epfl.ch','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','Sequencing 1','Amplification 1','Extraction 1',1,'2021-01-01 12:00:00','2021-01-01 12:00:00','2021-01-01 12:00:00','a code','Forward',10000,'ITS','short desc','XXXXXXXX','C/User/...'),(669,'Lausanne','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','Sequencing 1','Amplification 1','Extraction 1',1,'2021-01-01 12:00:00','2021-01-01 12:00:00','2021-01-01 12:00:00','a code','',10000,'ITS','short desc','XXXXXXXX','C/User/...'),(741,'Lausanne','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','Sequencing 1','Amplification 1','Extraction 1',1,'2021-01-01 12:00:00','2021-01-01 12:00:00','2021-01-01 12:00:00','a code','Forward',10000,'ITS','short desc','jkk.txt','C/User/...'),(34307,'Bretigny s/ Morrens','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','nolanchappuis@hotmail.com','Sequencing 1','Amplification 1','Extraction 1',1,'2021-01-01 12:00:00','2021-01-01 12:00:00','2021-01-01 12:00:00','a code','Forward',10000,'ITS','short desc','XXXXXXXX','C/User/...');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 14:50:04
