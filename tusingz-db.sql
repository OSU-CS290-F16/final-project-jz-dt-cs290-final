-- phpMyAdmin SQL Dump
-- version 2.11.9.4
-- http://www.phpmyadmin.net
--
-- Host: oniddb
-- Generation Time: Dec 07, 2016 at 11:00 PM
-- Server version: 5.5.52
-- PHP Version: 5.2.6-1+lenny16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `tusingz-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE IF NOT EXISTS `card` (
  `Name` varchar(20) NOT NULL,
  `Health` int(255) NOT NULL,
  `Damage` int(255) NOT NULL,
  `Speed` varchar(20) NOT NULL,
  `Url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`Name`, `Health`, `Damage`, `Speed`, `Url`) VALUES
('Hog Rider', 1544, 192, 'Very Fast', 'http://vignette1.wikia.nocookie.net/clashroyale/images/3/30/HogRiderCard.png/revision/latest/scale-to-width-down/218?cb=20160702201131'),
('Mini PEKKA', 1158, 348, 'Fast', 'http://vignette2.wikia.nocookie.net/clashroyale/images/7/7b/MiniPEKKACard.png/revision/latest/scale-to-width-down/218?cb=20160702201205'),
('Mega Minion', 1762, 210, 'Medium', 'http://vignette4.wikia.nocookie.net/clashroyale/images/a/a8/MegaMinionCard.png/revision/latest/scale-to-width-down/218?cb=20160919231703'),
('Goblins', 186, 105, 'Very Fast', 'http://vignette4.wikia.nocookie.net/clashroyale/images/b/bd/GoblinsCard.png/revision/latest/scale-to-width-down/200?cb=20160702201115'),
('Minions', 209, 93, 'Fast', 'http://vignette2.wikia.nocookie.net/clashroyale/images/b/b7/MinionsCard.png/revision/latest/scale-to-width-down/200?cb=20160702201203'),
('Ice Wizard', 731, 46, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/d/d3/IceWizardCard.png/revision/latest?cb=20160702201135'),
('Skeletons', 74, 74, 'Fast', 'http://vignette3.wikia.nocookie.net/clashroyale/images/f/f0/SkeletonsCard.png/revision/latest/scale-to-width-down/200?cb=20160702201245'),
('Giant', 3667, 154, 'Slow Af', 'http://vignette2.wikia.nocookie.net/clashroyale/images/b/b1/GiantCard.png/revision/latest?cb=20160702201059'),
('Lumber Jack', 990, 314, 'Very Fast', 'http://vignette2.wikia.nocookie.net/clashroyale/images/5/52/LumberjackCard.png/revision/latest?cb=20160702201153'),
('Prince', 1463, 216, 'Medium', 'http://vignette2.wikia.nocookie.net/clashroyale/images/b/be/PrinceCard.png/revision/latest/scale-to-width-down/218?cb=20160702201222'),
('Dark Prince', 931, 128, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/4/46/DarkPrinceCard.png/revision/latest/scale-to-width-down/218?cb=20160702201038');
