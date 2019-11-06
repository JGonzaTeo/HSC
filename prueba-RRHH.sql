CREATE DATABASE  IF NOT EXISTS `proyectogeneral` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `proyectogeneral`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyectogeneral
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.34-MariaDB

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
-- Table structure for table `ayuda`
--

DROP TABLE IF EXISTS `ayuda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ayuda` (
  `Id_ayuda` int(11) NOT NULL,
  `Ruta` text COLLATE utf8_unicode_ci NOT NULL,
  `indice` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayuda`
--

LOCK TABLES `ayuda` WRITE;
/*!40000 ALTER TABLE `ayuda` DISABLE KEYS */;
INSERT INTO `ayuda` VALUES (1,'Página web ayuda/ayuda.chm','menu.html'),(2,'Página web ayuda/ayuda.chm','Menúboletos.html'),(3,'ayuda.chm','menuhtml'),(4,'AyudaConsultas','creacion'),(5,'Página web ayuda/AyudasRRHH.chm','Mantenimientos'),(6,'Página web ayuda/Ayuda-Rhhh.chm','Areas'),(7,'Página web ayuda/Ayuda-Rhhh.chm','Conceptos'),(8,'Página web ayuda/Ayuda-Rhhh.chm','Mantenimientos/Conceptos'),(9,'Página web ayuda/Ayuda-Rhhh.chm','Areas.html'),(10,'Página web ayuda/Ayuda-Rhhh.chm','Area.html'),(11,'Página web ayuda/Ayuda-Rhhh.chm','Conceptos.html'),(12,'Página web ayuda/Ayuda-Rhhh.chm','Departamentos.html'),(13,'Página web ayuda/Ayuda-Rhhh.chm','Empleados.html'),(14,'Página web ayuda/Ayuda-Rhhh.chm','Prueba.html'),(15,'Página web ayuda/Ayuda-Rhhh.chm','Puestos.html'),(16,'Página web ayuda/Ayuda-Rhhh.chm','Roles de pago.html');
/*!40000 ALTER TABLE `ayuda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_acreedor`
--

DROP TABLE IF EXISTS `tbl_acreedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_acreedor` (
  `KidAcreedor` int(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidAcreedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_acreedor`
--

LOCK TABLES `tbl_acreedor` WRITE;
/*!40000 ALTER TABLE `tbl_acreedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_acreedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aplicacion`
--

DROP TABLE IF EXISTS `tbl_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_aplicacion` (
  `PK_id_aplicacion` int(11) NOT NULL,
  `PK_id_modulo` int(11) NOT NULL,
  `nombre_aplicacion` varchar(45) DEFAULT NULL,
  `descripcion_aplicacion` varchar(200) DEFAULT NULL,
  `estado_aplicacion` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_aplicacion`,`PK_id_modulo`),
  KEY `fk_Aplicacion_Modulo` (`PK_id_modulo`),
  CONSTRAINT `fk_Aplicacion_Modulo` FOREIGN KEY (`PK_id_modulo`) REFERENCES `tbl_modulo` (`PK_id_Modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aplicacion`
--

LOCK TABLES `tbl_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_aplicacion` DISABLE KEYS */;
INSERT INTO `tbl_aplicacion` VALUES (1,1,'RRHH','23JHDS',1);
/*!40000 ALTER TABLE `tbl_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_areas`
--

DROP TABLE IF EXISTS `tbl_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_areas` (
  `KidArea` int(11) NOT NULL,
  `nombreArea` varchar(45) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_areas`
--

LOCK TABLES `tbl_areas` WRITE;
/*!40000 ALTER TABLE `tbl_areas` DISABLE KEYS */;
INSERT INTO `tbl_areas` VALUES (1,'Contabilidad',0),(2,'Recursos Humanos',1);
/*!40000 ALTER TABLE `tbl_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacion_empleado`
--

DROP TABLE IF EXISTS `tbl_asignacion_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_asignacion_empleado` (
  `KidPoliza` int(11) NOT NULL,
  `KidComisiones` int(11) NOT NULL,
  `KidEmpleados` int(11) NOT NULL,
  PRIMARY KEY (`KidPoliza`,`KidComisiones`),
  KEY `fk_Ventas_has_Comisiones_Comisiones1` (`KidComisiones`),
  KEY `fk_Asignacion_Empleado_Empleados1` (`KidEmpleados`),
  CONSTRAINT `fk_Asignacion_Empleado_Empleados1` FOREIGN KEY (`KidEmpleados`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_has_Comisiones_Comisiones1` FOREIGN KEY (`KidComisiones`) REFERENCES `tbl_comisiones` (`KidComisiones`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_has_Comisiones_Ventas1` FOREIGN KEY (`KidPoliza`) REFERENCES `tbl_poliza` (`KidPoliza`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacion_empleado`
--

LOCK TABLES `tbl_asignacion_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_asignacion_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_balancegeneral_detalle`
--

DROP TABLE IF EXISTS `tbl_balancegeneral_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_balancegeneral_detalle` (
  `KidBalanceGeneral` int(11) NOT NULL,
  `KidCuentaContable` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`KidBalanceGeneral`,`KidCuentaContable`),
  KEY `fk_tbl_BalanceGeneral_Detalle_tbl_cuentas_contables1` (`KidCuentaContable`),
  CONSTRAINT `fk_tbl_BalanceGeneral_Detalle_tbl_BalanceGeneral_Encabezado1` FOREIGN KEY (`KidBalanceGeneral`) REFERENCES `tbl_balancegeneral_encabezado` (`KidBalanceGeneral`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_BalanceGeneral_Detalle_tbl_cuentas_contables1` FOREIGN KEY (`KidCuentaContable`) REFERENCES `tbl_cuentas` (`KidCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_balancegeneral_detalle`
--

LOCK TABLES `tbl_balancegeneral_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_balancegeneral_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_balancegeneral_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_balancegeneral_encabezado`
--

DROP TABLE IF EXISTS `tbl_balancegeneral_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_balancegeneral_encabezado` (
  `KidBalanceGeneral` int(11) NOT NULL AUTO_INCREMENT,
  `capital` float DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidBalanceGeneral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_balancegeneral_encabezado`
--

LOCK TABLES `tbl_balancegeneral_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_balancegeneral_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_balancegeneral_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bancos`
--

DROP TABLE IF EXISTS `tbl_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bancos` (
  `KidBanco` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidBanco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bancos`
--

LOCK TABLES `tbl_bancos` WRITE;
/*!40000 ALTER TABLE `tbl_bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bancotalento`
--

DROP TABLE IF EXISTS `tbl_bancotalento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bancotalento` (
  `KidBancoTalento` int(11) NOT NULL,
  `nombre_candidato` varchar(45) DEFAULT NULL,
  `apellido_candidato` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `correoelectronico` varchar(45) DEFAULT NULL,
  `KidReporteVacante` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidBancoTalento`),
  KEY `FK_encabezadoReporteVacante_BancoTalento` (`KidReporteVacante`),
  CONSTRAINT `FK_encabezadoReporteVacante_BancoTalento` FOREIGN KEY (`KidReporteVacante`) REFERENCES `tbl_encabezadoreportevacante` (`KidReporteVacante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bancotalento`
--

LOCK TABLES `tbl_bancotalento` WRITE;
/*!40000 ALTER TABLE `tbl_bancotalento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bancotalento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bitacora`
--

DROP TABLE IF EXISTS `tbl_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bitacora` (
  `PK_id_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `PK_id_usuario` varchar(25) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `host` varchar(45) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `tabla` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_id_bitacora`,`PK_id_usuario`),
  KEY `fk_Bitacora_Usuario1` (`PK_id_usuario`),
  CONSTRAINT `fk_Bitacora_Usuario1` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacora`
--

LOCK TABLES `tbl_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_bitacora` VALUES (1,'MiUsuario','2019-11-04','11:40:07','JosePc','192.168.0.17','Se logeo al sistema','Login'),(2,'MiUsuario','2019-11-04','11:43:03','JosePc','192.168.0.17','Se logeo al sistema','Login'),(3,'MiUsuario','2019-11-04','11:43:11','JosePc','192.168.0.17','Se creó un nuevo registro','tbl_categorias_habitacion'),(4,'MiUsuario','2019-11-04','11:43:30','JosePc','192.168.0.17','Creacion de Consulta','Consultas'),(5,'MiUsuario','2019-11-04','11:43:33','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(6,'MiUsuario','2019-11-04','11:45:42','JosePc','192.168.0.17','Se logeo al sistema','Login'),(7,'MiUsuario','2019-11-04','11:45:44','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(8,'MiUsuario','2019-11-04','11:46:39','JosePc','192.168.0.17','Creacion de Consulta','Consultas'),(9,'MiUsuario','2019-11-04','11:46:47','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(10,'MiUsuario','2019-11-04','11:47:06','JosePc','192.168.0.17','Creacion de Consulta','Consultas'),(11,'MiUsuario','2019-11-04','11:47:31','JosePc','192.168.0.17','Creacion de Consulta','Consultas'),(12,'MiUsuario','2019-11-04','11:47:33','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(13,'MiUsuario','2019-11-04','11:50:56','JosePc','192.168.0.17','Se logeo al sistema','Login'),(14,'MiUsuario','2019-11-04','11:51:04','JosePc','192.168.0.17','Se creó un nuevo registro','tbl_categorias_habitacion'),(15,'MiUsuario','2019-11-04','11:51:13','JosePc','192.168.0.17','Se eliminó un registro','tbl_categorias_habitacion'),(16,'MiUsuario','2019-11-04','11:51:18','JosePc','192.168.0.17','Se actualizó un registro','tbl_categorias_habitacion'),(17,'MiUsuario','2019-11-04','11:51:21','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(18,'MiUsuario','2019-11-04','11:55:32','JosePc','192.168.0.17','Se logeo al sistema','Login'),(19,'MiUsuario','2019-11-05','12:00:03','JosePc','192.168.0.17','Se logeo al sistema','Login'),(20,'MiUsuario','2019-11-05','12:25:49','JosePc','192.168.0.17','Se logeo al sistema','Login'),(21,'MiUsuario','2019-11-05','12:28:06','JosePc','192.168.0.17','Se logeo al sistema','Login'),(22,'MiUsuario','2019-11-05','12:28:27','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(23,'MiUsuario','2019-11-05','12:29:00','JosePc','192.168.0.17','Se creó un nuevo registro','tbl_conceptos'),(24,'MiUsuario','2019-11-05','12:29:03','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(25,'MiUsuario','2019-11-05','12:29:07','JosePc','192.168.0.17','Carga de Consultas','Consultas'),(26,'MiUsuario','2019-11-05','12:29:24','JosePc','192.168.0.17','Creacion de Consulta','Consultas'),(27,'MiUsuario','2019-11-05','12:29:50','JosePc','192.168.0.17','Creacion de Consulta','Consultas'),(28,'MiUsuario','2019-11-05','12:33:51','JosePc','192.168.0.17','Se logeo al sistema','Login'),(29,'MiUsuario','2019-11-05','12:48:15','JosePc','192.168.0.17','Se logeo al sistema','Login'),(30,'MiUsuario','2019-11-05','12:50:51','JosePc','192.168.0.17','Se logeo al sistema','Login'),(31,'MiUsuario','2019-11-05','12:58:48','JosePc','192.168.0.17','Se logeo al sistema','Login'),(32,'MiUsuario','2019-11-05','01:31:40','JosePc','192.168.0.17','Se logeo al sistema','Login'),(33,'MiUsuario','2019-11-05','01:31:56','JosePc','192.168.0.17','Se logeo al sistema','Login'),(34,'MiUsuario','2019-11-05','01:32:09','JosePc','192.168.0.17','Se creó un nuevo registro','tbl_areas'),(35,'MiUsuario','2019-11-05','01:32:24','JosePc','192.168.0.17','Se eliminó un registro','tbl_areas'),(36,'MiUsuario','2019-11-05','07:42:28','JosePc','192.168.97.61','Se logeo al sistema','Login'),(37,'MiUsuario','2019-11-05','07:54:51','JosePc','192.168.97.61','Se logeo al sistema','Login'),(38,'MiUsuario','2019-11-05','08:01:11','JosePc','192.168.97.61','Se creó un nuevo registro','tbl_pruebas'),(39,'MiUsuario','2019-11-05','08:03:30','JosePc','192.168.97.61','Se creó un nuevo registro','tbl_pruebas'),(40,'MiUsuario','2019-11-05','08:03:38','JosePc','192.168.97.61','Se eliminó un registro','tbl_pruebas'),(41,'MiUsuario','2019-11-05','08:07:44','JosePc','192.168.97.61','Se creó un nuevo registro','tbl_roles_de_pago'),(42,'MiUsuario','2019-11-05','08:11:01','JosePc','192.168.97.61','Se creó un nuevo registro','tbl_roles_de_pago'),(43,'MiUsuario','2019-11-05','08:11:10','JosePc','192.168.97.61','Se eliminó un registro','tbl_roles_de_pago'),(44,'MiUsuario','2019-11-05','08:23:32','JosePc','192.168.97.61','Se logeo al sistema','Login'),(45,'MiUsuario','2019-11-05','08:31:13','JosePc','192.168.97.61','Se logeo al sistema','Login'),(46,'MiUsuario','2019-11-05','08:57:43','JosePc','192.168.97.61','Se logeo al sistema','Login'),(47,'MiUsuario','2019-11-05','09:01:04','JosePc','192.168.97.61','Se logeo al sistema','Login'),(48,'MiUsuario','2019-11-05','09:09:13','JosePc','169.254.22.235','Se logeo al sistema','Login'),(49,'MiUsuario','2019-11-05','09:12:13','JosePc','192.168.97.61','Se logeo al sistema','Login'),(50,'MiUsuario','2019-11-05','09:12:59','JosePc','192.168.97.61','Carga de Consultas','Consultas'),(51,'MiUsuario','2019-11-05','09:13:03','JosePc','192.168.97.61','Carga de Consultas','Consultas'),(52,'MiUsuario','2019-11-05','09:17:33','JosePc','192.168.97.61','Se logeo al sistema','Login'),(53,'MiUsuario','2019-11-05','09:23:44','JosePc','192.168.97.61','Se logeo al sistema','Login'),(54,'MiUsuario','2019-11-05','11:20:58','JosePc','192.168.97.61','Se logeo al sistema','Login'),(55,'MiUsuario','2019-11-05','11:22:51','JosePc','192.168.97.61','Se logeo al sistema','Login'),(56,'MiUsuario','2019-11-05','11:25:16','JosePc','192.168.97.61','Se logeo al sistema','Login'),(57,'MiUsuario','2019-11-05','11:26:20','JosePc','192.168.97.61','Se logeo al sistema','Login'),(58,'MiUsuario','2019-11-05','11:28:21','JosePc','192.168.97.61','Se logeo al sistema','Login'),(59,'MiUsuario','2019-11-05','11:29:30','JosePc','192.168.97.61','Se logeo al sistema','Login'),(60,'MiUsuario','2019-11-05','11:38:26','JosePc','192.168.97.61','Se logeo al sistema','Login'),(61,'MiUsuario','2019-11-05','01:34:50','JosePc','192.168.0.17','Se logeo al sistema','Login'),(62,'MiUsuario','2019-11-05','01:45:33','JosePc','192.168.0.17','Se logeo al sistema','Login'),(63,'MiUsuario','2019-11-05','01:46:37','JosePc','192.168.0.17','Se logeo al sistema','Login'),(64,'MiUsuario','2019-11-05','01:51:27','JosePc','192.168.0.17','Se logeo al sistema','Login'),(65,'MiUsuario','2019-11-05','01:52:49','JosePc','192.168.0.17','Se logeo al sistema','Login');
/*!40000 ALTER TABLE `tbl_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bodega`
--

DROP TABLE IF EXISTS `tbl_bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bodega` (
  `KidBodega` int(16) NOT NULL,
  `KidSucursal` int(16) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `maxStock` int(3) DEFAULT NULL,
  `minStock` int(3) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidBodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bodega`
--

LOCK TABLES `tbl_bodega` WRITE;
/*!40000 ALTER TABLE `tbl_bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categorias_habitacion`
--

DROP TABLE IF EXISTS `tbl_categorias_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categorias_habitacion` (
  `KidCategoria` varchar(45) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categorias_habitacion`
--

LOCK TABLES `tbl_categorias_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_categorias_habitacion` DISABLE KEYS */;
INSERT INTO `tbl_categorias_habitacion` VALUES ('1',1),('2',1);
/*!40000 ALTER TABLE `tbl_categorias_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `proyectogeneral` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EstadoHabitaciones2` AFTER UPDATE ON `tbl_categorias_habitacion` FOR EACH ROW BEGIN
UPDATE tbl_habitaciones set estado = new.estado WHERE tbl_habitaciones.KidCategoria=new.KidCategoria;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `proyectogeneral` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Table structure for table `tbl_check_in`
--

DROP TABLE IF EXISTS `tbl_check_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_check_in` (
  `KidCheckIn` int(11) NOT NULL,
  `KidCliente` int(11) NOT NULL,
  `KidEmpleado` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidCheckIn`),
  KEY `fk_Tbl_Check_In_Tbl_Empleados1` (`KidEmpleado`),
  KEY `fk_Tbl_Check_In_Tbl_Clientes1` (`KidCliente`),
  CONSTRAINT `fk_Tbl_Check_In_Tbl_Clientes1` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Check_In_Tbl_Empleados1` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_check_in`
--

LOCK TABLES `tbl_check_in` WRITE;
/*!40000 ALTER TABLE `tbl_check_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_check_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_check_out`
--

DROP TABLE IF EXISTS `tbl_check_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_check_out` (
  `KidCheckOut` int(11) NOT NULL,
  `KidCliente` int(11) NOT NULL,
  `KidEmpleado` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidCheckOut`),
  KEY `fk_Tbl_Check_Out_Tbl_Clientes1` (`KidCliente`),
  KEY `fk_Tbl_Check_Out_Tbl_Empleados1` (`KidEmpleado`),
  CONSTRAINT `fk_Tbl_Check_Out_Tbl_Clientes1` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Check_Out_Tbl_Empleados1` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_check_out`
--

LOCK TABLES `tbl_check_out` WRITE;
/*!40000 ALTER TABLE `tbl_check_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_check_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chequera`
--

DROP TABLE IF EXISTS `tbl_chequera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_chequera` (
  `KidChequera` int(4) NOT NULL AUTO_INCREMENT,
  `KidCuentaBancaria` int(11) NOT NULL,
  `No_cheques` int(4) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`KidChequera`),
  KEY `FK_CuentaBancaria_Chequera` (`KidCuentaBancaria`),
  CONSTRAINT `FK_CuentaBancaria_Chequera` FOREIGN KEY (`KidCuentaBancaria`) REFERENCES `tbl_cuentabancaria` (`KidCuentaBancaria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chequera`
--

LOCK TABLES `tbl_chequera` WRITE;
/*!40000 ALTER TABLE `tbl_chequera` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chequera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clientes`
--

DROP TABLE IF EXISTS `tbl_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_clientes` (
  `KidCliente` int(11) NOT NULL,
  `nombres_cliente` varchar(45) DEFAULT NULL,
  `apellidos_cliente` varchar(45) DEFAULT NULL,
  `telefono_cliente` varchar(10) DEFAULT NULL,
  `direccion_cliente` text,
  `dpi_cliente` int(11) DEFAULT NULL,
  `nit_cliente` varchar(10) DEFAULT NULL,
  `contacto_cliente` varchar(45) DEFAULT NULL,
  `telefono_contacto` varchar(10) DEFAULT NULL,
  `KidTipoCliente` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidCliente`),
  KEY `fk_Cliente_TipoCliente` (`KidTipoCliente`),
  CONSTRAINT `fk_Cliente_TipoCliente` FOREIGN KEY (`KidTipoCliente`) REFERENCES `tbl_tipocliente` (`KidTipoCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clientes`
--

LOCK TABLES `tbl_clientes` WRITE;
/*!40000 ALTER TABLE `tbl_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comandas`
--

DROP TABLE IF EXISTS `tbl_comandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comandas` (
  `KidNumeroComanda` int(11) NOT NULL,
  `KidServicio` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroComanda`),
  KEY `service` (`KidServicio`),
  CONSTRAINT `service` FOREIGN KEY (`KidServicio`) REFERENCES `tbl_servicios` (`KidServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comandas`
--

LOCK TABLES `tbl_comandas` WRITE;
/*!40000 ALTER TABLE `tbl_comandas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comisiones`
--

DROP TABLE IF EXISTS `tbl_comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comisiones` (
  `KidComisiones` int(11) NOT NULL,
  `KidTipoProducto` int(11) NOT NULL,
  `fecha_comisiones` date DEFAULT NULL,
  `descripcion_comisiones` varchar(45) DEFAULT NULL,
  `monto_comisiones` double DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidComisiones`),
  KEY `fk_TipoProducto_Comisiones` (`KidTipoProducto`),
  CONSTRAINT `fk_TipoProducto_Comisiones` FOREIGN KEY (`KidTipoProducto`) REFERENCES `tbl_tipoproducto` (`KidTipoProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comisiones`
--

LOCK TABLES `tbl_comisiones` WRITE;
/*!40000 ALTER TABLE `tbl_comisiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conceptos`
--

DROP TABLE IF EXISTS `tbl_conceptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_conceptos` (
  `KidConcepto` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `naturalezaconcepto` varchar(45) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidConcepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conceptos`
--

LOCK TABLES `tbl_conceptos` WRITE;
/*!40000 ALTER TABLE `tbl_conceptos` DISABLE KEYS */;
INSERT INTO `tbl_conceptos` VALUES (1,'1','1',1,1),(2,'awer','2',2,1);
/*!40000 ALTER TABLE `tbl_conceptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conciliacion_bancaria`
--

DROP TABLE IF EXISTS `tbl_conciliacion_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_conciliacion_bancaria` (
  `KidBanco` int(11) NOT NULL,
  `moneda` varchar(45) NOT NULL,
  `mes_conciliacion` varchar(45) NOT NULL,
  `diferencia_total` double DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidBanco`,`moneda`,`mes_conciliacion`),
  KEY `FK_Moneda_ConciliacionBancaria` (`moneda`),
  CONSTRAINT `FK_Bancos_ConciliacionBancaria` FOREIGN KEY (`KidBanco`) REFERENCES `tbl_bancos` (`KidBanco`),
  CONSTRAINT `FK_Moneda_ConciliacionBancaria` FOREIGN KEY (`moneda`) REFERENCES `tbl_divisa` (`KidDivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conciliacion_bancaria`
--

LOCK TABLES `tbl_conciliacion_bancaria` WRITE;
/*!40000 ALTER TABLE `tbl_conciliacion_bancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conciliacion_bancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configuracion_rpt`
--

DROP TABLE IF EXISTS `tbl_configuracion_rpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_configuracion_rpt` (
  `PK_id_configuracion` int(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ruta` varchar(100) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PK_id_configuracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configuracion_rpt`
--

LOCK TABLES `tbl_configuracion_rpt` WRITE;
/*!40000 ALTER TABLE `tbl_configuracion_rpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_configuracion_rpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_consulta`
--

DROP TABLE IF EXISTS `tbl_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_consulta` (
  `KidConsulta` int(11) NOT NULL,
  `cadena_consulta` varchar(255) DEFAULT NULL,
  `nombreconsulta_consulta` varchar(45) DEFAULT NULL,
  `descripcion_consulta` varchar(255) DEFAULT NULL,
  `KidUsuario` varchar(45) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  PRIMARY KEY (`KidConsulta`,`KidUsuario`),
  KEY `FK_usuario_consulta` (`KidUsuario`),
  CONSTRAINT `FK_usuario_consulta` FOREIGN KEY (`KidUsuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_consulta`
--

LOCK TABLES `tbl_consulta` WRITE;
/*!40000 ALTER TABLE `tbl_consulta` DISABLE KEYS */;
INSERT INTO `tbl_consulta` VALUES (1,'','12','','MiUsuario',1),(2,'','Selects','','MiUsuario',1),(3,'','12','','MiUsuario',1),(4,'','','','MiUsuario',1),(5,'','','','MiUsuario',1),(6,'','','','MiUsuario',1);
/*!40000 ALTER TABLE `tbl_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacto`
--

DROP TABLE IF EXISTS `tbl_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contacto` (
  `KidContacto` int(16) NOT NULL,
  `KidProveedor` int(16) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidContacto`),
  KEY `fk_proveedor_contacto` (`KidProveedor`),
  CONSTRAINT `fk_proveedor_contacto` FOREIGN KEY (`KidProveedor`) REFERENCES `tbl_proveedor` (`KidProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacto`
--

LOCK TABLES `tbl_contacto` WRITE;
/*!40000 ALTER TABLE `tbl_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_control_mesas`
--

DROP TABLE IF EXISTS `tbl_control_mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_control_mesas` (
  `KidControl` int(11) NOT NULL,
  `KidNumeroMesa` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidControl`),
  KEY `mesa` (`KidNumeroMesa`),
  CONSTRAINT `mesa` FOREIGN KEY (`KidNumeroMesa`) REFERENCES `tbl_mesas` (`KidNumeroMesa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_control_mesas`
--

LOCK TABLES `tbl_control_mesas` WRITE;
/*!40000 ALTER TABLE `tbl_control_mesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_control_mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cotizaciondetalle`
--

DROP TABLE IF EXISTS `tbl_cotizaciondetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cotizaciondetalle` (
  `KidCotizacionDetalle` int(11) NOT NULL,
  `KidProducto` int(11) DEFAULT NULL,
  `cantidad_cotizacionDetalle` int(11) DEFAULT NULL,
  `monto_cotizacionDetalle` double DEFAULT NULL,
  PRIMARY KEY (`KidCotizacionDetalle`),
  KEY `FK_Productos_cotizacionDetalle` (`KidProducto`),
  CONSTRAINT `FK_Productos_cotizacionDetalle` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`),
  CONSTRAINT `FK_cotizacionEncabezado_CotizacionDetalle` FOREIGN KEY (`KidCotizacionDetalle`) REFERENCES `tbl_cotizacionencabezado` (`KidCotizacionEncabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cotizaciondetalle`
--

LOCK TABLES `tbl_cotizaciondetalle` WRITE;
/*!40000 ALTER TABLE `tbl_cotizaciondetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cotizaciondetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cotizacionencabezado`
--

DROP TABLE IF EXISTS `tbl_cotizacionencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cotizacionencabezado` (
  `KidCotizacionEncabezado` int(11) NOT NULL,
  `KidCliente` int(11) DEFAULT NULL,
  `fecha_cotizacionEncabezado` date DEFAULT NULL,
  `vencimiento_cotizacionEncabezado` date DEFAULT NULL,
  PRIMARY KEY (`KidCotizacionEncabezado`),
  KEY `FK_clientes_cotizacionEncabezado` (`KidCliente`),
  CONSTRAINT `FK_clientes_cotizacionEncabezado` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cotizacionencabezado`
--

LOCK TABLES `tbl_cotizacionencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_cotizacionencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cotizacionencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_creditopedido`
--

DROP TABLE IF EXISTS `tbl_creditopedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_creditopedido` (
  `KidCreditoPedido` int(12) NOT NULL,
  `KidPedido` int(12) NOT NULL,
  `KidBanco` int(12) NOT NULL,
  `total` double(12,2) NOT NULL,
  `cuotas` int(2) NOT NULL,
  `fechaIni` timestamp NULL DEFAULT NULL,
  `fechaFin` timestamp NULL DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidCreditoPedido`),
  KEY `FK_credito_pedido` (`KidPedido`),
  KEY `fk_credito_banco` (`KidBanco`),
  CONSTRAINT `FK_credito_pedido` FOREIGN KEY (`KidPedido`) REFERENCES `tbl_pedido` (`KidPedido`),
  CONSTRAINT `fk_credito_banco` FOREIGN KEY (`KidBanco`) REFERENCES `tbl_bancos` (`KidBanco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_creditopedido`
--

LOCK TABLES `tbl_creditopedido` WRITE;
/*!40000 ALTER TABLE `tbl_creditopedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_creditopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_creditoservicio`
--

DROP TABLE IF EXISTS `tbl_creditoservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_creditoservicio` (
  `KidCreditoServicio` int(12) NOT NULL,
  `KidPagoServicio` int(12) NOT NULL,
  `KidBanco` int(12) NOT NULL,
  `total` double(12,2) NOT NULL,
  `cuotas` int(2) NOT NULL,
  `fechaIni` timestamp NULL DEFAULT NULL,
  `fechaFin` timestamp NULL DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidCreditoServicio`),
  KEY `FK_credigo_pagoServicio` (`KidPagoServicio`),
  KEY `fk_creditoServicio_banco` (`KidBanco`),
  CONSTRAINT `FK_credigo_pagoServicio` FOREIGN KEY (`KidPagoServicio`) REFERENCES `tbl_pagoservicio` (`KidPagoServicio`),
  CONSTRAINT `fk_creditoServicio_banco` FOREIGN KEY (`KidBanco`) REFERENCES `tbl_bancos` (`KidBanco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_creditoservicio`
--

LOCK TABLES `tbl_creditoservicio` WRITE;
/*!40000 ALTER TABLE `tbl_creditoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_creditoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_credpeddet`
--

DROP TABLE IF EXISTS `tbl_credpeddet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_credpeddet` (
  `KidCodigoCresDet` int(12) NOT NULL,
  `KidCreditoPedido` int(12) NOT NULL,
  `valor` double(12,2) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidCodigoCresDet`,`KidCreditoPedido`),
  KEY `FK_creditoPedDet_CreditoPedido` (`KidCreditoPedido`),
  CONSTRAINT `FK_creditoPedDet_CreditoPedido` FOREIGN KEY (`KidCreditoPedido`) REFERENCES `tbl_creditopedido` (`KidCreditoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_credpeddet`
--

LOCK TABLES `tbl_credpeddet` WRITE;
/*!40000 ALTER TABLE `tbl_credpeddet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_credpeddet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_credservdet`
--

DROP TABLE IF EXISTS `tbl_credservdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_credservdet` (
  `KidCredServDet` int(12) NOT NULL,
  `KidCreditoServicio` int(12) NOT NULL,
  `valor` double(12,2) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidCredServDet`,`KidCreditoServicio`),
  KEY `fk_credServDet_CreditoServicio` (`KidCreditoServicio`),
  CONSTRAINT `fk_credServDet_CreditoServicio` FOREIGN KEY (`KidCreditoServicio`) REFERENCES `tbl_creditoservicio` (`KidCreditoServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_credservdet`
--

LOCK TABLES `tbl_credservdet` WRITE;
/*!40000 ALTER TABLE `tbl_credservdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_credservdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cuentabancaria`
--

DROP TABLE IF EXISTS `tbl_cuentabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cuentabancaria` (
  `KidCuentaBancaria` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroCuenta` varchar(20) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `KidBanco` int(11) NOT NULL,
  `KidMoneda` varchar(11) NOT NULL,
  `Firmas_Individuales` varchar(45) DEFAULT NULL,
  `Firmas_Conjuntas` varchar(45) DEFAULT NULL,
  `Saldo` varchar(20) DEFAULT NULL,
  `Cuenta_Primaria` tinyint(4) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`KidCuentaBancaria`),
  KEY `FK_Bancos_CuentaBancaria` (`KidBanco`),
  KEY `FK_Moneda_CuentaBancaria` (`KidMoneda`),
  CONSTRAINT `FK_Bancos_CuentaBancaria` FOREIGN KEY (`KidBanco`) REFERENCES `tbl_bancos` (`KidBanco`),
  CONSTRAINT `FK_Moneda_CuentaBancaria` FOREIGN KEY (`KidMoneda`) REFERENCES `tbl_divisa` (`KidDivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cuentabancaria`
--

LOCK TABLES `tbl_cuentabancaria` WRITE;
/*!40000 ALTER TABLE `tbl_cuentabancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cuentabancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cuentas`
--

DROP TABLE IF EXISTS `tbl_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cuentas` (
  `KidCuenta` int(11) NOT NULL AUTO_INCREMENT,
  `KidTipoCuenta` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidCuenta`,`KidTipoCuenta`),
  KEY `fk_tbl_cuentas_contables_tbl_tipoCuentaContable1` (`KidTipoCuenta`),
  CONSTRAINT `fk_tbl_cuentas_contables_tbl_tipoCuentaContable1` FOREIGN KEY (`KidTipoCuenta`) REFERENCES `tbl_tipocuenta` (`KidTipoCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cuentas`
--

LOCK TABLES `tbl_cuentas` WRITE;
/*!40000 ALTER TABLE `tbl_cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamentos`
--

DROP TABLE IF EXISTS `tbl_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_departamentos` (
  `KidDepartamento` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `numdepartamento` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `KidArea` int(11) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidDepartamento`),
  KEY `fk_Tbl_departamentos_Tbl_areas1_idx` (`KidArea`),
  CONSTRAINT `fk_Tbl_departamentos_Tbl_areas1` FOREIGN KEY (`KidArea`) REFERENCES `tbl_areas` (`KidArea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamentos`
--

LOCK TABLES `tbl_departamentos` WRITE;
/*!40000 ALTER TABLE `tbl_departamentos` DISABLE KEYS */;
INSERT INTO `tbl_departamentos` VALUES (1,'adsf','2','asf','234',1,1),(2,'adf','2','asdf','as',2,1);
/*!40000 ALTER TABLE `tbl_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_descuentos`
--

DROP TABLE IF EXISTS `tbl_descuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_descuentos` (
  `KidDescuentos` int(11) NOT NULL,
  `KidProducto` int(11) DEFAULT NULL,
  `nombre_descuentos` varchar(45) DEFAULT NULL,
  `porcentaje_descuentos` double DEFAULT NULL,
  `fecha_inicio_descuentos` date DEFAULT NULL,
  `fecha_final_descuentos` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidDescuentos`),
  KEY `fk_Producto_Descuentos` (`KidProducto`),
  CONSTRAINT `fk_Producto_Descuentos` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuentos`
--

LOCK TABLES `tbl_descuentos` WRITE;
/*!40000 ALTER TABLE `tbl_descuentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_descuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_control`
--

DROP TABLE IF EXISTS `tbl_detalle_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_control` (
  `KidNumeroDetalle` int(11) NOT NULL,
  `KidControl` int(11) NOT NULL,
  `KidPlatillo` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroDetalle`),
  KEY `fk_Tbl_Detalle_Control_Tbl_Control_Mesas1` (`KidControl`),
  KEY `fk_Tbl_Detalle_Control_Tbl_Platillos1` (`KidPlatillo`),
  CONSTRAINT `fk_Tbl_Detalle_Control_Tbl_Control_Mesas1` FOREIGN KEY (`KidControl`) REFERENCES `tbl_control_mesas` (`KidControl`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Detalle_Control_Tbl_Platillos1` FOREIGN KEY (`KidPlatillo`) REFERENCES `tbl_platillos` (`KidPlatillo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_control`
--

LOCK TABLES `tbl_detalle_control` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_evento`
--

DROP TABLE IF EXISTS `tbl_detalle_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_evento` (
  `KidNumeroDetalle` int(11) NOT NULL,
  `KidNumeroSalon` int(11) NOT NULL,
  `KidEvento` int(11) DEFAULT NULL,
  `llegada` date DEFAULT NULL,
  `salida` date DEFAULT NULL,
  `requisitos` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroDetalle`),
  KEY `reservacion0` (`KidEvento`),
  KEY `fk_Tbl_Detalle_Evento_Tbl_Salones1` (`KidNumeroSalon`),
  CONSTRAINT `fk_Tbl_Detalle_Evento_Tbl_Salones1` FOREIGN KEY (`KidNumeroSalon`) REFERENCES `tbl_salones` (`KidNumeroSalon`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reservacion0` FOREIGN KEY (`KidEvento`) REFERENCES `tbl_eventos` (`KidEvento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_evento`
--

LOCK TABLES `tbl_detalle_evento` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_folio`
--

DROP TABLE IF EXISTS `tbl_detalle_folio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_folio` (
  `KidFolio` int(11) NOT NULL,
  `KidNumeroDetalle` int(11) NOT NULL,
  `KidComanda` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidFolio`,`KidNumeroDetalle`),
  KEY `servicio` (`KidComanda`),
  CONSTRAINT `fk_Tbl_Detalle_Folio_Tbl_Folios1` FOREIGN KEY (`KidFolio`) REFERENCES `tbl_folios` (`KidFolio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `servicio` FOREIGN KEY (`KidComanda`) REFERENCES `tbl_comandas` (`KidNumeroComanda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_folio`
--

LOCK TABLES `tbl_detalle_folio` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_folio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_folio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_lista_precios`
--

DROP TABLE IF EXISTS `tbl_detalle_lista_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_lista_precios` (
  `KidEncabezadoListaPrecios` int(11) NOT NULL,
  `KidDetalleListaPrecios` int(11) NOT NULL,
  `KidProducto` int(11) DEFAULT NULL,
  `Kidtipo_lista_precios` int(11) DEFAULT NULL,
  `nombre_listaprecios` varchar(50) DEFAULT NULL,
  `precio_listaprecios` double DEFAULT NULL,
  PRIMARY KEY (`KidEncabezadoListaPrecios`,`KidDetalleListaPrecios`),
  KEY `FK_Productos_DetallePedido` (`KidProducto`),
  KEY `FK_TipoListaPrecios_DetalleListaPrecios` (`Kidtipo_lista_precios`),
  CONSTRAINT `FK_EncabezadoLista_Precios_Detalle_Lista_Precios` FOREIGN KEY (`KidEncabezadoListaPrecios`) REFERENCES `tbl_encabezado_lista_precios` (`KidEncabezadoListaPrecios`),
  CONSTRAINT `FK_Productos_DetallePedido` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`),
  CONSTRAINT `FK_TipoListaPrecios_DetalleListaPrecios` FOREIGN KEY (`Kidtipo_lista_precios`) REFERENCES `tbl_tipo_lista_precios` (`Kidtipo_lista_precios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_lista_precios`
--

LOCK TABLES `tbl_detalle_lista_precios` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_lista_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_lista_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_producto`
--

DROP TABLE IF EXISTS `tbl_detalle_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_producto` (
  `Kiddetalleproducto` int(11) NOT NULL,
  `Kidproducto` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `presentacion` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kiddetalleproducto`),
  KEY `fk_DetalleProducto_Producto` (`Kidproducto`),
  CONSTRAINT `fk_DetalleProducto_Producto` FOREIGN KEY (`Kidproducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_producto`
--

LOCK TABLES `tbl_detalle_producto` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_reservacion`
--

DROP TABLE IF EXISTS `tbl_detalle_reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_reservacion` (
  `KidNumeroDetalle` int(11) NOT NULL,
  `KidReservacion` int(11) DEFAULT NULL,
  `KidNumeroHabitacion` int(11) DEFAULT NULL,
  `llegada` date DEFAULT NULL,
  `salida` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroDetalle`),
  KEY `reservacion` (`KidReservacion`),
  KEY `habitacion` (`KidNumeroHabitacion`),
  CONSTRAINT `habitacion` FOREIGN KEY (`KidNumeroHabitacion`) REFERENCES `tbl_habitaciones` (`KidNumeroHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reservacion` FOREIGN KEY (`KidReservacion`) REFERENCES `tbl_reservaciones` (`KidReservacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_reservacion`
--

LOCK TABLES `tbl_detalle_reservacion` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_roles`
--

DROP TABLE IF EXISTS `tbl_detalle_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_roles` (
  `KidRolpago` int(11) NOT NULL,
  `KidEmpleado` int(11) NOT NULL,
  `remuneracion` float DEFAULT NULL,
  `horasExtras` int(11) DEFAULT NULL,
  `aporteigss` int(11) DEFAULT NULL,
  `gastos` float DEFAULT NULL,
  `vacaciones` int(11) DEFAULT NULL,
  `sueldototal` float DEFAULT NULL,
  `prestamos` float DEFAULT NULL,
  PRIMARY KEY (`KidRolpago`,`KidEmpleado`),
  KEY `fk_Tbl_detalle_roles_Tbl_empleado1_idx` (`KidEmpleado`),
  CONSTRAINT `fk_Tbl_detalle_roles_Tbl_empleado1` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_detalle_roles_Tbl_roles_de_pago` FOREIGN KEY (`KidRolpago`) REFERENCES `tbl_roles_de_pago` (`KidRolpago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_roles`
--

LOCK TABLES `tbl_detalle_roles` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detallecomprobante`
--

DROP TABLE IF EXISTS `tbl_detallecomprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detallecomprobante` (
  `KidDetalleComprobante` int(11) NOT NULL,
  `articulo_servicio` varchar(45) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Descuento` double DEFAULT NULL,
  `Ivaincluido` tinyint(1) DEFAULT NULL,
  `Concepto` varchar(45) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  PRIMARY KEY (`KidDetalleComprobante`),
  CONSTRAINT `FK_encabezado_detalleComprobante` FOREIGN KEY (`KidDetalleComprobante`) REFERENCES `tbl_encabezadocomprobante` (`KidEncabezadoComprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detallecomprobante`
--

LOCK TABLES `tbl_detallecomprobante` WRITE;
/*!40000 ALTER TABLE `tbl_detallecomprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detallecomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detallepedido`
--

DROP TABLE IF EXISTS `tbl_detallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detallepedido` (
  `KidDetallePedido` int(11) NOT NULL,
  `KidProducto` int(11) DEFAULT NULL,
  `cantidad_Detallepedido` int(11) DEFAULT NULL,
  `monto_Detallepedido` double DEFAULT NULL,
  PRIMARY KEY (`KidDetallePedido`),
  KEY `FK_Productos_DetallePedido1` (`KidProducto`),
  CONSTRAINT `FK_EncabezadoPedido_DetallePedido1` FOREIGN KEY (`KidDetallePedido`) REFERENCES `tbl_encabezadopedido` (`KidEncabezadoPedido`),
  CONSTRAINT `FK_Productos_DetallePedido1` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detallepedido`
--

LOCK TABLES `tbl_detallepedido` WRITE;
/*!40000 ALTER TABLE `tbl_detallepedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detallereportevacante`
--

DROP TABLE IF EXISTS `tbl_detallereportevacante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detallereportevacante` (
  `KidReporteVacante` int(11) NOT NULL,
  `razon` varchar(200) DEFAULT NULL,
  `DescripcionCualidades` varchar(200) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidReporteVacante`),
  CONSTRAINT `FK_Encabezado_DetalleReporteVacante` FOREIGN KEY (`KidReporteVacante`) REFERENCES `tbl_encabezadoreportevacante` (`KidReporteVacante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detallereportevacante`
--

LOCK TABLES `tbl_detallereportevacante` WRITE;
/*!40000 ALTER TABLE `tbl_detallereportevacante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detallereportevacante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_devoluciones`
--

DROP TABLE IF EXISTS `tbl_devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_devoluciones` (
  `kidDevoluciones` int(11) NOT NULL,
  `motivo_devoluciones` varchar(45) DEFAULT NULL,
  `fecha_devoluciones` date DEFAULT NULL,
  `KidFacturaEncabezado` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kidDevoluciones`),
  KEY `fk_Devoluciones_FacturaEncabezado1` (`KidFacturaEncabezado`),
  CONSTRAINT `fk_Devoluciones_FacturaEncabezado1` FOREIGN KEY (`KidFacturaEncabezado`) REFERENCES `tbl_facturaencabezado` (`KidFacturaEncabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_devoluciones`
--

LOCK TABLES `tbl_devoluciones` WRITE;
/*!40000 ALTER TABLE `tbl_devoluciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_devoluciones_platillos`
--

DROP TABLE IF EXISTS `tbl_devoluciones_platillos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_devoluciones_platillos` (
  `KidDevPlatillo` int(11) NOT NULL,
  `KidPlatillo` int(11) NOT NULL,
  `motivo` varchar(45) DEFAULT NULL,
  `resolucion` varchar(45) DEFAULT NULL,
  `costo` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidDevPlatillo`,`KidPlatillo`),
  CONSTRAINT `fk_Devoluciones_platillos1` FOREIGN KEY (`KidDevPlatillo`) REFERENCES `tbl_platillos` (`KidPlatillo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_devoluciones_platillos`
--

LOCK TABLES `tbl_devoluciones_platillos` WRITE;
/*!40000 ALTER TABLE `tbl_devoluciones_platillos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_devoluciones_platillos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_divisa`
--

DROP TABLE IF EXISTS `tbl_divisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_divisa` (
  `KidDivisa` varchar(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidDivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_divisa`
--

LOCK TABLES `tbl_divisa` WRITE;
/*!40000 ALTER TABLE `tbl_divisa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_divisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empleado` (
  `KidEmpleado` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dpi` varchar(35) DEFAULT NULL,
  `nit` varchar(25) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `telefonoalternativo` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `correoalternativo` varchar(45) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  `KidPuesto` int(11) DEFAULT NULL,
  `KidDepartamento` int(11) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidEmpleado`),
  KEY `fk_Tbl_empleado_Tbl_puestos1_idx` (`KidPuesto`),
  KEY `fk_Tbl_empleado_Tbl_departamentos1_idx` (`KidDepartamento`),
  CONSTRAINT `fk_Tbl_empleado_Tbl_departamentos1` FOREIGN KEY (`KidDepartamento`) REFERENCES `tbl_departamentos` (`KidDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_empleado_Tbl_puestos1` FOREIGN KEY (`KidPuesto`) REFERENCES `tbl_puestos` (`KidPuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'wtrwte','wet','wertw','wer','ewgs','345','6432','dfg','sdfg','2019-09-10','1',1,1,1);
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezado_lista_precios`
--

DROP TABLE IF EXISTS `tbl_encabezado_lista_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_encabezado_lista_precios` (
  `KidEncabezadoListaPrecios` int(11) NOT NULL,
  `Fecha_inicio_listaprecios` date DEFAULT NULL,
  `fecha_modificacion_listaprecios` date DEFAULT NULL,
  PRIMARY KEY (`KidEncabezadoListaPrecios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezado_lista_precios`
--

LOCK TABLES `tbl_encabezado_lista_precios` WRITE;
/*!40000 ALTER TABLE `tbl_encabezado_lista_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezado_lista_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezadocomprobante`
--

DROP TABLE IF EXISTS `tbl_encabezadocomprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_encabezadocomprobante` (
  `KidEncabezadoComprobante` int(11) NOT NULL,
  `KidFacturaEncabezado` int(11) DEFAULT NULL,
  `KidCliente` int(11) NOT NULL,
  `KidEmpleado` int(11) NOT NULL,
  `KidtiposComprobantes` int(11) NOT NULL,
  `Serie` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Moneda` varchar(45) DEFAULT NULL,
  `Cotizacion` double DEFAULT NULL,
  `Centro` varchar(45) DEFAULT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  `Periodo` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidEncabezadoComprobante`),
  KEY `FK_cliente_encabezadoComprobante` (`KidCliente`),
  KEY `FK_empleado_encabezadoComprobante` (`KidEmpleado`),
  KEY `FK_tipoComprobante_encabezadoComprobante` (`KidtiposComprobantes`),
  KEY `FK_FacturaEncabezado_EncabezadoComprobante` (`KidFacturaEncabezado`),
  CONSTRAINT `FK_FacturaEncabezado_EncabezadoComprobante` FOREIGN KEY (`KidFacturaEncabezado`) REFERENCES `tbl_facturaencabezado` (`KidFacturaEncabezado`),
  CONSTRAINT `FK_cliente_encabezadoComprobante` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`),
  CONSTRAINT `FK_empleado_encabezadoComprobante` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`),
  CONSTRAINT `FK_tipoComprobante_encabezadoComprobante` FOREIGN KEY (`KidtiposComprobantes`) REFERENCES `tbl_tiposcomprobantes` (`KidtiposComprobantes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezadocomprobante`
--

LOCK TABLES `tbl_encabezadocomprobante` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadocomprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezadocomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezadopedido`
--

DROP TABLE IF EXISTS `tbl_encabezadopedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_encabezadopedido` (
  `KidEncabezadoPedido` int(11) NOT NULL,
  `KidFacturaEncabezado` int(11) DEFAULT NULL,
  `KidCliente` int(11) DEFAULT NULL,
  `fecha_encabezadopedido` date DEFAULT NULL,
  `vencimiento_encabezadopedido` date DEFAULT NULL,
  PRIMARY KEY (`KidEncabezadoPedido`),
  KEY `FK_FacturaEncabezado_EncabezadoPedido` (`KidFacturaEncabezado`),
  KEY `FK_clientes_EncabezadoPedido` (`KidCliente`),
  CONSTRAINT `FK_FacturaEncabezado_EncabezadoPedido` FOREIGN KEY (`KidFacturaEncabezado`) REFERENCES `tbl_facturaencabezado` (`KidFacturaEncabezado`),
  CONSTRAINT `FK_clientes_EncabezadoPedido` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezadopedido`
--

LOCK TABLES `tbl_encabezadopedido` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadopedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezadopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encabezadoreportevacante`
--

DROP TABLE IF EXISTS `tbl_encabezadoreportevacante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_encabezadoreportevacante` (
  `KidReporteVacante` int(11) NOT NULL,
  `KidEmpleado` int(11) DEFAULT NULL,
  `KidPuesto` int(11) DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `tipoDeContratacion` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidReporteVacante`),
  KEY `FK_Empleado_ReporteVacante` (`KidEmpleado`),
  KEY `FK_Puesto_ReporteVacante` (`KidPuesto`),
  CONSTRAINT `FK_Empleado_ReporteVacante` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`),
  CONSTRAINT `FK_Puesto_ReporteVacante` FOREIGN KEY (`KidPuesto`) REFERENCES `tbl_puestos` (`KidPuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encabezadoreportevacante`
--

LOCK TABLES `tbl_encabezadoreportevacante` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadoreportevacante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezadoreportevacante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_perdidas_ganacias_detalle`
--

DROP TABLE IF EXISTS `tbl_estado_perdidas_ganacias_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_perdidas_ganacias_detalle` (
  `KidPerdidasGanancias` int(11) NOT NULL,
  `KidCuenta` int(11) NOT NULL,
  `debe` float DEFAULT NULL,
  `haber` float DEFAULT NULL,
  PRIMARY KEY (`KidPerdidasGanancias`),
  KEY `fk_tbl_estado_perdidas_ganacias_Detalle_tbl_cuentas_contables1` (`KidCuenta`),
  CONSTRAINT `fk_tbl_estado_perdidas_ganacias_Detalle_tbl_cuentas_contables1` FOREIGN KEY (`KidCuenta`) REFERENCES `tbl_cuentas` (`KidCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_estado_perdidas_ganacias_Detalle_tbl_estado_perdidas_g1` FOREIGN KEY (`KidPerdidasGanancias`) REFERENCES `tbl_estado_perdidas_ganancias_encabezado` (`KidPerdidasGanancias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_perdidas_ganacias_detalle`
--

LOCK TABLES `tbl_estado_perdidas_ganacias_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganacias_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganacias_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_perdidas_ganancias_encabezado`
--

DROP TABLE IF EXISTS `tbl_estado_perdidas_ganancias_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_perdidas_ganancias_encabezado` (
  `KidPerdidasGanancias` int(11) NOT NULL AUTO_INCREMENT,
  `gananciaEnOperacion` float DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidPerdidasGanancias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_perdidas_ganancias_encabezado`
--

LOCK TABLES `tbl_estado_perdidas_ganancias_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganancias_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganancias_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_eventos`
--

DROP TABLE IF EXISTS `tbl_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_eventos` (
  `KidEvento` int(11) NOT NULL,
  `KidCliente` int(11) NOT NULL,
  `_KidEmpleado` int(11) NOT NULL,
  `fechaEvento` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidEvento`),
  KEY `fk_Tbl_Eventos_Tbl_Clientes1` (`KidCliente`),
  KEY `fk_Tbl_Eventos_Tbl_Empleados1` (`_KidEmpleado`),
  CONSTRAINT `fk_Tbl_Eventos_Tbl_Clientes1` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Eventos_Tbl_Empleados1` FOREIGN KEY (`_KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_eventos`
--

LOCK TABLES `tbl_eventos` WRITE;
/*!40000 ALTER TABLE `tbl_eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_existencia`
--

DROP TABLE IF EXISTS `tbl_existencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_existencia` (
  `Kidexistencia` int(11) NOT NULL,
  `kidproducto` int(11) NOT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kidexistencia`,`kidproducto`),
  KEY `fk_Producto_Existencia` (`kidproducto`),
  CONSTRAINT `fk_Producto_Existencia` FOREIGN KEY (`kidproducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_existencia`
--

LOCK TABLES `tbl_existencia` WRITE;
/*!40000 ALTER TABLE `tbl_existencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_existencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_existencias`
--

DROP TABLE IF EXISTS `tbl_existencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_existencias` (
  `KidExistencia` int(11) NOT NULL,
  `KidProducto` int(11) DEFAULT NULL,
  `KidBodega` int(11) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidExistencia`),
  KEY `prod` (`KidProducto`),
  KEY `bode` (`KidBodega`),
  CONSTRAINT `bode` FOREIGN KEY (`KidBodega`) REFERENCES `tbl_bodega` (`KidBodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `prod` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_existencias`
--

LOCK TABLES `tbl_existencias` WRITE;
/*!40000 ALTER TABLE `tbl_existencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_existencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_facturadetalle`
--

DROP TABLE IF EXISTS `tbl_facturadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_facturadetalle` (
  `KidFacturaDetalle` int(11) NOT NULL,
  `cantidad_facturadetalle` int(11) DEFAULT NULL,
  `monto_facturadetalle` double DEFAULT NULL,
  `KidProducto` int(11) NOT NULL,
  `KidFacturaEncabezado` int(11) NOT NULL,
  PRIMARY KEY (`KidFacturaDetalle`),
  KEY `fk_FacturaDetalle_Producto1` (`KidProducto`),
  KEY `fk_FacturaDetalle_FacturaEncabezado1` (`KidFacturaEncabezado`),
  CONSTRAINT `fk_FacturaDetalle_FacturaEncabezado1` FOREIGN KEY (`KidFacturaEncabezado`) REFERENCES `tbl_facturaencabezado` (`KidFacturaEncabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FacturaDetalle_Producto1` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_facturadetalle`
--

LOCK TABLES `tbl_facturadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_facturadetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_facturadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_facturaencabezado`
--

DROP TABLE IF EXISTS `tbl_facturaencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_facturaencabezado` (
  `KidFacturaEncabezado` int(11) NOT NULL,
  `KidEncabezadoListaPrecios` int(11) NOT NULL,
  `KidCotizacionEncabezado` int(11) DEFAULT NULL,
  `fecha_facturaencabezado` date DEFAULT NULL,
  `descripcion_facturaencabezado` varchar(45) DEFAULT NULL,
  `KidSerie` int(11) NOT NULL,
  `KidCliente` int(11) NOT NULL,
  `KidImpuesto` int(11) NOT NULL,
  `KidMoneda` int(11) NOT NULL,
  `KidDescuentos` int(11) NOT NULL,
  `impuesto_facturaencabezado` double DEFAULT NULL,
  `monto_facturaencabezado` double DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidFacturaEncabezado`,`KidSerie`),
  KEY `fk_FacturaEncabezado_Cliente1` (`KidCliente`),
  KEY `fk_FacturaEncabezado_Serie1` (`KidSerie`),
  KEY `fk_Tbl_FacturaEncabezado_Tbl_Impuesto1` (`KidImpuesto`),
  KEY `fk_Tbl_FacturaEncabezado_Tbl_Moneda1` (`KidMoneda`),
  KEY `fk_Descuentos_facturaEncabezado` (`KidDescuentos`),
  KEY `FK_EncabezadoLista_Precios_FacturaEncabezado` (`KidEncabezadoListaPrecios`),
  KEY `FK_cotizacionEncabezado_FacturaEncabezado` (`KidCotizacionEncabezado`),
  CONSTRAINT `FK_EncabezadoLista_Precios_FacturaEncabezado` FOREIGN KEY (`KidEncabezadoListaPrecios`) REFERENCES `tbl_encabezado_lista_precios` (`KidEncabezadoListaPrecios`),
  CONSTRAINT `FK_cotizacionEncabezado_FacturaEncabezado` FOREIGN KEY (`KidCotizacionEncabezado`) REFERENCES `tbl_cotizacionencabezado` (`KidCotizacionEncabezado`),
  CONSTRAINT `fk_Descuentos_facturaEncabezado` FOREIGN KEY (`KidDescuentos`) REFERENCES `tbl_descuentos` (`KidDescuentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FacturaEncabezado_Cliente1` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FacturaEncabezado_Serie1` FOREIGN KEY (`KidSerie`) REFERENCES `tbl_serie` (`KidSerie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_FacturaEncabezado_Tbl_Impuesto1` FOREIGN KEY (`KidImpuesto`) REFERENCES `tbl_impuesto` (`KidImpuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_FacturaEncabezado_Tbl_Moneda1` FOREIGN KEY (`KidMoneda`) REFERENCES `tbl_moneda` (`KidMoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_facturaencabezado`
--

LOCK TABLES `tbl_facturaencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_facturaencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_facturaencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_flujoefectivo_detalle`
--

DROP TABLE IF EXISTS `tbl_flujoefectivo_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_flujoefectivo_detalle` (
  `KidFlujoEfectivo` int(11) NOT NULL,
  `KidCuenta` int(11) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`KidFlujoEfectivo`,`KidCuenta`),
  KEY `fk_tbl_flujoEfectivo_Detalle_tbl_cuentas1` (`KidCuenta`),
  CONSTRAINT `fk_tbl_flujoEfectivo_Detalle_tbl_cuentas1` FOREIGN KEY (`KidCuenta`) REFERENCES `tbl_cuentas` (`KidCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_flujoEfectivo_Detalle_tbl_flujoEfectivo_Encabezado1` FOREIGN KEY (`KidFlujoEfectivo`) REFERENCES `tbl_flujoefectivo_encabezado` (`KidFlujoEfectivo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_flujoefectivo_detalle`
--

LOCK TABLES `tbl_flujoefectivo_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_flujoefectivo_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_flujoefectivo_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_flujoefectivo_encabezado`
--

DROP TABLE IF EXISTS `tbl_flujoefectivo_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_flujoefectivo_encabezado` (
  `KidFlujoEfectivo` int(11) NOT NULL AUTO_INCREMENT,
  `total_efectivo` float DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidFlujoEfectivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_flujoefectivo_encabezado`
--

LOCK TABLES `tbl_flujoefectivo_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_flujoefectivo_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_flujoefectivo_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_folios`
--

DROP TABLE IF EXISTS `tbl_folios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_folios` (
  `KidFolio` int(11) NOT NULL,
  `KidCliente` int(11) DEFAULT NULL,
  `fechaApertura` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidFolio`),
  KEY `folio` (`KidCliente`),
  CONSTRAINT `folio` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_folios`
--

LOCK TABLES `tbl_folios` WRITE;
/*!40000 ALTER TABLE `tbl_folios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_folios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gestionmovimientocliente`
--

DROP TABLE IF EXISTS `tbl_gestionmovimientocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_gestionmovimientocliente` (
  `KidGestionMovimientoCliente` int(11) NOT NULL,
  `KidEncabezadoComprobante` int(11) NOT NULL,
  `SaldoCliente` double DEFAULT NULL,
  `Debe` double DEFAULT NULL,
  `Haber` double DEFAULT NULL,
  `SaldoComprobante` double DEFAULT NULL,
  PRIMARY KEY (`KidGestionMovimientoCliente`),
  KEY `FK_encabezadoComprobante_GestionMovimientoCliente` (`KidEncabezadoComprobante`),
  CONSTRAINT `FK_encabezadoComprobante_GestionMovimientoCliente` FOREIGN KEY (`KidEncabezadoComprobante`) REFERENCES `tbl_encabezadocomprobante` (`KidEncabezadoComprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gestionmovimientocliente`
--

LOCK TABLES `tbl_gestionmovimientocliente` WRITE;
/*!40000 ALTER TABLE `tbl_gestionmovimientocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_gestionmovimientocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_habitaciones`
--

DROP TABLE IF EXISTS `tbl_habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_habitaciones` (
  `KidNumeroHabitacion` int(11) NOT NULL,
  `KidTipoHabitacion` varchar(45) DEFAULT NULL,
  `KidCategoria` varchar(45) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroHabitacion`),
  KEY `tipoHabitacion` (`KidTipoHabitacion`),
  KEY `categoria` (`KidCategoria`),
  CONSTRAINT `categoria` FOREIGN KEY (`KidCategoria`) REFERENCES `tbl_categorias_habitacion` (`KidCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tipoHabitacion` FOREIGN KEY (`KidTipoHabitacion`) REFERENCES `tbl_tipo_habitacion` (`KidTipoHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_habitaciones`
--

LOCK TABLES `tbl_habitaciones` WRITE;
/*!40000 ALTER TABLE `tbl_habitaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_historia_inventario`
--

DROP TABLE IF EXISTS `tbl_historia_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_historia_inventario` (
  `Kidproducto` int(11) NOT NULL,
  `Kidmovimientoinventario` int(11) NOT NULL,
  `Kidbodega` int(11) NOT NULL,
  `Kidsucursal` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kidproducto`,`Kidmovimientoinventario`),
  KEY `fk_MovimientoInventario_HistoriaInventario` (`Kidmovimientoinventario`),
  KEY `FK_Bodega_HistoriaInventario` (`Kidbodega`),
  KEY `fk_Sucursal_HistoriaInventario` (`Kidsucursal`),
  CONSTRAINT `FK_Bodega_HistoriaInventario` FOREIGN KEY (`Kidbodega`) REFERENCES `tbl_bodega` (`KidBodega`),
  CONSTRAINT `fk_MovimientoInventario_HistoriaInventario` FOREIGN KEY (`Kidmovimientoinventario`) REFERENCES `tbl_moviemiento_inventario` (`Kidmoviemientoinventario`),
  CONSTRAINT `fk_Producto_HistoriaInventario` FOREIGN KEY (`Kidproducto`) REFERENCES `tbl_producto` (`KidProducto`),
  CONSTRAINT `fk_Sucursal_HistoriaInventario` FOREIGN KEY (`Kidsucursal`) REFERENCES `tbl_sucursal` (`KidSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_historia_inventario`
--

LOCK TABLES `tbl_historia_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_historia_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_historia_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_impuesto`
--

DROP TABLE IF EXISTS `tbl_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_impuesto` (
  `KidImpuesto` int(11) NOT NULL,
  `nombre_impuesto` varchar(45) DEFAULT NULL,
  `descripcion_impuesto` varchar(150) DEFAULT NULL,
  `porcentaje_impuesto` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidImpuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_impuesto`
--

LOCK TABLES `tbl_impuesto` WRITE;
/*!40000 ALTER TABLE `tbl_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ingredientes`
--

DROP TABLE IF EXISTS `tbl_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ingredientes` (
  `KidIngredientes` int(11) NOT NULL,
  `KidProducto` int(11) NOT NULL,
  `KidRecetas` int(11) NOT NULL,
  PRIMARY KEY (`KidIngredientes`,`KidRecetas`,`KidProducto`),
  KEY `fk_Tbl_Ingredientes_Tbl_Producto1` (`KidProducto`),
  KEY `fk_Tbl_Ingredientes_Tbl_Recetas1` (`KidRecetas`),
  CONSTRAINT `fk_Tbl_Ingredientes_Tbl_Producto1` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Ingredientes_Tbl_Recetas1` FOREIGN KEY (`KidRecetas`) REFERENCES `tbl_recetas` (`KidRecetas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ingredientes`
--

LOCK TABLES `tbl_ingredientes` WRITE;
/*!40000 ALTER TABLE `tbl_ingredientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventario` (
  `KidInventario` int(11) NOT NULL,
  `KidProducto` int(11) NOT NULL,
  `Kidbodega` int(11) NOT NULL,
  `Kidstock` int(11) NOT NULL,
  `Kidexistencia` int(11) NOT NULL,
  `fecha_inventario` date DEFAULT NULL,
  `cantidad_inventario` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidInventario`),
  KEY `fk_Inventario_Producto1` (`KidProducto`),
  KEY `fk_Inventario_Bodegas` (`Kidbodega`),
  KEY `Fk_Inventario_Stock` (`Kidstock`),
  KEY `fk_Inventario_Existencia` (`Kidexistencia`),
  CONSTRAINT `Fk_Inventario_Stock` FOREIGN KEY (`Kidstock`) REFERENCES `tbl_stock` (`Kidstock`),
  CONSTRAINT `fk_Inventario_Bodegas` FOREIGN KEY (`Kidbodega`) REFERENCES `tbl_bodega` (`KidBodega`),
  CONSTRAINT `fk_Inventario_Existencia` FOREIGN KEY (`Kidexistencia`) REFERENCES `tbl_existencia` (`Kidexistencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inventario_Producto1` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_libro_bancos`
--

DROP TABLE IF EXISTS `tbl_libro_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_libro_bancos` (
  `KidMovimientoBancario` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_debito` int(11) NOT NULL,
  `cuenta_credito` int(11) NOT NULL,
  `monto` double NOT NULL,
  `tipo_movimiento` varchar(45) DEFAULT NULL,
  `fecha_movimiento` date DEFAULT NULL,
  `beneficiario` varchar(45) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `movimiento_conciliado` tinyint(4) DEFAULT NULL,
  `movimiento_trasladado_contabilidad` tinyint(4) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidMovimientoBancario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_libro_bancos`
--

LOCK TABLES `tbl_libro_bancos` WRITE;
/*!40000 ALTER TABLE `tbl_libro_bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_libro_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_librodiario`
--

DROP TABLE IF EXISTS `tbl_librodiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_librodiario` (
  `KidLibroDiario` int(11) NOT NULL AUTO_INCREMENT,
  `KidPoliza` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `total_debe` float DEFAULT NULL,
  `total_haber` float DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidLibroDiario`,`KidPoliza`),
  KEY `fk_polizaEncabezado_libroDiario` (`KidPoliza`),
  CONSTRAINT `fk_polizaEncabezado_libroDiario` FOREIGN KEY (`KidPoliza`) REFERENCES `tbl_poliza_encabezado` (`KidPoliza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_librodiario`
--

LOCK TABLES `tbl_librodiario` WRITE;
/*!40000 ALTER TABLE `tbl_librodiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_librodiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_libromayor_detalle`
--

DROP TABLE IF EXISTS `tbl_libromayor_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_libromayor_detalle` (
  `KidLibroMayor` int(11) NOT NULL,
  `debe` float DEFAULT NULL,
  `haber` float DEFAULT NULL,
  `saldo_parcial` float DEFAULT NULL,
  PRIMARY KEY (`KidLibroMayor`),
  CONSTRAINT `fk_tbl_libroMayor_Detalle_tbl_libroMayor1` FOREIGN KEY (`KidLibroMayor`) REFERENCES `tbl_libromayor_encabezado` (`KidLibroMayor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_libromayor_detalle`
--

LOCK TABLES `tbl_libromayor_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_libromayor_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_libromayor_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_libromayor_encabezado`
--

DROP TABLE IF EXISTS `tbl_libromayor_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_libromayor_encabezado` (
  `KidLibroMayor` int(11) NOT NULL AUTO_INCREMENT,
  `KidLibroDiarioEncabezado` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `saldo_final` float DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidLibroMayor`,`KidLibroDiarioEncabezado`),
  KEY `fk_tbl_libroMayor_tbl_libroDiario_Encabezado1` (`KidLibroDiarioEncabezado`),
  CONSTRAINT `fk_tbl_libroMayor_tbl_libroDiario_Encabezado1` FOREIGN KEY (`KidLibroDiarioEncabezado`) REFERENCES `tbl_librodiario_encabezado` (`KidLibroDiarioEncabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_libromayor_encabezado`
--

LOCK TABLES `tbl_libromayor_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_libromayor_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_libromayor_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marca` (
  `Kidmarca` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `paisOrigen` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kidmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menus`
--

DROP TABLE IF EXISTS `tbl_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menus` (
  `KidMenu` int(11) NOT NULL,
  `nombreMenu` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menus`
--

LOCK TABLES `tbl_menus` WRITE;
/*!40000 ALTER TABLE `tbl_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mesas`
--

DROP TABLE IF EXISTS `tbl_mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mesas` (
  `KidNumeroMesa` int(11) NOT NULL,
  `KidArea` int(11) NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `estadoMesa` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroMesa`),
  KEY `fk_Tbl_Mesas_Tbl_Areas1` (`KidArea`),
  CONSTRAINT `fk_Tbl_Mesas_Tbl_Areas1` FOREIGN KEY (`KidArea`) REFERENCES `tbl_areas` (`KidArea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mesas`
--

LOCK TABLES `tbl_mesas` WRITE;
/*!40000 ALTER TABLE `tbl_mesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulo`
--

DROP TABLE IF EXISTS `tbl_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modulo` (
  `PK_id_Modulo` int(11) NOT NULL,
  `nombre_modulo` varchar(45) DEFAULT NULL,
  `descripcion_modulo` varchar(200) DEFAULT NULL,
  `estado_modulo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_Modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulo`
--

LOCK TABLES `tbl_modulo` WRITE;
/*!40000 ALTER TABLE `tbl_modulo` DISABLE KEYS */;
INSERT INTO `tbl_modulo` VALUES (1,'RRHH','SDDS',1);
/*!40000 ALTER TABLE `tbl_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_moneda`
--

DROP TABLE IF EXISTS `tbl_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_moneda` (
  `KidMoneda` int(11) NOT NULL,
  `nombre_moneda` varchar(45) DEFAULT NULL,
  `tasa_moneda` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidMoneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_moneda`
--

LOCK TABLES `tbl_moneda` WRITE;
/*!40000 ALTER TABLE `tbl_moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_moviemiento_inventario`
--

DROP TABLE IF EXISTS `tbl_moviemiento_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_moviemiento_inventario` (
  `Kidmoviemientoinventario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `naturaleza` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kidmoviemientoinventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_moviemiento_inventario`
--

LOCK TABLES `tbl_moviemiento_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_moviemiento_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_moviemiento_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nominasdetalle`
--

DROP TABLE IF EXISTS `tbl_nominasdetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nominasdetalle` (
  `KidLinea` int(11) NOT NULL,
  `KidNomina` int(11) NOT NULL,
  `KidConcepto` int(11) DEFAULT NULL,
  PRIMARY KEY (`KidLinea`,`KidNomina`),
  KEY `fk_Tbl_nominasDetalle_Tbl_nominasEncabezado1_idx` (`KidNomina`),
  KEY `fk_Tbl_nominasDetalle_Tbl_conceptos1_idx` (`KidConcepto`),
  CONSTRAINT `fk_Tbl_nominasDetalle_Tbl_conceptos1` FOREIGN KEY (`KidConcepto`) REFERENCES `tbl_conceptos` (`KidConcepto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_nominasDetalle_Tbl_nominasEncabezado1` FOREIGN KEY (`KidNomina`) REFERENCES `tbl_nominasencabezado` (`KidNomina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nominasdetalle`
--

LOCK TABLES `tbl_nominasdetalle` WRITE;
/*!40000 ALTER TABLE `tbl_nominasdetalle` DISABLE KEYS */;
INSERT INTO `tbl_nominasdetalle` VALUES (1,1,1);
/*!40000 ALTER TABLE `tbl_nominasdetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nominasencabezado`
--

DROP TABLE IF EXISTS `tbl_nominasencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nominasencabezado` (
  `KidNomina` int(11) NOT NULL,
  `KidEmpleado` int(11) NOT NULL,
  `dias` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `sueldoliquido` float DEFAULT NULL,
  `perdidaoganancia` tinyint(1) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidNomina`,`KidEmpleado`),
  KEY `fk_Tbl_nominasEncabezado_Tbl_empleado1_idx` (`KidEmpleado`),
  CONSTRAINT `fk_Tbl_nominasEncabezado_Tbl_empleado1` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nominasencabezado`
--

LOCK TABLES `tbl_nominasencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_nominasencabezado` DISABLE KEYS */;
INSERT INTO `tbl_nominasencabezado` VALUES (1,1,20,'2019-11-03',1500,1,1),(2,1,10,'2019-10-05',1000,1,1);
/*!40000 ALTER TABLE `tbl_nominasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos_perdidos`
--

DROP TABLE IF EXISTS `tbl_objetos_perdidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_objetos_perdidos` (
  `KidObjeto` int(11) NOT NULL,
  `KidNumeroHabitacion` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidObjeto`),
  KEY `fk_Tbl_Objetos_Perdidos_Tbl_Habitaciones1` (`KidNumeroHabitacion`),
  CONSTRAINT `fk_Tbl_Objetos_Perdidos_Tbl_Habitaciones1` FOREIGN KEY (`KidNumeroHabitacion`) REFERENCES `tbl_habitaciones` (`KidNumeroHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos_perdidos`
--

LOCK TABLES `tbl_objetos_perdidos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos_perdidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_objetos_perdidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orden_compra_encabezado`
--

DROP TABLE IF EXISTS `tbl_orden_compra_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orden_compra_encabezado` (
  `KidOrdenCompraEncabezado` int(16) NOT NULL,
  `KidProveedor` int(16) NOT NULL,
  `KidImpuesto` int(12) DEFAULT NULL,
  `fechaEmisionOrdenCompraEncabezado` date NOT NULL,
  `fechaRevisionOrdenCompraEncabezado` date NOT NULL,
  `nombreOrdenCompraEncabezado` varchar(30) DEFAULT NULL,
  `descripcionOrdenCompraEncabezado` varchar(100) DEFAULT NULL,
  `fechaEstimadaEntregaOrdenCompraEncabezado` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidOrdenCompraEncabezado`),
  KEY `fk_OrdenEncabezado_proveedor` (`KidProveedor`),
  KEY `Fk_ordenencabezado_impuesto` (`KidImpuesto`),
  CONSTRAINT `Fk_ordenencabezado_impuesto` FOREIGN KEY (`KidImpuesto`) REFERENCES `tbl_impuesto` (`KidImpuesto`),
  CONSTRAINT `fk_OrdenEncabezado_proveedor` FOREIGN KEY (`KidProveedor`) REFERENCES `tbl_proveedor` (`KidProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orden_compra_encabezado`
--

LOCK TABLES `tbl_orden_compra_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_orden_compra_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_orden_compra_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orden_dompra_detalle`
--

DROP TABLE IF EXISTS `tbl_orden_dompra_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orden_dompra_detalle` (
  `KidOrdenCompraDetalle` int(16) NOT NULL,
  `KidOrdenCompraEncabezado` int(16) NOT NULL,
  `KidProducto` int(16) NOT NULL,
  `precioUnitario` float(4,2) DEFAULT NULL,
  `cantidadProducto` int(3) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidOrdenCompraDetalle`,`KidOrdenCompraEncabezado`,`KidProducto`),
  KEY `fk_OrdenEncabezado_detalle` (`KidOrdenCompraEncabezado`),
  KEY `fk_ordendetalle_producto` (`KidProducto`),
  CONSTRAINT `fk_OrdenEncabezado_detalle` FOREIGN KEY (`KidOrdenCompraEncabezado`) REFERENCES `tbl_orden_compra_encabezado` (`KidOrdenCompraEncabezado`),
  CONSTRAINT `fk_ordendetalle_producto` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orden_dompra_detalle`
--

LOCK TABLES `tbl_orden_dompra_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_orden_dompra_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_orden_dompra_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pagos`
--

DROP TABLE IF EXISTS `tbl_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pagos` (
  `KidPagos` int(11) NOT NULL,
  `fecha_pagos` date DEFAULT NULL,
  `descripcion_pagos` varchar(45) DEFAULT NULL,
  `monto_pagos` double DEFAULT NULL,
  `KidTipoPago` int(11) NOT NULL,
  `KidFacturaEncabezado` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidPagos`,`KidTipoPago`),
  KEY `fk_Pagos_TipoPago1` (`KidTipoPago`),
  KEY `fk_Pagos_FacturaEncabezado1` (`KidFacturaEncabezado`),
  CONSTRAINT `fk_Pagos_FacturaEncabezado1` FOREIGN KEY (`KidFacturaEncabezado`) REFERENCES `tbl_facturaencabezado` (`KidFacturaEncabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pagos_TipoPago1` FOREIGN KEY (`KidTipoPago`) REFERENCES `tbl_tipopago` (`KidTipoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pagos`
--

LOCK TABLES `tbl_pagos` WRITE;
/*!40000 ALTER TABLE `tbl_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pagoservicio`
--

DROP TABLE IF EXISTS `tbl_pagoservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pagoservicio` (
  `KidPagoServicio` int(12) NOT NULL,
  `KidAcreedor` int(12) NOT NULL,
  `KidServicio` int(12) NOT NULL,
  `fecha` datetime NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `impuesto` int(12) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidPagoServicio`),
  KEY `FK_pago_acreedor` (`KidAcreedor`),
  KEY `FK_pago_servicio` (`KidServicio`),
  CONSTRAINT `FK_pago_acreedor` FOREIGN KEY (`KidAcreedor`) REFERENCES `tbl_acreedor` (`KidAcreedor`),
  CONSTRAINT `FK_pago_servicio` FOREIGN KEY (`KidServicio`) REFERENCES `tbl_servicio` (`KidServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pagoservicio`
--

LOCK TABLES `tbl_pagoservicio` WRITE;
/*!40000 ALTER TABLE `tbl_pagoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pagoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pedido`
--

DROP TABLE IF EXISTS `tbl_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pedido` (
  `KidPedido` int(12) NOT NULL,
  `KidProveedor` int(12) NOT NULL,
  `KidOrdenCompra` int(12) NOT NULL,
  `total` double(12,2) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidPedido`),
  KEY `FK_proveedor_pedido` (`KidProveedor`),
  KEY `fk_OrdenEncabezado_pedido` (`KidOrdenCompra`),
  CONSTRAINT `FK_proveedor_pedido` FOREIGN KEY (`KidProveedor`) REFERENCES `tbl_proveedor` (`KidProveedor`),
  CONSTRAINT `fk_OrdenEncabezado_pedido` FOREIGN KEY (`KidOrdenCompra`) REFERENCES `tbl_orden_compra_encabezado` (`KidOrdenCompraEncabezado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pedido`
--

LOCK TABLES `tbl_pedido` WRITE;
/*!40000 ALTER TABLE `tbl_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pedidodet`
--

DROP TABLE IF EXISTS `tbl_pedidodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pedidodet` (
  `KidPedido` int(12) NOT NULL,
  `KidProducto` int(12) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `valor` double(12,2) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidPedido`,`KidProducto`),
  KEY `fk_PedidoDet_producto` (`KidProducto`),
  CONSTRAINT `fk_PedidoDet_producto` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pedidodet`
--

LOCK TABLES `tbl_pedidodet` WRITE;
/*!40000 ALTER TABLE `tbl_pedidodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pedidodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfil_detalle`
--

DROP TABLE IF EXISTS `tbl_perfil_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_perfil_detalle` (
  `PK_id_perfil` int(11) NOT NULL,
  `PK_id_aplicacion` int(11) NOT NULL,
  `ingresar` tinyint(4) DEFAULT NULL,
  `consultar` tinyint(4) DEFAULT NULL,
  `modificar` tinyint(4) DEFAULT NULL,
  `eliminar` tinyint(4) DEFAULT NULL,
  `imprimir` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_perfil`,`PK_id_aplicacion`),
  KEY `fk_Perfil_detalle_Aplicacion1` (`PK_id_aplicacion`),
  CONSTRAINT `fk_Perfil_detalle_Aplicacion1` FOREIGN KEY (`PK_id_aplicacion`) REFERENCES `tbl_aplicacion` (`PK_id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Perfil_detalle_Perfil1` FOREIGN KEY (`PK_id_perfil`) REFERENCES `tbl_perfil_encabezado` (`PK_id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfil_detalle`
--

LOCK TABLES `tbl_perfil_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_perfil_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_perfil_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfil_encabezado`
--

DROP TABLE IF EXISTS `tbl_perfil_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_perfil_encabezado` (
  `PK_id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(45) DEFAULT NULL,
  `descripcion_perfil` varchar(200) DEFAULT NULL,
  `estado_perfil` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfil_encabezado`
--

LOCK TABLES `tbl_perfil_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_perfil_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_perfil_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_planillasdetalle`
--

DROP TABLE IF EXISTS `tbl_planillasdetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_planillasdetalle` (
  `KidPlanilla` int(11) NOT NULL,
  `Ktipo` int(11) NOT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `KidEmpleado` int(11) DEFAULT NULL,
  `ingresos` float DEFAULT NULL,
  `descuentos` float DEFAULT NULL,
  `importeneto` float DEFAULT NULL,
  `estadoenvio` float DEFAULT NULL,
  `estadoregistro` float DEFAULT NULL,
  PRIMARY KEY (`KidPlanilla`,`Ktipo`),
  KEY `fk_Tbl_PlanillasDetalle_Tbl_empleado1_idx` (`KidEmpleado`),
  CONSTRAINT `fk_Tbl_PlanillasDetalle_Tbl_empleado1` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_PlanillasDetalle_Tbl_planillasEncabezado1` FOREIGN KEY (`KidPlanilla`) REFERENCES `tbl_planillasencabezado` (`KidPlanilla`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_planillasdetalle`
--

LOCK TABLES `tbl_planillasdetalle` WRITE;
/*!40000 ALTER TABLE `tbl_planillasdetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_planillasdetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_planillasencabezado`
--

DROP TABLE IF EXISTS `tbl_planillasencabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_planillasencabezado` (
  `KidPlanilla` int(11) NOT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  `clase` varchar(25) DEFAULT NULL,
  `fechaemision` date DEFAULT NULL,
  `correlativo` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidPlanilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_planillasencabezado`
--

LOCK TABLES `tbl_planillasencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_planillasencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_planillasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_platillos`
--

DROP TABLE IF EXISTS `tbl_platillos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_platillos` (
  `KidPlatillo` int(11) NOT NULL,
  `KidMenu` int(11) NOT NULL,
  `nombrePlatillo` varchar(45) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidPlatillo`,`KidMenu`),
  KEY `menu` (`KidMenu`),
  CONSTRAINT `menu` FOREIGN KEY (`KidMenu`) REFERENCES `tbl_menus` (`KidMenu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_platillos`
--

LOCK TABLES `tbl_platillos` WRITE;
/*!40000 ALTER TABLE `tbl_platillos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_platillos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_poliza`
--

DROP TABLE IF EXISTS `tbl_poliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_poliza` (
  `KidPoliza` int(11) NOT NULL,
  `KidFacturaDetalle` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidPoliza`),
  KEY `FK_FacturaDetalle_Poliza` (`KidFacturaDetalle`),
  CONSTRAINT `FK_FacturaDetalle_Poliza` FOREIGN KEY (`KidFacturaDetalle`) REFERENCES `tbl_facturadetalle` (`KidFacturaDetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_poliza`
--

LOCK TABLES `tbl_poliza` WRITE;
/*!40000 ALTER TABLE `tbl_poliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_poliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_poliza_detalle`
--

DROP TABLE IF EXISTS `tbl_poliza_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_poliza_detalle` (
  `KidPoliza` int(11) NOT NULL,
  `KidCuenta` int(11) NOT NULL,
  `debe` double DEFAULT NULL,
  `haber` double DEFAULT NULL,
  PRIMARY KEY (`KidPoliza`,`KidCuenta`),
  KEY `fk_Cuentas_PolizaDetalle` (`KidCuenta`),
  CONSTRAINT `fk_Cuentas_PolizaDetalle` FOREIGN KEY (`KidCuenta`) REFERENCES `tbl_cuentas` (`KidCuenta`),
  CONSTRAINT `fk_PolizaEncabezado_PolizaDetalle` FOREIGN KEY (`KidPoliza`) REFERENCES `tbl_poliza_encabezado` (`KidPoliza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_poliza_detalle`
--

LOCK TABLES `tbl_poliza_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_poliza_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_poliza_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_poliza_encabezado`
--

DROP TABLE IF EXISTS `tbl_poliza_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_poliza_encabezado` (
  `KidPoliza` int(11) NOT NULL AUTO_INCREMENT,
  `KidTipoDePoliza` varchar(5) NOT NULL,
  `KidDocumentoAsociado` int(11) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `fecha_poliza` date DEFAULT NULL,
  `total_poliza` double DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidPoliza`,`KidTipoDePoliza`,`KidDocumentoAsociado`),
  KEY `fk_tipoDePoliza_PolizaEncabezado` (`KidTipoDePoliza`),
  CONSTRAINT `fk_tipoDePoliza_PolizaEncabezado` FOREIGN KEY (`KidTipoDePoliza`) REFERENCES `tbl_tipo_poliza` (`KidTipoDePoliza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_poliza_encabezado`
--

LOCK TABLES `tbl_poliza_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_poliza_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_poliza_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_precios`
--

DROP TABLE IF EXISTS `tbl_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_precios` (
  `KidPrecios` int(11) NOT NULL,
  `precio_precios` double DEFAULT NULL,
  `descripcion_precios` varchar(45) DEFAULT NULL,
  `KidProducto` int(11) NOT NULL,
  PRIMARY KEY (`KidPrecios`),
  KEY `fk_Precios_Producto1` (`KidProducto`),
  CONSTRAINT `fk_Precios_Producto1` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_precios`
--

LOCK TABLES `tbl_precios` WRITE;
/*!40000 ALTER TABLE `tbl_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_presupuesto`
--

DROP TABLE IF EXISTS `tbl_presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_presupuesto` (
  `Kidpresupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `KidMoneda` int(11) DEFAULT NULL,
  `KidArea` int(11) NOT NULL,
  `KidCuenta` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `anotacion` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Kidpresupuesto`),
  KEY `FK_Moneda_Presupuesto` (`KidMoneda`),
  KEY `FK_area_presupuesto` (`KidArea`),
  KEY `FK_cuentas_presupuesto` (`KidCuenta`),
  CONSTRAINT `FK_Moneda_Presupuesto` FOREIGN KEY (`KidMoneda`) REFERENCES `tbl_moneda` (`KidMoneda`),
  CONSTRAINT `FK_area_presupuesto` FOREIGN KEY (`KidArea`) REFERENCES `tbl_areas` (`KidArea`),
  CONSTRAINT `FK_cuentas_presupuesto` FOREIGN KEY (`KidCuenta`) REFERENCES `tbl_cuentas` (`KidCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_presupuesto`
--

LOCK TABLES `tbl_presupuesto` WRITE;
/*!40000 ALTER TABLE `tbl_presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `KidProducto` int(11) NOT NULL,
  `KidTipoProducto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `descripcion_producto` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidProducto`),
  KEY `fk_Producto_TipoProducto1` (`KidTipoProducto`),
  CONSTRAINT `fk_Producto_TipoProducto1` FOREIGN KEY (`KidTipoProducto`) REFERENCES `tbl_tipoproducto` (`KidTipoProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto_marca`
--

DROP TABLE IF EXISTS `tbl_producto_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto_marca` (
  `Kidproducto` int(11) NOT NULL,
  `Kidmarca` int(11) NOT NULL,
  PRIMARY KEY (`Kidproducto`,`Kidmarca`),
  KEY `fk_Marca_Producto` (`Kidmarca`),
  CONSTRAINT `fk_Marca_Producto` FOREIGN KEY (`Kidmarca`) REFERENCES `tbl_marca` (`Kidmarca`),
  CONSTRAINT `fk_Producto_Marca` FOREIGN KEY (`Kidproducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto_marca`
--

LOCK TABLES `tbl_producto_marca` WRITE;
/*!40000 ALTER TABLE `tbl_producto_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_producto_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_propiedad_rpt`
--

DROP TABLE IF EXISTS `tbl_propiedad_rpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_propiedad_rpt` (
  `PK_id_reporte` int(12) NOT NULL,
  `PK_id_usuario` varchar(25) NOT NULL,
  `PK_id_aplicacion` int(11) NOT NULL,
  `PK_id_Modulo` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_Modulo`,`PK_id_usuario`,`PK_id_aplicacion`),
  KEY `FK_Tbl_reporte_Tbl_propiedad_Rpt` (`PK_id_reporte`),
  KEY `FK_Tbl_usuario_Tbl_propiedad_Rpt` (`PK_id_usuario`),
  KEY `FK_Tbl_Aplicacio_Tbl_propiedad_Rpt` (`PK_id_aplicacion`),
  CONSTRAINT `FK_Tbl_Aplicacio_Tbl_propiedad_Rpt` FOREIGN KEY (`PK_id_aplicacion`) REFERENCES `tbl_aplicacion` (`PK_id_aplicacion`),
  CONSTRAINT `FK_Tbl_Modulo_Tbl_propiedad_Rpt` FOREIGN KEY (`PK_id_Modulo`) REFERENCES `tbl_modulo` (`PK_id_Modulo`),
  CONSTRAINT `FK_Tbl_reporte_Tbl_propiedad_Rpt` FOREIGN KEY (`PK_id_reporte`) REFERENCES `tbl_reporte` (`PK_id_reporte`),
  CONSTRAINT `FK_Tbl_usuario_Tbl_propiedad_Rpt` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_propiedad_rpt`
--

LOCK TABLES `tbl_propiedad_rpt` WRITE;
/*!40000 ALTER TABLE `tbl_propiedad_rpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_propiedad_rpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `KidProveedor` int(16) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `pagina` varchar(20) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pruebas`
--

DROP TABLE IF EXISTS `tbl_pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pruebas` (
  `KidPruebas` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `TiempoDuracion` varchar(45) DEFAULT NULL,
  `PreRequisitos` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidPruebas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pruebas`
--

LOCK TABLES `tbl_pruebas` WRITE;
/*!40000 ALTER TABLE `tbl_pruebas` DISABLE KEYS */;
INSERT INTO `tbl_pruebas` VALUES (1,'Prueba1','Desc1','20','1',0),(2,'Prueba2','Desc2','2','1',1);
/*!40000 ALTER TABLE `tbl_pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_puestos`
--

DROP TABLE IF EXISTS `tbl_puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_puestos` (
  `KidPuesto` int(11) NOT NULL,
  `KidArea` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `sueldofijo` varchar(45) DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidPuesto`),
  KEY `fk_Area_Puestos` (`KidArea`),
  CONSTRAINT `fk_Area_Puestos` FOREIGN KEY (`KidArea`) REFERENCES `tbl_areas` (`KidArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_puestos`
--

LOCK TABLES `tbl_puestos` WRITE;
/*!40000 ALTER TABLE `tbl_puestos` DISABLE KEYS */;
INSERT INTO `tbl_puestos` VALUES (1,1,'asdf','asdf','1222',1),(2,2,'ads','sdfae','2222',1);
/*!40000 ALTER TABLE `tbl_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quejas`
--

DROP TABLE IF EXISTS `tbl_quejas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_quejas` (
  `KidQueja` int(11) NOT NULL,
  `KidCliente` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `queja` text,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidQueja`),
  KEY `fk_Tbl_Quejas_Tbl_Clientes1` (`KidCliente`),
  CONSTRAINT `fk_Tbl_Quejas_Tbl_Clientes1` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quejas`
--

LOCK TABLES `tbl_quejas` WRITE;
/*!40000 ALTER TABLE `tbl_quejas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_quejas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recetas`
--

DROP TABLE IF EXISTS `tbl_recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recetas` (
  `KidRecetas` int(11) NOT NULL,
  `receta` varchar(500) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidRecetas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recetas`
--

LOCK TABLES `tbl_recetas` WRITE;
/*!40000 ALTER TABLE `tbl_recetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reporte`
--

DROP TABLE IF EXISTS `tbl_reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reporte` (
  `PK_id_reporte` int(12) NOT NULL,
  `PK_id_configuracion` int(12) NOT NULL,
  `nombre` varchar(95) NOT NULL,
  `nombre_archivo` varchar(100) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_reporte`),
  KEY `FK_Tbl_reporte_Tbl_Configuacion` (`PK_id_configuracion`),
  CONSTRAINT `FK_Tbl_reporte_Tbl_Configuacion` FOREIGN KEY (`PK_id_configuracion`) REFERENCES `tbl_configuracion_rpt` (`PK_id_configuracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reporte`
--

LOCK TABLES `tbl_reporte` WRITE;
/*!40000 ALTER TABLE `tbl_reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reservaciones`
--

DROP TABLE IF EXISTS `tbl_reservaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reservaciones` (
  `KidReservacion` int(11) NOT NULL,
  `KidCliente` int(11) NOT NULL,
  `KidEmpleado` int(11) NOT NULL,
  `fechaReservacion` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidReservacion`),
  KEY `fk_Tbl_Reservaciones_Tbl_Clientes1` (`KidCliente`),
  KEY `fk_Tbl_Reservaciones_Tbl_Empleados1` (`KidEmpleado`),
  CONSTRAINT `fk_Tbl_Reservaciones_Tbl_Clientes1` FOREIGN KEY (`KidCliente`) REFERENCES `tbl_clientes` (`KidCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Reservaciones_Tbl_Empleados1` FOREIGN KEY (`KidEmpleado`) REFERENCES `tbl_empleado` (`KidEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reservaciones`
--

LOCK TABLES `tbl_reservaciones` WRITE;
/*!40000 ALTER TABLE `tbl_reservaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reservaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_resultados`
--

DROP TABLE IF EXISTS `tbl_resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_resultados` (
  `KidResultados` int(11) NOT NULL,
  `KidBancoTalento` int(11) DEFAULT NULL,
  `KidPruebas` int(11) DEFAULT NULL,
  `Resultado` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidResultados`),
  KEY `FK_BancoTalento_Resultados` (`KidBancoTalento`),
  KEY `FK_Pruebas_Resultados` (`KidPruebas`),
  CONSTRAINT `FK_BancoTalento_Resultados` FOREIGN KEY (`KidBancoTalento`) REFERENCES `tbl_bancotalento` (`KidBancoTalento`),
  CONSTRAINT `FK_Pruebas_Resultados` FOREIGN KEY (`KidPruebas`) REFERENCES `tbl_pruebas` (`KidPruebas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_resultados`
--

LOCK TABLES `tbl_resultados` WRITE;
/*!40000 ALTER TABLE `tbl_resultados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles_de_pago`
--

DROP TABLE IF EXISTS `tbl_roles_de_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_roles_de_pago` (
  `KidRolpago` int(11) NOT NULL,
  `anio` date DEFAULT NULL,
  `mes` date DEFAULT NULL,
  `quincena` date DEFAULT NULL,
  `fechaelaboracion` date DEFAULT NULL,
  `estado` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`KidRolpago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles_de_pago`
--

LOCK TABLES `tbl_roles_de_pago` WRITE;
/*!40000 ALTER TABLE `tbl_roles_de_pago` DISABLE KEYS */;
INSERT INTO `tbl_roles_de_pago` VALUES (1,'2019-11-05','2019-11-05','2019-11-05','2019-11-05',0),(2,'2019-11-05','2019-11-05','2019-11-05','2019-11-05',1);
/*!40000 ALTER TABLE `tbl_roles_de_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rpt_app`
--

DROP TABLE IF EXISTS `tbl_rpt_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_rpt_app` (
  `PK_id_reporte` int(12) NOT NULL,
  `PK_id_aplicacion` int(11) NOT NULL,
  `PK_id_Modulo` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_reporte`,`PK_id_aplicacion`,`PK_id_Modulo`),
  KEY `FK_Tbl_Aplicacion_Tbl_rpt_app` (`PK_id_aplicacion`),
  KEY `FK_Tbl_Modulo_Tbl_rpt_app` (`PK_id_Modulo`),
  CONSTRAINT `FK_Tbl_Aplicacion_Tbl_rpt_app` FOREIGN KEY (`PK_id_aplicacion`) REFERENCES `tbl_aplicacion` (`PK_id_aplicacion`),
  CONSTRAINT `FK_Tbl_Modulo_Tbl_rpt_app` FOREIGN KEY (`PK_id_Modulo`) REFERENCES `tbl_modulo` (`PK_id_Modulo`),
  CONSTRAINT `FK_Tbl_Reporte_Tbl_rpt_app` FOREIGN KEY (`PK_id_reporte`) REFERENCES `tbl_reporte` (`PK_id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rpt_app`
--

LOCK TABLES `tbl_rpt_app` WRITE;
/*!40000 ALTER TABLE `tbl_rpt_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rpt_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rpt_mdl`
--

DROP TABLE IF EXISTS `tbl_rpt_mdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_rpt_mdl` (
  `PK_id_reporte` int(12) NOT NULL,
  `PK_id_Modulo` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_reporte`,`PK_id_Modulo`),
  KEY `FK_Tbl_modulo_Tbl_rpt_mdl` (`PK_id_Modulo`),
  CONSTRAINT `FK_Tbl_modulo_Tbl_rpt_mdl` FOREIGN KEY (`PK_id_Modulo`) REFERENCES `tbl_modulo` (`PK_id_Modulo`),
  CONSTRAINT `FK_Tbl_reporte_Tbl_rpt_mdl` FOREIGN KEY (`PK_id_reporte`) REFERENCES `tbl_reporte` (`PK_id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rpt_mdl`
--

LOCK TABLES `tbl_rpt_mdl` WRITE;
/*!40000 ALTER TABLE `tbl_rpt_mdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rpt_mdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salones`
--

DROP TABLE IF EXISTS `tbl_salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salones` (
  `KidNumeroSalon` int(11) NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidNumeroSalon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salones`
--

LOCK TABLES `tbl_salones` WRITE;
/*!40000 ALTER TABLE `tbl_salones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_serie`
--

DROP TABLE IF EXISTS `tbl_serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_serie` (
  `KidSerie` int(11) NOT NULL,
  `KidFolio` int(11) NOT NULL,
  `serie_serie` varchar(45) DEFAULT NULL,
  `certificado_serie` varchar(45) DEFAULT NULL,
  `regimen_fiscal_serie` varchar(45) DEFAULT NULL,
  `formato_serie` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidSerie`),
  KEY `FK_Folio_Serie` (`KidFolio`),
  CONSTRAINT `FK_Folio_Serie` FOREIGN KEY (`KidFolio`) REFERENCES `tbl_folios` (`KidFolio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_serie`
--

LOCK TABLES `tbl_serie` WRITE;
/*!40000 ALTER TABLE `tbl_serie` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicio`
--

DROP TABLE IF EXISTS `tbl_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_servicio` (
  `KidServicio` int(12) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicio`
--

LOCK TABLES `tbl_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_servicios`
--

DROP TABLE IF EXISTS `tbl_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_servicios` (
  `KidServicio` int(11) NOT NULL,
  `KidArea` int(11) NOT NULL,
  `nombreServicio` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidServicio`),
  KEY `fk_Tbl_Servicios_Tbl_Areas1` (`KidArea`),
  CONSTRAINT `fk_Tbl_Servicios_Tbl_Areas1` FOREIGN KEY (`KidArea`) REFERENCES `tbl_areas` (`KidArea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_servicios`
--

LOCK TABLES `tbl_servicios` WRITE;
/*!40000 ALTER TABLE `tbl_servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_solicitudrembolso`
--

DROP TABLE IF EXISTS `tbl_solicitudrembolso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_solicitudrembolso` (
  `KidSolicitudRembolso` int(11) NOT NULL,
  `fecha_solicitudrembolso` date DEFAULT NULL,
  `motivo_solicitudrembolso` varchar(45) DEFAULT NULL,
  `KidFacturaEncabezado` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidSolicitudRembolso`),
  KEY `fk_SolicitudRembolso_FacturaEncabezado1` (`KidFacturaEncabezado`),
  CONSTRAINT `fk_SolicitudRembolso_FacturaEncabezado1` FOREIGN KEY (`KidFacturaEncabezado`) REFERENCES `tbl_facturaencabezado` (`KidFacturaEncabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_solicitudrembolso`
--

LOCK TABLES `tbl_solicitudrembolso` WRITE;
/*!40000 ALTER TABLE `tbl_solicitudrembolso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_solicitudrembolso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock`
--

DROP TABLE IF EXISTS `tbl_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock` (
  `Kidstock` int(11) NOT NULL,
  `cantidadMaxima` int(11) DEFAULT NULL,
  `cantidadMinima` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kidstock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock`
--

LOCK TABLES `tbl_stock` WRITE;
/*!40000 ALTER TABLE `tbl_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sucursal`
--

DROP TABLE IF EXISTS `tbl_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sucursal` (
  `KidSucursal` int(16) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiendas`
--

DROP TABLE IF EXISTS `tbl_tiendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tiendas` (
  `KidTienda` int(11) NOT NULL,
  `KidArea` int(11) NOT NULL,
  `descripcion` text,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidTienda`),
  KEY `fk_Tbl_Tiendas_Tbl_Areas1` (`KidArea`),
  CONSTRAINT `fk_Tbl_Tiendas_Tbl_Areas1` FOREIGN KEY (`KidArea`) REFERENCES `tbl_areas` (`KidArea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiendas`
--

LOCK TABLES `tbl_tiendas` WRITE;
/*!40000 ALTER TABLE `tbl_tiendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiendas_producto`
--

DROP TABLE IF EXISTS `tbl_tiendas_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tiendas_producto` (
  `KidProducto` int(11) NOT NULL,
  `KidTienda` int(11) NOT NULL,
  PRIMARY KEY (`KidProducto`,`KidTienda`),
  KEY `fk_Tbl_Producto_has_Tbl_Tiendas_Tbl_Tiendas1` (`KidTienda`),
  CONSTRAINT `fk_Tbl_Producto_has_Tbl_Tiendas_Tbl_Producto1` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tbl_Producto_has_Tbl_Tiendas_Tbl_Tiendas1` FOREIGN KEY (`KidTienda`) REFERENCES `tbl_tiendas` (`KidTienda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiendas_producto`
--

LOCK TABLES `tbl_tiendas_producto` WRITE;
/*!40000 ALTER TABLE `tbl_tiendas_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiendas_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_habitacion`
--

DROP TABLE IF EXISTS `tbl_tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_habitacion` (
  `KidTipoHabitacion` varchar(45) NOT NULL,
  `numeroCamas` int(11) DEFAULT NULL,
  `numeroAmbientes` int(11) DEFAULT NULL,
  `numeroPersonas` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidTipoHabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_habitacion`
--

LOCK TABLES `tbl_tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `proyectogeneral` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EstadoHabitaciones` AFTER UPDATE ON `tbl_tipo_habitacion` FOR EACH ROW BEGIN
UPDATE tbl_habitaciones set estado = new.estado WHERE tbl_habitaciones.KidTipoHabitacion=new.KidTipoHabitacion;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `proyectogeneral` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Table structure for table `tbl_tipo_lista_precios`
--

DROP TABLE IF EXISTS `tbl_tipo_lista_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_lista_precios` (
  `Kidtipo_lista_precios` int(11) NOT NULL,
  `nombre_lista_precios_detalle` varchar(45) DEFAULT NULL,
  `descuento_lista_precios` double DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Kidtipo_lista_precios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_lista_precios`
--

LOCK TABLES `tbl_tipo_lista_precios` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_lista_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_lista_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_poliza`
--

DROP TABLE IF EXISTS `tbl_tipo_poliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_poliza` (
  `KidTipoDePoliza` varchar(5) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidTipoDePoliza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_poliza`
--

LOCK TABLES `tbl_tipo_poliza` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_poliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_poliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipocambio`
--

DROP TABLE IF EXISTS `tbl_tipocambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipocambio` (
  `KidMonedaBase` varchar(11) NOT NULL,
  `KidMonedaConversion` varchar(11) NOT NULL,
  `tipo_cambio` float DEFAULT NULL,
  `fecha_tipo_cambio` date DEFAULT NULL,
  PRIMARY KEY (`KidMonedaBase`,`KidMonedaConversion`),
  KEY `fk_tbl_tipoCambio_tbl_Divisa_idx` (`KidMonedaConversion`),
  CONSTRAINT `fk_tbl_tipoCambio_tbl_Divisa` FOREIGN KEY (`KidMonedaConversion`) REFERENCES `tbl_divisa` (`KidDivisa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_tipoCambio_tbl_Divisa1` FOREIGN KEY (`KidMonedaBase`) REFERENCES `tbl_divisa` (`KidDivisa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipocambio`
--

LOCK TABLES `tbl_tipocambio` WRITE;
/*!40000 ALTER TABLE `tbl_tipocambio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipocliente`
--

DROP TABLE IF EXISTS `tbl_tipocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipocliente` (
  `KidTipoCliente` int(11) NOT NULL,
  `tipo_tipocliente` varchar(45) DEFAULT NULL,
  `descripcion_tipocliente` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidTipoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipocliente`
--

LOCK TABLES `tbl_tipocliente` WRITE;
/*!40000 ALTER TABLE `tbl_tipocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipocuenta`
--

DROP TABLE IF EXISTS `tbl_tipocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipocuenta` (
  `KidTipoCuenta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipoCuenta` varchar(25) DEFAULT NULL,
  `descripcion_tipoCuenta` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidTipoCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipocuenta`
--

LOCK TABLES `tbl_tipocuenta` WRITE;
/*!40000 ALTER TABLE `tbl_tipocuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipofactura`
--

DROP TABLE IF EXISTS `tbl_tipofactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipofactura` (
  `KidTipoFactura` int(11) NOT NULL,
  `tipo_tipofactura` varchar(45) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidTipoFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipofactura`
--

LOCK TABLES `tbl_tipofactura` WRITE;
/*!40000 ALTER TABLE `tbl_tipofactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipofactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipopago`
--

DROP TABLE IF EXISTS `tbl_tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipopago` (
  `KidTipoPago` int(11) NOT NULL,
  `tipo_tipopago` varchar(45) DEFAULT NULL,
  `descripcion_tipopago` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KidTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipoproducto`
--

DROP TABLE IF EXISTS `tbl_tipoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipoproducto` (
  `KidTipoProducto` int(11) NOT NULL,
  `tipo_tipoproducto` varchar(45) DEFAULT NULL,
  `descripcion_tipoproducto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`KidTipoProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipoproducto`
--

LOCK TABLES `tbl_tipoproducto` WRITE;
/*!40000 ALTER TABLE `tbl_tipoproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiposcomprobantes`
--

DROP TABLE IF EXISTS `tbl_tiposcomprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tiposcomprobantes` (
  `KidtiposComprobantes` int(11) NOT NULL,
  `NombreComprobante` varchar(45) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`KidtiposComprobantes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiposcomprobantes`
--

LOCK TABLES `tbl_tiposcomprobantes` WRITE;
/*!40000 ALTER TABLE `tbl_tiposcomprobantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiposcomprobantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ubicacion`
--

DROP TABLE IF EXISTS `tbl_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ubicacion` (
  `Kidubicacion` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `capacidad` int(10) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Kidubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ubicacion`
--

LOCK TABLES `tbl_ubicacion` WRITE;
/*!40000 ALTER TABLE `tbl_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ubicacionprodcuto`
--

DROP TABLE IF EXISTS `tbl_ubicacionprodcuto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ubicacionprodcuto` (
  `Kidubicacion` int(11) NOT NULL,
  `Kidproducto` int(11) NOT NULL,
  PRIMARY KEY (`Kidubicacion`,`Kidproducto`),
  KEY `fk_Producto_Ubicacion` (`Kidproducto`),
  CONSTRAINT `fk_Producto_Ubicacion` FOREIGN KEY (`Kidproducto`) REFERENCES `tbl_producto` (`KidProducto`),
  CONSTRAINT `fk_Ubicacion_Producto` FOREIGN KEY (`Kidubicacion`) REFERENCES `tbl_ubicacion` (`Kidubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ubicacionprodcuto`
--

LOCK TABLES `tbl_ubicacionprodcuto` WRITE;
/*!40000 ALTER TABLE `tbl_ubicacionprodcuto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ubicacionprodcuto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
  `PK_id_usuario` varchar(25) NOT NULL,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `apellido_usuarios` varchar(45) DEFAULT NULL,
  `password_usuario` varchar(45) DEFAULT NULL,
  `cambio_contrasena` tinyint(4) DEFAULT NULL,
  `estado_usuario` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES ('MiUsuario','Usuario','Prueba','e19d5cd5af0378da05f63f891c7467af',0,1);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `proyectogeneral` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `encriptarClave` BEFORE INSERT ON `tbl_usuario` FOR EACH ROW BEGIN
SET NEW.password_usuario = MD5(NEW.password_usuario);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `proyectogeneral` CHARACTER SET utf8 COLLATE utf8_general_ci ;
ALTER DATABASE `proyectogeneral` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizarClave` BEFORE UPDATE ON `tbl_usuario` FOR EACH ROW IF NEW.password_usuario <> OLD.password_usuario THEN
SET NEW.password_usuario = MD5(NEW.password_usuario);
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `proyectogeneral` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Table structure for table `tbl_usuario_aplicacion`
--

DROP TABLE IF EXISTS `tbl_usuario_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario_aplicacion` (
  `PK_id_usuario` varchar(25) NOT NULL,
  `PK_id_aplicacion` int(11) NOT NULL,
  `ingresar` tinyint(4) DEFAULT NULL,
  `consultar` tinyint(4) DEFAULT NULL,
  `modificar` tinyint(4) DEFAULT NULL,
  `eliminar` tinyint(4) DEFAULT NULL,
  `imprimir` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PK_id_usuario`,`PK_id_aplicacion`),
  KEY `fk_tbl_usuario_aplicacion_tbl_aplicacion1` (`PK_id_aplicacion`),
  CONSTRAINT `fk_Usuario_aplicacion_Usuario1` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_usuario_aplicacion_tbl_aplicacion1` FOREIGN KEY (`PK_id_aplicacion`) REFERENCES `tbl_aplicacion` (`PK_id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_aplicacion`
--

LOCK TABLES `tbl_usuario_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_aplicacion` DISABLE KEYS */;
INSERT INTO `tbl_usuario_aplicacion` VALUES ('MiUsuario',1,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_usuario_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_perfil`
--

DROP TABLE IF EXISTS `tbl_usuario_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario_perfil` (
  `PK_id_usuario` varchar(25) NOT NULL,
  `PK_id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`PK_id_usuario`,`PK_id_perfil`),
  KEY `fk_Usuario_perfil_Perfil1` (`PK_id_perfil`),
  CONSTRAINT `fk_Usuario_perfil_Perfil1` FOREIGN KEY (`PK_id_perfil`) REFERENCES `tbl_perfil_encabezado` (`PK_id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_perfil_Usuario1` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_perfil`
--

LOCK TABLES `tbl_usuario_perfil` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproveedorbodega`
--

DROP TABLE IF EXISTS `tblproveedorbodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproveedorbodega` (
  `KidProveedorBodega` int(16) NOT NULL,
  `KidProveedor` int(16) NOT NULL,
  `KidBodega` int(16) NOT NULL,
  `KidProducto` int(16) NOT NULL,
  `stock` int(3) DEFAULT NULL,
  `maxStock` int(3) DEFAULT NULL,
  `minStock` int(3) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`KidProveedorBodega`),
  KEY `FK_proveedor_bodega` (`KidProveedor`),
  KEY `FK_bodega_proveedor` (`KidBodega`),
  KEY `Fk_proveedor_bodega_producto` (`KidProducto`),
  CONSTRAINT `FK_bodega_proveedor` FOREIGN KEY (`KidBodega`) REFERENCES `tbl_bodega` (`KidBodega`),
  CONSTRAINT `FK_proveedor_bodega` FOREIGN KEY (`KidProveedor`) REFERENCES `tbl_proveedor` (`KidProveedor`),
  CONSTRAINT `Fk_proveedor_bodega_producto` FOREIGN KEY (`KidProducto`) REFERENCES `tbl_producto` (`KidProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproveedorbodega`
--

LOCK TABLES `tblproveedorbodega` WRITE;
/*!40000 ALTER TABLE `tblproveedorbodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproveedorbodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectogeneral'
--

--
-- Dumping routines for database 'proyectogeneral'
--
/*!50003 DROP PROCEDURE IF EXISTS `procedimientoLogin` */;
ALTER DATABASE `proyectogeneral` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedimientoLogin`(IN `usuario` VARCHAR(25), IN `clave` VARCHAR(25))
    NO SQL
Select tbl_usuario.PK_id_Usuario FROM tbl_usuario where tbl_usuario.PK_id_Usuario = usuario and tbl_usuario.password_usuario = MD5(clave) AND tbl_usuario.estado_usuario=1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `proyectogeneral` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-05 13:54:49
