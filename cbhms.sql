-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 07:29 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `since` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `username`, `email`, `doctorname`, `type`, `problem`, `symptoms`, `age`, `since`) VALUES
(19, 'Wasim', 'wasimsadiq77@gmail.com', 'sad', 'mobile health', 'Cold ', 'Cough', '12', '2'),
(20, 'Yamini', 'yamini35007@gmail.com', 'sad', 'Load store', 'Ovarian disorder ', 'Fat, acne and stressed ', '25', '1month '),
(22, 'Pooja', 'poojajp511@gmail.com', 'Dr. Poo', 'mobile health', 'Sore throat ', 'Sore throat ', '5', '1 day '),
(23, 'yam', 'yam123@gmail.com', 'sad', 'remote patient monitoring', 'cough', 'headache', '26', '5days'),
(24, 'Naziya', 'naziya.baquri@gmail.com', 'Dr. Poo', 'live', 'Fever', 'Leg pain', '20', '2 days'),
(25, 'sadiqvasim', 'wassadiq12@gmailcom', 'sad', 'mobile health', 'fever ', 'cough', '26', '8days'),
(26, 'admin', 'admin123@gmail.com', 'admin', 'mobile health', 'diabetes', 'obesity', '52', '15');

-- --------------------------------------------------------

--
-- Table structure for table `doctorlogin`
--

CREATE TABLE `doctorlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorlogin`
--

