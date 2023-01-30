-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2023 a las 13:48:35
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supertienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_cab`
--

CREATE TABLE `carrito_cab` (
  `id` int(11) NOT NULL,
  `cliente` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_cab`
--

INSERT INTO `carrito_cab` (`id`, `cliente`) VALUES
(1, '2086');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_det`
--

CREATE TABLE `carrito_det` (
  `id` int(11) NOT NULL,
  `cabecera_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_det`
--

INSERT INTO `carrito_det` (`id`, `cabecera_id`, `producto_id`, `cantidad`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_cab`
--

CREATE TABLE `factura_cab` (
  `id` int(11) NOT NULL,
  `documento` varchar(16) NOT NULL,
  `tipo_doc` varchar(32) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `monto_total` int(11) NOT NULL,
  `fecha` tinyint(4) NOT NULL,
  `tipo_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_det`
--

CREATE TABLE `factura_det` (
  `id` int(11) NOT NULL,
  `cabecera_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unit` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `total_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(64) NOT NULL,
  `cantidad` int(4) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(7) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `cantidad`, `descripcion`, `precio`, `imagen`) VALUES
(1, '123654', 10, 'Notebook Huawei CORE I5 8GB RAM 512DE DISCO DURO SSD MATEBOOK D14 2021', 7500000, '1.webp'),
(2, '321456', 2, 'TV Tokio SMART 4K 50 PULG', 4000000, '2.png'),
(3, '654123', 1, 'IMPRESORA HP MULTIFUNCION', 500000, '3.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_cab`
--
ALTER TABLE `carrito_cab`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrito_det`
--
ALTER TABLE `carrito_det`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura_cab`
--
ALTER TABLE `factura_cab`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura_det`
--
ALTER TABLE `factura_det`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito_cab`
--
ALTER TABLE `carrito_cab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carrito_det`
--
ALTER TABLE `carrito_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura_cab`
--
ALTER TABLE `factura_cab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura_det`
--
ALTER TABLE `factura_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
