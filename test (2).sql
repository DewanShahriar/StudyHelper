-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 04:39 PM
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
  `content` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `attachment` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `post_like` int(10) DEFAULT 0,
  `type` tinyint(1) DEFAULT 0 COMMENT 'only text 0 with media 1',
  `status` tinyint(1) DEFAULT 1,
  `created_at` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `updated_at` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `attachment`, `post_like`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'hi this is my first post', '', 4, 0, 1, '2021-05-07 00:57:12', NULL),
(2, 1, 'linkedin', 'assets/images/post-images/alexandershatovZjdPEFRMunsplash_20210507005729.jpg', 5, 1, 1, '2021-05-07 00:57:30', NULL),
(3, 1, '', 'assets/images/post-images/davidlevequeesvWHowWugunsplash_20210507005924.jpg', 5, 1, 1, '2021-05-07 00:59:24', NULL),
(4, 5, 'I love this', 'assets/images/post-images/christianwiedigerObYeidQunsplash_20210507010525.jpg', 4, 1, 1, '2021-05-07 01:05:26', NULL),
(5, 1, 'instagram', 'assets/images/post-images/alexandershatovQkODIBkounsplash_20210507011805.jpg', 3, 1, 1, '2021-05-07 01:18:06', NULL),
(6, 7, 'Tiktok', 'assets/images/post-images/alexandershatovIpFcjDBJIunsplash_20210507012209.jpg', 3, 1, 1, '2021-05-07 01:22:10', NULL),
(7, 1, 'twitter', 'assets/images/post-images/alexandershatovkxfDjWUsunsplash_20210507013428.jpg', 3, 1, 1, '2021-05-07 01:34:28', NULL),
(8, 1, 'youtube', 'assets/images/post-images/alexandershatovniUkImZcSPunsplash_20210507014020.jpg', 3, 1, 1, '2021-05-07 01:40:20', NULL),
(9, 1, '', 'assets/images/post-images/alexandershatovCTZhGbSxWLIunsplash_20210507014239.jpg', 4, 1, 1, '2021-05-07 01:42:44', NULL),
(10, 1, '', 'assets/images/post-images/alexandershatovZjdPEFRMunsplash_20210507014257.jpg', 4, 1, 1, '2021-05-07 01:42:57', NULL),
(11, 1, 'facebook', 'assets/images/post-images/alexandershatovCTZhGbSxWLIunsplash_20210507014436.jpg', 4, 1, 1, '2021-05-07 01:44:41', NULL),
(12, 1, '', 'assets/images/post-images/alexandershatovmrJGSYOFunsplash_20210507015327.jpg', 3, 1, 1, '2021-05-07 01:53:28', NULL),
(13, 1, '', 'assets/images/post-images/alexandershatovUVfvFrpxEunsplash_20210507015755.jpg', 4, 1, 1, '2021-05-07 01:57:56', NULL),
(14, 1, '', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210507020020.jpg', 3, 1, 1, '2021-05-07 02:00:20', NULL),
(15, 1, '', 'assets/images/post-images/alexwonglTzvalcpsunsplash_20210507020308.jpg', 4, 1, 1, '2021-05-07 02:03:10', NULL),
(16, 1, 'hi', '', 2, 0, 1, '2021-05-07 02:09:46', NULL),
(17, 1, '', 'assets/images/post-images/caseyhornerXRpNnTqdJEunsplash_20210508003723.jpg', 2, 1, 1, '2021-05-08 00:37:24', NULL),
(18, 1, '', 'assets/images/post-images/alexandershatovIpFcjDBJIunsplash_20210508221405.jpg', 3, 1, 1, '2021-05-08 22:14:06', NULL),
(19, 1, '', 'assets/images/post-images/ryanstoneUcctUBucnunsplash_20210508223826.jpg', 2, 1, 1, '2021-05-08 22:38:26', NULL),
(20, 1, '', 'assets/images/post-images/caseyhornerXRpNnTqdJEunsplash_20210508223900.jpg', 2, 1, 1, '2021-05-08 22:39:01', NULL),
(21, 1, '', 'assets/images/post-images/alexwonglTzvalcpsunsplash_20210508223930.jpg', 2, 1, 1, '2021-05-08 22:39:31', NULL),
(22, 1, '', 'assets/images/post-images/alexandershatovmrJGSYOFunsplash_20210508224052.jpg', 3, 1, 1, '2021-05-08 22:40:52', NULL),
(23, 1, '', 'assets/images/post-images/alexandershatovniUkImZcSPunsplash_20210509234018.jpg', 3, 1, 1, '2021-05-09 23:40:18', NULL),
(24, 1, '', 'assets/images/post-images/alexandershatovkxfDjWUsunsplash_20210509234220.jpg', 3, 1, 1, '2021-05-09 23:42:20', NULL),
(25, 1, '', 'assets/images/post-images/alexandershatovSXRyfGMsunsplash_20210510000215.jpg', 1, 1, 1, '2021-05-10 00:02:20', NULL),
(26, 1, '', 'assets/images/post-images/digecodigitalagencywordpressthemex_20210510000315.jpg', 1, 1, 1, '2021-05-10 00:03:15', NULL),
(27, 1, '', '', 1, 0, 1, '2021-05-10 00:28:49', NULL),
(28, 1, '', 'assets/images/post-images/photo_20210510002908.jpg', 1, 1, 1, '2021-05-10 00:29:08', NULL),
(29, 1, '', 'assets/images/post-images/_20210510002948.gif', 1, 1, 1, '2021-05-10 00:29:48', NULL),
(30, 1, '', 'assets/images/post-images/_20210510003026.gif', 1, 1, 1, '2021-05-10 00:30:26', NULL),
(31, 1, '', 'assets/images/post-images/home_20210510003053.png', 1, 1, 1, '2021-05-10 00:30:53', NULL),
(32, 1, '', '', 1, 0, 1, '2021-05-10 00:31:39', NULL),
(33, 1, '', 'assets/images/post-images/alexandershatovIpFcjDBJIunsplash_20210510003649.jpg', 1, 1, 1, '2021-05-10 00:36:49', NULL),
(34, 1, '', 'assets/images/post-images/ColorfulFlowersCuteFriendlyGeneralGreetingsMothersDayPoster_20210510004247.jpg', 1, 1, 1, '2021-05-10 00:42:47', NULL),
(35, 1, '', 'assets/images/post-images/SimpleWorkLinkedInBanner_20210510004317.jpg', 3, 1, 1, '2021-05-10 00:43:17', NULL),
(36, 1, '', 'assets/images/post-images/_20210510004627.jpg', 3, 1, 1, '2021-05-10 00:46:27', NULL),
(37, 1, '', 'assets/images/post-images/alexandershatovUVfvFrpxEunsplash_20210510005521.jpg', 3, 1, 1, '2021-05-10 00:55:21', NULL),
(38, 1, 'eid mubarak', 'assets/images/post-images/sitirahmanahmatdaudCeSUIunsplash_20210521161430.jpg', 2, 1, 1, '2021-05-21 16:14:30', NULL),
(39, 1, 'সরেজমিন দাকোপবাড়ছে রাত, বাড়ছে ভয়', '', 1, 0, 1, '2021-05-25 23:05:39', NULL),
(40, 1, '', 'assets/images/post-images/leronepietersIbWGumeNoAEunsplash_20210525232247.jpg', 1, 1, 1, '2021-05-25 23:22:48', NULL),
(41, 1, 'eidmubarak', 'assets/images/post-images/sitirahmanahmatdaudCeSUIunsplash_20210529193743.jpg', 0, 1, 1, '2021-05-29 19:37:44', NULL),
(42, 1, 'hi', 'assets/images/post-images/michaelaPOlpOWdHicunsplash_20210606235811.jpg', 0, 1, 1, '2021-06-06 23:58:12', NULL),
(43, 1, 'dsfdsf', '', 3, 0, 1, '2021-06-20 22:12:07', NULL),
(44, 4, '', 'assets/images/post-images/n_20210621224944.jpg', 1, 1, 1, '2021-06-21 22:49:44', NULL),
(45, 7, 'Iphone', 'assets/images/post-images/onurbinayOKjJZNTlunsplash_20210622232243.jpg', 2, 1, 1, '2021-06-22 23:22:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `comment_content`, `created_at`, `updated_at`) VALUES
(1, 43, 4, 'hekki', '2021-05-01 21:34:57', '2021-05-01 21:34:57'),
(14, 43, 1, 'hi', '2021-06-21 21:50:53', NULL),
(15, 43, 1, 'sadsad', '2021-06-21 21:52:51', NULL),
(16, 43, 1, 'sadsad', '2021-06-21 21:53:30', NULL),
(17, 43, 1, 'ok baby', '2021-06-21 21:53:50', NULL),
(18, 43, 1, 'ok baby', '2021-06-21 21:55:28', NULL),
(19, 41, 1, 'eid mubarak', '2021-06-21 21:57:58', NULL),
(20, 43, 1, 'ok', '2021-06-21 21:58:09', NULL),
(21, 42, 1, 'hi', '2021-06-21 21:58:16', NULL),
(22, 43, 4, 'wow', '2021-06-21 21:58:39', NULL),
(23, 42, 4, 'wow', '2021-06-21 21:58:46', NULL),
(24, 41, 4, 'eid mubarak', '2021-06-21 21:59:15', NULL),
(25, 40, 4, 'hi', '2021-06-21 22:00:52', NULL),
(26, 43, 4, 'ki khbr', '2021-06-21 22:03:07', NULL),
(27, 43, 4, 'error', '2021-06-21 22:05:29', NULL),
(28, 43, 6, 'i am swapnil', '2021-06-21 22:05:55', NULL),
(29, 42, 6, 'i am swapnil', '2021-06-21 22:06:06', NULL),
(30, 41, 6, 'eid mubarak', '2021-06-21 22:06:28', NULL),
(31, 40, 6, 'hi', '2021-06-21 22:06:37', NULL),
(32, 39, 6, 'ok', '2021-06-21 22:09:30', NULL),
(33, 43, 9, 'i am marzan', '2021-06-21 22:17:28', NULL),
(34, 43, 9, '.', '2021-06-21 22:17:33', NULL),
(35, 43, 1, 'i am shaan', '2021-06-21 22:19:34', NULL),
(36, 42, 1, 'i am shaan', '2021-06-21 22:19:43', NULL),
(37, 6, 1, 'iamshan', '2021-06-21 22:20:17', NULL),
(38, 42, 1, 'why', '2021-06-21 22:20:28', NULL),
(39, 43, 1, 'error', '2021-06-21 22:22:04', NULL),
(40, 42, 1, 'ok', '2021-06-21 22:23:31', NULL),
(41, 40, 4, 'ok', '2021-06-21 22:24:14', NULL),
(42, 39, 4, 'ok', '2021-06-21 22:24:20', NULL),
(43, 40, 4, 'ok', '2021-06-21 22:24:26', NULL),
(44, 39, 4, 'ok', '2021-06-21 22:24:30', NULL),
(45, 38, 4, 'ok', '2021-06-21 22:24:35', NULL),
(46, 37, 4, 'ok', '2021-06-21 22:24:41', NULL),
(47, 36, 4, 'ok', '2021-06-21 22:24:46', NULL),
(48, 43, 4, 'ok', '2021-06-21 22:24:52', NULL),
(49, 43, 4, 'ij', '2021-06-21 22:26:11', NULL),
(50, 42, 4, 'why not', '2021-06-21 22:31:29', NULL),
(51, 42, 4, 'error', '2021-06-21 22:32:19', NULL),
(52, 43, 4, '99', '2021-06-21 22:32:55', NULL),
(53, 43, 4, 'sas', '2021-06-21 22:34:20', NULL),
(54, 43, 4, 'disco', '2021-06-21 22:36:06', NULL),
(55, 43, 1, 'ok', '2021-06-21 22:37:31', NULL),
(56, 41, 1, 'ok', '2021-06-21 22:37:44', NULL),
(57, 41, 1, 'last id', '2021-06-21 22:37:51', NULL),
(58, 41, 1, 'eid mubarak', '2021-06-21 22:38:10', NULL),
(59, 41, 1, 'i ama in', '2021-06-21 22:38:23', NULL),
(60, 41, 1, 'asd', '2021-06-21 22:38:55', NULL),
(61, 41, 1, 'as', '2021-06-21 22:39:10', NULL),
(62, 41, 1, 'vivo', '2021-06-21 22:39:20', NULL),
(63, 43, 4, 'hi', '2021-06-21 22:43:49', NULL),
(64, 43, 4, 'ok to', '2021-06-21 22:44:11', NULL),
(65, 44, 6, 'nice pic', '2021-06-21 22:50:07', NULL),
(66, 44, 4, 'thanks', '2021-06-21 22:50:21', NULL),
(67, 44, 8, 'r e ami to mota hoye geci', '2021-06-21 22:51:23', NULL),
(68, 44, 1, 'amio aci oi konay', '2021-06-21 22:51:39', NULL),
(69, 45, 1, 'wow treat de', '2021-06-22 23:23:32', NULL),
(70, 45, 5, 'treat chai', '2021-06-22 23:24:03', NULL),
(71, 44, 5, 'ami nai', '2021-06-22 23:24:22', NULL),
(72, 44, 5, 'moja kor', '2021-06-22 23:24:35', NULL),
(73, 45, 1, 'treat des na kn', '2021-06-29 20:22:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `updated_at` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 5, '2021-05-07 01:02:28', NULL),
(3, 1, 5, '2021-05-07 01:03:02', NULL),
(4, 3, 5, '2021-05-07 01:03:31', NULL),
(5, 4, 1, '2021-05-07 01:05:46', NULL),
(6, 3, 1, '2021-05-07 01:05:55', NULL),
(7, 2, 1, '2021-05-07 01:05:56', NULL),
(9, 5, 7, '2021-05-07 01:21:35', NULL),
(10, 4, 7, '2021-05-07 01:21:37', NULL),
(11, 3, 7, '2021-05-07 01:21:38', NULL),
(12, 2, 7, '2021-05-07 01:21:40', NULL),
(13, 1, 7, '2021-05-07 01:21:41', NULL),
(14, 6, 1, '2021-05-07 01:26:24', NULL),
(15, 9, 1, '2021-05-07 01:42:51', NULL),
(22, 10, 1, '2021-05-07 01:43:20', NULL),
(24, 11, 1, '2021-05-07 01:45:59', NULL),
(28, 7, 1, '2021-05-07 02:06:29', NULL),
(29, 15, 6, '2021-05-07 02:07:12', NULL),
(30, 14, 6, '2021-05-07 02:07:14', NULL),
(31, 13, 6, '2021-05-07 02:07:15', NULL),
(32, 12, 6, '2021-05-07 02:07:17', NULL),
(33, 11, 6, '2021-05-07 02:07:19', NULL),
(34, 10, 6, '2021-05-07 02:07:20', NULL),
(35, 9, 6, '2021-05-07 02:07:22', NULL),
(36, 8, 6, '2021-05-07 02:07:23', NULL),
(37, 7, 6, '2021-05-07 02:07:25', NULL),
(38, 6, 6, '2021-05-07 02:07:27', NULL),
(39, 5, 6, '2021-05-07 02:07:28', NULL),
(40, 4, 6, '2021-05-07 02:07:30', NULL),
(41, 3, 6, '2021-05-07 02:07:31', NULL),
(42, 2, 6, '2021-05-07 02:07:33', NULL),
(43, 1, 6, '2021-05-07 02:07:34', NULL),
(44, 15, 12, '2021-05-07 02:08:06', NULL),
(45, 14, 12, '2021-05-07 02:08:08', NULL),
(46, 13, 12, '2021-05-07 02:08:10', NULL),
(47, 12, 12, '2021-05-07 02:08:11', NULL),
(48, 11, 12, '2021-05-07 02:08:13', NULL),
(49, 10, 12, '2021-05-07 02:08:14', NULL),
(50, 9, 12, '2021-05-07 02:08:16', NULL),
(51, 8, 12, '2021-05-07 02:08:21', NULL),
(52, 7, 12, '2021-05-07 02:08:22', NULL),
(53, 6, 12, '2021-05-07 02:08:24', NULL),
(54, 5, 12, '2021-05-07 02:08:25', NULL),
(55, 4, 12, '2021-05-07 02:08:27', NULL),
(56, 3, 12, '2021-05-07 02:08:28', NULL),
(57, 2, 12, '2021-05-07 02:08:30', NULL),
(58, 1, 12, '2021-05-07 02:08:31', NULL),
(62, 18, 4, '2021-05-08 22:14:36', NULL),
(66, 13, 1, '2021-05-08 22:45:59', NULL),
(95, 21, 1, '2021-05-09 23:29:46', NULL),
(98, 16, 1, '2021-05-09 23:30:01', NULL),
(117, 22, 1, '2021-05-09 23:37:49', NULL),
(118, 20, 1, '2021-05-09 23:39:24', NULL),
(119, 19, 1, '2021-05-09 23:39:29', NULL),
(120, 18, 1, '2021-05-09 23:39:34', NULL),
(121, 17, 1, '2021-05-09 23:39:44', NULL),
(122, 15, 1, '2021-05-09 23:39:47', NULL),
(126, 23, 1, '2021-05-09 23:42:15', NULL),
(128, 24, 1, '2021-05-09 23:42:26', NULL),
(129, 24, 5, '2021-05-09 23:42:42', NULL),
(130, 23, 5, '2021-05-09 23:42:43', NULL),
(131, 22, 5, '2021-05-09 23:42:45', NULL),
(132, 21, 5, '2021-05-09 23:42:46', NULL),
(133, 20, 5, '2021-05-09 23:42:48', NULL),
(134, 19, 5, '2021-05-09 23:42:49', NULL),
(135, 18, 5, '2021-05-09 23:42:50', NULL),
(136, 17, 5, '2021-05-09 23:42:52', NULL),
(137, 16, 5, '2021-05-09 23:42:53', NULL),
(138, 15, 5, '2021-05-09 23:42:54', NULL),
(139, 14, 5, '2021-05-09 23:42:56', NULL),
(140, 13, 5, '2021-05-09 23:42:57', NULL),
(141, 12, 5, '2021-05-09 23:42:59', NULL),
(142, 11, 5, '2021-05-09 23:43:00', NULL),
(143, 10, 5, '2021-05-09 23:43:01', NULL),
(144, 9, 5, '2021-05-09 23:43:04', NULL),
(145, 8, 5, '2021-05-09 23:43:05', NULL),
(146, 24, 6, '2021-05-09 23:58:59', NULL),
(147, 23, 6, '2021-05-09 23:59:01', NULL),
(148, 22, 6, '2021-05-09 23:59:02', NULL),
(149, 25, 1, '2021-05-10 00:03:02', NULL),
(150, 26, 1, '2021-05-10 00:03:19', NULL),
(154, 29, 1, '2021-05-10 00:33:02', NULL),
(155, 28, 1, '2021-05-10 00:33:04', NULL),
(156, 27, 1, '2021-05-10 00:33:04', NULL),
(157, 30, 1, '2021-05-10 00:33:13', NULL),
(158, 31, 1, '2021-05-10 00:33:15', NULL),
(159, 32, 1, '2021-05-10 00:33:16', NULL),
(160, 37, 1, '2021-05-10 00:59:29', NULL),
(161, 36, 1, '2021-05-10 00:59:31', NULL),
(162, 35, 1, '2021-05-10 00:59:32', NULL),
(163, 37, 4, '2021-05-10 00:59:44', NULL),
(164, 36, 4, '2021-05-10 00:59:46', NULL),
(165, 35, 4, '2021-05-10 00:59:47', NULL),
(166, 37, 7, '2021-05-10 00:59:58', NULL),
(167, 36, 7, '2021-05-10 00:59:59', NULL),
(168, 35, 7, '2021-05-10 01:00:01', NULL),
(169, 38, 1, '2021-05-21 16:15:19', NULL),
(170, 38, 4, '2021-05-21 16:15:34', NULL),
(171, 34, 1, '2021-05-21 16:19:17', NULL),
(172, 33, 1, '2021-05-21 16:19:19', NULL),
(173, 40, 1, '2021-05-25 23:28:16', NULL),
(174, 39, 1, '2021-05-25 23:28:18', NULL),
(177, 43, 1, '2021-06-21 21:07:59', NULL),
(178, 43, 9, '2021-06-21 22:17:50', NULL),
(179, 43, 4, '2021-06-21 22:25:01', NULL),
(180, 45, 1, '2021-06-22 23:23:24', NULL),
(181, 45, 5, '2021-06-22 23:23:48', NULL),
(182, 44, 5, '2021-06-22 23:24:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dob` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gender` tinyint(1) NOT NULL COMMENT 'male = 0 female = 1',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `profile_photo` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `verify_status` tinyint(1) DEFAULT 0 COMMENT 'verified = 1 not verified = 0',
  `created_at` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
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
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
