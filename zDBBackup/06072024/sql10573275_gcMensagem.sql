-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: sql10.freemysqlhosting.net    Database: sql10573275
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

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
-- Table structure for table `gcMensagem`
--

DROP TABLE IF EXISTS `gcMensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcMensagem` (
  `idMensagem` int(11) NOT NULL,
  `codEmpresa` int(11) NOT NULL,
  `dtIniValid` date NOT NULL,
  `dtFimValid` date NOT NULL,
  `mensagem` varchar(2000) CHARACTER SET latin1 NOT NULL,
  `importante` int(11) NOT NULL DEFAULT '0' COMMENT '0-Não\n1-Sim',
  `titulo` varchar(100) NOT NULL,
  PRIMARY KEY (`idMensagem`),
  KEY `chMsgPrinc` (`codEmpresa`,`dtIniValid`,`dtFimValid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcMensagem`
--

LOCK TABLES `gcMensagem` WRITE;
/*!40000 ALTER TABLE `gcMensagem` DISABLE KEYS */;
INSERT INTO `gcMensagem` VALUES (1,0,'2024-06-23','2024-06-25','teste',0,'teste mensamge'),(2,1,'2024-06-23','2024-06-25','ksepoaseopasokpekopasokpeaop',1,'mensagem importante'),(3,1,'2024-06-29','2024-06-29','kkkk',0,'nao aparece');
/*!40000 ALTER TABLE `gcMensagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 16:46:51
