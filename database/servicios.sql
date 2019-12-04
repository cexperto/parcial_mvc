-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 05:55 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ya_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `id_servicios` int(11) NOT NULL,
  `nombre_servicios` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_servicios` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `duracion_servicios` int(11) NOT NULL,
  `duracion_servicios1` int(11) NOT NULL,
  `costo_servicios` int(11) NOT NULL,
  `estado` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `valoracion` int(11) NOT NULL,
  `email_estudiante_servicios` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `email_empleador_servicios` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_usuariofk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`id_servicios`, `nombre_servicios`, `tipo_servicios`, `duracion_servicios`, `duracion_servicios1`, `costo_servicios`, `estado`, `valoracion`, `email_estudiante_servicios`, `email_empleador_servicios`, `cod_usuariofk`) VALUES
(1, 'mensajeria', 'horas', 2, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(2, 'nada', 'horas', 2, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(3, 'recreacion', 'horas', 2, 8, 28000, 'completo', 0, 'ana@email.com', 'empleador@email.com', 3),
(4, 'aseo', 'horas', 4, 0, 0, 'completo', 0, 'ana@email.com', 'empleador@email.com', 3),
(5, 'aseo', 'horas', 4, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(6, 'volantes', 'horas', 5, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(7, 'volantes', 'horas', 5, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(8, 'volantes', 'horas', 5, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(9, 'volantes', 'horas', 5, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(10, 'operarios', 'horas', 5, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(11, 'operarios', 'horas', 5, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(12, 'operarios', 'horas', 8, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(13, 'operarios', 'horas', 8, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(14, 'mensajeria', 'horas', 2, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(15, 'mensajeria', 'horas', 2, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(16, 'logistica', 'horas', 1, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(17, 'recreacion', 'horas', 6, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(18, 'aseo', 'horas', 6, 0, 0, 'completo', 0, 'ana@email.com', '', 3),
(19, 'operarios', 'horas', 8, 0, 0, 'etr', 0, 'ana@email.com', '', 3),
(20, 'mensajeria', 'horas', 4, 0, 0, 'ert', 0, 'ana@email.com', '', 3),
(21, 'recreacion', 'horas', 6, 0, 0, 'ig', 0, 'ana@email.com', '', 3),
(22, 'mensajeria', 'horas', 8, 0, 0, 'kh', 0, 'ana@email.com', '', 3),
(23, 'mensajeria', 'horas', 8, 0, 0, 'nada', 0, 'ana@email.com', '', 3),
(24, 'operarios', 'horas', 8, 0, 0, 'diferente', 0, 'ana@email.com', 'empleador@email.com', 3),
(25, 'mensajeria', 'horas', 8, 0, 0, 'completo', 0, 'ana@email.com', 'empleador@email.com', 3),
(26, 'logistica', 'horas', 8, 8, 28000, 'completo', 0, 'ana@email.com', 'empleador@email.com', 3),
(27, 'aseo', 'horas', 8, 8, 28000, 'terminado', 0, 'ana@email.com', 'empleador@email.com', 3),
(28, 'mensajeria', 'horas', 8, 8, 28000, 'terminado', 5, 'ana@email.com', 'empleador@email.com', 3),
(29, 'mesero', 'horas', 1, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(30, 'mensajeria', 'horas', 8, 8, 28000, 'terminado', 5, 'ana@email.com', 'empleador@email.com', 3),
(31, 'mensajeria', 'horas', 8, 8, 28000, 'terminado', 5, 'ana@email.com', 'empleador@email.com', 3),
(32, 'aseo', 'horas', 8, 8, 28000, 'completo', 0, 'ana@email.com', 'empleador@email.com', 3),
(33, 'mensajeria', 'horas', 1, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(34, 'recreacion', 'horas', 1, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(35, 'recreacion', 'horas', 2, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(36, 'volantes', 'horas', 3, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(37, 'aseo', 'horas', 4, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(38, 'operarios', 'horas', 5, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(39, 'logistica', 'horas', 6, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(40, 'recreacion', 'horas', 8, 0, 0, 'diferente', 0, 'ana@email.com', '', 3),
(41, 'volantes', 'horas', 8, 8, 28000, 'terminado', 5, 'ana@email.com', 'empleador@email.com', 3),
(42, 'mensajeria', 'horas', 8, 0, 0, 'nada', 0, 'ana@email.com', '', 3),
(43, 'mensajeria', 'horas', 8, 0, 0, 'terminado', 0, 'ana@email.com', '', 3),
(44, 'recreacion', 'horas', 8, 0, 0, 'terminado', 0, 'ana@email.com', '', 3),
(45, 'mensajeria', 'horas', 8, 8, 28000, 'terminado', 5, 'ana@email.com', 'empleador@email.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicios`),
  ADD KEY `cod_usuariofk` (`cod_usuariofk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`cod_usuariofk`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
