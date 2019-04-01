-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2019 at 11:07 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci-auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'First post', 'first-post', 'Content of first post'),
(2, 'Second post', 'second-post', 'Content of second post'),
(3, 'New post', 'new-post', 'Contain of new post'),
(5, 'Hello world', 'hello-world', 'Hello World');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'test@test.test', '$2y$10$izniHNpb4mBUA1M61GdGu.gfYS3I8EMB/5hJg2BGlEX2jgKFvNHXW', 0, '3fQEaWNF7zpCGS0m', '2019-04-01 01:00:43', NULL),
(2, 'mkhoir.anam@gmail.com', '$2y$10$7oJDhWfbQampHczGcq3yi.bQcQbbXc7IcIeFmeYzVr0yq86oKs6sG', 1, 'F0zCvIDoPxKfLE1s', '2019-04-01 07:31:18', NULL),
(3, 'test@email.com', '$2y$10$cbH.tF4Z4bTcPm0t/Uu1juwp.frMPG/7LAP.dDvTz0JUmTeaUse/a', 0, 'CdU7WY9MsGmpyOND', '2019-04-01 07:32:48', NULL),
(4, 'test@test.com', '$2y$10$GniEpxYsjhDWLyQpUuYnXOKF8FJCGRF4AKVUGKO53XusQTQYTT3Qe', 0, 'rezKilxHAFvpLbdR', '2019-04-01 07:33:30', NULL),
(5, 'test@email.co.id', '$2y$10$v1LlxptYcJybLHYKa/u6i.pzTnX5gb6mR7JWwuk9fM73KbqYMUG0W', 1, 'YAC8v6M5QIqPELZS', '2019-04-01 07:47:41', NULL),
(6, 'asdas@ere.com', '$2y$10$TgZ/lCbedBeO4jRo50Pgt.1YbQB6hN/PoKkFxF5M4Trtsy0spUVZi', 1, 'iOuEoZ8eMCX7f0QN', '2019-04-01 07:49:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
