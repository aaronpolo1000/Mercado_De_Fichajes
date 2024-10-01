-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2024 a las 02:19:42
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
-- Base de datos: `testeo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `precio`) VALUES
(1, 'pilates', 50),
(2, 'esgrima', 100),
(3, 'natación', 70),
(4, 'ajedrez', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_socios`
--

CREATE TABLE `actividad_socios` (
  `id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `estadio` varchar(100) DEFAULT NULL,
  `año_fundacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `ciudad`, `estadio`, `año_fundacion`) VALUES
(1, 'Boca Juniors', 'Buenos Aires', 'La Bombonera', 1905),
(2, 'River Plate', 'Buenos Aires', 'El Monumental', 1901),
(3, 'Racing Club', 'Avellaneda', 'El Cilindro', 1903),
(4, 'San Lorenzo', 'Buenos Aires', 'Pedro Bidegain', 1908),
(5, 'Independiente', 'Avellaneda', 'Libertadores de América', 1905),
(6, 'Huracán', 'Buenos Aires', 'Tomás Adolfo Ducó', 1908),
(7, 'Barracas Central', 'Buenos Aires', 'Estadio Claudio Chiqui Tapia', 1904),
(8, 'Vélez Sarsfield', 'Buenos Aires', 'José Amalfitani', 1910),
(9, 'Estudiantes', 'La Plata', 'Jorge Luis Hirschi', 1905),
(10, 'Atlético Tucumán', 'San Miguel de Tucumán', 'José Fierro', 1902),
(11, 'Talleres', 'Córdoba', 'Estadio Mario Alberto Kempes', 1913),
(12, 'Belgrano', 'Córdoba', 'Estadio Julio César Villagra', 1905),
(13, 'Colón', 'Santa Fe', 'Estadio Brigadier General Estanislao López', 1905),
(14, 'Unión', 'Santa Fe', 'Estadio 15 de Abril', 1907),
(15, 'Platense', 'Buenos Aires', 'Estadio Ciudad de Vicente López', 1905),
(16, 'Sarmiento', 'Junín', 'Estadio Eva Perón', 1911),
(17, 'Gimnasia', 'La Plata', 'Juan Carmelo Zerillo', 1887),
(18, 'Central Córdoba', 'Santiago del Estero', 'Estadio Alfredo Terrera', 1911),
(19, 'Tigre', 'Victoria', 'Estadio José Dellagiovanna', 1902),
(20, 'Godoy Cruz', 'Mendoza', 'Estadio Malvinas Argentinas', 1921),
(21, 'Newell\'s Old Boys', 'Rosario', 'Estadio Marcelo Bielsa', 1903),
(22, 'Rosario Central', 'Rosario', 'Estadio Gigante de Arroyito', 1926),
(23, 'Defensa y Justicia', 'Florencio Varela', 'Estadio Norberto Tomaghello', 1935),
(24, 'Lanús', 'Lanús', 'Estadio Ciudad de Lanús', 1922),
(25, 'Arsenal', 'Sarandí', 'Estadio Julio Humberto Grondona', 1957),
(26, 'Instituto', 'Córdoba', 'Estadio Presidente Perón', 1918),
(27, 'Banfield', 'Banfield', 'Estadio Florencio Sola', 1940),
(28, 'Argentinos Juniors', 'Buenos Aires', 'Estadio Diego Armando Maradona', 1904);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `posicion` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `valor_mercado` double NOT NULL,
  `contrato_hasta` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `posicion`, `edad`, `nacionalidad`, `valor_mercado`, `contrato_hasta`, `club_id`) VALUES
