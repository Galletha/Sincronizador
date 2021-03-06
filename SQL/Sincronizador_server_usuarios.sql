CREATE DATABASE  IF NOT EXISTS `Sincronizador` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Sincronizador`;
-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Sincronizador
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `server_usuarios`
--

DROP TABLE IF EXISTS `server_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_usuarios` (
  `idnew_table` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(255) NOT NULL,
  `correo_usuario` varchar(255) NOT NULL,
  `password_usuario` varchar(255) NOT NULL,
  `public_key` varchar(255) NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `rol_usuario` varchar(45) NOT NULL,
  `empresa_usuario` varchar(255) NOT NULL,
  `status_usuario` varchar(45) NOT NULL DEFAULT 'inactivo',
  PRIMARY KEY (`idnew_table`,`public_key`,`rol_usuario`,`correo_usuario`),
  UNIQUE KEY `idnew_table_UNIQUE` (`idnew_table`),
  UNIQUE KEY `correo_usuario_UNIQUE` (`correo_usuario`),
  UNIQUE KEY `secret_key_UNIQUE` (`secret_key`),
  UNIQUE KEY `public_key_UNIQUE` (`public_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_usuarios`
--

LOCK TABLES `server_usuarios` WRITE;
/*!40000 ALTER TABLE `server_usuarios` DISABLE KEYS */;
INSERT INTO `server_usuarios` VALUES (1,'test user','test@test.com','prueba123','A1234567.','qwerty1234567','1','1','activo');
/*!40000 ALTER TABLE `server_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 15:24:03
