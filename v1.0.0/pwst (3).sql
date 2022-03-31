-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2022 a las 20:18:44
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pwst`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(250) NOT NULL,
  `mes` varchar(250) NOT NULL,
  `anio` varchar(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `evalua` varchar(250) NOT NULL,
  `autoriza` varchar(250) NOT NULL,
  `resultado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluation`
--

INSERT INTO `evaluation` (`id`, `mes`, `anio`, `nombre`, `evalua`, `autoriza`, `resultado`) VALUES
(36, 'Septiembre', '2022', 'Fernando  Banda', 'Abraham  Palestina', 'Christian  Hernandez', '0.5'),
(37, 'Enero', '2022', 'Abraham  Palestina', 'Christian  Hernandez', 'Christian  Hernandez', '0.5'),
(38, 'Noviembre', '2022', 'Abraham  Palestina', 'Christian  Hernandez', 'Christian  Hernandez', '1.0'),
(39, 'Noviembre', '2022', 'Abraham  Palestina', 'Christian  Hernandez', 'Abraham  Palestina', '0'),
(40, 'Enero', '2022', 'Abraham  Palestina', 'Abraham  Palestina', 'Abraham  Palestina', '0.5'),
(41, 'Diciembre', '2022', 'Abraham  Palestina', 'Abraham  Palestina', 'Abraham  Palestina', '0'),
(42, 'Diciembre', '2022', 'Miguel  Molina', 'Jesus Zamudio', 'Abraham  Palestina', '1.5'),
(43, 'Diciembre', '2022', 'Abraham  Palestina', 'Abraham  Palestina', 'Abraham  Palestina', '0'),
(44, 'Enero', '2022', 'Abraham  Palestina', 'Abraham  Palestina', 'Abraham  Palestina', '0.5'),
(45, 'Diciembre', '2022', 'Miguel  Molina', 'Abraham  Palestina', 'Christian  Hernandez', '10.0'),
(46, 'Febrero', '2022', 'Francisco  Calderón', 'Christian  Hernandez', 'Christian  Hernandez', '2.0'),
(47, 'Diciembre', '2021', 'Ana  Saucedo', 'Abraham  Palestina', 'Christian  Hernandez', '2.0'),
(48, 'Octubre', '2022', 'Fernando  Banda', 'Christian  Hernandez', 'Christian  Hernandez', '0'),
(49, 'Enero', '2021', 'Fernando  Banda', 'Christian  Hernandez', 'Christian  Hernandez', '3.5'),
(50, 'Marzo', '2022', 'Miguel  Molina', 'Christian  Hernandez', 'Christian  Hernandez', '8.7'),
(51, 'Enero', '2022', 'Fernando  Banda', 'Jesus Zamudio', 'Jesus Zamudio', '5.9'),
(52, 'Enero', '2022', 'Abraham  Palestina', 'Christian  Hernandez', 'Christian  Hernandez', '0'),
(53, 'Enero', '2022', 'Ana  Saucedo', 'Christian  Hernandez', 'Christian  Hernandez', '3.2'),
(54, 'Abril', '1998', 'Ana  Saucedo', 'Abraham  Palestina', 'Christian  Hernandez', '1.5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `type_activity` varchar(250) NOT NULL,
  `subtype` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `type_activity`, `subtype`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(18, 'Televentas', '												Probar version 1.1.1										', 0, 'Proyectos', '', '2022-02-08', '2022-02-15', 0, '19,18,16', '2022-02-08 16:00:28'),
(19, 'Revision de bandeja enterprise', '&lt;p&gt;Revisar si se pueden reproducir los errores&lt;/p&gt;&lt;p&gt;Revisar si le podemos dar respuesta en testing&lt;/p&gt;&lt;p&gt;Enviar redmine a desarrollo&lt;/p&gt;&lt;p&gt;Revisar si est&aacute;n bien redactados&lt;/p&gt;', 0, '', '', '2022-02-08', '2022-12-31', 0, '21', '2022-02-08 16:06:32'),
(20, 'Revision de bandeja Testing', '&lt;p&gt;Seguimiento de redmine&lt;/p&gt;&lt;p&gt;Revisar si se pueden probar en testing&lt;/p&gt;', 0, '', '', '2022-02-08', '2022-12-31', 0, '21', '2022-02-08 16:07:30'),
(21, 'Revision de bandeja EAL', '																																																							', 0, 'Automatizacion', '', '2022-02-08', '2022-12-31', 0, '21', '2022-02-08 16:08:07'),
(22, 'Revisión de pantallas UI', 'Revisi&oacute;n de pantallas UI											', 0, '', '', '2022-01-01', '2022-08-31', 0, '21', '2022-02-08 16:12:49'),
(23, '	 Revisión De Pantallas UI - Fernando', '																																	', 0, 'Automatizacion', '', '2022-01-01', '2022-08-31', 0, '18', '2022-02-08 16:15:09'),
(24, '	 Revisión De Pantallas UI - Barbara', '																						', 0, 'Otro', '', '2022-01-01', '2022-08-31', 0, '17', '2022-02-08 16:16:04'),
(26, 'Presentación pwst2.0', '																																	', 5, 'Otro', '', '2022-02-03', '2022-02-08', 0, '20', '2022-02-08 16:50:29'),
(28, 'Pagina Testing', 'Se esta realizando una pagina para el area de testing', 0, '', '', '2022-02-09', '0000-00-00', 16, '16', '2022-02-09 09:07:01'),
(29, 'PWST 2.0', 'Pwst 2.0', 0, '', '', '2022-01-20', '0000-00-00', 17, '17', '2022-02-09 09:33:25'),
(30, 'Ejecución de automatización ', 'Ejecutare automatizaci&oacute;n de Reponer Ya', 0, '', '', '2022-02-09', '2022-02-09', 21, '21', '2022-02-09 12:50:21'),
(37, 'Revision de Televentas', '																																												', 5, 'Proyectos', '', '2022-02-03', '2022-03-15', 0, '19', '2022-02-09 15:57:14'),
(39, 'Script Opciones', '																						', 5, 'Documentacion', '', '2022-02-09', '2022-02-11', 0, '20', '2022-02-09 18:29:10'),
(42, 'Convertidor VBs a Js', '																						', 5, 'Proyectos', '', '2022-01-01', '2022-03-30', 0, '22', '2022-02-09 18:47:15'),
(43, 'Reunion General Testing', 'Reunion General Testing											', 0, '', '', '2022-01-01', '2024-01-01', 0, '19,21,17,18,20,16,22', '2022-02-09 18:57:39'),
(44, 'Revisar avance de pantallas', 'Revisar el avance y dudas en las pantallas', 0, '', '', '2022-02-10', '2022-02-10', 17, '17,22', '2022-02-10 09:39:33'),
(45, 'Revision del Plugin Beta 0210 Mecanicas UL', '						&lt;p&gt;Revisi&oacute;n de los incidentes detectados en la Beta 0104, validacion de escenario.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;					', 5, 'Redmine', '', '2022-02-10', '2022-02-11', 0, '19', '2022-02-10 10:19:51'),
(46, 'Reunion Automatización ReponerYA', '						Reunion para explicaci&oacute;n de automatizacion de ReponerYA					', 5, 'Reunion', '', '2022-02-10', '2022-02-10', 0, '18,20,16', '2022-02-10 11:00:33'),
(47, 'Corrección de automatizaciones RY', 'Se har&aacute; la correcci&oacute;n de las automatizaciones para su correcto funcionamiento', 0, '', '', '2022-02-10', '2022-02-10', 16, '16', '2022-02-10 13:00:17'),
(48, 'Capacitación de Filtan plugin', '						Capacitacion de filtran					', 5, 'Otro', '', '2022-02-10', '2022-02-10', 0, '19,16,22', '2022-02-10 13:06:29'),
(49, 'Reunión PWST 2.0 Testing', 'Reuni&oacute;n para revisi&oacute;n de casos PWST 2.0', 0, '', '', '2022-02-10', '2022-03-10', 18, '17,18', '2022-02-10 14:12:00'),
(50, 'Mapeo de pruebas de PWST 2.0 y ReponerYA en Python', '											', 0, '', '', '2022-02-10', '0000-00-00', 20, '20', '2022-02-10 16:30:02'),
(52, 'Creacion de evidencia de Seguridad Suite PWST', '						Creaci&oacute;n de documentaci&oacute;n de seguridad version 27.0.39					', 5, 'Documentacion', '', '2022-02-10', '2022-02-10', 0, '19', '2022-02-10 17:20:46'),
(53, 'Documentación Filtran', 'Se realizar&aacute; la documentaci&oacute;n de la capacitaci&oacute;n realizada sobre Filtran y la base de Conaprole', 0, 'Documentacion', '', '2022-02-11', '2022-02-15', 0, '22', '2022-02-11 09:16:56'),
(54, 'Reunión PWST 2.0 Testing Ana - Fernando', '						Reuni&oacute;n para revisi&oacute;n de detalles encontrados en pantallas de PWST 2.0&amp;nbsp;					', 5, 'Redmine', '', '2022-02-10', '2022-03-10', 0, '21,18', '2022-02-11 09:30:46'),
(55, 'Revision de Plugin Filtran', '&lt;p&gt;Revisi&oacute;n de Plugin B0210&lt;/p&gt;&lt;p&gt;Creaci&oacute;n de manual de Capacitaci&oacute;n&amp;nbsp;&lt;/p&gt;&lt;p&gt;Creaci&oacute;n de script de Pruebas&lt;/p&gt;', 0, 'Proyectos', '', '2022-02-11', '2022-02-15', 0, '19,22', '2022-02-11 10:08:16'),
(56, 'Reunion de televentas', '																						', 5, 'Reunion', '', '2022-02-11', '2022-02-11', 0, '19', '2022-02-11 10:27:44'),
(57, 'Capacitacion de Proyecto Televentas 1.0.0', '												Capacitaci&oacute;n de Televentas 1.0.0																					', 5, 'Reunion', '', '2022-02-11', '2022-02-11', 0, '19,21,17,18,20,16,22', '2022-02-11 12:59:09'),
(58, 'Script de Pantallas PWST 2.0', '											', 0, '', '', '2022-02-14', '0000-00-00', 20, '20', '2022-02-14 09:57:32'),
(59, 'Reunión de PWST 2', '											', 0, 'Reunion', '', '2022-02-14', '2023-02-14', 0, '17,20', '2022-02-14 12:06:34'),
(60, 'script televenta ', 'Realizar script de televentas', 0, 'Otro', '', '2022-02-14', '2022-02-14', 0, '21', '2022-02-14 13:30:51'),
(61, 'Automatizacion Televentas', 'Automatizaci&oacute;n de televentas.', 0, 'Automatizacion', '', '2022-02-14', '2022-02-18', 0, '18', '2022-02-14 13:34:30'),
(62, 'Revisión Pantallas UI - Francisco', '											', 0, 'Proyectos', '', '2022-02-14', '2022-02-25', 0, '20', '2022-02-14 16:11:32'),
(98, 'HSH', '											', 0, 'Documentacion', '3', '2022-02-22', '2022-02-22', 0, '19', '2022-02-22 17:14:27'),
(99, 'HSH', '											', 0, 'Automatizacion', '', '2022-02-22', '2022-02-22', 0, '19', '2022-02-22 17:14:57'),
(100, 'HSH', '											', 0, 'Documentacion', 'Resguardo de evidencia', '2022-02-22', '2022-02-22', 0, '19', '2022-02-22 17:19:37'),
(101, 'HSH', '											', 0, 'Documentacion', 'Revision de evidencia', '2022-02-22', '2022-02-22', 0, '19', '2022-02-22 17:20:17'),
(102, 'HSH', '											', 0, 'Documentacion', 'Manuales de usuario', '2022-02-22', '2022-02-22', 0, '19', '2022-02-22 17:21:15'),
(103, 'PruebAa', '											', 0, 'Automatizacion', '', '2022-03-04', '2022-03-04', 0, '19', '2022-03-04 15:03:21'),
(104, 'prueba123', '											', 0, 'Automatizacion', '', '2022-03-08', '2022-03-08', 0, '20', '2022-03-08 20:11:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE `question` (
  `id` int(250) NOT NULL,
  `question` varchar(250) NOT NULL,
  `month` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `question`
--

INSERT INTO `question` (`id`, `question`, `month`) VALUES
(1, 'Conocimiento y aplicación del Proceso de Testing', ''),
(2, 'Seguimiento de casos diarios', ''),
(3, 'Conocimiennto del manejo de Redmine', ''),
(4, 'Seguimiento a casos reportados en Redmine', ''),
(5, 'Se realiza el proceso de: Identificación, registro, investigación, diagnostico y solucion del caso.', ''),
(6, 'Tiene habilidades de comunicación', ''),
(7, 'Seguimiento de casos asignados o consultoria', ''),
(8, 'Cumplimiento de actividades Asignadas', ''),
(9, 'Conocimientos tecnico en Enterprise', ''),
(10, 'Conocimientos tecnico en EAL', ''),
(11, 'Autodidacta (Iniciativa propia)', ''),
(12, 'Puntualidad', ''),
(13, 'Actitud', ''),
(14, 'Proactivo', ''),
(15, 'Trabaja en equipo', ''),
(16, 'Tiene habilidades de razonamiento', ''),
(17, 'Planea, administra y sabe priorizar el trabajo', ''),
(18, 'Tiene retención y memoria', ''),
(19, 'Es tolerante y respetuoso', ''),
(20, 'Seguimiento a casos reportados en Redmine', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subtype`
--

