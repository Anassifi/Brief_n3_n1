-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 13, 2020 at 06:16 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `park_info`
--
CREATE DATABASE IF NOT EXISTS `park_info` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `park_info`;

-- --------------------------------------------------------

--
-- Table structure for table `installation`
--

CREATE TABLE `installation` (
  `nposte` varchar(7) DEFAULT NULL,
  `nlog` varchar(5) DEFAULT NULL,
  `num_ins` int(5) NOT NULL,
  `date_ins` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `delai` decimal(8,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `installation`
--

INSERT INTO `installation` (`nposte`, `nlog`, `num_ins`, `date_ins`, `delai`) VALUES
('p2', 'log1', 1, '2003-05-15 00:00:00', NULL),
('p2', 'log2', 2, '2003-09-16 22:00:00', NULL),
('p4', 'log5', 3, NULL, NULL),
('p6', 'log6', 4, '2003-05-20 00:00:00', NULL),
('p6', 'log1', 5, '2003-05-20 00:00:00', NULL),
('p8', 'log2', 6, '2003-05-19 00:00:00', NULL),
('p8', 'log6', 7, '2003-05-20 00:00:00', NULL),
('p11', 'log3', 8, '2003-04-19 22:00:00', NULL),
('p12', 'log4', 9, '2003-04-19 22:00:00', NULL),
('p11', 'log7', 10, '2003-04-19 22:00:00', NULL),
('p7', 'log7', 11, '2002-03-31 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logiciel`
--

CREATE TABLE `logiciel` (
  `nlog` varchar(5) NOT NULL,
  `nomlog` varchar(20) NOT NULL,
  `dateach` datetime DEFAULT NULL,
  `version` varchar(7) DEFAULT NULL,
  `typelog` varchar(9) DEFAULT NULL,
  `prix` decimal(6,2) DEFAULT NULL,
  `nbinstall` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logiciel`
--

INSERT INTO `logiciel` (`nlog`, `nomlog`, `dateach`, `version`, `typelog`, `prix`, `nbinstall`) VALUES
('log1', 'Oracle 6', '1995-05-13 00:00:00', '6.2', 'UNIX', '3000.00', 0),
('log2', 'Oracle 8', '1999-09-15 00:00:00', '8i', 'UNIX', '5600.00', 0),
('log3', 'SQL Server', '1998-04-12 00:00:00', '7', 'PCNT', '3000.00', 0),
('log4', 'Front Page', '1997-06-03 00:00:00', '5', 'PCWS', '500.00', 0),
('log5', 'WinDev', '1997-05-12 00:00:00', '5', 'PCWS', '750.00', 0),
('log6', 'SQL*Net', NULL, '2.0', 'UNIX', '500.00', 0),
('log7', 'I. I. S.', '2002-04-12 00:00:00', '2', 'PCNT', '900.00', 0),
('log8', 'DreamWeaver', '2003-09-21 00:00:00', '2.0', 'BeOS', '1400.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcseuls`
--

CREATE TABLE `pcseuls` (
  `np` varchar(7) DEFAULT NULL,
  `nomP` varchar(20) DEFAULT NULL,
  `seg` varchar(11) DEFAULT NULL,
  `ad` varchar(3) DEFAULT NULL,
  `typeP` varchar(9) DEFAULT NULL,
  `lieu` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcseuls`
--

INSERT INTO `pcseuls` (`np`, `nomP`, `seg`, `ad`, `typeP`, `lieu`) VALUES
('p4', 'Poste 4', '130.120.80', '04', 'PCWS', 's02'),
('p5', 'Poste 5', '130.120.80', '05', 'PCWS', 's02'),
('p11', 'Poste 11', '130.120.82', '01', 'PCNT', 's21'),
('p12', 'Poste 12', '130.120.82', '02', 'PCWS', 's21');

-- --------------------------------------------------------

--
-- Table structure for table `poste`
--

CREATE TABLE `poste` (
  `nposte` varchar(7) NOT NULL,
  `nom_poste` varchar(20) NOT NULL,
  `indip` varchar(11) DEFAULT NULL,
  `ad` varchar(3) DEFAULT NULL,
  `type_poste` varchar(9) DEFAULT NULL,
  `nsalle` varchar(7) DEFAULT NULL,
  `nblog` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poste`
--

INSERT INTO `poste` (`nposte`, `nom_poste`, `indip`, `ad`, `type_poste`, `nsalle`, `nblog`) VALUES
('p1', 'Poste 1', '130.120.80', '01', 'TX', 's01', 0),
('p2', 'Poste 2', '130.120.80', '02', 'UNIX', 's01', 0),
('p3', 'Poste 3', '130.120.80', '03', 'TX', 's01', 0),
('p4', 'Poste 4', '130.120.80', '04', 'PCWS', 's02', 0),
('p5', 'Poste 5', '130.120.80', '05', 'PCWS', 's02', 0),
('p6', 'Poste 6', '130.120.80', '06', 'UNIX', 's03', 0),
('p7', 'Poste 7', '130.120.80', '07', 'TX', 's03', 0),
('p8', 'Poste 8', '130.120.81', '01', 'UNIX', 's11', 0),
('p9', 'Poste 9', '130.120.81', '02', 'TX', 's11', 0),
('p10', 'Poste 10', '130.120.81', '03', 'UNIX', 's12', 0),
('p11', 'Poste 11', '130.120.82', '01', 'PCNT', 's21', 0),
('p12', 'Poste 12', '130.120.82', '02', 'PCWS', 's21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `nsalle` varchar(7) NOT NULL,
  `nom_salle` varchar(20) NOT NULL,
  `nbposte` tinyint(2) DEFAULT NULL,
  `indip` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`nsalle`, `nom_salle`, `nbposte`, `indip`) VALUES
('s01', 'Salle 1', 3, '130.120.80'),
('s02', 'Salle 2', 2, '130.120.80'),
('s03', 'Salle 3', 2, '130.120.80'),
('s11', 'Salle 11', 2, '130.120.81'),
('s12', 'Salle 12', 1, '130.120.81'),
('s21', 'Salle 21', 2, '130.120.82');

-- --------------------------------------------------------

--
-- Table structure for table `segment`
--

CREATE TABLE `segment` (
  `indip` varchar(11) NOT NULL,
  `nom_segment` varchar(15) DEFAULT NULL,
  `etage` tinyint(1) DEFAULT NULL,
  `nbsalle` int(2) DEFAULT '0',
  `nbposte` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `segment`
--

INSERT INTO `segment` (`indip`, `nom_segment`, `etage`, `nbsalle`, `nbposte`) VALUES
('130.120.80', 'Brin RDC', 0, 0, 0),
('130.120.81', 'Brin 1er	étage', 1, 0, 0),
('130.120.82', 'Brin 2ème étage', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `softs`
--

CREATE TABLE `softs` (
  `nomsoft` varchar(20) DEFAULT NULL,
  `version` varchar(7) DEFAULT NULL,
  `prix` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `softs`
--

INSERT INTO `softs` (`nomsoft`, `version`, `prix`) VALUES
('Oracle 6', '6.2', '3000.00'),
('Oracle 8', '8i', '5600.00'),
('SQL Server', '7', '3000.00'),
('Front Page', '5', '500.00'),
('WinDev', '5', '750.00'),
('SQL*Net', '2.0', '500.00'),
('I. I. S.', '2', '900.00'),
('DreamWeaver', '2.0', '1400.00');

-- --------------------------------------------------------

--
-- Table structure for table `typelp`
--

CREATE TABLE `typelp` (
  `typelp` varchar(9) NOT NULL,
  `nomtype` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typelp`
--

INSERT INTO `typelp` (`typelp`, `nomtype`) VALUES
('TX', 'Terminal X-Window'),
('UNIX', 'Système Unix'),
('PCNT', 'PC Windows NT'),
('PCWS', 'PC Windows'),
('NC', 'Network Computer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `installation`
--
ALTER TABLE `installation`
  ADD PRIMARY KEY (`num_ins`),
  ADD UNIQUE KEY `nposte` (`nposte`,`nlog`),
  ADD UNIQUE KEY `nposte_2` (`nposte`,`nlog`),
  ADD KEY `fk_logiciel_int` (`nlog`);

--
-- Indexes for table `logiciel`
--
ALTER TABLE `logiciel`
  ADD PRIMARY KEY (`nlog`),
  ADD KEY `fk_log_type` (`typelog`);

--
-- Indexes for table `poste`
--
ALTER TABLE `poste`
  ADD PRIMARY KEY (`nposte`),
  ADD KEY `fk_poste_indip` (`indip`),
  ADD KEY `fk_poste_salle` (`nsalle`),
  ADD KEY `fk_poste_type` (`type_poste`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`nsalle`),
  ADD KEY `fk_segment` (`indip`);

--
-- Indexes for table `segment`
--
ALTER TABLE `segment`
  ADD PRIMARY KEY (`indip`);

--
-- Indexes for table `typelp`
--
ALTER TABLE `typelp`
  ADD PRIMARY KEY (`typelp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `installation`
--
ALTER TABLE `installation`
  MODIFY `num_ins` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
