-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2015 a las 06:25:04
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `miniproyecto`
--
CREATE DATABASE IF NOT EXISTS `miniproyecto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `miniproyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcion`
--
-- Creación: 16-03-2015 a las 03:59:46
--

DROP TABLE IF EXISTS `descripcion`;
CREATE TABLE IF NOT EXISTS `descripcion` (
`idDescripcion` int(11) NOT NULL,
  `capacidad` varchar(15) DEFAULT NULL,
  `velocidad` varchar(10) DEFAULT NULL,
  `tipoDeConexion` varchar(20) DEFAULT NULL,
  `tecnologia` varchar(25) DEFAULT NULL,
  `voltaje` varchar(25) DEFAULT NULL,
  `tamanio` varchar(20) DEFAULT NULL,
  `descripcionAdicional` varchar(100) DEFAULT NULL,
  `compatibilidad` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `descripcion`
--

INSERT INTO `descripcion` (`idDescripcion`, `capacidad`, `velocidad`, `tipoDeConexion`, `tecnologia`, `voltaje`, `tamanio`, `descripcionAdicional`, `compatibilidad`) VALUES
(2, '12g', '12mhz', 'usb', 'ddr3', '1.5v', '15''', 'primer registrro', 24),
(3, '4 gb', '1333 mhz', '', 'ddr3', '', '', '', 24),
(4, '8 gb', '1333 mhz', '', 'ddr3', '', '', '', 24),
(5, '8 gb', '1600 mhz', '', 'ddr3', '', '', 'PC3L-12800S', 24),
(6, '8 gb', '1066 mhz', '', 'ddr3', '', '', 'Pc3-8500', 24),
(7, '32 gb', '26666 mhz', '', 'ddr4', '1.2v', '', '(4 X 8gb)', 24),
(8, '16 gb', '2400 mhz', '', 'ddr3', '1.65 v', '', '(2x8GB) ', 24),
(9, '8 gb', '1600 mhz', '', 'ddr3', '', '', '', 24),
(10, '8 gb', '1600 mhz', '', 'ddr3', '', '', '', 24),
(11, '8 gb', '1600 mhz', '', 'ddr3', '', '', '2x4gb color rojo', 24),
(12, '500 gb', '5400 rpm', '', 'sata', '', '', '', 24),
(13, '1 tb', '7200 rpm', '', 'sata', '', '', '', 24),
(14, '1 tb', '7200 rpm', '', 'sata', '', '', '', 24),
(15, '2 tb', '7200 rpm', '', 'sata', '', '', '', 24),
(16, '1 tb', '7200 rpm', '', 'sata', '', '', '64 mb de cache', 24),
(17, '1 gb', '1200 mhz', '', 'ddr3', '', '', 'Memory Bandwidth Interface PCI-E 2.0 16x DVI-I, HDMI, VGA', 24),
(18, '1 gb', '1075 mhz', '', 'ddr5', '', '', '', 24),
(19, '2 gb', '1620 mhz', '', 'ddr3', '', '', '48 nÃºcleos', 24),
(20, '2 gb', '1620 mhz', '', 'ddr3', '', '', 'Tasa de relleno de texturas 2048 MB', 24),
(21, '2 gb', '1000 mhz', '', 'ddr5', '', '', '', 24),
(22, '2 gb', '1620 mhz', '', 'ddr3', '', '', '', 24),
(23, '2 gb', '1600 mhz', '', 'ddr3', '', '', '', 24),
(24, '4 nucleos', '3.5 Ghz', 'Socket Lga 1150', '4ta Gen', '', '', '', 3),
(25, '6 Nucleos ', '3.5 mhz', 'Am3+ ', '', '95w', '', '', 4),
(26, '6 nucleos', '4.2 mhz', 'Am3+', '', '125 w', '', '', 4),
(27, '2 nucleos', '2.8 mhz', 'Socket Lga1150', '4ta Gen', '', '', '', 3),
(28, '2 nucleos', '3.2 mhz', 'Socket Lga1150', 'Devils Cayon', '', '', '', 3),
(29, '4 nucleos', '3.5 mhz', 'Socket Lga1150', '4ta Gen', '', '', '', 3),
(30, '', '', 'Inalambrica', 'Plug and play', '', '', 'Touchpad Integrado de 9 cm, 10 metros de alcance inalambrico', 24),
(31, '', '', 'USB', '', '', '', 'retroiluminacion LED azul', 24),
(32, '', '', 'USB', '', '', '', 'Pantalla Tactil 4.05', 24),
(33, '', '', 'USB', '', '', '', '', 24),
(34, '', '', 'USB', '', '', '', 'DiseÃ±o ergonomico', 24),
(35, '', '', 'PS/2', '', '', '', '', 24),
(36, '', '', 'USB', '', '', '', 'Negro, 8 teclas de acceso rapido', 24),
(37, '', '', 'USB', '', '', '', 'Synapse 2.0', 24),
(38, '', '', 'Bluetooth', '', '', '', '', 24),
(39, '', '', 'USB ', '', '', '', '', 24),
(40, '', '', 'USB', '', '', '', 'Retroiluminado,programable,programacion de teclas', 24),
(41, '', '3.5 GHz', '', 'Devils Cayon', '', '', '4 nucleos,Turbo host', 3),
(42, '', '3.2 GHz', '', '', '', '', '2 nucleos', 3),
(43, '', '3.5ghz', 'Socket Lga1150', '4ta Gen', '88 W', '37.5mm x 37.5mm', '4 nucleos', 3),
(44, '', '', '775', 'DDR3', '', '', 'VS3', 3),
(45, '', '', '775', 'DDR2 / DDR3', '', '', 'PCI', 4),
(46, '', '', '', 'DDR2 / DDR3', '', '', '4ta Gen Uefi Bios', 3),
(47, '', '', 'Lga 1150', 'DDR3', '', '', 'Soporte Multi-gpu', 3),
(48, '', '', 'AM3+', 'DDR3', '', '', 'Atx Crossfire Usb 3.0 Sata3', 4),
(49, '', '', 'Skt 1150', 'DDR3', '', '', 'Proc. 4a Gen', 3),
(50, '', '', 'Tpc 812', '', '', '', 'Proc. 4a Gen', 24),
(51, '', '', '', '', '', '', 'Seidon120m', 24),
(52, '', '', '', '', '', '', 'Glacer 240l', 24),
(53, '', '', '', '', '', '', 'Seidon120v', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcionproducto`
--
-- Creación: 16-03-2015 a las 03:47:50
--