CREATE TABLE `subtype` (
  `id_subtype` int(250) NOT NULL,
  `id` int(250) NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `subtype` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subtype`
--

INSERT INTO `subtype` (`id_subtype`, `id`, `tipo`, `subtype`) VALUES
(1, 1, 'Automatizacion', 'Enterprise'),
(2, 1, 'Automatizacion', 'Eal'),
(3, 1, 'Automatizaion', 'Web'),
(4, 2, 'Bandejas', 'Enterprise'),
(5, 2, 'Bandeja', 'Eal'),
(6, 2, 'Bandejas', 'Web'),
(7, 3, 'Documentacion', 'Revision de evidencia'),
(8, 3, 'Documentacion', 'Creacion de evidencia'),
(9, 3, 'Documentacion', 'Resguardo de evidencia'),
(10, 3, 'Documentacion', 'Manuales de usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Testing PWST', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(18, 18, '1. Realizar automatizaciones', '								Se realizan automatizaciones en python						', 1, '2022-02-08 16:06:54'),
(19, 24, 'Levantar errores de Liquidación', '				Levantar errores encontrados en en la pantalla Liquidaci&oacute;n			', 3, '2022-02-08 17:33:41'),
(20, 26, 'Creación de presentación/video sobre PWST 2.0', '																					', 3, '2022-02-08 17:43:31'),
(21, 28, 'Correccion de errores', '								Se detectaron algunos errores los cuales tienen que ser corregidos						', 3, '2022-02-09 09:09:29'),
(22, 28, 'Nuevas funcionalidades', '																								Se pide que se implementen nuevas funcionalidades para el proyecto																		', 2, '2022-02-09 09:13:48'),
(23, 23, 'Revision de pantalla de edicion de documentos', '				Se realiza la validaci&oacute;n de la pantalla de edici&oacute;n de documentos.			', 3, '2022-02-09 09:47:50'),
(24, 29, 'Actualización de excel de los redmines', '																Se actualiza el excel de los redmines que se tiene&amp;nbsp;												', 1, '2022-02-09 09:54:05'),
(25, 27, 'revisión de redmine 331840', '				revisi&oacute;n de redmine 331840			', 3, '2022-02-09 12:34:26'),
(26, 23, 'Revision de redmine pendientes de testing', '				Se realiza la validaci&oacute;n de los redmine pendientes de testing en la liberaci&oacute;n de la versi&oacute;n 1.0.0.21			', 2, '2022-02-09 12:34:29'),
(27, 20, 'Seguimiento de redmine 354318', 'Se contacta a implementadora Nayeli Soria, para validar el redmine comenta el dia de hoy que sigue en proceso de validaci&oacute;n, quedo al pendiente.', 2, '2022-02-09 13:15:50'),
(28, 20, 'Seguimiento de redmine 353783', 'Se contacto a Gerardo Embris para apoyo de validaci&oacute;n del redmine, quedo en espera de informaci&oacute;n&amp;nbsp;', 2, '2022-02-09 13:22:43'),
(29, 20, 'Seguimiento de redmine 354324', '&lt;p&gt;								Se contacto a Jorge Guerrero, para solicitar apoyo para validar el redmine , comenta que&amp;nbsp; ya lo esta validando y &amp;lt;&amp;lt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;hoy lo presento a UL-CAM para que lo validen y aprueben&amp;gt;&amp;gt;, en espera de informaci&oacute;n .&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Buena tarde&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de este redmine ya que funciona correctamente a lo solicitado.&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;						&lt;/p&gt;', 3, '2022-02-09 13:33:24'),
(30, 20, 'Seguimiento de redmine 350100', '				Se contacto a Gustavo Vel&aacute;zquez, para apoyo de validaci&oacute;n del redmine , lo cual ya fue comentado el mismo d&iacute;a de hoy, por lo que se procede al cierre de la solicitud cambiando su estado a Resuelto. &lt;span style=&quot;white-space:pre&quot;&gt;		&lt;/span&gt;										', 3, '2022-02-09 13:41:35'),
(31, 20, 'Seguimiento de redmine 354325', '&lt;p&gt;				Se contacta a implementador Johan Lozano para su apoyo en validar el redmine, quedo en espera de informaci&oacute;n.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de solicitud de acuerdo al comentario de implementador como resuelto.&lt;/span&gt;&lt;/p&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;&lt;p&gt;			&lt;/p&gt;', 3, '2022-02-09 13:43:35'),
(32, 20, 'Seguimiento de redmine 353459', '				Se contacto a Johan Lozano, para apoyo de validaci&oacute;n del redmine, quedo en espera de informaci&oacute;n,&amp;nbsp;			', 3, '2022-02-09 13:44:45'),
(33, 24, 'Levantar error en Clientes', '				Se levantara&amp;nbsp; un redmine por un error al guardar en clientes			', 3, '2022-02-09 13:45:14'),
(35, 20, 'Seguimiento de redmine 353479', '&lt;p&gt;				Se hace contacto con Jorge Guerrero para validaci&oacute;n del redmine en espera de informaci&oacute;n ..&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de redmine, debido a que implementador Jorge Guerrero valido la solicitud, creando nuevo caso&amp;nbsp;&lt;/span&gt;&lt;a class=&quot;external&quot; href=&quot;https://redmine.pwstasp.com.uy/issues/353624&quot; style=&quot;color: rgb(0, 87, 130); overflow-wrap: break-word; background-position: 0% 60%; background-repeat: no-repeat; padding-left: 12px; background-image: url(&amp;quot;../images/external.png&amp;quot;); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;https://redmine.pwstasp.com.uy/issues/353624&lt;/a&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&amp;nbsp;para validaci&oacute;n de errores en el testing realizado.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;			&lt;/p&gt;', 3, '2022-02-09 14:16:02'),
(36, 20, 'Seguimiento de redmine 352637', 'Se solicita apoyo a Francisco Barcenas para validaci&oacute;n de redmine, en espera de informaci&oacute;n.', 2, '2022-02-09 14:17:27'),
(37, 20, 'Seguimiento de redmine 352456', 'Se solicita apoyo a Francisco Barcenas, para validar el redmine , en espera de informaci&oacute;n&amp;nbsp;', 2, '2022-02-09 14:19:22'),
(38, 20, 'Seguimiento de redmine 353232', 'Se solicita apoyo a Francisco Barcenas, para validar el redmine en espera de informaci&oacute;n', 2, '2022-02-09 14:21:11'),
(39, 20, 'Seguimiento de redmine 350549  ', '&lt;p&gt;				Se contacta a &Aacute;lvaro Jim&eacute;nez para validar el redmine ,&lt;span style=&quot;font-size: 1rem;&quot;&gt;en espera de informaci&oacute;n.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;En comunicacion con&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&Aacute;lvaro Jim&eacute;nez contesta:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Hola Ana, ese redmine es de la versi&oacute;n 1.0.3 de la DLL SBORParaiso y luego de ese se creo la versi&oacute;n 1.0.4 y en su momento se probo y ya se puso un productivo..... se procede al cierre&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;			&lt;/p&gt;', 3, '2022-02-09 14:24:48'),
(40, 24, 'levantar error en Documentos Emitidos', '				levantar error&amp;nbsp; de Undefined			', 3, '2022-02-09 14:28:42'),
(41, 22, 'ABMTiposdeVendedor', 'se valido tipo de vendedor no tiene problema&amp;nbsp;', 3, '2022-02-09 14:30:24'),
(42, 22, 'ABMTiposempaque', '				&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;602&quot; style=&quot;width: 452pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\r\n  &lt;td height=&quot;20&quot; width=&quot;602&quot; style=&quot;height:15.0pt;width:452pt&quot;&gt;1.- en la tabla\r\n  descripci&oacute;n c&oacute;digo al abrir se encuentra cortado se tiene que ampliar\r\n  manualmente&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;																	', 3, '2022-02-09 14:30:42'),
(43, 22, 'ABMTiposEncuestas', '				&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;602&quot; style=&quot;width: 452pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\r\n  &lt;td height=&quot;20&quot; width=&quot;602&quot; style=&quot;height:15.0pt;width:452pt&quot;&gt;campo unidad de\r\n  negocio ampliarla se ve cortada la opcion escogida, en la Mensaje: Error\r\n  asignado valor a la propiedad operadorvalidacion. Invalid field\r\n  assignmentpesta&ntilde;respuestas al acticar el check de &quot;usar modelo\r\n  respuestas&quot;en core se bloquea el agregar nuevo documento de respuestas\r\n  en pwst2 si deja agregar nuevo documento; al guardar salta error&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;																	', 3, '2022-02-09 14:31:03'),
(44, 22, 'ABMTiposPol', '				Reviso pantalla de pol&iacute;ticas de venta no presento alg&uacute;n error', 3, '2022-02-09 14:31:19'),
(45, 22, 'ABMTipospopup', 'se empieza a revisar pantalla&amp;nbsp;', 2, '2022-02-09 14:31:33'),
(46, 22, 'ABMTraducciones', '							', 1, '2022-02-09 14:31:57'),
(47, 22, 'ABMUbicacionesActivos', '							', 1, '2022-02-09 14:32:10'),
(48, 22, 'ABMUbicacionesenDeposito', '							', 1, '2022-02-09 14:32:23'),
(49, 27, 'Revisar redmines levantados de Diseño', '				Checar que los redmines ya no est&eacute;n pasando en la versi&oacute;n 1.0.0.21			', 3, '2022-02-09 14:52:22'),
(50, 37, 'Creacion del Script de pruebas', '														', 3, '2022-02-09 16:10:54'),
(51, 39, 'Creación de Script  Opciones', '																					', 3, '2022-02-09 18:29:32'),
(52, 29, 'colocar por quien fue Finalizado los redmines', '														', 3, '2022-02-10 09:13:16'),
(53, 44, 'Revisión de las pantallas dadas', '																					', 3, '2022-02-10 10:13:21'),
(54, 45, 'Revisión de Plugin Beta', '														', 3, '2022-02-10 10:20:48'),
(55, 46, '1.- Reunion ', '				Reunion de automatizacion			', 3, '2022-02-10 11:00:59'),
(56, 29, 'Script de Traducción', '				Realizar script de Traducci&oacute;n			', 3, '2022-02-10 11:07:52'),
(57, 47, '1.- Correccion de automatizaciones', '								Realizar correcciones						', 1, '2022-02-10 13:00:51'),
(58, 48, '1.- Capacitacion', '														', 3, '2022-02-10 13:21:47'),
(59, 49, 'Reunión Avance 10/02/2022', '				Reuni&oacute;n Avance 10/02/2022										', 3, '2022-02-10 14:14:58'),
(61, 50, 'Mapeo de pruebas PWST 2.0 en Python', '																					', 3, '2022-02-10 16:30:31'),
(62, 50, 'Mapeo de pruebas ReponerYA en Python', '														', 3, '2022-02-10 16:30:50'),
(63, 52, 'Creación de documentos ', '														', 3, '2022-02-10 17:21:22'),
(64, 20, 'Seguimiento de redmine 354531', '&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se contacta a Laura P&eacute;rez, para solicitar apoyo para validar la solicitud, estamos al pendiente de informaci&oacute;n.&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;', 2, '2022-02-10 18:30:03'),
(65, 29, 'Script  de IMEI', '														', 3, '2022-02-10 18:34:15'),
(66, 53, 'Redacción de documentación', '														', 3, '2022-02-11 09:17:58'),
(67, 29, 'Script de Opciones personalizadas', '				Creaci&oacute;n de Script			', 3, '2022-02-11 09:19:29'),
(68, 54, 'Reunión Avance 10/02/2022', 'Reuni&oacute;n para revisi&oacute;n de avance PWST 2.0&amp;nbsp; 10/02/2022', 3, '2022-02-11 09:32:30'),
(69, 50, 'Modificación de pruebas automatizadas de reponerya en python', '																					', 3, '2022-02-11 09:50:13'),
(70, 50, 'Modificación de pruebas automatizadas de PWST 2.0 en python', '														', 2, '2022-02-11 09:50:33'),
(71, 25, 'Redmine', '				Levantamiento de Redmine sobre los errores detectados			', 3, '2022-02-11 09:55:36'),
(72, 55, 'Documentación', '				Se inicia el proceso de redacci&oacute;n de la documentaci&oacute;n sobre el plugin			', 3, '2022-02-11 10:11:55'),
(73, 56, 'Reunion con Direccion Televentas', '														', 3, '2022-02-11 10:28:25'),
(74, 42, 'Concentrado de errores ', 'Fin de las actividades', 3, '2022-02-11 11:51:43'),
(75, 29, 'Control de redmines abiertos por pantalla', '								Se har&aacute; un Excel para colocar los redmines que hay por pantalla						', 3, '2022-02-11 12:07:36'),
(76, 57, 'Capacitación de televentas', '														', 3, '2022-02-11 13:10:43'),
(77, 49, 'Reunión de avance 11/02/2022', '														', 3, '2022-02-11 14:37:11'),
(78, 44, 'Reunión 11/02/2022', '												Revisi&oacute;n de avance									', 3, '2022-02-11 17:09:21'),
(79, 29, 'Script de resoluciones', '				Crear script de resoluci&oacute;nes			', 2, '2022-02-14 09:11:45'),
(80, 58, 'Creación de Script de Pantallas de PWST 2.0', '																					', 1, '2022-02-14 09:58:06'),
(81, 23, 'Reuniones desarrollo - Testing', 'Reuniones de seguimiento Desarrollo - Testing', 2, '2022-02-14 10:20:04'),
(82, 55, 'Revisión de errores previos reportados en Betas', '														', 3, '2022-02-14 10:28:28'),
(83, 29, 'Script de reserva de inventario', 'Generar script', 1, '2022-02-14 12:04:52'),
(84, 59, 'Explicación de revisión de pantallas', '														', 3, '2022-02-14 12:07:22'),
(85, 53, 'Documenta Filtran', '							', 2, '2022-02-14 13:31:25'),
(86, 61, 'Generación de automatización de Televentas ', 'Generaci&oacute;n de automatizaci&oacute;n de Televentas&amp;nbsp;							', 1, '2022-02-14 13:35:12'),
(87, 53, 'Script Filtran', '				Se desarrollar&aacute; el script de pruebas para Filtran			', 2, '2022-02-14 13:41:00'),
(88, 49, 'capacitación reserva de inventario', '														', 3, '2022-02-14 14:02:53'),
(89, 18, '2. Script de Pruebas', '								Elaboracion de Script de pruebas del Modulo de Televentas						', 3, '2022-02-14 15:15:22'),
(90, 20, 'Seguimiento de redmine 355030', 'se contacta a Jorge Guerrero para poyo de validaci&oacute;n quedamos al pendiente de informaci&oacute;n.', 2, '2022-02-14 15:54:00'),
(91, 20, 'Seguimiento de redmine 354869', 'se contacta a Jordi fabian, para apoyo de validaci&oacute;n , comenta que se encuentra realizando pruebas, quedo al pendiente de informaci&oacute;n.', 2, '2022-02-14 15:56:01'),
(92, 62, 'Revisión de Pantallas PWST 2.0', '														', 2, '2022-02-14 16:12:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `conectado` varchar(250) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `conectado`, `type`, `avatar`, `date_created`) VALUES
(15, 'Christian ', 'Hernandez', 'chernandez', 'c26634539cda8f3cc09b9d702994067f', '0', 1, '1644352020_christian.jpeg', '2022-02-08 14:27:53'),
(16, 'Jesus', 'Zamudio', 'jzamudio', 'c26634539cda8f3cc09b9d702994067f', '1', 1, '1644354300_jesus.png', '2022-02-08 15:05:06'),
(17, 'Bárbara ', 'Sánchez ', 'bsanchez', 'c26634539cda8f3cc09b9d702994067f', '1', 1, '1644354840_barbara.png', '2022-02-08 15:14:53'),
(18, 'Fernando ', 'Banda ', 'fbanda', 'c26634539cda8f3cc09b9d702994067f', '0', 3, '1644355320_fernando.jpg', '2022-02-08 15:22:30'),
(19, 'Abraham ', 'Palestina ', 'apalestina', 'c26634539cda8f3cc09b9d702994067f', '0', 3, '1644355380_abraham.jpg', '2022-02-08 15:23:36'),
(20, 'Francisco ', 'Calderón', 'fcalderon', 'c26634539cda8f3cc09b9d702994067f', '0', 3, '1644355440_francisco.png', '2022-02-08 15:24:31'),
(21, 'Ana ', 'Saucedo ', 'afigueroa', 'c26634539cda8f3cc09b9d702994067f', '0', 3, '1644355500_ana.png', '2022-02-08 15:25:52'),
(23, 'Abraham ', 'Palestina', 'supapalestina', 'c26634539cda8f3cc09b9d702994067f', '0', 1, 'no-image-available.png', '2022-02-09 18:24:43'),
(27, 'Jorge', 'Sandi', 'esandi', 'c26634539cda8f3cc09b9d702994067f', '1', 1, 'no-image-available.png', '2022-03-30 09:25:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_client`
--

CREATE TABLE `users_client` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `conectado` varchar(250) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(63, 18, 17, '							Se inicia con la b&uacute;squeda de errores						', '', '2022-02-08', '04:05:00', '05:05:00', 16, 1, '2022-02-08 16:04:53'),
(64, 24, 19, '							&lt;p&gt;							Inicio a Grabar la evidencia y crear el redmine de error a carga definitiva de liquidaci&oacute;n&lt;/p&gt;&lt;p&gt;Se levanto el redmine&amp;nbsp;354317&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;						', '', '2022-02-08', '18:30:00', '19:00:00', 17, 7, '2022-02-08 17:42:03'),
(65, 28, 21, '							Se comienza con la correcci&oacute;n de errores&amp;nbsp;						', '', '2022-02-09', '09:09:00', '13:08:00', 16, 4, '2022-02-09 09:10:00'),
(66, 23, 23, '													', '', '2022-02-09', '09:47:00', '00:00:00', 18, -9.78333, '2022-02-09 09:48:17'),
(67, 29, 24, '&lt;p&gt;							Actualizar excel del estatus&lt;/p&gt;&lt;p&gt;Se actualizo el estatus, se creo excel de redmines pendientes&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-09', '10:00:00', '12:00:00', 17, 2, '2022-02-09 09:57:22'),
(68, 27, 25, '							&lt;p&gt;							Se inicio la revisi&oacute;n del redmine. Se marco como resuelto&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;						', '', '2022-02-09', '12:30:00', '12:52:00', 17, 11.8667, '2022-02-09 12:34:55'),
(69, 23, 26, 'Se inicia tarea a las 12:35 pm', '', '2022-02-09', '12:34:00', '00:00:00', 18, -12.5667, '2022-02-09 12:35:09'),
(70, 28, 22, '							Se comienza ha crear las nuevas funcionalidades						', '', '2022-02-09', '13:25:00', '18:50:00', 16, 6.83333, '2022-02-09 13:25:56'),
(71, 24, 33, '&lt;p&gt;							Creaci&oacute;n de evidencia.&lt;/p&gt;&lt;p&gt;Se levanto redmine&amp;nbsp;&lt;span style=&quot;color: rgb(85, 85, 85); font-family: &amp;quot;Trebuchet MS&amp;quot;, Verdana, sans-serif; font-size: 20px;&quot;&gt;354429&lt;/span&gt;&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-09', '13:45:00', '14:20:00', 17, 2.33333, '2022-02-09 13:45:39'),
(72, 23, 26, 'Se valid&oacute; el redmine&amp;nbsp;352193&amp;nbsp; y se da como resuelto', '', '2022-02-09', '13:51:00', '13:51:00', 18, -12, '2022-02-09 13:52:07'),
(73, 23, 26, '														&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;Se valid&oacute; el redmine&amp;nbsp;352194&amp;nbsp; y se da como resuelto&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																									', '', '2022-02-09', '14:30:00', '14:31:00', 18, 2.51667, '2022-02-09 14:30:56'),
(74, 24, 40, '&lt;p&gt;							Creaci&oacute;n del redmine&lt;/p&gt;&lt;p&gt;Se creo redmine&amp;nbsp;354440&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-09', '14:38:00', '15:03:00', 17, 3.05, '2022-02-09 14:38:20'),
(75, 29, 24, '														Listado de redmines Nuevos las ultimas 4 semanas. Se organizo como llevar el control						', '', '2022-02-09', '15:16:00', '17:30:00', 17, 5.5, '2022-02-09 15:17:06'),
(76, 27, 49, '																												&lt;span style=&quot;font-size: 12px;&quot;&gt;Se inicia la Tarea. Se reviso redmine&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 12px; color: rgb(85, 85, 85); font-family: &amp;quot;Trebuchet MS&amp;quot;, Verdana, sans-serif;&quot;&gt;353618,&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 12px; color: rgb(85, 85, 85); font-family: &amp;quot;Trebuchet MS&amp;quot;, Verdana, sans-serif;&quot;&gt;353608,&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 11px; color: rgb(85, 85, 85); font-family: &amp;quot;Trebuchet MS&amp;quot;, Verdana, sans-serif;&quot;&gt;353281,&amp;nbsp;&lt;/span&gt;&lt;font color=&quot;#555555&quot; face=&quot;Trebuchet MS, Verdana, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;352667 los cuales se cerraron porque ya se arreglaron&lt;/span&gt;&lt;/font&gt;', '', '2022-02-09', '17:13:00', '18:30:00', 17, 6.5, '2022-02-09 17:14:01'),
(77, 39, 51, 'Se inici&oacute; la creaci&oacute;n del script de opciones', '', '2022-02-09', '18:38:00', '00:00:00', 20, -30.6333, '2022-02-09 18:39:12'),
(78, 23, 26, '&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;Se valid&oacute; el redmine&amp;nbsp;353030&amp;nbsp; y se da como resuelto&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;													', '', '2022-02-09', '18:39:00', '18:39:00', 18, -12, '2022-02-09 18:39:57'),
(79, 20, 35, '&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de redmine, debido a que implementador Jorge Guerrero valido la solicitud, creando nuevo caso&amp;nbsp;&lt;/span&gt;&lt;a class=&quot;external&quot; href=&quot;https://redmine.pwstasp.com.uy/issues/353624&quot; style=&quot;color: rgb(0, 87, 130); overflow-wrap: break-word; background-position: 0% 60%; background-repeat: no-repeat; padding-left: 12px; background-image: url(&amp;quot;../images/external.png&amp;quot;); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;https://redmine.pwstasp.com.uy/issues/353624&lt;/a&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&amp;nbsp;para validaci&oacute;n de errores en el testing realizado.&lt;/span&gt;													', '', '2022-02-09', '18:45:00', '00:00:00', 21, -30.75, '2022-02-09 18:52:21'),
(80, 20, 39, '&lt;p&gt;en comunicacion con &Aacute;lvaro Jim&eacute;nez contesta&amp;lt;&amp;lt;Hola Ana, ese redmine es de la versi&oacute;n 1.0.3 de la DLL SBORParaiso y luego de ese se creo la versi&oacute;n 1.0.4 y en su momento se probo y ya se puso un productivo.....&amp;gt;&amp;gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Se procede al cierre de redmine debido a que no hubo prueba en versi&oacute;n instrucciones de christian&amp;nbsp;&lt;/p&gt;', '', '2022-02-09', '19:04:00', '19:00:00', 21, -12.0667, '2022-02-09 19:07:07'),
(81, 37, 50, 'Creacion final de Script de pruebas de Televentas 1.0.0', '', '2022-02-09', '19:58:00', '20:00:00', 19, -11.9667, '2022-02-09 19:59:36'),
(82, 28, 22, '&lt;p&gt;							Se continua con la creaci&oacute;n de nuevas funcionalidades&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Se pone en pausa la actividad por reunion&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-10', '09:11:00', '11:00:00', 16, -1, '2022-02-10 09:12:12'),
(83, 29, 52, '							Inicio de actividad. Se colocaron por que estaba Finalizado y quien lo trabajo', '', '2022-02-10', '09:13:00', '10:00:00', 17, -2, '2022-02-10 09:13:44'),
(84, 23, 26, 'Se realiz&oacute; la validaci&oacute;n del redmine 352969 y se da por resuelto', '', '2022-02-10', '09:28:00', '09:30:00', 18, -11.9667, '2022-02-10 09:29:40'),
(85, 23, 26, '&lt;p&gt;Se valid&oacute; el redmine 353017 y se da por resuelto&lt;/p&gt;', '', '2022-02-10', '09:35:00', '09:35:00', 18, -12, '2022-02-10 09:35:49'),
(86, 23, 26, 'Se valid&oacute; el redmine 352802 y se da por rechazado, se levanta el redmine 354500', '', '2022-02-10', '10:06:00', '10:06:00', 18, -12, '2022-02-10 10:08:23'),
(87, 44, 53, '&lt;p&gt;							Inicio de revisi&oacute;n. Se checaron los 2 errores encontrados de Dise&ntilde;o&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-10', '10:13:00', '10:45:00', 17, -1.25, '2022-02-10 10:14:13'),
(88, 45, 54, '							Revision del plugin, Validacion de redmine&amp;nbsp;353361 -&amp;nbsp;353581 -&amp;nbsp;352790', '', '2022-02-10', '10:20:00', '12:20:00', 19, 0.333333, '2022-02-10 10:21:15'),
(89, 46, 55, '&lt;p&gt;							Da comienzo a la reunion&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Se finaliza la reunion&lt;/li&gt;&lt;/ol&gt;', '', '2022-02-10', '11:03:00', '12:50:00', 16, 0.833333, '2022-02-10 11:04:04'),
(90, 29, 56, '							Se inicio a crear el Script. Se creo el script de traducciones&amp;nbsp;', '', '2022-02-10', '11:10:00', '13:33:00', 17, 1.55, '2022-02-10 11:11:01'),
(91, 47, 57, '&lt;p&gt;							Se da comienzo a las correcciones&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Se pone en pausa por capacitacion&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-10', '13:01:00', '13:24:00', 16, 1.4, '2022-02-10 13:01:38'),
(92, 48, 58, '&lt;p&gt;							Da inicio la capacitacion&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Se finaliza la capacitacion&lt;/li&gt;&lt;/ol&gt;', '', '2022-02-10', '13:21:00', '15:05:00', 16, 3.08333, '2022-02-10 13:22:11'),
(93, 22, 41, 'se hizo revisi&oacute;n de pantalla faltaa validar parapresentar redmine', '', '2022-02-09', '13:27:00', '13:28:00', 21, -11.9833, '2022-02-10 13:28:55'),
(94, 22, 42, 'verificar si error encontrado se tiene que reportar&amp;nbsp;', '', '2022-02-09', '13:29:00', '00:00:00', 21, -25.4833, '2022-02-10 13:30:02'),
(95, 22, 45, 'se empieza a revisar pantalla', '', '2022-02-10', '14:15:00', '00:00:00', 21, -26.25, '2022-02-10 14:15:32'),
(96, 49, 59, 'revisi&oacute;n de traducciones, revisi&oacute;n control de los redmines', '', '2022-02-10', '14:15:00', '15:27:00', 17, 3.45, '2022-02-10 14:15:50'),
(97, 22, 45, '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;602&quot; style=&quot;width: 452pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\r\n  &lt;td height=&quot;20&quot; width=&quot;602&quot; style=&quot;height:15.0pt;width:452pt&quot;&gt;En el campo\r\n  orden&amp;nbsp; al poner n&uacute;meros a limite de su\r\n  capacidad y al cambiar de campo salta un mensaje de error inccorrecto\r\n  &amp;lt;&amp;lt;Por favor escriba un n&uacute;mero menor que 32768 para el campo Peso&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;													', '', '2022-02-10', '14:29:00', '00:00:00', 21, -26.4833, '2022-02-10 14:29:26'),
(99, 28, 22, '&lt;p&gt;														Se continua con la actividad&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Se concluye la actividad&lt;/li&gt;&lt;/ul&gt;', '', '2022-02-10', '15:47:00', '17:04:00', 16, 5.06667, '2022-02-10 15:48:16'),
(100, 39, 51, 'Se termin&oacute; la creaci&oacute;n del Script', '', '2022-02-10', '16:28:00', '16:28:00', 20, -12, '2022-02-10 16:28:49'),
(101, 50, 61, 'Se inici&oacute; con el mapeo de las pruebas hechas en python de PWST 2.0', '', '2022-02-10', '16:30:00', '00:00:00', 20, -28.5, '2022-02-10 16:31:21'),
(102, 29, 24, '							Colocar redmines resueltos						', '', '2022-02-10', '16:31:00', '17:41:00', 17, 1.88333, '2022-02-10 16:31:43'),
(103, 20, 28, 'Nuevamente se hace contacto con el implementador Gerardo Embris, comenta que aun no lo programa que tiene otras prioridades avisara cuando lo realice.&amp;nbsp;', '', '2022-02-10', '16:33:00', '16:36:00', 21, -11.95, '2022-02-10 16:36:54'),
(104, 20, 31, '&lt;p style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Buena tarde&lt;/p&gt;&lt;p style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se hace contacto nuevamente con Johan Lozano, aun no ah tenido tiempo de validar, seguimos en espera de informaci&oacute;n.&lt;/p&gt;&lt;p style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/p&gt;													', '', '2022-02-10', '17:01:00', '17:02:00', 21, -11.9833, '2022-02-10 17:02:09'),
(105, 20, 32, '&lt;p style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Buena tarde&lt;/p&gt;&lt;p style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se hace contacto nuevamente con Johan Lozano, aun no ah tenido tiempo de validar, seguimos en espera de informaci&oacute;n.&lt;/p&gt;&lt;p style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/p&gt;													', '', '2022-02-10', '17:02:00', '00:00:00', 21, -29.0333, '2022-02-10 17:02:51'),
(106, 52, 63, '																										', '', '2022-02-10', '17:21:00', '18:27:00', 19, 2.65, '2022-02-10 17:21:35'),
(107, 50, 62, 'Se inici&oacute; con el mapeo de las pruebas hechas en python de ReponerYA', '', '2022-02-10', '17:36:00', '00:00:00', 20, -29.6, '2022-02-10 17:37:11'),
(108, 18, 18, '							Da comienzo la automatizaci&oacute;n , se da fin por&amp;nbsp; hora de salida', '', '2022-02-10', '17:45:00', '19:03:00', 16, 3.25, '2022-02-10 17:46:10'),
(109, 20, 64, '&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se contacta a Laura P&eacute;rez, para solicitar apoyo para validar la solicitud, estamos al pendiente de informaci&oacute;n.&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;													', '', '2022-02-10', '18:30:00', '00:00:00', 21, -34.3, '2022-02-10 18:30:35'),
(110, 29, 65, '							Creaci&oacute;n de script IMEI.&amp;nbsp; Terminaci&oacute;n de script', '', '2022-02-10', '18:34:00', '19:01:00', 17, 3.21667, '2022-02-10 18:35:07'),
(111, 18, 18, '&lt;ol&gt;&lt;li&gt;							Se continua con las automatizaciones&amp;nbsp;&lt;/li&gt;&lt;li&gt;Se da fin por termino de horario, se continua el proximo dia&lt;/li&gt;&lt;/ol&gt;', '', '2022-02-11', '09:14:00', '19:00:00', 16, 3.2, '2022-02-11 09:14:40'),
(112, 53, 66, 'Se comienza la redacci&oacute;n de la documentaci&oacute;n', '', '2022-02-11', '09:18:00', '00:00:00', 22, -25.1, '2022-02-11 09:18:29'),
(113, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;p&gt;Se valid&oacute; el redmine 352787 y se da por resuelto&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:21:00', '13:18:00', 18, -2.5, '2022-02-11 09:22:09'),
(114, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;p&gt;Se valid&oacute; el redmine 352799 y se da por resuelto&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:22:00', '13:18:00', 18, -2.5, '2022-02-11 09:22:40'),
(115, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;p&gt;Se valid&oacute; el redmine 352765 y se da por resuelto&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:22:00', '13:19:00', 18, -2.48333, '2022-02-11 09:23:09'),
(116, 23, 26, '							Se valid&oacute; el redmine&amp;nbsp;352779&amp;nbsp; y se da por resuelto						', '', '2022-02-10', '09:23:00', '13:19:00', 18, -2.48333, '2022-02-11 09:23:45'),
(117, 23, 26, '							&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 352780 y se da por resuelto&lt;/font&gt;																			', '', '2022-02-10', '09:23:00', '13:19:00', 18, -2.48333, '2022-02-11 09:24:05'),
(118, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 352792 y se da por resuelto&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:24:00', '13:19:00', 18, -2.48333, '2022-02-11 09:24:25'),
(119, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 314810 y se da por resuelto&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:24:00', '13:19:00', 18, -2.48333, '2022-02-11 09:24:50'),
(120, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 353029 y se da por resuelto&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:24:00', '13:19:00', 18, -2.48333, '2022-02-11 09:25:08'),
(121, 23, 26, '							Se realiza la validaci&oacute;n de la funcionalidad de Recalculo de precios y Pol&iacute;ticas y se levantan los redmine 354559 y 354560						', '', '2022-02-10', '09:25:00', '13:20:00', 18, -2.46667, '2022-02-11 09:26:07'),
(122, 23, 26, '							&lt;div style=&quot;color: rgb(102, 102, 102);&quot;&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 331846 y se da por resuelto&lt;/font&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:26:00', '13:20:00', 18, -2.46667, '2022-02-11 09:26:35'),
(123, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 331847 y se da por rechazado, se levanta el redmine 354413&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:27:00', '13:20:00', 18, -2.46667, '2022-02-11 09:27:47'),
(124, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 352327 y se da por resuelto&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:27:00', '13:20:00', 18, -2.46667, '2022-02-11 09:28:10'),
(125, 23, 26, '							&lt;div class=&quot;post&quot; style=&quot;border-bottom: 1px solid rgb(173, 181, 189); margin-bottom: 15px; padding-bottom: 15px;&quot;&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;Se valid&oacute; el redmine 352320 y se da por resuelto&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font color=&quot;#666666&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;																			', '', '2022-02-10', '09:28:00', '13:20:00', 18, -2.46667, '2022-02-11 09:28:25'),
(126, 29, 67, '&lt;p&gt;							inicio del script. Terminaci&oacute;n de script&lt;/p&gt;', '', '2022-02-11', '09:38:00', '11:54:00', 17, -3.9, '2022-02-11 09:38:33'),
(127, 50, 70, 'Se inicia la modificaci&oacute;n de las pruebas automatizadas de ReponerYA en python', '', '2022-02-11', '09:50:00', '00:00:00', 20, -21.8333, '2022-02-11 09:51:22'),
(128, 25, 71, 'Redmine&amp;nbsp; #354689', '', '2022-02-11', '09:55:00', '00:00:00', 22, -25.7167, '2022-02-11 09:56:26'),
(129, 55, 72, '													', '', '2022-02-11', '10:12:00', '00:00:00', 22, -26, '2022-02-11 10:12:12'),
(130, 56, 73, '																										', '', '2022-02-11', '10:28:00', '11:07:00', 19, -4.68333, '2022-02-11 10:28:37'),
(131, 42, 74, '							Conversor 3,4,5', '', '2021-02-10', '11:51:00', '13:25:00', 22, -2.38333, '2022-02-11 11:58:45'),
(132, 29, 75, '							&lt;p&gt;														Inicio de la tarea. Se llego a la mitad&amp;nbsp; de las pantallas. Se anotan redmines nuevos en el control y se revisan los redmines&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;						', '', '2022-02-11', '12:07:00', '17:07:00', 17, 1.31667, '2022-02-11 12:08:30'),
(133, 50, 69, 'Se termina la modificaci&oacute;n de las pruebas de reponerya en python', '', '2022-02-11', '12:22:00', '12:22:00', 20, -12, '2022-02-11 12:22:52'),
(134, 50, 70, 'Se inicia la modificaci&oacute;n de pruebas de PWST 2.0 hechas&amp;nbsp; en python', '', '2022-02-11', '12:26:00', '00:00:00', 20, -24.4333, '2022-02-11 12:26:48'),
(135, 57, 76, 'Se inicia la capacitaci&oacute;n de televentas', '', '2022-02-11', '13:10:00', '00:00:00', 20, -25.1667, '2022-02-11 13:11:02'),
(136, 57, 76, 'Capacitaci&oacute;n televentas', '', '2022-02-11', '13:34:00', '00:00:00', 21, -29.3667, '2022-02-11 13:34:42'),
(137, 57, 76, 'Se finaliz&oacute; la capacitaci&oacute;n de televentas', '', '2022-02-11', '14:34:00', '14:34:00', 20, -12, '2022-02-11 14:34:51'),
(138, 49, 0, 'explicaci&oacute;n de resoluciones', '', '0000-00-00', '14:37:00', '00:00:00', 17, -30.4167, '2022-02-11 14:37:26'),
(139, 22, 42, 'Se reviso pantalla y no se reporta alg&uacute;n error por lo que ya esta finalizado', '', '2022-02-11', '14:36:00', '00:00:00', 21, -30.4, '2022-02-11 14:37:32'),
(140, 49, 77, '																					Explicaci&oacute;n de resoluciones																		', '', '2022-02-11', '14:37:00', '18:42:00', 17, 2.9, '2022-02-11 14:38:14'),
(141, 44, 78, '							Inicio de reuni&oacute;n. Fin', '', '2022-02-11', '17:09:00', '17:49:00', 17, 2.01667, '2022-02-11 17:09:55'),
(142, 22, 43, 'Se levantan redmine 354721 y&amp;nbsp; 354755&lt;br&gt;&amp;nbsp;&lt;br&gt;', '', '2022-02-11', '17:09:00', '00:00:00', 21, -32.95, '2022-02-11 17:11:17'),
(143, 22, 41, 'Se reviso pantalla no tuvo problema', '', '2022-02-11', '17:23:00', '00:00:00', 21, -33.1833, '2022-02-11 17:24:03'),
(144, 20, 31, '&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de solicitud de acuerdo al comentario de implementador como resuelto.&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;', '', '2022-02-11', '17:48:00', '00:00:00', 21, -33.6, '2022-02-11 17:48:30'),
(145, 20, 34, '&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de solicitud de acuerdo al comentario de implementador como resuelto.&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;													', '', '2022-02-11', '17:49:00', '00:00:00', 21, -33.6167, '2022-02-11 17:49:40'),
(146, 20, 34, '&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;Se procede al cierre de solicitud de acuerdo al comentario de implementador como resuelto.&lt;/span&gt;&lt;br style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;span style=&quot;color: rgb(72, 72, 72); font-family: &amp;quot;Lucida Grande&amp;quot;, verdana, arial, helvetica, sans-serif; font-size: 12px;&quot;&gt;saludos&lt;/span&gt;													', '', '2022-02-11', '17:50:00', '00:00:00', 21, -33.6333, '2022-02-11 17:50:20'),
(147, 20, 64, '&lt;div&gt;Se hace nuevamente contacto con Laura P&eacute;rez por lo que contesta:&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&amp;lt;&amp;lt;Hola Ana&amp;nbsp;&lt;/div&gt;&lt;div&gt;yo lo valide con unas pruebas iniciales, pero necesitamos que el cliente lo pruebe para validar si esta correcto .&amp;gt;&amp;gt;&lt;/div&gt;													', '', '2022-02-11', '17:58:00', '00:00:00', 21, -33.7667, '2022-02-11 17:59:48'),
(148, 50, 61, 'Se termina el mapeo de las pruebas automatizadas en python de pwst 2.0', '', '2022-02-11', '18:23:00', '18:23:00', 20, -12, '2022-02-11 18:23:41'),
(149, 50, 62, 'Se termina el mapeo de las pruebas automatizadas en python de ReponerYA', '', '2022-02-11', '18:23:00', '18:23:00', 20, -12, '2022-02-11 18:24:17'),
(150, 44, 78, '														Explicaci&oacute;n de cerrar liquidaci&oacute;n. se empezo 6:40												', '', '2022-02-11', '19:13:00', '19:14:00', 17, 3.43333, '2022-02-11 19:14:21'),
(151, 18, 18, '&lt;ol&gt;&lt;li&gt;							Se reanudan las automatizaciones&lt;/li&gt;&lt;li&gt;Se pone en pausa por mantenimiento de ambiente&lt;/li&gt;&lt;/ol&gt;', '', '2022-02-14', '09:08:00', '14:01:00', 16, -1.78333, '2022-02-14 09:08:39'),
(152, 29, 24, '							&lt;p&gt;							revisi&oacute;n de estatus, checar que el redmine&amp;nbsp; esten completos.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Desarrollo puso 2 mal reportado. tipo de presupuesto el error del redmine es diferente. Se hizo reuni&oacute;n con Fernando de 15min.&amp;nbsp;&lt;/p&gt;&lt;p&gt;todas las pantallas que tienen redmines si estan en status de error.&amp;nbsp;&lt;/p&gt;						', '', '2022-02-14', '09:14:00', '13:09:00', 17, -2.65, '2022-02-14 09:19:46'),
(153, 58, 80, '							Se termina por el d&iacute;a de hoy el script de pantallas', '', '2022-02-14', '09:58:00', '16:09:00', 20, 0.35, '2022-02-14 09:58:38'),
(154, 55, 82, 'Validacion de errores reportados previos y validacion de escanarios', '', '2022-02-14', '10:28:00', '12:25:00', 19, -3.38333, '2022-02-14 10:28:45'),
(155, 23, 81, '							Se realiza la reuni&oacute;n de seguimiento de desarrollo del proyecto 2.0 la hora de inicio es 10:04 y la hora de termino es&amp;nbsp; 10:44&lt;span style=&quot;white-space:pre&quot;&gt;			&lt;/span&gt;																			', '', '2022-02-14', '10:21:00', '13:20:00', 18, -2.46667, '2022-02-14 10:44:55'),
(156, 59, 0, 'inicio', '', '0000-00-00', '12:07:00', '00:00:00', 17, -27.9167, '2022-02-14 12:07:30'),
(157, 59, 84, '							Explicaci&oacute;n de revisi&oacute;n de pantallas. Se inicio a las 12						', '', '2022-02-14', '12:43:00', '12:44:00', 17, -3.06667, '2022-02-14 12:44:07'),
(159, 53, 85, 'Se contin&uacute;a la redacci&oacute;n de la documentaci&oacute;n sobre la capacitaci&oacute;n de Filtran', '', '2022-02-14', '13:31:00', '00:00:00', 22, -29.3167, '2022-02-14 13:32:14'),
(160, 29, 79, '&lt;p&gt;							1. Se empieza a realizar el script2. se detuvo por capacitaci&oacute;n&lt;/p&gt;&lt;p&gt;						&lt;/p&gt;', '', '2022-02-14', '13:34:00', '14:02:00', 17, -1.76667, '2022-02-14 13:35:15'),
(161, 61, 86, '							Inicio de automatizaci&oacute;n de televentas						', '', '2022-02-14', '13:35:00', '15:27:00', 18, -0.35, '2022-02-14 13:35:36'),
(162, 53, 87, 'Se sigue el dise&ntilde;o del script para las pruebas', '', '2022-02-14', '13:41:00', '00:00:00', 22, -29.4833, '2022-02-14 13:45:03'),
(163, 49, 88, '&lt;p&gt;							1. inicio de capacitaci&oacute;n.&lt;/p&gt;&lt;p&gt;2. Terminaci&oacute;n de reuni&oacute;n&lt;/p&gt;', '', '2022-02-14', '14:03:00', '15:56:00', 17, 0.133333, '2022-02-14 14:03:25'),
(164, 28, 22, '							Se agregan las nuevas funcionalidades solicitadas						', '', '2022-02-14', '14:04:00', '17:24:00', 16, 2.56, '2022-02-14 14:04:42'),
(165, 18, 89, 'Se inicia la actividad a las 13:45 pm del dia 14 de Febrero', '', '2022-02-14', '15:16:00', '15:23:00', 19, -0.416667, '2022-02-14 15:16:17'),
(166, 62, 92, 'Se inicia la revisi&oacute;n de pantallas de PWST 2.0', '', '2022-02-14', '16:12:00', '00:00:00', 20, -32, '2022-02-14 16:12:36'),
(167, 23, 26, 'Revision de redmine pendientes de testing', '', '2022-02-14', '17:09:00', '00:00:00', 18, -32.95, '2022-02-14 17:10:10'),
(168, 29, 79, '1. se continua con el script', '', '2022-02-14', '17:11:00', '00:00:00', 17, -32.9833, '2022-02-14 17:12:11'),
(169, 23, 81, '&lt;p&gt;&lt;span style=&quot;font-family: Impact;&quot;&gt;Prueba imagen&lt;/span&gt;&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;hola&lt;/td&gt;&lt;td&gt;hola&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;hola&lt;/td&gt;&lt;td&gt;hola&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;img src=&quot;data:image/png;base64,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&quot; style=&quot;width: 199px;&quot; data-filename=&quot;image.png&quot;&gt;&lt;span style=&quot;font-family: Impact;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Impact;&quot;&gt;﻿&lt;/span&gt;&lt;/p&gt;', '', '2022-03-01', '17:20:00', '00:00:00', 16, -33.1333, '2022-03-01 17:21:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subtype`
--
ALTER TABLE `subtype`
  ADD PRIMARY KEY (`id_subtype`);

--
-- Indices de la tabla `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `question`
--
ALTER TABLE `question`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `subtype`
--
ALTER TABLE `subtype`
  MODIFY `id_subtype` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
