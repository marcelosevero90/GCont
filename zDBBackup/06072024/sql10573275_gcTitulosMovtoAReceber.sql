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
-- Table structure for table `gcTitulosMovtoAReceber`
--

DROP TABLE IF EXISTS `gcTitulosMovtoAReceber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcTitulosMovtoAReceber` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codTituloAReceber` int(11) NOT NULL,
  `sequencia` int(11) NOT NULL,
  `tipoMovto` int(11) NOT NULL COMMENT '1-Implantação\n2-Alteração\n3-Cancelamento\n9-Liquidação',
  `descricao` varchar(200) NOT NULL,
  `dtMovto` date NOT NULL,
  `codUsuarMovto` varchar(20) NOT NULL,
  `valorMovto` decimal(15,2) NOT NULL,
  `descHistorico` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codTituloAReceber`,`sequencia`),
  KEY `chDtMov` (`codEmpresa`,`codEstabel`,`dtMovto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcTitulosMovtoAReceber`
--

LOCK TABLES `gcTitulosMovtoAReceber` WRITE;
/*!40000 ALTER TABLE `gcTitulosMovtoAReceber` DISABLE KEYS */;
INSERT INTO `gcTitulosMovtoAReceber` VALUES (1,0,1,1,1,'Implantação','2024-06-30','ADMIN',22.00,NULL),(1,0,1,2,2,'Implantação','2024-07-04','ADMIN',22.00,'Alteração Manual'),(1,0,1,3,2,'Implantação','2024-07-04','ADMIN',55.00,'Alteração Manual'),(1,0,3,1,1,'Implantação','2024-07-04','ADMIN',24.00,'Alteração Manual'),(1,0,3,2,3,'Cancelamento','2024-07-04','ADMIN',24.00,'Alteração Manual'),(1,0,4,1,1,'Implantação','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,2,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,3,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,4,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,5,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,6,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,7,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,8,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,9,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,10,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,11,2,'Liquidação','2024-07-05','ADMIN',1250.62,'Liquidação'),(1,0,4,12,1,'Estorno','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,13,2,'Alteração','2024-07-05','ADMIN',1231.00,'Alteração Manual'),(1,0,4,14,2,'Liquidação','2024-07-05','ADMIN',1250.62,'Liquidação');
/*!40000 ALTER TABLE `gcTitulosMovtoAReceber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-06 16:46:46
