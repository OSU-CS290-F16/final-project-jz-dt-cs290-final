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
('Giant', 3667, 154, 'Slow', 'http://vignette2.wikia.nocookie.net/clashroyale/images/b/b1/GiantCard.png/revision/latest?cb=20160702201059'),
('Lumber Jack', 990, 314, 'Very Fast', 'http://vignette2.wikia.nocookie.net/clashroyale/images/5/52/LumberjackCard.png/revision/latest?cb=20160702201153'),
('Prince', 1463, 216, 'Medium', 'http://vignette2.wikia.nocookie.net/clashroyale/images/b/be/PrinceCard.png/revision/latest/scale-to-width-down/218?cb=20160702201222'),
('Dark Prince', 931, 128, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/4/46/DarkPrinceCard.png/revision/latest/scale-to-width-down/218?cb=20160702201038'),
('Baby Dragon', 1064, 83, 'Fast', 'http://vignette3.wikia.nocookie.net/clashroyale/images/3/35/BabyDragonCard.png/revision/latest/scale-to-width-down/218?cb=20160702201008'),
('Gaurds', 78, 65, 'Fast', 'http://vignette3.wikia.nocookie.net/clashroyale/images/5/51/GuardsCard.png/revision/latest?cb=20160702201126'),
('Inferno Dragon', 950, 30, 'Medium', 'http://vignette4.wikia.nocookie.net/clashroyale/images/9/95/InfernoDragonCard.png/revision/latest?cb=20160920223835'),
('Valkyrie', 1548, 140, 'Medium', 'http://vignette1.wikia.nocookie.net/clashroyale/images/e/e2/ValkyrieCard.png/revision/latest/scale-to-width-down/218?cb=20160702201305'),
('Balloon', 1396, 266, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/5/5b/BalloonCard.png/revision/latest/scale-to-width-down/218?cb=20160702201010'),
('Wizard', 544, 208, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/4/49/WizardCard.png/revision/latest/scale-to-width-down/218?cb=20160702201312'),
('Barbarians', 636, 106, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/2/2e/BarbariansCard.png/revision/latest?cb=20160702201018'),
('Bowler', 1596, 95, 'Slow', 'http://vignette3.wikia.nocookie.net/clashroyale/images/b/b8/BowlerCard.png/revision/latest/scale-to-width-down/218?cb=20160702201031'),
('Witch', 605, 84, 'Medium', 'http://vignette4.wikia.nocookie.net/clashroyale/images/7/7f/WitchCard.png/revision/latest?cb=20160702201308'),
('Golem', 4256, 103, 'Slow', 'http://vignette3.wikia.nocookie.net/clashroyale/images/d/d4/GolemCard.png/revision/latest/scale-to-width-down/218?cb=20160702201122'),
('Ice Spirit', 209, 116, 'Very Fast', 'http://vignette1.wikia.nocookie.net/clashroyale/images/2/2c/IceSpiritCard.png/revision/latest/scale-to-width-down/200?cb=20160702201134'),
('Lava Hound', 3300, 37, 'Slow', 'http://vignette4.wikia.nocookie.net/clashroyale/images/d/de/LavaHoundCard.png/revision/latest?cb=20160702201149'),
('Musketeer', 656, 175, 'Medium', 'http://vignette2.wikia.nocookie.net/clashroyale/images/e/ee/MusketeerCard.png/revision/latest/scale-to-width-down/218?cb=20160702201213'),
('Knight', 1537, 158, 'Medium', 'http://vignette4.wikia.nocookie.net/clashroyale/images/5/54/KnightCard.png/revision/latest/scale-to-width-down/200?cb=20160702201146'),
('Archers', 291, 79, 'Medium', 'http://vignette3.wikia.nocookie.net/clashroyale/images/a/af/ArchersCard.png/revision/latest/scale-to-width-down/200?cb=20160702200851'),
('Skeleton Army', 67, 67, 'Fast', 'http://vignette1.wikia.nocookie.net/clashroyale/images/d/d0/SkeletonArmyCard.png/revision/latest/scale-to-width-down/218?cb=20160702201239');
