-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 18:30:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodegabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Dirección` varchar(45) NOT NULL,
  `Teléfono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `Nombre`, `Dirección`, `Teléfono`) VALUES
(1, 'Juan Pérez', 'Calle 123, Ciudad', '555-1234'),
(2, 'María García', 'Avenida 456, Pueblo', '555-5678'),
(3, 'Carlos López', 'Carrera 789, Villa', '555-9012'),
(4, 'Ana Rodríguez', 'Diagonal 012, Metrópolis', '555-3456'),
(5, 'Luis Martínez', 'Transversal 345, Capital', '555-7890'),
(6, 'Laura Hernández', 'Circular 678, Centro', '555-2345'),
(7, 'Pedro González', 'Vía 901, Urbanización', '555-6789'),
(8, 'Sofía Díaz', 'Pasaje 234, Residencial', '555-0123'),
(9, 'Miguel Torres', 'Autopista 567, Zona Norte', '555-4567'),
(10, 'Elena Ramírez', 'Boulevard 890, Distrito', '555-8901'),
(11, 'Jorge Flores', 'Callejón 123, Sector Este', '555-1235'),
(12, 'Carmen Vargas', 'Avenida 456, Barrio Sur', '555-5679'),
(13, 'Roberto Castro', 'Carrera 789, Colonia', '555-9013'),
(14, 'Isabel Ríos', 'Diagonal 012, Urbanización', '555-3457'),
(15, 'Fernando Mora', 'Transversal 345, Localidad', '555-7891'),
(16, 'Gabriela Reyes', 'Circular 678, Municipio', '555-2346'),
(17, 'Diego Ortega', 'Vía 901, Región', '555-6790'),
(18, 'Patricia Navarro', 'Pasaje 234, Departamento', '555-0124'),
(19, 'Ricardo Medina', 'Autopista 567, Provincia', '555-4568'),
(20, 'Silvia Romero', 'Boulevard 890, Estado', '555-8902');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idDetalles` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idProductos` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `idcliente`, `Fecha`, `Total`) VALUES
(165, 1, '2024-01-05', 250.75),
(166, 2, '2024-01-07', 189.50),
(167, 3, '2024-01-10', 425.00),
(168, 4, '2024-01-12', 120.30),
(169, 5, '2024-01-15', 345.90),
(170, 6, '2024-01-18', 78.25),
(171, 7, '2024-01-20', 560.40),
(172, 8, '2024-01-22', 95.60),
(173, 9, '2024-01-25', 210.75),
(174, 10, '2024-01-28', 189.00),
(175, 11, '2024-02-01', 325.50),
(176, 12, '2024-02-03', 145.80),
(177, 13, '2024-02-06', 478.90),
(178, 14, '2024-02-08', 89.45),
(179, 15, '2024-02-11', 210.30),
(180, 16, '2024-02-14', 675.25),
(181, 17, '2024-02-17', 120.75),
(182, 18, '2024-02-20', 345.60),
(183, 19, '2024-02-23', 89.90),
(184, 20, '2024-02-25', 230.45),
(185, 1, '2024-02-28', 156.80),
(186, 2, '2024-03-02', 289.70),
(187, 3, '2024-03-05', 420.35),
(188, 4, '2024-03-08', 78.90),
(189, 5, '2024-03-11', 195.60),
(190, 6, '2024-03-14', 345.25),
(191, 7, '2024-03-17', 89.75),
(192, 8, '2024-03-20', 510.40),
(193, 9, '2024-03-23', 125.30),
(194, 10, '2024-03-26', 278.90),
(195, 11, '2024-03-29', 145.60),
(196, 12, '2024-04-01', 390.75),
(197, 13, '2024-04-04', 89.25),
(198, 14, '2024-04-07', 225.80),
(199, 15, '2024-04-10', 156.40),
(200, 16, '2024-04-13', 489.70),
(201, 17, '2024-04-16', 120.90),
(202, 18, '2024-04-19', 335.25),
(203, 19, '2024-04-22', 78.60),
(204, 20, '2024-04-25', 245.35),
(205, 1, '2024-04-28', 189.80),
(206, 2, '2024-05-02', 325.40),
(207, 3, '2024-05-05', 95.70),
(208, 4, '2024-05-08', 410.25),
(209, 5, '2024-05-11', 145.90),
(210, 6, '2024-05-14', 278.60),
(211, 7, '2024-05-17', 89.35),
(212, 8, '2024-05-20', 230.80),
(213, 9, '2024-05-23', 156.25),
(214, 10, '2024-05-26', 345.70),
(215, 11, '2024-05-29', 120.45),
(216, 12, '2024-06-01', 289.90),
(217, 13, '2024-06-04', 78.80),
(218, 14, '2024-06-07', 210.35),
(219, 15, '2024-06-10', 145.25),
(220, 16, '2024-06-13', 425.60),
(221, 17, '2024-06-16', 89.90),
(222, 18, '2024-06-19', 195.40),
(223, 19, '2024-06-22', 325.75),
(224, 20, '2024-06-25', 120.60),
(225, 1, '2024-06-28', 278.25),
(226, 2, '2024-07-01', 89.70),
(227, 3, '2024-07-04', 230.90),
(228, 4, '2024-07-07', 156.35),
(229, 5, '2024-07-10', 345.80),
(230, 6, '2024-07-13', 125.40),
(231, 7, '2024-07-16', 289.25),
(232, 8, '2024-07-19', 78.90),
(233, 9, '2024-07-22', 210.60),
(234, 10, '2024-07-25', 145.75),
(235, 11, '2024-07-28', 425.40),
(236, 12, '2024-08-01', 89.25),
(237, 13, '2024-08-04', 195.80),
(238, 14, '2024-08-07', 325.35),
(239, 15, '2024-08-10', 120.90),
(240, 16, '2024-08-13', 278.60),
(241, 17, '2024-08-16', 95.25),
(242, 18, '2024-08-19', 230.70),
(243, 19, '2024-08-22', 156.40),
(244, 20, '2024-08-25', 345.90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `PrecioVenta` decimal(10,2) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `PrecioVenta`, `Nombre`) VALUES
(1, 10.50, 'Producto1'),
(2, 15.00, 'Producto2'),
(3, 8.75, 'Producto3'),
(4, 12.20, 'Producto4'),
(5, 9.99, 'Producto5'),
(6, 11.10, 'Producto6'),
(7, 14.50, 'Producto7'),
(8, 7.80, 'Producto8'),
(9, 20.00, 'Producto9'),
(10, 13.25, 'Producto10'),
(11, 16.40, 'Producto11'),
(12, 18.00, 'Producto12'),
(13, 21.50, 'Producto13'),
(14, 9.00, 'Producto14'),
(15, 22.75, 'Producto15'),
(16, 17.30, 'Producto16'),
(17, 14.00, 'Producto17'),
(18, 12.75, 'Producto18'),
(19, 19.99, 'Producto19'),
(20, 23.50, 'Producto20'),
(21, 8.40, 'Producto21'),
(22, 10.80, 'Producto22'),
(23, 11.95, 'Producto23'),
(24, 15.60, 'Producto24'),
(25, 13.50, 'Producto25'),
(26, 7.25, 'Producto26'),
(27, 9.85, 'Producto27'),
(28, 16.00, 'Producto28'),
(29, 14.10, 'Producto29'),
(30, 12.40, 'Producto30'),
(31, 19.00, 'Producto31'),
(32, 21.10, 'Producto32'),
(33, 18.25, 'Producto33'),
(34, 20.50, 'Producto34'),
(35, 22.00, 'Producto35'),
(36, 8.90, 'Producto36'),
(37, 11.20, 'Producto37'),
(38, 13.75, 'Producto38'),
(39, 17.00, 'Producto39'),
(40, 15.30, 'Producto40'),
(41, 9.50, 'Producto41'),
(42, 12.80, 'Producto42'),
(43, 10.60, 'Producto43'),
(44, 14.90, 'Producto44'),
(45, 16.25, 'Producto45'),
(46, 18.50, 'Producto46'),
(47, 20.10, 'Producto47'),
(48, 22.30, 'Producto48'),
(49, 9.15, 'Producto49'),
(50, 7.95, 'Producto50'),
(51, 11.40, 'Producto51'),
(52, 13.85, 'Producto52'),
(53, 15.75, 'Producto53'),
(54, 17.20, 'Producto54'),
(55, 19.50, 'Producto55'),
(56, 21.75, 'Producto56'),
(57, 8.10, 'Producto57'),
(58, 10.90, 'Producto58'),
(59, 12.30, 'Producto59'),
(60, 14.60, 'Producto60'),
(61, 16.80, 'Producto61'),
(62, 18.95, 'Producto62'),
(63, 20.70, 'Producto63'),
(64, 22.90, 'Producto64'),
(65, 9.35, 'Producto65'),
(66, 11.60, 'Producto66'),
(67, 13.25, 'Producto67'),
(68, 15.45, 'Producto68'),
(69, 17.85, 'Producto69'),
(70, 19.20, 'Producto70'),
(71, 21.40, 'Producto71'),
(72, 23.00, 'Producto72'),
(73, 8.50, 'Producto73'),
(74, 10.70, 'Producto74'),
(75, 12.55, 'Producto75'),
(76, 14.75, 'Producto76'),
(77, 16.90, 'Producto77'),
(78, 18.10, 'Producto78'),
(79, 20.30, 'Producto79'),
(80, 22.50, 'Producto80'),
(81, 79.34, 'Producto 1'),
(82, 61.19, 'Producto 2'),
(83, 44.75, 'Producto 3'),
(84, 150.00, 'Producto 4'),
(85, 180.25, 'Producto 5'),
(86, 60.15, 'Producto 6'),
(87, 145.90, 'Producto 7'),
(88, 200.00, 'Producto 8'),
(89, 39.13, 'Producto 9'),
(90, 80.00, 'Producto 10'),
(91, 95.60, 'Producto 11'),
(92, 85.75, 'Producto 12'),
(93, 63.00, 'Producto 13'),
(94, 125.00, 'Producto 14'),
(95, 36.45, 'Producto 15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDetalles`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProductos` (`idProductos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDetalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
