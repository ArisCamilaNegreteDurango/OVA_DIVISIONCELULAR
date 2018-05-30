-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2018 a las 18:42:52
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ova_aris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias`
--

CREATE TABLE `competencias` (
  `id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Descripcion` text NOT NULL,
  `Idposicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `competencias`
--

INSERT INTO `competencias` (`id`, `Nombre`, `Descripcion`, `Idposicion`) VALUES
(1, 'competencia1', 'identificar', 2),
(2, 'competencia 2', 'observar', 1),
(3, 'Competencia 3', 'analizar', 1),
(4, 'competencia 4', 'comparar', 2),
(5, 'competencia 5', 'ordenar ', 1),
(6, 'competencia 6', 'clasificar', 2),
(7, 'competencia 7', 'relacionar ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Limite de tiempo` text NOT NULL,
  `Puntaje` int(11) NOT NULL,
  `Idcompetencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id`, `Nivel`, `Limite de tiempo`, `Puntaje`, `Idcompetencia`) VALUES
(1, 2, '1 minutos', 1, 2),
(2, 2, '3 minutos', 3, 2),
(3, 1, '2 minutos', 2, 1),
(4, 1, '3 minutos', 3, 1),
(5, 3, '2 minutos', 2, 3),
(6, 3, '1 minuto', 1, 3),
(7, 4, '2 minutos', 2, 4),
(8, 4, '2 minutos', 3, 4),
(9, 5, '2 minutos', 2, 4),
(10, 5, '3 minutos', 3, 5),
(11, 6, '2 minutos', 2, 6),
(12, 6, '1 minuto', 1, 6),
(13, 7, '2 minutos', 2, 7),
(14, 7, '1 minuto', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posiciones`
--

CREATE TABLE `posiciones` (
  `id` int(11) NOT NULL,
  `Estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posiciones`
--

INSERT INTO `posiciones` (`id`, `Estado`) VALUES
(1, 'Ganado'),
(2, 'Perdido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `Pregunta` text NOT NULL,
  `Preguntas_completadas` int(11) NOT NULL,
  `Puntos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `Pregunta`, `Preguntas_completadas`, `Puntos`) VALUES