(1, 'Darío Benedetto', 'Delantero', 33, 'Argentina', 5000000, 2024, 1),
(2, 'Cristian Medina', 'Centrocampista', 22, 'Argentina', 3500000, 2026, 1),
(3, 'Carlos Izquierdoz', 'Defensa', 34, 'Argentina', 3000000, 2023, 1),
(4, 'Frank Fabra', 'Defensa', 30, 'Colombia', 2500000, 2024, 1),
(5, 'Marcos Rojo', 'Defensa', 33, 'Argentina', 4000000, 2023, 1),
(6, 'Agustín Rossi', 'Portero', 27, 'Argentina', 2000000, 2024, 1),
(7, 'Juan Ramírez', 'Centrocampista', 29, 'Argentina', 3000000, 2025, 1),
(8, 'Luis Advíncula', 'Defensa', 32, 'Perú', 2000000, 2024, 1),
(9, 'Exequiel Zeballos', 'Delantero', 21, 'Argentina', 1500000, 2025, 1),
(10, 'Ezequiel Bullaude', 'Centrocampista', 22, 'Argentina', 3500000, 2026, 1),
(11, 'Nicolás Figal', 'Defensa', 28, 'Argentina', 3000000, 2024, 1),
(12, 'Jorman Campuzano', 'Centrocampista', 28, 'Colombia', 2500000, 2023, 1),
(13, 'Norberto Briasco', 'Delantero', 27, 'Argentina', 2500000, 2024, 1),
(14, 'Agustín Almendra', 'Centrocampista', 23, 'Argentina', 4000000, 2026, 1),
(15, 'Sergio Romero', 'Portero', 36, 'Argentina', 2000000, 2024, 1),
(16, 'Luis Vázquez', 'Delantero', 22, 'Argentina', 2000000, 2026, 1),
(17, 'Alan Varela', 'Centrocampista', 21, 'Argentina', 2500000, 2025, 1),
(18, 'Nicolás Valentini', 'Defensa', 25, 'Argentina', 1800000, 2024, 1),
(19, 'Valentín Barco', 'Defensa', 19, 'Argentina', 2000000, 2026, 1),
(20, 'Cristian Medina', 'Centrocampista', 22, 'Argentina', 3500000, 2026, 1),
(21, 'Franco Armani', 'Portero', 36, 'Argentina', 3000000, 2023, 2),
(22, 'Gonzalo Montiel', 'Defensa', 26, 'Argentina', 5000000, 2023, 2),
(23, 'Paulo Díaz', 'Defensa', 28, 'Chile', 4000000, 2024, 2),
(24, 'Héctor David Martínez', 'Defensa', 25, 'Argentina', 2000000, 2024, 2),
(25, 'Ezequiel Barco', 'Medio', 24, 'Argentina', 6000000, 2025, 2),
(26, 'Enzo Pérez', 'Medio', 37, 'Argentina', 1500000, 2023, 2),
(27, 'Ignacio Fernández', 'Medio', 33, 'Argentina', 3500000, 2023, 2),
(28, 'Lucas Pratto', 'Delantero', 35, 'Argentina', 4000000, 2023, 2),
(29, 'Miguel Borja', 'Delantero', 30, 'Colombia', 8000000, 2025, 2),
(30, 'Matías Suárez', 'Delantero', 35, 'Argentina', 3000000, 2023, 2),
(31, 'Matías Kranevitter', 'Medio', 30, 'Argentina', 2500000, 2024, 2),
(32, 'Agustín Palavecino', 'Medio', 26, 'Argentina', 2500000, 2024, 2),
(33, 'Nicolás De la Cruz', 'Medio', 26, 'Uruguay', 7000000, 2025, 2),
(34, 'Bruno Zuculini', 'Medio', 30, 'Argentina', 1500000, 2024, 2),
(35, 'Rafael Borré', 'Delantero', 28, 'Colombia', 10000000, 2023, 2),
(36, 'Javier Pinola', 'Defensa', 40, 'Argentina', 1000000, 2023, 2),
(37, 'Ezequiel Centurión', 'Portero', 24, 'Argentina', 500000, 2025, 2),
(38, 'Franco Facundo', 'Delantero', 22, 'Argentina', 1200000, 2024, 2),
(39, 'Lucas Martínez Quarta', 'Defensa', 27, 'Argentina', 4500000, 2023, 2),
(40, 'Salomón Rondón', 'Delantero', 34, 'Venezuela', 5000000, 2023, 2),
(41, 'Silvio Romero', 'Delantero', 33, 'Argentina', 2000000, 2023, 3),
(42, 'Lucas Rodríguez', 'Defensa', 29, 'Argentina', 1500000, 2023, 3),
(43, 'Alan Franco', 'Defensa', 26, 'Argentina', 1800000, 2023, 3),
(44, 'Domingo Blanco', 'Centrocampista', 27, 'Argentina', 1200000, 2023, 3),
(45, 'Sergio Barreto', 'Defensa', 25, 'Argentina', 1700000, 2023, 3),
(46, 'Martín Cauteruccio', 'Delantero', 35, 'Argentina', 800000, 2023, 3),
(47, 'Fabricio Bustos', 'Defensa', 27, 'Argentina', 2000000, 2023, 3),
(48, 'Nicolás Vallejo', 'Centrocampista', 22, 'Argentina', 600000, 2024, 3),
(49, 'Lucas González', 'Centrocampista', 24, 'Argentina', 900000, 2023, 3),
(50, 'Iván Marcone', 'Centrocampista', 32, 'Argentina', 1500000, 2024, 3),
(51, 'Ezequiel Muñoz', 'Defensa', 30, 'Argentina', 1000000, 2023, 3),
(52, 'Matías Giménez', 'Delantero', 28, 'Argentina', 750000, 2023, 3),
(53, 'Leandro Benegas', 'Delantero', 31, 'Argentina', 950000, 2023, 3),
(54, 'Martín Sarrafiore', 'Centrocampista', 25, 'Argentina', 800000, 2024, 3),
(55, 'Nicolás Figal', 'Defensa', 27, 'Argentina', 1200000, 2023, 3),
(56, 'Pablo Hernández', 'Centrocampista', 34, 'Argentina', 500000, 2023, 3),
(57, 'Gastón Silva', 'Defensa', 28, 'Uruguay', 1300000, 2023, 3),
(58, 'Lucas Pusineri', 'Entrenador', 43, 'Argentina', 0, 2024, 3),
(59, 'Joaquín Laso', 'Defensa', 26, 'Argentina', 700000, 2023, 3),
(60, 'Rodrigo Moledo', 'Defensa', 32, 'Argentina', 900000, 2023, 3),
(61, 'Alejandro Medina', 'Portero', 29, 'Argentina', 400000, 2023, 3),
(62, 'Gabriel Arias', 'Portero', 34, 'Argentina', 3000000, 2023, 4),
(63, 'Juan Fernando Quintero', 'Centrocampista', 29, 'Colombia', 5000000, 2024, 4),
(64, 'Leonardo Sigali', 'Defensa', 37, 'Argentina', 2500000, 2023, 4),
(65, 'Matías Rojas', 'Centrocampista', 27, 'Argentina', 4000000, 2024, 4),
(66, 'Aníbal Moreno', 'Centrocampista', 24, 'Argentina', 3500000, 2025, 4),
(67, 'Enzo Copetti', 'Delantero', 26, 'Argentina', 7000000, 2025, 4),
(68, 'Facundo Mura', 'Defensa', 27, 'Argentina', 2000000, 2024, 4),
(69, 'Nicolás Reniero', 'Delantero', 25, 'Argentina', 3000000, 2024, 4),
(70, 'Iván Pillud', 'Defensa', 37, 'Argentina', 1500000, 2023, 4),
(71, 'Darío Cvitanich', 'Delantero', 39, 'Argentina', 1000000, 2023, 4),
(72, 'Tobías Krahulec', 'Centrocampista', 22, 'Argentina', 800000, 2024, 4),
(73, 'Gabriel Hauche', 'Delantero', 36, 'Argentina', 1200000, 2023, 4),
(74, 'Juan Cazares', 'Centrocampista', 31, 'Ecuador', 2000000, 2024, 4),
(75, 'Agustín Almendra', 'Centrocampista', 23, 'Argentina', 3500000, 2025, 4),
(76, 'Tomás Chancalay', 'Delantero', 24, 'Argentina', 4000000, 2025, 4),
(77, 'Matías Medina', 'Defensa', 25, 'Argentina', 1500000, 2024, 4),
(78, 'Gonzalo Piovi', 'Defensa', 29, 'Argentina', 2000000, 2024, 4),
(79, 'Jonathan Gómez', 'Centrocampista', 28, 'Argentina', 1800000, 2023, 4),
(80, 'Maximiliano Romero', 'Delantero', 24, 'Argentina', 5000000, 2025, 4),
(81, 'Augusto Batalla', 'Portero', 27, 'Argentina', 1500000, 2023, 5),
(82, 'Gonzalo Luján', 'Defensa', 24, 'Argentina', 1200000, 2024, 5),
(83, 'Federico Gattoni', 'Defensa', 25, 'Argentina', 2500000, 2024, 5),
(84, 'Julián Palacios', 'Centrocampista', 23, 'Argentina', 1800000, 2024, 5),
(85, 'Nicolás Fernández', 'Delantero', 26, 'Argentina', 2000000, 2025, 5),
(86, 'Santiago Rodríguez', 'Centrocampista', 22, 'Uruguay', 1600000, 2024, 5),
(87, 'Adam Bareiro', 'Delantero', 28, 'Paraguay', 3000000, 2025, 5),
(88, 'Ezequiel Cerutti', 'Delantero', 30, 'Argentina', 1800000, 2024, 5),
(89, 'Mariano Peralta Bauer', 'Delantero', 23, 'Argentina', 900000, 2023, 5),
(90, 'Gonzalo Maroni', 'Centrocampista', 24, 'Argentina', 1700000, 2024, 5),
(91, 'Rafael Pérez', 'Defensa', 29, 'Colombia', 2000000, 2024, 5),
(92, 'Nahuel Barrios', 'Delantero', 25, 'Argentina', 3000000, 2025, 5),
(93, 'Lucas Chaves', 'Portero', 27, 'Argentino', 2000000, 2025, 6),
(94, 'Mariano González', 'Defensa', 30, 'Argentino', 1200000, 2024, 6),
(95, 'Nicolás Cordero', 'Defensa', 29, 'Argentino', 1800000, 2025, 6),
(96, 'Rodrigo González', 'Centrocampista', 26, 'Argentino', 2500000, 2026, 6),
(97, 'Matías Cóccaro', 'Delantero', 25, 'Argentino', 3000000, 2025, 6),
(98, 'Gonzalo Acevedo', 'Centrocampista', 24, 'Argentino', 1400000, 2024, 6),
(99, 'Nicolás Romat', 'Defensa', 27, 'Argentino', 1300000, 2025, 6),
(100, 'Juan Garro', 'Delantero', 28, 'Argentino', 1700000, 2024, 6),
(101, 'Joaquín Ibáñez', 'Portero', 24, 'Argentino', 1200000, 2026, 6),
(102, 'David Gallardo', 'Defensa', 29, 'Argentino', 1100000, 2025, 6),
(103, 'Lucas Martínez', 'Centrocampista', 26, 'Argentino', 2000000, 2024, 6),
(104, 'Franco Cristaldo', 'Delantero', 25, 'Argentino', 3500000, 2025, 6),
(105, 'Fernando García', 'Defensa', 32, 'Argentino', 900000, 2024, 6),
(106, 'Diego Rodríguez', 'Centrocampista', 28, 'Argentino', 1600000, 2025, 6),
(107, 'Cristian Tarragona', 'Delantero', 30, 'Argentino', 2200000, 2024, 6),
(108, 'Agustín Lazzaroni', 'Defensa', 27, 'Argentino', 1400000, 2025, 6),
(109, 'Ignacio Pussetto', 'Delantero', 29, 'Argentino', 3100000, 2026, 6),
(110, 'Joaquín Ibáñez', 'Defensa', 24, 'Argentino', 1300000, 2025, 6),
(111, 'Juan Pérez', 'Delantero', 24, 'Argentina', 1500000, 2024, 7),
(112, 'Lucas Martínez', 'Defensa', 26, 'Argentina', 1200000, 2023, 7),
(113, 'Santiago Gómez', 'Centrocampista', 28, 'Argentina', 1800000, 2025, 7),
(114, 'Facundo López', 'Delantero', 22, 'Argentina', 900000, 2024, 7),
(115, 'Matías Fernández', 'Defensa', 30, 'Argentina', 1100000, 2023, 7),
(116, 'Diego Torres', 'Centrocampista', 25, 'Argentina', 1400000, 2024, 7),
(117, 'Agustín Romero', 'Portero', 29, 'Argentina', 800000, 2023, 7),
(118, 'Javier Ruiz', 'Delantero', 23, 'Argentina', 950000, 2024, 7),
(119, 'Nicolás Suárez', 'Defensa', 27, 'Argentina', 1300000, 2025, 7),
(120, 'Ezequiel Díaz', 'Centrocampista', 24, 'Argentina', 1600000, 2023, 7),
(121, 'Pablo Sánchez', 'Defensa', 31, 'Argentina', 1100000, 2025, 7),
(122, 'Fernando Castillo', 'Delantero', 21, 'Argentina', 700000, 2024, 7),
(123, 'Carlos Martínez', 'Centrocampista', 29, 'Argentina', 1750000, 2023, 7),
(124, 'Gonzalo Herrera', 'Delantero', 25, 'Argentina', 1200000, 2025, 7),
(125, 'Ramiro Aguirre', 'Defensa', 28, 'Argentina', 900000, 2023, 7),
(126, 'Leandro Vargas', 'Centrocampista', 22, 'Argentina', 800000, 2024, 7),
(127, 'Cristian López', 'Defensa', 27, 'Argentina', 1300000, 2025, 7),
(128, 'Martín Castro', 'Delantero', 23, 'Argentina', 950000, 2023, 7),
(129, 'Maximiliano Torres', 'Centrocampista', 30, 'Argentina', 1400000, 2024, 7),
(130, 'Emiliano Díaz', 'Portero', 26, 'Argentina', 600000, 2023, 7),
(131, 'Alejandro Ríos', 'Delantero', 29, 'Argentina', 1250000, 2025, 7),
(132, 'Lucas Pratto', 'Delantero', 34, 'Argentina', 5000000, 2023, 8),
(133, 'Fernando Gago', 'Centrocampista', 36, 'Argentina', 3000000, 2023, 8),
(134, 'Gianetti', 'Defensa', 29, 'Argentina', 2500000, 2023, 8),
(135, 'Lucas Janson', 'Delantero', 27, 'Argentina', 4000000, 2023, 8),
(136, 'Santiago Castro', 'Centrocampista', 25, 'Argentina', 1500000, 2023, 8),
(137, 'Tomas Guidara', 'Defensa', 27, 'Argentina', 1800000, 2023, 8),
(138, 'Miguel Brizuela', 'Portero', 26, 'Argentina', 1200000, 2023, 8),
(139, 'Diego Godín', 'Defensa', 37, 'Uruguay', 2500000, 2023, 8),
(140, 'Lucas Robertone', 'Centrocampista', 27, 'Argentina', 3500000, 2023, 8),
(141, 'Ezequiel Bullaude', 'Centrocampista', 23, 'Argentina', 2000000, 2023, 8),
(142, 'Joaquín Ibáñez', 'Defensa', 22, 'Argentina', 1300000, 2023, 8),
(143, 'Nicolás Garayalde', 'Delantero', 20, 'Argentina', 800000, 2023, 8),
(144, 'Maximiliano Romero', 'Delantero', 25, 'Argentina', 3500000, 2023, 8),
(145, 'Tomas Sosa', 'Defensa', 24, 'Argentina', 1700000, 2023, 8),
(146, 'Luca Orellano', 'Centrocampista', 22, 'Argentina', 1400000, 2023, 8),
(147, 'Agustín Bouzat', 'Delantero', 29, 'Argentina', 1600000, 2023, 8),
(148, 'Matías De los Santos', 'Defensa', 28, 'Argentina', 2200000, 2023, 8),
(149, 'Cristian Tarragona', 'Delantero', 31, 'Argentina', 1800000, 2023, 8),
(150, 'Francisco Pizzini', 'Centrocampista', 26, 'Argentina', 2000000, 2023, 8),
(151, 'Brian Orosco', 'Defensa', 23, 'Argentina', 1100000, 2023, 8),
(152, 'Juan Pérez', 'Delantero', 25, 'Argentina', 1500000, 2024, 9),
(153, 'Lucas González', 'Centrocampista', 27, 'Argentina', 1200000, 2025, 9),
(154, 'Santiago López', 'Defensor', 23, 'Argentina', 900000, 2023, 9),
(155, 'Mateo Fernández', 'Delantero', 22, 'Argentina', 1800000, 2024, 9),
(156, 'Diego Morales', 'Portero', 30, 'Argentina', 600000, 2023, 9),
(157, 'Carlos Ruiz', 'Centrocampista', 26, 'Argentina', 1100000, 2025, 9),
(158, 'Javier Torres', 'Defensor', 24, 'Argentina', 800000, 2024, 9),
(159, 'Emiliano Díaz', 'Delantero', 29, 'Argentina', 1300000, 2024, 9),
(160, 'Fernando Álvarez', 'Centrocampista', 28, 'Argentina', 950000, 2025, 9),
(161, 'Gonzalo Jiménez', 'Defensor', 21, 'Argentina', 700000, 2023, 9),
(162, 'Nicolás Romero', 'Delantero', 22, 'Argentina', 1600000, 2024, 9),
(163, 'Martín Ríos', 'Centrocampista', 30, 'Argentina', 850000, 2023, 9),
(164, 'Pablo Martínez', 'Defensor', 26, 'Argentina', 950000, 2025, 9),
(165, 'Facundo Castro', 'Delantero', 23, 'Argentina', 1400000, 2024, 9),
(166, 'Ángel Suárez', 'Centrocampista', 28, 'Argentina', 700000, 2023, 9),
(167, 'Lucas Salas', 'Defensor', 24, 'Argentina', 600000, 2025, 9),
(168, 'Tomás Vega', 'Delantero', 29, 'Argentina', 1700000, 2024, 9),
(169, 'Agustín López', 'Centrocampista', 31, 'Argentina', 800000, 2023, 9),
(170, 'Sebastián Castro', 'Defensor', 22, 'Argentina', 750000, 2024, 9),
(171, 'Cristian Silva', 'Delantero', 24, 'Argentina', 1300000, 2025, 9),
(172, 'Cristian Lucchetti', 'Portero', 39, 'Argentina', 200000, 2023, 10),
(173, 'Tomás Cuello', 'Defensa', 24, 'Argentina', 300000, 2024, 10),
(174, 'Matías Catalán', 'Defensa', 30, 'Argentina', 500000, 2025, 10),
(175, 'Ramiro Carrera', 'Centrocampista', 27, 'Argentina', 600000, 2023, 10),
(176, 'Joaquín Ibáñez', 'Defensa', 26, 'Argentina', 250000, 2024, 10),
(177, 'Julián Fernández', 'Centrocampista', 29, 'Argentina', 400000, 2023, 10),
(178, 'Lucas Melano', 'Delantero', 28, 'Argentina', 350000, 2025, 10),
(179, 'Leandro Díaz', 'Delantero', 31, 'Argentina', 750000, 2024, 10),
(180, 'Diego Rodríguez', 'Defensa', 33, 'Argentina', 220000, 2023, 10),
(181, 'Matías Alustiza', 'Delantero', 36, 'Argentina', 400000, 2025, 10),
(182, 'Gonzalo Verón', 'Delantero', 30, 'Argentina', 450000, 2024, 10),
(183, 'Agustín Marchesín', 'Portero', 36, 'Argentina', 300000, 2023, 10),
(184, 'Cristian Barrios', 'Centrocampista', 25, 'Argentina', 280000, 2025, 10),
(185, 'Javier Toledo', 'Delantero', 29, 'Argentina', 320000, 2024, 10),
(186, 'Fernando Zuqui', 'Centrocampista', 30, 'Argentina', 450000, 2023, 10),
(187, 'Pablo De Blasis', 'Centrocampista', 35, 'Argentina', 400000, 2024, 10),
(188, 'Ramiro Funes Mori', 'Defensa', 32, 'Argentina', 600000, 2023, 10),
(189, 'Gonzalo Castellani', 'Centrocampista', 31, 'Argentina', 350000, 2024, 10),
(190, 'Sergio Ortiz', 'Defensa', 28, 'Argentina', 300000, 2025, 10),
(191, 'Lucas Melano', 'Delantero', 29, 'Argentina', 400000, 2023, 10),
(192, 'Nahuel Bustos', 'Delantero', 24, 'Argentina', 3000000, 2023, 11),
(193, 'Piero Hincapié', 'Defensor', 21, 'Ecuador', 5000000, 2024, 11),
(194, 'Enzo Díaz', 'Defensor', 28, 'Argentina', 2500000, 2023, 11),
(195, 'Rodrigo Garro', 'Centrocampista', 27, 'Argentina', 2000000, 2023, 11),
(196, 'Matías Catalán', 'Defensor', 29, 'Argentina', 1500000, 2023, 11),
(197, 'Diego Valoyes', 'Delantero', 26, 'Colombia', 4000000, 2023, 11),
(198, 'Gonzalo Bergessio', 'Delantero', 37, 'Uruguay', 800000, 2023, 11),
(199, 'Lucas Suárez', 'Centrocampista', 22, 'Argentina', 1200000, 2024, 11),
(200, 'Franco Fragapane', 'Delantero', 29, 'Argentina', 1700000, 2023, 11),
(201, 'Mauro Valiente', 'Centrocampista', 23, 'Argentina', 900000, 2024, 11),
(202, 'Alan Franco', 'Defensor', 25, 'Argentina', 3500000, 2024, 11),
(203, 'Juan Ramírez', 'Centrocampista', 27, 'Argentina', 3000000, 2023, 11),
(204, 'Carlos Auzqui', 'Delantero', 31, 'Argentina', 1300000, 2023, 11),
(205, 'Cristian Tarragona', 'Delantero', 30, 'Argentina', 2000000, 2023, 11),
(206, 'Pablo De Blasis', 'Centrocampista', 35, 'Argentina', 600000, 2023, 11),
(207, 'Dario Benedetto', 'Delantero', 32, 'Argentina', 4000000, 2023, 11),
(208, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 1000000, 2024, 11),
(209, 'Fernando Bersano', 'Defensor', 24, 'Argentina', 1100000, 2023, 11),
(210, 'Lucas Melano', 'Delantero', 29, 'Argentina', 800000, 2024, 11),
(211, 'Nicolás Rodríguez', 'Centrocampista', 21, 'Argentina', 850000, 2024, 11),
(212, 'Leonardo Godoy', 'Defensor', 28, 'Argentina', 1800000, 2023, 11),
(213, 'Pablo Vegetti', 'Delantero', 33, 'Argentina', 1200000, 2024, 12),
(214, 'Lucas Di Yorio', 'Delantero', 28, 'Argentina', 800000, 2023, 12),
(215, 'Pablo De Blasis', 'Centrocampista', 34, 'Argentina', 600000, 2023, 12),
(216, 'Alejandro Maciel', 'Defensa', 30, 'Argentina', 500000, 2023, 12),
(217, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 300000, 2024, 12),
(218, 'Gonzalo Luján', 'Defensa', 29, 'Argentina', 400000, 2023, 12),
(219, 'Bruno Zuculini', 'Centrocampista', 30, 'Argentina', 900000, 2024, 12),
(220, 'Franco Negri', 'Defensa', 25, 'Argentina', 250000, 2023, 12),
(221, 'Facundo Sández', 'Centrocampista', 27, 'Argentina', 700000, 2024, 12),
(222, 'Joaquín Susvielles', 'Delantero', 29, 'Argentina', 550000, 2023, 12),
(223, 'Nicolás Mazzola', 'Delantero', 32, 'Argentina', 450000, 2024, 12),
(224, 'Gonzalo Marinelli', 'Portero', 28, 'Argentina', 300000, 2024, 12),
(225, 'Eric Remedi', 'Centrocampista', 26, 'Argentina', 650000, 2023, 12),
(226, 'Martín Cauteruccio', 'Delantero', 35, 'Argentina', 800000, 2023, 12),
(227, 'Juan Barinaga', 'Defensa', 31, 'Argentina', 400000, 2024, 12),
(228, 'Federico Lértora', 'Centrocampista', 34, 'Argentina', 700000, 2023, 12),
(229, 'Sebastián Luna', 'Defensa', 29, 'Argentina', 300000, 2024, 12),
(230, 'Damián Ledesma', 'Centrocampista', 32, 'Argentina', 350000, 2023, 12),
(231, 'Maximiliano Comba', 'Delantero', 28, 'Argentina', 450000, 2023, 12),
(232, 'Gabriel Graciani', 'Centrocampista', 29, 'Argentina', 600000, 2024, 12),
(233, 'Gonzalo Montiel', 'Defensa', 26, 'Argentina', 3500000, 2024, 13),
(234, 'Fernando Zuqui', 'Centrocampista', 30, 'Argentina', 1500000, 2023, 13),
(235, 'Cristian Bernardi', 'Centrocampista', 32, 'Argentina', 800000, 2024, 13),
(236, 'Gonzalo Escobar', 'Defensa', 28, 'Argentina', 900000, 2023, 13),
(237, 'Rodrigo Aliendro', 'Centrocampista', 29, 'Argentina', 2200000, 2024, 13),
(238, 'Wilfredo Olivera', 'Defensa', 25, 'Argentina', 600000, 2023, 13),
(239, 'Diego Rodríguez', 'Portero', 31, 'Uruguay', 500000, 2024, 13),
(240, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 300000, 2023, 13),
(241, 'Cristian Vega', 'Centrocampista', 30, 'Argentina', 700000, 2024, 13),
(242, 'Lucas Martínez', 'Delantero', 27, 'Argentina', 800000, 2023, 13),
(243, 'Gonzalo Rivas', 'Defensa', 24, 'Argentina', 400000, 2023, 13),
(244, 'Fabián Angel', 'Defensa', 22, 'Colombia', 500000, 2024, 13),
(245, 'Yamil Romero', 'Centrocampista', 29, 'Argentina', 600000, 2023, 13),
(246, 'Pablo Vegetti', 'Delantero', 33, 'Argentina', 1200000, 2024, 13),
(247, 'Alejandro Valdés', 'Delantero', 26, 'Argentina', 900000, 2023, 13),
(248, 'Matías Gómez', 'Centrocampista', 28, 'Argentina', 450000, 2024, 13),
(249, 'Enzo Kalinski', 'Centrocampista', 32, 'Argentina', 700000, 2023, 13),
(250, 'Bruno Rodríguez', 'Defensa', 29, 'Argentina', 300000, 2024, 13),
(251, 'Lucas García', 'Delantero', 25, 'Argentina', 600000, 2023, 13),
(252, 'Gonzalo Pérez', 'Defensa', 31, 'Argentina', 500000, 2024, 13),
(253, 'Santiago Pierotti', 'Delantero', 22, 'Argentina', 400000, 2023, 13),
(254, 'Gonzalo Acevedo', 'Portero', 28, 'Argentina', 600000, 2024, 14),
(255, 'Bruno Zuculini', 'Centrocampista', 30, 'Argentina', 1200000, 2023, 14),
(256, 'Nicolás Cordero', 'Delantero', 27, 'Argentina', 800000, 2024, 14),
(257, 'Lucas Esquivel', 'Defensa', 29, 'Argentina', 700000, 2023, 14),
(258, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 350000, 2024, 14),
(259, 'Diego Polenta', 'Defensa', 31, 'Uruguay', 900000, 2023, 14),
(260, 'Joaquín Papaleo', 'Portero', 27, 'Argentina', 300000, 2024, 14),
(261, 'Enzo Roldán', 'Centrocampista', 25, 'Argentina', 400000, 2023, 14),
(262, 'Mauro Luna Diale', 'Delantero', 23, 'Argentina', 500000, 2024, 14),
(263, 'Gonzalo García', 'Defensa', 26, 'Argentina', 550000, 2023, 14),
(264, 'Javier Toledo', 'Delantero', 32, 'Argentina', 600000, 2024, 14),
(265, 'Gabriel Graciani', 'Centrocampista', 29, 'Argentina', 750000, 2023, 14),
(266, 'Lucas Martínez', 'Defensa', 28, 'Argentina', 450000, 2024, 14),
(267, 'Maximiliano Cuadra', 'Delantero', 30, 'Argentina', 800000, 2023, 14),
(268, 'Brian Fernández', 'Delantero', 28, 'Argentina', 950000, 2024, 14),
(269, 'Francisco González', 'Defensa', 24, 'Argentina', 300000, 2023, 14),
(270, 'Joaquín Galarza', 'Centrocampista', 26, 'Argentina', 600000, 2024, 14),
(271, 'Sebastián Ribas', 'Delantero', 34, 'Uruguay', 500000, 2023, 14),
(272, 'Facundo Garcés', 'Defensa', 29, 'Argentina', 800000, 2024, 14),
(273, 'Matías Gallegos', 'Centrocampista', 22, 'Argentina', 350000, 2023, 14),
(274, 'Nicolás Distaulo', 'Delantero', 25, 'Argentina', 400000, 2024, 14),
(275, 'Rodrigo Contreras', 'Delantero', 27, 'Argentina', 800000, 2024, 15),
(276, 'Matías Tissera', 'Delantero', 29, 'Argentina', 600000, 2023, 15),
(277, 'Ezequiel Munoz', 'Defensa', 31, 'Argentina', 900000, 2023, 15),
(278, 'Nicolás Servetto', 'Centrocampista', 28, 'Argentina', 700000, 2024, 15),
(279, 'Cristian Tarragona', 'Delantero', 30, 'Argentina', 750000, 2024, 15),
(280, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 350000, 2023, 15),
(281, 'Fernando González', 'Centrocampista', 24, 'Argentina', 400000, 2024, 15),
(282, 'Brian Mansilla', 'Defensa', 29, 'Argentina', 600000, 2023, 15),
(283, 'Pablo Ledesma', 'Centrocampista', 36, 'Argentina', 500000, 2023, 15),
(284, 'Lucas Vera', 'Centrocampista', 25, 'Argentina', 450000, 2024, 15),
(285, 'Gonzalo Asis', 'Defensa', 28, 'Argentina', 550000, 2023, 15),
(286, 'Agustín Sosa', 'Defensa', 22, 'Argentina', 300000, 2024, 15),
(287, 'Matías Pérez García', 'Centrocampista', 34, 'Argentina', 700000, 2023, 15),
(288, 'Joaquín Ibáñez', 'Portero', 27, 'Argentina', 250000, 2024, 15),
(289, 'Franco Baldassarra', 'Defensa', 30, 'Argentina', 500000, 2023, 15),
(290, 'Nicolás Servetto', 'Delantero', 27, 'Argentina', 650000, 2023, 15),
(291, 'Mauro Bogado', 'Centrocampista', 32, 'Argentina', 400000, 2024, 15),
(292, 'Fabián Ruiz', 'Delantero', 26, 'Argentina', 300000, 2023, 15),
(293, 'Agustín Ocampo', 'Defensa', 24, 'Argentina', 350000, 2024, 15),
(294, 'Emmanuel Culio', 'Centrocampista', 35, 'Argentina', 500000, 2023, 15),
(295, 'Fernando González', 'Portero', 28, 'Argentina', 600000, 2024, 16),
(296, 'Diego Martínez', 'Defensa', 29, 'Argentina', 800000, 2023, 16),
(297, 'Gonzalo Berón', 'Defensa', 30, 'Argentina', 700000, 2023, 16),
(298, 'Nicolás Bazzana', 'Centrocampista', 26, 'Argentina', 500000, 2024, 16),
(299, 'Cristian Llama', 'Delantero', 32, 'Argentina', 850000, 2023, 16),
(300, 'Jonathan Torres', 'Delantero', 25, 'Argentina', 650000, 2024, 16),
(301, 'Ezequiel Bullaude', 'Centrocampista', 24, 'Argentina', 900000, 2023, 16),
(302, 'Lucas Melano', 'Delantero', 30, 'Argentina', 750000, 2024, 16),
(303, 'Agustín Quiroz', 'Defensa', 27, 'Argentina', 400000, 2023, 16),
(304, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 300000, 2024, 16),
(305, 'Facundo Sava', 'Centrocampista', 31, 'Argentina', 600000, 2023, 16),
(306, 'Carlos Arce', 'Defensa', 28, 'Argentina', 550000, 2024, 16),
(307, 'Mauro Pitton', 'Centrocampista', 29, 'Argentina', 700000, 2023, 16),
(308, 'Matías Moya', 'Delantero', 23, 'Argentina', 400000, 2024, 16),
(309, 'Juan Carlos Pochi', 'Defensa', 33, 'Argentina', 500000, 2023, 16),
(310, 'Enzo Kalinski', 'Centrocampista', 30, 'Argentina', 800000, 2024, 16),
(311, 'Gabriel Graciani', 'Delantero', 26, 'Argentina', 600000, 2023, 16),
(312, 'Agustín Cardozo', 'Defensa', 25, 'Argentina', 350000, 2024, 16),
(313, 'Nicolás Rodríguez', 'Centrocampista', 28, 'Argentina', 450000, 2023, 16),
(314, 'Brian Fernández', 'Delantero', 29, 'Argentina', 900000, 2024, 16),
(315, 'Lucas Martínez', 'Centrocampista', 24, 'Argentina', 300000, 2023, 16),
(316, 'Mariano Andújar', 'Portero', 39, 'Argentina', 500000, 2024, 17),
(317, 'Leonardo Morales', 'Defensa', 28, 'Argentina', 600000, 2023, 17),
(318, 'Eric Ramírez', 'Delantero', 27, 'Argentina', 700000, 2024, 17),
(319, 'Matías Pérez García', 'Centrocampista', 35, 'Argentina', 800000, 2023, 17),
(320, 'Nicolás Colazo', 'Defensa', 31, 'Argentina', 550000, 2024, 17),
(321, 'Cristian Tarragona', 'Delantero', 30, 'Argentina', 600000, 2023, 17),
(322, 'Franco Soldano', 'Delantero', 28, 'Argentina', 750000, 2024, 17),
(323, 'Gabriel Graciani', 'Centrocampista', 29, 'Argentina', 700000, 2023, 17),
(324, 'Fabián Rinaudo', 'Centrocampista', 36, 'Argentina', 400000, 2024, 17),
(325, 'Agustín Sosa', 'Defensa', 25, 'Argentina', 350000, 2023, 17),
(326, 'Matías Miranda', 'Centrocampista', 23, 'Argentina', 300000, 2024, 17),
(327, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 250000, 2023, 17),
(328, 'Pablo De Blasis', 'Centrocampista', 34, 'Argentina', 600000, 2024, 17),
(329, 'Diego Rodríguez', 'Defensa', 30, 'Argentina', 500000, 2023, 17),
(330, 'Nicolás Mazzola', 'Delantero', 32, 'Argentina', 450000, 2024, 17),
(331, 'Lucas Licht', 'Defensa', 39, 'Argentina', 400000, 2023, 17),
(332, 'Javier Toledo', 'Delantero', 31, 'Argentina', 350000, 2024, 17),
(333, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 300000, 2023, 17),
(334, 'Enzo Kalinski', 'Centrocampista', 29, 'Argentina', 500000, 2024, 17),
(335, 'Sebastián Romero', 'Defensa', 27, 'Argentina', 600000, 2023, 17),
(336, 'Matías Pérez', 'Delantero', 24, 'Argentina', 350000, 2024, 17),
(337, 'Gonzalo Mazzon', 'Portero', 28, 'Argentina', 600000, 2024, 18),
(338, 'Franco Sosa', 'Defensa', 30, 'Argentina', 500000, 2023, 18),
(339, 'Diego Rodríguez', 'Centrocampista', 31, 'Argentina', 700000, 2024, 18),
(340, 'Cristian Vega', 'Centrocampista', 27, 'Argentina', 550000, 2023, 18),
(341, 'Matías Ramírez', 'Delantero', 26, 'Argentina', 800000, 2024, 18),
(342, 'Lucas Melano', 'Delantero', 29, 'Argentina', 650000, 2023, 18),
(343, 'Nicolás Colazo', 'Defensa', 32, 'Argentina', 700000, 2024, 18),
(344, 'Ezequiel Bullaude', 'Centrocampista', 24, 'Argentina', 900000, 2023, 18),
(345, 'Sebastián Lomónaco', 'Delantero', 25, 'Argentina', 400000, 2024, 18),
(346, 'Joaquín Ibáñez', 'Portero', 27, 'Argentina', 300000, 2023, 18),
(347, 'Agustín Koldobsky', 'Defensa', 28, 'Argentina', 600000, 2024, 18),
(348, 'Gonzalo Berón', 'Centrocampista', 30, 'Argentina', 450000, 2023, 18),
(349, 'Lucas García', 'Delantero', 24, 'Argentina', 350000, 2024, 18),
(350, 'Pablo De Blasis', 'Centrocampista', 34, 'Argentina', 500000, 2023, 18),
(351, 'Diego López', 'Defensa', 31, 'Argentina', 550000, 2024, 18),
(352, 'Franco Ortiz', 'Delantero', 27, 'Argentina', 650000, 2023, 18),
(353, 'Javier Toledo', 'Centrocampista', 29, 'Argentina', 400000, 2024, 18),
(354, 'Gabriel Gudiño', 'Defensa', 25, 'Argentina', 300000, 2023, 18),
(355, 'Nicolás Mazzola', 'Delantero', 30, 'Argentina', 450000, 2024, 18),
(356, 'Lucas Melano', 'Delantero', 28, 'Argentina', 600000, 2023, 18),
(357, 'Cristian Vega', 'Centrocampista', 27, 'Argentina', 700000, 2024, 18),
(358, 'Germán Delfino', 'Portero', 29, 'Argentina', 800000, 2024, 19),
(359, 'Lucas Menossi', 'Centrocampista', 28, 'Argentina', 1500000, 2023, 19),
(360, 'Matías Pérez García', 'Delantero', 30, 'Argentina', 700000, 2024, 19),
(361, 'Nicolás Ferreyra', 'Defensa', 26, 'Argentina', 600000, 2023, 19),
(362, 'Enrique Bologna', 'Portero', 37, 'Argentina', 300000, 2023, 19),
(363, 'Santiago Montiel', 'Defensa', 25, 'Argentina', 500000, 2023, 19),
(364, 'Juan Carlos Pochettino', 'Centrocampista', 31, 'Argentina', 600000, 2024, 19),
(365, 'Pablo Caballero', 'Delantero', 28, 'Argentina', 700000, 2023, 19),
(366, 'Nicolás Distasio', 'Defensa', 29, 'Argentina', 450000, 2024, 19),
(367, 'Lucas Moya', 'Defensa', 24, 'Argentina', 400000, 2023, 19),
(368, 'Gonzalo Verón', 'Centrocampista', 32, 'Argentina', 650000, 2024, 19),
(369, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 350000, 2023, 19),
(370, 'Ezequiel Bullaude', 'Centrocampista', 24, 'Argentina', 900000, 2024, 19),
(371, 'Franco Sosa', 'Defensa', 28, 'Argentina', 500000, 2023, 19),
(372, 'Matías Catalán', 'Defensa', 30, 'Argentina', 700000, 2024, 19),
(373, 'Cristian Tarragona', 'Delantero', 30, 'Argentina', 600000, 2023, 19),
(374, 'Fernando González', 'Delantero', 26, 'Argentina', 450000, 2023, 19),
(375, 'Agustín Ocampo', 'Defensa', 25, 'Argentina', 350000, 2024, 19),
(376, 'Tomás Badaloni', 'Delantero', 26, 'Argentina', 800000, 2024, 20),
(377, 'Fernando Godoy', 'Centrocampista', 31, 'Argentina', 600000, 2023, 20),
(378, 'Lucas Suárez', 'Defensa', 28, 'Argentina', 500000, 2024, 20),
(379, 'Ezequiel Bullaude', 'Centrocampista', 24, 'Argentina', 900000, 2023, 20),
(380, 'Diego Rodríguez', 'Portero', 29, 'Argentina', 700000, 2024, 20),
(381, 'Nicolás Sosa', 'Defensa', 27, 'Argentina', 600000, 2023, 20),
(382, 'Agustín Manzur', 'Defensa', 25, 'Argentina', 450000, 2024, 20),
(383, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 350000, 2023, 20),
(384, 'Franco Quiroz', 'Delantero', 30, 'Argentina', 650000, 2024, 20),
(385, 'Matías Ramírez', 'Centrocampista', 22, 'Argentina', 400000, 2023, 20),
(386, 'Lucas Melano', 'Delantero', 29, 'Argentina', 800000, 2024, 20),
(387, 'Cristian Tarragona', 'Centrocampista', 30, 'Argentina', 750000, 2023, 20),
(388, 'Pablo De Blasis', 'Centrocampista', 34, 'Argentina', 600000, 2024, 20),
(389, 'Matías Pérez García', 'Delantero', 32, 'Argentina', 700000, 2023, 20),
(390, 'Nicolás Colazo', 'Defensa', 31, 'Argentina', 550000, 2024, 20),
(391, 'Franco Soldano', 'Delantero', 28, 'Argentina', 650000, 2023, 20),
(392, 'Agustín Lencina', 'Defensa', 24, 'Argentina', 300000, 2024, 20),
(393, 'Javier Toledo', 'Delantero', 26, 'Argentina', 400000, 2023, 20),
(394, 'Sebastián Lomónaco', 'Centrocampista', 29, 'Argentina', 500000, 2024, 20),
(395, 'Ezequiel Fernández', 'Centrocampista', 23, 'Argentina', 350000, 2023, 20),
(396, 'Diego Armando Maradona', 'Delantero', 35, 'Argentina', 250000, 2024, 20),
(397, 'Maxi Rodríguez', 'Delantero', 39, 'Argentina', 1000000, 2024, 21),
(398, 'Pablo Pérez', 'Centrocampista', 36, 'Argentina', 600000, 2023, 21),
(399, 'Julio Buffarini', 'Defensa', 35, 'Argentina', 500000, 2024, 21),
(400, 'Cristian Ferreira', 'Centrocampista', 24, 'Argentina', 800000, 2023, 21),
(401, 'Ignacio Scocco', 'Delantero', 37, 'Argentina', 700000, 2024, 21),
(402, 'Franco Escobar', 'Defensa', 28, 'Argentina', 650000, 2023, 21),
(403, 'Nicolás Castro', 'Centrocampista', 22, 'Argentina', 300000, 2024, 21),
(404, 'Lucas Martínez', 'Defensa', 29, 'Argentina', 400000, 2023, 21),
(405, 'Ramiro Sordo', 'Delantero', 25, 'Argentina', 500000, 2024, 21),
(406, 'Sebastián Sosa', 'Portero', 31, 'Argentina', 600000, 2023, 21),
(407, 'Mauro Ledesma', 'Centrocampista', 27, 'Argentina', 350000, 2024, 21),
(408, 'Jonathan Cristaldo', 'Delantero', 30, 'Argentina', 700000, 2023, 21),
(409, 'Gonzalo Luján', 'Defensa', 26, 'Argentina', 450000, 2024, 21),
(410, 'Brian Aguirre', 'Delantero', 23, 'Argentina', 600000, 2023, 21),
(411, 'Martín Cauteruccio', 'Delantero', 34, 'Argentina', 500000, 2024, 21),
(412, 'Lautaro Morales', 'Portero', 25, 'Argentina', 350000, 2023, 21),
(413, 'Francisco González', 'Centrocampista', 28, 'Argentina', 550000, 2024, 21),
(414, 'Matías Ochoa', 'Defensa', 24, 'Argentina', 300000, 2023, 21),
(415, 'Alejandro Maciel', 'Centrocampista', 29, 'Argentina', 600000, 2024, 21),
(416, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 300000, 2023, 21),
(417, 'Nicolás Tissera', 'Delantero', 30, 'Argentina', 400000, 2024, 21),
(418, 'Gonzalo Montiel', 'Defensa', 26, 'Argentina', 1500000, 2024, 22),
(419, 'Alan Ruiz', 'Centrocampista', 29, 'Argentina', 700000, 2023, 22),
(420, 'Facundo Buonanotte', 'Delantero', 21, 'Argentina', 1200000, 2024, 22),
(421, 'Lucas Gamba', 'Delantero', 34, 'Argentina', 600000, 2023, 22),
(422, 'Emmanuel Ojeda', 'Defensa', 25, 'Argentina', 500000, 2024, 22),
(423, 'Diego Rodriguez', 'Portero', 30, 'Argentina', 400000, 2023, 22),
(424, 'Nicolás Oroz', 'Centrocampista', 27, 'Argentina', 550000, 2024, 22),
(425, 'Gonzalo Vivas', 'Defensa', 28, 'Argentina', 650000, 2023, 22),
(426, 'Franco Cervi', 'Delantero', 29, 'Argentina', 800000, 2024, 22),
(427, 'Cristian González', 'Defensa', 32, 'Argentina', 600000, 2023, 22),
(428, 'Matías Caruzzo', 'Defensa', 35, 'Argentina', 300000, 2024, 22),
(429, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 350000, 2023, 22),
(430, 'Juan Ramírez', 'Centrocampista', 30, 'Argentina', 700000, 2024, 22),
(431, 'Cristian Ferreira', 'Centrocampista', 24, 'Argentina', 800000, 2023, 22),
(432, 'Lucas Martínez', 'Delantero', 25, 'Argentina', 450000, 2024, 22),
(433, 'Agustín Ojeda', 'Centrocampista', 23, 'Argentina', 400000, 2023, 22),
(434, 'Nicolás Ferreyra', 'Defensa', 26, 'Argentina', 500000, 2024, 22),
(435, 'Gonzalo Sosa', 'Delantero', 29, 'Argentina', 550000, 2023, 22),
(436, 'Matías Rojas', 'Centrocampista', 27, 'Argentina', 650000, 2024, 22),
(437, 'Joaquín Laso', 'Defensa', 31, 'Argentina', 300000, 2023, 22),
(438, 'Ramiro Funes Mori', 'Defensa', 32, 'Argentina', 400000, 2024, 22),
(439, 'Ezequiel Unsain', 'Portero', 27, 'Argentina', 700000, 2024, 23),
(440, 'Nicolás Tripichio', 'Defensa', 28, 'Argentina', 600000, 2023, 23),
(441, 'Leonardo Sigali', 'Defensa', 36, 'Argentina', 500000, 2024, 23),
(442, 'Mariano González', 'Centrocampista', 33, 'Argentina', 400000, 2023, 23),
(443, 'Rodrigo Contreras', 'Delantero', 25, 'Argentina', 800000, 2024, 23),
(444, 'Gonzalo Castellani', 'Centrocampista', 31, 'Argentina', 650000, 2023, 23),
(445, 'Facundo Silva', 'Defensa', 24, 'Argentina', 300000, 2024, 23),
(446, 'Enrique Bologna', 'Portero', 37, 'Argentina', 200000, 2023, 23),
(447, 'Nicolás Fernández', 'Delantero', 26, 'Argentina', 600000, 2024, 23),
(448, 'Hernán López', 'Centrocampista', 29, 'Argentina', 550000, 2023, 23),
(449, 'Juan Rodríguez', 'Defensa', 25, 'Argentina', 400000, 2024, 23),
(450, 'Diego Rodríguez', 'Centrocampista', 30, 'Argentina', 500000, 2023, 23),
(451, 'Matías Rojas', 'Delantero', 27, 'Argentina', 700000, 2024, 23),
(452, 'Gabriel Hauche', 'Delantero', 35, 'Argentina', 800000, 2024, 23),
(453, 'Hugo Fernández', 'Defensa', 32, 'Argentina', 600000, 2023, 23),
(454, 'Alejandro Banda', 'Centrocampista', 29, 'Argentina', 450000, 2024, 23),
(455, 'Agustín Bouzat', 'Delantero', 27, 'Argentina', 500000, 2023, 23),
(456, 'Lucas Martínez', 'Defensa', 26, 'Argentina', 350000, 2024, 23),
(457, 'Nicolás Mazzola', 'Delantero', 30, 'Argentina', 400000, 2023, 23),
(458, 'Jonathan Herrera', 'Delantero', 25, 'Argentina', 600000, 2024, 23),
(459, 'José Sand', 'Delantero', 43, 'Argentina', 800000, 2024, 24),
(460, 'Nicolás Thaller', 'Portero', 26, 'Argentina', 500000, 2023, 24),
(461, 'Leonardo Gottardi', 'Defensa', 30, 'Argentina', 600000, 2024, 24),
(462, 'Pedro De la Vega', 'Delantero', 21, 'Argentina', 1500000, 2023, 24),
(463, 'Juan Pablo Vargas', 'Defensa', 28, 'Colombia', 700000, 2024, 24),
(464, 'Lucas Vera', 'Centrocampista', 25, 'Argentina', 400000, 2023, 24),
(465, 'Nicolás Orsini', 'Delantero', 29, 'Argentina', 600000, 2024, 24),
(466, 'Diego Braghieri', 'Defensa', 34, 'Argentina', 500000, 2023, 24),
(467, 'Facundo Pérez', 'Centrocampista', 22, 'Argentina', 350000, 2024, 24),
(468, 'Leandro Díaz', 'Delantero', 27, 'Argentina', 450000, 2023, 24),
(469, 'Santiago Ascacíbar', 'Centrocampista', 26, 'Argentina', 800000, 2024, 24),
(470, 'Nicolás López', 'Delantero', 24, 'Uruguay', 550000, 2023, 24),
(471, 'Matías Pérez García', 'Centrocampista', 32, 'Argentina', 300000, 2024, 24),
(472, 'Lautaro Acosta', 'Delantero', 35, 'Argentina', 600000, 2023, 24),
(473, 'Bruno Vides', 'Delantero', 28, 'Argentina', 700000, 2024, 24),
(474, 'José Canale', 'Defensa', 29, 'Argentina', 400000, 2023, 24),
(475, 'Fernando Barrientos', 'Centrocampista', 30, 'Argentina', 450000, 2024, 24),
(476, 'Iván Marcone', 'Centrocampista', 33, 'Argentina', 500000, 2023, 24),
(477, 'Gerardo Alcoba', 'Defensa', 35, 'Uruguay', 300000, 2024, 24),
(478, 'Nicolás Ramírez', 'Defensa', 26, 'Argentina', 550000, 2023, 24),
(479, 'Joaquín Ibáñez', 'Portero', 27, 'Argentina', 250000, 2024, 24),
(480, 'Sebastián Lomónaco', 'Delantero', 28, 'Argentina', 500000, 2024, 25),
(481, 'Matías García', 'Centrocampista', 30, 'Argentina', 600000, 2023, 25),
(482, 'Nicolás Fernández', 'Defensa', 27, 'Argentina', 450000, 2024, 25),
(483, 'Alejandro Medina', 'Portero', 29, 'Argentina', 400000, 2023, 25),
(484, 'Julio Furch', 'Delantero', 34, 'Argentina', 800000, 2024, 25),
(485, 'Gonzalo Ríos', 'Defensa', 26, 'Argentina', 300000, 2023, 25),
(486, 'Joaquín Ibáñez', 'Portero', 27, 'Argentina', 250000, 2024, 25),
(487, 'Facundo Silva', 'Defensa', 24, 'Argentina', 350000, 2023, 25),
(488, 'Lucas Suárez', 'Centrocampista', 22, 'Argentina', 300000, 2024, 25),
(489, 'Agustín Vallejo', 'Delantero', 25, 'Argentina', 400000, 2023, 25),
(490, 'Franco Paredes', 'Centrocampista', 29, 'Argentina', 550000, 2024, 25),
(491, 'Diego Martínez', 'Defensa', 30, 'Argentina', 450000, 2023, 25),
(492, 'Ezequiel Bullaude', 'Centrocampista', 23, 'Argentina', 650000, 2024, 25),
(493, 'Bruno Zuculini', 'Centrocampista', 31, 'Argentina', 700000, 2023, 25),
(494, 'Nicolás Marete', 'Defensa', 28, 'Argentina', 500000, 2024, 25),
(495, 'Lucas Melano', 'Delantero', 29, 'Argentina', 600000, 2023, 25),
(496, 'Ramiro Carrera', 'Centrocampista', 27, 'Argentina', 550000, 2024, 25),
(497, 'Martín Nervo', 'Defensa', 33, 'Argentina', 300000, 2023, 25),
(498, 'Agustín Pichot', 'Centrocampista', 24, 'Argentina', 400000, 2024, 25),
(499, 'Nicolás Aguirre', 'Centrocampista', 32, 'Argentina', 600000, 2023, 25),
(500, 'Fernando Valenzuela', 'Delantero', 30, 'Argentina', 450000, 2024, 25),
(501, 'Alejandro Ruiz', 'Defensa', 28, 'Argentina', 400000, 2024, 26),
(502, 'Joaquín Ibáñez', 'Portero', 26, 'Argentina', 300000, 2023, 26),
(503, 'Lucas Melano', 'Delantero', 29, 'Argentina', 600000, 2024, 26),
(504, 'Franco Watson', 'Centrocampista', 27, 'Argentina', 450000, 2023, 26),
(505, 'Nicolás Mazzola', 'Delantero', 25, 'Argentina', 500000, 2024, 26),
(506, 'Diego Rodríguez', 'Centrocampista', 30, 'Argentina', 550000, 2023, 26),
(507, 'Matías Ramírez', 'Defensa', 24, 'Argentina', 350000, 2024, 26),
(508, 'Ezequiel Ceballos', 'Centrocampista', 23, 'Argentina', 300000, 2023, 26),
(509, 'Gonzalo Verdú', 'Defensa', 31, 'Argentina', 600000, 2024, 26),
(510, 'Sebastián Rodríguez', 'Delantero', 28, 'Argentina', 700000, 2023, 26),
(511, 'Pablo De Blasis', 'Centrocampista', 34, 'Argentina', 400000, 2024, 26),
(512, 'Nicolás Sosa', 'Defensa', 26, 'Argentina', 450000, 2023, 26),
(513, 'Juan Ramírez', 'Delantero', 29, 'Argentina', 600000, 2024, 26),
(514, 'Fernando González', 'Defensa', 30, 'Argentina', 500000, 2023, 26),
(515, 'Agustín Lazzaroni', 'Centrocampista', 25, 'Argentina', 350000, 2024, 26),
(516, 'Cristian Ferreyra', 'Delantero', 28, 'Argentina', 550000, 2023, 26),
(517, 'Ezequiel Bullaude', 'Centrocampista', 22, 'Argentina', 400000, 2024, 26),
(518, 'Diego Ceballos', 'Defensa', 32, 'Argentina', 300000, 2023, 26),
(519, 'Ramiro Martínez', 'Centrocampista', 27, 'Argentina', 450000, 2024, 26),
(520, 'Santiago Rodríguez', 'Delantero', 30, 'Argentina', 600000, 2023, 26),
(521, 'Leonardo López', 'Defensa', 29, 'Argentina', 500000, 2024, 26),
(522, 'Facundo Altamirano', 'Portero', 28, 'Argentina', 500000, 2024, 27),
(523, 'Juan Manuel Cruz', 'Delantero', 25, 'Argentina', 600000, 2023, 27),
(524, 'Gonzalo Ascasibar', 'Centrocampista', 27, 'Argentina', 700000, 2024, 27),
(525, 'Nicolás Sosa', 'Defensa', 29, 'Argentina', 450000, 2023, 27),
(526, 'Luciano Lollo', 'Defensa', 34, 'Argentina', 400000, 2024, 27),
(527, 'Matías Fernández', 'Centrocampista', 30, 'Argentina', 550000, 2023, 27),
(528, 'Agustín Urzi', 'Delantero', 22, 'Argentina', 800000, 2024, 27),
(529, 'Santiago Silva', 'Delantero', 36, 'Uruguay', 300000, 2023, 27),
(530, 'Ezequiel Carboni', 'Defensa', 32, 'Argentina', 350000, 2024, 27),
(531, 'Renzo Saravia', 'Defensa', 29, 'Argentina', 600000, 2023, 27),
(532, 'Rodrigo Contreras', 'Centrocampista', 26, 'Argentina', 500000, 2024, 27),
(533, 'Cristian Medina', 'Centrocampista', 24, 'Argentina', 450000, 2023, 27),
(534, 'Nicolás Bertolo', 'Centrocampista', 35, 'Argentina', 200000, 2024, 27),
(535, 'Franco Quinteros', 'Defensa', 28, 'Argentina', 400000, 2023, 27),
(536, 'Diego Rodríguez', 'Centrocampista', 31, 'Argentina', 600000, 2024, 27),
(537, 'Agustín Campuzano', 'Portero', 27, 'Argentina', 350000, 2023, 27),
(538, 'Hernán López', 'Delantero', 29, 'Argentina', 500000, 2024, 27),
(539, 'Nicolás González', 'Defensa', 26, 'Argentina', 300000, 2023, 27),
(540, 'Gonzalo Rodríguez', 'Defensa', 30, 'Argentina', 450000, 2024, 27),
(541, 'Joaquín Ibáñez', 'Portero', 28, 'Argentina', 250000, 2023, 27),
(542, 'Cristian Ferreira', 'Centrocampista', 25, 'Argentina', 700000, 2024, 27),
(543, 'Lucas Chaves', 'Portero', 28, 'Argentina', 500000, 2024, 28),
(544, 'Jonathan Herrera', 'Delantero', 30, 'Argentina', 600000, 2023, 28),
(545, 'Carlos Quintana', 'Defensa', 32, 'Argentina', 400000, 2024, 28),
(546, 'Joaquín Ibáñez', 'Portero', 27, 'Argentina', 300000, 2023, 28),
(547, 'Franco Moyano', 'Defensa', 29, 'Argentina', 450000, 2024, 28),
(548, 'Santiago Montiel', 'Centrocampista', 24, 'Argentina', 350000, 2023, 28),
(549, 'Ezequiel Bullaude', 'Centrocampista', 22, 'Argentina', 700000, 2024, 28),
(550, 'Nicolás Reniero', 'Delantero', 26, 'Argentina', 600000, 2023, 28),
(551, 'Agustín Obando', 'Delantero', 23, 'Argentina', 400000, 2024, 28),
(552, 'Diego Valoyes', 'Delantero', 28, 'Colombia', 500000, 2023, 28),
(553, 'Rodrigo Gómez', 'Centrocampista', 31, 'Argentina', 450000, 2024, 28),
(554, 'Matías González', 'Defensa', 27, 'Argentina', 300000, 2023, 28),
(555, 'Julián Fernández', 'Centrocampista', 25, 'Argentina', 350000, 2024, 28),
(556, 'Fernando Verón', 'Defensa', 29, 'Argentina', 500000, 2023, 28),
(557, 'Ezequiel González', 'Centrocampista', 26, 'Argentina', 400000, 2024, 28),
(558, 'Gonzalo Verón', 'Delantero', 30, 'Argentina', 600000, 2023, 28),
(559, 'Joaquín Sosa', 'Defensa', 28, 'Argentina', 450000, 2024, 28),
(560, 'Ignacio Fernández', 'Centrocampista', 31, 'Argentina', 550000, 2023, 28),
(561, 'Matías Romero', 'Portero', 26, 'Argentina', 350000, 2024, 28),
(562, 'Agustín Pichot', 'Defensa', 24, 'Argentina', 300000, 2023, 28),
(563, 'Ramiro Sordo', 'Delantero', 29, 'Argentina', 600000, 2024, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`) VALUES
(1, 'Valdez'),
(2, 'Valdez'),
(3, 'Garcia'),
(4, 'Giannoni'),
(5, 'Ortega');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `actividad_socios`
--
ALTER TABLE `actividad_socios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `actividad_id` (`actividad_id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `actividad_socios`
--
ALTER TABLE `actividad_socios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad_socios`
--
ALTER TABLE `actividad_socios`
  ADD CONSTRAINT `actividad_socios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `actividad_socios_ibfk_2` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
