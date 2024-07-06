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
-- Table structure for table `gcUsuarioMestre`
--

DROP TABLE IF EXISTS `gcUsuarioMestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcUsuarioMestre` (
  `codEmpresa` int(11) NOT NULL,
  `codEstabel` int(11) NOT NULL,
  `codUsuario` varchar(20) NOT NULL,
  `nomeUsuario` varchar(100) NOT NULL,
  `senhaUsuario` varchar(100) NOT NULL,
  `tipoUsuario` int(11) NOT NULL COMMENT '1-Comum\n2-Admin',
  `altSenhaProxAcesso` int(11) NOT NULL DEFAULT '1' COMMENT '1-Sim\\n0-Nao',
  `dataUltAltAcesso` date DEFAULT NULL,
  `situacao` int(11) NOT NULL DEFAULT '1' COMMENT '1-Ativo\n2-Inativo',
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codEmpresa`,`codEstabel`,`codUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcUsuarioMestre`
--

LOCK TABLES `gcUsuarioMestre` WRITE;
/*!40000 ALTER TABLE `gcUsuarioMestre` DISABLE KEYS */;
INSERT INTO `gcUsuarioMestre` VALUES (1,0,'ADMIN','MARCELO SEVERO 12','202CB962AC59075B964B07152D234B70',2,0,'2024-06-19',1,'marcelo@teste.com','88558866'),(1,0,'LUCAS','LUCS TESTE 123','BCBE3365E6AC95EA2C0343A2395834DD',1,0,'2024-06-20',1,NULL,NULL),(1,0,'TESTE','TETE DD','202CB962AC59075B964B07152D234B70',2,1,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `gcUsuarioMestre` ENABLE KEYS */;
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
