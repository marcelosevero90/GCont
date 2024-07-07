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
-- Table structure for table `gcEmpresa`
--

DROP TABLE IF EXISTS `gcEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcEmpresa` (
  `codEmpresa` int(11) NOT NULL,
  `razaoSocial` varchar(100) NOT NULL,
  `cgc` varchar(45) NOT NULL,
  `situacao` int(11) NOT NULL DEFAULT '1' COMMENT '1-Ativo\n2-Inativo',
  `nomeFantasia` varchar(100) DEFAULT NULL,
  `inscEstadual` varchar(15) DEFAULT NULL,
  `imagemLogin` varchar(100) DEFAULT NULL,
  `imagemMenu` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `codCidade` int(11) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `nroEndereco` varchar(10) DEFAULT NULL,
  `tpPrecoPadraoOS` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`codEmpresa`),
  KEY `chCGC` (`cgc`),
  KEY `chSit` (`situacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcEmpresa`
--

LOCK TABLES `gcEmpresa` WRITE;
/*!40000 ALTER TABLE `gcEmpresa` DISABLE KEYS */;
INSERT INTO `gcEmpresa` VALUES (1,'FMS SISTEMAS','12345678901234',1,'FMS SISTEMAS 777','ISENTO','images.jpg','images.jpg','fefwefwe','12312312ewq21ddddwer',2,'rubdfb1111','12312','dasds','1231231222ddddddd','12321',1);
/*!40000 ALTER TABLE `gcEmpresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 16:46:39
