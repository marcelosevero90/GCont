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
-- Table structure for table `gcTitulosAReceber`
--

DROP TABLE IF EXISTS `gcTitulosAReceber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcTitulosAReceber` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codTituloAReceber` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `codEmitente` int(11) NOT NULL,
  `codFormaPagto` int(11) DEFAULT NULL,
  `situacao` int(11) NOT NULL COMMENT '1-Aberta\n2-Cancela\n9-Liquidada',
  `dtVencimento` date NOT NULL,
  `dtEmissao` date NOT NULL,
  `dtTransacao` date NOT NULL,
  `codUsuarImplant` varchar(20) NOT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `valorOriginal` decimal(15,2) NOT NULL,
  `valorTituloReceber` decimal(15,2) NOT NULL,
  `valorDesconto` decimal(15,2) DEFAULT NULL,
  `valorJuros` decimal(15,2) DEFAULT NULL,
  `valorMulta` decimal(15,2) DEFAULT NULL,
  `codPortador` int(11) DEFAULT NULL,
  `doctoReferencia` varchar(100) DEFAULT NULL,
  `indOrigem` int(11) NOT NULL COMMENT '1-OS\n9-Manual',
  `codOrdemServico` int(11) DEFAULT NULL,
  `codUsuarLiquid` varchar(20) DEFAULT NULL,
  `dtCancelamento` date DEFAULT NULL,
  `dtLiquidacao` date DEFAULT NULL,
  `codUsuarCancela` varchar(20) DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `percMultaAtraso` decimal(15,2) DEFAULT NULL,
  `percJuroDia` decimal(15,2) DEFAULT NULL,
  `percDesctoAntecip` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codTituloAReceber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcTitulosAReceber`
--

LOCK TABLES `gcTitulosAReceber` WRITE;
/*!40000 ALTER TABLE `gcTitulosAReceber` DISABLE KEYS */;
INSERT INTO `gcTitulosAReceber` VALUES (1,0,1,'',1,1,9,'2024-06-30','2024-06-30','2024-06-30','ADMIN',NULL,22.00,22.00,NULL,NULL,NULL,2,'OS-3',1,3,NULL,NULL,NULL,NULL,1,0.00,0.00,0.00);
/*!40000 ALTER TABLE `gcTitulosAReceber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 19:30:48
