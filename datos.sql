-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyectogeneral
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `ayuda`
--

LOCK TABLES `ayuda` WRITE;
/*!40000 ALTER TABLE `ayuda` DISABLE KEYS */;
INSERT INTO `ayuda` VALUES (1,'Página web ayuda/ayuda.chm','menu.html'),(2,'Página web ayuda/ayuda.chm','Menúboletos.html'),(10,'Página web ayuda/Ayuda-Rhhh.chm','Area.html'),(11,'Página web ayuda/Ayuda-Rhhh.chm','Conceptos.html'),(12,'Página web ayuda/Ayuda-Rhhh.chm','Departamentos.html'),(13,'Página web ayuda/Ayuda-Rhhh.chm','Empleados.html'),(14,'Página web ayuda/Ayuda-Rhhh.chm','Prueba.html'),(15,'Página web ayuda/Ayuda-Rhhh.chm','Puestos.html'),(16,'Página web ayuda/Ayuda-Rhhh.chm','Roles de pago.html'),(17,'Página web ayuda/Ayuda-Rhhh.chm','MediosComunicacion.html'),(18,'Página web ayuda/Ayuda-Rhhh.chm','Perfil_Profesional.html'),(19,'Página web ayuda/Ayuda-Rhhh.chm','Curriculum.html');
/*!40000 ALTER TABLE `ayuda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_acreedor`
--

LOCK TABLES `tbl_acreedor` WRITE;
/*!40000 ALTER TABLE `tbl_acreedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_acreedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_aplicacion`
--

LOCK TABLES `tbl_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_aplicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_areas`
--

LOCK TABLES `tbl_areas` WRITE;
/*!40000 ALTER TABLE `tbl_areas` DISABLE KEYS */;
INSERT INTO `tbl_areas` VALUES (1,'asd',1);
/*!40000 ALTER TABLE `tbl_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_asignacion_empleado`
--

LOCK TABLES `tbl_asignacion_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_asignacion_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_asignacion_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_balancegeneral`
--

LOCK TABLES `tbl_balancegeneral` WRITE;
/*!40000 ALTER TABLE `tbl_balancegeneral` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_balancegeneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_bancos`
--

LOCK TABLES `tbl_bancos` WRITE;
/*!40000 ALTER TABLE `tbl_bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_bancotalento`
--

LOCK TABLES `tbl_bancotalento` WRITE;
/*!40000 ALTER TABLE `tbl_bancotalento` DISABLE KEYS */;
INSERT INTO `tbl_bancotalento` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `tbl_bancotalento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_bitacora`
--