DROP TABLE IF EXISTS `descripcionproducto`;
CREATE TABLE IF NOT EXISTS `descripcionproducto` (
  `idProducto` int(11) DEFAULT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `idDescripcion` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `descripcionproducto`
--

INSERT INTO `descripcionproducto` (`idProducto`, `idMarca`, `idDescripcion`, `precio`) VALUES
(2, 5, 2, 53456),
(3, 25, 3, 84000),
(4, 6, 4, 204990),
(5, 26, 5, 179900),
(6, 28, 6, 212000),
(7, 19, 7, 3360000),
(8, 19, 8, 650000),
(9, 26, 9, 220000),
(10, 6, 10, 225000),
(11, 29, 11, 204900),
(12, 1, 12, 125900),
(13, 30, 13, 137900),
(14, 6, 14, 129900),
(15, 1, 15, 209000),
(16, 31, 16, 119000),
(17, 5, 17, 94400),
(18, 32, 18, 264000),
(19, 5, 19, 134900),
(20, 5, 20, 154900),
(21, 4, 21, 384000),
(22, 4, 22, 220000),
(23, 5, 23, 199900),
(24, 3, 24, 504900),
(25, 4, 25, 304900),
(26, 4, 26, 364900),
(30, 3, 27, 159900),
(28, 3, 28, 23000),
(29, 3, 29, 664900),
(30, 22, 27, 99000),
(31, 21, 31, 71000),
(32, 23, 32, 649000),
(33, 33, 33, 17900),
(34, 24, 34, 12999),
(35, 24, 35, 15299),
(36, 21, 36, 31900),
(37, 23, 37, 289.9),
(38, 34, 38, 89900),
(39, 21, 38, 30900),
(40, 22, 40, 87900),
(41, 3, 41, 664900),
(42, 3, 42, 230000),
(43, 3, 43, 664900),
(44, 9, 44, 189000),
(45, 9, 45, 139990),
(45, 2, 45, 174900),
(46, 13, 46, 654900),
(47, 13, 47, 254000),
(48, 9, 48, 124900),
(48, 18, 48, 199900),
(49, 18, 49, 209000),
(49, 18, 49, 399900),
(49, 18, 49, 209000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--
-- Creación: 16-03-2015 a las 03:47:50
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
`idMarca` int(11) NOT NULL,
  `nombreMarca` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idMarca`, `nombreMarca`) VALUES
(1, 'Toshiba'),
(2, 'Asus'),
(3, 'Intel'),
(4, 'AMD'),
(5, 'Envidia'),
(6, 'Kingston'),
(7, 'Biostar'),
(8, 'Termaltek'),
(9, 'Asrock'),
(10, 'MSI'),
(11, 'Apple'),
(12, 'Acer'),
(13, 'Gigabyte'),
(14, 'HP'),
(15, 'Dell'),
(16, 'Samsung'),
(17, 'Lenovo'),
(18, 'Cooler Master'),
(19, 'Corsair'),
(20, 'EVGA'),
(21, 'Genius'),
(22, 'Logitech'),
(23, 'Razer'),
(24, 'variasMarcas'),
(25, 'Transcend '),
(26, 'Portatil'),
(28, 'Crucial'),
(29, 'G.skill'),
(30, 'Hitachi'),
(31, 'seagate'),
(32, 'Xfx'),
(33, 'Unitec'),
(34, 'Microsoft');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--
-- Creación: 16-03-2015 a las 04:01:57
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
`idProducto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idTipoProducto` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombre`, `idTipoProducto`) VALUES
(2, 'prubea', 5),
(3, 'Memoria RAM', 11),
(4, 'Memoria RAM', 11),
(5, 'Memoria RAM', 11),
(6, 'Mac Ram', 11),
(7, 'Dominator Platinum', 11),
(8, 'Vengeance Pro', 11),
(9, 'Gskill Ripjaws', 11),
(10, 'Hyperx Fury', 11),
(11, 'G.skill Ripjawsx ', 11),
(12, 'Disco duro', 1),
(13, 'Dig', 1),
(14, 'Disco duro', 1),
(15, 'Disco duro', 1),
(16, 'seagate Barracuda', 1),
(17, '8400 GS ', 6),
(18, 'Xfx R7 260x', 6),
(19, 'Nvidia Geforce Gt 52', 6),
(20, 'Gt610', 6),
(21, 'Ati Radeon Sapphire ', 6),
(22, 'Evga Geforce Gt 620', 6),
(23, 'Nvidia Geforce Evga ', 6),
(24, 'Intel Core I5 4440', 9),
(25, 'Amd Fx 6300 Vishera', 9),
(26, 'Amd Fx 6350', 9),
(27, 'Intel Celeron G1840', 9),
(28, 'Intel Celeron G1840', 9),
(29, 'Intel Core I5 4690k', 9),
(30, 'Teclado inalambrico', 4),
(31, 'Teclado Manticore Kb-g255', 4),
(32, 'Teclado Deathstalker Ultimate ', 4),
(33, 'Teclado Flexible', 4),
(34, 'Teclado Usb', 4),
(35, 'Teclado Kb-110x', 4),
(36, 'Teclado Kb G235 Gaming ', 4),
(37, 'Teclado Blackwidow Standar 2014', 4),
(38, 'Teclado Wedge Mobile', 4),
(39, 'Teclado Kb-g235', 4),
(40, 'Teclado G105 Gaming', 4),
(41, 'Procesador 4690k ', 9),
(42, 'Procesador Pentium G3258', 9),
(43, 'Procesador I5 4690k', 9),
(44, 'Board G41M', 5),
(45, 'Board G41M', 5),
(46, 'Board H81m-c', 5),
(47, 'Board Z97x-ud7', 5),
(48, 'Board Ga-970a-ds3p', 5),
(49, 'Board H81m-vg4', 5),
(50, 'Disipador con Camara De Vapor Vertical', 8),
(51, 'Disipador De Refrigeracion Liquida', 8),
(52, 'Disipador De Refrigeracion Liquida', 8),
(53, 'Sistema Montaje Universal', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--
-- Creación: 16-03-2015 a las 03:47:50
--

DROP TABLE IF EXISTS `tipoproducto`;
CREATE TABLE IF NOT EXISTS `tipoproducto` (
`idTipoProducto` int(11) NOT NULL,
  `tipoProducto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idTipoProducto`, `tipoProducto`) VALUES
(1, 'discoDuro'),
(2, 'monitor'),
(3, 'mouse'),
(4, 'teclado'),
(5, 'mainBoard'),
(6, 'tarjetaGrafica'),
(7, 'fuentePoder'),
(8, 'coolers'),
(9, 'procesador'),
(10, 'gabinete'),
(11, 'ram');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `descripcion`
--
ALTER TABLE `descripcion`
 ADD PRIMARY KEY (`idDescripcion`), ADD KEY `compatibilidad` (`compatibilidad`);

--
-- Indices de la tabla `descripcionproducto`
--
ALTER TABLE `descripcionproducto`
 ADD KEY `idProducto` (`idProducto`), ADD KEY `idMarca` (`idMarca`), ADD KEY `idDescripcion` (`idDescripcion`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
 ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
 ADD PRIMARY KEY (`idProducto`), ADD KEY `idTipoProducto` (`idTipoProducto`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
 ADD PRIMARY KEY (`idTipoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `descripcion`
--
ALTER TABLE `descripcion`
MODIFY `idDescripcion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
MODIFY `idTipoProducto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `descripcion`
--
ALTER TABLE `descripcion`
ADD CONSTRAINT `descripcion_ibfk_1` FOREIGN KEY (`compatibilidad`) REFERENCES `marca` (`idMarca`);

--
-- Filtros para la tabla `descripcionproducto`
--
ALTER TABLE `descripcionproducto`
ADD CONSTRAINT `descripcionproducto_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
ADD CONSTRAINT `descripcionproducto_ibfk_2` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`),
ADD CONSTRAINT `descripcionproducto_ibfk_3` FOREIGN KEY (`idDescripcion`) REFERENCES `descripcion` (`idDescripcion`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idTipoProducto`) REFERENCES `tipoproducto` (`idTipoProducto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
