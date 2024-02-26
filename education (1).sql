-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 03:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Fullname` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(400) NOT NULL,
  `password` varchar(200) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Fullname`, `Username`, `email`, `image`, `password`, `admin_id`) VALUES
('aya', 'lotfi', 'aya@yahoo', '', '1234', 1),
('john', 'john doe', 'johndoe@yahoo.com', '', '1234', 6),
('yass', 'yass', 'safilotfi401@gmail.com', '', '1234', 9);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryName` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryName`, `category_id`) VALUES
('soon', 29),
('important', 30),
('attractive', 31);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meetings_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `Content` longtext DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `active` enum('yes','no','','') NOT NULL,
  `image` varchar(400) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meetings_id`, `title`, `Content`, `Location`, `price`, `active`, `image`, `category_id`, `date`) VALUES
(60, 'New Lecturers Meeting', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 14, 'yes', 'images/meeting-01.jpg', 29, '2024-03-08'),
(62, 'Network Teaching Concept', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 24, 'yes', 'image/meeting-03.jpg', 29, '2024-03-01'),
(63, 'Instant Lecture Design', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 64, 'yes', 'image/meeting-02.jpg', 29, '2024-03-28'),
(64, 'Online Social Networking', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 74, 'yes', 'image/meeting-03.jpg', 29, '2024-03-30'),
(65, 'Online Teaching Techniques', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 22, 'yes', 'image/meeting-02.jpg', 30, '2024-03-14'),
(66, 'Technology Conference', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 45, 'yes', 'image/meeting-03.jpg', 30, '2024-03-24'),
(67, 'Online Teaching Techniques', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 52, 'yes', 'image/meeting-01.jpg', 30, '2024-03-27'),
(68, 'Instant Lecture Design', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 64, 'yes', 'image/meeting-02.jpg', 30, '2024-03-29'),
(69, 'Online Teaching Tools', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 32, 'yes', 'image/meeting-04.jpg', 31, '2024-04-24'),
(70, 'New Teaching Techniques', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 34, 'yes', 'image/meeting-02.jpg', 31, '2024-03-22'),
(71, 'Online Teaching Techniques', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 52, 'yes', 'image/meeting-01.jpg', 31, '2024-03-18'),
(72, 'Online Social Networking', 'This is an edu meeting HTML CSS template provided by <a href=\"https://templatemo.com/\" target=\"_blank\" rel=\"nofollow\">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout.\r\n If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML\r\n CSS templates for your websites, you may visit <a rel=\"nofollow\" href=\"https://www.toocss.com/\" target=\"_blank\">Too CSS website</a>. If you need a working contact form script, please visit \r\n<a href=\"https://templatemo.com/contact\" target=\"_parent\">our contact page</a> for more info.\r\n                    \r\n                    <br><br>You are allowed to use this edu meeting CSS template for your school or university or business. You can feel free to modify or edit this layout.\r\n You are not allowed to redistribute the template ZIP file on any other template website. Please contact us for more information.', 'Recreio dos Bandeirantes, Rio de Janeiro - RJ, 22795-008, Brazil', 74, 'yes', 'image/meeting-03.jpg', 31, '2024-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active` enum('yes','no','','') NOT NULL,
  `password` varchar(150) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `email`, `user_id`, `active`, `password`, `name`, `date`) VALUES
('tony2023', 'tony@gmail.com', 9, 'no', '66777', 'Tony Adam', '2024-02-07'),
('tony2023', 'tony@gmail.com', 10, 'yes', '12334', 'Tony Adam', '2024-02-29'),
('tony2023', 'tony@gmail.com', 11, 'yes', '66777', 'Tony Adam', '2024-02-07'),
('tony2023', 'tony@gmail.com', 12, 'yes', '12334', 'Tony Adam', '2024-02-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meetings_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `meetings_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
