-- MySQL dump 10.13  Distrib 5.6.38, for linux-glibc2.12 (x86_64)
--
-- Host: 127.0.0.1    Database: world_1_1
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `RoleData`
--

DROP TABLE IF EXISTS `RoleData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoleData` (
  `Uin` int(11) DEFAULT NULL,
  `RoleID` bigint(20) unsigned NOT NULL,
  `RoleName` varchar(32) DEFAULT NULL,
  `OLCountTime` int(10) unsigned DEFAULT NULL,
  `CreateTime` int(10) unsigned DEFAULT NULL,
  `LastLogin` int(10) unsigned DEFAULT NULL,
  `LastLogout` int(10) unsigned DEFAULT NULL,
  `LoginCount` int(11) DEFAULT NULL,
  `JQUid` int(11) DEFAULT NULL,
  `ChannelID` int(11) DEFAULT NULL,
  `PingTaiUID` varchar(32) DEFAULT NULL,
  `WorldID` int(11) DEFAULT NULL,
  `Perm` smallint(6) DEFAULT NULL,
  `VipExp` int(11) DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `Exp` int(11) DEFAULT NULL,
  `Money` bigint(20) DEFAULT NULL,
  `Yuan` int(11) DEFAULT NULL,
  `TotalYuan` int(11) DEFAULT NULL,
  `RMB` int(11) DEFAULT NULL,
  `CardID` smallint(6) DEFAULT NULL,
  `Rank` smallint(6) DEFAULT NULL,
  `RoleDetail` blob,
  `RolePackage` mediumblob,
  `MiscInfo` blob,
  `DataVersion` int(11) DEFAULT NULL,
  `ClientOpt` blob,
  `NoChat` int(11) DEFAULT NULL,
  `TeamInfo` blob,
  `RoleRelation` blob,
  `RoleSysMsg` blob,
  `JiaoYiInfo` blob,
  `FightVal` int(10) unsigned DEFAULT NULL,
  `NoLogin` int(11) DEFAULT NULL,
  `PiPeiSeq` int(11) DEFAULT NULL,
  PRIMARY KEY (`RoleID`),
  UNIQUE KEY `RoleName` (`RoleName`),
  KEY `RoleData_Idx_0` (`Uin`),
  KEY `RoleData_Idx_1` (`Level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoleData`
--
-- WHERE:  Uin=6626

LOCK TABLES `RoleData` WRITE;
/*!40000 ALTER TABLE `RoleData` DISABLE KEYS */;
INSERT INTO `RoleData` VALUES (6626,1987780723761694164,'天府睿联',55844,1529824724,1530452841,1530453216,74,0,400005,'51020362',1,0,60,1,27,2183,5290950,590,120,6,15,886,'\0\0<\0\0\0\0\0\0\0\0\0v\0\0.�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0','\0\09\0\0?\0\0\0\0\0\0�\0\0:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z\0@\0F\0i\0P\0o\0w\0q\0r\0j\0p\0d\0i\0i\0m\0m\0a\0k\0%\0*\0)\0*\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\0u\0w\0p\0h\0�\0�\0�\0�\0p\0�\0t\0�\0�\0�\0�\0�\0�\07\07\07\08\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04\0\0\0\n�\0\0\0\0\0\0\0\0\r\n\0V\0o\0Y\0q\0e\0n\0v\0p\0r\0{\0z\0v\0{\0f\0Y\0a\0h\08\05\0,\00\02\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0W\0\0\0\0\0\0\0\0\0\0\0\0\0\06\09\05\0;\0B\0W\0c\0o\0W\07\0@\0E\0F\0f\0f\0:\0I\04\0�\0}\0\0v\0~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0t\0r\0w\0x\0\0�\0�\0�\0�\0{\0�\0\\\0r\0u\0x\08\0w\0:\0)\0/\0,\0)\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Q\0\0\0D\0\0\0\0\0\0\0\0\0y\0R\0T\0\\\0g\0l\0d\0t\0m\0_\0i\0k\0n\0x\0u\0z\0h\0z\0-\0.\05\01\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0T\0�\0^\0D\0F\0D\0@\0A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\Z�\0\0\0\0\0\0\0\0\0t\0X\0V\0]\0P\0k\0a\0m\0f\0J\0k\0n\0s\0u\0q\0s\0S\0x\01\0-\02\06\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0�\0\0\0\0\0\0\0\0\0o\0�\0s\0s\0r\0w\0s\0|\0u\0{\0}\0�\0�\0{\0r\0w\0�\0n\0,\0/\0+\0-\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\n�\0\0\0\0\0\0\0\0		\0y\0|\0u\0q\0r\0w\0s\0{\0r\0s\0t\0x\0u\0w\0p\0y\0�\0t\06\0/\00\0.\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0`\0q\0f\0t\0o\0q\0�\0�\0q\0�\0�\0�\0�\0i\0[\0g\0m\0Y\0-\0,\0+\0-\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\n\0_\0x\0n\0j\0o\0l\0q\0{\0k\0{\0|\0�\0�\0j\0g\0d\0y\0I\0)\0\'\0\'\0-\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0|\0�\0|\0}\0z\0�\0�\0�\0�\0�\0�\0�\0�\0�\0z\0�\0�\0z\0:\0;\0;\0;\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0v�\0\0\0	\0\0\0\0\0\0\0y\0Z\0T\0]\0\\\0q\0p\0y\0r\0^\0r\0o\0p\0�\0|\0x\0e\0w\0-\0-\0.\0)\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\03\04\0+\0=\0^\0S\0j\0L\0,\0<\01\0A\0u\0k\0,\0O\0,\0z\0x\0z\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0o\0\0\0C�\0\0\0\0\0\0\0\0\0\0\0Z\0n\0e\0n\0l\0q\0r\0l\0p\0u\0u\0l\0j\0d\0e\0U\0h\0U\0%\0%\0*\0%\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0w\0c\0x\0n\0~\0\0�\0|\0w\0}\0y\0|\0{\0u\0}\0x\0}\0*\0.\0.\02\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#\0\0\0��\0\0\0\n\0\0\0\0\0\0\0\0h\0s\0v\0p\0o\0z\0|\0v\0w\0|\0{\0m\0m\0n\0e\0;\0u\0A\0.\0.\0+\0.\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N\0]\0S\0X\0V\0a\0^\0a\0b\0`\0_\0X\0]\0^\0Y\04\0\\\03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0<\0�\0\0\0��\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\r�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0,�\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\07\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0B\0\0�\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0MX\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0u\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0u\0\0\0\0\0\0\Z\0\0\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\03\0\0\05\0\0\0�\0\0\0\0\0\0�\0\0\0�\0\0\0[\0\0\0<\0\0\0�\0\0\0m\0\0\0d\0\0\0�\0\0-\0\0\0\0\0\0\0Q\0\0*\0\0\0@\0\0\0:\0\0\0e\0\0\0�\0\0\0�\0\0\0]\0\0\0�\0\0\04\0\0\0S\0\0\0T\0\0\0W\0\0\0�\0\0\0�\0\0\0�\0\0\0+\0\0\0�\0\0\0h\0\0\0\Z\0\0\0$\0\0\0�\0\0\0\0\0�\0\0\0�\0\0\0\0\0\0C\0\0\0�\0\0\0&\0\0\0^\0\0\0p\0\0\0�\0\0\0s\0\0\0�\0\0\0\'\0\0\0,\0\0\0�\0\0\0�\0\0\0n\0\0\0�\0\0\0�\0\0\09\0\0\0�\0\0\0\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0=\0\0\0�\0\0\0/\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0A\0\0\"\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0Z\0\0\0Y\0\0\0o\0\0\0>\0\0\0�\0\0\0�\0\0\0�\0\0\0O\0\0\0�\0\0\0v\0\0\0�\0\0\0�\0\0\0N\0\0\0\0\0#\0\0\01\0\0\0M\0\0\0`\0\0\0~\0\0\0�\0\0\0\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0M\0\0\0�\0\0\0�\0\0c\0\0\0^\0\0\0}\0\0\0\Z\0\0\0\0[8�_[8��\0\0\0\0\0\0\0\0\0#�\Z\0\0\0\0[8�\'\Z\0\0\0\0[8�\'\Z\0\0\0\0[8�\'\Z\0\0\0\0[8�\'\0\0\0\0[8�\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0)\0\0�\0\0�\0\0q\0\0\0}[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0�\0\0\0��\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0,�\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\r�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[8ء\0\0\0\n\0\0\0\0\r龙傲天下\0\0\0g[8n\n\0\0\0\0\0瓦朗斯丁丁\0\0\0�[8n�\0\0\0\0\r巴塞霸刀\0\0\0	�[8p-\0\0\0\0\0\r中车高铁\0\0\0�[8t?\0	\0\0\0老特拉福德金\0\0\0�[8t�\0\0\0\0\0\n北洋村\0\0\0�[8uL\0	\0\0\0那波里葵花\0\0\0y[8�\0\0\0\0巴勒莫费查\0\0\0\n�[8ٚ\0\0\r\0\0\0\n小明的\0\0\0�[8�i\0\0\r\0\0\0\n小明的\0\0\0�[8��\0\0\0\0\0\0����\0\0~\0\0\0\0\0\0\r峰蕾涵轩\0\0\0\0����\0\0�\0\0\0\r\0\0\0\n小明的\0\0\0\0����\0\0R\0\0\0\0\0\0海门皇马苏宁\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�[:��\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�[5�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�[8�+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�[2m^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[:��\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�[3O�\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0	\0\0\0\0\0�\0	\0\0\0\0\0�\0\0	\0\0\0�\0\0	\0\0\0�\0\0\0\0\0�\0\0\0	\0\0�\0\0\n\0\0\0�\0\0\0\0\0\0\0�\0\0\0\0\n\0\0\0�\0\0\0\0\n\0\0\0[7�\0\0��\0�\0������������������������������\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�1\0\0\0\0\0[@�[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\Z\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0u\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0=\0\0���\0\0\0\0\0\0\0\0\0\0z\0\0\0\0�\0\0\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\0\0�\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[8ء\0\0\0\0\0�\0\0\0\0\0\0`\0\0\0\0\0\0�\0\0\0\0\0\0&\0\0\0\0\0\0l\0\0\0\0\0\0�\0\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\0\0\0\0\0[5\0\0\0\0\0\0\0\0\0\0\0\0\0[7�\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0~\0\0\0\0\0\0\0[:L\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[:L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0\0\0\0\0\0d\0\0\00\0\0\0�\0\0\0\0\0\0\0}\0\0\0>\0\0\0\0\0\0�\0\0\0	\0\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�,\0\0�\0\0\0\0\n\0\0\0\0\0,\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0 \0\0\0d\0\0\0*\0\0,\0\0\0-\0\0�\0\0\0/\0\0�\0\0\0\00\0\0�\0[7�,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[7�L[7�\0\0U�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',324,'\0\0\0\0\0w\0\0s{[ [==[createtime]==] ]=1529824724,[ [==[guide]==] ]={[ 2 ]={[ [==[step]==] ]=[==[liansai]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=2,},[ 5 ]={[ [==[step]==] ]=[==[jiaoyi]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=1,},[ 3 ]={[ [==[step]==] ]=[==[texun]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=2,},[ 7 ]={[ [==[step]==] ]=[==[gupiao]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=1,},[ 1 ]={[ [==[step]==] ]=[==[start]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=15,},[ 4 ]={[ [==[step]==] ]=[==[coach]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=3,},[ 6 ]={[ [==[step]==] ]=[==[cup]==],[ [==[isEnd]==] ]=true,[ [==[tag]==] ]=1,},},}',0,'\0\09\0\0#\0\0\0\0:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z\0@\0F\0i\0P\0o\0w\0q\0r\0j\0p\0d\0i\0i\0m\0m\0a\0k\0%\0*\0)\0*\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\0u\0w\0p\0h\0�\0�\0�\0�\0p\0�\0t\0�\0�\0�\0�\0�\0�\07\07\07\08\08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0t\0r\0w\0x\0\0�\0�\0�\0�\0{\0�\0\\\0r\0u\0x\08\0w\0:\0)\0/\0,\0)\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0T\0�\0^\0D\0F\0D\0@\0A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0�\0\0\0\0\0\0\0\0\0o\0�\0s\0s\0r\0w\0s\0|\0u\0{\0}\0�\0�\0{\0r\0w\0�\0n\0,\0/\0+\0-\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0`\0q\0f\0t\0o\0q\0�\0�\0q\0�\0�\0�\0�\0i\0[\0g\0m\0Y\0-\0,\0+\0-\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\n\0_\0x\0n\0j\0o\0l\0q\0{\0k\0{\0|\0�\0�\0j\0g\0d\0y\0I\0)\0\'\0\'\0-\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0|\0�\0|\0}\0z\0�\0�\0�\0�\0�\0�\0�\0�\0�\0z\0�\0�\0z\0:\0;\0;\0;\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0v�\0\0\0	\0\0\0\0\0\0\0y\0Z\0T\0]\0\\\0q\0p\0y\0r\0^\0r\0o\0p\0�\0|\0x\0e\0w\0-\0-\0.\0)\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\03\04\0+\0=\0^\0S\0j\0L\0,\0<\01\0A\0u\0k\0,\0O\0,\0z\0x\0z\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0\0\0\0\0�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0p\0w\0c\0x\0n\0~\0\0�\0|\0w\0}\0y\0|\0{\0u\0}\0x\0}\0*\0.\0.\02\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0D\0\0\0[7�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\0:\0\0\0\0\0\0\0\0\0\0\0\0\0','\0\09\0\0\0\0\0\0\0\0\0',13850,0,5);
/*!40000 ALTER TABLE `RoleData` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-02  7:16:37