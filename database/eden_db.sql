-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2022 a las 02:45:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eden_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `estado`) VALUES
(3, 'Bebidas', 1),
(4, 'Pan', 1),
(5, 'Arepas', 0),
(6, 'Parva', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_informativos`
--

CREATE TABLE `clientes_informativos` (
  `id_cliente_documento` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `telefono` int(11) NOT NULL,
  `id_usuario_documento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes_informativos`
--

INSERT INTO `clientes_informativos` (`id_cliente_documento`, `nombre`, `apellido`, `telefono`, `id_usuario_documento`) VALUES
(111, 'Juan', 'Arteaga', 1111, NULL),
(222, 'Jhon', 'Dhoe', 11111111, NULL),
(333, 'Jhon', 'Dhoe', 11111111, NULL),
(444, 'Jhon', 'Dhoe', 11111111, 999),
(777, 'Veggeta', 'El mejor youtuber', 777, NULL),
(888, '888', '888', 888, NULL),
(1010, 'test10', 'test10', 1010, NULL),
(1111, 'test11', 'test11', 1111, NULL),
(1212, 'test12', 'test12', 1212, NULL),
(1313, 'test13', 'test13', 1313, NULL),
(2222, 'test2', 'test2', 123123, NULL),
(3333, 'test3', 'test3', 123123, NULL),
(4444, 'test4', 'test4', 1231231, NULL),
(5555, 'test5', 'test5', 5555, NULL),
(6666, 'test6', 'test6', 23123, NULL),
(7777, 'test7', 'test7', 7777, NULL),
(8888, 'test8', 'test8', 8888, NULL),
(9999, 'test9', 'test9', 9999, NULL),
(1112221, 'jose', 'loraes', 233322345, NULL),
(8888888, 'Prueba', 'xddd', 123123, NULL),
(2147483647, 'Cliente', 'Nuevo', 123123, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle_pedido`, `id_producto`, `id_pedido`, `cantidad`, `precio_unitario`) VALUES
(1, 12, 1, 4, 2000),
(2, 12, 20, 5, 300),
(3, 14, 20, 5, 2000),
(4, 14, 21, 5, 2000),
(5, 12, 21, 4, 300),
(6, 14, 22, 5, 2000),
(7, 12, 22, 5, 300),
(8, 14, 26, 5, 2000),
(9, 12, 26, 5, 300),
(10, 14, 27, 5, 2000),
(11, 12, 27, 5, 300),
(12, 14, 28, 5, 2000),
(13, 12, 28, 5, 300),
(14, 14, 29, 5, 2000),
(15, 12, 29, 5, 300),
(16, 14, 30, 5, 2000),
(17, 12, 30, 5, 300),
(18, 14, 31, 5, 2000),
(19, 12, 31, 5, 300),
(20, 14, 32, 5, 2000),
(21, 12, 32, 5, 300),
(22, 14, 33, 5, 2000),
(23, 12, 33, 5, 300),
(24, 14, 34, 5, 2000),
(25, 12, 34, 5, 300),
(26, 14, 35, 5, 2000),
(27, 12, 35, 5, 300),
(28, 14, 36, 5, 2000),
(29, 12, 36, 5, 300),
(30, 14, 37, 5, 2000),
(31, 12, 37, 5, 300),
(32, 14, 38, 5, 2000),
(33, 12, 38, 4, 300),
(34, 14, 39, 5, 2000),
(35, 12, 39, 4, 300),
(36, 14, 40, 5, 2000),
(37, 12, 40, 4, 300),
(38, 14, 41, 5, 2000),
(39, 12, 41, 4, 300),
(40, 14, 42, 5, 2000),
(41, 12, 42, 4, 300),
(42, 14, 43, 5, 2000),
(43, 12, 43, 4, 300),
(44, 14, 44, 5, 2000),
(45, 12, 44, 8, 300),
(46, 14, 45, 5, 2000),
(47, 12, 45, 8, 300),
(48, 14, 46, 5, 2000),
(49, 12, 46, 8, 300),
(50, 14, 47, 5, 2000),
(51, 12, 47, 8, 300),
(52, 14, 48, 10, 2000),
(53, 15, 49, 20, 3500),
(54, 16, 49, 5, 1000),
(55, 14, 49, 77, 2000),
(56, 16, 54, 20, 1000),
(57, 15, 54, 5, 3500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle_venta`, `id_producto`, `id_venta`, `cantidad`, `precio_unitario`) VALUES
(7, 14, 10, 200, 2000),
(8, 16, 10, 200, 1000),
(9, 14, 11, 200, 2000),
(10, 16, 11, 200, 1000),
(11, 15, 11, 200, 3500),
(12, 14, 12, 123, 2000),
(13, 16, 12, 234, 1000),
(14, 14, 13, 200, 2000),
(15, 16, 13, 200, 1000),
(16, 12, 13, 200, 300),
(17, 14, 14, 300, 2000),
(18, 16, 14, 300, 1000),
(19, 15, 15, 44, 3500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_usuario_documento` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL,
  `precio_total` float NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_usuario_documento`, `tipo`, `fecha_registro`, `precio_total`, `estado`, `fecha_entrega`) VALUES
(1, 11111, 'cotizacion', '2022-09-16', 20000, 1, '2022-09-17'),
(2, 11111, 'Cotizacion', '2022-09-16', 1500, 1, '2022-09-17'),
(3, 11111, 'Cotizacion', '2022-09-16', 2000, 1, '2022-09-17'),
(4, 11111, 'Cotizacion', '2022-09-16', 3500, 1, '2022-09-17'),
(5, 11111, 'Cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(6, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(7, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(8, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(9, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(10, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(11, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(12, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(13, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(14, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(15, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(16, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(17, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(18, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(19, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(20, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(21, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(22, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(23, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(24, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(25, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(26, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(27, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(28, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(29, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(30, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(31, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(32, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(33, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(34, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(35, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(36, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(37, 11111, 'cotizacion', '2022-09-16', 11500, 1, '2022-09-17'),
(38, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(39, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(40, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(41, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(42, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(43, 11111, 'cotizacion', '2022-09-16', 11200, 1, '2022-09-17'),
(44, 11111, 'cotizacion', '2022-09-16', 12400, 1, '2022-09-17'),
(45, 11111, 'cotizacion', '2022-09-16', 12400, 1, '2022-09-17'),
(46, 11111, 'cotizacion', '2022-09-16', 12400, 1, '2022-09-17'),
(47, 11111, 'cotizacion', '2022-09-16', 12400, 1, '2022-09-17'),
(48, 11111, 'cotizacion', '2022-09-17', 20000, 1, '2022-09-17'),
(49, 11111, 'cotizacion', '2022-09-20', 229000, 1, '2022-09-17'),
(50, 1122, 'pedido', '2022-09-29', 37500, 1, '2022-09-29'),
(51, 1122, 'pedido', '2022-09-29', 37500, 1, '2022-10-30'),
(52, 1122, 'pedido', '2022-09-29', 37500, 1, '2022-09-30'),
(53, 1122, 'pedido', '2022-09-29', 37500, 1, '2022-09-30'),
(54, 1122, 'pedido', '2022-09-29', 37500, 1, '2022-09-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `modulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`, `modulo`) VALUES
(2, 'Editar Cocacola', 'Usuarios'),
(3, 'Crear Usuario', 'Usuarios'),
(4, 'Crear venta', 'Ventas'),
(5, 'Editar pedido', 'Pedidos'),
(6, 'Crear Pedido', 'Pedidos'),
(8, 'Editar Venta', 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagen` varchar(1000) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `categoria`, `imagen`, `estado`) VALUES
(12, 'Pan de leche', 300, 4, 'https://cdn-icons-png.flaticon.com/512/883/883561.png', 1),
(14, 'Coca Cola', 2000, 3, 'https://cdn-icons-png.flaticon.com/512/2405/2405447.png', 1),
(15, 'Arepa de huevo', 3500, 5, 'https://cdn-icons-png.flaticon.com/512/6724/6724574.png', 1),
(16, 'Buñuelos', 1000, 6, 'https://cdn-icons-png.flaticon.com/512/6313/6313568.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `estado`) VALUES
(1, 'admin', 1),
(3, 'cliente', 1),
(4, 'secretaria', 1),
(5, 'dvzdv', 1),
(6, 'otroRol', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_permisos`
--

CREATE TABLE `rol_permisos` (
  `id` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_permisos`
--

INSERT INTO `rol_permisos` (`id`, `id_rol`, `id_permiso`) VALUES
(1, 1, 2),
(2, 4, 4),
(3, 3, 5),
(4, 3, 4),
(5, 4, 2),
(6, 6, 3),
(7, 6, 4),
(8, 6, 8),
(9, 6, 6),
(10, 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `rol` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `phone`, `rol`) VALUES
(999, 'JuanDi', 'Arteaga', 'juandi@email.com', '$2b$10$tjcfi7NPcZm.t/nUf5nAV.imBx8vmp9/Uz.Euqbx0Kbmc9Y./69w.', '123', 1),
(1122, 'carlos', 'gonzalez', 'carlos@email.com', '$2b$10$xWZemZwYF6mfv8c6yOqvjuhM1gOfXUJx9oLsfmKRzHH069DsnvZMq', '1478', 3),
(123321, 'daniel', 'peñita', 'jdps106@hotmail.com', '$2b$10$W6TF0IH.0X1bMrb35TCHtugHIBjMEnBG6jXbTAoB4Tolr1NeApLSe', '4445565', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_local`
--

CREATE TABLE `venta_local` (
  `id_venta` int(11) NOT NULL,
  `id_cliente_documento` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `precio_total` float NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta_local`
--

INSERT INTO `venta_local` (`id_venta`, `id_cliente_documento`, `fecha_registro`, `precio_total`, `estado`) VALUES
(10, 1313, '2022-09-28', 600000, 1),
(11, 2147483647, '2022-09-28', 1300000, 1),
(12, 888, '2022-09-28', 480000, 1),
(13, 8888888, '2022-09-28', 660000, 1),
(14, 777, '2022-09-28', 900000, 1),
(15, 1112221, '2022-09-28', 154000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes_informativos`
--
ALTER TABLE `clientes_informativos`
  ADD PRIMARY KEY (`id_cliente_documento`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_detalle_pedido`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle_venta`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_permisos`
--
ALTER TABLE `rol_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta_local`
--
ALTER TABLE `venta_local`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes_informativos`
--
ALTER TABLE `clientes_informativos`
  MODIFY `id_cliente_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id_detalle_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rol_permisos`
--
ALTER TABLE `rol_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta_local`
--
ALTER TABLE `venta_local`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
