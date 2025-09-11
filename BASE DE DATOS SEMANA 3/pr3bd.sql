-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2025 a las 11:01:01
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
-- Base de datos: `pr3bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `COD_CLIE` char(18) NOT NULL,
  `NOMBRE_CLIE` char(18) DEFAULT NULL,
  `APELLIDOS_CLIE` char(18) DEFAULT NULL,
  `NRO_DNI_CLIE` char(18) DEFAULT NULL,
  `TELEFONO_CLIE` char(18) DEFAULT NULL,
  `EDAD_CLIE` char(18) DEFAULT NULL,
  `FECHA_NACIMIENTO` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma_actividad`
--

CREATE TABLE `cronograma_actividad` (
  `NRO_CRONOG_ACT` char(18) NOT NULL,
  `FECHA_EMISION` char(18) DEFAULT NULL,
  `SITUACION_CRONOG` char(18) DEFAULT NULL,
  `FECHA_SALIDA` char(18) DEFAULT NULL,
  `HORA_SALIDA` char(18) DEFAULT NULL,
  `FECHA_RETORNO` char(18) DEFAULT NULL,
  `HORA_RETORNO` char(18) DEFAULT NULL,
  `COD_PAQUETES_V` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `COD_DESTIINO` char(18) NOT NULL,
  `NOMBRE_DESTINO` char(18) DEFAULT NULL,
  `PROVINCIA` char(18) DEFAULT NULL,
  `DESTINCIA_KM` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viajes`
--

CREATE TABLE `lista_viajes` (
  `NRO_LISTA` char(18) NOT NULL,
  `FECHA_REGISTRO` char(18) DEFAULT NULL,
  `FECHA_CADUCIDAD` char(18) DEFAULT NULL,
  `NRO_CRONOG_ACT` char(18) DEFAULT NULL,
  `COD_PAQUETES_V` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viajes_cliente`
--

CREATE TABLE `lista_viajes_cliente` (
  `NOMBRE_CLIE` char(18) DEFAULT NULL,
  `APELLIDOS_CLIE` char(18) DEFAULT NULL,
  `VIAJE_EFECTIVO` char(18) DEFAULT NULL,
  `COD_CLIE` char(18) NOT NULL,
  `NRO_LISTA` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viajes_personas_viajes`
--

CREATE TABLE `lista_viajes_personas_viajes` (
  `NOMBRE_PERS_V` char(18) DEFAULT NULL,
  `APELLIDOS_PERS_V` char(18) DEFAULT NULL,
  `NRO_LISTA` char(18) NOT NULL,
  `COD_PRES_V` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes_viajes`
--

CREATE TABLE `paquetes_viajes` (
  `COD_PAQUETES_V` char(18) NOT NULL,
  `DENOMINACION` char(18) DEFAULT NULL,
  `DURACION_TOUR` char(18) DEFAULT NULL,
  `TIPO_TOUR` char(18) DEFAULT NULL,
  `COSTO_PAQUETES_ADULTOS` char(18) DEFAULT NULL,
  `COSTO_PAQUETES_NIÑOS` char(18) DEFAULT NULL,
  `HOSPEDAJE` char(18) DEFAULT NULL,
  `DESAYUNO` char(18) DEFAULT NULL,
  `ALMUERZO` char(18) DEFAULT NULL,
  `CENA` char(18) DEFAULT NULL,
  `CUPOS_DISPONIBLES` char(18) DEFAULT NULL,
  `TIPOS_BUS` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes_viajes_desrino`
--

CREATE TABLE `paquetes_viajes_desrino` (
  `NOMBRE_DESTINO` char(18) DEFAULT NULL,
  `DENIMINACION` char(18) DEFAULT NULL,
  `ESTADIA_DESTINO` char(18) DEFAULT NULL,
  `COD_DESTIINO` char(18) NOT NULL,
  `COD_PAQUETES_V` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_viaje`
--

CREATE TABLE `personal_viaje` (
  `COD_PRES_V` char(18) NOT NULL,
  `NOMBRE_PERS_V` char(18) DEFAULT NULL,
  `APELLIDOS_PERS_V` char(18) DEFAULT NULL,
  `CARGO_PERS_V` char(18) DEFAULT NULL,
  `NRO_PERS_V` char(18) DEFAULT NULL,
  `TELEFONO_PERS_V` char(18) DEFAULT NULL,
  `DISPONIBILIDAD_PERS_V` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas_turisticas`
--

CREATE TABLE `zonas_turisticas` (
  `COD_ZONA_TUR` char(18) NOT NULL,
  `NOMBRE_ZONA_TUR` char(18) DEFAULT NULL,
  `TIPO_ZONA_TUR` char(18) DEFAULT NULL,
  `COD_DESTIINO` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD_CLIE`);

--
-- Indices de la tabla `cronograma_actividad`
--
ALTER TABLE `cronograma_actividad`
  ADD PRIMARY KEY (`NRO_CRONOG_ACT`,`COD_PAQUETES_V`),
  ADD KEY `R_10` (`COD_PAQUETES_V`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`COD_DESTIINO`);

--
-- Indices de la tabla `lista_viajes`
--
ALTER TABLE `lista_viajes`
  ADD PRIMARY KEY (`NRO_LISTA`),
  ADD KEY `R_8` (`NRO_CRONOG_ACT`,`COD_PAQUETES_V`);

--
-- Indices de la tabla `lista_viajes_cliente`
--
ALTER TABLE `lista_viajes_cliente`
  ADD PRIMARY KEY (`COD_CLIE`,`NRO_LISTA`),
  ADD KEY `R_7` (`NRO_LISTA`);

--
-- Indices de la tabla `lista_viajes_personas_viajes`
--
ALTER TABLE `lista_viajes_personas_viajes`
  ADD PRIMARY KEY (`NRO_LISTA`,`COD_PRES_V`),
  ADD KEY `R_12` (`COD_PRES_V`);

--
-- Indices de la tabla `paquetes_viajes`
--
ALTER TABLE `paquetes_viajes`
  ADD PRIMARY KEY (`COD_PAQUETES_V`);

--
-- Indices de la tabla `paquetes_viajes_desrino`
--
ALTER TABLE `paquetes_viajes_desrino`
  ADD PRIMARY KEY (`COD_DESTIINO`,`COD_PAQUETES_V`),
  ADD KEY `R_13` (`COD_PAQUETES_V`);

--
-- Indices de la tabla `personal_viaje`
--
ALTER TABLE `personal_viaje`
  ADD PRIMARY KEY (`COD_PRES_V`);

--
-- Indices de la tabla `zonas_turisticas`
--
ALTER TABLE `zonas_turisticas`
  ADD PRIMARY KEY (`COD_ZONA_TUR`),
  ADD KEY `R_2` (`COD_DESTIINO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cronograma_actividad`
--
ALTER TABLE `cronograma_actividad`
  ADD CONSTRAINT `R_10` FOREIGN KEY (`COD_PAQUETES_V`) REFERENCES `paquetes_viajes` (`COD_PAQUETES_V`);

--
-- Filtros para la tabla `lista_viajes`
--
ALTER TABLE `lista_viajes`
  ADD CONSTRAINT `R_8` FOREIGN KEY (`NRO_CRONOG_ACT`,`COD_PAQUETES_V`) REFERENCES `cronograma_actividad` (`NRO_CRONOG_ACT`, `COD_PAQUETES_V`);

--
-- Filtros para la tabla `lista_viajes_cliente`
--
ALTER TABLE `lista_viajes_cliente`
  ADD CONSTRAINT `R_5` FOREIGN KEY (`COD_CLIE`) REFERENCES `cliente` (`COD_CLIE`),
  ADD CONSTRAINT `R_7` FOREIGN KEY (`NRO_LISTA`) REFERENCES `lista_viajes` (`NRO_LISTA`);

--
-- Filtros para la tabla `lista_viajes_personas_viajes`
--
ALTER TABLE `lista_viajes_personas_viajes`
  ADD CONSTRAINT `R_11` FOREIGN KEY (`NRO_LISTA`) REFERENCES `lista_viajes` (`NRO_LISTA`),
  ADD CONSTRAINT `R_12` FOREIGN KEY (`COD_PRES_V`) REFERENCES `personal_viaje` (`COD_PRES_V`);

--
-- Filtros para la tabla `paquetes_viajes_desrino`
--
ALTER TABLE `paquetes_viajes_desrino`
  ADD CONSTRAINT `R_1` FOREIGN KEY (`COD_DESTIINO`) REFERENCES `destino` (`COD_DESTIINO`),
  ADD CONSTRAINT `R_13` FOREIGN KEY (`COD_PAQUETES_V`) REFERENCES `paquetes_viajes` (`COD_PAQUETES_V`);

--
-- Filtros para la tabla `zonas_turisticas`
--
ALTER TABLE `zonas_turisticas`
  ADD CONSTRAINT `R_2` FOREIGN KEY (`COD_DESTIINO`) REFERENCES `destino` (`COD_DESTIINO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