INSERT INTO `doctorlogin` (`id`, `username`, `password`, `special`, `email`, `created_at`) VALUES
(5, 'sad', '$2y$10$4bitpCUvgoDY8gf9t1ws6uoKX7.1HfYZHWt/xQXHGDiB7oUyj3EMC', 'gyno', 'ewewkeokw@game.com', '2020-03-24 01:47:44'),
(9, 'Dr. Poo', '$2y$10$D515vZnkgM6Qj82gVzAPd.1FznH8WxCltNB5T/MEgDtP30kPGA/Sy', 'Paediatrics', 'abc@gmail.com', '2020-06-03 11:12:20'),
(10, 'pooja', '$2y$10$6sPvpWl2E.6vmZls9oKSmOvF6pfrhWGolpQ7fSTViDqbMx8j2C9dy', 'physician', 'pooja123@gmail.com', '2020-06-03 23:31:11'),
(11, 'pooooo', '$2y$10$GuQx7iwyJEB.K7RG.esLC.3ZLuatYsTtrqOJeDdv101Kx6sRr6Dt.', 'pysician', 'poo123@gmail.com', '2020-08-27 02:56:53'),
(12, 'abc', '$2y$10$rVqTs9pjUwa3Nyz8/GciA.GCX2fTxdRo/rsmyPR5RTOYNKQP0EXPK', 'general', 'xyz@gmail.com', '2020-09-19 06:45:10'),
(13, 'admin', '$2y$10$v6Vj5fmfqhLXvQIjPzuEluQjTogaAKWjpwdOOpgki7nuHVp8I.SXe', 'gp', 'admin@gmail.com', '2021-05-25 19:22:43'),
(14, 'admin1', '$2y$10$j6NghW1OmvZ/BJybQi4yj.KcZ0rnriuq9VQgdltxeTBu5SWbzXzPq', 'general physician', 'admin1234@gmail.com', '2021-06-07 16:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `flu`
--

CREATE TABLE `flu` (
  `id` int(11) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `fever` int(5) DEFAULT NULL,
  `cough` int(5) DEFAULT NULL,
  `chills` int(6) DEFAULT NULL,
  `dehydration` int(11) DEFAULT NULL,
  `fatigue` int(7) DEFAULT NULL,
  `vomiting` int(8) DEFAULT NULL,
  `diarrhea` int(8) DEFAULT NULL,
  `headache` int(8) DEFAULT NULL,
  `chestpain` int(10) DEFAULT NULL,
  `runny` int(17) DEFAULT NULL,
  `sorethroat` int(11) DEFAULT NULL,
  `asthma` int(6) DEFAULT NULL,
  `diabetes` int(8) DEFAULT NULL,
  `heartdisease` int(13) DEFAULT NULL,
  `lungdisease` int(12) DEFAULT NULL,
  `flu` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flu`
--

INSERT INTO `flu` (`id`, `age`, `fever`, `cough`, `chills`, `dehydration`, `fatigue`, `vomiting`, `diarrhea`, `headache`, `chestpain`, `runny`, `sorethroat`, `asthma`, `diabetes`, `heartdisease`, `lungdisease`, `flu`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(3, 45, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 1, 0, 1),
(4, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(5, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(6, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(7, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(8, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(9, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(10, 25, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(11, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(12, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(13, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(14, 20, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(15, 22, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(16, 18, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(17, 29, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(18, 47, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(19, 45, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(20, 46, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(21, 48, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(22, 45, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(23, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(24, 48, 33, 7, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(25, 45, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(26, 46, 30, 7, 1, 0, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(27, 47, 31, 4, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(28, 49, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(29, 47, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(30, 29, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(31, 21, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(32, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(33, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(34, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(35, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(36, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(37, 25, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(38, 22, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(39, 20, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(40, 26, 31, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(41, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(42, 27, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(43, 22, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(44, 25, 31, 4, 1, 0, 10, 1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(45, 20, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(46, 28, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(47, 22, 30, 4, 1, 0, 5, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(48, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(49, 27, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(50, 20, 40, 14, 4, 0, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(51, 21, 40, 14, 4, 0, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(52, 24, 31, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(53, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(54, 29, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(55, 25, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(56, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(57, 24, 39, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(58, 5, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(59, 28, 30, 4, 1, 0, 5, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(60, 10, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(61, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(62, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(63, 2, 39, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(64, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(65, 15, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(66, 66, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(67, 8, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(68, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(69, 11, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(70, 16, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(71, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(72, 4, 39, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(73, 17, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(74, 12, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(75, 68, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(76, 7, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(77, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(78, 14, 33, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(79, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(80, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(81, 5, 39, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(82, 16, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(83, 12, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(84, 70, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(85, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(86, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(87, 49, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(88, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(89, 29, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(90, 21, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(91, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(92, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(93, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(94, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(95, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(96, 50, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(97, 67, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 1, 0, 1),
(98, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 1, 0, 0, 0, 0),
(99, 28, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 1, 0, 0, 0),
(100, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(101, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(102, 45, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 1, 0, 1),
(103, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(104, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(105, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(106, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(107, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(108, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(109, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(110, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(111, 49, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(112, 47, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(113, 29, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(114, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(115, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(116, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(117, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(118, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(119, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(120, 10, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(121, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(122, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(123, 2, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(124, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(125, 15, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(126, 66, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(127, 8, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(128, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(129, 11, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(130, 16, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(131, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(132, 4, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(133, 17, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(134, 12, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(135, 68, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(136, 7, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(137, 2, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(138, 14, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(139, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(140, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(141, 5, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(142, 16, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(143, 12, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(144, 70, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(145, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(146, 2, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(147, 49, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(148, 47, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(149, 29, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(150, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(151, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(152, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(153, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(154, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(155, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(156, 50, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(157, 67, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 1, 0, 1),
(158, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 1, 0, 0, 0, 0),
(159, 28, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 1, 0, 0, 0),
(160, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(161, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(162, 45, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 1, 0, 1),
(163, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(164, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(165, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(166, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(167, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(168, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(169, 25, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(170, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(171, 49, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(172, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(173, 29, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(174, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(175, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(176, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(177, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(178, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(179, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(180, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(181, 45, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 1, 0, 1),
(182, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(183, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(184, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(185, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(186, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(187, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(188, 25, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(189, 28, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(190, 22, 30, 4, 1, 0, 5, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(191, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(192, 27, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(193, 20, 40, 14, 4, 0, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(194, 21, 40, 14, 4, 0, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(195, 24, 31, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(196, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(197, 29, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(198, 25, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(199, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(200, 24, 40, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(201, 5, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(202, 28, 30, 4, 1, 0, 5, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(203, 10, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(204, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(205, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(206, 2, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(207, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(208, 15, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(209, 66, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(210, 8, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(211, 2, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(212, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(213, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(214, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(215, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(216, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(217, 50, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(218, 67, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 1, 0, 1),
(219, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 1, 0, 0, 0, 0),
(220, 28, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 1, 0, 0, 0),
(221, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(222, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(223, 45, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 1, 0, 1),
(224, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(225, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(226, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(227, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(228, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(229, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(230, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(231, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(232, 25, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(233, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(234, 24, 40, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(235, 5, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(236, 28, 30, 4, 1, 0, 5, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(237, 10, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(238, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(239, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(240, 2, 39, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(241, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(242, 15, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(243, 66, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(244, 8, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(245, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(246, 11, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(247, 16, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(248, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(249, 4, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(250, 17, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(251, 12, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(252, 68, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(253, 55, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(254, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(255, 25, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(256, 26, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(257, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(258, 20, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(259, 22, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(260, 18, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(261, 29, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(262, 47, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(263, 45, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(264, 46, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(265, 48, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(266, 45, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(267, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(268, 48, 33, 7, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(269, 45, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(270, 46, 30, 7, 1, 0, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(271, 47, 31, 4, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(272, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(273, 11, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(274, 16, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(275, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(276, 4, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(277, 17, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(278, 12, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(279, 68, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(280, 7, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(281, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(282, 14, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(283, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(284, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(285, 5, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(286, 16, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(287, 12, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(288, 70, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(289, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(290, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(291, 49, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(292, 22, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(293, 25, 31, 4, 1, 0, 10, 1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(294, 20, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(295, 28, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(296, 22, 30, 4, 1, 0, 5, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(297, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(298, 27, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(299, 20, 40, 14, 4, 0, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(300, 21, 40, 14, 4, 0, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(301, 24, 31, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(302, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(303, 29, 30, 7, 2, 0, 5, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0),
(304, 25, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(305, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(306, 24, 40, 14, 4, 1, 10, 0, 0, 6, 4, 1, 1, 0, 0, 0, 0, 1),
(307, 5, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(308, 28, 30, 4, 1, 0, 5, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(309, 10, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(310, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(311, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(312, 2, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(313, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(314, 15, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(315, 66, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(316, 8, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(317, 2, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(318, 49, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(319, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(320, 29, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(321, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(322, 21, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(323, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(324, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(325, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(326, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(327, 50, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(328, 67, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 1, 0, 1),
(329, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 1, 0, 0, 0, 0),
(330, 28, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 1, 0, 0, 0),
(331, 6, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(332, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(333, 45, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 1, 0, 1),
(334, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(335, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(336, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(337, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(338, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(339, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(340, 25, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(341, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(342, 49, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(343, 47, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(344, 29, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(345, 28, 30, 4, 1, 0, 5, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(346, 10, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(347, 18, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(348, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(349, 2, 40, 14, 4, 0, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(350, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(351, 15, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(352, 66, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(353, 8, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(354, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(355, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(356, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(357, 21, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(358, 28, 32, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(359, 27, 30, 7, 2, 1, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(360, 50, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(361, 67, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 1, 0, 1),
(362, 25, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 1, 0, 0, 0, 0),
(363, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(364, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(365, 19, 39, 14, 4, 1, 10, 1, 1, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(366, 27, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(367, 27, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(368, 55, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(369, 25, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(370, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(371, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(372, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(373, 20, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(374, 22, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(375, 18, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(376, 29, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(377, 47, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(378, 45, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(379, 46, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(380, 48, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(381, 45, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(382, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(383, 48, 33, 7, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(384, 45, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(385, 46, 30, 7, 1, 0, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(386, 47, 31, 4, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(387, 49, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 1, 0, 0, 0, 0, 1),
(388, 47, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(389, 12, 30, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(390, 15, 40, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(391, 66, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(392, 8, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(393, 2, 39, 14, 4, 1, 10, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1),
(394, 11, 32, 7, 2, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(395, 16, 30, 4, 1, 0, 5, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(396, 27, 30, 7, 2, 0, 5, 0, 0, 2, 2, 1, 0, 0, 0, 0, 0, 0),
(397, 55, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 1, 0, 0, 1),
(398, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(399, 25, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(400, 26, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(401, 26, 39, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(402, 20, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(403, 22, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(404, 18, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(405, 29, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(406, 47, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(407, 45, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(408, 46, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(409, 48, 30, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(410, 45, 31, 7, 2, 0, 10, 0, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(411, 47, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(412, 48, 33, 7, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0),
(413, 45, 40, 14, 4, 1, 10, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 1),
(414, 46, 30, 7, 1, 0, 10, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0),
(415, 47, 31, 4, 2, 0, 10, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientlogin`
--

CREATE TABLE `patientlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientlogin`
--

INSERT INTO `patientlogin` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(6, 'sad', '$2y$10$hkmfHVwx4gI/JxD6Xogv..9CMF5rM6LwOExIW6mbdJ8e7hGFuriwy', '', '2020-03-11 08:41:40'),
(13, 'sadiq12', '$2y$10$myQY/1fg5Gf2fJ0zqpD9meNDSkYMe.QwrgqHGpv58MSl05Seg1N7O', 'wasim12@gmail.com', '2020-06-03 02:19:31'),
(14, 'Wasim', '$2y$10$O1/Pu8mW2tbwK7s.uCPT0OmG5yBHO1FPnKse7dNdvHqwWTucF8dAm', 'sad123@gmail.com', '2020-06-03 11:06:42'),
(15, 'Pooja', '$2y$10$mPpM2BvjVG7UqAkv.1a0Teym1a8UHcn3NlIejLVwvxOI3Nw3QjST6', 'poojajp511@gmail.com', '2020-06-03 11:09:47'),
(16, 'Yamini', '$2y$10$d4jkkanWZgLZaL7bFeKOh.6hHvJagg23J1Dv.tG8czgi21L1yg7p2', 'yamini35007@gmail.com', '2020-06-03 11:10:59'),
(17, 'shamsiyavasim', '$2y$10$bAsg.LybAvPPP4p6CNTk1.sEQUeKKoVSwD3iNVZP52zgYDFvsEkCm', 'shammuvasim@gmail.com', '2020-06-03 11:13:48'),
(18, 'yam', '$2y$10$9GUuoR4K9gn05OFf1nEBUO7UP9X5DTko5Z3s9FGxAC50BLY6m0ENe', 'yam123@gmail.com', '2020-06-03 23:26:58'),
(19, 'Naziya', '$2y$10$EUF4AM8QDCqyLhp/w102UePQEzBvNbNYZIMU5BKOaLVA0hMNYligC', 'naziya.baquri@gmail.com', '2020-06-16 09:22:53'),
(20, 'sadiqvasim', '$2y$10$dfUb/EniIoVpNdHNe3Ea6O.ReMERfBLYueeXIZdRkn6KiSVaBU8EG', 'wasim123@gmail.com', '2020-08-27 02:53:53'),
(21, 'sadiq', '$2y$10$/NzTmWcnqoOVbaa.YvVxT.0MoN5mXMr.Mhjo1VWW3ZqwO6XGv2XzS', 'wasim1234@gmail.com', '2021-01-08 12:13:08'),
(22, 'sadiq123', '$2y$10$udoBdKm8Yc/pHFwSZN6..OkxusO8fXe7sadxEtb/eauMQzQYVt1jS', 'sadiq123@gmail.com', '2021-01-08 20:33:03'),
(23, 'Wasimsadiq', '$2y$10$B5oNXzrQzuNuxNv5O.PD/e5risCOldaT5QNJDMq32JW7nxZtrnR2.', 'coolwasim12@gmail.com', '2021-04-06 22:46:13'),
(24, 'admin', '$2y$10$7bgo2fD5ff56FdycFHO.h.HPnuVGqZQN03vyD5YizYbS1iB1T98ZG', 'admin@gmail.com', '2021-05-12 09:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `quickconsult`
--

CREATE TABLE `quickconsult` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `fever` int(50) NOT NULL,
  `cough` int(50) NOT NULL,
  `chills` int(50) NOT NULL,
  `dehydration` int(50) NOT NULL,
  `fatigue` int(50) NOT NULL,
  `vomiting` int(50) NOT NULL,
  `diarrhea` int(50) NOT NULL,
  `headache` int(50) NOT NULL,
  `chestpain` int(50) NOT NULL,
  `runny` int(50) NOT NULL,
  `sorethroat` int(50) NOT NULL,
  `asthma` int(50) NOT NULL,
  `diabetes` int(50) NOT NULL,
  `heartdisease` int(50) NOT NULL,
  `lungdisease` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quickconsult`
--

INSERT INTO `quickconsult` (`id`, `username`, `email`, `type`, `age`, `fever`, `cough`, `chills`, `dehydration`, `fatigue`, `vomiting`, `diarrhea`, `headache`, `chestpain`, `runny`, `sorethroat`, `asthma`, `diabetes`, `heartdisease`, `lungdisease`) VALUES
(1, 'admin', 'admin123@gmail.com', '', 25, 32, 12, 14, 4, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(2, 'admin', 'admin123@gmail.com', '', 25, 32, 12, 14, 4, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(3, 'admin', 'admin123@gmail.com', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `flu`
--
ALTER TABLE `flu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientlogin`
--
ALTER TABLE `patientlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `quickconsult`
--
ALTER TABLE `quickconsult`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `flu`
--
ALTER TABLE `flu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `patientlogin`
--
ALTER TABLE `patientlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `quickconsult`
--
ALTER TABLE `quickconsult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
