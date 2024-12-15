-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2024 at 06:59 AM
-- Server version: 8.0.39-cll-lve
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shuvosar_civileexpert`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `role_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `status`, `role_id`, `name`, `username`, `email`, `email_verified`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Admin', 'admin', 'admin@gmail.com', 0, '1613814214513697840.png', '$2y$10$7Q52/GYNwIovPALpVFK7Xeu7OfcojWdFqbvsRGrNnvpOyBq5CFzCW', NULL, NULL, '2021-04-11 06:19:17'),
(2, 1, 1, 'Rony', 'rony', 'rony@gmail.com', 0, '16137989081753336377.png', '$2y$10$19NOEORKuK8qEPM13S38R.lD.tsOCQntS2rK9finxx3zNt8Ql/d2.', NULL, '2021-02-19 22:28:56', '2021-02-19 23:28:28'),
(3, 1, 2, 'Sihab', 'sihab', 'sihab@gmail.com', 0, '1677259822280314617.php7', '$2y$10$KLLAvssopCM/dr2iNW53E.VPU2Me2hG1XcrSPWt/zedsvgWEN7jzK', NULL, '2021-02-19 22:31:38', '2023-02-24 16:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint UNSIGNED NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '01/2021', '2021-02-11 05:12:54', '2021-02-11 05:12:54'),
(2, '09/2020', '2021-02-11 05:13:12', '2021-02-11 05:13:12'),
(3, '02/2021', '2021-02-11 05:13:24', '2021-02-16 07:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Business', 'Business', 1, 0, '2021-02-11 00:51:53', '2021-02-11 00:58:11'),
(2, 1, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(3, 1, 'Digital Marketing', 'Digital-Marketing', 1, 0, '2021-02-11 00:52:40', '2021-02-11 00:52:40'),
(4, 1, 'UI Design', 'UI-Design', 1, 0, '2021-02-11 00:52:59', '2021-02-11 00:52:59'),
(5, 2, 'Business', 'Business', 1, 0, '2021-02-11 00:51:53', '2021-02-11 00:58:11'),
(6, 2, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(7, 2, 'Digital Marketing', 'Digital-Marketing', 1, 0, '2021-02-11 00:52:40', '2021-02-11 00:52:40'),
(8, 2, 'UI Design', 'UI-Design', 1, 0, '2021-02-11 00:52:59', '2021-02-11 00:52:59'),
(9, 3, 'Business', 'Business', 1, 0, '2021-02-11 00:51:53', '2021-02-11 00:58:11'),
(10, 3, 'Technology', 'Technology', 1, 1, '2021-02-11 00:52:01', '2021-02-11 00:58:07'),
(11, 3, 'Digital Marketing', 'Digital-Marketing', 1, 0, '2021-02-11 00:52:40', '2021-02-11 00:52:40'),
(12, 3, 'UI Design', 'UI-Design', 1, 0, '2021-02-11 00:52:59', '2021-02-11 00:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `bcategory_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `image`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco', '16130436341918352388.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:33'),
(2, 1, 2, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.', '16130436082031699655.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:24'),
(3, 1, 1, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.', '1613043644825936294.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:18'),
(4, 2, 8, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco', '16130436341918352388.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:33'),
(5, 2, 6, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.', '16130436082031699655.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:24'),
(6, 2, 5, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.', '1613043644825936294.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:18'),
(7, 3, 9, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco', '16130436341918352388.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:33'),
(8, 3, 10, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.', '16130436082031699655.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:24'),
(9, 3, 11, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.', '1613043644825936294.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-02-11 05:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `type` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `language_id`, `status`, `name`, `image`, `link`, `serial_number`, `type`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(2, '1', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(3, '1', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(4, '1', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(5, '1', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 1, 2, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(6, '1', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 2, 2, '2021-02-10 04:41:05', '2021-02-10 05:40:48'),
(7, '1', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 3, 2, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(8, '1', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 4, 2, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(9, '1', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 5, 2, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(10, '1', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 6, 2, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(11, '1', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 7, 2, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(12, '1', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:41:05', '2021-02-10 05:40:48'),
(13, '1', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(14, '1', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(15, '1', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(16, '1', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(17, '1', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(18, '1', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, 1, '2021-02-10 04:41:05', '2021-02-10 05:40:48'),
(19, '1', 1, 'sss', '16738903791088227300.png', 'http://localhost/laravel_bulidring_construction/admin/client/add?language=en', 1, 2, '2023-01-16 11:32:59', '2023-01-16 11:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `language_id`, `status`, `title`, `number`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Projct Complate', 569, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-02-12 22:02:20'),
(2, 1, 1, 'Happy Clients', 356, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-02-12 22:02:16'),
(3, 1, 1, 'Business Partners', 783, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-02-12 22:02:12'),
(4, 1, 1, 'IT Consultant', 894, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-02-12 22:01:30'),
(5, 2, 1, 'Projct Complate', 569, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-02-12 22:02:20'),
(6, 2, 1, 'Happy Clients', 356, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-02-12 22:02:16'),
(7, 2, 1, 'Business Partners', 783, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-02-12 22:02:12'),
(8, 2, 1, 'IT Consultant', 894, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-02-12 22:01:30'),
(9, 3, 1, 'Projct Complate', 569, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-02-12 22:02:20'),
(10, 3, 1, 'Happy Clients', 356, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-02-12 22:02:16'),
(11, 3, 1, 'Business Partners', 783, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-02-12 22:02:12'),
(12, 3, 1, 'IT Consultant', 894, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-02-12 22:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `daynamicpages`
--

CREATE TABLE `daynamicpages` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daynamicpages`
--

INSERT INTO `daynamicpages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Trams & Conditions', 'Trams', 'Trams-&-Conditions', 0x3c73656374696f6e20636c6173733d22707269766163792d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020203c64697620636c6173733d22726f77223e0d0a202020202020202020202020202020203c64697620636c6173733d22636f6c2d6c672d3132223e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e5472616d732026616d703b20436f6e646974696f6e733c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d69736564200d0a776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f207573650d0a20612070617373616765206f6620546865726520617265206d616e7920766172696174696f6e732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c7370616e20636c6173733d2264617465223e55706461746564204a616e7561727920362c20323032303c2f7370616e3e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e64697373652076697461650d0a206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c200d0a757420736f64616c65732066656c69732072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c206964200d0a766573746962756c756d20746f72746f7220616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69206175677565204c6f72656d20697073756d20646f6c6f720d0a2073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365200d0a7669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69200d0a61756775652e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e4f766572766965773c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f723c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c756c20636c6173733d226c697374223e0d0a202020202020202020202020202020202020202020202020202020203c6c693e52616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e42792070726f766964696e6720706572736f6e616c20696e666f726d6174696f6e20746f20757320616e642062792072657461696e696e6720757320746f2070726f7669646520796f752077697468207468652053657276696365732e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e566f6c756e746172696c7920636f6e73656e7420746f2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f66207375636820706572736f6e616c20696e666f726d6174696f6e2061732073706563696669656420696e2074686973205072697661637920506f6c6963792e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e546865206c6567616c20626173657320666f72206f75722070726f63657373696e67206f66200d0a706572736f6e616c20696e666f726d6174696f6e20617265207072696d6172696c792074686174207468652070726f63657373696e67206973206e656365737361727920666f72200d0a70726f766964696e672074686520536572766963657320616e642074686174207468652070726f63657373696e672069732063617272696564206f757420696e206f7572200d0a6c65676974696d61746520696e746572657374732c207768696368206172652066757274686572206578706c61696e65642062656c6f772e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e576974686f7574206c696d6974696e672074686520666f7265676f696e672c207765206d6179206f6e206f63636173696f6e2061736b20796f7520746f20636f6e73656e74207768656e20776520636f6c6c6563742e3c2f6c693e0d0a2020202020202020202020202020202020202020202020203c2f756c3e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c200d0a6c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e536563757269747920616e6420526574656e74696f6e3c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e436f6e746163742055733c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a202020202020202020202020202020203c2f6469763e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f6469763e3c2f73656374696f6e3e, 1, 0, 'html,css,js', '1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men', '2021-02-17 06:54:16', '2021-02-17 07:52:57'),
(2, 1, NULL, 'Privecy & Policy', 'Policy', 'Privecy-&-Policy', 0x3c73656374696f6e20636c6173733d22707269766163792d61726561223e0d0a20202020202020203c64697620636c6173733d22636f6e7461696e6572223e0d0a2020202020202020202020203c64697620636c6173733d22726f77223e0d0a202020202020202020202020202020203c64697620636c6173733d22636f6c2d6c672d3132223e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e5072697661637920506f6c6963793c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d69736564200d0a776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f207573650d0a20612070617373616765206f6620546865726520617265206d616e7920766172696174696f6e732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c7370616e20636c6173733d2264617465223e55706461746564204a616e7561727920362c20323032303c2f7370616e3e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e64697373652076697461650d0a206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c200d0a757420736f64616c65732066656c69732072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c206964200d0a766573746962756c756d20746f72746f7220616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69206175677565204c6f72656d20697073756d20646f6c6f720d0a2073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365200d0a7669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d69200d0a61756775652e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e4f766572766965773c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66200d0a4c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d650d0a20666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e200d0a736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f6620546865726520617265206d616e790d0a20766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f726974792068617665200d0a737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f723c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4e756e63206e6563206d61676e6120736564206d6574757320747269737469717565206f726e617265207669746165207574206e69736c2e204d6175726973206c61637573200d0a656e696d2c20706f73756572652065742074696e636964756e7420636f6e64696d656e74756d2c20736f64616c657320616320656c69742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e3c2f703e0d0a2020202020202020202020202020202020202020202020203c756c20636c6173733d226c697374223e0d0a202020202020202020202020202020202020202020202020202020203c6c693e52616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e42792070726f766964696e6720706572736f6e616c20696e666f726d6174696f6e20746f20757320616e642062792072657461696e696e6720757320746f2070726f7669646520796f752077697468207468652053657276696365732e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e566f6c756e746172696c7920636f6e73656e7420746f2074686520636f6c6c656374696f6e2c2075736520616e6420646973636c6f73757265206f66207375636820706572736f6e616c20696e666f726d6174696f6e2061732073706563696669656420696e2074686973205072697661637920506f6c6963792e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e546865206c6567616c20626173657320666f72206f75722070726f63657373696e67206f66200d0a706572736f6e616c20696e666f726d6174696f6e20617265207072696d6172696c792074686174207468652070726f63657373696e67206973206e656365737361727920666f72200d0a70726f766964696e672074686520536572766963657320616e642074686174207468652070726f63657373696e672069732063617272696564206f757420696e206f7572200d0a6c65676974696d61746520696e746572657374732c207768696368206172652066757274686572206578706c61696e65642062656c6f772e3c2f6c693e0d0a202020202020202020202020202020202020202020202020202020203c6c693e576974686f7574206c696d6974696e672074686520666f7265676f696e672c207765206d6179206f6e206f63636173696f6e2061736b20796f7520746f20636f6e73656e74207768656e20776520636f6c6c6563742e3c2f6c693e0d0a2020202020202020202020202020202020202020202020203c2f756c3e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68343e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e3c2f68343e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e20457469616d206d6178696d757320706f72747469746f720d0a206d61676e612073697420616d657420636f6e73656374657475722e20496e7465676572206567657420616e7465207363656c6572697371756520746f72746f72200d0a736f64616c657320616c69717565742e20496e746567657220696e20766573746962756c756d206c656f2c20766974616520747269737469717565206f7263692e20457469616d200d0a746f72746f722073656d2c20706f72747469746f722061742070656c6c656e7465737175652073697420616d65742c206672696e67696c6c61206e6563206d617373612e200d0a4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c200d0a6c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c2073757363697069742073656d2069642c2064617069627573206f7263692e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e536563757269747920616e6420526574656e74696f6e3c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a20202020202020202020202020202020202020203c64697620636c6173733d22636f6e74656e742d626f78206d622d3530223e0d0a2020202020202020202020202020202020202020202020203c68323e436f6e746163742055733c2f68323e0d0a2020202020202020202020202020202020202020202020203c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572200d0a61646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e2053757370656e6469737365207669746165206578206665726d656e74756d2c200d0a73757363697069742073656d2069642c2064617069627573206f7263692e204372617320656666696369747572206d692061756775652c20757420736f64616c65732066656c69730d0a2072686f6e63757320626962656e64756d2e204675736365207361676974746973206e696268206f7263692c20696420766573746962756c756d20746f72746f72200d0a616c69717565742075742e20566976616d7573206d6178696d75732066656c6973206163206e69736c206c75637475732c20757420616c6971756574206d61737361200d0a73757363697069742e20536564207363656c65726973717565207175616d206a7573746f2c2073656420766f6c7574706174206e657175652074656d706f7220706f7274612e200d0a496e74657264756d206574206d616c6573756164612066616d657320616320616e746520697073756d207072696d697320696e2066617563696275732e20416c697175616d200d0a636f6e7365717561742074656c6c757320696420726973757320636f6e64696d656e74756d206672696e67696c6c612e204c6f72656d20697073756d20646f6c6f7220736974200d0a616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e204e616d206174206e69736c206c6967756c612e3c2f703e0d0a20202020202020202020202020202020202020203c2f6469763e0d0a202020202020202020202020202020203c2f6469763e0d0a2020202020202020202020203c2f6469763e0d0a20202020202020203c2f6469763e3c2f73656374696f6e3e, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-02-17 07:53:17'),
(3, 2, NULL, 'Trams & Conditions', 'Trams', 'Trams-&-Conditions', NULL, 1, 0, 'html,css,js', '1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men', '2021-02-17 06:54:16', '2021-02-17 07:52:57'),
(4, 2, NULL, 'Privecy & Policy', 'Policy', 'Privecy-&-Policy', NULL, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-02-17 07:53:17'),
(5, 3, NULL, 'Trams & Conditions', 'Trams', 'Trams-&-Conditions', NULL, 1, 0, 'html,css,js', '1914 translation by H. Rackham \"On the other hand, we denounce with righteous indignation and dislike men', '2021-02-17 06:54:16', '2021-02-17 07:52:57'),
(6, 3, NULL, 'Privecy & Policy', 'Policy', 'Privecy-&-Policy', NULL, 1, 0, 'html,css', 'perspiciatis unde omnis iste natus error sit voluptatem accusantium', '2021-02-17 06:55:45', '2021-02-17 07:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` bigint UNSIGNED NOT NULL,
  `is_smtp` int DEFAULT NULL,
  `header_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailsettings`
--

INSERT INTO `emailsettings` (`id`, `is_smtp`, `header_email`, `smtp_host`, `smtp_port`, `email_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_verification_email`, `created_at`, `updated_at`) VALUES
(1, 1, 'smtp', 'smtp.mailtrap.io', '2525', 'tls', '8db3922982412e', 'civile', 'shuvosarker472@gmail.com', 'civile Expert', 1, NULL, '2022-11-24 11:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `status`, `title`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(2, '1', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(3, '1', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(4, '1', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51'),
(5, '2', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(6, '2', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(7, '2', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(8, '2', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51'),
(9, '3', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(10, '3', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(11, '3', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(12, '3', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `status`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'fal fa-laptop-code', 'IT Soluations', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:32:48', '2021-02-08 21:47:31'),
(2, '1', 1, 'fal fa-fingerprint', 'Security System', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:17', '2021-02-08 21:47:26'),
(3, '1', 1, 'fal fa-chalkboard', 'Web Development', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:45', '2021-02-08 21:47:20'),
(4, '1', 1, 'fal fa-database', 'Database Security', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:37:15', '2021-02-08 21:47:15'),
(5, '2', 1, 'fal fa-laptop-code', 'IT Soluations', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:32:48', '2021-02-08 21:47:31'),
(6, '2', 1, 'fal fa-fingerprint', 'Security System', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:17', '2021-02-08 21:47:26'),
(7, '2', 1, 'fal fa-chalkboard', 'Web Development', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:45', '2021-02-08 21:47:20'),
(8, '2', 1, 'fal fa-database', 'Database Security', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:37:15', '2021-02-08 21:47:15'),
(9, '3', 1, 'fal fa-laptop-code', 'IT Soluations', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:32:48', '2021-02-08 21:47:31'),
(10, '3', 1, 'fal fa-fingerprint', 'Security System', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:17', '2021-02-08 21:47:26'),
(11, '3', 1, 'fal fa-chalkboard', 'Web Development', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:36:45', '2021-02-08 21:47:20'),
(12, '3', 1, 'fal fa-database', 'Database Security', 'Sed ut perspiciatis unde omnis iste natus error volup', 0, '2021-02-08 21:37:15', '2021-02-08 21:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `flinks`
--

CREATE TABLE `flinks` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flinks`
--

INSERT INTO `flinks` (`id`, `language_id`, `name`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', 'https://civilexpertbd.com/about', 0, '2021-02-14 22:55:49', '2023-08-03 17:24:01'),
(2, 1, 'Privacy', '#', 0, '2021-02-14 22:56:04', '2023-01-16 10:29:22'),
(3, 1, 'Services', '#', 0, '2021-02-14 22:56:19', '2021-02-14 22:56:19'),
(4, 1, 'Portfolio', '#', 1, '2021-02-14 22:56:27', '2021-02-14 23:00:17'),
(5, 1, 'Policy', '#', 0, '2021-02-19 07:45:06', '2021-02-19 07:45:06'),
(6, 2, 'About Us', '#', 0, '2021-02-14 22:55:49', '2021-02-14 22:55:49'),
(7, 2, 'Our Privacy', '#', 0, '2021-02-14 22:56:04', '2021-02-14 22:56:04'),
(8, 2, 'Services', '#', 0, '2021-02-14 22:56:19', '2021-02-14 22:56:19'),
(9, 2, 'Portfolio', '#', 1, '2021-02-14 22:56:27', '2021-02-14 23:00:17'),
(10, 2, 'Policy', '#', 0, '2021-02-19 07:45:06', '2021-02-19 07:45:06'),
(11, 3, 'About Us', '#', 0, '2021-02-14 22:55:49', '2021-02-14 22:55:49'),
(12, 3, 'Our Privacy', '#', 0, '2021-02-14 22:56:04', '2021-02-14 22:56:04'),
(13, 3, 'Services', '#', 0, '2021-02-14 22:56:19', '2021-02-14 22:56:19'),
(14, 3, 'Portfolio', '#', 1, '2021-02-14 22:56:27', '2021-02-14 23:00:17'),
(15, 3, 'Policy', '#', 0, '2021-02-19 07:45:06', '2021-02-19 07:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `language_id`, `status`, `title`, `image`, `date`, `position`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Technical content may have per suasive objectives.', 'portfolio_1613022814321244425.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-02-10 23:53:34'),
(2, '1', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228451015952493.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-02-10 23:54:05'),
(3, '1', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228551806026364.jpg', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-02-10 23:54:15'),
(4, '1', 1, 'Technical content may have per suasive objectives.', '161302242519469749.jpg', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-02-10 23:54:19'),
(5, '2', 1, 'Technical content may have per suasive objectives.', 'portfolio_1613022814321244425.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-02-10 23:53:34'),
(6, '2', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228451015952493.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-02-10 23:54:05'),
(7, '2', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228551806026364.jpg', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-02-10 23:54:15'),
(8, '2', 1, 'Technical content may have per suasive objectives.', '161302242519469749.jpg', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-02-10 23:54:19'),
(9, '3', 1, 'Technical content may have per suasive objectives.', 'portfolio_1613022814321244425.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:44', '2021-02-10 23:53:34'),
(10, '3', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228451015952493.jpg', '2021', 'Startup', 0, '2021-02-10 23:45:58', '2021-02-10 23:54:05'),
(11, '3', 1, 'Technical content may have per suasive objectives.', 'portfolio_16130228551806026364.jpg', '2021', 'Startup', 0, '2021-02-10 23:46:12', '2021-02-10 23:54:15'),
(12, '3', 1, 'Technical content may have per suasive objectives.', '161302242519469749.jpg', '2021', 'Startup', 0, '2021-02-10 23:47:05', '2021-02-10 23:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int NOT NULL DEFAULT '0',
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, 'ltr', NULL, '2021-02-22 03:06:07'),
(2, 'Arabic', 'ar', 0, 'rtl', '2021-02-21 04:38:34', '2021-02-21 05:40:05'),
(3, 'Hindi', 'hi', 0, 'ltr', '2021-02-21 05:39:59', '2021-02-22 03:06:07'),
(4, 'Bangla', '783492', 0, 'ltr', '2022-11-29 12:39:58', '2022-11-29 12:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `membership_certificates`
--

CREATE TABLE `membership_certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_certificates`
--

INSERT INTO `membership_certificates` (`id`, `language_id`, `status`, `title`, `image`, `category`, `details`, `created_at`, `updated_at`) VALUES
(2, '1', 1, 'Bangladesh Association of Construction Industry (BACI)', '1674409474469781104.png', 'Member', 'House no: 43 (level-4), road no: 27,  Dhanmondi, Dhaka-1209, Bangladesh.', '2023-01-22 11:44:34', '2023-01-22 11:44:34'),
(4, '1', 1, 'ISO 9001:2015', '167440953466282677.jpeg', 'Certification', 'B-AdVANCY Certification UK Limited  71-75 Shelton Street, Convent Garden, London, England, WC2H 9JQ, UK', '2023-01-22 11:45:34', '2023-01-22 11:45:34'),
(5, '1', 1, 'Entity Rating, Long Term: BBB, Short Term: ST-3', '16744096081740173461.jpeg', 'Credit Rating', 'Credit Rating Information and Services Limited  Association of Credit Rating Agencies in Asia (ACRAA), Manila, Philippines', '2023-01-22 11:46:48', '2023-01-22 11:46:48'),
(6, '1', 1, 'Pile Driving Contractors Association (PDCA)', '16744096762146184544.jpeg', 'Member', 'Association office, suite 3, First Floor, 7-11 railway  St Baulkham Hills 2153, New South Wales Australia.', '2023-01-22 11:47:56', '2023-01-22 11:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_25_122740_create_admins_table', 1),
(2, '2020_05_26_000000_create_users_table', 1),
(3, '2020_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_12_100000_create_password_resets_table', 1),
(7, '2020_10_26_035012_create_languages_table', 1),
(8, '2020_10_27_024546_create_sliders_table', 1),
(10, '2020_10_27_025335_create_services_table', 1),
(12, '2020_10_27_025627_create_faqs_table', 1),
(13, '2020_11_17_122813_create_newsletters_table', 1),
(14, '2020_11_20_085050_create_emailsettings_table', 1),
(15, '2020_12_25_124242_create_socials_table', 1),
(16, '2021_01_01_123641_create_blogs_table', 1),
(17, '2021_01_01_123728_create_bcategories_table', 1),
(18, '2021_01_03_110518_create_testimonials_table', 1),
(22, '2021_01_24_111458_create_backups_table', 1),
(23, '2021_02_07_145147_create_features_table', 1),
(24, '2021_02_07_145631_create_why_selects_table', 1),
(26, '2021_02_07_151616_create_clients_table', 1),
(27, '2021_02_07_152047_create_counters_table', 1),
(28, '2021_02_08_041017_create_archives_table', 1),
(29, '2021_02_08_042120_create_portfolios_table', 1),
(30, '2021_02_08_042357_create_portfolio_images_table', 1),
(31, '2020_10_13_123757_create_settings_table', 2),
(32, '2020_10_14_103316_create_sectiontitle_table', 3),
(33, '2021_02_09_043348_add_video_info_to_sectiontitles_table', 4),
(34, '2021_02_09_050446_add_about_info_to_sectiontitles_table', 5),
(36, '2020_10_27_025547_create_teams_table', 6),
(37, '2021_02_07_151349_create_histories_table', 7),
(38, '2021_02_12_045400_add_opening_hours_to_settings', 8),
(39, '2021_02_13_041641_add_meet_text_to_sectiontitles_table', 9),
(40, '2021_02_15_035217_add_footer_bg_to_settings_table', 10),
(41, '2021_02_15_043251_create_flinks_table', 11),
(42, '2021_02_15_112132_add_testimonial_content_to_sectiontitles_table', 12),
(43, '2021_02_16_111526_add_link_to_portfolios_table', 13),
(44, '2020_10_27_025201_create_packages_table', 14),
(45, '2021_01_24_105925_create_quotes_table', 15),
(46, '2021_01_07_105717_create_daynamicpages_table', 16),
(47, '2021_02_19_140441_add_page_visibility_to_settings_table', 17),
(48, '2021_01_24_110045_create_roles_table', 18),
(50, '2021_04_23_204005_add_moretableinsettings2_to_settings_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'shuvosarker472@gmail.com', '2022-11-30 11:25:07', '2022-11-30 11:25:07'),
(4, 'dHsr_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-02-14 12:19:56', '2023-02-14 12:19:56'),
(5, 'x5D5_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-02-20 00:40:13', '2023-02-20 00:40:13'),
(6, 'qrRC_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-03-10 07:29:09', '2023-03-10 07:29:09'),
(7, '2Bp2_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-04-21 19:46:40', '2023-04-21 19:46:40'),
(8, '11s6_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-05-02 05:40:46', '2023-05-02 05:40:46'),
(9, 'IQP4_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-05-04 07:00:23', '2023-05-04 07:00:23'),
(10, 'lBxC_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-06-23 15:29:17', '2023-06-23 15:29:17'),
(11, 'YPVZ_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-07-04 00:57:30', '2023-07-04 00:57:30'),
(12, 'kCEb_generic_b18a5b28_civilexpertbd.com@data-backup-store.com', '2023-07-14 12:37:29', '2023-07-14 12:37:29'),
(13, 'md.sifalalshuvo@gmail.com', '2024-09-02 05:13:39', '2024-09-02 05:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `language_id`, `status`, `title`, `price`, `time`, `feature`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(2, '1', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(3, '1', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(4, '1', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(5, '1', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(6, '1', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(7, '2', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(8, '2', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(9, '2', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(10, '2', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(11, '2', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(12, '2', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(13, '3', 1, 'Early Birds', '9', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(14, '3', 1, 'Team', '32', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(15, '3', 1, 'Personal', '69', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(16, '3', 1, 'Plutinum', '99', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21'),
(17, '3', 1, 'Max', '120', '', '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:13:11'),
(18, '3', 1, 'Pro', '150', NULL, '6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision', 0, '2021-02-16 10:13:11', '2021-02-16 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `language_id`, `title`, `slug`, `start_date`, `submission_date`, `client_name`, `link`, `featured_image`, `service_id`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(7, 1, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(8, 1, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 1, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(9, 1, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(10, 1, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 3, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(11, 1, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 6, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(12, 1, 'Broadband & Internet Service Provider', 'Broadband-&-Internet-Service-Provider', '02/08/2021', '02/10/2021', 'Audrey Molina', NULL, '1669747020588089734.jpg', 6, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2022-11-29 12:37:00'),
(13, 2, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 8, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(14, 2, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 9, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(15, 2, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 10, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(16, 2, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 11, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(17, 2, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 12, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(18, 2, 'Broadband & Internet Service Providers Laravel CMS', 'Broadband-&-Internet-Service-Providers-Laravel-CMS', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16135358341098236821.jpg', 13, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:13'),
(19, 3, 'Software Landing Page HTML', 'Software-Landing-Page-HTML', '02/08/2021', '02/09/2021', 'Yoko Best', NULL, '16133912601093644789.jpg', 14, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:41:45'),
(20, 3, 'Product Landing Page HTML Template', 'Product-Landing-Page-HTML-Template', '02/01/2021', '02/10/2021', 'Aquila Wolf', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133912531466478446.jpg', 15, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 1, 'html', 'with the release of Letraset sheets containing Lorem Ipsum passages', 0, '2021-02-11 08:37:38', '2021-02-21 03:41:32'),
(21, 3, 'Personal Portfolio HTML Template', 'Personal-Portfolio-HTML-Template', '02/01/2021', '02/02/2021', 'Audrey Molina', NULL, '1613391244817360549.jpg', 16, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'html,css,php', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:08:25', '2021-02-21 03:41:09'),
(22, 3, 'Multipurpose Business & Digital Agency HTML Template', 'Multipurpose-Business-&-Digital-Agency-HTML-Template', '02/08/2021', '02/09/2021', 'Yoko Best', 'https://codecanyon.net/user/geniusdevs/portfolio', '1613391236518553535.jpg', 17, '<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>', 1, 'css,js', 'As a result, most of us need to know how to use computers.', 0, '2021-02-12 09:09:17', '2021-02-21 03:40:46'),
(23, 3, 'One Page Parallax HTML Template', 'One-Page-Parallax-HTML-Template', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16133913082004583501.jpg', 18, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:37'),
(24, 3, 'Broadband & Internet Service Providers Laravel CMS', 'Broadband-&-Internet-Service-Providers-Laravel-CMS', '02/08/2021', '02/10/2021', 'Audrey Molina', 'https://codecanyon.net/user/geniusdevs/portfolio', '16135358341098236821.jpg', 19, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 1, 'html', 'model text, and a s', 0, '2021-02-15 06:15:08', '2021-02-21 03:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint UNSIGNED NOT NULL,
  `portfolio_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 7, 'portfolio_116134162331069324685.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33'),
(2, 7, 'portfolio_216134162331517266711.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33'),
(3, 7, 'portfolio_316134162331745428499.jpg', '2021-02-15 13:10:33', '2021-02-15 13:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skypenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `name`, `email`, `phone`, `country`, `budget`, `skypenumber`, `subject`, `file`, `description`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Joyonto Kumar', 'shuvosarker.se@gmail.com', '01303560087', 'Bangladesh', '1000', NULL, 'Consequatur eu cumq', NULL, 'wwwwwwwwwwwwww', 0, '2022-11-30 11:01:54', '2022-11-30 11:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '[\"General Setting\",\"Home\",\"About\",\"Package\",\"Quote\",\"Service\",\"Contact\",\"Portfolio\",\"Blog\",\"Subscribers\",\"Footer\",\"Clear Cache\"]', '2021-02-19 12:53:15', '2021-02-19 23:33:57'),
(2, 'Moderator', '[\"Package\",\"Service\",\"Blog\",\"Dynamic Page\"]', '2021-02-19 13:44:23', '2021-02-19 13:44:36'),
(3, 'Super Admin', NULL, '2021-02-19 13:47:18', '2021-02-19 13:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `sectiontitles`
--

CREATE TABLE `sectiontitles` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_right` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_left` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_experince_yers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_intro_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `get_quote_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimonial_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectiontitles`
--

INSERT INTO `sectiontitles` (`id`, `language_id`, `w_we_are_sub_title`, `w_we_are_title`, `w_we_are_text`, `video_title`, `video_sub_title`, `video_text`, `video_image`, `video_link`, `video_image_right`, `video_image_left`, `video_bg_image`, `video_content`, `service_title`, `service_sub_title`, `w_c_us_sub_title`, `w_c_us_title`, `w_c_us_image1`, `w_c_us_image2`, `team_title`, `team_sub_title`, `contact_sub_title`, `contact_title`, `contact_form_title`, `contact_section_bg_image`, `contact_form_image`, `contact_map`, `faq_sub_title`, `faq_title`, `faq_bg_image`, `faq_image1`, `faq_image2`, `blog_title`, `blog_sub_title`, `hero_sub_title`, `hero_title`, `hero_text`, `hero_image`, `hero_bg_image`, `hero_f_icon1`, `hero_f_icon2`, `hero_f_text1`, `hero_f_text2`, `about_title`, `about_sub_title`, `about_text`, `about_experince_yers`, `about_intro_video`, `about_image`, `get_quote_title`, `get_quote_sub_title`, `our_history_title`, `our_history_text`, `package_sub_title`, `package_title`, `portfolio_title`, `portfolio_sub_title`, `counter_bg_image`, `meeet_us_bg_image`, `meeet_us_text`, `meeet_us_button_text`, `meeet_us_button_link`, `created_at`, `updated_at`, `testimonial_title`, `testimonial_subtitle`) VALUES
(1, '1', 'Our Identity', 'CIVIL EXPERT', 'Civil Expert is a well-known company in Bangladesh that specializes in piling and was founded in 2005 with the guidance of Md. Saheb Ali began its expedition with additional personnel and construction activities. In 2014, he began accumulating tasks and embarked on this trip by acquiring a single set of mechanical rotary tripod drilling rigs, and rented a first-floor room in Nikunja. Offering construction services of cast-in-situ piles made through boring, along with additions of reinforcements and civil works. Due to the growth of infrastructure in the country, a significant construction sector has emerged. Civil Expert has also become an expanding organization for building foundations and constructing buildings in the country as they work as a development partner.', 'How we growth our business.', 'INTRO VIDEO', 'Total Construction Solution!', '1612877990706065974.jpg', 'https://www.youtube.com/watch?v=U-oR2lH0LPI', '1612877965616485669.png', '1612877965496788649.png', '16128779901457503508.jpg', 'hether you are building an enterprise web portal or a state-of-the-art website, you always need the right modern tools. Well-built and maintained PHP frameworks provide those tools in abundance, allowing maintained PHP frameworks provide those tools in abundance, allowing developers to save time, re-use code, and streamline the back end. As software development tools continuously.', 'We Offer Better Soluation', 'OUR LATEST SERVICES', 'WHO WE ARE', 'Why Choose Us', '16128799941528559809.jpg', '16128799942058255621.jpg', 'Our Exclusive Leadership', 'OUR TEAM MEMBER', 'CONTACT US', 'Join Us To Get Consultations', 'Don\'t Hesitate To Contact With Us, Say Hello......', '16129356111909515361.jpg', '16129356111047618438.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.5573706395217!2d90.4166746!3d23.834333899999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c7803f358353%3A0xad01ea4399067d48!2sCivil%20Expert!5e0!3m2!1sen!2sbd!4v1691090963605!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'FAQ', 'Why Choose Our Solutions', '1612937982770064829.jpg', '1612937982435794173.jpg', '1612938123482410717.jpg', 'Read Our Latest Work', 'LATEST WORK', 'Total Construction Solution!', 'CIVIL EXPERT', '.', '1691089129711789617.jpg', '1669311498381656745.jpg', NULL, NULL, 'Construction Service', NULL, 'Total Construction Solution!', 'ABOUT US', '<p><b>Civil Expert</b> is one of the most renowned Piling contractor of\r\nBangladesh which is Established in 2005 under the leadership\r\nof<b> Md.Saheb Ali</b> started its journey with Reinforcements &amp;\r\nCivil works. Then he started Piling work in 2014 this journey is\r\nstarted with one set of tripod drilling rig with Mechanical\r\nRotary, rent a room of (1st floor) in Nikunja. Providing\r\nconstruction service of Bored cast-in-situ Pile including\r\nboring, Reinforcements &amp; Civil works. With the increasing\r\ninfrastructural growth of the country a large scale\r\nconstruction industry has also developed. As a development\r\npartner Civil Expert also become a growing Foundation builder\r\nand Construction Company in the country.<br></p>', '18', 'https://www.youtube.com/watch?v=U-oR2lH0LPI', '1690467062475797036.jpg', NULL, NULL, 'Our History', 'Does any industry face a more complex audience journey and marketing sales process than B2B technology.', 'Plans', 'Our Pricing Plans', 'About Our Recent Project & Activities', 'OUR PROJECT ACTIVITIES', NULL, '16131902461486580724.jpg', 'Preparing For Your Business Success', 'Meet With Us', 'https://codecanyon.net/user/geniusdevs', NULL, '2023-08-12 15:16:35', 'What Our Client Says', 'TESTIMONIAL'),
(2, '3', '9. L( 9H', '9. >. 0$G 9H 9>0M! *M2G M0??5 .>! > (M5G7# 0G', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quale ab illo inventore veritatis-quasi Architecto beatae vitae sunt explicabod (?.K (@. *M8. 5I2*MG. M5?/>5K2A*M8 8M*0(B0  !?  +M/B?, 8G! M5?/> M5B0 .HM(@ !K2K0M8 8 0>6( 5I2M/B*G. 8G5? (G8? @ *K0Kd', '9. *(G 5M/>*>0 K H8G ,"<>$G 9Hd', 'M0K 5@!?/K', '	&M/. 8I+M5G/0 .G M2>	! 0 .K,>2 *M0L&M/K??/K @ 6A0B$d', '6032382aa9857.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032382aad4af.png', '6032382ab2623.png', '6032382ab5ea0.jpg', '*  	&M/. 5G, *K0M2 />  $M/>'A(? 5G,8> > (?0M.># 0 09G 9H, *K 9.G6> 89@ 'A(? 	*0#K @ 56M/$> 9K$@ 9Hd M@ $09 8G (?0M.?$ 0 ,(> 0> PHP LG 	( 	*0#K K ,9A$>/$ .G *M0&>( 0$> 9H, K ,(> 0(G @ (A.$? &G$> 9H, PHP LG 	( 	*0#K K ,9A$>/$ .G *M0&>( 0$> 9H, ?88G !G52*0M8 K 8./ ,>(G, K! > *A(: 	*/K 0(G 0 ,H ! K >00 ,(>(G @ (A.$? .?2$@ 9Hd 8I+M5G/0 5?>8 	*0# G 0B* .G 2>$>0d', '9. ,G9$0 8.>'>( *M0&>( 0$G 9H', '9.>0G (5@($. 8G5>', '9. L( 9H', '9.G M/K A(G', '6032382ab9a1a.jpg', '6032382abd9f1.jpg', '.?2? 9.>0G M8M2B8?5 2@!06?* 8G', '9.>0> TEAM *M0K+>2', '8*0M 0G', '(?6A2M *0>.0M6 *M0>*M$ 0(G G 2? 9.8G A!<G', '9.8G 8*0M 0(G .G 8K ( 0G, (.8M$G 9G ......', '6032382abf186.jpg', '6032382ac321e.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '8>.>(M/ *M06M(', '9.>0G 8.>'>( M/K A(G', '6032382ac6c24.jpg', '6032382aca9ee.jpg', '6032382ace982.jpg', '9.>0G (5@($. 8.>>0 0 ,M2I *"<G', '$>> ,0', '?8@ -@ 	$M*>&, 8G5> /> (2>( *> M/M0. K ,"<>5> &G(>d', '/9> 90 8G5> *M0>*M$ 0G', '*(G 	$M*>&K K MG 0 *G6G50K G 8>% ,(>', '6032382ad2abe.png', '6032382ad6e9e.jpg', 'fal fa-gem', 'fal fa-bullseye', '@ 	$M*>&', '8B>( *M0L&M/K?@ 8G5>', '* 0(>$M.$> > 	*/K (9@ 0 8$Gd', '9.>0G ,>0G .G', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '30', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032382adb368.jpg', NULL, NULL, '9.>0> $?9>8', 'M/> ?8@ -@ 	&M/K K ,@ 2 ,@ $(@ @ $A2(> .G '? ?2 &0M6 />$M0> 0 5?*#( ,?M0@ *M0M0?/> > 8>.(> 0(> *!<$> 9Hd', '/K(>', '9.>0G .B2M/ (?0M'>0# /K(>', '9.>0G 9>2?/> G8 8M!@ K *"<$> 9H', '(5@($. .>.2> 'M//(', '6032382adf5d1.jpg', '6032382ae22f3.jpg', '*G 5M/58>/ @ 8+2$> G 2? $H/>0@', '9.>0G 8>% .?2K', 'https://codecanyon.net/user/geniusdevs', NULL, '2021-02-17 10:22:10', '9.>0G M0>9 M/> 9$G 9H', 'A#K > 50M# - *$M0'),
(3, '2', 'EF F-F', 'F9ED (,/ HFD9( (,/. '3*C4A 'D9BD 'D%(/'9J', '%F 'DA13 DJ3 DG #J .7# 7(J9J J,D3 9DI 9'*B 'D'*G'E ('D".1JF  CE' J,( #F J.*19 'DH'B9 H4(G E9E'1J 'D3J1) 'D0'*J) 'D*J J,( 41-G'. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit sed quia quuntur magni dolores eos ratione voluptatem Sequi nesciunt eque porroe.', 'CJA FFEJ #9E'DF'.', 'EB/E) AJ/JH', '%/.'D *BFJ'* 'D3-'() H'D#,G2) 'DE-EHD) AJ (1'E, 'DE$33).', '6032468f665ad.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032468f67b7e.png', '6032468f6b80b.png', '6032468f6f528.jpg', '3H'! CF* *BHE ((F'! (H'() HJ( E$33) #H EHB9 HJ( -/J+  A#F* (-',) /'&EK' %DI 'D#/H'* 'D-/J+) 'DEF'3(). *HA1 #71 PHP ,J/) 'D*5EJE H'D5J'F) G0G 'D#/H'* (C+1)  EE' J3E- D#71 PHP 'D*J J*E 'D-A'8 9DJG' (*HAJ1 G0G 'D#/H'* (HA1)  EE' J3E- DDE7H1JF (*HAJ1 'DHB* H%9'/) '3*./'E 'D*9DJE'* 'D(1E,J) H*(3J7 'DFG'J) 'D.DAJ). C#/H'* *7HJ1 'D(1E,J'* (4CD E3*E1.', 'F-F FB/E #A6D 'D-DHD', '#-/+ ./E'*F'', 'EF F-F', 'DE'0' #.*1*F'', '6032468f73366.jpg', '6032468f77049.jpg', '*91A 9DI BJ'/*F' 'D-51J)', '96H A1JBF'', ''*5D (F'', ''F6E %DJF' DD-5HD 9DI '3*4'1'* E,'FJ)', 'D' **1// AJ 'D'*5'D (F'  BD E1-(' ......', '6032468f7abcd.jpg', '6032468f7e7a7.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', ''D*9DJE'*', 'DE'0' *.*'1 -DHDF'', '6032468f824b7.jpg', '6032468f86033.jpg', '6032468f89a6c.jpg', ''B1# ".1 'D#.('1 H'DE/HF)', '#-/+ 'D#.('1', 'BE ('D*1HJ, D#J EF*, #H ./E) #H /H1) */1J(J) 9(1 'D%F*1F*.', ''-5D 9DI CD ./E'* *CFHDH,J' 'DE9DHE'* GF'', ''5F9 EF*,'*C E9 E-*1AJF H,J/JF', '6032468f8d5e7.png', '6032468f913fd.jpg', 'fal fa-gem', 'fal fa-bullseye', 'EF*, *CFHDH,J' 'DE9DHE'*', './E'* *CFHDH,J' 'DE9DHE'*', 'D' JECFC '3*./'E 'D%(/'9.', 'E9DHE'* 9F'', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '30', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '6032468f94f27.jpg', NULL, NULL, '*'1J.F'', 'GD *H',G #J 5F'9) 1-D) ,EGH1 H9EDJ'* E(J9'* *3HJBJ) #C+1 *9BJ/K' EF *BFJ) B2B.', ''D.77', '.77 'D*39J1 D/JF'', 'JB1# /1'3'* 'D-'D) 'D#.J1)', '#-/+ /1'3'* 'D-'D)', '6032468f98dfd.jpg', '6032468f9bb3d.jpg', ''D*-6J1 DF,'- 9EDC', 'B'(DF'', 'https://codecanyon.net/user/geniusdevs', NULL, '2021-02-17 10:22:10', 'E'0' JBHD 9ED'&F'', '4G'/)'),
(4, '4', 'WHO WE ARE', 'We Work Hard Play Hard Explore Creative Mmind', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit, sed quia quuntur magni dolores eos ratione voluptatem sequi nesciunt eque porroe.', 'How we growth our business.', 'INTRO VIDEO', 'The introduction of cloud and mobile technologies into enterprise software.', '638651fe37679.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '638651fe385fe.png', '638651fe39e81.png', '638651fe3b689.jpg', 'hether you are building an enterprise web portal or a state-of-the-art website, you always need the right modern tools. Well-built and maintained PHP frameworks provide those tools in abundance, allowing maintained PHP frameworks provide those tools in abundance, allowing developers to save time, re-use code, and streamline the back end. As software development tools continuously.', 'We Offer Better Soluation', 'OUR LATEST SERVICES', 'WHO WE ARE', 'Why Choose Us', '638651fe3cb11.jpg', '638651fe3e3e2.jpg', 'Our Exclusive Leadership', 'OUR TEAM MEMBER', 'CONTACT US', 'Join Us To Get Free Consultations', 'Don\'t Hesitate To Contact With Us, Say Hello......', '638651fe3fc87.jpg', '638651fe4154e.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993207.564767118!2d-77.9807899414373!3d42.92219345357043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1569310771254!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'FAQ', 'Why Choose Our Solutions', '638651fe42dbe.jpg', '638651fe44cd0.jpg', '638651fe46069.jpg', 'Read Our Latest News & Blog', 'LATEST NEWS', 'Promote any poduct, service or online course.', 'Get every it Services Here', 'Make your products with good & professionals', '638651fe4763d.png', '638651fe492c8.jpg', 'fal fa-gem', 'fal fa-bullseye', 'IT Product', 'IT Services', 'We Work Hard Play Hard Explore Creative Mind', 'ABOUT US', 'Civil Expert is one of the most renowned Piling contractor of Bangladesh which is Established in 2005 under the leadership of Md.Saheb Ali started its journey with Reinforcements &amp; Civil works. Then he started Piling work in 2014 this journey is with one set of tripod drilling rig with Mechanical Rotary, rent a room of (1st floor) in Nikunja. Providing construction service of Bored cast-in-situ Pile including boring, Reinforcement&amp; Civil works. With the increasing infrastructurl growth of the country a large scale constructio industry has also developed. As a development partner Civil Expert also become a growing Foundation builder and Construction Company in the country.', '30', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '638651fe4baae.png', NULL, NULL, 'Our History', 'Does any industry face a more complex audience journey and marketing sales process than B2B technology.', 'Plans', 'Our Pricing Plans', 'About Our Recent Project & Activities', 'OUR PROJECT ACTIVITIES', '638651fe4d2ff.png', '638651fe58d8b.jpg', 'Preparing For Your Business Success', 'Meet With Us', 'https://codecanyon.net/user/geniusdevs', NULL, '2022-11-29 12:16:07', 'What Our Client Says', 'TESTIMONIAL');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `language_id`, `status`, `title`, `slug`, `icon`, `image`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 0, 'Soil Excavation', 'Soil-Excavation', 'fal fa-eye-dropper', '1613397069283872525.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs. Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:10:50', '2023-08-11 17:38:26'),
(2, '1', 1, 'Sheet Pile Drive', 'Sheet-Pile-Drive', 'fal fa-gavel', '16917820811925855474.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs. Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:15:31', '2023-08-11 17:28:01'),
(3, '1', 0, 'Steel Structure', 'Steel-Structure', 'fal fa-map-marked-alt', '16133970542027137282.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs. Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:16:06', '2023-08-11 17:33:18'),
(5, '1', 1, 'Load Test', 'Load-Test', 'fal fa-hurricane', '16917820421813538752.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs. Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:22:50', '2023-08-11 17:27:22'),
(6, '1', 1, 'Pre-cast Pile', 'Pre-cast-Pile', 'fal fa-bezier-curve', '1691782025910571680.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs. Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:23:18', '2023-08-11 17:27:05'),
(7, '1', 1, 'Cast in Situ Pile', 'Cast-in-Situ-Pile', 'fal fa-umbrella', '16697435931563340344.jpeg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs. Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:24:00', '2022-11-29 11:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_hours` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_bg_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `disqus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_this_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_pexel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `announcement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT '0.00',
  `maintainance_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tawk_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cookie_alert_text` blob,
  `google_recaptcha_site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_messenger` tinyint NOT NULL DEFAULT '1',
  `is_disqus` tinyint NOT NULL DEFAULT '1',
  `is_google_analytics` tinyint NOT NULL DEFAULT '1',
  `is_add_this_status` tinyint NOT NULL DEFAULT '1',
  `is_facebook_pexel` tinyint NOT NULL DEFAULT '1',
  `is_announcement` tinyint NOT NULL DEFAULT '1',
  `is_maintainance_mode` tinyint NOT NULL DEFAULT '1',
  `is_blog_share_links` tinyint NOT NULL DEFAULT '1',
  `is_tawk_to` tinyint NOT NULL DEFAULT '1',
  `is_recaptcha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooki_alert` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_slider_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_about_section` tinyint DEFAULT NULL,
  `is_t1_who_we_are_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_intro_video_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_service_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_why_choose_us_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_portfolio_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_testimonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_team_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_contact_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_faq_counter_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_meet_us_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_blog_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_clint_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_certifications_section` tinyint DEFAULT NULL,
  `is_t2_hero_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_about_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_service_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_intro_video_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_team_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_counter_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_testimonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_contact_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_faq_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_quote_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_news_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_client_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_hero_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_service_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_portfolio_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_testimonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_faq_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_team_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_meet_us_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_news_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_client_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_hero_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_client_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_about_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_feature_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_who_we_are_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_intro_video_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_portfolio_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_counter_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_testmonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_faq_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_contact_section` tinyint NOT NULL DEFAULT '1',
  `about_page` tinyint NOT NULL DEFAULT '1',
  `service_page` tinyint NOT NULL DEFAULT '1',
  `poerfolio_page` tinyint NOT NULL DEFAULT '1',
  `package_page` tinyint NOT NULL DEFAULT '1',
  `team_page` tinyint NOT NULL DEFAULT '1',
  `faq_page` tinyint NOT NULL DEFAULT '1',
  `blog_page` tinyint NOT NULL DEFAULT '1',
  `contact_page` tinyint NOT NULL DEFAULT '1',
  `quote_page` tinyint NOT NULL DEFAULT '1',
  `about_about` tinyint NOT NULL DEFAULT '1',
  `about_w_w_a` tinyint NOT NULL DEFAULT '1',
  `about_choose_us` tinyint NOT NULL DEFAULT '1',
  `about_history` tinyint NOT NULL DEFAULT '1',
  `is_video_hero` tinyint NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint NOT NULL DEFAULT '1',
  `is_call_button` tinyint NOT NULL DEFAULT '1',
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `theme_version`, `website_title`, `base_color`, `header_logo`, `footer_logo`, `fav_icon`, `breadcrumb_image`, `number`, `email`, `contactemail`, `address`, `opening_hours`, `footer_text`, `footer_bg_image`, `meta_keywords`, `meta_description`, `copyright_text`, `messenger`, `disqus`, `add_this_status`, `facebook_pexel`, `google_analytics`, `announcement`, `announcement_delay`, `maintainance_text`, `tawk_to`, `cookie_alert_text`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_messenger`, `is_disqus`, `is_google_analytics`, `is_add_this_status`, `is_facebook_pexel`, `is_announcement`, `is_maintainance_mode`, `is_blog_share_links`, `is_tawk_to`, `is_recaptcha`, `is_cooki_alert`, `created_at`, `updated_at`, `is_t1_slider_section`, `is_t1_about_section`, `is_t1_who_we_are_section`, `is_t1_intro_video_section`, `is_t1_service_section`, `is_t1_why_choose_us_section`, `is_t1_portfolio_section`, `is_t1_testimonial_section`, `is_t1_team_section`, `is_t1_contact_section`, `is_t1_faq_counter_section`, `is_t1_meet_us_section`, `is_t1_blog_section`, `is_t1_clint_section`, `is_t1_certifications_section`, `is_t2_hero_section`, `is_t2_about_section`, `is_t2_service_section`, `is_t2_intro_video_section`, `is_t2_team_section`, `is_t2_counter_section`, `is_t2_testimonial_section`, `is_t2_contact_section`, `is_t2_faq_section`, `is_t2_quote_section`, `is_t2_news_section`, `is_t2_client_section`, `is_t3_hero_section`, `is_t3_service_section`, `is_t3_portfolio_section`, `is_t3_testimonial_section`, `is_t3_faq_section`, `is_t3_team_section`, `is_t3_meet_us_section`, `is_t3_news_section`, `is_t3_client_section`, `is_t4_hero_section`, `is_t4_client_section`, `is_t4_about_section`, `is_t4_feature_section`, `is_t4_who_we_are_section`, `is_t4_intro_video_section`, `is_t4_portfolio_section`, `is_t4_counter_section`, `is_t4_testmonial_section`, `is_t4_faq_section`, `is_t4_contact_section`, `about_page`, `service_page`, `poerfolio_page`, `package_page`, `team_page`, `faq_page`, `blog_page`, `contact_page`, `quote_page`, `about_about`, `about_w_w_a`, `about_choose_us`, `about_history`, `is_video_hero`, `is_whatsapp`, `is_call_button`, `whatsapp`, `maintainance_image`, `hero_section_video_link`) VALUES
(1, '1', 'theme1', 'CIVIL EXPERT', '8DC63F', 'header_logo_1669309362167893051.png', 'footer_logo1669747664788628387.png', 'fav_icon_1669379020946571927.png', 'breadcrumb_image_.jpg', '+880255098162 ,01718500168', 'civilexpertbd@gmail.com', 'shuvosarker472@gmail.com', 'House # 20, Road # 17 (3rd Floor) Nikunja-02, Khilkhet, Dhaka-1229.', 'Sat - Wed / 10AM - 7PM', 'Civil Expert is one of the most renowned Piling contractor of Bangladesh which is Established in 2005 under the leadership of Md.Saheb Ali started its journey with Reinforcements & Civil works. Then he started Piling work in 2014 this journey is started with one set of tripod drilling rig with Mechanical Rotary, rent a room of (1st floor) in Nikunja.', 'footer_bg_image_1613361435502004358.jpg', 'construction company in Bangladesh,Piling contractors in Bangladesh,pilling,civil engineering services Bangladesh,civil expert,civil expert bd,piling ,ª¾‡²¿‚,bridge construction companies Banglades,foundation,sheet piles,load bearing piles', 'Construction firm specialized in piling', '<p>Copyright by @ - 2023&nbsp;The web has changed a lot since Vitaly posted his first article back&nbsp;</p>', NULL, 'tasksolution.com', NULL, NULL, '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', '16910886311647817095.jpg', 2.00, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/63c5982247425128790df260/1gmttkio6\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e203c62207374796c653d226261636b67726f756e642d636f6c6f723a2072676228302c203235352c2030293b223e436976696c204578706572743c2f623e2077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 1, 1, 0, 1, 1, 1, 0, 0, 0, '0', 0, NULL, '2023-08-12 14:54:14', 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '01888005462', '1619241714761747856.jpg', 'https://www.youtube.com/watch?v=BAVfUvByStY&t=2s'),
(2, '2', 'theme1', 'NextIT - Multipurpose Website  & Business  Management System CMS', '0C59DB', '6032382a96628.png', '6032382a994e9.png', '6032382a9ce0b.png', '6032382aa0a28.jpg', '+33 454 342 654,+55 344 213 345', 'demoemail@gmail.com,testemail@gmail.com', 'devmamun8@gmail.com', '2963  University Drive, Chicago', 'Sat - Wed / 10AM - 7PM', 'The web has changed a lot since Vitaly posted his first article back in 2006. The team at Smashing has changed too, as have the things that we bring to our community onferences, books, and our membershipe.', '6032382aa4aee.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service', 'Nextit - Multipurpose Website  and Business  Management System CMS', '<p>Copyright by @ GeniusDevs - 2021</p>', NULL, 'nextit-1', NULL, NULL, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n</script>', '1613881674773120698.jpg', 2.00, NULL, '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, NULL, NULL, 1, 1, 0, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2021-04-23 15:01:35', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '234234546', NULL, NULL),
(3, '3', 'theme1', 'NextIT - Multipurpose Website  & Business  Management System CMS', '0C59DB', '6032468f53837.png', '6032468f56b72.png', '6032468f59c07.png', '6032468f5d9d7.jpg', '+33 454 342 654,+55 344 213 345', 'demoemail@gmail.com,testemail@gmail.com', 'devmamun8@gmail.com', '2963  University Drive, Chicago', 'Sat - Wed / 10AM - 7PM', 'The web has changed a lot since Vitaly posted his first article back in 2006. The team at Smashing has changed too, as have the things that we bring to our community onferences, books, and our membershipe.', '6032468f61813.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service', 'Nextit - Multipurpose Website  and Business  Management System CMS', '<p>Copyright by @ GeniusDevs - 2021</p>', NULL, 'nextit-1', NULL, NULL, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n</script>', '1613881674773120698.jpg', 2.00, NULL, '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, NULL, NULL, 1, 1, 0, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2021-04-23 15:01:39', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '234234546', NULL, NULL),
(4, '4', 'theme1', 'Civile Expert Buildring Construction', '8DC63F', '638651fe260a0.png', '638651fe2aa1e.png', '638651fe2b9db.png', '638651fe2cb42.jpg', '+33 454 342 654,+55 344 213 345', 'demoemail@gmail.com,testemail@gmail.com', 'shuvosarker472@gmail.com', '2963  University Drive, Chicago', 'Sat - Wed / 10AM - 7PM', 'The web has changed a lot since Vitaly posted his first article back in 2006. The team at Smashing has changed too, as have the things that we bring to our community onferences, books, and our membershipe.', '638651fe30197.jpg', 'business,agency,it,company,nextit,corporate,service,degital service,creative service,it', 'Building  construction', '<p>Copyright by @ GeniusDevs - 2021</p>', NULL, 'nextit-1', NULL, NULL, '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', '16159015311612204557.jpg', 2.00, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 1, 1, 0, 1, 1, 1, 0, 1, 1, '1', 1, NULL, '2022-11-29 12:25:28', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '234234546', '1619241714761747856.jpg', 'https://www.youtube.com/watch?v=BAVfUvByStY&t=2s');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `status`, `image`, `subtitle`, `title`, `text`, `button_text`, `button_link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '16910902796360636.jpg', NULL, 'CIVIL EXPERT', NULL, 'Our Team', 'https://civilexpertbd.com/team', 4, '2021-02-08 08:27:37', '2023-08-03 17:17:59'),
(3, '1', '1', '1691090266863266696.jpg', NULL, 'CIVIL EXPERT', 'Total Construction Solution!', 'About Us', 'https://civilexpertbd.com/about', 3, '2021-02-08 08:27:37', '2023-08-03 17:17:46'),
(4, '1', '1', '16910902451122081897.jpg', 'Total Construction Solution!', 'CIVIL EXPERT', NULL, 'Our Services', 'https://civilexpertbd.com/service', 2, '2021-02-08 08:27:37', '2023-08-03 17:17:25'),
(5, '2', '1', '16127970561434260582.jpg', ''3*4'1'* #9E'D *CFHDH,J' 'DE9DHE'*', '#A6D HC'D) E2H/ D-DHD *CFHDH,J' 'DE9DHE'*', '69 9D'E) 9DI 'D91B AJ CD EC'F .7# F'*, 9F 'D,DH3 AJ -'D) EF 'D'*G'E ('D".1JF', './E'*F'', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:43:30'),
(6, '2', '1', '1612795438968642221.jpg', ''3*4'1'* #9E'D *CFHDH,J' 'DE9DHE'*', '#A6D HC'D) E2H/ D-DHD *CFHDH,J' 'DE9DHE'*', '69 9D'E) 9DI 'D91B AJ CD EC'F .7# F'*, 9F 'D,DH3 AJ -'D) EF 'D'*G'E ('D".1JF', './E'*F'', '#', 1, '2021-02-08 08:27:37', '2021-02-21 04:42:52'),
(7, '2', '1', '1613904115990305225.jpg', ''3*4'1'* #9E'D *CFHDH,J' 'DE9DHE'*', '#A6D HC'D) E2H/ D-DHD *CFHDH,J' 'DE9DHE'*', '69 9D'E) 9DI 'D91B AJ CD EC'F .7# F'*, 9F 'D,DH3 AJ -'D) EF 'D'*G'E ('D".1JF', './E'*F'', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:46:09'),
(8, '3', '1', '16127970561434260582.jpg', '@ 5M/>*>0 *0>.0M6', '80M56M0G7M  @ 8.>'>( *M0&>$> G8@', '8G! /B?8?/>?8 /B! .M(?8 8M  (8 00 52M*MG. M8@8G?/. !K20.G!> ?/. K. 0G. *0?/.  ipsa M5>2G , 2K (5K0 5G0?G', '9.>0@ 8G5>', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:43:30'),
(9, '3', '1', '1612795438968642221.jpg', '@ 5M/>*>0 *0>.0M6', '80M56M0G7M  @ 8.>'>( *M0&>$> G8@', '8G! /B?8?/>?8 /B! .M(?8 8M  (8 00 52M*MG. M8@8G?/. !K20.G!> ?/. K. 0G. *0?/.  ipsa M5>2G , 2K (5K0 5G0?G', '9.>0@ 8G5>', '#', 1, '2021-02-08 08:27:37', '2021-02-21 04:42:52'),
(10, '3', '1', '1613904115990305225.jpg', '@ 5M/>*>0 *0>.0M6', '80M56M0G7M  @ 8.>'>( *M0&>$> G8@', '8G! /B?8?/>?8 /B! .M(?8 8M  (8 00 52M*MG. M8@8G?/. !K20.G!> ?/. K. 0G. *0?/.  ipsa M5>2G , 2K (5K0 5G0?G', '9.>0@ 8G5>', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:41:55'),
(11, '1', '1', '16910902271552203957.jpg', 'Total Construction Solution!', NULL, NULL, 'Facebook', 'https://www.facebook.com/civilexpertbd', 1, '2023-01-20 08:16:58', '2023-08-11 17:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-youtube', 'https://www.youtube.com/@civilexpertbd/about', 0, '2021-02-14 03:17:51', '2023-05-27 00:34:30'),
(2, 'fab fa-linkedin-in', 'https://www.linkedin.com/company/civilexpertbd/', 0, '2021-02-14 03:18:04', '2023-05-27 00:38:26'),
(4, 'fab fa-facebook-f', 'https://www.facebook.com/civilexpertbd', 0, '2021-02-14 03:18:24', '2023-05-27 00:33:28'),
(5, 'fab fa-instagram', 'https://www.instagram.com/civilexpertbd', 0, '2021-02-14 03:18:53', '2023-05-27 00:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `status` tinyint DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dagenation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `icon1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `language_id`, `status`, `image`, `name`, `dagenation`, `description`, `serial_number`, `icon1`, `icon2`, `icon3`, `icon4`, `icon5`, `url1`, `url2`, `url3`, `url4`, `url5`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-05-27 10:29:48'),
(2, 1, 0, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-05-27 10:29:41'),
(3, 1, 0, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-05-27 10:29:33'),
(4, 1, 0, '1612933803370198115.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-05-27 10:29:22'),
(5, 1, 0, '16129337911260741882.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-05-27 10:29:14'),
(6, 1, 0, '16129337752084136888.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-05-27 10:29:05'),
(7, 1, 1, '16851905321340341521.jpg', 'Engr. Shaharul Islam', 'Project Co- Ordinator', '<p><span class=\"markedContent\" id=\"page12R_mcid12\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*465.78px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.941854);\" role=\"presentation\" dir=\"ltr\"><b>Engr. Shaharul Islam</b> Possesses Comprehensive Knowledge in Bored Piling &amp; Civil Construction Development. After</span></span><span class=\"markedContent\" id=\"page12R_mcid13\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*497.28px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.954069);\" role=\"presentation\" dir=\"ltr\">Completed Diploma in Civil Engineering Under BTEB. He Works at 2014 Ashugonj 450 MW Combined Cycle Power</span></span><span class=\"markedContent\" id=\"page12R_mcid14\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*528.78px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.999808);\" role=\"presentation\" dir=\"ltr\">Plant (south) as a Site Supervisor. After He Joined at Icon Engineering Services Ltd at 2015 as a Sub Assistant</span></span><span class=\"markedContent\" id=\"page12R_mcid15\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*560.28px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.978931);\" role=\"presentation\" dir=\"ltr\">Engineer at Extension of Barapukuria Coal Fired Thermal Power Station 275 MW Project. After he works as a Site</span></span><span class=\"markedContent\" id=\"page12R_mcid16\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*591.78px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.0344);\" role=\"presentation\" dir=\"ltr\">Engineer at Dhaka Elevated Expressway, Viaduct of Rail Bridge Over Rupsha River at Khulna, N8 Project at</span></span><span class=\"markedContent\" id=\"page12R_mcid17\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*623.28px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.975464);\" role=\"presentation\" dir=\"ltr\">Abdullahpur, Dhaka Mass Rapid Transit ( DMRT) Line- 6, HSIA Terminal-3 Project. He is in Depth Knowledge has</span></span><span class=\"markedContent\" id=\"page12R_mcid18\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*654.78px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.03812);\" role=\"presentation\" dir=\"ltr\">Enriched the Bored Pile &amp; The Projects Spread Over the Country. After he Joined at Civil Expert as a Project</span></span><span class=\"markedContent\" id=\"page12R_mcid19\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*686.28px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.947573);\" role=\"presentation\" dir=\"ltr\">Manager Sheikh Hasina Cantonment , Lebukhali, Barishal and after his Good performances Promoted a Project Co-</span></span><span class=\"markedContent\" id=\"page12R_mcid20\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*329.59px); top: calc(var(--scale-factor)*717.78px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.991838);\" role=\"presentation\" dir=\"ltr\">Ordinator.</span></span><br></p>', 2, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://www.facebook.com/mdshaharul.islam.169', 'civilexpertbd.com', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-08-12 14:45:20'),
(8, 1, 1, '1685190489709489410.jpg', 'Engr. shahriar Kabir Shipon', 'Director', '<p><span class=\"markedContent\" id=\"page12R_mcid6\"><span style=\"left: calc(var(--scale-factor)*308.86px); top: calc(var(--scale-factor)*136.84px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.998243);\" role=\"presentation\" dir=\"ltr\"><b>Engr. Shahriar Kabir Shipon</b> possesses comprenhensive knowledge in civil construction and piling sector after</span></span><span class=\"markedContent\" id=\"page12R_mcid7\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*308.86px); top: calc(var(--scale-factor)*168.34px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.966772);\" role=\"presentation\" dir=\"ltr\">Completed his Engineering Degree</span></span><span class=\"markedContent\" id=\"page12R_mcid8\"></span><span class=\"markedContent\" id=\"page12R_mcid9\"><span style=\"left: calc(var(--scale-factor)*628.99px); top: calc(var(--scale-factor)*168.34px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*644.52px); top: calc(var(--scale-factor)*168.34px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.01877);\" role=\"presentation\" dir=\"ltr\">and MBA in marketing from Jagannath University . He was involved in the</span></span><span class=\"markedContent\" id=\"page12R_mcid10\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*308.86px); top: calc(var(--scale-factor)*199.84px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.01377);\" role=\"presentation\" dir=\"ltr\">construction and piling works. He has depth knowledge has enriched the company as a whole to manage all</span></span><span class=\"markedContent\" id=\"page12R_mcid11\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*308.86px); top: calc(var(--scale-factor)*231.34px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.985333);\" role=\"presentation\" dir=\"ltr\">projects spread over the country.</span></span><br></p>', 1, 'fab fa-facebook-f', 'fab fa-linkedin', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://www.facebook.com/shiponshahriar', 'https://www.linkedin.com/in/shahrial-kabir-shipon-99b549129/', 'civilexpertbd.com', 'civilexpertbd.com', NULL, '2021-02-09 22:50:20', '2023-08-12 14:44:38'),
(9, 1, 1, '1685190433385414943.JPG', 'MD. Saheb Ali', 'Chairmain', '<p><span class=\"markedContent\" id=\"page11R_mcid4\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.986811);\" role=\"presentation\" dir=\"ltr\">Md. Saheb Ali Founder and the</span></span><span class=\"markedContent\" id=\"page11R_mcid5\"><span style=\"left: calc(var(--scale-factor)*638.34px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*644.48px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.04841);\" role=\"presentation\" dir=\"ltr\">Managing Director</span></span><span class=\"markedContent\" id=\"page11R_mcid6\"><span style=\"left: calc(var(--scale-factor)*822.51px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*828.40px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.06553);\" role=\"presentation\" dir=\"ltr\">of</span></span><span class=\"markedContent\" id=\"page11R_mcid7\"><span style=\"left: calc(var(--scale-factor)*846.49px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*852.39px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.04308);\" role=\"presentation\" dir=\"ltr\">Civil Exper</span></span><span class=\"markedContent\" id=\"page11R_mcid8\"><span style=\"left: calc(var(--scale-factor)*953.34px); top: calc(var(--scale-factor)*124.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.981957);\" role=\"presentation\" dir=\"ltr\">t is basically a highly experienced foundation</span></span><span class=\"markedContent\" id=\"page11R_mcid9\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*156.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.961853);\" role=\"presentation\" dir=\"ltr\">technician, gathered huge experience and expertise from practical field. 10th</span></span><span class=\"markedContent\" id=\"page11R_mcid10\"></span><span class=\"markedContent\" id=\"page11R_mcid11\"><span style=\"left: calc(var(--scale-factor)*1036.33px); top: calc(var(--scale-factor)*156.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*1045.11px); top: calc(var(--scale-factor)*156.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.961938);\" role=\"presentation\" dir=\"ltr\">April 2005 he took a noble decision</span></span><span class=\"markedContent\" id=\"page11R_mcid12\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*187.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.948203);\" role=\"presentation\" dir=\"ltr\">to started its journey with Reinforcements &amp; Civil works. Then he started Piling work in 2014 this journey is started</span></span><span class=\"markedContent\" id=\"page11R_mcid13\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*219.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.00998);\" role=\"presentation\" dir=\"ltr\">with one set of tripod drilling rig with Mechanical Rotary set in a small rental office . Providing Bored Piles by</span></span><span class=\"markedContent\" id=\"page11R_mcid14\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*250.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.970515);\" role=\"presentation\" dir=\"ltr\">Mechanical rotary,Percussion method Cast-in-Situ Piles, Reinforcements and Civil construction work. Within the</span></span><span class=\"markedContent\" id=\"page11R_mcid15\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*282.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.974391);\" role=\"presentation\" dir=\"ltr\">tenure of it\'s 17 years working</span></span><span class=\"markedContent\" id=\"page11R_mcid16\"><span style=\"left: calc(var(--scale-factor)*626.55px); top: calc(var(--scale-factor)*282.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*632.69px); top: calc(var(--scale-factor)*282.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(1.07137);\" role=\"presentation\" dir=\"ltr\">Civil Expert</span></span><span class=\"markedContent\" id=\"page11R_mcid17\"><span style=\"left: calc(var(--scale-factor)*741.85px); top: calc(var(--scale-factor)*282.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif;\" role=\"presentation\" dir=\"ltr\"> </span><span style=\"left: calc(var(--scale-factor)*748.19px); top: calc(var(--scale-factor)*282.08px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.974647);\" role=\"presentation\" dir=\"ltr\">passed through lots of ups/downs and gradually become a growing</span></span><span class=\"markedContent\" id=\"page11R_mcid18\"><br role=\"presentation\"><span style=\"left: calc(var(--scale-factor)*358.50px); top: calc(var(--scale-factor)*313.58px); font-size: calc(var(--scale-factor)*19.99px); font-family: sans-serif; transform: scaleX(0.966246);\" role=\"presentation\" dir=\"ltr\">Foundation builder and Construction Company in the country</span></span><br></p>', 0, 'fab fa-facebook-f', NULL, NULL, NULL, NULL, 'https://www.facebook.com/civilexpertbd', NULL, NULL, NULL, NULL, '2021-02-09 22:50:20', '2023-08-12 14:42:10'),
(28, 2, 1, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:44'),
(29, 2, 1, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:39'),
(30, 2, 1, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:33'),
(31, 3, 1, '16129338312071725073.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:44'),
(32, 3, 1, '16129338221686840959.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:39'),
(33, 3, 1, '1612933813754845667.jpg', 'D. Williamson', 'Founder', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. Its a lot meaningful content here.&nbsp; As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.<br></p>', 0, 'fab fa-facebook-f', 'fab fa-twitter', 'fab fa-behance', 'fab fa-linkedin-in', NULL, 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', 'https://codecanyon.net/user/geniusdevs/portfolio', NULL, '2021-02-09 22:50:20', '2021-02-09 23:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `status`, `name`, `position`, `message`, `image`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882602016629985.png', '5', 0, '2021-02-15 05:24:20', '2021-02-15 05:24:20'),
(2, 1, NULL, 'Genius Mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882721147818251.png', '5', 0, '2021-02-15 05:24:32', '2021-02-15 05:24:32'),
(3, 1, NULL, 'Lisa', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1613388285721028944.png', '5', 1, '2021-02-15 05:24:45', '2021-02-15 05:29:28'),
(4, 2, NULL, 'mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882602016629985.png', '5', 0, '2021-02-15 05:24:20', '2021-02-15 05:24:20'),
(5, 2, NULL, 'Genius Mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882721147818251.png', '5', 0, '2021-02-15 05:24:32', '2021-02-15 05:24:32'),
(6, 2, NULL, 'Lisa', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1613388285721028944.png', '5', 1, '2021-02-15 05:24:45', '2021-02-15 05:29:28'),
(7, 3, NULL, 'mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882602016629985.png', '5', 0, '2021-02-15 05:24:20', '2021-02-15 05:24:20'),
(8, 3, NULL, 'Genius Mamun', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '16133882721147818251.png', '5', 0, '2021-02-15 05:24:32', '2021-02-15 05:24:32'),
(9, 3, NULL, 'Lisa', 'CEO of Apple', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1613388285721028944.png', '5', 1, '2021-02-15 05:24:45', '2021-02-15 05:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verify_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vision_missions`
--

CREATE TABLE `vision_missions` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vision_missions`
--

INSERT INTO `vision_missions` (`id`, `language_id`, `status`, `title`, `description`, `date`, `position`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'The Vision :', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(237, 245, 248);\">Our vision is to be a vanguard of comprehensive geotechnical engineering service provider in the country by the power of knowledge, technology, machinery, and human resources. Our prime vision is to develop present geotechnical engineering practice by incorporating modern technology practiced in developed world and to improve skills of local engineers and entrepreneurs. We believe in commitment to the profession, advancement of technology and provide the best services to the client.</span><br></p>', NULL, NULL, 0, '2023-01-22 10:26:00', '2023-01-22 10:26:00'),
(2, '1', 1, 'The Philosophy & Missions :', '<p style=\"color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(237, 245, 248);\">ssLong back, in mid-fifties of last century, geotechnical engineering services i.e. soil investigation and bored pile construction have been introduced in the then East Pakistan under the entrepreneurship of Swiss Boring, later, the company switched over to Soiltech International Ltd in the year of 1971, just after the independence of the country. Other than Soiltech International Ltd, few other companies grew under the leadership of local engineers, and started practicing geotechnical engineering in real life project. But work volume failed to attract others to this profession.<br><br>Over time, the economy of the country gained momentum and development work volume amplified but this specialized geotechnical engineering did not move forward, rather, we want to say, quality and services declined. Non-professionals dominated the industry and in most cases people took it simply as business. Now its time to set a new benchmark and set on our missions to:</p><ul class=\"requirement-list\" style=\"margin: 20px 0px 0px 20px; padding: 0px; display: inline-block; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px; background-color: rgb(237, 245, 248);\"><li style=\"width: 1050px; float: left; margin-bottom: 15px;\">Incorporate updated technology.</li><li style=\"width: 1050px; float: left; margin-bottom: 15px;\">Procure modern equipment and instrument.</li><li style=\"width: 1050px; float: left; margin-bottom: 15px;\">Improve skills of local engineers and entrepreneur.</li><li style=\"width: 1050px; float: left; margin-bottom: 15px;\">Develop human resources.</li></ul>', NULL, NULL, 0, '2023-01-22 10:27:41', '2023-01-22 10:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `why_selects`
--

CREATE TABLE `why_selects` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_selects`
--

INSERT INTO `why_selects` (`id`, `language_id`, `status`, `title`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(2, '1', 1, 'Beneficial Strategies', 'fal fa-server', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:19', '2021-02-17 06:14:34'),
(3, '1', 1, 'Automated Software', 'fal fa-tools', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:45', '2021-02-17 06:14:29'),
(4, '1', 1, 'Modify Whole System', 'fal fa-laptop-code', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:51:00', '2021-02-17 06:14:25'),
(5, '2', 1, 'Beneficial Strategies', 'fal fa-server', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:19', '2021-02-17 06:14:34'),
(6, '2', 1, 'Automated Software', 'fal fa-tools', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:45', '2021-02-17 06:14:29'),
(7, '2', 1, 'Modify Whole System', 'fal fa-laptop-code', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:51:00', '2021-02-17 06:14:25'),
(8, '3', 1, 'Beneficial Strategies', 'fal fa-server', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:19', '2021-02-17 06:14:34'),
(9, '3', 1, 'Automated Software', 'fal fa-tools', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:27:45', '2021-02-17 06:14:29'),
(10, '3', 1, 'Modify Whole System', 'fal fa-laptop-code', 'Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.', 0, '2021-02-09 08:51:00', '2021-02-17 06:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flinks`
--
ALTER TABLE `flinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_certificates`
--
ALTER TABLE `membership_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vision_missions`
--
ALTER TABLE `vision_missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_selects`
--
ALTER TABLE `why_selects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emailsettings`
--
ALTER TABLE `emailsettings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flinks`
--
ALTER TABLE `flinks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membership_certificates`
--
ALTER TABLE `membership_certificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vision_missions`
--
ALTER TABLE `vision_missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `why_selects`
--
ALTER TABLE `why_selects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
