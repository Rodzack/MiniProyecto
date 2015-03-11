-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2015 a las 02:16:22
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `miniproyecto`
--

create database miniproyecto;

use miniproyecto;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcion`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `descripcion`
--

INSERT INTO `descripcion` (`idDescripcion`, `capacidad`, `velocidad`, `tipoDeConexion`, `tecnologia`, `voltaje`, `tamanio`, `descripcionAdicional`, `compatibilidad`) VALUES
(2, '16 GB', '1600 MHZ', NULL, 'DDR3', '1.5 V', NULL, '(PC3 12800) Desktop Memory (CMZ16GX3M2A1600C10)', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcionproducto`
--

CREATE TABLE IF NOT EXISTS `descripcionproducto` (
  `idProducto` int(11) DEFAULT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `idDescripcion` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `rango` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `descripcionproducto`
--

INSERT INTO `descripcionproducto` (`idProducto`, `idMarca`, `idDescripcion`, `precio`, `rango`) VALUES
(1, 19, 2, 322125.984, 'Alto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
`idMarca` int(11) NOT NULL,
  `nombreMarca` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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
(13, 'Acer'),
(14, 'HP'),
(15, 'Dell'),
(16, 'Samsung'),
(17, 'Lenovo'),
(18, 'Cooler Master'),
(19, 'Corsair'),
(20, 'EVGA'),
(21, 'Genius'),
(22, 'Logitech'),
(23, 'Razer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
`idProducto` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `idTipoProducto` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombre`, `idTipoProducto`) VALUES
(1, 'memoria ram', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE IF NOT EXISTS `tipoproducto` (
`idTipoProducto` int(11) NOT NULL,
  `tipoProducto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idTipoProducto`, `tipoProducto`) VALUES
(9, 'discoDuro'),
(10, 'monitor'),
(11, 'mouse'),
(12, 'teclado'),
(13, 'mainBoard'),
(14, 'tarjetaGrafica'),
(15, 'fuentePoder'),
(16, 'coolers'),
(17, 'procesador'),
(18, 'gabinete'),
(19, 'ram');

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
MODIFY `idDescripcion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
MODIFY `idTipoProducto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
