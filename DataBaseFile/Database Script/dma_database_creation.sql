CREATE DATABASE  IF NOT EXISTS `dma` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dma`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dma
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dma_feedback`
--

DROP TABLE IF EXISTS `dma_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dma_feedback` (
  `USER_ID` double NOT NULL,
  `FEEDBACK` longtext NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dma_feedback`
--

LOCK TABLES `dma_feedback` WRITE;
/*!40000 ALTER TABLE `dma_feedback` DISABLE KEYS */;
INSERT INTO `dma_feedback` VALUES (1321610068,'NEED DUSTBIN IN CS-4B'),(1321610075,'NEED DUSTBIN IN CS-4B');
/*!40000 ALTER TABLE `dma_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dma_user`
--

DROP TABLE IF EXISTS `dma_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dma_user` (
  `USER_ID` double NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `FIRST_NAME` char(100) NOT NULL,
  `LAST_NAME` char(100) NOT NULL,
  `ADDRESS` varchar(45) NOT NULL,
  `PHONE` varchar(45) NOT NULL,
  `EMAIL_ID` varchar(45) NOT NULL,
  `ROLE` char(15) NOT NULL,
  `DEPARTMENT` varchar(45) NOT NULL,
  `TEACHES` varchar(45) NOT NULL,
  `WORKING` varchar(45) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dma_user`
--

LOCK TABLES `dma_user` WRITE;
/*!40000 ALTER TABLE `dma_user` DISABLE KEYS */;
INSERT INTO `dma_user` VALUES (1,'SANJAY','SANJAY','PACHAURI','GREATER NOIDA','9242542542','SANJAY@IIMT.NET','ADMIN','C.S.E.','CYBER SECURITY','2016-PRESENT'),(3,'SUSHIL','SUSHIL','KUMAR','GR. NOIDA','8546791231','SUSHIL@IIMT.NET','STAFF','CSE','SOFTWARE ENGG.','2013-PRESENT'),(4,'kritika','KRITIKA','SACHDEVA','PITAMPURA, NEW DELHI','9899998999','KRITIKA@GMAIL.COM','STAFF','B.TECH.','DATA STRUCTURES','2010-PRESENT');
/*!40000 ALTER TABLE `dma_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dma_user_student`
--

DROP TABLE IF EXISTS `dma_user_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dma_user_student` (
  `USER_ID` double NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `FIRST_NAME` char(100) NOT NULL,
  `LAST_NAME` char(100) DEFAULT NULL,
  `ADDRESS` varchar(45) NOT NULL,
  `PHONE` varchar(45) NOT NULL,
  `EMAIL_ID` varchar(45) NOT NULL,
  `ROLE` varchar(45) NOT NULL,
  `COURSE` varchar(45) NOT NULL,
  `BRANCH` varchar(45) NOT NULL,
  `SESSION` varchar(45) NOT NULL,
  `SECTION` varchar(45) NOT NULL,
  `ATTENDANCE` int(5) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dma_user_student`
--

LOCK TABLES `dma_user_student` WRITE;
/*!40000 ALTER TABLE `dma_user_student` DISABLE KEYS */;
INSERT INTO `dma_user_student` VALUES (1321610039,'GURVEER','GURVEER','SINGH','GR. NOIDA','9899998999','GURV@IIMT.NET','Student','B.TECH.','CSE','2013-17','CS-4A',1),(1321610048,'LAXMAN','LAXMAN','KUMAR','GR. NOIDA','98999698996','LAX@GMAIL.COM','Student','B.TECH.','CSE','2013-17','CS-4A',1),(1321610068,'PRASHANT','PRASHANT','VERMA','ASHRAM, NEW DELHI','+91-9650734521','PRASHANT.DELHI14@GMAIL.COM','STUDENT','B.TECH.','C.S.E.','2013-17','CS-4B',11),(1321610070,'gautam','GAUTAM','GULATI','NOIDA','9650965010','GAUTAM@GMAIL.COM','Student','B.TECH.','CSE','2013-17','CS-4A',1),(1321610075,'RAHUL','RAHUL','SHARMA','NIRMAN VIHAR','9560287100','RAHUL@IIMT.NET','Student','B.TECH.','CSE','2013-17','CS-4B',2),(1321610079,'rajneesh','RAJNEESH','KUMAR','DADRI','9015599767','RAJNEESH@GMAIL.COM','Student','B.TECH.','CSE','2013-17','CS-4B',1);
/*!40000 ALTER TABLE `dma_user_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-07 14:57:19
