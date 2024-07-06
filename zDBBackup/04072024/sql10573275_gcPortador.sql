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
-- Table structure for table `gcPortador`
--

DROP TABLE IF EXISTS `gcPortador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcPortador` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codPortador` int(11) NOT NULL,
  `nomePortador` varchar(50) NOT NULL,
  `codBanco` int(11) DEFAULT NULL,
  `agencia` varchar(20) DEFAULT NULL,
  `contaCorrente` varchar(20) DEFAULT NULL,
  `tipoPortador` int(11) NOT NULL DEFAULT '1' COMMENT '1-Caixa\n2-Banco',
  `vlSaldoInicial` decimal(15,2) NOT NULL DEFAULT '0.00',
  `vlSaldoAtual` decimal(15,2) NOT NULL DEFAULT '0.00',
  `percMultaAtraso` decimal(15,2) DEFAULT '0.00',
  `percJuroDia` decimal(15,2) DEFAULT '0.00',
  `percDesctoAntecip` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`codEmpresa`,`codPortador`,`codEstabel`),
  KEY `chBanco_idx` (`codEmpresa`,`codEstabel`,`codBanco`),
  CONSTRAINT `chBanco` FOREIGN KEY (`codEmpresa`, `codEstabel`, `codBanco`) REFERENCES `gcBanco` (`codEmpresa`, `codEstabel`, `codBanco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcPortador`
--

LOCK TABLES `gcPortador` WRITE;
/*!40000 ALTER TABLE `gcPortador` DISABLE KEYS */;
INSERT INTO `gcPortador` VALUES (1,0,2,'CAIXA',NULL,NULL,NULL,1,123.00,562.58,0.00,0.00,0.00),(1,0,3,'BB 23423',3,'3423','23423',2,1000.00,1000.00,2.00,0.00,0.00);
/*!40000 ALTER TABLE `gcPortador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 19:30:46
