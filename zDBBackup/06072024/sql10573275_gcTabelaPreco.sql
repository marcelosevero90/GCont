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
-- Table structure for table `gcTabelaPreco`
--

DROP TABLE IF EXISTS `gcTabelaPreco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcTabelaPreco` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codTabPreco` int(11) NOT NULL,
  `nomeTabPreco` varchar(50) CHARACTER SET latin1 NOT NULL,
  `dtIniValidade` date NOT NULL,
  `dtFimValidade` date NOT NULL,
  `situacao` int(11) NOT NULL DEFAULT '1' COMMENT '1-Ativo\n2-Inativo',
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codTabPreco`),
  KEY `chNome` (`codEmpresa`,`codEstabel`,`nomeTabPreco`),
  KEY `chPeriodo` (`codEmpresa`,`codEstabel`,`dtIniValidade`,`dtFimValidade`),
  KEY `chSit` (`codEmpresa`,`codEstabel`,`situacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcTabelaPreco`
--

LOCK TABLES `gcTabelaPreco` WRITE;
/*!40000 ALTER TABLE `gcTabelaPreco` DISABLE KEYS */;
INSERT INTO `gcTabelaPreco` VALUES (1,0,1,'TETERTER111111111 YYY','2024-06-22','2025-04-02',1),(1,0,3,'FDFDFD TTTT','2024-06-22','2024-12-05',2),(1,0,4,'RGGSFGSDFGSD','2024-06-24','2025-06-24',1);
/*!40000 ALTER TABLE `gcTabelaPreco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 16:46:43
