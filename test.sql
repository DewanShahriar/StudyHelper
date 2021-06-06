-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 04:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` text DEFAULT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `post_like` int(10) DEFAULT 0,
  `type` tinyint(1) DEFAULT 0 COMMENT 'only text 0 with media 1',
  `status` tinyint(1) DEFAULT 1,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `attachment`, `post_like`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n\r\n', 'assets/images/post-images/1.jpg', NULL, 1, 1, '2021', ''),
(2, 1, 'my name is shahriar rahman shaan', '', NULL, 0, 1, '2021', ''),
(3, 1, 'all are good', '', NULL, 0, 1, '2021-04-23 21:44', NULL),
(4, 1, 'this is very nice', 'assets/images/post-images/photo_20210423214437.jpg', NULL, 1, 1, '2021-04-23 21:44', NULL),
(7, 1, 'my name is shaan', 'assets/images/post-images/madaraparmalgCsAaGgunsplash_20210423215219.jpg', NULL, 1, 1, '2021-04-23 21:52', NULL),
(8, 9, 'hi i am marzan', 'assets/images/post-images/johannespleniohvrpOmuMrAIunsplash_20210423215828.jpg', NULL, 1, 1, '2021-04-23 21:58', NULL),
(9, 9, 'ok', '', NULL, 0, 1, '2021-04-23 22:02', NULL),
(10, 5, 'hi i am sharif', 'assets/images/post-images/photo_20210423220453.jpg', NULL, 1, 1, '2021-04-23 22:04', NULL),
(11, 5, 'prepend', '', NULL, 0, 1, '2021-04-23 22:05', NULL),
(12, 1, 'ok', '', NULL, 0, 1, '2021-04-23 22:22', NULL),
(43, 1, 'ok come', 'assets/images/post-images/photo_20210423231207.jpg', NULL, 1, 1, '2021-04-23 23:12', NULL),
(44, 1, 'asdsa', '', NULL, 0, 1, '2021-04-23 23:17', NULL),
(45, 1, 'asdasd', 'assets/images/post-images/madaraparmalgCsAaGgunsplash_20210423231740.jpg', NULL, 1, 1, '2021-04-23 23:17', NULL),
(47, 1, 'wish me', 'assets/images/post-images/photo_20210423232059.jpg', NULL, 1, 1, '2021-04-23 23:20', NULL),
(48, 1, 'fsdfsd', '', NULL, 0, 1, '2021-04-23 23:23', NULL),
(49, 1, 'uyut', 'assets/images/post-images/etiennegirardetsgYamIzhAhgunsplash_20210423232322.jpg', NULL, 1, 1, '2021-04-23 23:23', NULL),
(50, 1, 'dsfds', '', NULL, 0, 1, '2021-04-23 23:23', NULL),
(51, 1, 'my name is name', 'assets/images/post-images/ryanstoneUcctUBucnunsplash_20210423232855.jpg', NULL, 1, 1, '2021-04-23 23:28', NULL),
(52, 5, 'i am sharif', 'assets/images/post-images/IMGcopy_20210423233110.JPG', NULL, 1, 1, '2021-04-23 23:31', NULL),
(53, 6, 'i am new on this site', '', NULL, 0, 1, '2021-04-23 23:38', NULL),
(54, 6, 'Digital marketing definition: digital marketing (also known as online marketing, internet marketing, or web marketing) refers to any form of marketing or advertising delivered through traditional and new digital channels such as websites, social media, mobile applications, email, or search engines, among others.', 'assets/images/post-images/digitalmarketing_20210423235455.jpg', NULL, 1, 1, '2021-04-23 23:54', NULL),
(55, 1, 'Goal-Oriented: The ideal website layout is symmetrical, clear, and orderly. Most importantly, top layouts make it clear what\'s expected of visitors once they land. You can do this with negative space and prominent calls-to-action that can\'t be missed', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210424000925.jpg', NULL, 1, 1, '2021-04-24 00:09', NULL),
(56, 1, 'digital marketing is my passion', '', NULL, 0, 1, '2021-04-24 00:11', NULL),
(57, 1, 'good nit every one', '', NULL, 0, 1, '2021-04-24 01:06', NULL),
(58, 1, 'hello friends', '', NULL, 0, 1, '2021-04-24 21:57', NULL),
(59, 1, 'hi', '', NULL, 0, 1, '2021-04-24 22:08', NULL),
(60, 1, 'sunshine', '', NULL, 0, 1, '2021-04-24 22:09', NULL),
(61, 1, 'hi', '', NULL, 0, 1, '2021-04-24 22:10', NULL),
(62, 1, '', 'assets/images/post-images/ryanstoneUcctUBucnunsplash_20210424221053.jpg', NULL, 1, 1, '2021-04-24 22:10', NULL),
(63, 1, '', 'assets/images/post-images/madaraparmalgCsAaGgunsplash_20210424221137.jpg', NULL, 1, 1, '2021-04-24 22:11', NULL),
(64, 1, '', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210424221233.jpg', NULL, 1, 1, '2021-04-24 22:12', NULL),
(65, 1, 'hi', '', NULL, 0, 1, '2021-04-24 22:13', NULL),
(66, 1, '', 'assets/images/post-images/photo_20210424221531.jpg', NULL, 1, 1, '2021-04-24 22:15', NULL),
(67, 4, 'hi', '', NULL, 0, 1, '2021-04-24 22:16', NULL),
(68, 4, 'i am sharif', '', NULL, 0, 1, '2021-04-24 22:18', NULL),
(69, 4, 'ok', '', NULL, 0, 1, '2021-04-24 22:18', NULL),
(70, 4, '', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210424222046.jpg', NULL, 1, 1, '2021-04-24 22:20', NULL),
(71, 12, 'whats up guys. i am new in studyhelper', '', NULL, 0, 1, '2021-04-24 22:39', NULL),
(72, 12, '', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210424224006.jpg', NULL, 1, 1, '2021-04-24 22:40', NULL),
(73, 1, 'ok', 'assets/images/post-images/caseyhornerXRpNnTqdJEunsplash_20210424224441.jpg', NULL, 1, 1, '2021-04-24 22:44', NULL),
(74, 1, '', 'assets/images/post-images/marvinmeyerCDuHXffzounsplash_20210424230054.jpg', NULL, 1, 1, '2021-04-24 23:00', NULL),
(75, 1, '', 'assets/images/post-images/photo_20210424230101.jpg', NULL, 1, 1, '2021-04-24 23:01', NULL),
(76, 1, 'hi', 'assets/images/post-images/photo_20210424230109.jpg', NULL, 1, 1, '2021-04-24 23:01', NULL),
(77, 1, 'sdasd', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210424230135.jpg', NULL, 1, 1, '2021-04-24 23:01', NULL),
(78, 1, 'fsafd', 'assets/images/post-images/photo_20210424230150.jpg', NULL, 1, 1, '2021-04-24 23:01', NULL),
(79, 1, '', 'assets/images/post-images/photo_20210424230212.jpg', NULL, 1, 1, '2021-04-24 23:02', NULL),
(80, 1, 'hi', 'assets/images/post-images/StudyAssistance_20210425181511.png', NULL, 1, 1, '2021-04-25 18:15', NULL),
(81, 1, 'is this cool', 'assets/images/post-images/StudyAssistance_20210425230657.png', NULL, 1, 1, '2021-04-25 23:06', NULL),
(82, 1, 'ok', '', NULL, 0, 1, '2021-04-25 23:08', NULL),
(83, 1, '', 'assets/images/post-images/merakistCNbRsQjmHQunsplash_20210425231609.jpg', NULL, 1, 1, '2021-04-25 23:16', NULL),
(84, 1, '', 'assets/images/post-images/prateekkatyalxvGlvBLFwunsplash_20210425231637.jpg', NULL, 1, 1, '2021-04-25 23:16', NULL),
(85, 5, '', 'assets/images/post-images/alexandershatovmrJGSYOFunsplash_20210425231748.jpg', NULL, 1, 1, '2021-04-25 23:17', NULL),
(86, 6, '', 'assets/images/post-images/alexandershatovQkODIBkounsplash_20210425233033.jpg', 0, 1, 1, '2021-04-25 23:30', NULL),
(87, 7, 'facebook', 'assets/images/post-images/alexandershatovCTZhGbSxWLIunsplash_20210425233222.jpg', 0, 1, 1, '2021-04-25 23:32', NULL),
(88, 7, '', 'assets/images/post-images/alexandershatovkxfDjWUsunsplash_20210425233619.jpg', 0, 1, 1, '2021-04-25 23:36', NULL),
(89, 1, 'linkedin', 'assets/images/post-images/alexandershatovZjdPEFRMunsplash_20210425234411.jpg', 0, 1, 1, '2021-04-25 23:44', NULL),
(90, 7, '#instagram', 'assets/images/post-images/alexandershatovSXRyfGMsunsplash_20210425235201.jpg', 0, 1, 1, '2021-04-25 23:52', NULL),
(91, 7, 'Netflix', 'assets/images/post-images/alexandershatovUVfvFrpxEunsplash_20210425235335.jpg', 0, 1, 1, '2021-04-25 23:53', NULL),
(92, 1, 'Hello youTube', 'assets/images/post-images/alexandershatovniUkImZcSPunsplash_20210425235527.jpg', 0, 1, 1, '2021-04-25 23:55', NULL),
(93, 1, 'Tiktok', 'assets/images/post-images/alexandershatovIpFcjDBJIunsplash_20210425235703.jpg', 0, 1, 1, '2021-04-25 23:57', NULL),
(94, 1, 'good nit guys', '', 0, 0, 1, '2021-04-26 01:33', NULL),
(95, 1, 'hi friends ', 'assets/images/post-images/alexandershatovUVfvFrpxEunsplash_20210427012206.jpg', 0, 1, 1, '2021-04-27 01:22', NULL),
(109, 1, 'sdasdas', '', 0, 0, 1, '2021-04-27 22:51', NULL),
(110, 1, 'sdasdas', '', 0, 0, 1, '2021-04-27 22:51', NULL),
(111, 1, 'hi', '', 0, 0, 1, '2021-04-27 22:52', NULL),
(112, 1, 'ok', '', 0, 0, 1, '2021-04-27 22:58', NULL),
(113, 1, 'ok bye tata', '', 0, 0, 1, '2021-04-27 22:58', NULL),
(114, 1, '', 'assets/images/post-images/alexandershatovZjdPEFRMunsplash_20210427225918.jpg', 0, 1, 1, '2021-04-27 22:59', NULL),
(115, 1, '', 'assets/images/post-images/alexandershatovQkODIBkounsplash_20210427230008.jpg', 0, 1, 1, '2021-04-27 23:00', NULL),
(116, 1, 'sda', '', 0, 0, 1, '2021-04-27 23:01', NULL),
(117, 1, '', 'assets/images/post-images/alexandershatovkxfDjWUsunsplash_20210427230211.jpg', 0, 1, 1, '2021-04-27 23:02', NULL),
(122, 4, 'dear shan', '', 0, 0, 1, '2021-04-27 23:08', NULL),
(123, 1, 'hi', '', 0, 0, 1, '2021-04-27 23:10:39', NULL),
(124, 1, '', 'assets/images/post-images/alexandershatovSXRyfGMsunsplash_20210427231551.jpg', 0, 1, 1, '2021-04-27 23:15:51', NULL),
(125, 4, '', 'assets/images/post-images/alexandershatovQkODIBkounsplash_20210427233119.jpg', 0, 1, 1, '2021-04-27 23:31:19', NULL),
(126, 1, 'car', 'assets/images/post-images/davidlevequeesvWHowWugunsplash_20210428004829.jpg', 0, 1, 1, '2021-04-28 00:48:29', NULL),
(127, 7, '', 'assets/images/post-images/christianwiedigerObYeidQunsplash_20210428010243.jpg', 0, 1, 1, '2021-04-28 01:02:43', NULL),
(128, 7, '', 'assets/images/post-images/yuvrajsinghLYnsYmYunsplash_20210428010531.jpg', 0, 1, 1, '2021-04-28 01:05:31', NULL),
(129, 7, '', 'assets/images/post-images/davidlevequeesvWHowWugunsplash_20210428010640.jpg', 0, 1, 1, '2021-04-28 01:06:40', NULL),
(130, 1, 'good night', 'assets/images/post-images/michaelaPOlpOWdHicunsplash_20210428011641.jpg', 0, 1, 1, '2021-04-28 01:16:41', NULL),
(131, 1, 'hi friends', '', 0, 0, 1, '2021-04-28 21:13:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` tinyint(1) NOT NULL COMMENT 'male = 0 female = 1',
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `profile_photo` varchar(250) DEFAULT NULL,
  `verify_status` tinyint(1) DEFAULT 0 COMMENT 'verified = 1 not verified = 0',
  `created_at` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `first_name`, `last_name`, `full_name`, `user_name`, `email`, `password`, `dob`, `gender`, `city`, `country`, `profile_photo`, `verify_status`, `created_at`) VALUES
