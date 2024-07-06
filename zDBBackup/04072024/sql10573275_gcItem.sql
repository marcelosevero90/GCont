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
-- Table structure for table `gcItem`
--

DROP TABLE IF EXISTS `gcItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcItem` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codItem` varchar(25) CHARACTER SET latin1 NOT NULL,
  `descricao` varchar(100) CHARACTER SET latin1 NOT NULL,
  `codItemFamilia` int(11) DEFAULT NULL,
  `dataImplantacao` date DEFAULT NULL,
  `tipoControle` int(11) NOT NULL DEFAULT '1' COMMENT '1-Serviço\n2-Total',
  `situacao` int(11) NOT NULL DEFAULT '1' COMMENT '1-Ativo\n2-Inativo',
  `un` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codItem`),
  KEY `chFamilia_idx` (`codEmpresa`,`codEstabel`,`codItemFamilia`),
  KEY `chUn_idx` (`codEmpresa`,`codEstabel`,`un`),
  CONSTRAINT `chUn` FOREIGN KEY (`codEmpresa`, `codEstabel`, `un`) REFERENCES `gcUnidMedida` (`codEmpresa`, `codEstabel`, `un`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `chFamilia` FOREIGN KEY (`codEmpresa`, `codEstabel`, `codItemFamilia`) REFERENCES `gcItemFamilia` (`codEmpresa`, `codEstabel`, `codItemFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcItem`
--

LOCK TABLES `gcItem` WRITE;
/*!40000 ALTER TABLE `gcItem` DISABLE KEYS */;
INSERT INTO `gcItem` VALUES (1,0,'1','SERVIÇO MAQUINA 1',1,'2024-06-22',1,1,'LT'),(1,0,'2','SERVIÇO MAQUINA 2',1,'2024-06-22',1,1,NULL),(1,0,'BBBB','FBDFBDF',2,'2024-06-24',2,1,'GGG'),(1,0,'JGHCJGJGGJF','GFJFGJFGJFG',NULL,'2024-06-24',1,1,NULL);
/*!40000 ALTER TABLE `gcItem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 19:30:52
