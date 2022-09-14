-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: job
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `compID` int NOT NULL AUTO_INCREMENT,
  `compName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `compType` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`compID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (27,'NTT-data','SW Solution company','approached'),(28,'Statista','Statistical data company','approached'),(31,'Sopra Steria','Digital solutions for customers','approached'),(35,'Nexadus','Specialized Engineering firm','approached'),(42,'RightpeopleGroup','Agency','approached'),(45,'opitz-consulting','SW Hersteller, kein Freelance','registered'),(46,'Toptal','Hires best of the best; Preparing for REACT examen?','registered'),(51,'Hays AG','PERSONAL­DIENSTLEISTER','registered'),(52,'freelance.de','Online-Plattform für Freelancer &amp; Projekte','registered'),(53,'progressiverecruitment.com','Recruiter','registered'),(54,'www.solcom.de','Recruiter, also for freelance','registered'),(56,'darwinrecruitment.com','US Recruitment','registered'),(59,'Knieper Consulting GmbH','Recruiter','registered'),(60,'iSAX GmbH &amp; Co. KG','Recruiter Industry','registered'),(61,'FERCHAU GmbH','Recruiter Industry','registered'),(62,'Upwork','Agency; Change email to MRD','registered'),(65,'MVP Factory','Agency; Fill in profile','approached'),(67,'freelancermap GmbH','Internet platform Kunden-Nr: 432457','registered'),(68,'GULP','Randstap uitzendbureau','registered'),(70,'IQ PLUS','Informatik-Spezialist*innen auf Zeit','registered'),(71,'Appway','OEM for BPM (Business Process Management)','registered'),(96,'b1','ssssssssss','registered'),(97,'b12','sss','registered'),(98,'b44','qwdqwd','registered'),(99,'b78','ssss','registered'),(100,'laatsteooooooooooo','ddd','registered'),(101,'l22222222222222222222','asdawd','registered'),(102,'l23','ssss','registered'),(103,'Thryve','Agency','registered'),(104,'testkk','Agency','registered'),(105,'Gazelle Global ','Agency','registered'),(107,'Nortal AG','IT solution provider','registered'),(108,'Vesterling','Recruiter','registered'),(109,'elunic AG','Industrie-4.0-Softwareunternehmen','registered'),(110,'ttttttttttttttttt','registered','aaaaaaaaaaaaa'),(111,'qqqqqqqqqq','registered','wwwwwwwwww'),(114,'abcdef','fhij','approached');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emplID` int NOT NULL AUTO_INCREMENT,
  `emplFirstName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emplLastName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emplTel` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emplEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compID` int DEFAULT NULL,
  PRIMARY KEY (`emplID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (27,'Leoo','Laitinen','+358 44 5915 607','lla@rightpeoplegroup.com',NULL),(28,'Kwik','Duck',NULL,NULL,NULL),(29,'Patito','Duck',NULL,NULL,NULL),(30,'Donald','Duck','6666666666666666666','adddddddddddddddddddddd@b.c',NULL),(31,'Donald','eeeeeeeeee','1234','aa@bb.ccc',NULL),(32,'Patitoo','Duck','12345','a@b.c',42),(33,'Employeeeeeeeeee','Test','1234','acccccccccccccc@b.c',27),(34,'aaaa','bbbb','1234','a@b.c',69),(35,'ddd','lll','123','456',61),(36,'','','','',99),(37,'ddddddddddddddd','ffffffffffffff','hhhhhhhhhhh','ggggggggggggggg',51);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `jobID` int NOT NULL AUTO_INCREMENT,
  `jobTitle` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `jobDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `jobDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jobStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `compID` int NOT NULL,
  PRIMARY KEY (`jobID`),
  KEY `compID` (`compID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (27,'General Full Stack','MRD offer','Only email sent','2022-06-07 11:29:40','pending',27),(28,'General Full Stack','MRD offer','Just email','2022-06-07 11:30:53','pending',28),(29,'Initiativbewerbung','General contact','Introduced persona data on their website, uploaded MRD letter','2022-06-07 11:59:20','pending',31),(30,'Initiativbewerbung','Nothing specific','Left personal data and MRD general message at their contact page','2022-06-07 12:32:58','pending',35),(52,'Freelance','Ticked boxes for comptences and countries','Only name and email. Job proposals will come(?)','2022-06-09 17:17:52','pending',39),(58,'123','123','123','2022-06-10 21:32:10','won',29),(62,'Contractor Free lance','Agency, will send jobs to email','https://onsiter.com/de/en/profile/edit registered','2022-06-12 12:06:54','pending',42),(63,'Full Stack','na','CV hoghgeladen','2022-06-20 17:07:52','pending',42),(64,'React Entwickler (m/w/d)','Schleswig-Holstein | Freiberuflich für ein Projekt','Weiterentwicklung einer modernen Webapplikation in einem agilen Umfeld','2022-06-21 06:34:37','registered',51),(68,'Freelance jobs from Database','Browse through DB for Jobs',NULL,'2022-07-11 14:14:32','registered',62),(73,'Consultant task – Software Developer (Helsinki/Remote), published: 27.07.2022','- Coding in React',NULL,'2022-07-27 07:50:19','closed',42),(76,'wwww',NULL,NULL,'2022-08-08 16:25:01','pending',27),(77,'yyyy',NULL,NULL,'2022-08-08 16:25:22','pending',27),(80,'testtttttttttttttttttttttttt','aaaaabbbbbbbbbbbbbbbbbbb','bbbbb','2022-08-08 18:13:09','registered',27);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_items`
--

DROP TABLE IF EXISTS `todo_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_items` (
  `id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_items`
--

LOCK TABLES `todo_items` WRITE;
/*!40000 ALTER TABLE `todo_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15 19:17:37
