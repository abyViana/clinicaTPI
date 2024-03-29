-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-12-2019 a las 23:17:06
-- Versión del servidor: 5.7.28-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `IDBITACORA` int(11) NOT NULL,
  `IDUSUARIO` int(11) DEFAULT NULL,
  `DESCRIPCIONBITACORA` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHABITACORA` date DEFAULT NULL,
  `HORABITACORA` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`IDBITACORA`, `IDUSUARIO`, `DESCRIPCIONBITACORA`, `FECHABITACORA`, `HORABITACORA`) VALUES
(35, 15, 'Eliminacion de Usuario', '2019-07-05', '04:45:00'),
(36, 15, 'Agregar Nuevo Usuario', '2019-07-05', '04:51:17'),
(37, 15, 'Agregar Nuevo Usuario', '2019-07-05', '04:52:46'),
(38, 15, 'Agregar Nuevo Usuario', '2019-07-05', '04:53:25'),
(39, 15, 'Eliminacion de Usuario ', '2019-07-05', '04:53:52'),
(40, 15, 'Agregar Nuevo Usuario', '2019-07-05', '04:57:14'),
(41, 15, 'Modificacion de Informacion de Usuario', '2019-07-05', '04:57:31'),
(42, 15, 'Eliminacion de Usuario', '2019-07-05', '04:59:38'),
(45, 34, 'Creacion de Reporte de Proyectos iniciados con Irregularidad', '2019-07-05', '14:19:05'),
(46, 34, 'Creacion de Reporte de Proyectos iniciados con Irregularidad en formato PDF', '2019-07-05', '14:19:06'),
(47, 36, 'Creacion de Reporte de Herramientas', '2019-07-05', '17:24:11'),
(48, 36, 'Creacion de Reporte de Herramientas en formato PDF', '2019-07-05', '17:24:15'),
(49, 36, 'Creacion de Reporte de Personal Apto para el Servicio', '2019-07-05', '17:24:45'),
(50, 36, 'Creacion de Reporte de Personal Apto para el Servicio en formato PDF', '2019-07-05', '17:24:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id` int(11) NOT NULL,
  `nombrePaciente` varchar(50) NOT NULL,
  `nombreMedico` int(15) NOT NULL,
  `fechaCita` datetime NOT NULL,
  `horaCita` time NOT NULL,
  `tipoCita` varchar(125) NOT NULL,
  `reservacionCita` tinyint(1) NOT NULL,
  `color` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id`, `nombrePaciente`, `nombreMedico`, `fechaCita`, `horaCita`, `tipoCita`, `reservacionCita`, `color`, `updated_at`, `created_at`) VALUES
(4, 'Elizabeth Villatoro Garcia', 1, '2018-09-17 09:00:00', '09:00:00', 'consulta general', 0, '#8be55e', '2018-09-26 04:17:26', '2018-09-26 04:17:26'),
(5, 'Georgina Madrid', 4, '2018-09-21 09:30:00', '09:30:00', 'control de embarazo', 1, '#ef9eee', '2018-11-27 01:18:56', '2018-11-27 01:18:56'),
(16, 'ulices', 4, '2018-10-13 16:00:00', '16:00:00', 'consulta general', 1, '#8be55e', '2018-09-29 03:15:59', '2018-09-29 03:15:59'),
(17, 'luna abigail', 1, '2018-10-27 07:00:00', '07:00:00', 'control de niño', 1, '#ef8e39', '2018-09-29 03:16:44', '2018-09-29 03:16:44'),
(18, 'Gaby', 4, '2018-10-16 15:45:00', '15:45:00', 'control de embarazo', 1, '#ef9eee', '2018-11-27 01:18:48', '2018-11-27 01:18:48'),
(20, 'Edgardo Lopez', 4, '2018-11-29 09:15:00', '09:15:00', 'oftalmologia', 1, '#dff210', '2018-11-27 07:23:08', '2018-11-27 07:23:08'),
(21, 'Fernando Videz', 4, '2018-10-06 09:00:00', '09:00:00', 'control de niño', 1, '#ef8e39', '2018-11-27 01:42:52', '2018-11-27 01:42:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `tipoConsulta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombreConsulta` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `examenFisico` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `diagnostico` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaConsulta` date DEFAULT NULL,
  `idPaciente` int(11) NOT NULL,
  `edadPaciente` int(11) NOT NULL,
  `pesoPaciente` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `alturaPaciente` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `medPaciente` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alergiasPaciente` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `temPaciente` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `presionArtPaciente` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `tipoConsulta`, `nombreConsulta`, `examenFisico`, `diagnostico`, `fechaConsulta`, `idPaciente`, `edadPaciente`, `pesoPaciente`, `alturaPaciente`, `medPaciente`, `alergiasPaciente`, `temPaciente`, `presionArtPaciente`, `idMedico`) VALUES
(1, 'dolor de cabesa', 'migraña', '', 'simple dolor de cabeza', '2018-09-02', 2, 0, '', '', '', '', '', '', 1),
(2, 'dolor estimacal', 'gastrointeritis', '', 'producido por bacterias', '2018-09-04', 1, 0, '', '', '', '', '', '', 1),
(3, 'fdgdfg', 'fgdfgdfg', 'dfgsdfgfd', 'assdfsdfsd', '2018-09-27', 2, 22, '526gfd', '545fdf', NULL, NULL, '5151f', '215dfgf', 4),
(4, '1', 'nada', 'nada', 'nada', '2018-11-06', 3, 24, '112', '52', NULL, NULL, '65', '12035', 1),
(5, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(6, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(7, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(8, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(9, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(10, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(11, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(12, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(13, '4', 'ardor en ojo izquierdo', 'nada', 'nada', '2018-11-12', 2, 32, '56', '65', NULL, 'nada', '62', '42', 4),
(14, '3', 'dolor de estomago', 'nada', 'nada', '2018-11-16', 2, 12, '102', '65', NULL, 'nada', '1235', '154', 4),
(15, '3', 'dolor de estomago', 'nada', 'nada', '2018-11-16', 2, 12, '102', '65', NULL, 'nada', '1235', '154', 4),
(16, '3', 'dolor de estomago', 'nada', 'nada', '2018-11-16', 2, 12, '102', '65', NULL, 'nada', '1235', '154', 4),
(17, '3', 'dolor de estomago', 'nada', 'nada', '2018-11-16', 2, 12, '102', '65', NULL, 'nada', '1235', '154', 4),
(18, '3', 'dolor de estomago', 'nada', 'nada', '2018-11-16', 2, 12, '102', '65', NULL, 'nada', '1235', '154', 4),
(19, '3', 'nada', 'nada', 'dad', '2018-11-15', 2, 10, '21', '123', NULL, 'nada', '1215', '210', 4),
(20, '3', 'nada', 'nada', 'dad', '2018-11-15', 2, 10, '21', '123', NULL, 'nada', '1215', '210', 4),
(21, '3', 'nada', 'nada', 'dad', '2018-11-15', 2, 10, '21', '123', NULL, 'nada', '1215', '210', 4),
(22, '3', 'nada', 'nada', 'dad', '2018-11-15', 2, 10, '21', '123', NULL, 'nada', '1215', '210', 4),
(23, '3', 'nada', 'nada', 'dad', '2018-11-15', 2, 10, '21', '123', NULL, 'nada', '1215', '210', 4),
(24, '3', 'nada', 'nada', 'dad', '2018-11-15', 2, 10, '21', '123', NULL, 'nada', '1215', '210', 4),
(25, '2', 'iniciar control', 'todo bien', 'todo bien', '2018-11-21', 23, 22, '130', '65', NULL, 'no', '40', '125', 1),
(26, '1', 'fiebre', 'nada', 'nada', '2018-11-16', 61, 1, '30', '0.80', NULL, 'nada', '50', '12642', 4),
(27, '1', 'picason', 'nada', 'nada', '2018-10-10', 9, 2, '35', '0.82', NULL, 'nada', '42', '1332', 4),
(28, '3', 'control', 'nada', 'nada', '2018-10-30', 4, 1, '60', '0.48', NULL, 'nada', '41', '164', 4),
(29, '3', 'control', 'nada', 'todo bien', '2018-10-23', 11, 1, '42', '0.39', NULL, 'nada', '41', '124', 4),
(30, '5', 'rojo en la pierna', 'si esta rojo en casi toda la pierna', 'debido a una alergia', '2018-11-05', 36, 1, '29', '0.40', NULL, 'nada', '41', '145', 4),
(31, '2', 'control', 'nada', 'nada', '2018-09-19', 69, 17, '138', '1.58', NULL, 'nada', '132', '14', 1),
(32, '3', 'fiebre', 'nada', 'nada', '2018-10-17', 12, 5, '70', '1.0', NULL, NULL, '51', '412', 4),
(33, '4', 'ardor en el ojo izquierdo', 'rojo', 'ardor', '2018-11-19', 20, 41, '142', '1.7', NULL, NULL, '54', '121', 1),
(34, '1', 'dolor en el pecho', 'nada', 'nada', '2018-11-30', 18, 14, '137', '1.6', NULL, NULL, '151', '105', 4),
(35, '1', 'picazon', 'nada', 'nada', '2018-10-16', 26, 30, '180', '1.81', NULL, NULL, '178', '130', 1),
(36, '2', 'control', 'todo bien', 'todo bien', '2018-12-01', 38, 18, '170', '1.62', NULL, NULL, '040', '041', 1),
(37, '1', 'nada', 'nada', 'nada', '2018-12-01', 12, 11, '100', '1.59', NULL, NULL, '1204', '20', 1),
(38, '4', 'ardor', 'nada', 'nada', '2018-12-01', 58, 18, '90', '1.67', NULL, NULL, '1515', '1320', 4),
(39, '5', 'enrojecimiento', 'nada', 'nada', '2018-12-03', 41, 78, '219', '1.65', NULL, NULL, '120', '10', 4),
(42, '1', 'Dolor muy fuerte de cabeza', 'no se realizo', 'cefalea , tomar acetaminofén cada 6 horas en el día', '2019-11-30', 20, 23, '150', '1.70', NULL, NULL, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `idExamen` int(75) NOT NULL,
  `nombrePaciente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `medicoAsignado` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoExamen` varchar(75) COLLATE utf8_spanish2_ci NOT NULL,
  `resultado` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaControl` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `horaControl` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`idExamen`, `nombrePaciente`, `medicoAsignado`, `tipoExamen`, `resultado`, `fechaControl`, `horaControl`) VALUES
