-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2019 a las 22:38:15
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguridad`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `procedimientoLogin` (IN `usuario` VARCHAR(25), IN `clave` VARCHAR(25))  NO SQL
Select tbl_usuario.PK_id_Usuario FROM tbl_usuario where tbl_usuario.PK_id_Usuario = usuario and tbl_usuario.password_usuario = MD5(clave) AND tbl_usuario.estado_usuario=1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aplicacion`
--

CREATE TABLE `tbl_aplicacion` (
  `PK_id_aplicacion` int(11) NOT NULL,
  `PK_id_modulo` int(11) NOT NULL,
  `nombre_aplicacion` varchar(45) DEFAULT NULL,
  `descripcion_aplicacion` varchar(200) DEFAULT NULL,
  `no_reporteAsociado` int(11) DEFAULT NULL,
  `estado_aplicacion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_aplicacion`
--

INSERT INTO `tbl_aplicacion` (`PK_id_aplicacion`, `PK_id_modulo`, `nombre_aplicacion`, `descripcion_aplicacion`, `no_reporteAsociado`, `estado_aplicacion`) VALUES
(1, 1, 'recepcion', 'recepcion', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora`
--

CREATE TABLE `tbl_bitacora` (
  `PK_id_bitacora` int(11) NOT NULL,
  `PK_id_usuario` varchar(25) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `host` varchar(45) DEFAULT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `tabla` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_bitacora`
--

INSERT INTO `tbl_bitacora` (`PK_id_bitacora`, `PK_id_usuario`, `fecha`, `hora`, `host`, `ip`, `accion`, `tabla`) VALUES
(1, 'rchocm', '2019-09-19', '10:46:20', 'AMAZING', '192.168.43.248', 'Se logeo al sistema', 'Login'),
(2, 'rchocm', '2019-09-19', '10:47:04', 'AMAZING', '192.168.43.248', 'Inserto un nuevo modulo: 1 - hoteleria', 'tbl_modulo'),
(3, 'rchocm', '2019-09-19', '10:47:16', 'AMAZING', '192.168.43.248', 'Inserto un nuevo perfil: 1 - admin', 'tbl_perfil'),
(4, 'rchocm', '2019-09-19', '10:47:24', 'AMAZING', '192.168.43.248', 'Inserto un nuevo perfil: 2 - usuario', 'tbl_perfil'),
(5, 'rchocm', '2019-09-19', '10:47:28', 'AMAZING', '192.168.43.248', 'Realizo una consulta a modulos', 'tbl_modulos'),
(6, 'rchocm', '2019-09-19', '10:47:55', 'AMAZING', '192.168.43.248', 'Realizo una consulta a perfiles', 'tbl_perfil'),
(7, 'rchocm', '2019-09-19', '10:47:55', 'AMAZING', '192.168.43.248', 'Realizo una consulta a modulos', 'tbl_modulos'),
(8, 'rchocm', '2019-09-19', '10:48:00', 'AMAZING', '192.168.43.248', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(9, 'rchocm', '2019-09-19', '10:48:09', 'AMAZING', '192.168.43.248', 'Asigno permiso: recepcion a perfil: admin', 'tbl_usuario_aplicacion'),
(10, 'rchocm', '2019-09-19', '10:48:14', 'AMAZING', '192.168.43.248', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(11, 'rchocm', '2019-09-19', '10:48:21', 'AMAZING', '192.168.43.248', 'Asigno permiso: recepcion a perfil: usuario', 'tbl_usuario_aplicacion'),
(12, 'rchocm', '2019-09-19', '10:48:24', 'AMAZING', '192.168.43.248', 'Realizo una consulta a usuarios', 'tbl_usuario'),
(13, 'rchocm', '2019-09-19', '10:48:24', 'AMAZING', '192.168.43.248', 'Realizo una consulta a perfiles', 'tbl_perfil'),
(14, 'rchocm', '2019-09-19', '10:48:39', 'AMAZING', '192.168.43.248', 'Asigno perfil: admin a usuario: rchocm', 'tbl_usuario_perfil'),
(15, 'rchocm', '2019-09-19', '10:48:39', 'AMAZING', '192.168.43.248', 'Asigno perfil: usuario a usuario: choc', 'tbl_usuario_perfil'),
(16, 'rchocm', '2019-09-19', '10:49:56', 'AMAZING', '192.168.43.248', 'Se logeo al sistema', 'Login'),
(17, 'rchocm', '2019-09-19', '10:50:12', 'AMAZING', '192.168.43.248', 'Se creó un nuevo registro', 'Funciones'),
(18, 'rchocm', '2019-09-19', '10:55:21', 'AMAZING', '192.168.43.248', 'Se logeo al sistema', 'Login'),
(19, 'rchocm', '2019-09-19', '10:55:26', 'AMAZING', '192.168.43.248', 'Se creó un nuevo registro', 'Funciones'),
(20, 'choc', '2019-09-19', '10:56:32', 'AMAZING', '192.168.43.248', 'Se logeo al sistema', 'Login'),
(21, 'choc', '2019-09-19', '10:56:37', 'AMAZING', '192.168.43.248', 'Se creó un nuevo registro', 'Funciones'),
(22, 'rchocm', '2019-09-19', '10:57:14', 'AMAZING', '192.168.43.248', 'Se logeo al sistema', 'Login'),
(23, 'rchocm', '2019-09-19', '11:06:58', 'AMAZING', '192.168.43.248', 'Se logeo al sistema', 'Login'),
(24, 'rchocm', '2019-09-19', '11:26:32', 'AMAZING', '192.168.1.12', 'Se logeo al sistema', 'Login'),
(25, 'choc', '2019-09-19', '11:30:33', 'AMAZING', '192.168.1.12', 'Se logeo al sistema', 'Login'),
(26, 'choc', '2019-09-19', '11:53:14', 'AMAZING', '192.168.1.12', 'Se logeo al sistema', 'Login'),
(27, 'choc', '2019-09-19', '11:53:20', 'AMAZING', '192.168.1.12', 'Se creó un nuevo registro', 'Funciones'),
(28, 'choc', '2019-09-19', '11:54:18', 'AMAZING', '192.168.1.12', 'Se creó un nuevo registro', 'Funciones'),
(29, 'rchocm', '2019-09-20', '08:46:05', 'AMAZING', '192.168.56.1', 'Se logeo al sistema', 'Login'),
(30, 'choc', '2019-09-20', '08:46:33', 'AMAZING', '192.168.56.1', 'Se logeo al sistema', 'Login'),
(31, 'choc', '2019-09-20', '08:46:58', 'AMAZING', '192.168.56.1', 'Se creó un nuevo registro', 'Funciones'),
(32, 'choc', '2019-09-20', '08:49:02', 'AMAZING', '192.168.56.1', 'Se logeo al sistema', 'Login'),
(33, 'choc', '2019-09-20', '08:49:17', 'AMAZING', '192.168.56.1', 'Se creó un nuevo registro', 'Funciones'),
(34, 'choc', '2019-09-20', '08:50:16', 'AMAZING', '192.168.56.1', 'Se logeo al sistema', 'Login'),
(35, 'choc', '2019-09-20', '08:50:21', 'AMAZING', '192.168.56.1', 'Se creó un nuevo registro', 'Funciones'),
(36, 'rchocm', '2019-09-20', '10:51:31', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(37, 'choc', '2019-09-20', '11:02:19', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(38, 'rchocm', '2019-09-20', '11:07:20', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(39, 'rchocm', '2019-09-20', '11:09:29', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(40, 'rchocm', '2019-09-20', '11:12:53', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(41, 'choc', '2019-09-20', '11:15:53', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(42, 'choc', '2019-09-20', '11:17:50', 'AMAZING', '192.168.95.18', 'Se logeo al sistema', 'Login'),
(43, 'choc', '2019-09-21', '01:00:17', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(44, 'rchocm', '2019-09-21', '01:00:45', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(45, 'choc', '2019-09-21', '01:02:33', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(46, 'rchocm', '2019-09-21', '01:02:42', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(47, 'choc', '2019-09-21', '01:03:31', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(48, 'choc', '2019-09-21', '01:09:11', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(49, 'choc', '2019-09-21', '01:11:41', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(50, 'rchocm', '2019-09-21', '01:11:49', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(51, 'rchocm', '2019-09-21', '01:16:16', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(52, 'choc', '2019-09-21', '01:17:01', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(53, 'MiUsuario', '2019-09-21', '01:17:16', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(54, 'choc', '2019-09-21', '01:19:40', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(55, 'rchocm', '2019-09-21', '01:19:53', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(56, 'MiUsuario', '2019-09-21', '01:20:21', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(57, 'choc', '2019-09-21', '01:23:38', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(58, 'rchocm', '2019-09-21', '01:23:53', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(59, 'MiUsuario', '2019-09-21', '01:24:15', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(60, 'rchocm', '2019-09-21', '01:39:33', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(61, 'choc', '2019-09-21', '01:39:49', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(62, 'MiUsuario', '2019-09-21', '01:40:05', 'AMAZING', '192.168.1.20', 'Se logeo al sistema', 'Login'),
(63, 'choc', '2019-09-21', '10:11:17', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(64, 'choc', '2019-09-21', '10:16:04', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(65, 'choc', '2019-09-21', '10:19:56', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(66, 'choc', '2019-09-21', '10:23:56', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(67, 'choc', '2019-09-21', '10:24:16', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(68, 'choc', '2019-09-21', '10:27:13', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(69, 'choc', '2019-09-21', '10:27:29', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(70, 'choc', '2019-09-21', '10:28:41', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(71, 'choc', '2019-09-21', '10:28:55', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(72, 'choc', '2019-09-21', '10:30:58', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(73, 'choc', '2019-09-21', '10:31:13', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(74, 'choc', '2019-09-21', '10:43:20', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(75, 'choc', '2019-09-21', '10:46:15', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(76, 'choc', '2019-09-21', '10:50:53', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(77, 'rchocm', '2019-09-21', '10:51:18', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(78, 'choc', '2019-09-21', '11:08:13', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(79, 'choc', '2019-09-21', '11:09:06', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(80, 'choc', '2019-09-21', '11:17:30', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(81, 'choc', '2019-09-21', '11:19:42', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(82, 'choc', '2019-09-21', '11:21:15', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(83, 'choc', '2019-09-21', '11:22:16', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(84, 'choc', '2019-09-21', '11:22:42', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(85, 'choc', '2019-09-21', '11:23:38', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(86, 'choc', '2019-09-21', '11:29:22', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(87, 'choc', '2019-09-21', '11:34:35', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(88, 'choc', '2019-09-21', '11:35:28', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(89, 'rchocm', '2019-09-21', '11:36:55', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(90, 'rchocm', '2019-09-21', '11:37:18', 'AMAZING', '192.168.1.14', 'Se actualizó un registro', 'Funciones'),
(91, 'rchocm', '2019-09-21', '11:47:42', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(92, 'rchocm', '2019-09-21', '11:48:33', 'AMAZING', '192.168.1.14', 'Se actualizó un registro', 'Funciones'),
(93, 'rchocm', '2019-09-21', '11:52:54', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(94, 'rchocm', '2019-09-21', '11:54:35', 'AMAZING', '192.168.1.14', 'Se actualizó un registro', 'Funciones'),
(95, 'choc', '2019-09-21', '11:56:58', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(96, 'choc', '2019-09-21', '11:57:15', 'AMAZING', '192.168.1.14', 'Se creó un nuevo registro', 'Funciones'),
(97, 'rchocm', '2019-09-21', '11:57:38', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(98, 'rchocm', '2019-09-21', '11:58:08', 'AMAZING', '192.168.1.14', 'Se actualizó un registro', 'Funciones'),
(99, 'choc', '2019-09-21', '11:58:24', 'AMAZING', '192.168.1.14', 'Se logeo al sistema', 'Login'),
(100, 'rchocm', '2019-09-22', '12:18:28', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(101, 'choc', '2019-09-22', '12:18:56', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(102, 'choc', '2019-09-22', '12:19:37', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'Funciones'),
(103, 'choc', '2019-09-22', '12:19:59', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(104, 'choc', '2019-09-22', '12:20:30', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'Funciones'),
(105, 'Miusuario', '2019-09-22', '12:22:03', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(106, 'rchocm', '2019-09-22', '12:22:19', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(107, 'rchocm', '2019-09-22', '12:22:28', '657PC', '192.168.1.5', 'Se actualizó un registro', 'Funciones'),
(108, 'rchocm', '2019-09-22', '12:22:48', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'Funciones'),
(109, 'rchocm', '2019-09-22', '12:24:48', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(110, 'rchocm', '2019-09-22', '12:24:57', '657PC', '192.168.1.5', 'Se eliminó un registro', 'Funciones'),
(111, 'rchocm', '2019-09-22', '12:25:14', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(112, 'rchocm', '2019-09-22', '12:25:58', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(113, 'rchocm', '2019-09-22', '12:26:09', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'Funciones'),
(114, 'choc', '2019-09-22', '12:26:52', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(115, 'choc', '2019-09-22', '12:27:08', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'Funciones'),
(116, 'choc', '2019-09-22', '12:36:10', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(117, 'choc', '2019-09-22', '12:36:24', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(118, 'choc', '2019-09-22', '12:39:09', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(119, 'choc', '2019-09-22', '12:39:21', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(120, 'rchocm', '2019-09-22', '12:39:54', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(121, 'rchocm', '2019-09-22', '12:40:11', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(122, 'choc', '2019-09-22', '12:43:02', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(123, 'choc', '2019-09-22', '12:47:05', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(124, 'choc', '2019-09-22', '12:53:16', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(125, 'choc', '2019-09-22', '01:02:38', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(126, 'choc', '2019-09-22', '01:03:08', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(127, 'choc', '2019-09-22', '01:04:04', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(128, 'choc', '2019-09-22', '01:09:20', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(129, 'choc', '2019-09-22', '01:40:35', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(130, 'choc', '2019-09-22', '01:47:07', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(131, 'choc', '2019-09-22', '01:49:56', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(132, 'choc', '2019-09-22', '02:17:58', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(133, 'choc', '2019-09-22', '02:24:52', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(134, 'choc', '2019-09-22', '02:25:18', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(135, 'choc', '2019-09-22', '02:57:57', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(136, 'rchocm', '2019-09-22', '02:58:42', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(137, 'choc', '2019-09-22', '03:00:33', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(138, 'choc', '2019-09-22', '03:04:07', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(139, 'choc', '2019-09-22', '03:04:31', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(140, 'choc', '2019-09-22', '03:37:55', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(141, 'choc', '2019-09-22', '03:38:51', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(142, 'choc', '2019-09-22', '03:39:16', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(143, 'rchocm', '2019-09-22', '03:39:33', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(144, 'rchocm', '2019-09-22', '03:39:52', '657PC', '192.168.1.5', 'Se actualizó un registro', 'tbl_bodega'),
(145, 'rchocm', '2019-09-22', '03:39:57', '657PC', '192.168.1.5', 'Se eliminó un registro', 'tbl_bodega'),
(146, 'choc', '2019-09-22', '01:04:41', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(147, 'choc', '2019-09-22', '01:08:18', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(148, 'choc', '2019-09-22', '01:08:45', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(149, 'choc', '2019-09-22', '01:10:00', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(150, 'choc', '2019-09-22', '01:14:59', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(151, 'choc', '2019-09-22', '01:16:11', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(152, 'choc', '2019-09-22', '01:16:17', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(153, 'choc', '2019-09-22', '01:21:57', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(154, 'choc', '2019-09-22', '01:28:43', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(155, 'choc', '2019-09-22', '02:03:10', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(156, 'choc', '2019-09-22', '02:07:03', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(157, 'choc', '2019-09-22', '02:07:14', '657PC', '192.168.1.5', 'Realizo una consulta a usuarios', 'tbl_usuario'),
(158, 'choc', '2019-09-22', '02:07:14', '657PC', '192.168.1.5', 'Realizo una consulta a modulos', 'tbl_modulos'),
(159, 'choc', '2019-09-22', '02:07:18', '657PC', '192.168.1.5', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(160, 'choc', '2019-09-22', '02:07:29', '657PC', '192.168.1.5', 'Asigno aplicacion: recepcion a usuario: admin', 'tbl_usuario_aplicacion'),
(161, 'choc', '2019-09-22', '02:07:43', '657PC', '192.168.1.5', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(162, 'choc', '2019-09-22', '02:08:05', '657PC', '192.168.1.5', 'Asigno aplicacion: recepcion a usuario: digitador', 'tbl_usuario_aplicacion'),
(163, 'choc', '2019-09-22', '02:08:10', '657PC', '192.168.1.5', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(164, 'choc', '2019-09-22', '02:08:28', '657PC', '192.168.1.5', 'Asigno aplicacion: recepcion a usuario: gus', 'tbl_usuario_aplicacion'),
(165, 'choc', '2019-09-22', '02:08:34', '657PC', '192.168.1.5', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(166, 'choc', '2019-09-22', '02:08:43', '657PC', '192.168.1.5', 'Asigno aplicacion: recepcion a usuario: gusAdmin', 'tbl_usuario_aplicacion'),
(167, 'choc', '2019-09-22', '02:08:55', '657PC', '192.168.1.5', 'Realizo una consulta a usuarios', 'tbl_usuario'),
(168, 'choc', '2019-09-22', '02:08:55', '657PC', '192.168.1.5', 'Realizo una consulta a perfiles', 'tbl_perfil'),
(169, 'choc', '2019-09-22', '02:09:09', '657PC', '192.168.1.5', 'Asigno perfil: admin a usuario: admin', 'tbl_usuario_perfil'),
(170, 'gus', '2019-09-22', '02:09:44', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(171, 'gus', '2019-09-22', '02:09:59', '657PC', '192.168.1.5', 'Realizo una consulta a perfiles', 'tbl_perfil'),
(172, 'gus', '2019-09-22', '02:09:59', '657PC', '192.168.1.5', 'Realizo una consulta a modulos', 'tbl_modulos'),
(173, 'gus', '2019-09-22', '02:10:11', '657PC', '192.168.1.5', 'Realizo una consulta a usuarios', 'tbl_usuario'),
(174, 'gus', '2019-09-22', '02:10:11', '657PC', '192.168.1.5', 'Realizo una consulta a modulos', 'tbl_modulos'),
(175, 'admin', '2019-09-22', '02:10:36', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(176, 'digitador', '2019-09-22', '02:10:52', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(177, 'digitador', '2019-09-22', '02:11:08', '657PC', '192.168.1.5', 'Realizo una consulta a usuarios', 'tbl_usuario'),
(178, 'digitador', '2019-09-22', '02:11:08', '657PC', '192.168.1.5', 'Realizo una consulta a modulos', 'tbl_modulos'),
(179, 'digitador', '2019-09-22', '02:11:13', '657PC', '192.168.1.5', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(180, 'digitador', '2019-09-22', '02:11:21', '657PC', '192.168.1.5', 'Asigno aplicacion: recepcion a usuario: digitador', 'tbl_usuario_aplicacion'),
(181, 'digitador', '2019-09-22', '02:11:25', '657PC', '192.168.1.5', 'Consulto bitacora', 'tbl_bitacora'),
(182, 'digitador', '2019-09-22', '02:11:41', '657PC', '192.168.1.5', 'Realizo una consulta a perfiles', 'tbl_perfil'),
(183, 'digitador', '2019-09-22', '02:11:41', '657PC', '192.168.1.5', 'Realizo una consulta a modulos', 'tbl_modulos'),
(184, 'digitador', '2019-09-22', '02:11:45', '657PC', '192.168.1.5', 'Realizo una consulta a aplicaciones', 'tbl_aplicacion'),
(185, 'digitador', '2019-09-22', '02:11:51', '657PC', '192.168.1.5', 'Asigno permiso: recepcion a perfil: usuario', 'tbl_usuario_aplicacion'),
(186, 'digitador', '2019-09-22', '02:13:52', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(187, 'admin', '2019-09-22', '02:14:20', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(188, 'admin', '2019-09-22', '02:18:47', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(189, 'admin', '2019-09-22', '02:19:28', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_bodega'),
(190, 'admin', '2019-09-22', '02:19:41', '657PC', '192.168.1.5', 'Se actualizó un registro', 'tbl_bodega'),
(191, 'admin', '2019-09-22', '02:19:54', '657PC', '192.168.1.5', 'Se eliminó un registro', 'tbl_bodega'),
(192, 'admin', '2019-09-22', '02:20:52', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(193, 'digitador', '2019-09-22', '02:21:25', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(194, 'digitador', '2019-09-22', '02:22:03', '657PC', '192.168.1.5', 'Se creó un nuevo registro', 'tbl_producto'),
(195, 'admin', '2019-09-22', '02:23:30', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(196, 'admin', '2019-09-22', '02:23:58', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(197, 'admin', '2019-09-22', '02:24:39', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(198, 'admin', '2019-09-22', '02:25:20', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(199, 'admin', '2019-09-22', '02:26:11', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(200, 'admin', '2019-09-22', '02:27:06', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(201, 'admin', '2019-09-22', '02:27:26', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(202, 'admin', '2019-09-22', '02:28:18', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login'),
(203, 'admin', '2019-09-22', '02:28:55', '657PC', '192.168.1.5', 'Se logeo al sistema', 'Login');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modulo`
--

CREATE TABLE `tbl_modulo` (
  `PK_id_Modulo` int(11) NOT NULL,
  `nombre_modulo` varchar(45) DEFAULT NULL,
  `descripcion_modulo` varchar(200) DEFAULT NULL,
  `estado_modulo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_modulo`
--

INSERT INTO `tbl_modulo` (`PK_id_Modulo`, `nombre_modulo`, `descripcion_modulo`, `estado_modulo`) VALUES
(1, 'hoteleria', 'hoteleria', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfil_detalle`
--

CREATE TABLE `tbl_perfil_detalle` (
  `PK_id_perfil` int(11) NOT NULL,
  `PK_id_aplicacion` int(11) NOT NULL,
  `ingresar` tinyint(4) DEFAULT NULL,
  `consultar` tinyint(4) DEFAULT NULL,
  `modificar` tinyint(4) DEFAULT NULL,
  `eliminar` tinyint(4) DEFAULT NULL,
  `imprimir` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_perfil_detalle`
--

INSERT INTO `tbl_perfil_detalle` (`PK_id_perfil`, `PK_id_aplicacion`, `ingresar`, `consultar`, `modificar`, `eliminar`, `imprimir`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfil_encabezado`
--

CREATE TABLE `tbl_perfil_encabezado` (
  `PK_id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(45) DEFAULT NULL,
  `descripcion_perfil` varchar(200) DEFAULT NULL,
  `estado_perfil` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_perfil_encabezado`
--

INSERT INTO `tbl_perfil_encabezado` (`PK_id_perfil`, `nombre_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 'admin', 'admin', 1),
(2, 'usuario', 'usuario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `PK_id_usuario` varchar(25) NOT NULL,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `apellido_usuarios` varchar(45) DEFAULT NULL,
  `password_usuario` varchar(45) DEFAULT NULL,
  `cambio_contrasena` tinyint(4) DEFAULT NULL,
  `ultima_conexion` datetime DEFAULT NULL,
  `estado_usuario` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`PK_id_usuario`, `nombre_usuario`, `apellido_usuarios`, `password_usuario`, `cambio_contrasena`, `ultima_conexion`, `estado_usuario`) VALUES
('admin', 'admin', 'admin', '202cb962ac59075b964b07152d234b70', 0, '2019-09-05 00:00:00', 1),
('choc', 'choc', 'choc', '509424c905af58c81c60603b8acd70b6', NULL, NULL, 1),
('digitador', 'user', 'user', '202cb962ac59075b964b07152d234b70', 0, '2019-09-06 00:00:00', 1),
('gus', 'gus', 'gus', '84a26c4612a7f9958174ee6552625282', 0, '2019-09-12 00:00:00', 1),
('gusAdmin', 'gus', 'gus', '84a26c4612a7f9958174ee6552625282', 0, '2019-09-04 00:00:00', 1),
('MiUsuario', 'Usuario', 'Prueba', 'e19d5cd5af0378da05f63f891c7467af', 0, NULL, 1),
('rchocm', 'randy', 'choc', '17d0234375b389906d21b70ba5db8cae', NULL, NULL, 1);

--
-- Disparadores `tbl_usuario`
--
DELIMITER $$
CREATE TRIGGER `actualizarClave` BEFORE UPDATE ON `tbl_usuario` FOR EACH ROW IF NEW.password_usuario <> OLD.password_usuario THEN
SET NEW.password_usuario = MD5(NEW.password_usuario);
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `encriptarClave` BEFORE INSERT ON `tbl_usuario` FOR EACH ROW BEGIN
SET NEW.password_usuario = MD5(NEW.password_usuario);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario_aplicacion`
--

CREATE TABLE `tbl_usuario_aplicacion` (
  `PK_id_usuario` varchar(25) NOT NULL,
  `PK_id_aplicacion` int(11) NOT NULL,
  `ingresar` tinyint(4) DEFAULT NULL,
  `consultar` tinyint(4) DEFAULT NULL,
  `modificar` tinyint(4) DEFAULT NULL,
  `eliminar` tinyint(4) DEFAULT NULL,
  `imprimir` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario_perfil`
--

CREATE TABLE `tbl_usuario_perfil` (
  `PK_id_usuario` varchar(25) NOT NULL,
  `PK_id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuario_perfil`
--

INSERT INTO `tbl_usuario_perfil` (`PK_id_usuario`, `PK_id_perfil`) VALUES
('admin', 1),
('choc', 2),
('digitador', 2),
('rchocm', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_aplicacion`
--
ALTER TABLE `tbl_aplicacion`
  ADD PRIMARY KEY (`PK_id_aplicacion`,`PK_id_modulo`),
  ADD KEY `fk_Aplicacion_Modulo` (`PK_id_modulo`);

--
-- Indices de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD PRIMARY KEY (`PK_id_bitacora`,`PK_id_usuario`),
  ADD KEY `fk_Bitacora_Usuario1` (`PK_id_usuario`);

--
-- Indices de la tabla `tbl_modulo`
--
ALTER TABLE `tbl_modulo`
  ADD PRIMARY KEY (`PK_id_Modulo`);

--
-- Indices de la tabla `tbl_perfil_detalle`
--
ALTER TABLE `tbl_perfil_detalle`
  ADD PRIMARY KEY (`PK_id_perfil`,`PK_id_aplicacion`),
  ADD KEY `fk_Perfil_detalle_Aplicacion1` (`PK_id_aplicacion`);

--
-- Indices de la tabla `tbl_perfil_encabezado`
--
ALTER TABLE `tbl_perfil_encabezado`
  ADD PRIMARY KEY (`PK_id_perfil`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`PK_id_usuario`);

--
-- Indices de la tabla `tbl_usuario_aplicacion`
--
ALTER TABLE `tbl_usuario_aplicacion`
  ADD PRIMARY KEY (`PK_id_usuario`,`PK_id_aplicacion`),
  ADD KEY `fk_tbl_usuario_aplicacion_tbl_aplicacion1` (`PK_id_aplicacion`);

--
-- Indices de la tabla `tbl_usuario_perfil`
--
ALTER TABLE `tbl_usuario_perfil`
  ADD PRIMARY KEY (`PK_id_usuario`,`PK_id_perfil`),
  ADD KEY `fk_Usuario_perfil_Perfil1` (`PK_id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  MODIFY `PK_id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_aplicacion`
--
ALTER TABLE `tbl_aplicacion`
  ADD CONSTRAINT `fk_Aplicacion_Modulo` FOREIGN KEY (`PK_id_modulo`) REFERENCES `tbl_modulo` (`PK_id_Modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD CONSTRAINT `fk_Bitacora_Usuario1` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_perfil_detalle`
--
ALTER TABLE `tbl_perfil_detalle`
  ADD CONSTRAINT `fk_Perfil_detalle_Aplicacion1` FOREIGN KEY (`PK_id_aplicacion`) REFERENCES `tbl_aplicacion` (`PK_id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Perfil_detalle_Perfil1` FOREIGN KEY (`PK_id_perfil`) REFERENCES `tbl_perfil_encabezado` (`PK_id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_usuario_aplicacion`
--
ALTER TABLE `tbl_usuario_aplicacion`
  ADD CONSTRAINT `fk_Usuario_aplicacion_Usuario1` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuario_aplicacion_tbl_aplicacion1` FOREIGN KEY (`PK_id_aplicacion`) REFERENCES `tbl_aplicacion` (`PK_id_aplicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_usuario_perfil`
--
ALTER TABLE `tbl_usuario_perfil`
  ADD CONSTRAINT `fk_Usuario_perfil_Perfil1` FOREIGN KEY (`PK_id_perfil`) REFERENCES `tbl_perfil_encabezado` (`PK_id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Usuario_perfil_Usuario1` FOREIGN KEY (`PK_id_usuario`) REFERENCES `tbl_usuario` (`PK_id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