LOCK TABLES `tbl_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_bitacora` VALUES (1,'ivan','2019-11-08','06:05:34','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(2,'ivan','2019-11-08','06:07:17','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(3,'ivan','2019-11-08','06:10:42','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(4,'ivan','2019-11-08','06:12:34','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(5,'ivan','2019-11-08','06:37:22','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(6,'ivan','2019-11-08','06:46:02','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(7,'ivan','2019-11-08','06:50:28','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(8,'ivan','2019-11-08','07:03:51','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(9,'ivan','2019-11-08','07:13:29','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(10,'ivan','2019-11-08','07:18:30','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(11,'ivan','2019-11-08','07:35:23','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(12,'ivan','2019-11-08','07:38:18','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(13,'ivan','2019-11-08','07:42:00','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(14,'ivan','2019-11-08','07:47:42','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(15,'ivan','2019-11-08','07:50:18','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(16,'ivan','2019-11-08','08:52:40','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(17,'ivan','2019-11-08','08:56:46','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(18,'ivan','2019-11-09','03:13:32','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(19,'ivan','2019-11-09','04:24:42','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(20,'ivan','2019-11-09','04:25:21','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(21,'ivan','2019-11-09','04:34:34','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(23,'ivan','2019-11-09','06:03:21','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(24,'ivan','2019-11-09','06:07:18','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(25,'ivan','2019-11-09','06:15:46','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(26,'ivan','2019-11-09','06:26:37','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(27,'ivan','2019-11-09','06:38:55','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(28,'ivan','2019-11-09','06:41:47','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(29,'ivan','2019-11-09','06:45:49','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(30,'ivan','2019-11-09','07:04:13','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(31,'ivan','2019-11-09','07:07:52','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(32,'ivan','2019-11-09','07:09:30','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(33,'ivan','2019-11-09','07:11:17','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(34,'ivan','2019-11-09','07:13:33','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(35,'ivan','2019-11-09','07:15:20','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(36,'ivan','2019-11-09','07:16:16','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(37,'ivan','2019-11-09','07:17:17','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(38,'ivan','2019-11-09','07:19:48','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(39,'ivan','2019-11-09','07:21:43','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(40,'ivan','2019-11-09','07:22:36','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(41,'ivan','2019-11-09','07:24:15','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(42,'ivan','2019-11-09','07:25:00','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(43,'ivan','2019-11-09','07:26:55','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(44,'ivan','2019-11-09','07:30:10','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(45,'ivan','2019-11-09','07:42:14','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(46,'ivan','2019-11-09','07:43:55','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(47,'ivan','2019-11-09','07:47:31','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(48,'ivan','2019-11-09','07:56:40','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(49,'ivan','2019-11-09','08:03:31','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(50,'ivan','2019-11-09','08:09:54','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(51,'ivan','2019-11-09','08:12:18','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(52,'ivan','2019-11-09','08:17:39','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(53,'ivan','2019-11-09','08:19:37','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(54,'ivan','2019-11-09','08:25:02','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(55,'ivan','2019-11-09','08:26:10','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(56,'ivan','2019-11-09','08:28:42','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(57,'ivan','2019-11-09','08:35:15','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(58,'ivan','2019-11-09','08:44:49','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(59,'ivan','2019-11-09','09:05:11','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(60,'ivan','2019-11-09','09:06:20','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(61,'ivan','2019-11-09','09:09:49','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(62,'ivan','2019-11-09','09:15:42','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(63,'ivan','2019-11-09','09:19:33','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(64,'ivan','2019-11-09','09:23:22','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(65,'ivan','2019-11-09','09:25:48','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(66,'ivan','2019-11-09','09:28:17','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(67,'ivan','2019-11-09','09:31:02','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(68,'ivan','2019-11-09','09:31:56','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(69,'ivan','2019-11-09','09:57:08','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(70,'ivan','2019-11-09','09:59:28','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(71,'ivan','2019-11-09','10:01:19','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(72,'ivan','2019-11-09','10:04:52','DESKTOP-F20T037','192.168.0.11','Se logeo al sistema','Login'),(73,'ivan','2019-11-10','05:48:14','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(74,'ivan','2019-11-10','06:02:20','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(75,'ivan','2019-11-10','06:05:50','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(76,'ivan','2019-11-10','06:25:31','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(77,'ivan','2019-11-10','06:29:15','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(78,'ivan','2019-11-10','06:30:11','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(79,'ivan','2019-11-10','06:43:10','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(80,'ivan','2019-11-10','06:43:56','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login'),(81,'ivan','2019-11-10','06:46:51','DESKTOP-F20T037','192.168.0.10','Se logeo al sistema','Login');
/*!40000 ALTER TABLE `tbl_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_bodega`
--

LOCK TABLES `tbl_bodega` WRITE;
/*!40000 ALTER TABLE `tbl_bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_categorias_habitacion`
--

LOCK TABLES `tbl_categorias_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_categorias_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_categorias_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `tbl_check_in`
--

LOCK TABLES `tbl_check_in` WRITE;
/*!40000 ALTER TABLE `tbl_check_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_check_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_check_out`
--

LOCK TABLES `tbl_check_out` WRITE;
/*!40000 ALTER TABLE `tbl_check_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_check_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_chequera`
--

LOCK TABLES `tbl_chequera` WRITE;
/*!40000 ALTER TABLE `tbl_chequera` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chequera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_clientes`
--

LOCK TABLES `tbl_clientes` WRITE;
/*!40000 ALTER TABLE `tbl_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_comandas`
--

LOCK TABLES `tbl_comandas` WRITE;
/*!40000 ALTER TABLE `tbl_comandas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_comisiones`
--

LOCK TABLES `tbl_comisiones` WRITE;
/*!40000 ALTER TABLE `tbl_comisiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_conceptos`
--

LOCK TABLES `tbl_conceptos` WRITE;
/*!40000 ALTER TABLE `tbl_conceptos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conceptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_conciliacion_bancaria_detalle`
--

LOCK TABLES `tbl_conciliacion_bancaria_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_conciliacion_bancaria_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conciliacion_bancaria_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_conciliacion_bancaria_encabezado`
--

LOCK TABLES `tbl_conciliacion_bancaria_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_conciliacion_bancaria_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conciliacion_bancaria_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_consulta`
--

LOCK TABLES `tbl_consulta` WRITE;
/*!40000 ALTER TABLE `tbl_consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_contacto`
--

LOCK TABLES `tbl_contacto` WRITE;
/*!40000 ALTER TABLE `tbl_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_control_mesas`
--

LOCK TABLES `tbl_control_mesas` WRITE;
/*!40000 ALTER TABLE `tbl_control_mesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_control_mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_cotizaciondetalle`
--

LOCK TABLES `tbl_cotizaciondetalle` WRITE;
/*!40000 ALTER TABLE `tbl_cotizaciondetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cotizaciondetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_cotizacionencabezado`
--

LOCK TABLES `tbl_cotizacionencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_cotizacionencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cotizacionencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_creditopedido`
--

LOCK TABLES `tbl_creditopedido` WRITE;
/*!40000 ALTER TABLE `tbl_creditopedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_creditopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_creditoservicio`
--

LOCK TABLES `tbl_creditoservicio` WRITE;
/*!40000 ALTER TABLE `tbl_creditoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_creditoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_credpeddet`
--

LOCK TABLES `tbl_credpeddet` WRITE;
/*!40000 ALTER TABLE `tbl_credpeddet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_credpeddet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_credservdet`
--

LOCK TABLES `tbl_credservdet` WRITE;
/*!40000 ALTER TABLE `tbl_credservdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_credservdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_cuentabancaria`
--

LOCK TABLES `tbl_cuentabancaria` WRITE;
/*!40000 ALTER TABLE `tbl_cuentabancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cuentabancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_cuentas`
--

LOCK TABLES `tbl_cuentas` WRITE;
/*!40000 ALTER TABLE `tbl_cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_curriculums`
--

LOCK TABLES `tbl_curriculums` WRITE;
/*!40000 ALTER TABLE `tbl_curriculums` DISABLE KEYS */;
INSERT INTO `tbl_curriculums` VALUES (1,'ivan','ivan','123','15 calle','ivan',1,1,1,1,1,1,'asiiiii','qweqwe',100,7,1),(2,'fabio','fabio','456','78 avenida','fabio',1,1,0,1,1,1,'assssssssss','qweqwewqe',500,7,1),(3,'iker','iker','098','71 calle','iker',1,0,0,0,0,0,'qwe','asdass',50,7,1);
/*!40000 ALTER TABLE `tbl_curriculums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_departamentos`
--

LOCK TABLES `tbl_departamentos` WRITE;
/*!40000 ALTER TABLE `tbl_departamentos` DISABLE KEYS */;
INSERT INTO `tbl_departamentos` VALUES (1,'zxc','1','asd','123',1,1);
/*!40000 ALTER TABLE `tbl_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_descuentos`
--

LOCK TABLES `tbl_descuentos` WRITE;
/*!40000 ALTER TABLE `tbl_descuentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_descuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_desempeñoempleado`
--

LOCK TABLES `tbl_desempeñoempleado` WRITE;
/*!40000 ALTER TABLE `tbl_desempeñoempleado` DISABLE KEYS */;
INSERT INTO `tbl_desempeñoempleado` VALUES (1,1,1,80,1),(2,1,2,90,1);
/*!40000 ALTER TABLE `tbl_desempeñoempleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_control`
--

LOCK TABLES `tbl_detalle_control` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_evento`
--

LOCK TABLES `tbl_detalle_evento` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_folio`
--

LOCK TABLES `tbl_detalle_folio` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_folio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_folio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_lista_precios`
--

LOCK TABLES `tbl_detalle_lista_precios` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_lista_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_lista_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_producto`
--

LOCK TABLES `tbl_detalle_producto` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_reservacion`
--

LOCK TABLES `tbl_detalle_reservacion` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detalle_roles`
--

LOCK TABLES `tbl_detalle_roles` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detallecomprobante`
--

LOCK TABLES `tbl_detallecomprobante` WRITE;
/*!40000 ALTER TABLE `tbl_detallecomprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detallecomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detallepedido`
--

LOCK TABLES `tbl_detallepedido` WRITE;
/*!40000 ALTER TABLE `tbl_detallepedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_detallereportevacante`
--

LOCK TABLES `tbl_detallereportevacante` WRITE;
/*!40000 ALTER TABLE `tbl_detallereportevacante` DISABLE KEYS */;
INSERT INTO `tbl_detallereportevacante` VALUES (1,1,1,1,1,1,0,'No tiene',1000,1),(2,1,1,0,0,0,1,'adios',10.5,1),(3,1,0,0,0,0,1,'asd',11,1),(4,1,0,0,0,0,1,'we',100,1),(5,1,0,0,0,0,1,'qweewqweq',12,1),(6,1,0,0,0,0,0,'',1050.3,1),(7,1,0,0,0,0,0,'',50,1),(8,1,0,0,0,0,1,'Curso de tecnico.',5000,1);
/*!40000 ALTER TABLE `tbl_detallereportevacante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_devoluciones`
--

LOCK TABLES `tbl_devoluciones` WRITE;
/*!40000 ALTER TABLE `tbl_devoluciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_devoluciones_platillos`
--

LOCK TABLES `tbl_devoluciones_platillos` WRITE;
/*!40000 ALTER TABLE `tbl_devoluciones_platillos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_devoluciones_platillos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_divisa`
--

LOCK TABLES `tbl_divisa` WRITE;
/*!40000 ALTER TABLE `tbl_divisa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_divisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_empcontable`
--

LOCK TABLES `tbl_empcontable` WRITE;
/*!40000 ALTER TABLE `tbl_empcontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_empcontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'ivan','mogollon','123','321','456','654','789','987','753','1999-08-05','c',1,1,1),(2,'asd','qwe','2143','2143','1234','2143','645','3645','3465','2000-08-08','c',1,1,1);
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_encabezado_lista_precios`
--

LOCK TABLES `tbl_encabezado_lista_precios` WRITE;
/*!40000 ALTER TABLE `tbl_encabezado_lista_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezado_lista_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_encabezadocomprobante`
--

LOCK TABLES `tbl_encabezadocomprobante` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadocomprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezadocomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_encabezadopedido`
--

LOCK TABLES `tbl_encabezadopedido` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadopedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encabezadopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_encabezadoreportevacante`
--

LOCK TABLES `tbl_encabezadoreportevacante` WRITE;
/*!40000 ALTER TABLE `tbl_encabezadoreportevacante` DISABLE KEYS */;
INSERT INTO `tbl_encabezadoreportevacante` VALUES (1,1,1,'2019-08-11','Planilla',1,1),(1,2,2,'2019-11-16','Contrato Temporal',2,1),(2,2,2,'2019-11-09','Contrato Indefinido',2,1),(3,1,1,'2019-11-09','Contrato Indefinido',1,1),(4,1,1,'2019-11-09','Planilla',1,1),(5,1,1,'2019-11-09','Contrato Indefinido',1,1),(6,1,1,'2019-11-08','Contrato Indefinido',1,1),(7,1,1,'2019-11-09','Contrato Indefinido',1,1),(8,1,1,'2019-11-11','Planilla',1,1);
/*!40000 ALTER TABLE `tbl_encabezadoreportevacante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_estado_perdidas_ganacias_detalle`
--

LOCK TABLES `tbl_estado_perdidas_ganacias_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganacias_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganacias_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_estado_perdidas_ganancias_encabezado`
--

LOCK TABLES `tbl_estado_perdidas_ganancias_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganancias_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_perdidas_ganancias_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_eventos`
--

LOCK TABLES `tbl_eventos` WRITE;
/*!40000 ALTER TABLE `tbl_eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_existencia`
--

LOCK TABLES `tbl_existencia` WRITE;
/*!40000 ALTER TABLE `tbl_existencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_existencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_existencias`
--

LOCK TABLES `tbl_existencias` WRITE;
/*!40000 ALTER TABLE `tbl_existencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_existencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_facturadetalle`
--

LOCK TABLES `tbl_facturadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_facturadetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_facturadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_facturaencabezado`
--

LOCK TABLES `tbl_facturaencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_facturaencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_facturaencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_flujoefectivo_detalle`
--

LOCK TABLES `tbl_flujoefectivo_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_flujoefectivo_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_flujoefectivo_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_flujoefectivo_encabezado`
--

LOCK TABLES `tbl_flujoefectivo_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_flujoefectivo_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_flujoefectivo_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_folios`
--

LOCK TABLES `tbl_folios` WRITE;
/*!40000 ALTER TABLE `tbl_folios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_folios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_gestionmovimientocliente`
--

LOCK TABLES `tbl_gestionmovimientocliente` WRITE;
/*!40000 ALTER TABLE `tbl_gestionmovimientocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_gestionmovimientocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_habitaciones`
--

LOCK TABLES `tbl_habitaciones` WRITE;
/*!40000 ALTER TABLE `tbl_habitaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_historia_inventario`
--

LOCK TABLES `tbl_historia_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_historia_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_historia_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_impuesto`
--

LOCK TABLES `tbl_impuesto` WRITE;
/*!40000 ALTER TABLE `tbl_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_ingredientes`
--

LOCK TABLES `tbl_ingredientes` WRITE;
/*!40000 ALTER TABLE `tbl_ingredientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_libro_bancos`
--

LOCK TABLES `tbl_libro_bancos` WRITE;
/*!40000 ALTER TABLE `tbl_libro_bancos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_libro_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_librodiario`
--

LOCK TABLES `tbl_librodiario` WRITE;
/*!40000 ALTER TABLE `tbl_librodiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_librodiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_libromayor_detalle`
--

LOCK TABLES `tbl_libromayor_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_libromayor_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_libromayor_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_libromayor_encabezado`
--

LOCK TABLES `tbl_libromayor_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_libromayor_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_libromayor_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_medios_comunicacion`
--

LOCK TABLES `tbl_medios_comunicacion` WRITE;
/*!40000 ALTER TABLE `tbl_medios_comunicacion` DISABLE KEYS */;
INSERT INTO `tbl_medios_comunicacion` VALUES (1,'internet','internet','123',1),(2,'periodico','periodico','321',1);
/*!40000 ALTER TABLE `tbl_medios_comunicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_menus`
--

LOCK TABLES `tbl_menus` WRITE;
/*!40000 ALTER TABLE `tbl_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_mesas`
--

LOCK TABLES `tbl_mesas` WRITE;
/*!40000 ALTER TABLE `tbl_mesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_modulo`
--

LOCK TABLES `tbl_modulo` WRITE;
/*!40000 ALTER TABLE `tbl_modulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_moneda`
--

LOCK TABLES `tbl_moneda` WRITE;
/*!40000 ALTER TABLE `tbl_moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_moviemiento_inventario`
--

LOCK TABLES `tbl_moviemiento_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_moviemiento_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_moviemiento_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_movimientodetalle`
--

LOCK TABLES `tbl_movimientodetalle` WRITE;
/*!40000 ALTER TABLE `tbl_movimientodetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movimientodetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_movimientoencabezado`
--

LOCK TABLES `tbl_movimientoencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_movimientoencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_movimientoencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_nominasdetalle`
--

LOCK TABLES `tbl_nominasdetalle` WRITE;
/*!40000 ALTER TABLE `tbl_nominasdetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nominasdetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_nominasencabezado`
--

LOCK TABLES `tbl_nominasencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_nominasencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nominasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_objetos_perdidos`
--

LOCK TABLES `tbl_objetos_perdidos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos_perdidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_objetos_perdidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_orden_compra_encabezado`
--

LOCK TABLES `tbl_orden_compra_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_orden_compra_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_orden_compra_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_orden_dompra_detalle`
--

LOCK TABLES `tbl_orden_dompra_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_orden_dompra_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_orden_dompra_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_pagos`
--

LOCK TABLES `tbl_pagos` WRITE;
/*!40000 ALTER TABLE `tbl_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_pagoservicio`
--

LOCK TABLES `tbl_pagoservicio` WRITE;
/*!40000 ALTER TABLE `tbl_pagoservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pagoservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_pedido`
--

LOCK TABLES `tbl_pedido` WRITE;
/*!40000 ALTER TABLE `tbl_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_pedidodet`
--

LOCK TABLES `tbl_pedidodet` WRITE;
/*!40000 ALTER TABLE `tbl_pedidodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pedidodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_perfil_detalle`
--

LOCK TABLES `tbl_perfil_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_perfil_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_perfil_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_perfil_encabezado`
--

LOCK TABLES `tbl_perfil_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_perfil_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_perfil_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_perfil_profesional`
--

LOCK TABLES `tbl_perfil_profesional` WRITE;
/*!40000 ALTER TABLE `tbl_perfil_profesional` DISABLE KEYS */;
INSERT INTO `tbl_perfil_profesional` VALUES (1,'conta','2','asfad','conta','asdfghj',1),(2,'pogra','3','qwertyu','progra','asdfghjf',1);
/*!40000 ALTER TABLE `tbl_perfil_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_plandecarrera`
--

LOCK TABLES `tbl_plandecarrera` WRITE;
/*!40000 ALTER TABLE `tbl_plandecarrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_plandecarrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_planillasdetalle`
--

LOCK TABLES `tbl_planillasdetalle` WRITE;
/*!40000 ALTER TABLE `tbl_planillasdetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_planillasdetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_planillasencabezado`
--

LOCK TABLES `tbl_planillasencabezado` WRITE;
/*!40000 ALTER TABLE `tbl_planillasencabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_planillasencabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_platillos`
--

LOCK TABLES `tbl_platillos` WRITE;
/*!40000 ALTER TABLE `tbl_platillos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_platillos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_poliza`
--

LOCK TABLES `tbl_poliza` WRITE;
/*!40000 ALTER TABLE `tbl_poliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_poliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_poliza_detalle`
--

LOCK TABLES `tbl_poliza_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_poliza_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_poliza_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_poliza_encabezado`
--

LOCK TABLES `tbl_poliza_encabezado` WRITE;
/*!40000 ALTER TABLE `tbl_poliza_encabezado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_poliza_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_precios`
--

LOCK TABLES `tbl_precios` WRITE;
/*!40000 ALTER TABLE `tbl_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_presupuesto`
--

LOCK TABLES `tbl_presupuesto` WRITE;
/*!40000 ALTER TABLE `tbl_presupuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_producto_marca`
--

LOCK TABLES `tbl_producto_marca` WRITE;
/*!40000 ALTER TABLE `tbl_producto_marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_producto_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_producto_tbl_bodega`
--

LOCK TABLES `tbl_producto_tbl_bodega` WRITE;
/*!40000 ALTER TABLE `tbl_producto_tbl_bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_producto_tbl_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_propiedad_rpt`
--

LOCK TABLES `tbl_propiedad_rpt` WRITE;
/*!40000 ALTER TABLE `tbl_propiedad_rpt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_propiedad_rpt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_pruebas`
--

LOCK TABLES `tbl_pruebas` WRITE;
/*!40000 ALTER TABLE `tbl_pruebas` DISABLE KEYS */;
INSERT INTO `tbl_pruebas` VALUES (1,'d','d','1:10','1',1),(2,'As','as','2:50','1',1);
/*!40000 ALTER TABLE `tbl_pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_puestos`
--

LOCK TABLES `tbl_puestos` WRITE;
/*!40000 ALTER TABLE `tbl_puestos` DISABLE KEYS */;
INSERT INTO `tbl_puestos` VALUES (1,1,'asd','qwe','1111',1);
/*!40000 ALTER TABLE `tbl_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_quejas`
--

LOCK TABLES `tbl_quejas` WRITE;
/*!40000 ALTER TABLE `tbl_quejas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_quejas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_recetas`
--

LOCK TABLES `tbl_recetas` WRITE;
/*!40000 ALTER TABLE `tbl_recetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_reporte`
--

LOCK TABLES `tbl_reporte` WRITE;
/*!40000 ALTER TABLE `tbl_reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_reservaciones`
--

LOCK TABLES `tbl_reservaciones` WRITE;
/*!40000 ALTER TABLE `tbl_reservaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reservaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_resultados`
--

LOCK TABLES `tbl_resultados` WRITE;
/*!40000 ALTER TABLE `tbl_resultados` DISABLE KEYS */;
INSERT INTO `tbl_resultados` VALUES (1,1,1,'12',1),(2,1,2,'50',1);
/*!40000 ALTER TABLE `tbl_resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_roles_de_pago`
--

LOCK TABLES `tbl_roles_de_pago` WRITE;
/*!40000 ALTER TABLE `tbl_roles_de_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_roles_de_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_rpt_app`
--

LOCK TABLES `tbl_rpt_app` WRITE;
/*!40000 ALTER TABLE `tbl_rpt_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rpt_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_rpt_mdl`
--

LOCK TABLES `tbl_rpt_mdl` WRITE;
/*!40000 ALTER TABLE `tbl_rpt_mdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rpt_mdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_salones`
--

LOCK TABLES `tbl_salones` WRITE;
/*!40000 ALTER TABLE `tbl_salones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_serie`
--

LOCK TABLES `tbl_serie` WRITE;
/*!40000 ALTER TABLE `tbl_serie` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_servicio`
--

LOCK TABLES `tbl_servicio` WRITE;
/*!40000 ALTER TABLE `tbl_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_servicios`
--

LOCK TABLES `tbl_servicios` WRITE;
/*!40000 ALTER TABLE `tbl_servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_solicitudrembolso`
--

LOCK TABLES `tbl_solicitudrembolso` WRITE;
/*!40000 ALTER TABLE `tbl_solicitudrembolso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_solicitudrembolso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_stock`
--

LOCK TABLES `tbl_stock` WRITE;
/*!40000 ALTER TABLE `tbl_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tiendas`
--

LOCK TABLES `tbl_tiendas` WRITE;
/*!40000 ALTER TABLE `tbl_tiendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tiendas_producto`
--

LOCK TABLES `tbl_tiendas_producto` WRITE;
/*!40000 ALTER TABLE `tbl_tiendas_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiendas_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipo_habitacion`
--

LOCK TABLES `tbl_tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_habitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `tbl_tipo_lista_precios`
--

LOCK TABLES `tbl_tipo_lista_precios` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_lista_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_lista_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipo_movimiento`
--

LOCK TABLES `tbl_tipo_movimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_movimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipo_poliza`
--

LOCK TABLES `tbl_tipo_poliza` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_poliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipo_poliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipocambio`
--

LOCK TABLES `tbl_tipocambio` WRITE;
/*!40000 ALTER TABLE `tbl_tipocambio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipocliente`
--

LOCK TABLES `tbl_tipocliente` WRITE;
/*!40000 ALTER TABLE `tbl_tipocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipocuenta`
--

LOCK TABLES `tbl_tipocuenta` WRITE;
/*!40000 ALTER TABLE `tbl_tipocuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipocuentabancaria`
--

LOCK TABLES `tbl_tipocuentabancaria` WRITE;
/*!40000 ALTER TABLE `tbl_tipocuentabancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipocuentabancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipofactura`
--

LOCK TABLES `tbl_tipofactura` WRITE;
/*!40000 ALTER TABLE `tbl_tipofactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipofactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tipoproducto`
--

LOCK TABLES `tbl_tipoproducto` WRITE;
/*!40000 ALTER TABLE `tbl_tipoproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_tiposcomprobantes`
--

LOCK TABLES `tbl_tiposcomprobantes` WRITE;
/*!40000 ALTER TABLE `tbl_tiposcomprobantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiposcomprobantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_transporte`
--

LOCK TABLES `tbl_transporte` WRITE;
/*!40000 ALTER TABLE `tbl_transporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_ubicacion`
--

LOCK TABLES `tbl_ubicacion` WRITE;
/*!40000 ALTER TABLE `tbl_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_ubicacionprodcuto`
--

LOCK TABLES `tbl_ubicacionprodcuto` WRITE;
/*!40000 ALTER TABLE `tbl_ubicacionprodcuto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ubicacionprodcuto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES ('ivan','ivan','ivan','2c42e5cf1cdbafea04ed267018ef1511',0,1),('MiUsuario','Usuario','Prueba','e19d5cd5af0378da05f63f891c7467af',0,1);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;
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

--
-- Dumping data for table `tbl_usuario_aplicacion`
--

LOCK TABLES `tbl_usuario_aplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_aplicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_usuario_perfil`
--

LOCK TABLES `tbl_usuario_perfil` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12  7:46:03
