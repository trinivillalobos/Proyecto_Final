-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-04-2012 a las 05:34:02
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `negocio`
--
CREATE DATABASE `negocio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `negocio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` float NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `rfc` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_factura`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `cantidad`, `nombre`, `direccion`, `rfc`, `fecha`) VALUES
(1, 750.5, 'Abraham Moreno Meza', 'Nicolas Bravo n10 Barrio del Alto', 'MOMA123456789', '0000-00-00 00:00:00'),
(2, 159.5, 'Romina Lopez Moreno', 'Nicolas Farias N12 Barrio de La Concha Tlaxcala', 'ROMANA12098408169782FC', '2012-04-09 23:59:44'),
(3, 219.5, 'Abraham Moreno Meza', 'Nico bravo n10', 'moma1029380192mi0d120', '2012-04-10 00:09:35'),
(4, 281, 'Abrahm', 'mapsodpoj', '109eapsdpoaks09122', '2012-04-10 00:16:00'),
(5, 413.3, 'akamm', 'rootoototo', 'aspoidjpaosjdpo', '2012-04-10 00:25:13'),
(6, 619.3, 'oddie', 'opiajsdpojgoi oin pin pin p ponp yvuy  oijqwijpoqjpowd', 'oiasdpij901809n09h0', '2012-04-10 00:35:04'),
(7, 155.8, 'asldj', 'poasjdpoj', 'pasodjpaosdjpaosjcpoa', '2012-04-10 00:36:46'),
(8, 203.5, 'Abraham', 'en algun lugar', 'moasdo12e12', '2012-04-10 03:38:45'),
(9, 20, 'Abraham', 'maosdmoasdim', '0192j0921jd', '2012-04-10 06:23:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(255) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(250) NOT NULL,
  `precio` float NOT NULL,
  `caducidad` date NOT NULL,
  `existencia` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `especificaciones` longtext NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `precio`, `caducidad`, `existencia`, `descripcion`, `especificaciones`) VALUES
