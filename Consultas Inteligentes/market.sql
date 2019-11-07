-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2019 a las 03:35:20
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
-- Base de datos: `market`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `HoraInicioSesion` varchar(20) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL,
  `idEmpleados` int(11) NOT NULL,
  `HoraCierreSesion` varchar(20) DEFAULT NULL,
  `host` varchar(50) NOT NULL,
  `idConsulta` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`idBitacora`, `usuario`, `fecha`, `HoraInicioSesion`, `idSucursal`, `idEmpleados`, `HoraCierreSesion`, `host`, `idConsulta`) VALUES
(1, 'dtorres', '20/05/2019', '03:50:10', 1, 1, NULL, 'localhost', NULL),
(2, 'dtorres', '20/05/2019', '03:52:20', 1, 1, '03:52:22', 'localhost', NULL),
(3, 'jonas', '20/05/2019', '03:52:52', 2, 3, '03:52:57', 'localhost', NULL),
(4, 'dtorres', '20/05/2019', '04:05:43', 1, 1, '04:07:51', 'localhost', NULL),
(5, 'dtorres', '20/05/2019', '04:10:36', 1, 1, '04:10:49', 'localhost', NULL),
(6, 'dtorres', '20/05/2019', '18:16:44', 1, 1, '18:16:53', 'localhost', NULL),
(7, 'ander1', '20/05/2019', '18:17:47', 1, 2, '18:18:15', 'localhost', NULL),
(8, 'ander1', '20/05/2019', '18:19:09', 1, 2, '18:20:27', 'localhost', NULL),
(9, 'ander1', '20/05/2019', '18:42:15', 1, 2, '18:52:55', 'localhost', NULL),
(10, 'ander1', '20/05/2019', '19:15:40', 1, 2, '19:15:57', 'localhost', NULL),
(11, 'ander1', '20/05/2019', '19:19:06', 1, 2, '19:19:33', 'localhost', NULL),
(12, 'ander1', '20/05/2019', '19:22:10', 1, 2, '19:22:22', 'localhost', NULL),
(13, 'ander1', '20/05/2019', '19:23:01', 1, 2, '19:23:26', 'localhost', NULL),
(14, 'ander1', '20/05/2019', '19:34:48', 1, 2, '19:35:05', 'localhost', NULL),
(15, 'ander1', '20/05/2019', '19:36:12', 1, 2, '19:36:29', 'localhost', NULL),
(16, 'ander1', '20/05/2019', '19:36:56', 1, 2, '19:38:03', 'localhost', NULL),
(17, 'ander1', '20/05/2019', '22:16:55', 1, 2, '22:17:33', 'localhost', NULL),
(18, 'ander1', '20/05/2019', '22:36:52', 1, 2, '22:36:56', 'localhost', NULL),
(19, 'ander1', '20/05/2019', '22:26:54', 1, 2, '22:37:01', 'localhost', NULL),
(20, 'ander1', '20/05/2019', '22:45:38', 1, 2, '23:04:12', 'localhost', NULL),
(21, 'ander1', '21/05/2019', '08:06:41', 1, 2, '08:13:51', 'localhost', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoría`
--

CREATE TABLE `categoría` (
  `idCategoria` int(11) NOT NULL,
  `NombreCategoria` varchar(45) DEFAULT NULL,
  `Descripción` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoría`
--

INSERT INTO `categoría` (`idCategoria`, `NombreCategoria`, `Descripción`) VALUES
(1, 'Higiene Personal', 'Productos de Higiene y Limpieza Personal'),
(2, 'Tecnologia', 'Productos de Teconologia y Computadoras'),
(3, 'Bebidas', 'Bebidas Varias'),
(4, 'Snacks', 'Chucherias'),
(5, 'Galletas', 'Galetas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `NitCliente` varchar(45) NOT NULL,
  `NombreCliente` varchar(45) DEFAULT NULL,
  `ApellidoCliente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`NitCliente`, `NombreCliente`, `ApellidoCliente`) VALUES
('004', 'dcds', 'sad'),
('026', 'hola', 'asd'),
('03', 'Prueba7', 'addq'),
('04959', 'Claudia', 'Guisela'),
('0656', 'Prueba1', 'FDSF'),
('0701', 'DiegoR', 'TorresC'),
('0707', 'Diego Roberto', 'Torres Claros'),
('12548', 'diego', 'torres'),
('2090', 'Hola', 'Adios'),
('2654', 'Prueba5', 'Adios'),
('45645', 'dsjl', 'kdajslkd'),
('4684', 'Diego C', 'Torres C'),
('504', 'Claudia', 'Claros'),
('664', 'Prueba6', 'DAS'),
('705005', 'daf', 'xad'),
('80808', 'efgwfwefeq', 'ddfa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompras` int(11) NOT NULL,
  `FechaCompra` varchar(10) DEFAULT NULL,
  `NitCliente` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompras`, `FechaCompra`, `NitCliente`, `idFactura`, `idSucursal`) VALUES
(1, '2019-05-20', 1305, 5, 1),
(2, '20/05/2019', 5, 7, 1),
(3, '15-06-2019', 679549, 3, 1),
(4, '22/07/2019', 239122, 2, 1),
(5, '23/08/2019', 156897, 3, 1),
(6, '11/09/2019', 456578, 4, 1),
(7, '2/10/2019', 7895213, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `Cadena` varchar(255) DEFAULT NULL,
  `NombreConsulta` varchar(45) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `Cadena`, `NombreConsulta`, `Usuario`, `disponible`) VALUES
(1, 'SELECT usuario as usuario,host as Host FROM bitacora WHERE usuario = \'anderson\' OR usuario = \'diego\' ORDER BY usuario ASC ', 'Consulta1', 'Admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

CREATE TABLE `devoluciones` (
  `idDevoluciones` int(11) NOT NULL,
  `TipoDevolucion` varchar(45) DEFAULT NULL,
  `ValorDevolucion` int(11) DEFAULT NULL,
  `FechaDevolucion` date DEFAULT NULL,
  `idSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `devoluciones`
--

INSERT INTO `devoluciones` (`idDevoluciones`, `TipoDevolucion`, `ValorDevolucion`, `FechaDevolucion`, `idSucursal`) VALUES
(2, 'Mal estado', 100, '0000-00-00', 1),
(3, 'Roto', 250, '0000-00-00', 1),
(4, 'Roto', 350, '0000-00-00', 1),
(5, 'Mal estado', 150, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleados` int(11) NOT NULL,
  `NombreEmpleado` varchar(45) DEFAULT NULL,
  `ApellidoEmpleado` varchar(45) DEFAULT NULL,
  `FechaNacimiento` varchar(10) DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL,
  `idPuestos` int(11) NOT NULL,
  `idHorarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleados`, `NombreEmpleado`, `ApellidoEmpleado`, `FechaNacimiento`, `Sexo`, `Direccion`, `idSucursal`, `idPuestos`, `idHorarios`) VALUES
(1, 'Diego Roberto', 'Torres Claros', '19/05/2019', 'Masculino', 'Zona 18', 1, 1, 1),
(2, 'Anderson Rene', 'Sandoval Xolop', '01/01/200', 'Masculino', 'Zona 18', 1, 2, 1),
(3, 'Jonatan Adrian', 'Montenegro Rosario', '10/10/2019', 'Masculino', 'Zona 7', 2, 1, 1),
(4, 'Isis', 'Diaz', '23/06/1996', 'F', 'Capital', 1, 2, 1),
(5, 'Paula', 'Vasquez', '10/07/1997', 'F', 'Capital', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturadetalle`
--

CREATE TABLE `facturadetalle` (
  `idFacturaDetalle` int(11) NOT NULL,
  `PrecioVenta` int(11) DEFAULT NULL,
  `CantidadProductos` int(11) DEFAULT NULL,
  `Descripsion` varchar(45) NOT NULL,
  `SubTotal` int(11) DEFAULT NULL,
  `idFactura` int(11) NOT NULL,
  `Serie` varchar(45) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `idProductos` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturadetalle`
--

INSERT INTO `facturadetalle` (`idFacturaDetalle`, `PrecioVenta`, `CantidadProductos`, `Descripsion`, `SubTotal`, `idFactura`, `Serie`, `idSucursal`, `idProductos`) VALUES
(22, 12, 2, 'Pasta Termica', 24, 1, 'A', 1, '7506240625780'),
(23, 12, 2, 'Pasta Termica', 24, 1, 'A', 1, '7506240625780'),
(24, 12, 1, 'Pasta Termica', 12, 2, 'A', 1, '7506240625780'),
(25, 5, 17, 'Pasta Termica', 85, 1, 'B', 1, '7506240625780'),
(26, 12, 2, 'Pasta Termica', 24, 3, 'A', 1, '7506240625780'),
(27, 12, 3, 'Pasta Termica', 36, 4, 'A', 1, '7506240625780'),
(28, 3, 10, 'Old Space', 30, 2, 'B', 1, '7501001163983'),
(29, 3, 8, 'Old Space', 24, 1, 'B', 2, '7501001163983'),
(30, 3, 20, 'Old Space', 60, 2, 'B', 2, '7501001163983'),
(31, 5, 1, 'Old Space', 5, 1, 'A', 2, '7501001163983'),
(32, 5, 1, 'Old Space', 5, 2, 'A', 2, '7501001163983'),
(33, 5, 3, 'Old Space', 15, 5, 'A', 1, '7501001163983'),
(34, 3, 18, 'Old Space', 54, 3, 'B', 1, '7501001163983'),
(35, 1, 12, 'Galleta de Chocoloate Unidad', 12, 4, 'B', 1, '086581110888'),
(36, 1, 10, 'Cheetos 12g', 5, 3, 'B', 2, '721282402619'),
(37, 5, 18, 'Pasta Termica', 0, 5, 'B', 1, '7506240625780');

--
-- Disparadores `facturadetalle`
--
DELIMITER $$
CREATE TRIGGER `actualizadorprod` AFTER INSERT ON `facturadetalle` FOR EACH ROW IF new.Serie = 'A' THEN
UPDATE inventario SET Existencia = Existencia - new.CantidadProductos WHERE idProductos = new.idProductos AND idSucursal = new.idSucursal;
ELSEIF new.Serie = 'B' THEN
UPDATE inventario SET Existencia = Existencia + new.CantidadProductos WHERE idProductos = new.idProductos AND idSucursal = new.idSucursal;
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturaenca`
--

CREATE TABLE `facturaenca` (
  `idFactura` int(11) NOT NULL,
  `Serie` varchar(45) NOT NULL,
  `NitCliente` varchar(45) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturaenca`
--

INSERT INTO `facturaenca` (`idFactura`, `Serie`, `NitCliente`, `idSucursal`) VALUES
(1, 'A', '705005', 1),
(1, 'B', '107', 1),
(1, 'C', '0707', 1),
(1, 'A', '2654', 2),
(1, 'B', '01404', 2),
(2, 'A', '0701', 1),
(2, 'B', '01516', 1),
(2, 'A', '026', 2),
(2, 'B', '0101010', 2),
(3, 'A', '04959', 1),
(3, 'B', '00000', 1),
(3, 'B', '10', 2),
(4, 'A', '0656', 1),
(4, 'B', '00000', 1),
(5, 'A', '664', 1),
(5, 'B', '1305', 1),
(6, 'A', '03', 1),
(7, 'A', '2090', 1),
(8, 'A', '12548', 1);

--
-- Disparadores `facturaenca`
--
DELIMITER $$
CREATE TRIGGER `agregador` AFTER INSERT ON `facturaenca` FOR EACH ROW IF new.Serie like 'A' THEN
INSERT INTO ventas VALUES (NULL,new.NitCliente,(SELECT CURRENT_DATE),new.idSucursal,new.idFactura);
ELSEIF new.Serie like 'B' THEN
INSERT INTO compras VALUES (NULL,(SELECT CURRENT_DATE),new.NitCliente,new.idFactura,new.idSucursal);
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `idHorarios` int(11) NOT NULL,
  `TipoHorario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`idHorarios`, `TipoHorario`) VALUES
(1, '8:00-12:00'),
(2, '7:00-5:00'),
(3, '6:00-4:00'),
(4, '8:00-6:00'),
(5, '9:00-7:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `idProductos` varchar(30) NOT NULL,
  `Existencia` int(25) NOT NULL,
  `idSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idProductos`, `Existencia`, `idSucursal`) VALUES
(1, '7401006400222', 0, 1),
(2, '766623401517', 0, 1),
(3, '798302055445', 0, 1),
(4, '7501001163983', 33, 1),
(5, '086581110888', 12, 1),
(8, '7506240625780', 7, 2),
(9, '086581110888', 0, 2),
(10, '721282402619', 0, 1),
(11, '766623401517', 0, 2),
(12, '7401006400222', 0, 2),
(13, '721282402619', 10, 2),
(14, '798302055445', 0, 2),
(15, '7501001163983', 18, 2),
(16, '7506240625780', 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nominas`
--

CREATE TABLE `nominas` (
  `idNominas` int(11) NOT NULL,
  `PeriodoNomina` int(11) DEFAULT NULL,
  `Año` int(11) DEFAULT NULL,
  `DíasLaburados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nominas`
--

INSERT INTO `nominas` (`idNominas`, `PeriodoNomina`, `Año`, `DíasLaburados`) VALUES
(1, 2015, 2019, 255),
(2, 1, 2019, 365),
(3, 1, 2012, 200),
(4, 1, 2018, 365),
(5, 1, 2009, 360);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` varchar(30) NOT NULL,
  `NombreProducto` varchar(45) DEFAULT NULL,
  `Descripsion` varchar(80) NOT NULL,
  `PrecioVenta` double DEFAULT NULL,
  `PrecioCompra` double NOT NULL,
  `FechaIngreso` varchar(10) DEFAULT NULL,
  `idCategoria` int(11) NOT NULL,
  `idProveedores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `NombreProducto`, `Descripsion`, `PrecioVenta`, `PrecioCompra`, `FechaIngreso`, `idCategoria`, `idProveedores`) VALUES
('086581110888', 'Galleta Chiky', 'Galleta de Chocoloate Unidad', 1.5, 1, '16/05/2019', 5, 4),
('721282402619', 'Cheetos', 'Cheetos 12g', 1, 0.5, '19/05/2019', 4, 5),
('7401006400222', 'Coca-Cola Mini', 'Coca-Cola 355ml', 4, 200, '16/05/2019', 3, 2),
('7501001163983', 'Desodorante', 'Old Space', 5, 3, '16/05/2019', 1, 3),
('7506240625780', 'Pasta Termica', 'Pasta Termica', 12, 5, '19/05/2019', 2, 5),
('766623401517', 'Lector', 'Lector de Codigo de Barras', 75, 50, '16/05/2019', 2, 3),
('798302055445', 'Switch NEXXT', 'Switch NEXXT de 4 Puertos', 80, 40.5, '16/05/2019', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedores` int(11) NOT NULL,
  `NombreProveedor` varchar(45) DEFAULT NULL,
  `NumeroTelefono` varchar(9) DEFAULT NULL,
  `CorreoElectronico` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedores`, `NombreProveedor`, `NumeroTelefono`, `CorreoElectronico`) VALUES
(1, 'Roberto Claros', '14265589', 're@correo.com'),
(2, 'The Coca Cola', '478987', 'coca@correo.com'),
(3, 'Distribuidora Intelaf', '4746-9879', 'intelaf@correo.com'),
(4, 'Galletas Pozuelo', '4984-5468', 'galletas@correo.com'),
(5, 'FritoLay', '4174-8795', 'correo@gmail.com'),
(6, 'Trupper', '57777', 'correo2@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `idPuestos` int(11) NOT NULL,
  `NombrePuesto` varchar(45) DEFAULT NULL,
  `Departamento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`idPuestos`, `NombrePuesto`, `Departamento`) VALUES
(1, 'Vendedor', 'Ventas'),
(2, 'Supervisor', 'Gerencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` int(11) NOT NULL,
  `NombreSucursal` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Departamento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idSucursal`, `NombreSucursal`, `Direccion`, `Departamento`) VALUES
(1, 'Market Zona 18', 'Zona 18', 'Guatemala'),
(2, 'Market Zona 6', 'Zona 6', 'Guatemala'),
(3, 'MiniMarket zona 2', '4ta calle zona 2', 'Guatemala'),
(4, 'MiniMarket zona 6', '2da avenida 5ta calle zona 6', 'Guatemala'),
(5, 'MiniMarket zona 1', '1a avenida 3ra calle zona 1', 'Guatemala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sueldos`
--

CREATE TABLE `sueldos` (
  `idSueldos` int(11) NOT NULL,
  `SueldoBase` int(11) DEFAULT NULL,
  `idEmpleados` int(11) NOT NULL,
  `idNominas` int(11) NOT NULL,
  `Bonificacion` int(11) DEFAULT NULL,
  `IGSS` int(11) DEFAULT NULL,
  `IRTRA` int(11) NOT NULL,
  `INTECAP` int(11) NOT NULL,
  `TotalDevengado` int(11) DEFAULT NULL,
  `Descuentos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sueldos`
--

INSERT INTO `sueldos` (`idSueldos`, `SueldoBase`, `idEmpleados`, `idNominas`, `Bonificacion`, `IGSS`, `IRTRA`, `INTECAP`, `TotalDevengado`, `Descuentos`) VALUES
(1, 8500, 1, 1, 250, 150, 150, 0, 9050, 100),
(1, 6500, 2, 1, 250, 150, 150, 0, 6800, 100),
(1, 7500, 3, 1, 250, 150, 150, 0, 8050, 100),
(4, 8000, 4, 1, 250, 150, 150, 150, 8700, 200),
(5, 8000, 5, 1, 250, 150, 150, 150, 8700, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `idTransporte` int(11) NOT NULL,
  `TipoTransporte` varchar(45) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL,
  `idEmpleados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`idTransporte`, `TipoTransporte`, `idSucursal`, `idEmpleados`) VALUES
(1, 'Camion', 2, 1),
(2, 'Moto', 1, 3),
(3, 'Camion2', 2, 2),
(4, 'avion', 2, 3),
(5, 'moto', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `NombreUsuario` varchar(45) NOT NULL,
  `Contraseña` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `idEmpleados` int(11) NOT NULL,
  `idPuestos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`NombreUsuario`, `Contraseña`, `Descripcion`, `idEmpleados`, `idPuestos`) VALUES
('ander1', '54321', 'Usuario - Supervisor', 2, 2),
('dtorres', '12345', 'Usuario - Ventas', 1, 1),
('Isis', '123', 'Gerente', 4, 2),
('jonas', '3333', 'Usuario - Vendedor', 3, 1),
('Paula', '123', 'Gerente', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVentas` int(11) NOT NULL,
  `NitCliente` varchar(45) NOT NULL,
  `FechaVenta` varchar(45) DEFAULT NULL,
  `idSucursal` int(11) DEFAULT NULL,
  `idFactura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVentas`, `NitCliente`, `FechaVenta`, `idSucursal`, `idFactura`) VALUES
(1, '705005', '2019-05-20', 1, 1),
(2, '0701', '2019-05-20', 1, 2),
(3, '04959', '2019-05-20', 1, 3),
(4, '0656', '2019-05-20', 1, 4),
(5, '2654', '2019-05-20', 2, 1),
(6, '026', '2019-05-20', 2, 2),
(7, '664', '2019-05-20', 1, 5),
(8, '03', '2019-05-20', 1, 6),
(9, '2090', '2019-05-20', 1, 7),
(10, '12548', '2019-05-21', 1, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`idBitacora`,`idSucursal`,`idEmpleados`),
  ADD UNIQUE KEY `idBitacora` (`idBitacora`),
  ADD KEY `Sucursal_Empleados_idEmpleados` (`idEmpleados`),
  ADD KEY `Sucursal_idSucursal` (`idSucursal`),
  ADD KEY `FK_consultas` (`idConsulta`);

--
-- Indices de la tabla `categoría`
--
ALTER TABLE `categoría`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`NitCliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompras`,`idFactura`,`idSucursal`) USING BTREE,
  ADD KEY `FacturaEnca_Sucursal_idSucursal` (`idSucursal`),
  ADD KEY `FacturaEnca_idFactura` (`idFactura`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`);

--
-- Indices de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`idDevoluciones`),
  ADD KEY `Sucursal_idSucursal` (`idSucursal`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleados`,`idPuestos`,`idHorarios`),
  ADD KEY `Horarios_idHorarios` (`idHorarios`),
  ADD KEY `Puestos_idPuestos` (`idPuestos`),
  ADD KEY `idSucursal` (`idSucursal`);

--
-- Indices de la tabla `facturadetalle`
--
ALTER TABLE `facturadetalle`
  ADD PRIMARY KEY (`idFacturaDetalle`,`idFactura`,`idProductos`),
  ADD KEY `FacturaEnca_idFactura` (`idFactura`),
  ADD KEY `Productos_idProductos` (`idProductos`);

--
-- Indices de la tabla `facturaenca`
--
ALTER TABLE `facturaenca`
  ADD PRIMARY KEY (`idFactura`,`idSucursal`,`Serie`) USING BTREE,
  ADD KEY `Sucursal_idSucursal` (`idSucursal`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`idHorarios`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`,`idSucursal`),
  ADD KEY `Sucursal_idSucursal` (`idSucursal`),
  ADD KEY `idProductos` (`idProductos`);

--
-- Indices de la tabla `nominas`
--
ALTER TABLE `nominas`
  ADD PRIMARY KEY (`idNominas`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`,`idCategoria`,`idProveedores`),
  ADD KEY `Proveedores_idProveedores` (`idProveedores`),
  ADD KEY `Categoría_idCategoría` (`idCategoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedores`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`idPuestos`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`);

--
-- Indices de la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD PRIMARY KEY (`idSueldos`,`idEmpleados`,`idNominas`),
  ADD KEY `Empleados_idEmpleados` (`idEmpleados`),
  ADD KEY `Nominas_idNominas` (`idNominas`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`idTransporte`,`idSucursal`,`idEmpleados`),
  ADD KEY `Sucursal_idSucursal` (`idSucursal`),
  ADD KEY `Sucursal_Empleados_idEmpleados` (`idEmpleados`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`NombreUsuario`),
  ADD KEY `Empleados_idEmpleados` (`idEmpleados`,`idPuestos`),
  ADD KEY `Empleados_Puestos_idPuestos` (`idPuestos`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVentas`,`idFactura`),
  ADD KEY `FacturaEnca_idFactura` (`idFactura`),
  ADD KEY `Clientes_NitCliente` (`NitCliente`),
  ADD KEY `idSucursal` (`idSucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `idBitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `facturadetalle`
--
ALTER TABLE `facturadetalle`
  MODIFY `idFacturaDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `FK_consultas` FOREIGN KEY (`idConsulta`) REFERENCES `consulta` (`idConsulta`),
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`idEmpleados`) REFERENCES `empleados` (`idEmpleados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compras_ibfk_5` FOREIGN KEY (`idFactura`) REFERENCES `facturaenca` (`idFactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD CONSTRAINT `devoluciones_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idHorarios`) REFERENCES `horarios` (`idHorarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`idPuestos`) REFERENCES `puestos` (`idPuestos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleados_ibfk_3` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturadetalle`
--
ALTER TABLE `facturadetalle`
  ADD CONSTRAINT `facturadetalle_ibfk_4` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facturadetalle_ibfk_5` FOREIGN KEY (`idFactura`) REFERENCES `facturaenca` (`idFactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturaenca`
--
ALTER TABLE `facturaenca`
  ADD CONSTRAINT `facturaenca_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoría` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`idProveedores`) REFERENCES `proveedores` (`idProveedores`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sueldos`
--
ALTER TABLE `sueldos`
  ADD CONSTRAINT `sueldos_ibfk_1` FOREIGN KEY (`idEmpleados`) REFERENCES `empleados` (`idEmpleados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sueldos_ibfk_2` FOREIGN KEY (`idNominas`) REFERENCES `nominas` (`idNominas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD CONSTRAINT `transporte_ibfk_1` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transporte_ibfk_2` FOREIGN KEY (`idEmpleados`) REFERENCES `empleados` (`idEmpleados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idEmpleados`) REFERENCES `empleados` (`idEmpleados`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idPuestos`) REFERENCES `puestos` (`idPuestos`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`idSucursal`) REFERENCES `sucursal` (`idSucursal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`idFactura`) REFERENCES `facturaenca` (`idFactura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_5` FOREIGN KEY (`NitCliente`) REFERENCES `clientes` (`NitCliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
