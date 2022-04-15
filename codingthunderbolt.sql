-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 07:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunderbolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` int(50) NOT NULL,
  `mes` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_no`, `mes`, `date`) VALUES
(1, 'first post', 'abc@xyz.com', 12345678, '', '2022-03-07 22:48:46'),
(2, 'divyam', 'divyam@gmail.com', 2147483647, NULL, '2022-03-07 23:25:57'),
(3, 'divyam', 'divyam@gmail.com', 2147483647, 'hi there , i am charsi', '2022-03-07 23:27:19'),
(8, 'mahipal', 'mahipal@gmail.com', 2147483647, 'fqwkjioeowe', '2022-03-07 23:30:03'),
(9, 'divyam', 'divyam@gmail.com', 2147483647, 'hey!!', '2022-03-08 19:16:50'),
(10, 'divyam', 'divyam@gmail.com', 2147483647, '', '2022-03-08 21:49:34'),
(11, 'harry', 'abs@gmail.com', 2147483647, '', '2022-03-08 22:46:47'),
(12, 'mahipal', 'mahipal@gmail.com', 2147483647, '', '2022-03-09 23:08:36'),
(13, 'harry', 'abs@gmail.com', 2147483647, 'hey i am harry', '2022-03-09 23:30:21'),
(14, 'mahipal', 'mahipal@gmail.com', 2147483647, 'fdssg', '2022-03-09 23:33:33'),
(15, 'divyam', 'divyam@gmail.com', 2147483647, 'hey!!!!!', '2022-03-09 23:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` varchar(50) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` varchar(500) NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(4, 'SQL-ALCHEMY', 'sql-alchemy', 'second-post', 'For the common case of having one Flask application all you have to do is to create your Flask application, load the configuration of choice and then create the SQLAlchemy object by passing it the application.\r\n\r\nOnce created, that object then contains all the functions and helpers from both sqlalchemy and sqlalchemy.orm. Furthermore it provides a class called Model that is a declarative base which can be used to declare model', 'about-bg.jpg', '2022-03-10 22:24:34'),
(5, 'Bulk email', 'bu11lk mail', 'third-post', 'Usually in a web application you will be sending one or two emails per request. In certain situations you might want to be able to send perhaps dozens or hundreds of emails in a single batch - probably in an external process such as a command-line script or cronjob.', 'about-bg.jpg', '2022-04-15 10:32:39'),
(6, 'Simple Relationships\r\n ', 'simple relationship', 'fourth-post', 'SQLAlchemy connects to relational databases and what relational databases are really good at are relations. As such, we shall have an example of an application that uses two tables that have a relationship to each other:', 'about-bg.jpg', '2022-03-10 22:41:29'),
(7, 'road to enlightment', 'road to enlightment', 'fifth-post', 'SQLAlchemy gives you access to the following things:\r\n\r\nall the functions and classes from sqlalchemy and sqlalchemy.orm\r\n\r\na preconfigured scoped session called session\r\n\r\nthe metadata\r\n\r\nthe engine\r\n\r\na SQLAlchemy.create_all() and SQLAlchemy.drop_all() methods to create and drop tables according to the models.\r\n\r\na Model baseclass that is a configured declarative base.', 'post-bg.jpg', '2022-04-11 21:03:27'),
(9, 'First Blog', 'yo ', 'blog-first', 'hey guys this is my firat ever blogging site . i am very excitedd to see this site growing \r\n', 'post-bg.jpg', '2022-04-12 23:34:23'),
(10, 'cricket', 'rules', 'cric-rule', 'there are 5 fielders allowed in the leg side excluding the bowler and keeper', 'post-bg.jpg', '2022-04-15 09:48:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