(1, 'cuantos años tienes?', 1, 10),
(2, 'que es mitosis?', 2, 10),
(3, 'que es la teloface?', 3, 2),
(4, 'que es la proface?', 4, 5),
(5, 'Un acontecimiento exclusivo de la meiosis es ', 6, 4),
(6, 'Al finalizar la meiosis se obtienen', 7, 13),
(7, 'En la meiosis I se separan', 8, 12),
(8, 'Los espermatocitos II se generan a partir de', 9, 12),
(9, 'La sinapsis es un evento característico de', 10, 4),
(10, 'Si en los núcleos hijos se visualizan cromosomas duplicados, ha finalizado', 11, 12),
(11, 'Si en cada fibra del huso se observa un par de cromosomas, el proceso de división celular involucrado es', 12, 9),
(12, 'En la mitosis, se separan cromátides hermanas durante', 13, 11),
(13, 'El número de posibles orientaciones cromosómicas que puede generar una célula con cinco pares de homólogos es', 14, 13),
(14, 'Cuál de los siguientes aconteciminetos se pone en marcha cuando una célula interacciona con un factor de crecimiento?', 14, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `Nombre1` text NOT NULL,
  `Nombre2` text NOT NULL,
  `Apellido1` text NOT NULL,
  `Apellido2` text NOT NULL,
  `Edad` int(11) NOT NULL,
  `Grado` text NOT NULL,
  `Puntaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `Nombre1`, `Nombre2`, `Apellido1`, `Apellido2`, `Edad`, `Grado`, `Puntaje`) VALUES
(1, 'José', 'Fernando', 'vertel', 'Lobato', 15, '11°', 200),
(2, 'Aris', 'Camila', 'Negrete', 'Duurango', 29, '5°', 10),
(3, 'William', 'david', 'Sanchez', 'Alvarez', 20, '11°', 500),
(4, 'carlos', 'andres', 'Peña', 'Ramos', 12, '3°', 11),
(5, 'Thalia', 'Andrea', 'Sanchez', 'Lobato', 14, '11º', 12),
(6, 'Isabella', 'Sofia', 'Gallego', 'Negrete', 15, '6º', 13),
(7, 'Luis', 'David', 'España', 'Lopez', 15, '7º', 34),
(8, 'Diego', 'Andres', 'Sanchez', 'Alvarez', 14, '6º', 34),
(9, 'Ana', 'Isabel', 'Martinez', 'Guzman', 14, '6º', 43),
(10, 'Edgardo', 'David', 'Solano', 'Sosa', 34, '5º', 45),
(11, 'Felipe', 'Andres', 'Mora', 'Martinez', 13, '7º', 43),
(12, 'Yulis', 'Maria', 'Alvarez', 'Montiel', 14, '5º', 42),
(13, 'Carmen', 'Cecilia', 'Durango', 'Osorio', 13, '5º', 54),
(14, 'Jesus', 'Alberto', 'Pastrana', 'Hoyos', 15, '6º', 23),
(15, 'Jose', 'David', 'Botero', 'Salazar', 16, '5º', 25),
(16, 'Maria', 'Alejandra', 'Romero', 'Durango', 14, '7º', 51),
(17, 'Andrea', 'Carolina', 'Garces', 'Delgado', 16, '7º', 56),
(18, 'Karen', 'Mishel', 'Cuadrado', 'Ortiz', 16, '5º', 24),
(19, 'Carlos', 'Andres', 'Fernandez', 'Ortiz', 14, '5º', 21),
(20, 'Jhan', 'Carlos', 'Toscano', 'Blanco', 16, '7º', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tr_competencia_usuario`
--

CREATE TABLE `tr_competencia_usuario` (
  `id` int(11) NOT NULL,
  `Idcompetencia` int(11) NOT NULL,
  `Idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tr_competencia_usuario`
--

INSERT INTO `tr_competencia_usuario` (`id`, `Idcompetencia`, `Idusuario`) VALUES
(1, 1, 1),
(4, 1, 3),
(2, 2, 2),
(3, 2, 3),
(6, 3, 5),
(7, 3, 6),
(5, 4, 4),
(8, 4, 6),
(9, 5, 7),
(11, 5, 19),
(10, 6, 9),
(12, 6, 18),
(14, 7, 17),
(13, 7, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tr_niveles_preguntas`
--

CREATE TABLE `tr_niveles_preguntas` (
  `id` int(11) NOT NULL,
  `Idniveles` int(11) NOT NULL,
  `Idpreguntas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tr_niveles_preguntas`
--

INSERT INTO `tr_niveles_preguntas` (`id`, `Idniveles`, `Idpreguntas`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Usuario` text NOT NULL,
  `Codigo` varchar(111) NOT NULL,
  `Idregistro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Usuario`, `Codigo`, `Idregistro`) VALUES
(1, 'Joverlo', '1', 1),
(2, 'Camilita', '2', 2),
(3, 'Willimcito', '3', 3),
(4, 'peñita', '4', 4),
(5, 'Ana', '5', 9),
(6, 'jesus', '8', 14),
(7, 'jhean', '56', 20),
(9, 'rosa', '13', 6),
(10, 'goleo', '145', 7),
(11, 'estrella', '123', 16),
(12, 'hender123', '122', 5),
(13, 'diego', '12342', 8),
(14, 'edgar', '5627', 10),
(15, 'filip', '567778', 11),
(16, 'yillieth', '7886', 12),
(17, 'ceci', '5664', 13),
(18, 'joshe', '5543', 15),
(19, 'andre', '432', 17),
(20, 'miche', '1323', 18),
(21, 'calr', '121331', 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Idposicion` (`Idposicion`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Idcompetencia` (`Idcompetencia`);

--
-- Indices de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tr_competencia_usuario`
--
ALTER TABLE `tr_competencia_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Idcompetencia` (`Idcompetencia`,`Idusuario`),
  ADD KEY `Idusuario` (`Idusuario`);

--
-- Indices de la tabla `tr_niveles_preguntas`
--
ALTER TABLE `tr_niveles_preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Idpreguntas` (`Idpreguntas`),
  ADD KEY `Idniveles` (`Idniveles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Idregistro` (`Idregistro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `competencias`
--
ALTER TABLE `competencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tr_competencia_usuario`
--
ALTER TABLE `tr_competencia_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tr_niveles_preguntas`
--
ALTER TABLE `tr_niveles_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD CONSTRAINT `competencias_ibfk_1` FOREIGN KEY (`Idposicion`) REFERENCES `posiciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD CONSTRAINT `niveles_ibfk_1` FOREIGN KEY (`Idcompetencia`) REFERENCES `competencias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tr_competencia_usuario`
--
ALTER TABLE `tr_competencia_usuario`
  ADD CONSTRAINT `tr_competencia_usuario_ibfk_1` FOREIGN KEY (`Idusuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tr_competencia_usuario_ibfk_2` FOREIGN KEY (`Idcompetencia`) REFERENCES `competencias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tr_niveles_preguntas`
--
ALTER TABLE `tr_niveles_preguntas`
  ADD CONSTRAINT `tr_niveles_preguntas_ibfk_1` FOREIGN KEY (`Idpreguntas`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tr_niveles_preguntas_ibfk_2` FOREIGN KEY (`Idniveles`) REFERENCES `niveles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Idregistro`) REFERENCES `registros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
