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
-- Table structure for table `specimen`
--

DROP TABLE IF EXISTS `specimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specimen` (
  `Specimen_storing_ID` int NOT NULL,
  `Extra_infos` varchar(1000) DEFAULT NULL,
  `Measurement_type` varchar(1000) NOT NULL COMMENT 'description of the measurements (Body/Length/Wingspan)',
  `Image` varchar(1000) NOT NULL COMMENT 'url of the image',
  `Image_timestamp` date NOT NULL,
  `Image_description` varchar(1000) DEFAULT NULL,
  `Image_copyright` varchar(100) NOT NULL,
  `Host` varchar(100) NOT NULL COMMENT 'The name of the host species',
  `Sex` enum('Male','Female','Hermaphrodite') DEFAULT NULL,
  `Life_stage` enum('Adult','Immature') NOT NULL,
  `Reproduction` enum('Sexual','Asexual','Cyclic','Pathogen') NOT NULL,
  `Collection_method_name` varchar(100) NOT NULL,
  `Taxonomic_method_name` varchar(100) NOT NULL,
  `Taxonomic_timestamp` datetime NOT NULL,
  `Collection_timestamp` datetime NOT NULL,
  `Taxonomy` varchar(1000) NOT NULL,
  `Collection_area` varchar(1000) NOT NULL,
  `Collection_elevation` int NOT NULL,
  `Collection_GPS` point NOT NULL,
  PRIMARY KEY (`Specimen_storing_ID`),
  UNIQUE KEY `Specimen Storing ID_UNIQUE` (`Specimen_storing_ID`),
  KEY `Taxonomic Method Name Specimen FK_idx` (`Taxonomic_method_name`),
  KEY `Collection Method Name Specimen FK_idx` (`Collection_method_name`),
  CONSTRAINT `Collection Method Specimen FK` FOREIGN KEY (`Collection_method_name`) REFERENCES `collection methods` (`Collection_method_Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Taxonomic Method Specimen FK` FOREIGN KEY (`Taxonomic_method_name`) REFERENCES `taxonomic methods` (`Taxonomic_method_Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimen`
--

LOCK TABLES `specimen` WRITE;
/*!40000 ALTER TABLE `specimen` DISABLE KEYS */;
INSERT INTO `specimen` VALUES (1,'extra infos','taille de 10 cm','http://...','2021-01-01','small desc','google','pigeon','Male','Adult','Sexual','Collection 1','Taxonomic 1','2021-01-01 12:00:00','2021-01-01 12:00:00','Domain; Kingdom; Phylum; Class; Order; Family; Genus; Species','Continent/Ocean; Country; State/Province; Region; Sector',200,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@'),(3,'extra infos','taille de 10 cm','http://...','2021-01-01','small desc','google','pigeon','Male','Adult','Sexual','Collection 1','Taxonomic 1','2021-01-01 12:00:00','2021-01-01 12:00:00','Domain; Kingdom; Phylum; Class; Order; Family; Genus; Species','Continent/Ocean; Country; State/Province; Region; Sector',200,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@'),(237,'Some infos','Length 10cm','http://...','2021-01-01','It\'s beautiful','google','Pigeon','Female','Immature','Asexual','Collection 1','Taxonomic 1','2021-01-01 12:00:00','2021-01-01 12:00:00','Domain; Kingdom; Phylum; Class; Order; Family; Genus; Species','Europe; Switzerland; Vaud; Lausanne; Beaulieu',700,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@'),(496,'Some infos','Length 10cm','http://...','2021-01-01','It\'s beautiful','google','Pigeon','Male','Adult','Sexual','Collection 1','Taxonomic 1','2021-01-01 12:00:00','2021-01-01 12:00:00','Domain; Kingdom; Phylum; Class; Order; Family; Genus; Species','Europe; Switzerland; Vaud; Lausanne; Beaulieu',700,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@'),(44307,'Some infos','Length 10cm','http://...','2021-01-01','It\'s beautiful','google','Pigeon','Male','Adult','Sexual','Collection 1','Taxonomic 1','2021-01-01 12:00:00','2021-01-01 12:00:00','Domain; Kingdom; Phylum; Class; Order; Family; Genus; Species','Europe; Switzerland; Vaud; Lausanne; Beaulieu',700,_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0I@\0\0\0\0\0\0I@');
/*!40000 ALTER TABLE `specimen` ENABLE KEYS */;
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
