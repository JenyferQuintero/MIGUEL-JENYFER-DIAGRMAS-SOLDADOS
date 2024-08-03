-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 07:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miguel/jenyfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `barrio`
--

CREATE TABLE `barrio` (
  `Id_Barrio` int(10) NOT NULL,
  `Nombre_Barrio` varchar(30) NOT NULL,
  `MUNICIPOId_Municipio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compañia`
--

CREATE TABLE `compañia` (
  `Id_Compañia` int(10) NOT NULL,
  `Nombre_de_la_Unidad` varchar(20) NOT NULL,
  `Actividad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuarteles`
--

CREATE TABLE `cuarteles` (
  `Id_Cuartel` int(10) NOT NULL,
  `Nombre_del_Cuartel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuarteles_compañia`
--

CREATE TABLE `cuarteles_compañia` (
  `CuartelesCd_Cuartel` int(10) NOT NULL,
  `CompañiaId_Compañia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuerpos del ejercito`
--

CREATE TABLE `cuerpos del ejercito` (
  `Id_Cuerpo` int(10) NOT NULL,
  `Denominación` int(10) NOT NULL,
  `Fuerzas_Armadas` varchar(30) NOT NULL,
  `Estructura_de_Defensa` varchar(30) NOT NULL,
  `Tipo_de_Operacion` varchar(30) NOT NULL,
  `UBICACIONId_Ubicacion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `Id_Departamento` int(10) NOT NULL,
  `Nombre_Departamento` varchar(30) NOT NULL,
  `UBICACIONId_Ubicacion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direccion`
--

CREATE TABLE `direccion` (
  `Id_Direccion` int(10) NOT NULL,
  `Nomenclatura_Urbana` varchar(20) NOT NULL,
  `Numero` varchar(20) NOT NULL,
  `BARRIOId_Barrio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grado`
--

CREATE TABLE `grado` (
  `Id_Grado` int(10) NOT NULL,
  `Nombre_del_Grado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipo`
--

CREATE TABLE `municipo` (
  `Id_Municipio` int(10) NOT NULL,
  `Nombre_Municipio` varchar(30) NOT NULL,
  `DEPARTAMENTOId_Departamento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicio`
--

CREATE TABLE `servicio` (
  `Id_Servicio` int(10) NOT NULL,
  `Actividad` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soldados`
--

CREATE TABLE `soldados` (
  `Id_Soldado` int(10) NOT NULL,
  `Primer_Nombre` varchar(20) NOT NULL,
  `Segundo_Nombre` varchar(20) NOT NULL,
  `Primer_Apellido` int(2) NOT NULL,
  `Segundo_Apellido` varchar(20) NOT NULL,
  `CuartelesCd_Cuartel` int(10) NOT NULL,
  `Cuerpos Del EjercitoCd_Cuerpo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soldados_grados`
--

CREATE TABLE `soldados_grados` (
  `GradoId_Grado` int(10) NOT NULL,
  `SoldadosId_Soldado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soldados_servicio`
--

CREATE TABLE `soldados_servicio` (
  `SoldadoCd_Soldado` int(10) NOT NULL,
  `ServiciosCd_Servicio` int(10) NOT NULL,
  `Fecha` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Id_Ubicacion` int(20) NOT NULL,
  `Codigo_Postal` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`Id_Barrio`),
  ADD KEY `FKBARRIO912905` (`MUNICIPOId_Municipio`);

--
-- Indexes for table `compañia`
--
ALTER TABLE `compañia`
  ADD PRIMARY KEY (`Id_Compañia`);

--
-- Indexes for table `cuarteles`
--
ALTER TABLE `cuarteles`
  ADD PRIMARY KEY (`Id_Cuartel`);

--
-- Indexes for table `cuarteles_compañia`
--
ALTER TABLE `cuarteles_compañia`
  ADD PRIMARY KEY (`CuartelesCd_Cuartel`,`CompañiaId_Compañia`),
  ADD KEY `FKCuarteles_706214` (`CompañiaId_Compañia`);

--
-- Indexes for table `cuerpos del ejercito`
--
ALTER TABLE `cuerpos del ejercito`
  ADD PRIMARY KEY (`Id_Cuerpo`),
  ADD KEY `FKCuerpos De646599` (`UBICACIONId_Ubicacion`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Id_Departamento`),
  ADD KEY `FKDEPARTAMEN302697` (`UBICACIONId_Ubicacion`);

--
-- Indexes for table `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`Id_Direccion`),
  ADD KEY `FKDIRECCION677184` (`BARRIOId_Barrio`);

--
-- Indexes for table `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`Id_Grado`);

--
-- Indexes for table `municipo`
--
ALTER TABLE `municipo`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `FKMUNICIPO791373` (`DEPARTAMENTOId_Departamento`);

--
-- Indexes for table `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`Id_Servicio`);

--
-- Indexes for table `soldados`
--
ALTER TABLE `soldados`
  ADD PRIMARY KEY (`Id_Soldado`),
  ADD KEY `FKSOLDADOS31421` (`CuartelesCd_Cuartel`),
  ADD KEY `FKSOLDADOS690912` (`Cuerpos Del EjercitoCd_Cuerpo`);

--
-- Indexes for table `soldados_grados`
--
ALTER TABLE `soldados_grados`
  ADD PRIMARY KEY (`GradoId_Grado`,`SoldadosId_Soldado`),
  ADD KEY `FKSOLDADOS_G114552` (`SoldadosId_Soldado`);

--
-- Indexes for table `soldados_servicio`
--
ALTER TABLE `soldados_servicio`
  ADD PRIMARY KEY (`SoldadoCd_Soldado`,`ServiciosCd_Servicio`),
  ADD KEY `FKSOLDADOS_S610191` (`ServiciosCd_Servicio`);

--
-- Indexes for table `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Id_Ubicacion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barrio`
--
ALTER TABLE `barrio`
  MODIFY `Id_Barrio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compañia`
--
ALTER TABLE `compañia`
  MODIFY `Id_Compañia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuarteles`
--
ALTER TABLE `cuarteles`
  MODIFY `Id_Cuartel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuerpos del ejercito`
--
ALTER TABLE `cuerpos del ejercito`
  MODIFY `Id_Cuerpo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `Id_Departamento` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direccion`
--
ALTER TABLE `direccion`
  MODIFY `Id_Direccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grado`
--
ALTER TABLE `grado`
  MODIFY `Id_Grado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `municipo`
--
ALTER TABLE `municipo`
  MODIFY `Id_Municipio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicio`
--
ALTER TABLE `servicio`
  MODIFY `Id_Servicio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soldados`
--
ALTER TABLE `soldados`
  MODIFY `Id_Soldado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `Id_Ubicacion` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `FKBARRIO912905` FOREIGN KEY (`MUNICIPOId_Municipio`) REFERENCES `municipo` (`Id_Municipio`);

--
-- Constraints for table `cuarteles_compañia`
--
ALTER TABLE `cuarteles_compañia`
  ADD CONSTRAINT `FKCuarteles_565875` FOREIGN KEY (`CuartelesCd_Cuartel`) REFERENCES `cuarteles` (`Id_Cuartel`),
  ADD CONSTRAINT `FKCuarteles_706214` FOREIGN KEY (`CompañiaId_Compañia`) REFERENCES `compañia` (`Id_Compañia`);

--
-- Constraints for table `cuerpos del ejercito`
--
ALTER TABLE `cuerpos del ejercito`
  ADD CONSTRAINT `FKCuerpos De646599` FOREIGN KEY (`UBICACIONId_Ubicacion`) REFERENCES `ubicacion` (`Id_Ubicacion`);

--
-- Constraints for table `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `FKDEPARTAMEN302697` FOREIGN KEY (`UBICACIONId_Ubicacion`) REFERENCES `ubicacion` (`Id_Ubicacion`);

--
-- Constraints for table `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `FKDIRECCION677184` FOREIGN KEY (`BARRIOId_Barrio`) REFERENCES `barrio` (`Id_Barrio`);

--
-- Constraints for table `municipo`
--
ALTER TABLE `municipo`
  ADD CONSTRAINT `FKMUNICIPO791373` FOREIGN KEY (`DEPARTAMENTOId_Departamento`) REFERENCES `departamento` (`Id_Departamento`);

--
-- Constraints for table `soldados`
--
ALTER TABLE `soldados`
  ADD CONSTRAINT `FKSOLDADOS31421` FOREIGN KEY (`CuartelesCd_Cuartel`) REFERENCES `cuarteles` (`Id_Cuartel`),
  ADD CONSTRAINT `FKSOLDADOS690912` FOREIGN KEY (`Cuerpos Del EjercitoCd_Cuerpo`) REFERENCES `cuerpos del ejercito` (`Id_Cuerpo`);

--
-- Constraints for table `soldados_grados`
--
ALTER TABLE `soldados_grados`
  ADD CONSTRAINT `FKSOLDADOS_G114552` FOREIGN KEY (`SoldadosId_Soldado`) REFERENCES `soldados` (`Id_Soldado`),
  ADD CONSTRAINT `FKSOLDADOS_G437406` FOREIGN KEY (`GradoId_Grado`) REFERENCES `grado` (`Id_Grado`);

--
-- Constraints for table `soldados_servicio`
--
ALTER TABLE `soldados_servicio`
  ADD CONSTRAINT `FKSOLDADOS_S125188` FOREIGN KEY (`SoldadoCd_Soldado`) REFERENCES `soldados` (`Id_Soldado`),
  ADD CONSTRAINT `FKSOLDADOS_S610191` FOREIGN KEY (`ServiciosCd_Servicio`) REFERENCES `servicio` (`Id_Servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
