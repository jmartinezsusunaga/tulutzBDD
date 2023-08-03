-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: calendrier_tulutz
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `evenements_tulutz`
--

DROP TABLE IF EXISTS `evenements_tulutz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evenements_tulutz` (
  `id_et` int NOT NULL AUTO_INCREMENT,
  `nom_evenement_et` varchar(100) DEFAULT NULL,
  `date_et` date DEFAULT NULL,
  `type_evenement_ie` varchar(100) NOT NULL,
  `ville_evenement_ie` varchar(100) NOT NULL,
  `commentaires_materiaux_ie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_et`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evenements_tulutz`
--

LOCK TABLES `evenements_tulutz` WRITE;
/*!40000 ALTER TABLE `evenements_tulutz` DISABLE KEYS */;
/*!40000 ALTER TABLE `evenements_tulutz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membres_tulutz`
--

DROP TABLE IF EXISTS `membres_tulutz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membres_tulutz` (
  `id_mt` int NOT NULL AUTO_INCREMENT,
  `nom_mt` varchar(100) NOT NULL,
  `prenom_mt` varchar(100) NOT NULL,
  `mail_mt` varchar(255) NOT NULL,
  `telephone_mt` varchar(13) NOT NULL,
  `responsabilite_mt` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membres_tulutz`
--

LOCK TABLES `membres_tulutz` WRITE;
/*!40000 ALTER TABLE `membres_tulutz` DISABLE KEYS */;
/*!40000 ALTER TABLE `membres_tulutz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memebre_responsable_evenement`
--

DROP TABLE IF EXISTS `memebre_responsable_evenement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memebre_responsable_evenement` (
  `id_evenement_mre` int NOT NULL,
  `id_membre_mre` int NOT NULL,
  PRIMARY KEY (`id_evenement_mre`,`id_membre_mre`),
  KEY `id_membre_mre` (`id_membre_mre`),
  CONSTRAINT `memebre_responsable_evenement_ibfk_1` FOREIGN KEY (`id_evenement_mre`) REFERENCES `evenements_tulutz` (`id_et`),
  CONSTRAINT `memebre_responsable_evenement_ibfk_2` FOREIGN KEY (`id_membre_mre`) REFERENCES `membres_tulutz` (`id_mt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memebre_responsable_evenement`
--

LOCK TABLES `memebre_responsable_evenement` WRITE;
/*!40000 ALTER TABLE `memebre_responsable_evenement` DISABLE KEYS */;
/*!40000 ALTER TABLE `memebre_responsable_evenement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaire_responsable_evenement`
--

DROP TABLE IF EXISTS `partenaire_responsable_evenement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partenaire_responsable_evenement` (
  `id_evenement_pre` int NOT NULL,
  `id_partenaire_pre` int NOT NULL,
  PRIMARY KEY (`id_evenement_pre`,`id_partenaire_pre`),
  KEY `id_partenaire_pre` (`id_partenaire_pre`),
  CONSTRAINT `partenaire_responsable_evenement_ibfk_1` FOREIGN KEY (`id_evenement_pre`) REFERENCES `evenements_tulutz` (`id_et`),
  CONSTRAINT `partenaire_responsable_evenement_ibfk_2` FOREIGN KEY (`id_partenaire_pre`) REFERENCES `partenaires` (`id_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaire_responsable_evenement`
--

LOCK TABLES `partenaire_responsable_evenement` WRITE;
/*!40000 ALTER TABLE `partenaire_responsable_evenement` DISABLE KEYS */;
/*!40000 ALTER TABLE `partenaire_responsable_evenement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaires`
--

DROP TABLE IF EXISTS `partenaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partenaires` (
  `id_ip` int NOT NULL AUTO_INCREMENT,
  `nom_ip` varchar(100) NOT NULL,
  `prenom_ip` varchar(100) NOT NULL,
  `mail_ip` varchar(255) NOT NULL,
  `telephone_ip` varchar(13) NOT NULL,
  `ville_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaires`
--

LOCK TABLES `partenaires` WRITE;
/*!40000 ALTER TABLE `partenaires` DISABLE KEYS */;
/*!40000 ALTER TABLE `partenaires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-03 14:40:33
