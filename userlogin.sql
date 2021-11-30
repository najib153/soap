-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 30, 2021 at 05:38 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `soap`
--

DROP TABLE IF EXISTS `soap`;
CREATE TABLE IF NOT EXISTS `soap` (
  `id` int(10) NOT NULL,
  `nom` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soap`
--

INSERT INTO `soap` (`id`, `nom`) VALUES
(1, 'ahmed'),
(2, 'John'),
(3, 'said'),
(4, 'Alain'),
(5, 'Sara');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` longtext NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(15) NOT NULL,
  `etat` varchar(15) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `pays` varchar(15) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `prenom`, `nom`, `email`, `mobile`, `adresse`, `ville`, `etat`, `zip`, `pays`) VALUES
(108, 'najib34', '$2y$10$8fOuQtCig2olKuaPGR5Gt.1ivPCM3NLppgMazOSsvJGsLpEUMMpS.', 'najib', 'mustapha', 'najib543@gmail.com', '6132866218', '36 RUTLEGE NEPEAN', 'OTTAWA', 'Ontario', 'k2G 6S7', 'CANADA'),
(107, 'najib', '123', 'najib', 'mustapha', 'najib153@gmail.com', '6132866218', '36 RUTLEGE NEPEAN', 'OTTAWA', 'Ontario', 'k2G 6S7', 'CANADA'),
(106, 'dutrdu7t76yv', 'huhvgv', 'fatimjnjn', 'drIOUCHE', 'fatimadriohe8999@gmail.com', '6136971711', '36 rUTLEGE NEPEAN', 'OTTAWA', 'ottawa', 'k2G 6S7', 'CANADA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
