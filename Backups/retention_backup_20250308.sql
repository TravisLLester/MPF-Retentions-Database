-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: retentions
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `retentions`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `retentions` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `retentions`;

--
-- Table structure for table `commanders`
--

DROP TABLE IF EXISTS `commanders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commanders` (
  `Commander_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rank` varchar(10) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`Commander_ID`),
  KEY `idx_commander_last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanders`
--

LOCK TABLES `commanders` WRITE;
/*!40000 ALTER TABLE `commanders` DISABLE KEYS */;
INSERT INTO `commanders` VALUES (1,'Gen','Avenforth','Alvian','alvian.avenforth@us.af.mil','(505) 846-7165'),(2,'Gen','Bexley','Brexley','brexley.bexley@us.af.mil','(505) 846-4636'),(3,'Gen','Corvane','Cindorin','cindorin.corvane@us.af.mil','(505) 846-1795'),(4,'Gen','Draycott','Draxen','draxen.draycott@us.af.mil','(505) 853-2153'),(5,'Gen','Eldermoor','Elviera','elviera.eldermoor@us.af.mil','(505) 846-5938'),(6,'Gen','Fenwick','Faelric','faelric.fenwick@us.af.mil','(505) 853-9870'),(7,'Col','Grimshaw','Grendell','grendell.grimshaw@us.af.mil','(505) 846-4734'),(8,'Col','Hathersage','Havoris','havoris.hathersage@us.af.mil','(505) 846-9418'),(9,'Col','Iverton','Iserra','iserra.iverton@us.af.mil','(505) 853-9994'),(10,'Col','Jorrelson','Jorvyn','jorvyn.jorrelson@us.af.mil','(505) 846-3116'),(11,'Col','Kendrith','Kaelith','kaelith.kendrith@us.af.mil','(505) 846-3767'),(12,'Col','Luthmere','Lioran','lioran.luthmere@us.af.mil','(505) 846-3966'),(13,'Col','Merrowind','Myndell','myndell.merrowind@us.af.mil','(505) 846-7029'),(14,'Col','Norcott','Norisca','norisca.norcott@us.af.mil','(505) 853-1489'),(15,'Col','Ormsley','Orynth','orynth.ormsley@us.af.mil','(505) 853-5457'),(16,'Col','Penhaven','Pyrran','pyrran.penhaven@us.af.mil','(505) 846-6993'),(17,'Col','Quorlan','Quenara','quenara.quorlan@us.af.mil','(505) 846-9213'),(18,'Col','Rathmoor','Rhyden','rhyden.rathmoor@us.af.mil','(505) 846-3887'),(19,'Col','Sablehurst','Sylvannis','sylvannis.sablehurst@us.af.mil','(505) 853-9650'),(20,'Col','Thornvale','Thalindra','thalindra.thornvale@us.af.mil','(505) 846-8335'),(21,'Col','Ulverton','Uvenna','uvenna.ulverton@us.af.mil','(505) 853-2989'),(22,'Col','Vexleigh','Vexor','vexor.vexleigh@us.af.mil','(505) 846-4358'),(23,'Col','Wendmere','Wynndell','wynndell.wendmere@us.af.mil','(505) 846-5320'),(24,'Col','Xandrell','Xyrel','xyrel.xandrell@us.af.mil','(505) 853-5051'),(25,'Col','Yarroway','Yalric','yalric.yarroway@us.af.mil','(505) 846-7972'),(26,'Lt Col','Zetheridge','Zephira','zephira.zetheridge@us.af.mil','(505) 853-6469'),(27,'Capt','Ashthorn','Arlian','arlian.ashthorn@us.af.mil','(505) 846-6361'),(28,'Maj','Briscombe','Braxen','braxen.briscombe@us.af.mil','(505) 846-8459'),(29,'Lt Col','Cindrell','Cassira','cassira.cindrell@us.af.mil','(505) 853-2083'),(30,'Capt','Draxley','Drelian','drelian.draxley@us.af.mil','(505) 853-7836'),(31,'Maj','Erelstone','Everis','everis.erelstone@us.af.mil','(505) 846-7388'),(32,'Lt Col','Foxworth','Fendric','fendric.foxworth@us.af.mil','(505) 853-9774'),(33,'Capt','Greymount','Gaviel','gaviel.greymount@us.af.mil','(505) 846-1172'),(34,'Maj','Holloway','Hestara','hestara.holloway@us.af.mil','(505) 853-8448'),(35,'Capt','Ingramson','Ilthian','ilthian.ingramson@us.af.mil','(505) 853-5292'),(36,'Lt Col','Jexford','Jexica','jexica.jexford@us.af.mil','(505) 853-9442'),(37,'Maj','Kilbourne','Korran','korran.kilbourne@us.af.mil','(505) 853-2012'),(38,'Capt','Loxmere','Lysira','lysira.loxmere@us.af.mil','(505) 853-3759'),(39,'Lt Col','Montclair','Morvain','morvain.montclair@us.af.mil','(505) 853-7874'),(40,'Maj','Nightwell','Naelis','naelis.nightwell@us.af.mil','(505) 846-9053'),(41,'Capt','Oakmere','Othren','othren.oakmere@us.af.mil','(505) 853-2809'),(42,'Lt Col','Pryndell','Phaelis','phaelis.pryndell@us.af.mil','(505) 846-8343'),(43,'Maj','Quellborn','Quillan','quillan.quellborn@us.af.mil','(505) 853-6584'),(44,'Lt Col','Rowntree','Renlor','renlor.rowntree@us.af.mil','(505) 853-1462'),(45,'Capt','Stormvale','Solveth','solveth.stormvale@us.af.mil','(505) 853-3611'),(46,'Maj','Temberton','Torwyn','torwyn.temberton@us.af.mil','(505) 846-5760'),(47,'Lt Col','Underleigh','Urelia','urelia.underleigh@us.af.mil','(505) 853-4227'),(48,'Capt','Varnholt','Vaylen','vaylen.varnholt@us.af.mil','(505) 853-1411'),(49,'Maj','Whittacre','Wrenna','wrenna.whittacre@us.af.mil','(505) 846-4703'),(50,'Lt Col','Xelridge','Xandor','xandor.xelridge@us.af.mil','(505) 846-3602'),(51,'Capt','Yardleigh','Ylissa','ylissa.yardleigh@us.af.mil','(505) 853-7226'),(52,'Maj','Zephrain','Zorric','zorric.zephrain@us.af.mil','(505) 846-1979'),(53,'Lt Col','Arkwright','Aelric','aelric.arkwright@us.af.mil','(505) 853-5169'),(54,'Capt','Bellhaven','Brielleth','brielleth.bellhaven@us.af.mil','(505) 853-8522'),(55,'Maj','Crestmoore','Caelus','caelus.crestmoore@us.af.mil','(505) 853-6950'),(56,'Lt Col','Dovenshire','Dravion','dravion.dovenshire@us.af.mil','(505) 853-2986'),(57,'Capt','Elverston','Eldira','eldira.elverston@us.af.mil','(505) 846-6696'),(58,'Maj','Fairchild','Fenrin','fenrin.fairchild@us.af.mil','(505) 853-2764'),(59,'Lt Col','Glanmore','Griselda','griselda.glanmore@us.af.mil','(505) 846-9303'),(60,'Capt','Haldridge','Halric','halric.haldridge@us.af.mil','(505) 853-6873'),(61,'Maj','Islington','Ivaris','ivaris.islington@us.af.mil','(505) 846-4469'),(62,'Capt','Jorhaven','Jorren','jorren.jorhaven@us.af.mil','(505) 853-6953'),(63,'Lt Col','Kenwick','Kethira','kethira.kenwick@us.af.mil','(505) 846-5062'),(64,'Maj','Smith','James','james.smith@us.af.mil','(505) 846-2265'),(65,'Lt Col ','Johnson','Olivia','olivia.johnson@us.af.mil','(505) 853-4655'),(66,'Capt','Brown','Liam','liam.brown@us.af.mil','(505) 846-5829'),(67,'Maj','Davis','Emma','emma.davis@us.af.mil','(505) 846-1343'),(68,'Lt Col','Wilson','Noah','noah.wilson@us.af.mil','(505) 846-2837'),(69,'Lt Col','Tagoai','Pelenato','pelenato.tagoai.2@us.af.mil','505-846-1188');
/*!40000 ALTER TABLE `commanders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_status_history`
--

DROP TABLE IF EXISTS `contract_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_status_history` (
  `status_ID` int(11) NOT NULL AUTO_INCREMENT,
  `contract_ID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`status_ID`),
  KEY `fk_ContractHistory` (`contract_ID`),
  KEY `fk_ContractStatus` (`status`),
  CONSTRAINT `fk_ContractHistory` FOREIGN KEY (`contract_ID`) REFERENCES `contracts` (`Contract_ID`),
  CONSTRAINT `fk_ContractStatus` FOREIGN KEY (`status`) REFERENCES `contractstatus` (`Status_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_status_history`
--

LOCK TABLES `contract_status_history` WRITE;
/*!40000 ALTER TABLE `contract_status_history` DISABLE KEYS */;
INSERT INTO `contract_status_history` VALUES (1,1,8,'2025-03-08 18:24:34'),(2,2,1,'2025-02-16 05:46:46'),(3,3,1,'2025-02-16 05:46:46'),(4,4,1,'2025-02-16 05:46:46'),(5,5,1,'2025-02-16 05:46:46'),(6,6,1,'2025-02-16 05:46:46'),(7,7,1,'2025-02-16 05:46:46'),(8,8,1,'2025-02-16 05:46:46'),(9,9,1,'2025-02-16 05:46:46'),(10,10,1,'2025-02-16 05:46:46'),(11,11,1,'2025-02-16 05:46:46'),(12,12,1,'2025-02-16 05:46:46'),(13,13,1,'2025-02-16 05:46:46'),(14,14,1,'2025-02-16 05:46:46'),(15,15,1,'2025-02-16 05:46:47'),(16,16,1,'2025-02-16 05:46:47'),(17,17,1,'2025-02-16 05:46:47'),(18,18,1,'2025-02-16 05:46:47'),(19,19,1,'2025-02-16 05:46:47'),(20,20,1,'2025-02-16 05:46:47'),(21,21,1,'2025-02-16 05:46:47'),(22,22,1,'2025-02-16 05:46:47'),(23,23,1,'2025-02-16 05:46:47'),(24,24,1,'2025-02-16 05:46:47'),(25,25,1,'2025-02-16 05:46:47'),(26,26,1,'2025-02-16 05:46:47'),(27,27,1,'2025-02-16 05:46:47'),(28,28,1,'2025-02-16 05:46:47'),(29,29,1,'2025-02-16 05:46:47'),(30,30,1,'2025-02-16 05:46:47'),(31,31,1,'2025-02-16 05:46:47'),(32,32,1,'2025-02-16 05:46:47'),(33,33,1,'2025-02-16 05:46:47'),(34,34,1,'2025-02-16 05:46:47'),(35,35,1,'2025-02-16 05:46:47'),(36,36,1,'2025-02-16 05:46:47'),(37,37,1,'2025-02-16 05:46:47'),(38,38,1,'2025-02-16 05:46:47'),(39,39,1,'2025-02-16 05:46:47'),(40,40,1,'2025-02-16 05:46:47'),(41,41,1,'2025-02-16 05:46:47'),(42,42,1,'2025-02-16 05:46:47'),(43,43,1,'2025-02-16 05:46:47'),(44,44,1,'2025-02-16 05:46:47'),(45,45,1,'2025-02-16 05:46:48'),(46,46,1,'2025-02-16 05:46:48'),(47,47,1,'2025-02-16 05:46:48'),(48,48,1,'2025-02-16 05:46:48'),(49,49,1,'2025-02-16 05:46:48'),(50,50,1,'2025-02-16 05:46:48'),(51,51,1,'2025-02-16 05:46:48'),(52,52,1,'2025-02-16 05:46:48'),(53,53,1,'2025-02-16 05:46:48'),(54,54,1,'2025-02-16 05:46:48'),(55,55,1,'2025-02-16 05:46:48'),(56,56,1,'2025-02-16 05:46:48'),(57,57,1,'2025-02-16 05:46:48'),(58,58,1,'2025-02-16 05:46:48'),(59,59,1,'2025-02-16 05:46:48'),(60,60,1,'2025-02-16 05:46:48'),(61,61,1,'2025-02-16 05:46:48'),(62,62,1,'2025-02-16 05:46:48'),(63,63,1,'2025-02-16 05:46:48'),(64,64,1,'2025-02-16 05:46:48'),(65,65,1,'2025-02-16 05:46:48'),(66,66,1,'2025-02-16 05:46:48'),(67,67,1,'2025-02-16 05:46:48'),(68,68,1,'2025-02-16 05:46:48'),(69,69,1,'2025-02-16 05:46:48'),(70,70,1,'2025-02-16 05:46:48'),(71,71,1,'2025-02-16 05:46:48'),(72,72,1,'2025-02-16 05:46:48'),(73,73,1,'2025-02-16 05:46:48'),(74,74,1,'2025-02-16 05:46:48'),(75,75,1,'2025-02-16 05:46:48'),(76,76,1,'2025-02-16 05:46:49'),(77,77,1,'2025-02-16 05:46:49'),(78,78,1,'2025-02-16 05:46:49'),(79,79,1,'2025-02-16 05:46:49'),(80,80,1,'2025-02-16 05:46:49'),(81,81,1,'2025-02-16 05:46:49'),(82,82,1,'2025-02-16 05:46:49'),(83,83,1,'2025-02-16 05:46:49'),(84,84,1,'2025-02-16 05:46:49'),(85,85,1,'2025-02-16 05:46:49'),(86,86,1,'2025-02-16 05:46:49'),(87,87,1,'2025-02-16 05:46:49'),(88,88,1,'2025-02-16 05:46:49'),(89,89,1,'2025-02-16 05:46:49'),(90,90,1,'2025-02-16 05:46:49'),(91,91,1,'2025-02-16 05:46:49'),(92,92,1,'2025-02-16 05:46:49'),(93,93,1,'2025-02-16 05:46:49'),(94,94,1,'2025-02-16 05:46:49'),(95,95,1,'2025-02-16 05:46:49'),(96,96,1,'2025-02-16 05:46:49'),(97,97,1,'2025-02-16 05:46:50'),(98,98,1,'2025-02-16 05:46:50'),(99,99,1,'2025-02-16 05:46:50'),(100,100,1,'2025-02-16 05:46:50'),(102,1,8,'2025-03-08 18:24:34');
/*!40000 ALTER TABLE `contract_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts` (
  `Contract_ID` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `contract_type` int(11) NOT NULL,
  PRIMARY KEY (`Contract_ID`),
  KEY `idx_contracttypes` (`contract_type`),
  CONSTRAINT `fk_ContractTypes` FOREIGN KEY (`contract_type`) REFERENCES `contracttypes` (`ContractType_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (1,'2025-02-15 22:43:36','2025-03-02 10:01:08',1),(2,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(3,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(4,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(5,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(6,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(7,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(8,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(9,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(10,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(11,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(12,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(13,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(14,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(15,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(16,'2025-02-15 22:43:37','2025-02-15 22:43:37',1),(17,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(18,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(19,'2025-02-15 22:43:37','2025-02-15 22:43:37',2),(20,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(21,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(22,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(23,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(24,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(25,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(26,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(27,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(28,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(29,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(30,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(31,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(32,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(33,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(34,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(35,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(36,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(37,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(38,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(39,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(40,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(41,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(42,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(43,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(44,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(45,'2025-02-15 22:43:38','2025-02-15 22:43:38',2),(46,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(47,'2025-02-15 22:43:38','2025-02-15 22:43:38',1),(48,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(49,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(50,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(51,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(52,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(53,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(54,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(55,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(56,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(57,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(58,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(59,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(60,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(61,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(62,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(63,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(64,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(65,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(66,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(67,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(68,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(69,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(70,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(71,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(72,'2025-02-15 22:43:39','2025-02-15 22:43:39',1),(73,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(74,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(75,'2025-02-15 22:43:39','2025-02-15 22:43:39',2),(76,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(77,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(78,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(79,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(80,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(81,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(82,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(83,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(84,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(85,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(86,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(87,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(88,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(89,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(90,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(91,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(92,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(93,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(94,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(95,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(96,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(97,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(98,'2025-02-15 22:43:40','2025-02-15 22:43:40',1),(99,'2025-02-15 22:43:40','2025-02-15 22:43:40',2),(100,'2025-02-15 22:43:40','2025-02-15 22:43:40',2);
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractstatus`
--

DROP TABLE IF EXISTS `contractstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contractstatus` (
  `Status_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Status_ID`),
  UNIQUE KEY `AK_1` (`Status_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractstatus`
--

LOCK TABLES `contractstatus` WRITE;
/*!40000 ALTER TABLE `contractstatus` DISABLE KEYS */;
INSERT INTO `contractstatus` VALUES (5,'AF1411 Received'),(4,'AF1411 to Member'),(10,'AF901 Received'),(9,'AF901 to Member'),(8,'Completed'),(12,'DD4 Received'),(11,'DD4 to Member'),(2,'Drafted'),(3,'NCO Review Completed'),(1,'Pending'),(7,'Pending DJMS 3-day Review'),(6,'PRDA/MILPDS/DJMS Updated');
/*!40000 ALTER TABLE `contractstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracttypes`
--

DROP TABLE IF EXISTS `contracttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracttypes` (
  `ContractType_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Contract_Type` varchar(20) NOT NULL,
  PRIMARY KEY (`ContractType_ID`),
  UNIQUE KEY `AK_0` (`Contract_Type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracttypes`
--

LOCK TABLES `contracttypes` WRITE;
/*!40000 ALTER TABLE `contracttypes` DISABLE KEYS */;
INSERT INTO `contracttypes` VALUES (2,'Extension'),(1,'Reenlistment');
/*!40000 ALTER TABLE `contracttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_information`
--

DROP TABLE IF EXISTS `customer_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_information` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `Squadron_ID` int(11) NOT NULL,
  `Member_ID` int(11) NOT NULL,
  `Contract_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `Customer_ID` (`Customer_ID`),
  KEY `fk_CustomerMembers` (`Member_ID`),
  KEY `inx_squadron_ID` (`Squadron_ID`),
  KEY `idx_contracts` (`Contract_ID`),
  KEY `idx_last_name` (`last_name`),
  CONSTRAINT `fk_CustomerContracts` FOREIGN KEY (`Contract_ID`) REFERENCES `contracts` (`Contract_ID`),
  CONSTRAINT `fk_CustomerMembers` FOREIGN KEY (`Member_ID`) REFERENCES `team_members` (`Member_ID`),
  CONSTRAINT `fk_CustomerSquadrons` FOREIGN KEY (`Squadron_ID`) REFERENCES `squadrons` (`Squadron_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_information`
--

LOCK TABLES `customer_information` WRITE;
/*!40000 ALTER TABLE `customer_information` DISABLE KEYS */;
INSERT INTO `customer_information` VALUES (1,'Anderson','Abigail','abigail.anderson@us.af.mil','(202) 456-7890',37,14,1),(2,'Bennett','Adam','adam.bennett@us.af.mil','(415) 234-5678',25,10,2),(3,'Carlson','Ava','ava.carlson@us.af.mil','(212) 345-6789',30,14,3),(4,'Davidson','Benjamin','benjamin.davidson@us.af.mil','(305) 876-5432',10,2,4),(5,'Edwards','Bianca','bianca.edwards@us.af.mil','(310) 654-3210',36,14,5),(6,'Foster','Caleb','caleb.foster@us.af.mil','(404) 987-6543',19,4,6),(7,'Grant','Chloe','chloe.grant@us.af.mil','(206) 123-4567',23,6,7),(8,'Hayes','Charles','charles.hayes@us.af.mil','(312) 890-1234',24,13,8),(9,'Irwin','Charlotte','charlotte.irwin@us.af.mil','(213) 567-8901',34,6,9),(10,'Jackson','Daniel','daniel.jackson@us.af.mil','(415) 901-2345',1,11,10),(11,'King','Daisy','daisy.king@us.af.mil','(202) 678-9012',39,20,11),(12,'Lewis','Elijah','elijah.lewis@us.af.mil','(212) 345-6789',32,12,12),(13,'Mitchell','Emily','emily.mitchell@us.af.mil','(305) 123-4567',7,13,13),(14,'Norris','Ethan','ethan.norris@us.af.mil','(310) 876-5432',8,12,14),(15,'Owens','Ella','ella.owens@us.af.mil','(404) 654-3210',15,17,15),(16,'Parker','Felix','felix.parker@us.af.mil','(206) 987-6543',25,10,16),(17,'Quinn','Fiona','fiona.quinn@us.af.mil','(312) 123-4567',27,4,17),(18,'Reed','Gabriel','gabriel.reed@us.af.mil','(213) 890-1234',42,9,18),(19,'Stone','Grace','grace.stone@us.af.mil','(415) 567-8901',17,3,19),(20,'Taylor','Henry','henry.taylor@us.af.mil','(202) 901-2345',36,3,20),(21,'Underwood','Hannah','hannah.underwood@us.af.mil','(212) 678-9012',11,4,21),(22,'Vance','Isaac','isaac.vance@us.af.mil','(305) 345-6789',11,5,22),(23,'Wallace','Ivy','ivy.wallace@us.af.mil','(310) 123-4567',6,16,23),(24,'Xavier','Jack','jack.xavier@us.af.mil','(404) 876-5432',7,8,24),(25,'Young','Jasmine','jasmine.young@us.af.mil','(206) 654-3210',1,10,25),(26,'Zimmerman','James','james.zimmerman@us.af.mil','(312) 987-6543',39,7,26),(27,'Adams','Julia','julia.adams@us.af.mil','(213) 123-4567',11,12,27),(28,'Bailey','Kevin','kevin.bailey@us.af.mil','(415) 890-1234',28,12,28),(29,'Campbell','Kylie','kylie.campbell@us.af.mil','(202) 567-8901',27,17,29),(30,'Doyle','Liam','liam.doyle@us.af.mil','(212) 901-2345',25,9,30),(31,'Evans','Lily','lily.evans@us.af.mil','(305) 678-9012',11,5,31),(32,'Foster','Leo','leo.foster@us.af.mil','(310) 345-6789',20,12,32),(33,'Grant','Lucy','lucy.grant@us.af.mil','(404) 123-4567',10,1,33),(34,'Harris','Mason','mason.harris@us.af.mil','(206) 876-5432',42,5,34),(35,'Iverson','Mia','mia.iverson@us.af.mil','(312) 654-3210',18,20,35),(36,'Johnson','Michael','michael.johnson@us.af.mil','(213) 987-6543',39,14,36),(37,'Keller','Madison','madison.keller@us.af.mil','(415) 123-4567',23,6,37),(38,'Lawrence','Nathan','nathan.lawrence@us.af.mil','(202) 890-1234',34,9,38),(39,'Moore','Nora','nora.moore@us.af.mil','(212) 567-8901',12,12,39),(40,'Nichols','Noah','noah.nichols@us.af.mil','(305) 901-2345',29,1,40),(41,'ONeil','Natalie','natalie.oneil@us.af.mil','(310) 678-9012',7,15,41),(42,'Peterson','Oliver','oliver.peterson@us.af.mil','(404) 345-6789',43,11,42),(43,'Robinson','Olivia','olivia.robinson@us.af.mil','(206) 123-4567',24,15,43),(44,'Scott','Owen','owen.scott@us.af.mil','(312) 876-5432',24,8,44),(45,'Turner','Paige','paige.turner@us.af.mil','(213) 654-3210',33,10,45),(46,'Vaughn','Peter','peter.vaughn@us.af.mil','(415) 987-6543',32,11,46),(47,'Warner','Piper','piper.warner@us.af.mil','(202) 123-4567',21,7,47),(48,'Young','Quinton','quinton.young@us.af.mil','(212) 890-1234',14,9,48),(49,'Abbott','Quinn','quinn.abbott@us.af.mil','(305) 567-8901',41,20,49),(50,'Barker','Ryan','ryan.barker@us.af.mil','(310) 901-2345',42,5,50),(51,'Clark','Rachel','rachel.clark@us.af.mil','(404) 678-9012',10,9,51),(52,'Dawson','Samuel','samuel.dawson@us.af.mil','(206) 345-6789',28,7,52),(53,'Elliot','Sophia','sophia.elliot@us.af.mil','(312) 123-4567',33,6,53),(54,'Frank','Steven','steven.frank@us.af.mil','(213) 876-5432',7,17,54),(55,'Gibson','Stella','stella.gibson@us.af.mil','(415) 654-3210',42,12,55),(56,'Hall','Thomas','thomas.hall@us.af.mil','(202) 987-6543',43,20,56),(57,'Ingram','Taylor','taylor.ingram@us.af.mil','(212) 123-4567',5,16,57),(58,'Jackson','Theodore','theodore.jackson@us.af.mil','(305) 890-1234',17,17,58),(59,'Knight','Tessa','tessa.knight@us.af.mil','(310) 567-8901',11,13,59),(60,'Lee','Uriel','uriel.lee@us.af.mil','(404) 901-2345',5,11,60),(61,'Murphy','Ursula','ursula.murphy@us.af.mil','(206) 678-9012',30,11,61),(62,'Newman','Victor','victor.newman@us.af.mil','(312) 345-6789',1,2,62),(63,'OConner','Vanessa','vanessa.OConner@us.af.mil','(213) 123-4567',3,20,63),(64,'Phillips','William','william.phillips@us.af.mil','(415) 876-5432',27,8,64),(65,'Reynolds','Wendy','wendy.reynolds@us.af.mil','(202) 654-3210',3,15,65),(66,'Scott','Xavier','xavier.scott@us.af.mil','(212) 987-6543',6,12,66),(67,'Tanner','Zoe','zoe.tanner@us.af.mil','(305) 123-4567',6,4,67),(68,'Upton','Zachary','zachary.upton@us.af.mil','(310) 890-1234',36,11,68),(69,'Vincent','Zoe','zoe.vincent@us.af.mil','(404) 567-8901',16,2,69),(70,'Wallace','Aiden','aiden.wallace@us.af.mil','(206) 901-2345',21,12,70),(71,'Warren','Alexis','alexis.warren@us.af.mil','(312) 678-9012',37,17,71),(72,'Yates','Andy','andy.yates@us.af.mil','(213) 345-6789',36,2,72),(73,'Zamora','Audrey','audrey.zamora@us.af.mil','(415) 123-4567',42,12,73),(74,'Allen','Austin','austin.allen@us.af.mil','(202) 876-5432',10,13,74),(75,'Bell','Bella','bella.bell@us.af.mil','(212) 654-3210',31,2,75),(76,'Carter','Brian','brian.carter@us.af.mil','(305) 987-6543',35,14,76),(77,'Donovan','Brooke','brooke.donovan@us.af.mil','(310) 123-4567',20,16,77),(78,'Evans','Carter','carter.evans@us.af.mil','(404) 890-1234',33,4,78),(79,'Fisher','Clara','clara.fisher@us.af.mil','(206) 567-8901',37,19,79),(80,'Gomez','Dean','dean.gomez@us.af.mil','(312) 901-2345',30,20,80),(81,'Hughes','Delilah','delilah.hughes@us.af.mil','(213) 678-9012',28,17,81),(82,'Irving','Dustin','dustin.irving@us.af.mil','(415) 345-6789',37,10,82),(83,'Jacobs','Diana','diana.jacobs@us.af.mil','(202) 123-4567',23,1,83),(84,'Kline','Evan','evan.kline@us.af.mil','(212) 876-5432',29,15,84),(85,'Lee','Ella','ella.lee@us.af.mil','(305) 654-3210',29,16,85),(86,'Montgomery','Finley','finley.montgomery@us.af.mil','(310) 987-6543',20,11,86),(87,'Nelson','Fiona','fiona.nelson@us.af.mil','(404) 123-4567',9,5,87),(88,'Owens','Gavin','gavin.owens@us.af.mil','(206) 890-1234',6,14,88),(89,'Powell','Giselle','giselle.powell@us.af.mil','(312) 567-8901',37,5,89),(90,'Richards','Grayson','grayson.richards@us.af.mil','(213) 901-2345',25,1,90),(91,'Sanders','Gianna','gianna.sanders@us.af.mil','(415) 678-9012',5,2,91),(92,'Thomas','Hunter','hunter.thomas@us.af.mil','(202) 345-6789',43,18,92),(93,'Urban','Hailey','hailey.urban@us.af.mil','(212) 123-4567',42,7,93),(94,'Watson','Ian','ian.watson@us.af.mil','(305) 876-5432',16,3,94),(95,'Xander','Isla','isla.xander@us.af.mil','(310) 654-3210',41,2,95),(96,'York','Jaden','jaden.york@us.af.mil','(404) 987-6543',19,14,96),(97,'Ziegler','Julia','julia.ziegler@us.af.mil','(206) 123-4567',26,12,97),(98,'Adams','Jordan','jordan.adams@us.af.mil','(312) 890-1234',14,11,98),(99,'Baker','Jasmine','jasmine.baker@us.af.mil','(213) 567-8901',4,20,99),(100,'Christensen','Jace','jace.christensen@us.af.mil','(415) 901-2345',31,5,100);
/*!40000 ALTER TABLE `customer_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_sergeants`
--

DROP TABLE IF EXISTS `first_sergeants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_sergeants` (
  `First_Sergeant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rank` varchar(5) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`First_Sergeant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_sergeants`
--

LOCK TABLES `first_sergeants` WRITE;
/*!40000 ALTER TABLE `first_sergeants` DISABLE KEYS */;
INSERT INTO `first_sergeants` VALUES (1,'SMSgt','Anderson','Alexander','alexander.anderson@us.af.mil','(505) 846-2198'),(2,'MSgt','Bennett','Benjamin','benjamin.bennett@us.af.mil','(505) 846-4632'),(3,'MSgt','Carter','Charlotte','charlotte.carter@us.af.mil','(505) 846-9821'),(4,'MSgt','Dawson','Daniel','daniel.dawson@us.af.mil','(505) 846-1357'),(5,'MSgt','Edwards','Emily','emily.edwards@us.af.mil','(505) 846-6289'),(6,'MSgt','Fisher','Finn','finn.fisher@us.af.mil','(505) 846-7421'),(7,'MSgt','Grant','Grace','grace.grant@us.af.mil','(505) 846-9512'),(8,'MSgt','Harrison','Henry','henry.harrison@us.af.mil','(505) 846-1186'),(9,'MSgt','Ingram','Isabella','isabella.ingram@us.af.mil','(505) 846-2753'),(10,'SMSgt','Johnson','Jackson','jackson.johnson@us.af.mil','(505) 846-4932'),(11,'SMSgt','King','Kayla','kayla.king@us.af.mil','(505) 846-8172'),(12,'SMSgt','Lewis','Liam','liam.lewis@us.af.mil','(505) 846-6543'),(13,'SMSgt','Mitchell','Madison','madison.mitchell@us.af.mil','(505) 846-3921'),(14,'MSgt','Nelson','Nathan','nathan.nelson@us.af.mil','(505) 846-9285'),(15,'MSgt','Owens','Olivia','olivia.owens@us.af.mil','(505) 846-1478'),(16,'MSgt','Patterson','Parker','parker.patterson@us.af.mil','(505) 846-6231'),(17,'MSgt','Quinn','Quinn','quinn.quinn@us.af.mil','(505) 846-7562'),(18,'TSgt','Richardson','Riley','riley.richardson@us.af.mil','(505) 846-9843'),(19,'MSgt','Simmons','Sophia','sophia.simmons@us.af.mil','(505) 846-2191'),(20,'TSgt','Thompson','Tyler','tyler.thompson@us.af.mil','(505) 846-4639'),(21,'SMSgt','Underwood','Abigail','abigail.underwood@us.af.mil','(505) 846-9825'),(22,'MSgt','Vaughn','Caleb','caleb.vaughn@us.af.mil','(505) 846-1359'),(23,'MSgt','Williams','David','david.williams@us.af.mil','(505) 846-6281'),(24,'SMSgt','Xavier','Ethan','ethan.xavier@us.af.mil','(505) 846-7425'),(25,'MSgt','Young','Fiona','fiona.young@us.af.mil','(505) 846-9519'),(26,'TSgt','Zimmerman','Gabriel','gabriel.zimmerman@us.af.mil','(505) 846-1189'),(27,'SMSgt','Armstrong','Hannah','hannah.armstrong@us.af.mil','(505) 846-2759'),(28,'TSgt','Brooks','Ian','ian.brooks@us.af.mil','(505) 846-4939'),(29,'MSgt','Coleman','Julia','julia.coleman@us.af.mil','(505) 846-8179'),(30,'MSgt','Daniels','Kevin','kevin.daniels@us.af.mil','(505) 846-6549'),(31,'TSgt','Everett','Lucas','lucas.everett@us.af.mil','(505) 846-3925'),(32,'MSgt','Franklin','Mia','mia.franklin@us.af.mil','(505) 846-9281'),(33,'TSgt','Garcia','Noah','noah.garcia@us.af.mil','(505) 846-1479'),(34,'MSgt','Hayes','Oliver','oliver.hayes@us.af.mil','(505) 846-6235'),(35,'MSgt','Irving','Penelope','penelope.irving@us.af.mil','(505) 846-7569'),(36,'SMSgt','Jefferson','Ryan','ryan.jefferson@us.af.mil','(505) 846-9849'),(37,'MSgt','Knight','Savannah','savannah.knight@us.af.mil','(505) 853-2198'),(38,'SMSgt','Lawson','Tristan','tristan.lawson@us.af.mil','(505) 853-4632'),(39,'MSgt','Martinez','Violet','violet.martinez@us.af.mil','(505) 853-9821'),(40,'SMSgt','Nichols','Wyatt','wyatt.nichols@us.af.mil','(505) 853-1357'),(41,'MSgt','OConnor','Xavier','xavier.oconnor@us.af.mil','(505) 853-6289'),(42,'SMSgt','Peterson','Zoey','zoey.peterson@us.af.mil','(505) 853-7421'),(43,'SMSgt','Reed','Ava','ava.reed@us.af.mil','(505) 853-9512'),(44,'MSgt','Stevenson','Brady','brady.stevenson@us.af.mil','(505) 853-1186'),(45,'SMSgt','Taylor','Chloe','chloe.taylor@us.af.mil','(505) 853-2753'),(46,'MSgt','Ulrich','Dominic','dominic.ulrich@us.af.mil','(505) 853-4932'),(47,'MSgt','Vincent','Elijah','elijah.vincent@us.af.mil','(505) 853-8172'),(48,'MSgt','Walker','Faith','faith.walker@us.af.mil','(505) 853-6543'),(49,'MSgt','Xander','Gavin','gavin.xander@us.af.mil','(505) 853-3921'),(50,'MSgt','Griffin','Blake','blake.griffin.3@us.af.mil','(505) 853-9285'),(51,'MSgt','Adams','Isaac','isaac.adams@us.af.mil','(505) 853-1478'),(52,'MSgt','Brooks','Jasmine','jasmine.brooks@us.af.mil','(505) 853-6231'),(53,'SMSgt','Castillo','Kaden','kaden.castillo@us.af.mil','(505) 853-7562'),(54,'SMSgt','Dixon','Leah','leah.dixon@us.af.mil','(505) 853-9843'),(55,'MSgt','Evans','Mason','mason.evans@us.af.mil','(505) 853-2191'),(56,'TSgt','Fowler','Natalie','natalie.fowler@us.af.mil','(505) 853-4639'),(57,'MSgt','Gonzalez','Owen','owen.gonzalez@us.af.mil','(505) 853-9825'),(58,'TSgt','Hunter','Peyton','peyton.hunter@us.af.mil','(505) 853-1359'),(59,'MSgt','Jenkins','Reagan','reagan.jenkins@us.af.mil','(505) 853-6281'),(60,'TSgt','Keller','Samuel','samuel.keller@us.af.mil','(505) 853-7425'),(61,'MSgt','Logan','Tessa','tessa.logan@us.af.mil','(505) 853-9519'),(62,'MSgt','Murphy','Ulysses','ulysses.murphy@us.af.mil','(505) 853-1189'),(63,'TSgt','Norton','Victoria','victoria.norton@us.af.mil','(505) 853-2759'),(64,'MSgt','Ortiz','Wesley','wesley.ortiz@us.af.mil','(505) 853-4939'),(65,'MSgt','Parker','Xavier','xavier.parker@us.af.mil','(505) 853-8179'),(66,'MSgt','Ramirez','Yolanda','yolanda.ramirez@us.af.mil','(505) 853-6549'),(67,'SMSgt','Scott','Zachary','zachary.scott@us.af.mil','(505) 853-3925'),(68,'MSgt','Turner','Addison','addison.turner@us.af.mil','(505) 853-9281'),(69,'SMSgt','Vaughn','Blake','blake.vaughn@us.af.mil','(505) 853-1479'),(70,'SMSgt','Watson','Carter','carter.watson@us.af.mil','(505) 853-6235'),(71,'MSgt','Xavier','Delilah','delilah.xavier@us.af.mil','(505) 853-7569'),(72,'MSgt','Yates','Emerson','emerson.yates@us.af.mil','(505) 853-9849');
/*!40000 ALTER TABLE `first_sergeants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `Group_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Group_Name` varchar(100) NOT NULL,
  `Group_Abbreviation` varchar(10) NOT NULL,
  `Commander_ID` int(11) NOT NULL,
  `First_Sergeant_ID` int(11) NOT NULL,
  `Wing_ID` int(11) NOT NULL,
  `css_email` varchar(100) NOT NULL,
  PRIMARY KEY (`Group_ID`),
  KEY `fk_GroupsCommanders` (`Commander_ID`),
  KEY `fk_GroupsFirstSergeants` (`First_Sergeant_ID`),
  KEY `fk_GroupsWings` (`Wing_ID`),
  CONSTRAINT `fk_GroupsCommanders` FOREIGN KEY (`Commander_ID`) REFERENCES `commanders` (`Commander_ID`),
  CONSTRAINT `fk_GroupsFirstSergeants` FOREIGN KEY (`First_Sergeant_ID`) REFERENCES `first_sergeants` (`First_Sergeant_ID`),
  CONSTRAINT `fk_GroupsWings` FOREIGN KEY (`Wing_ID`) REFERENCES `wings` (`Wing_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'377 Security Forces Group','377 SFG',7,1,1,'377SFG.css@us.af.mil'),(2,'377 Mission Support Group','377 MSG',8,2,1,'377MSG.css@us.af.mil'),(3,'377 Medical Group','377 MDG',9,3,1,'377MDG.css@us.af.mil'),(4,'377 Test and Evaluation Group','377 TEG',10,4,1,'377TEG.css@us.af.mil'),(5,'377th Maintenance Group','377 CPTG',11,5,1,'377CPTG.css@us.af.mil'),(6,'58th Maintenance Group','58 MXG',12,6,2,'58MXG.css@us.af.mil'),(7,'58th Operations Group','58 OG',13,7,2,'58OG.css@us.af.mil'),(8,'336th Training Group','336 TRG',14,8,2,'336TRG.css@us.af.mil'),(9,'150th Operations Group','150 OG',15,9,3,'150OG.css@us.af.mil'),(10,'150th Maintenance Group','150 MXG',16,10,3,'150MXG.css@us.af.mil'),(11,'150th Mission Support Group','150 MSG',17,11,3,'150MSG.css@us.af.mil'),(12,'150th Medical Group','150 MDG',18,12,3,'150MDG.css@us.af.mil'),(13,'21st Ordinance Group','21 OrdG',19,13,4,'21OrdG.css@us.af.mil'),(14,'AFRL Group','AFRLG',20,14,5,'AFRLG.css@us.af.mil'),(15,'Air Force Inspection Agency Group','AFIAG',21,15,5,'AFIAG.css@us.af.mil'),(16,'Air Force Nuclear Weapon Group','AFNWG',22,16,5,'AFNWG.css@us.af.mil'),(17,'Air Force Operation and Test Group','OTG',23,17,5,'OTG.css@us.af.mil'),(18,'Air Force Safety Center Group','AFSEG',24,18,6,'AFSEG.css@us.af.mil'),(19,'Defense Threat Reduction Group','DTRG',25,19,6,'DTRG.css@us.af.mil');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_commands`
--

DROP TABLE IF EXISTS `major_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major_commands` (
  `MAJCOM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAJCOM_Name` varchar(50) NOT NULL,
  `MAJCOM_Abbreviation` varchar(10) NOT NULL,
  PRIMARY KEY (`MAJCOM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_commands`
--

LOCK TABLES `major_commands` WRITE;
/*!40000 ALTER TABLE `major_commands` DISABLE KEYS */;
INSERT INTO `major_commands` VALUES (1,'Air Force Global Strike Command ','AFGSC'),(2,'Air Force Material Command','AFMC'),(3,'Air Education and Training Command','AETC'),(4,'Air Combat Command','ACC'),(5,'Air Force Research Lab','AFRL'),(6,'Air Force Inspection Agency','AFIA'),(7,'New Mexico Air National Guard','NMANG'),(8,'Defense Threat Reduction Agency','DTRA');
/*!40000 ALTER TABLE `major_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `squadrons`
--

DROP TABLE IF EXISTS `squadrons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `squadrons` (
  `Squadron_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Squadron_Name` varchar(50) NOT NULL,
  `Sq_Abbreviation` varchar(10) NOT NULL,
  `CSS_Email` varchar(50) NOT NULL,
  `Group_ID` int(11) NOT NULL,
  `Commander_ID` int(11) NOT NULL,
  `First_Sergeant_ID` int(11) NOT NULL,
  PRIMARY KEY (`Squadron_ID`),
  KEY `Squadrons_First_Sergeants` (`First_Sergeant_ID`),
  KEY `fk_SquadronsCommanders` (`Commander_ID`),
  KEY `fk_SquadronsGroups` (`Group_ID`),
  CONSTRAINT `Squadrons_First_Sergeants` FOREIGN KEY (`First_Sergeant_ID`) REFERENCES `first_sergeants` (`First_Sergeant_ID`),
  CONSTRAINT `fk_SquadronsCommanders` FOREIGN KEY (`Commander_ID`) REFERENCES `commanders` (`Commander_ID`),
  CONSTRAINT `fk_SquadronsGroups` FOREIGN KEY (`Group_ID`) REFERENCES `groups` (`Group_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `squadrons`
--

LOCK TABLES `squadrons` WRITE;
/*!40000 ALTER TABLE `squadrons` DISABLE KEYS */;
INSERT INTO `squadrons` VALUES (1,'377th Contracting Squadron','377 CS','377CS.css@us.af.mil',2,26,20),(2,'377th Communications Squadron','377 COMM','377COMM.css@us.af.mil',2,27,21),(3,'377th Comptroller Squadron','377 CPTS','377CPTS.css@us.af.mil',2,28,22),(4,'377th Civil Engineer Squadron','377 CE','377CE.css@us.af.mil',2,29,23),(5,'377th Logistics Readiness Squadron','377 LRS','377LRS.css@us.af.mil',2,30,24),(6,'377th Force Support Squadron','377 FSS','377FSS.css@us.af.mil',2,31,25),(7,'377th Aerospace Medicine Squadron','377 AEMS','377AEMS.css@us.af.mil',3,32,26),(8,'377th Dental Squadron','377 DS','377DS.css@us.af.mil',3,33,27),(9,'377th Medical Operations Squadron','377 MOS','377MOS.css@us.af.mil',3,34,28),(10,'377th Medical Support Squadron','377 MSS','377MSS.css@us.af.mil',3,35,29),(11,'377th Security Forces Squadron','377 SFS','377SFS.css@us.af.mil',1,36,30),(12,'377th Weapons System Security Squadron','377 WSSS','377WSSS.css@us.af.mil',1,37,31),(13,'377th Maintenance Squadron','377 MXS','377MXS.css@us.af.mil',5,38,32),(14,'898th Munitions Squadron','898 MUNS','898MUNS.css@us.af.mil',5,39,33),(15,'377th Flight Test Missile Maintenance Squadron','377 FTMM','377FTMM.css@us.af.mil',4,40,34),(16,'377th Test Support Squadron','377 TSS','377TSS.css@us.af.mil',4,41,35),(17,'576th Flight Test Squadron','576 FTS','576FTS.css@us.af.mil',4,42,36),(18,'23rd Flying Training Squadron','23 FTS','23FTS.css@us.af.mil',7,43,37),(19,'36th Rescue Squadron','36 RS','36RS.css@us.af.mil',7,44,38),(20,'71st Special Operations Squadron','71 SOS','71SOS.css@us.af.mil',7,45,39),(21,'415th Special Operations Squadron','415 SOS','415SOS.css@us.af.mil',7,46,40),(22,'512th Rescue Squadron','415 RQS','415RQS.css@us.af.mil',7,47,41),(23,'188th Rescue Squadron','188 RQS','188RQS.css@us.af.mil',8,48,42),(24,'250th Intelligence Squadron','250 IS','250IS.css@us.af.mil',8,49,43),(25,'210th RED HORSE Squadron','210 CE','210CE.css@us.af.mil',8,50,44),(26,'58th Aircraft Maintenance Squadron','58 AMXS','58AMXS.css@us.af.mil',6,51,45),(27,'58th Maintenance Squadron','58 MXS','58MXS.css@us.af.mil',6,52,46),(28,'58th Maintenance Operation Flight','58 MOF','58MOF.css@us.af.mil',6,53,47),(29,'336th Training Squadron','336 TRS','336TRS.css@us.af.mil',8,54,48),(30,'66th Training Squadron','66 TRS','66TRS.css@us.af.mil',8,55,49),(31,'22nd Training Squadron','22 TRS','22TRS.css@us.af.mil',8,56,50),(32,'58th Training Squadron','58 TRS','58TRS.css@us.af.mil',8,57,51),(33,'150th Maintenance Squadron','150 MXS','150MXS.css@us.af.mil',10,58,52),(34,'150th Aircraft Maintenance Squadron','150 AMXS','150AMXS.css@us.af.mil',10,59,53),(35,'21st Ordinance Company','21 OC','21OC.css@us.af.mil',13,60,54),(36,'Air Force Inspection Agency','AFIA','AFIA.css@us.af.mil',15,61,55),(37,'Air Force Nuclear Weapons Center','AFNWC','AFNWC.css@us.af.mil',16,62,56),(38,'Air Force Operational Test and Evaluation Center','AFOTEC','AFOTEC.css@us.af.mil',17,63,57),(39,'Air Force Safety Center','AFSE','AFSE.css@us.af.mil',18,64,58),(40,'Defense Threat Reduction Agencie','DTRA','DTRA.css@us.af.mil',19,65,59),(41,'Directed Energy','AFRL DE','AFRLDE.css@us.af.mil',19,66,60),(42,'Space Vehicles','AFRL SV','AFRLSV.css@us.af.mil',19,67,61),(43,'Space Systems Command','SSC','SSC.css@us.af.mil',17,68,62);
/*!40000 ALTER TABLE `squadrons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `Member_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Rank` varchar(10) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,'TSgt','Caldwell','Ethan','(505)846-1111','ethan.caldwell@us.af.mil'),(2,'SSgt','Hartman','Sienna','(505)846-1112','sienna.hartman@us.af.mil'),(3,'SSgt','Whitemore','Logan','(505)846-1113','logan.whitemore@us.af.mil'),(4,'SSgt','Sterling','Ava','(505)846-1114','ava.sterling@us.af.mil'),(5,'SrA','Lennox','Noah','(505)846-1115','noah.lennox@us.af.mil'),(6,'SrA','Kensington','Mira','(505)846-1116','mira.kensington@us.af.mil'),(7,'SrA','Thorne','Owen','(505)846-1117','owen.thorne@us.af.mil'),(8,'SrA','Winslow','Elara','(505)846-1118','elara.winslow@us.af.mil'),(9,'A1C','Holloway','Zane','(505)846-1119','zane.holloway@us.af.mil'),(10,'A1C','Radcliffe','Isla','(505)846-1120','isla.radcliffe@us.af.mil'),(11,'A1C','Mercer','Caleb','(505)846-1121','caleb.mercer@us.af.mil'),(12,'Amn','Ashford','Vivian','(505)846-1122','vivian.ashford@us.af.mil'),(13,'Amn','Montgomery','Jasper','(505)846-1123','jasper.montgomery@us.af.mil'),(14,'Amn','Fairchild','Lena','(505)846-1124','lena.fairchild@us.af.mil'),(15,'AB','Delacroix','Ronan','(505)846-1125','ronan.delacroix@us.af.mil'),(16,'AB','Vance','Celste','(505)846-1126','celste.vance@us.af.mil'),(17,'AB','Blackwood','Dorian','(505)846-1127','dorian.blackwood@us.af.mil'),(18,'AB','Langford','Nia','(505)846-1128','nia.langford@us.af.mil'),(19,'AB','Hawthorne','Wesley','(505)846-1129','wesley.hawthorne@us.af.mil'),(20,'AB','Montgomery','Lilah','(505)846-1130','lilah.montgomery@us.af.mil');
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_customers_squadrons`
--

DROP TABLE IF EXISTS `view_customers_squadrons`;
/*!50001 DROP VIEW IF EXISTS `view_customers_squadrons`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_customers_squadrons` AS SELECT
 1 AS `squadron_ID`,
  1 AS `squadron_name`,
  1 AS `rank`,
  1 AS `commander_first_name`,
  1 AS `commander_last_name`,
  1 AS `customer_ID`,
  1 AS `customer_last_name`,
  1 AS `customer_first_name` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_team_contracts`
--

DROP TABLE IF EXISTS `view_team_contracts`;
/*!50001 DROP VIEW IF EXISTS `view_team_contracts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_team_contracts` AS SELECT
 1 AS `member_ID`,
  1 AS `rank`,
  1 AS `last_name`,
  1 AS `customer_ID`,
  1 AS `customer_last_name`,
  1 AS `customer_first_name`,
  1 AS `contract_type` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wings`
--

DROP TABLE IF EXISTS `wings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wings` (
  `Wing_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Wing_Name` varchar(50) NOT NULL,
  `Commander_ID` int(11) NOT NULL,
  `CSS_Email` varchar(50) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `MAJCOM_ID` int(11) NOT NULL,
  `wg_abbreviation` varchar(10) NOT NULL,
  PRIMARY KEY (`Wing_ID`),
  KEY `fk_WingsCommanders` (`Commander_ID`),
  KEY `fk_WingsMajorCommands` (`MAJCOM_ID`),
  CONSTRAINT `fk_WingsCommanders` FOREIGN KEY (`Commander_ID`) REFERENCES `commanders` (`Commander_ID`),
  CONSTRAINT `fk_WingsMajorCommands` FOREIGN KEY (`MAJCOM_ID`) REFERENCES `major_commands` (`MAJCOM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wings`
--

LOCK TABLES `wings` WRITE;
/*!40000 ALTER TABLE `wings` DISABLE KEYS */;
INSERT INTO `wings` VALUES (1,'377th Air Base Wing',1,'377ABW.css@us.af.mil','505-846-1122',1,'377 ABW'),(2,'58th Special Operations Wing',2,'58SOW.css@us.af.mil','505-846-1123',3,'58 SOW'),(3,'150th Special Operations Wing',3,'150SOW.css@us.af.mil','505-846-2231',3,'150 SOW'),(4,'21st Ordnance Wing',4,'21OrdW.css@us.af.mil','505-846-2217',2,'21 OrdW'),(5,'AFRL Wing',5,'AFRLW.css@us.af.mil','505-853-1122',2,'AFRLW'),(6,'DTRA Wing',6,'DTRAW.css@us.af.mil','505-853-2211',8,'DTRAW');
/*!40000 ALTER TABLE `wings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `retentions`
--

USE `retentions`;

--
-- Final view structure for view `view_customers_squadrons`
--

/*!50001 DROP VIEW IF EXISTS `view_customers_squadrons`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_customers_squadrons` AS select `sq`.`Squadron_ID` AS `squadron_ID`,`sq`.`Squadron_Name` AS `squadron_name`,`cmd`.`Rank` AS `rank`,`cmd`.`first_name` AS `commander_first_name`,`cmd`.`last_name` AS `commander_last_name`,`ci`.`Customer_ID` AS `customer_ID`,`ci`.`last_name` AS `customer_last_name`,`ci`.`first_name` AS `customer_first_name` from ((`squadrons` `sq` join `customer_information` `ci` on(`sq`.`Squadron_ID` = `ci`.`Squadron_ID`)) join `commanders` `cmd` on(`cmd`.`Commander_ID` = `sq`.`Commander_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_team_contracts`
--

/*!50001 DROP VIEW IF EXISTS `view_team_contracts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_team_contracts` AS select `tm`.`Member_ID` AS `member_ID`,`tm`.`Rank` AS `rank`,`tm`.`Last_Name` AS `last_name`,`ci`.`Customer_ID` AS `customer_ID`,`ci`.`last_name` AS `customer_last_name`,`ci`.`first_name` AS `customer_first_name`,`c`.`contract_type` AS `contract_type` from ((`team_members` `tm` join `customer_information` `ci` on(`tm`.`Member_ID` = `ci`.`Member_ID`)) join `contracts` `c` on(`ci`.`Contract_ID` = `c`.`Contract_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-08 12:36:21
