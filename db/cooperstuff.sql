-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2018 at 03:56 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooperstuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainmodel`
--

CREATE TABLE `mainmodel` (
  `id` int(11) NOT NULL,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL,
  `imgPath` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodel`
--

INSERT INTO `mainmodel` (`id`, `model`, `modelName`, `pricing`, `modelDetails`, `imgPath`) VALUES
(0, 'F55', 'Mini Cooper F55', '27,790', 'It’s the turbocharged motoring icon, with more handles to love. The MINI 5 door boasts the same iconic good looks as its 3 door brother, but features an extra pair of passenger doors for practical access to its spacious cabin. And despite its slightly longer frame, the MINI 5 door’s wide, athletic stance and wheels-pushed-out design deliver the corner-carving agility you’d expect from any MINI.', 'F55.jpg'),
(1, 'F56', 'Mini Cooper F56', '22,190', 'A true style icon – reimagined for contemporary living. Paying tribute to the original 1959 Austin Seven, the MINI Seven Edition brings together our most distinctive elements into one model. Striking Melting Silver details, a unique bonnet stripe design, and exclusive interior elements put this special edition MINI into a class of its own.', 'F56.jpg'),
(2, 'R58', 'Mini Cooper R58', '40,590', 'It’s almost time to re-discover the redesigned, re-engineered, and completely revamped MINI Convertible. From feistier more fuel-efficient engines, to smarter innovations that let you stay open at every point along the way, this all-new MINI Convertible brings an array of enhancements to get excited about. And although the next iteration of this sun-seeking MINI will look and feel more refined than its predecessor, the open-air exhilaration that awaits you behind the wheel remains the same. We can’t wait for you to experience it in person. Until then... stay open.', 'R57.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(12) NOT NULL,
  `category` varchar(40) NOT NULL,
  `reviews` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `video_url` varchar(512) NOT NULL,
  `thumbnail_url` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `category`, `reviews`, `rating`, `type`, `video_url`, `thumbnail_url`) VALUES
(1, 'Breaking Bad', 'Adults', 'Breaking bad is an incredible show', 5, 'TV show', 'breakingbad_adults.mp4', 'breakindbad_thumbnail.jpg'),
(2, 'Logan', 'Adults', 'Name of video	Category	Rating	Rating	Type	video_url	thumbnail', 4, 'Movie', 'logan_adults.mp4', 'logan_thumbail.jpg'),
(3, 'Dragon Ball ', 'Kids', 'Dragonball Franchise after all, It is a major household name in anime.', 4, 'TV show', 'dragonball_kids.mp4', 'dbultra_thumbnail.jpg'),
(4, 'Wreck it Ral', 'Kids', 'Wreck-It-Ralph enjoys a healthy ratio of accessible character drama and goofy gaming gags - resulting in an exceptionally entertaining, and heartfelt, animated adventure.', 4, 'Movie', 'ralph_kids.mp4', 'wreckit_thumbnail.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mainmodel`
--
ALTER TABLE `mainmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`),
  ADD UNIQUE KEY `modelDesc` (`modelName`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mainmodel`
--
ALTER TABLE `mainmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
