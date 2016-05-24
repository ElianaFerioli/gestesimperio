-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-05-2016 a las 08:49:17
-- Versión del servidor: 5.6.30-0ubuntu0.15.10.1
-- Versión de PHP: 5.6.11-1ubuntu3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestesImperio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EJERCITO`
--

CREATE TABLE IF NOT EXISTS `EJERCITO` (
  `NOMEJER` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `PASSEJER` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `EJERCITO`
--

INSERT INTO `EJERCITO` (`NOMEJER`, `PASSEJER`) VALUES
('CLONES', 'ejercitodeclones'),
('IMPERIO', 'ejercitoimperial'),
('JEDIS', 'ordenjedi'),
('REBELDES', 'alianzarebelde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SOLDADOS`
--

CREATE TABLE IF NOT EXISTS `SOLDADOS` (
  `CODSOLDADO` int(11) NOT NULL,
  `NOMEJER` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `NOMSOLD` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `EXPERSOLD` int(11) NOT NULL,
  `RANGO` varchar(30) COLLATE utf8_spanish_ci DEFAULT 'APRENDIZ',
  `PERCEPCION` int(11) NOT NULL DEFAULT '0',
  `TECNICA` int(11) NOT NULL DEFAULT '0',
  `MECANICA` int(11) NOT NULL DEFAULT '0',
  `FORTALEZA` int(11) NOT NULL DEFAULT '0',
  `DESTREZA` int(11) NOT NULL DEFAULT '0',
  `CONOCIMIENTO` int(11) NOT NULL DEFAULT '0',
  `MONEDAS` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `SOLDADOS`
--

INSERT INTO `SOLDADOS` (`CODSOLDADO`, `NOMEJER`, `NOMSOLD`, `EXPERSOLD`, `RANGO`, `PERCEPCION`, `TECNICA`, `MECANICA`, `FORTALEZA`, `DESTREZA`, `CONOCIMIENTO`, `MONEDAS`) VALUES
(89, 'JEDIS', 'jose navarro', 920, 'MAESTRO JEDI', 8, 8, 10, 9, 6, 5, 0),
(91, 'REBELDES', 'han solo', 570, 'COMANDANTE', 8, 10, 3, 5, 6, 6, 0),
(92, 'REBELDES', 'leia organa', 525, 'COMANDANTE', 3, 2, 9, 8, 6, 7, 0),
(93, 'REBELDES', 'c3-p0', 420, 'SOLDADO RASO', 1, 0, 8, 9, 10, 7, 400),
(94, 'REBELDES', 'r2-d2', 552, 'SOLDADO RASO', 7, 7, 9, 8, 9, 6, 0),
(95, 'REBELDES', 'palpatine', 288, 'SOLDADO RASO', 6, 7, 1, 7, 0, 3, 0),
(96, 'REBELDES', 'finn', 336, 'SOLDADO RASO', 5, 3, 5, 6, 3, 6, 0),
(97, 'REBELDES', 'eliana', 300, 'COMANDANTE', 1, 9, 0, 4, 4, 2, 0),
(98, 'IMPERIO', 'darth vader', 255, 'COMANDANTE', 0, 1, 9, 5, 0, 2, 0),
(99, 'IMPERIO', 'kylo ren', 495, 'COMANDANTE', 7, 5, 5, 2, 5, 9, 0),
(100, 'IMPERIO', 'snoke', 465, 'COMANDANTE', 0, 4, 10, 5, 7, 5, 0),
(101, 'IMPERIO', 'darth mahu', 435, 'COMANDANTE', 4, 4, 4, 2, 5, 10, 0),
(102, 'IMPERIO', 'palpatine', 288, 'SOLDADO RASO', 6, 7, 1, 7, 0, 3, 0),
(103, 'IMPERIO', 'wihuff tarkin', 252, 'SOLDADO RASO', 0, 0, 3, 4, 10, 4, 0),
(104, 'IMPERIO', 'jango fett', 348, 'SOLDADO RASO', 8, 9, 4, 1, 6, 1, 0),
(105, 'IMPERIO', 'ploo koon', 396, 'SOLDADO RASO', 9, 0, 0, 9, 6, 9, 0),
(106, 'REBELDES', 'chewbacca', 312, 'SOLDADO RASO', 1, 9, 7, 4, 4, 1, 0),
(107, 'REBELDES', 'jar jar', 470, 'APRENDIZ', 8, 7, 7, 8, 8, 9, 0),
(108, 'REBELDES', 'poe damareon', 516, 'SOLDADO RASO', 7, 8, 8, 7, 6, 7, 0),
(109, 'IMPERIO', 'watto', 300, 'APRENDIZ', 2, 4, 7, 4, 10, 3, 0),
(110, 'IMPERIO', 'panaka', 300, 'APRENDIZ', 6, 7, 3, 7, 3, 4, 0),
(111, 'CLONES', 'ashoka tano', 280, 'APRENDIZ', 6, 3, 2, 0, 7, 10, 0),
(112, 'CLONES', 'phasma', 444, 'SOLDADO RASO', 7, 2, 7, 10, 2, 9, 0),
(113, 'CLONES', 'clone trooper', 180, 'COMANDANTE', 1, 1, 1, 8, 0, 1, 0),
(114, 'CLONES', 'general hux', 465, 'COMANDANTE', 4, 8, 7, 9, 2, 1, 0),
(115, 'CLONES', 'cody', 390, 'COMANDANTE', 4, 0, 8, 0, 6, 8, 0),
(116, 'CLONES', 'sam wesel', 336, 'SOLDADO RASO', 1, 9, 4, 10, 1, 3, 0),
(117, 'JEDIS', 'luke skywalker', 760, 'MAESTRO JEDI', 6, 5, 7, 7, 5, 8, 0),
(118, 'JEDIS', 'rey', 276, 'PADAWAN', 6, 4, 0, 1, 6, 6, 0),
(119, 'JEDIS', 'yoda', 460, 'MAESTRO JEDI', 1, 0, 9, 4, 8, 1, 0),
(120, 'JEDIS', 'obi-wan kenobi', 225, 'COMANDANTE', 0, 2, 4, 3, 1, 5, 0),
(121, 'JEDIS', 'qui-gon jinn', 450, 'COMANDANTE', 7, 7, 3, 0, 3, 10, 0),
(122, 'REBELDES', 'eli', 540, 'COMANDANTE', 2, 3, 10, 10, 7, 4, 100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `EJERCITO`
--
ALTER TABLE `EJERCITO`
  ADD PRIMARY KEY (`NOMEJER`);

--
-- Indices de la tabla `SOLDADOS`
--
ALTER TABLE `SOLDADOS`
  ADD PRIMARY KEY (`CODSOLDADO`),
  ADD KEY `FKSOLD` (`NOMEJER`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `SOLDADOS`
--
ALTER TABLE `SOLDADOS`
  MODIFY `CODSOLDADO` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `SOLDADOS`
--
ALTER TABLE `SOLDADOS`
  ADD CONSTRAINT `SOLDADOS_ibfk_1` FOREIGN KEY (`NOMEJER`) REFERENCES `EJERCITO` (`NOMEJER`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
