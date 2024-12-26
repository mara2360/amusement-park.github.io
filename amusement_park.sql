-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2024 at 06:56 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amusement_park`
--

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `ride_id` int NOT NULL,
  `ride_name` varchar(225) NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `wait_time` int NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rides`
--

INSERT INTO `rides` (`ride_id`, `ride_name`, `open_time`, `close_time`, `wait_time`, `description`, `image`) VALUES
(1, 'Sky High Roller Coaster', '08:00:00', '20:00:00', 45, 'Experience the thrill of heights and speed with breathtaking twists and turns!', 'images/skyhigh.jpeg'),
(2, 'Grand Ferris Wheel', '11:00:00', '17:00:00', 30, 'Enjoy panoramic views of the park and beyond on this classic family favorite.', 'images/ferriswheel.jpeg'),
(3, 'Jungle Slide', '10:00:00', '18:00:00', 5, 'Slide down the wild jungle-themed adventure and make a splash at the end!', 'images/jungleslide.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`ride_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