(1, 'shahriar', 'shaan', NULL, NULL, 'shahriar206891@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1996/10/24', 0, 'dhaka', 'BGD', 'assets/images/users/user-4.jpg', NULL, ''),
(4, 'Dewan', 'Shahriar', NULL, NULL, 'shahriar@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1997/1/1', 0, 'dhaka', 'BGD', 'assets/images/users/user-6.jpg', NULL, ''),
(5, 'Sharif', 'Hossain', NULL, NULL, 'sharif@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1995/2/28', 0, 'dhaka', 'BGD', 'assets/images/users/user-7.jpg', NULL, ''),
(6, 'Swapnil', 'Musa', NULL, NULL, 'swapnil@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1995/1/1', 0, 'dhaka', 'BGD', 'assets/images/users/user-8.jpg', NULL, ''),
(7, 'Rayed', 'Tuhin', NULL, NULL, 'tuhin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1995/3/1', 0, 'dhaka', 'BGD', 'assets/images/users/user-12.jpg', NULL, ''),
(8, 'Nayeem', 'Shohag', NULL, NULL, 'shohag@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1994/1/1', 0, 'dhaka', 'BGD', 'assets/images/users/user-13.jpg', NULL, ''),
(9, 'Marzan', 'Sarkar', NULL, NULL, 'marzan@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1995/3/3', 0, 'dhaka', 'BGD', 'assets/images/users/user-19.jpg', NULL, ''),
(11, 'Zameer', 'Hossian', NULL, NULL, 'zameer@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1995/4/1', 0, 'dhaka', 'BGD', 'assets/images/users/user-19.jpg', 0, ''),
(12, 'Nibir', 'Ahmed', NULL, NULL, 'nibir@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1997-03-03', 0, 'dhaka', 'BGD', NULL, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
