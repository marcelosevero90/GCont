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
-- Table structure for table `gcOrdemServico`
--

DROP TABLE IF EXISTS `gcOrdemServico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcOrdemServico` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codOrdemServico` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `observacao` varchar(1000) DEFAULT NULL,
  `tipoOrdem` int(11) NOT NULL DEFAULT '1',
  `dataImplantacao` date NOT NULL,
  `valorTotal` decimal(15,2) DEFAULT '0.00',
  `situacao` int(11) NOT NULL DEFAULT '1' COMMENT '1-Aberta\n2-Concluída\n3-Cancelada',
  `dataConclusao` date DEFAULT NULL,
  `codOperador` int(11) NOT NULL,
  `codEmitente` int(11) NOT NULL,
  `codLocal` varchar(20) NOT NULL,
  `codFormaPagto` int(11) DEFAULT NULL,
  `codCondPagto` int(11) NOT NULL,
  `tipoPreco` int(11) NOT NULL DEFAULT '1' COMMENT '1-Tabela Preço\n2-Informado',
  `codTabPreco` int(11) DEFAULT NULL,
  `codMaqEquip` int(11) NOT NULL,
  `motivoCancelamento` varchar(100) DEFAULT NULL,
  `dataCancelamento` date DEFAULT NULL,
  `msgAlerta` varchar(100) DEFAULT NULL,
  `codUsuarImplant` varchar(20) NOT NULL,
  `codUsuarCancelamento` varchar(20) DEFAULT NULL,
  `codPortador` int(11) DEFAULT NULL,
  `codUsuarConclusao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codOrdemServico`),
  KEY `chDesc` (`codEmpresa`,`codEstabel`,`descricao`),
  KEY `chDtImpl` (`codEmpresa`,`codEstabel`,`dataImplantacao`),
  KEY `chEmit` (`codEmpresa`,`codEstabel`,`codEmitente`),
  KEY `chFiltro` (`codEmpresa`,`codEstabel`,`codEmitente`,`codCondPagto`,`codTabPreco`,`codMaqEquip`,`codPortador`,`dataImplantacao`),
  KEY `chCondPag` (`codEmpresa`,`codEstabel`,`codCondPagto`),
  KEY `chOper` (`codEmpresa`,`codEstabel`,`codOperador`),
  KEY `chFormaPag` (`codEmpresa`,`codEstabel`,`codFormaPagto`),
  KEY `chMaqEquip` (`codEmpresa`,`codEstabel`,`codMaqEquip`),
  KEY `chTabPre` (`codEmpresa`,`codEstabel`,`codTabPreco`),
  KEY `chPort` (`codEmpresa`,`codEstabel`,`codPortador`),
  KEY `chSit` (`codEmpresa`,`codEstabel`,`situacao`),
  KEY `chLocal` (`codEmpresa`,`codEstabel`,`codEmitente`,`codLocal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcOrdemServico`
--

LOCK TABLES `gcOrdemServico` WRITE;
/*!40000 ALTER TABLE `gcOrdemServico` DISABLE KEYS */;
INSERT INTO `gcOrdemServico` VALUES (1,0,1,'TETE222','gsgsgsgsg\r\n',1,'2024-06-27',32.00,1,NULL,4,1,'PADROA',1,3,2,NULL,2,'gsdfgsdfgsdf\r\n','2024-06-28',NULL,'ADMIN','ADMIN',NULL,NULL),(1,0,2,'TETETETET',NULL,1,'2024-06-27',120.58,3,'2024-06-30',5,1,'INTERIOR',NULL,4,1,4,2,'mjhmh\r\n','2024-06-30',NULL,'ADMIN','ADMIN',2,'ADMIN'),(1,0,3,'SEM TAB',NULL,1,'2024-06-28',22.00,2,'2024-06-30',2,1,'INTERIOR',1,1,2,NULL,1,NULL,NULL,NULL,'ADMIN',NULL,2,'ADMIN'),(1,0,4,'TESTE',NULL,1,'2024-06-29',77.00,3,'2024-06-30',4,1,'PADROA',1,4,1,4,1,'fdfsdf\r\n','2024-06-30',NULL,'ADMIN','ADMIN',2,'ADMIN'),(1,0,5,'TTTTT','gdgdgsdgssgs\r\n',1,'2024-07-06',120.00,1,NULL,4,1,'INTERIOR',2,4,1,4,3,NULL,NULL,NULL,'ADMIN',NULL,NULL,NULL);
/*!40000 ALTER TABLE `gcOrdemServico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 16:46:48
