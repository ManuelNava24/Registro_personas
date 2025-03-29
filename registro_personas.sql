-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-03-2025 a las 23:16:44
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(80) COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo_electronico` varchar(80) COLLATE utf8mb3_spanish_ci NOT NULL,
  `pass` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `hora_registro` datetime NOT NULL,
  `fecha_registro` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre_completo`, `fecha_nacimiento`, `correo_electronico`, `pass`, `hora_registro`, `fecha_registro`) VALUES
(1, 'Manuel Enrique Nava Guerrero ', '2003-04-05', 'manuelnava123@gmail.com', 'gary149', '2025-03-29 16:57:13', '2025-03-29 22:57:13'),
(2, 'Erika Doreli Hernandez Rubio ', '2002-04-29', 'erikadoreli2323@gmail.com', 'doroeli666', '2025-03-29 16:57:55', '2025-03-29 22:57:55'),
(3, 'Luis Eduardo Nava Guerrero', '2000-03-20', 'luis2020@gmail.com', 'ednague777', '2025-03-29 16:58:59', '2025-03-29 22:58:59'),
(4, 'Carolina Guerrero Ponce ', '1983-03-16', 'carolina5453@gmail.com', 'contraseña9864', '2025-03-29 17:00:09', '2025-03-29 23:00:09'),
(5, 'Luis Manuel Nava Robles ', '1978-05-17', 'manuelrobles978@gmail.com', 'dina183', '2025-03-29 17:00:55', '2025-03-29 23:00:55'),
(6, 'Ana Lucía Mendoza Torres', '1995-08-12', 'analucia12@outlook.com', 'luciA#1995', '2025-03-29 17:03:39', '2025-03-29 23:03:39'),
(7, 'Javier Ríos Ortega', '1989-11-22', 'jrios.ortega89@gmail.com', 'RioJav_1989', '2025-03-29 17:04:23', '2025-03-29 23:04:23'),
(8, 'Sofía Camacho Villalobos', '2001-05-03', 'sofi.cv2001@yahoo.com', 'VillASofi03', '2025-03-29 17:05:03', '2025-03-29 23:05:03'),
(9, 'Ricardo Paredes Soto', '1992-02-14', 'rparedes.soto92@gmail.com', 'ParRi_1992', '2025-03-29 17:06:09', '2025-03-29 23:06:09'),
(10, 'Daniela Vega Rojas', '1998-09-25', 'danive.rojas98@hotmail.com', 'VegaDani25', '2025-03-29 17:06:48', '2025-03-29 23:06:48'),
(11, 'Omar Cervantes Franco', '1985-07-07', 'omar.cervfranco@gmail.com', 'FrancoOmar7', '2025-03-29 17:07:43', '2025-03-29 23:10:51'),
(12, 'Othoniel Mendez Díaz ', '1976-06-05', 'othoniel0532@gmail.com', 'Otho32&A!', '2025-03-29 17:13:06', '2025-03-29 23:13:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
