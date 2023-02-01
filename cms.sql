-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2023 at 07:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(41, 'PHP'),
(42, 'OOP'),
(43, 'Bootstrap'),
(44, 'HTML & CSS'),
(45, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_status`, `comment_content`, `comment_date`) VALUES
(3, 33, 'Adhbhut', 'adhbhut@gmail.com', 'Approved', 'Ur code is so neat & clean', '2023-01-31'),
(4, 30, 'Parakh', 'parakh@gmail.com', 'Approved', 'Ur, knowledge in php is so vast\r\n', '2023-01-31'),
(5, 29, 'Karan', 'karan@gmail.com', 'Unapproved', 'ur design exactly matching to my ui/ux design', '2023-01-31'),
(6, 31, 'Rushi', 'rushi@gmail.com', 'Approved', 'Ur, course is awesome', '2023-01-31'),
(7, 32, 'Shaurya', 'shaurya@gmail.com', 'Approved', 'chaan course', '2023-01-31'),
(8, 31, 'Adhbhut', 'adhbhut@gmail.com', 'Approved', 'Chaan course', '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(29, 43, 'Bootstrap', 'Parakh', '2023-01-30', 'image_3.jpg  ', '                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor, tempore aliquam maiores minus excepturi aperiam rerum illum laboriosam fugiat iure eveniet voluptatibus corrupti eius voluptatum omnis similique temporibus aut magni!\r\nAlias quidem doloremque ab sit mollitia ipsa atque placeat nam adipisci fugit voluptatem laudantium, expedita facilis officia quia doloribus voluptatum modi! Tempore facere magnam at laudantium odit, ipsam deleniti numquam?\r\n      ', 'Bootstrap, Design, Framework', 4, 'Posted'),
(30, 41, 'PHP', 'Sai Mahale', '2023-01-30', 'image_1.jpg', 'PHP is an amazing and popular language\r\n\r\nIt is powerful enough to be at the core of the biggest blogging system on the web (WordPress)\r\nIt is deep enough to run large social networks\r\nIt is also easy enough to be a beginners first server side language', 'PHP, Script, Backend, Server, Serverside', 4, 'Experienced'),
(31, 44, 'HTML & CSS', 'Parakh Choudhary', '2023-01-31', 'image_2.jpg', 'HTML is the standard markup language for Web pages.\r\nWith HTML you can create your own Website.\r\nHTML is easy to learn, You will enjoy it.\r\n\r\nCSS is the language we use to style an HTML document.\r\nCSS describes how HTML elements should be displayed.\r\nThis tutorial will teach you CSS from basic to advanced.', 'HTML, CSS, Frontend, HTML5, CSS3, Styling, Structure', 5, 'Beginner'),
(32, 45, 'Javascript', 'Harshvardhan', '2023-01-31', 'image_5.jpg', 'JavaScript is the world most popular programming language.\r\nJavaScript is the programming language of the Web.\r\nJavaScript is easy to learn.\r\nThis tutorial will teach you JavaScript from basic to advanced.\r\n\r\nJavaScript is the world most popular programming language.\r\nJavaScript is the programming language of the Web.\r\nJavaScript is easy to learn.\r\nThis tutorial will teach you JavaScript from basic to advanced.', 'Javascript, scripting, backend, function, closure, asynchronous, script', 4, 'Expert'),
(33, 42, 'OOP', 'Adarsh', '2023-01-31', 'image_4.jpg', 'OOP stands for Object-Oriented Programming.\r\n\r\nProcedural programming is about writing procedures or methods that perform operations on the data, while object-oriented programming is about creating objects that contain both data and methods.', 'OOP, javascript, object, class, ', 4, 'Expert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