(25, 'Irene Susana', 'Fernanda Alonsos', 'Orina', 'Bien', '23/09/2018', '14:32'),
(26, 'Fatima Elizabeth', 'Henry Godoy', 'Sangre', 'dssad', '23/09/2018', '02:33'),
(28, 'Maria Tatiana', 'Pablo Marbol Osegueda Ramires', 'Glucosa', 'SDAD', '23/09/2018', '02:38'),
(29, 'Fatima Gabriela', 'Henry Godoy', 'Hemograma', 'sdad', '23/09/2018', '02:45'),
(30, 'Jesus Molder', 'Doneris Yanneth Lopez Fernandez', 'Citologia', 'asdasd', '23/09/2018', '02:46'),
(31, 'Francisca Eleono ', 'Pablo Marbol Osegueda Ramires', 'Sangre', 'ggg', '23/09/2018', '02:59'),
(32, 'Humberto Flaes', 'Pablo Marbol Osegueda Ramires', 'Orina', 'rrr', '25/09/2018', '08:39'),
(34, 'Fatima Gabriela', 'Pablo Marbol Osegueda Ramires', 'Glucosa', 'tt', '26/09/2018', '01:19'),
(35, 'Heidy Fernanda', 'Saul Eduardo', 'Citologia', 'normal', '20/09/2018', '10:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incapacidad`
--

CREATE TABLE `incapacidad` (
  `idIncapacidad` int(75) NOT NULL,
  `nombrePaciente` varchar(100) NOT NULL,
  `medicoAsignado` varchar(100) NOT NULL,
  `edadPaciente` int(70) NOT NULL,
  `causaPaciente` varchar(600) NOT NULL,
  `diasIncapacidad` int(70) NOT NULL,
  `fechaIncapacidad` varchar(30) NOT NULL,
  `horaIncapacidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incapacidad`
--

INSERT INTO `incapacidad` (`idIncapacidad`, `nombrePaciente`, `medicoAsignado`, `edadPaciente`, `causaPaciente`, `diasIncapacidad`, `fechaIncapacidad`, `horaIncapacidad`) VALUES
(9, 'Tanisha', 'Karla Maria Osegueda', 14, 'Chickunguya', 9, '31/10/2018', '00:43'),
(10, 'Kirsten', 'Juan Jose Arevalo', 23, 'Resfriado', 1, '31/10/2018', '00:43'),
(11, 'Tanisha', 'Juan Jose Arevalo', 12, 'Dolor de Cabeza', 1, '31/10/2018', '00:42'),
(12, 'Inez', 'Juan Jose Arevalo', 15, 'Dolor de Estomago \r\n                            \r\n                        ', 4, '02/11/2018', '01:10'),
(14, 'Inez', 'Juan Jose Arevalo', 20, 'Dolor de Cabeza', 9, '29/10/2018', '11:55'),
(15, 'Fiona', 'Henry Godoy', 24, 'Dolor de Brazo', 2, '29/10/2018', '12:00'),
(16, 'Inez', 'Juan Jose Arevalo', 28, 'Dolor de Estomago', 3, '31/10/2018', '00:42'),
(17, 'Melinda', 'Juan Orlando Arquieta', 29, 'Operacion de Muñeca', 11, '31/10/2018', '01:03'),
(18, 'Tanisha', 'Harry Mather Luiz Escobar ', 16, 'Fractura de Femur    \r\n                        ', 25, '12/11/2018', '15:18'),
(20, 'Raphael', 'Karla Maria Osegueda', 45, 'Resfriado\r\n                            \r\n                        ', 7, '02/11/2018', '01:11'),
(21, 'Whilemina', 'Claudia Esther Saravia Maldonado', 24, '    Dolor de Estomago\r\n                ', 5, '02/11/2018', '01:13'),
(22, 'Carolyn', 'Juan Orlando Arquieta', 25, '   Operacion de Apendice\r\n                    \r\n                        ', 25, '02/11/2018', '01:18'),
(23, 'Morgan', 'Karla Maria Osegueda', 20, '   Fractura de clavicula izquierda\r\n                    \r\n                        ', 15, '09/11/2018', '10:20'),
(25, 'Kaden', 'Juan Jose Arevalo', 20, 'Fractura de femur\r\n                        ', 22, '09/11/2018', '11:16'),
(27, 'Vivien', 'Henry Godoy', 30, '    Dislocasion de Brazo izquierdo\r\n                    \r\n                        ', 11, '12/11/2018', '15:05'),
(29, 'Whilemina', 'Juan Orlando Arquieta', 29, 'Infeccion en vias urinarias\r\n                    \r\n                        ', 3, '12/11/2018', '15:14'),
(30, 'Tanisha', 'Guaripolo pelao', 24, 'Dolor de muelas    \r\n                    \r\n                        ', 8, '30/11/2018', '01:38'),
(32, 'Melinda', 'Claudia Esther Saravia Maldonado', 29, '    Dolor de Garganta\r\n                ', 7, '30/11/2018', '01:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `idMedico` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `especialidad` varchar(75) NOT NULL,
  `telefono` int(8) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `direccion` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`idMedico`, `nombre`, `especialidad`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Doris Viana de Beltrán', 'Medico General', 71277179, 'dorisviana16@gmail.com', 'Barrio El Ángel, Rosario La Paz'),
(2, 'Isabel Chabarria', 'Ginecologa', 71283330, 'chabarriaIs23@gmail.com', 'la sultana calle el mirador casa numero 14'),
(3, 'Rodrigo Gilberto Maroquin', 'Dermatologo', NULL, NULL, ''),
(4, 'Saul Eduardo', 'Oftalmologo', 76548910, 's_edu@gmail.com', 'resivencial vivencia, San Salvador'),
(5, 'Maria Elizabeth Guzman', 'medico General', NULL, NULL, ''),
(6, 'Tereza Maria Lopez', 'Pediatra', NULL, NULL, ''),
(7, 'Ana Vilma Sanches', 'Médico General', 72347771, 'vilmaS03@gmail.com', 'La gloria 23, San Salvador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `tipoSangre` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `estadoCivil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `nombre`, `apellido`, `telefono`, `direccion`, `fechaNacimiento`, `tipoSangre`, `sexo`, `estadoCivil`) VALUES
(1, 'alfa', 'Zoet', '23457890', 'La paz', '2018-06-14 00:00:00', 'AB', 'hombre', 'casado'),
(2, 'Heidy Fernanda', 'Garcia Mendez', '71548300', 'colina miramonte', '1988-09-01 00:00:00', 'OPositivo', 'Femenino', 'soltero'),
(3, 'noemy abigail', 'beltran viana', '71244552', 'colinas del norte', '1994-05-18 00:00:00', 'OPositivo', 'Femenino', 'soltero'),
(4, 'Tanisha', 'Whitaker', '8750 9495', 'Apdo.:404-9105 Enim ', '2018-10-20 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(5, 'Whoopi', 'Beck', '9168 8893', '7465 Pellentesque C.', '2018-08-07 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(6, 'Inez', 'Mcneil', '5870 9270', '3771 Gravida. Avenida', '2019-07-26 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(7, 'Quemby', 'Hanson', '4772 6569', 'Apartado núm.: 245, 8082 Sem Ctra.', '2018-09-06 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(8, 'Alfreda', 'Landry', '9361 2404', '7539 Adipiscing Avda.', '2019-06-07 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(9, 'Brooke', 'Bradshaw', '3363 8047', 'Apdo.:719-9580 Molestie Avda.', '2017-11-19 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(10, 'Fiona', 'Woodward', '7809 1753', '534-9988 Ac ', '2018-09-25 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(11, 'Violet', 'Hicks', '5361 9933', 'Apartado núm.: 681, 740 Magna Carretera', '2018-09-01 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(12, 'Bree', 'Roy', '8030 1240', '7927 Volutpat. Av.', '2014-12-31 09:14:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(13, 'Kaden', 'Gordon', '5206 4697', 'Apdo.:225-7801 Nulla. Avda.', '2017-09-27 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(14, 'Blair', 'Wolf', '8447 9421', '441-3461 Nunc Avda.', '2017-10-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(15, 'Carolyn', 'Whitley', '2851 8423', 'Apdo.:832-7556 In, Avda.', '2017-09-16 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(16, 'Melinda', 'Parker', '7489 4812', 'Apartado núm.: 104, 9880 Ut Avenida', '2019-03-31 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(17, 'Tallulah', 'Vinson', '5624 8482', 'Apartado núm.: 733, 4463 In Ctra.', '2019-03-23 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(18, 'Morgan', 'Juarez', '5063 8496', 'Apdo.:322-1669 Risus. Carretera', '2017-09-26 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(19, 'Whilemina', 'Gonzalez', '7330 6916', 'Apartado núm.: 698, 4165 Integer C/', '2019-05-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(20, 'Halla', 'Benton', '3272 0828', 'Apdo.:520-8293 Libero ', '2018-01-20 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(21, 'Reagan', 'Howard', '2964 3135', '699-8935 Nam ', '2018-03-16 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(22, 'Idona', 'Reed', '1822 1061', 'Apdo.:602-5851 Nullam Calle', '2018-05-17 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(23, 'Astra', 'Travis', '4060 1304', 'Apdo.:448-7905 Urna. Avda.', '2017-12-22 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(24, 'Nadine', 'Hardin', '6809 1979', 'Apdo.:328-6743 Arcu. Av.', '2017-09-01 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(25, 'Kirsten', 'Drake', '7046 3098', '526-8343 Risus, Calle', '2018-03-03 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(26, 'Odette', 'Sullivan', '4401 6861', '8546 Nonummy ', '2019-03-14 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(27, 'Ulla', 'Schwartz', '2956 8603', 'Apartado núm.: 477, 6792 Mi. ', '2018-05-27 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(28, 'Fleur', 'Green', '4132 7256', '2201 Consectetuer C.', '2018-10-02 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(29, 'Gloria', 'Rice', '4688 2352', '8251 At C/', '2017-08-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(30, 'Oprah', 'Morrow', '9381 3949', '479-2457 Curae; Calle', '2017-11-15 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(31, 'Alice', 'Jones', '7910-9022', 'Tauranga', '1999-05-24 00:00:00', 'O Positivo', 'Femenino', 'Married'),
(32, 'Haley', 'Horn', '1567 9128', '8621 Facilisis. Av.', '2019-05-19 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(33, 'Cora', 'Pruitt', '3449 6446', '6950 Lectus. Avenida', '2018-07-30 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(34, 'Rylee', 'Gomez', '9765 9659', '255-2529 Non, C/', '2018-10-30 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(35, 'Shaeleigh', 'Carver', '2577 4338', 'Apartado núm.: 304, 4323 Id Carretera', '2019-05-03 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(36, 'Riley', 'Rutledge', '5550 4514', '520-4056 Aliquam C/', '2018-08-20 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(37, 'Iola', 'Randolph', '1089 3416', '357-133 Mauris Calle', '2018-11-12 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(38, 'Nita', 'Hebert', '7615 1832', '171-5835 Eleifend C/', '2019-01-01 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(39, 'Audra', 'Barrera', '6784 8564', '912 Nullam C/', '2017-12-15 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(40, 'Regan', 'Alston', '8369 7635', 'Apdo.:736-8106 Nulla. Carretera', '2018-08-16 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(41, 'Eden', 'Holden', '9640 2441', '8939 Proin Av.', '2010-06-10 18:12:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(42, 'Victoria', 'Hale', '0803 0740', '715-4583 Duis Ctra.', '2019-02-03 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(43, 'Marcia', 'George', '5178 0107', '881-5930 Dui C.', '2018-11-20 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(44, 'Jade', 'Moran', '7912 4655', '4886 Laoreet C/', '2017-12-29 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(45, 'Rina', 'Middleton', '6227 8326', 'Apdo.:911-9857 Eu Calle', '2017-11-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(46, 'Abigail', 'Russell', '0370 5524', 'Apdo.:547-1911 Auctor Av.', '2018-03-19 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(47, 'Yael', 'Thomas', '8297 2562', 'Apdo.:218-2309 Sagittis Avda.', '2018-11-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(48, 'Sopoline', 'Carey', '0659 0084', '255-5649 Sit Avenida', '2018-03-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(49, 'Imogene', 'Adams', '2940 4574', 'Apartado núm.: 674, 616 Metus Carretera', '2018-07-29 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(50, 'Willow', 'Case', '1412 6319', 'Apartado núm.: 791, 4288 Neque ', '2017-12-12 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(51, 'Blossom', 'Williamson', '6014 2252', 'Apartado núm.: 661, 3437 Nascetur C.', '2018-06-10 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(52, 'Bianca', 'Francis', '9667 9876', 'Apdo.:731-1280 Ultricies C/', '2019-05-12 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(53, 'Willa', 'Caldwell', '2005 6802', '9201 Sed, C.', '2017-08-26 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(54, 'Bryar', 'Sandoval', '7973 5268', '174-4485 Nisi. Avenida', '2019-06-17 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(55, 'Penelope', 'Hess', '1150 6373', '409-7425 Ipsum C.', '2018-04-05 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(56, 'Alisa', 'Alford', '9355 2993', 'Apdo.:107-4875 Mollis ', '2018-12-04 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(57, 'Amaya', 'Blake', '8484 1395', 'Apartado núm.: 287, 2467 Lorem, Ctra.', '2018-02-27 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(58, 'Carolyn', 'Contreras', '8742 9647', 'Apdo.:197-4814 Pede. Ctra.', '1960-07-31 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(59, 'Carissa', 'Oconnor', '5038 5202', '3585 Commodo Calle', '2018-10-30 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(60, 'Olivia', 'Burt', '5904 9608', '1298 Orci Avenida', '2018-08-07 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(61, 'Rowan', 'Mckay', '7514 0913', '9751 Cursus. Av.', '2018-03-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(62, 'Jessamine', 'Olsen', '3230 8699', 'Apartado núm.: 683, 3017 Et C.', '2018-02-17 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(63, 'Blair', 'Guerrero', '8045 3157', '1340 Nibh. Ctra.', '2018-11-18 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(64, 'Tatyana', 'Kemp', '0997 3145', 'Apdo.:340-9388 Proin Avda.', '2018-10-13 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(65, 'Rowan', 'Powell', '9067 3370', '736 Id, C.', '2019-01-03 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(66, 'Jane', 'Potter', '0721 2609', 'Apartado núm.: 480, 227 Vestibulum, Calle', '2019-08-05 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(67, 'Wyoming', 'Waters', '9890 7574', '235 Aliquet ', '2018-08-07 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(68, 'Gretchen', 'Bauer', '8921 7613', 'Apdo.:871-1348 Ornare Ctra.', '2018-12-08 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(69, 'Lillith', 'Stephenson', '7297 6923', 'Apartado núm.: 800, 1162 Cum C.', '2018-07-16 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(70, 'Nita', 'Martin', '5110 8054', '4893 Tellus Calle', '2018-12-30 00:00:00', 'B RH positivo', 'Femenino', 'Soltero/a'),
(71, 'Maria', 'Roque', '7548362', 'adfgsd', '1945-09-09 00:00:00', 'OPositivo', 'Femenino', 'viudo'),
(72, 'Miguel', 'Lopez', '751684', 'asdasd', '1939-07-20 00:00:00', 'OPositivo', 'Masculino', 'casado'),
(73, 'Jaquelin María', 'Castillo Melgar', '77990022', 'col. san antonio, Armenia Sonsonate', '1992-03-11 00:00:00', 'OPositivo', 'Femenino', 'soltero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(10) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `idPaciente` int(10) UNSIGNED NOT NULL,
  `idTipoConsulta` int(10) UNSIGNED NOT NULL,
  `idMedico` int(11) NOT NULL,
  `total` float NOT NULL,
  `fechaEmitido` date NOT NULL,
  `fechaCancelado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idPago`, `estado`, `idPaciente`, `idTipoConsulta`, `idMedico`, `total`, `fechaEmitido`, `fechaCancelado`, `created_at`, `updated_at`) VALUES
(1, 'Cancelado', 3, 1, 1, 12, '2018-11-07', '2019-11-17 00:31:42', NULL, NULL),
(2, 'Cancelado', 2, 3, 6, 25, '2018-11-15', '2019-11-17 00:41:43', NULL, NULL),
(3, 'Cancelado', 23, 2, 2, 30, '2018-11-21', '2019-11-17 00:40:55', NULL, NULL),
(5, 'Cancelado', 9, 1, 1, 12, '2018-10-10', '2019-11-17 00:31:52', NULL, NULL),
(6, 'Cancelado', 4, 3, 6, 25, '2018-10-30', '2019-11-19 02:42:05', NULL, NULL),
(7, 'Cancelado', 11, 3, 6, 25, '2018-10-23', '2019-11-17 00:41:51', NULL, NULL),
(8, 'Cancelado', 36, 5, 3, 55, '2018-11-05', '2019-11-17 00:42:38', NULL, NULL),
(9, 'Pendiente', 69, 2, 2, 30, '2018-09-19', '2019-11-17 00:41:03', NULL, NULL),
(10, 'Pendiente', 12, 3, 6, 25, '2018-10-17', '2019-11-17 00:41:59', NULL, NULL),
(11, 'Cancelado', 20, 4, 4, 55, '2018-11-19', '2019-11-17 00:34:33', NULL, NULL),
(12, 'Pendiente', 18, 1, 1, 12, '2018-11-30', '2019-11-17 00:32:00', NULL, NULL),
(13, 'Cancelado', 26, 1, 1, 12, '2018-10-16', '2019-11-17 00:32:58', NULL, NULL),
(14, 'Pendiente', 38, 2, 2, 30, '2018-12-01', '2019-11-17 00:41:14', NULL, NULL),
(15, 'Cancelado', 12, 1, 5, 12, '2018-12-01', '2019-11-19 02:54:00', NULL, NULL),
(16, 'Pendiente', 58, 4, 4, 55, '2018-12-01', '2019-11-17 00:34:43', NULL, NULL),
(17, 'Pendiente', 41, 5, 3, 55, '2018-12-03', '2019-11-17 00:42:47', NULL, NULL),
(18, 'Pendiente', 2, 1, 5, 12, '2019-11-11', '2019-11-21 16:34:13', NULL, NULL),
(19, 'Pendiente', 2, 1, 5, 12, '2019-11-11', '2019-11-21 17:57:48', NULL, NULL),
(20, 'Pendiente', 20, 1, 5, 12, '2019-11-30', '2019-12-01 06:07:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin12@gmail.com', '9f59cce84d99a680bb73f80daeb65394332b298373f9bdbf24fe64de933bdbed', '2018-08-04 05:02:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoConsulta`
--

CREATE TABLE `tipoConsulta` (
  `idTipoConsulta` int(11) NOT NULL,
  `nombreConsulta` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `precio` float UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoConsulta`
--

INSERT INTO `tipoConsulta` (`idTipoConsulta`, `nombreConsulta`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'Consulta General', 12, NULL, NULL),
(2, 'Control Embarazo', 30, NULL, NULL),
(3, 'Control de niño', 25, NULL, NULL),
(4, 'Oftalmologia', 55, NULL, NULL),
(5, 'Dermatologia', 55, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usuario`
--

CREATE TABLE `tipos_usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_usuario`
--

INSERT INTO `tipos_usuario` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', NULL, NULL),
(2, 'Doctor', NULL, NULL),
(3, 'Tactico', NULL, NULL),
(4, 'Estrategico', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipoUsuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `tipoUsuario`) VALUES
(15, 'Henry I Godoy', 'admin12@gmail.com', '$2y$10$D6zSklZ.JrhUBL1bDKp...oaoRJuoirMYUuhDMu1ZIQsLkMuitm52', 'n8wVwglBUDN8MowNu6GEEflI5CapzKU48F9MOrLdzZK5nTsy8djDS8HQDhfN', '2018-08-05 09:18:42', '2019-07-06 05:23:48', 1),
(16, 'Nohemy Abigail', 'abigail@gmail.com', 'hugo', NULL, '2018-08-05 09:19:13', '2018-08-19 18:13:27', 1),
(29, 'Carles Domand ', 'admin10@gmail.com', '$2y$10$6mzMqL/gEr4FTBNq.O9HrOCTwpaWUqpuHbZw9rL4SHBymEyYIu3GS', 'dGHpVAClngfPF2vjytRN84byyycsnP50JCyxPMPRVTfUKvmpGfJ7cecCQE58', '2018-09-17 12:53:41', '2019-06-24 12:43:49', 2),
(34, 'Jose Jimenez', 'tactico1@gmail.com', '$2y$10$vFS3O8B1W7sFY2PNPJGYxecBMlVlkP4opzgzBQAz4Ox8wbsYoNsli', 'Qtnhg3PeA9qAgobRqvERcRTaJxNK3DQxa6OB1QO4ONaZUH7g8v6wPXsFCP7d', '2019-06-10 13:20:45', '2019-07-06 02:19:15', 3),
(35, 'DavidRV', 'tactico2@gmail.com', '$2y$10$W/2TDqSSoiHcyt8zPRnWPeXS/EQ4BttSsUBbCEf6Ah1EcViDHTNN2', 'WHJp1LUREMwN2ByEXlejX8UCHi5gG6Fvjc5cmvFZ9x5Op9q8F1tgOSYFDdm2', '2019-06-23 14:03:11', '2019-07-05 15:30:28', 3),
(36, 'Roberto Dominguez Perez', 'estrategico1@gmail.com', '$2y$10$9OzJ2sdnHGN/83cO4wlzUudmgCcWIXSPJWFhbbu7uQEPNaRt67rEe', 'jZk0F83LOb9wQ65pDmQLhxISiK8sKH7PyHFeuntEqharZVmCH7qe7OoFNWPe', '2019-07-03 04:53:42', '2019-07-06 05:24:58', 2),
(37, 'Raul Hernandez', 'fia.raul@gmail.com', 't0doyM@s', NULL, NULL, NULL, 3),
(39, 'doris viana', 'dorisbeltran@hotmail.com', '$2y$10$8Gyra/KfbdehlNToss07xeTj0OjUMz8WmZ9ZiSLe1POarfr9NLm22', NULL, '2019-12-14 04:52:15', '2019-12-14 04:52:15', 2),
(40, 'luis menjivar', 'luismenjivar@gmail.com', '$2y$10$4Xl.gN6OUIpLrNofxb5PqeZ/GRiL.sbE135dCvSEeyIl7tGRLIAlm', NULL, '2019-12-16 01:47:49', '2019-12-16 01:47:49', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`IDBITACORA`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMedico` (`nombreMedico`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`),
  ADD KEY `idPaciente` (`idPaciente`),
  ADD KEY `idMedico` (`idMedico`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`idExamen`);

--
-- Indices de la tabla `incapacidad`
--
ALTER TABLE `incapacidad`
  ADD PRIMARY KEY (`idIncapacidad`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idMedico`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`),
  ADD KEY `idPaciente` (`idPaciente`),
  ADD KEY `idConsulta` (`idTipoConsulta`),
  ADD KEY `idTipoConsulta` (`idTipoConsulta`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `tipoConsulta`
--
ALTER TABLE `tipoConsulta`
  ADD PRIMARY KEY (`idTipoConsulta`);

--
-- Indices de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `idExamen` int(75) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `incapacidad`
--
ALTER TABLE `incapacidad`
  MODIFY `idIncapacidad` int(75) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `idMedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `tipoConsulta`
--
ALTER TABLE `tipoConsulta`
  MODIFY `idTipoConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipos_usuario`
--
ALTER TABLE `tipos_usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
