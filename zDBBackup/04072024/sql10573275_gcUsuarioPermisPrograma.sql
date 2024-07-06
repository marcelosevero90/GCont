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
-- Table structure for table `gcUsuarioPermisPrograma`
--

DROP TABLE IF EXISTS `gcUsuarioPermisPrograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcUsuarioPermisPrograma` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codUsuario` varchar(20) NOT NULL,
  `codPrograma` varchar(100) NOT NULL,
  `tipoAcesso` varchar(45) NOT NULL DEFAULT '1' COMMENT '1-Tela\n2-Processo',
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codUsuario`,`codPrograma`),
  CONSTRAINT `chUsuario` FOREIGN KEY (`codEmpresa`, `codEstabel`, `codUsuario`) REFERENCES `gcUsuarioMestre` (`codEmpresa`, `codEstabel`, `codUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcUsuarioPermisPrograma`
--

LOCK TABLES `gcUsuarioPermisPrograma` WRITE;
/*!40000 ALTER TABLE `gcUsuarioPermisPrograma` DISABLE KEYS */;
INSERT INTO `gcUsuarioPermisPrograma` VALUES (1,0,'ADMIN','BANCOS','1'),(1,0,'ADMIN','CONDIÇÕES DE PAGAMENTO','1'),(1,0,'ADMIN','CONSULTA ORDENS DE SERVIÇO','1'),(1,0,'ADMIN','EFETIVA CANCELA OS','2'),(1,0,'ADMIN','EMITENTES','1'),(1,0,'ADMIN','FAMÍLIA ITENS','1'),(1,0,'ADMIN','FORMAS DE PAGAMENTO','1'),(1,0,'ADMIN','ITENS','1'),(1,0,'ADMIN','ITENS FORNECEDORES','1'),(1,0,'ADMIN','MANUTENÇÃO ORDEM DE SERVIÇO','1'),(1,0,'ADMIN','MANUTENÇÃO TÍTULOS A RECEBER','1'),(1,0,'ADMIN','MÁQUINAS/EQUIPAMENTOS','1'),(1,0,'ADMIN','OPERADORES','1'),(1,0,'ADMIN','PORTADORES FINANCEIRO','1'),(1,0,'ADMIN','TABELAS DE PREÇO','1'),(1,0,'ADMIN','TIPO PREÇO OS','2'),(1,0,'ADMIN','UNIDADES DE MEDIDA','1'),(1,0,'LUCAS','BANCOS','1'),(1,0,'LUCAS','CONSULTA ORDENS DE SERVIÇO','1'),(1,0,'LUCAS','PORTADORES FINANCEIRO','1'),(1,0,'LUCAS','TABELAS DE PREÇO','1');
/*!40000 ALTER TABLE `gcUsuarioPermisPrograma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 19:30:53