(1, 'paracetamol', 46, '2013-10-20', 16, 'pastillas para el dolor en general \ny para muchas otras cosas \nque no se', 'no tengo idea de ninguna, \nno administrar en personas\n embarazadas'),
(2, 'Ambroxol', 35.5, '2014-12-19', 9, 'jarabe para la tos', 'no apliquese a embarazadas'),
(3, 'Vitacilina', 120.3, '2013-10-24', 13, 'unguento para dolor\ncomezon\npicaduras de mosquito\ny nalguitas de bebe\ny asi', 'apliquese a todo mundo\ncantese cancion al aplicarse'),
(4, 'acido acetilacilico', 230.45, '2012-01-14', 0, 'para dolores en genral y asi', 'no administrar durante el embarazo\nni en niños menores de 10 años\nsolo en adultos'),
(5, 'torolaco', 345.8, '2012-03-04', 9, 'fuerte desimflamatorio\npara los nervios\ny asi', 'no apto para niños\nlos pone locos'),
(6, 'vendas', 14, '2013-10-10', 6, 'para todo	', 'nada'),
(7, 'paracetamol grande', 78, '2014-09-24', 11, 'Igual que el paracetamol\n', 'no aplicarse a embarazadas\ndosis pequeñas\nno administrarse a niños'),
(8, 'Pepto Bismol', 67.5, '2013-03-15', 4, 'jarabe para varios sintomas\nnadamas digo', 'para todo publico en general\nblah blah\nblah'),
(9, 'vitacilina bebe', 45, '2015-08-13', 16, 'pomada para bebes\nraspaduras\npicaduras de mosquito\nblah blah', 'no tiene ningun tipo de especificaciones'),
(11, 'nuevo', 45, '2012-05-12', 40, 'naosidnaosinfoaisnco	ooin\nopasid', 'asdo\nasd\ngf\nas\nfa\nsv'),
(12, 'sal de uvas', 10, '2012-06-10', 19, 'qpowofp\naspicjas\nacpaojsca\ns', 'sadjpaosd\nasjdaisja\nasoidja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `nombre`, `apellido_paterno`, `apellido_materno`, `user`, `password`, `nivel`) VALUES
(1, 'Abraham', 'Moreno', 'Meza', 'akamm', 'root', 0),
(2, 'Leslie', 'Moreno', 'Meza', 'leslita', 'root', 1),
(4, 'prueba', 'nadamas', 'dice', 'root', 'toor123', 1),
(5, 'Lizeth', 'Toledo', 'Leon', 'aeroslizth', 'lizeth', 1),
(6, 'Ricardo', 'Moreno', 'Meza', 'ricardo', 'moreno', 2),
(7, 'Erik', 'Sanchez', 'Varela', 'varela', '29081222', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendidos`
--

CREATE TABLE IF NOT EXISTS `vendidos` (
  `id_vendido` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_vendido`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `vendidos`
--

INSERT INTO `vendidos` (`id_vendido`, `producto`, `precio`, `cantidad`, `fecha`, `Id_usuario`) VALUES
(2, 'Alcohol', 12.5, 2, '2012-03-23 19:26:17', 1),
(3, 'Vitacilina', 120.3, 1, '2012-03-23 19:26:18', 1),
(4, 'paracetamol', 46, 1, '2012-03-23 19:26:18', 1),
(5, 'paracetamol grande', 78, 1, '2012-03-23 19:29:27', 1),
(6, 'Pepto Bismol', 67.5, 1, '2012-03-23 19:29:27', 1),
(7, 'Ambroxol', 35.5, 1, '2012-03-23 19:32:44', 2),
(8, 'acido acetilacilico', 230.45, 1, '2012-03-23 19:32:45', 2),
(9, 'paracetamol grande', 78, 1, '2012-03-24 16:22:40', 2),
(10, 'Ambroxol', 35.5, 1, '2012-04-02 18:55:14', 1),
(11, 'torolaco', 345.8, 1, '2012-04-02 18:55:14', 1),
(12, 'paracetamol', 46, 1, '2012-04-02 19:01:34', 1),
(13, 'sal de uvas', 10, 1, '2012-04-02 19:01:34', 1),
(14, 'paracetamol', 46, 1, '2012-04-05 02:18:35', 2),
(15, 'paracetamol', 46, 2, '2012-04-06 00:04:46', 1),
(16, 'paracetamol grande', 78, 1, '2012-04-06 00:04:46', 1),
(17, 'paracetamol', 46, 1, '2012-04-06 00:45:12', 2),
(18, 'Pepto Bismol', 67.5, 1, '2012-04-06 00:45:12', 2),
(19, 'paracetamol', 46, 1, '2012-04-06 01:13:59', 1),
(20, 'paracetamol grande', 78, 1, '2012-04-06 01:14:00', 1),
(21, 'acido acetilacilico', 230.45, 1, '2012-04-06 01:14:00', 1),
(22, 'paracetamol', 46, 1, '2012-04-06 01:15:28', 1),
(23, 'paracetamol grande', 78, 1, '2012-04-06 01:15:28', 1),
(24, 'paracetamol', 46, 2, '2012-04-06 01:18:49', 1),
(25, 'torolaco', 345.8, 1, '2012-04-06 01:18:49', 1),
(26, 'acido acetilacilico', 230.45, 1, '2012-04-06 01:20:23', 1),
(27, 'torolaco', 345.8, 1, '2012-04-06 01:21:48', 1),
(28, 'acido acetilacilico', 230.45, 1, '2012-04-06 01:22:36', 1),
(29, 'paracetamol', 46, 1, '2012-04-08 18:11:37', 2),
(30, 'paracetamol', 46, 1, '2012-04-09 04:25:21', 2),
(31, 'paracetamol grande', 78, 2, '2012-04-09 04:25:21', 2),
(32, 'acido acetilacilico', 230.45, 1, '2012-04-09 21:48:52', 1),
(33, 'acido acetilacilico', 230.45, 4, '2012-04-09 21:48:52', 1),
(34, 'vitacilina bebe', 45, 2, '2012-04-10 03:39:05', 1),
(35, 'paracetamol', 46, 1, '2012-04-10 03:39:05', 1),
(36, 'Pepto Bismol', 67.5, 1, '2012-04-10 03:39:06', 1),
(37, 'Vitacilina', 120.3, 1, '2012-04-10 03:41:04', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `id_ventas` int(255) NOT NULL AUTO_INCREMENT,
  `total` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `total`, `fecha`, `Id_usuario`) VALUES
(1, 150, '2012-03-21 05:32:15', 1),
(2, 78, '2012-03-21 05:39:08', 1),
(3, 35.5, '2012-03-21 05:40:13', 1),
(4, 460.9, '2012-03-21 05:46:31', 1),
(5, 96, '2012-03-21 16:38:17', 1),
(6, 221.5, '2012-03-21 16:47:17', 1),
(7, 345.8, '2012-03-23 01:21:43', 1),
(8, 120.3, '2012-03-23 02:18:15', 2),
(9, 504.3, '2012-03-23 18:17:10', 1),
(10, 78, '2012-03-23 18:28:40', 1),
(11, 254.6, '2012-03-23 18:39:01', 1),
(12, 244.45, '2012-03-23 18:40:18', 1),
(13, 191.3, '2012-03-23 19:26:17', 1),
(14, 145.5, '2012-03-23 19:29:27', 1),
(15, 265.95, '2012-03-23 19:32:44', 2),
(16, 78, '2012-03-24 16:22:40', 2),
(17, 381.3, '2012-04-02 18:55:14', 1),
(18, 56, '2012-04-02 19:01:33', 1),
(19, 46, '2012-04-05 02:18:35', 2),
(20, 170, '2012-04-06 00:04:45', 1),
(21, 113.5, '2012-04-06 00:45:12', 2),
(22, 354.45, '2012-04-06 01:13:59', 1),
(23, 124, '2012-04-06 01:15:27', 1),
(24, 437.8, '2012-04-06 01:18:49', 1),
(25, 230.45, '2012-04-06 01:20:23', 1),
(26, 345.8, '2012-04-06 01:21:48', 1),
(27, 230.45, '2012-04-06 01:22:35', 1),
(28, 46, '2012-04-08 18:11:36', 2),
(29, 202, '2012-04-09 04:25:21', 2),
(30, 1152.25, '2012-04-09 21:48:52', 1),
(31, 203.5, '2012-04-10 03:39:05', 1),
(32, 120.3, '2012-04-10 03:41:03', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
