-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql201.byetcluster.com
-- Tiempo de generación: 02-04-2020 a las 20:10:28
-- Versión del servidor: 5.6.45-86.1
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `b17_25223218_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `AdminDNI` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminNombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminApellido` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `AdminDNI`, `AdminNombre`, `AdminApellido`, `AdminTelefono`, `AdminDireccion`, `CuentaCodigo`) VALUES
(3, '27340164', 'Luis', 'Alarcon', '+584242282602', 'Caracas, Caricuao', 'AC51408881'),
(4, '10397765', 'Luis', 'Alarcon', '04242282602', 'Caracas, Caricuao', 'AC89135562'),
(8, '25340164', 'Vanessa Carolina', 'BriceÃ±o', '04242282602', 'Caracas, Caricuao', 'AC89438716');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id` int(10) NOT NULL,
  `BitacoraCodigo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraFecha` date NOT NULL,
  `BitacoraHoraInicio` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraHoraFinal` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraTipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraYear` int(4) NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id`, `BitacoraCodigo`, `BitacoraFecha`, `BitacoraHoraInicio`, `BitacoraHoraFinal`, `BitacoraTipo`, `BitacoraYear`, `CuentaCodigo`) VALUES
(17, 'CB70986061', '2020-02-23', '04:50:00 pm', '04:50:14 pm', 'Administrador', 2020, 'AC51408881'),
(18, 'CB37519022', '2020-02-23', '04:52:40 pm', '08:30:31 pm', 'Administrador', 2020, 'AC51408881'),
(30, 'CB886571912', '2020-02-24', '03:19:06 pm', 'sin registro', 'Administrador', 2020, 'AC89438716'),
(20, 'CB12069394', '2020-02-23', '08:32:17 pm', '08:34:20 pm', 'Administrador', 2020, 'AC51408881'),
(31, 'CB622011913', '2020-02-25', '05:58:15 pm', 'sin registro', 'Administrador', 2020, 'AC89438716'),
(22, 'CB55127876', '2020-02-23', '08:34:56 pm', 'sin registro', 'Administrador', 2020, 'AC51408881'),
(23, 'CB24585717', '2020-02-23', '09:24:03 pm', '09:24:44 pm', 'Administrador', 2020, 'AC51408881'),
(24, 'CB08722748', '2020-02-23', '09:24:52 pm', 'sin registro', 'Administrador', 2020, 'AC51408881'),
(25, 'CB39483439', '2020-02-23', '09:38:03 pm', 'sin registro', 'Administrador', 2020, 'AC51408881'),
(26, 'CB677118210', '2020-02-23', '09:42:51 pm', 'sin registro', 'Administrador', 2020, 'AC51408881'),
(27, 'CB990860111', '2020-02-24', '01:02:59 am', 'sin registro', 'Administrador', 2020, 'AC89438716'),
(28, 'CB578767512', '2020-02-24', '01:07:29 am', 'sin registro', 'Administrador', 2020, 'AC89438716'),
(29, 'CB719525413', '2020-02-24', '01:14:31 am', 'sin registro', 'Administrador', 2020, 'AC51408881'),
(32, 'CB940503114', '2020-02-25', '08:26:41 pm', 'sin registro', 'Administrador', 2020, 'AC51408881');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `CategoriaCodigo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `CategoriaNombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(10) NOT NULL,
  `ClienteDNI` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteNombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteApellido` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteOcupacion` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(10) NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaPrivilegio` int(1) NOT NULL,
  `CuentaUsuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaClave` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaEmail` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaEstado` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaTipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaGenero` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaFoto` varchar(535) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id`, `CuentaCodigo`, `CuentaPrivilegio`, `CuentaUsuario`, `CuentaClave`, `CuentaEmail`, `CuentaEstado`, `CuentaTipo`, `CuentaGenero`, `CuentaFoto`) VALUES
(3, 'AC51408881', 1, 'alfonso2254', 'TlBRQTJEcTE4YXA2cDJUbGJSVFd0dz09', 'alfonso22542254@gmail.com', 'Activo', 'Administrador', 'Masculino', 'Male3Avatar.png'),
(4, 'AC89135562', 1, 'alberto', 'TlBRQTJEcTE4YXA2cDJUbGJSVFd0dz09', 'alberto@gmail.com', 'Activo', 'Administrador', 'Masculino', 'Male3Avatar.png'),
(8, 'AC89438716', 1, 'vanessa', 'bXpBWXVyTDZSc2NTQXdPdlZwZmNZUT09', 'vanessa@gmail.com', 'Activo', 'Administrador', 'Femenino', 'vanessa.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(10) NOT NULL,
  `EmpresaCodigo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaNombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaEmail` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaDirector` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaMoneda` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaYear` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(10) NOT NULL,
  `LibroCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroTitulo` varchar(170) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroAutor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroPais` int(50) NOT NULL,
  `LibroYear` int(4) NOT NULL,
  `LibroEditorial` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroEdicion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroPrecio` decimal(30,2) NOT NULL,
  `LibroStock` int(5) NOT NULL,
  `LibroUbicacion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroResumen` text COLLATE utf8_spanish2_ci NOT NULL,
  `LibroImagen` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroPDF` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroDescarga` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `CategoriaCodigo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaCodigo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(10) NOT NULL,
  `ProveedorCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorNombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorResponsable` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorEmail` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CategoriaCodigo` (`CategoriaCodigo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmpresaCodigo` (`EmpresaCodigo`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `LibroCodigo` (`LibroCodigo`),
  ADD KEY `CategoriaCodigo` (`CategoriaCodigo`),
  ADD KEY `ProveedorCodigo` (`ProveedorCodigo`),
  ADD KEY `EmpresaCodigo` (`EmpresaCodigo`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ProveedorCodigo` (`ProveedorCodigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
