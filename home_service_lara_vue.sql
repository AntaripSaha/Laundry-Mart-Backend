-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 03, 2022 at 10:40 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

DELIMITER $$
--
-- Functions
-- --
-- DROP FUNCTION IF EXISTS `json_extract`$$
-- CREATE DEFINER=`root`@`localhost` FUNCTION `json_extract` (`details` TEXT, `required_field` VARCHAR(255)) RETURNS TEXT CHARSET latin1  BEGIN
--         SET details = SUBSTRING_INDEX(details, "{", -1);
--         SET details = SUBSTRING_INDEX(details, "}", 1);
--         RETURN TRIM(
--             BOTH '"' FROM SUBSTRING_INDEX(
--                 SUBSTRING_INDEX(
--                     SUBSTRING_INDEX(
--                         details,
--                         CONCAT(
--                             '"',
--                             SUBSTRING_INDEX(required_field,'$.', -1),
--                             '":'
--                         ),
--                         -1
--                     ),
--                     ',"',
--                     1
--                 ),
--                 ':',
--                 -1
--             )
--         ) ;
--         END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(20,17) NOT NULL DEFAULT '0.00000000000000000',
  `longitude` double(20,17) NOT NULL DEFAULT '0.00000000000000000',
  `default` tinyint(1) DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', '896 Kozey Junctions Suite 274\nKristinachester, SC 81623', 50.48030671000000000, 11.28091450000000000, 0, 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, 'Work', '4564 Marilyne Wall Suite 470\nPort Barryborough, NE 24230-8567', 51.67416256000000000, 9.58859380000000000, 0, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, 'Work', '504 Sandra Ports\nRutherfordside, OK 34369-8267', 51.54599670000000000, 10.64942061000000000, 0, 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, 'Home', '4263 Sporer Wells\nDanteberg, HI 03076', 50.27670951000000000, 11.68148159000000000, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, 'Hotel', '45663 Effertz Islands\nSouth Artfurt, VT 24754-8650', 50.42749053000000000, 9.45962692000000000, 0, 8, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, 'Building', '401 Batz Forges Suite 001\nPort Fredside, WV 95015', 51.52843532000000000, 10.02408116000000000, 0, 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, 'Building', '61669 Asia Squares Apt. 744\nSouth Isabellberg, DE 20802', 50.91929444000000000, 10.09866537000000000, 0, 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, 'Work', '393 Leone Courts Apt. 724\nKattieport, OH 76955', 51.10347528000000000, 10.78000868000000000, 0, 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, 'Work', '40801 Dibbert Squares\nPort Alison, DE 00480', 51.62144263000000000, 9.31395108000000000, 0, 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, 'Hotel', '13974 Stella Grove Suite 221\nWest Vickie, AR 95430', 51.10187893000000000, 9.70987877000000000, 0, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, 'Office', '588 Kiel Neck\nLake Mekhi, NY 97036', 51.23312466000000000, 11.22288810000000000, 0, 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, 'Work', '1926 Sauer Knolls\nDibbertfort, CA 47791', 50.72369395000000000, 11.77385216000000000, 0, 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, 'Hotel', '827 Marjolaine Ramp\nWest Mose, UT 70689', 51.03540189000000000, 9.14631752000000000, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, 'Office', '17529 Stokes Crest\nMurazikfort, IN 79414-5369', 51.57751973000000000, 10.87244607000000000, 0, 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, 'Office', '3988 Darryl Views Apt. 776\nWest Tomchester, VT 31419-5655', 50.85341159000000000, 10.76869486000000000, 0, 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, 'Home', '1746 Pfannerstill Forks\nNorth Adityaburgh, MO 41556', 51.93451241000000000, 11.19251921000000000, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, 'Home', '270 Wolff Crest\nEast Forrest, OH 49074-4029', 51.82380996000000000, 10.11910917000000000, 0, 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, 'Work', '325 Kihn Views Apt. 699\nSouth Jazmyneborough, MT 78611', 51.97880193000000000, 10.07533717000000000, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(19, 'Workshop', '338 Cole Mills Suite 530\nEast Immanuel, WV 31266-0066', 50.73510855000000000, 10.82553258000000000, 0, 8, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(20, 'Building', '52741 Nico Trail Apt. 482\nSouth Stevebury, LA 60364', 51.33225364000000000, 10.98725833000000000, 0, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE IF NOT EXISTS `app_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_settings_key_index` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Home Services'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.hostinger.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'test@demo.com'),
(24, 'mail_password', '-'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'test@demo.com'),
(27, 'mail_from_name', 'Smarter Vision'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '020a2dd4-4277-425a-b450-426663f52633'),
(35, 'nav_color', 'navbar-dark navbar-navy'),
(38, 'logo_bg_color', 'text-light  navbar-navy'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '1'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', '-'),
(114, 'paypal_secret', '-'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#F4841F'),
(117, 'main_dark_color', '#F4841F'),
(118, 'second_color', '#08143A'),
(119, 'second_dark_color', '#CCCCDD'),
(120, 'accent_color', '#8C9DA8'),
(121, 'accent_dark_color', '#9999AA'),
(122, 'scaffold_dark_color', '#2C2C2C'),
(123, 'scaffold_color', '#FAFAFA'),
(124, 'google_maps_key', '-'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '1.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '1'),
(133, 'distance_unit', 'km'),
(134, 'default_theme', 'light'),
(135, 'enable_paystack', '1'),
(136, 'paystack_key', 'pk_test_d754715fa3fa9048c9ab2832c440fb183d7c91f5'),
(137, 'paystack_secret', 'sk_test_66f87edaac94f8adcb28fdf7452f12ccc63d068d'),
(138, 'enable_flutterwave', '1'),
(139, 'flutterwave_key', 'FLWPUBK_TEST-d465ba7e4f6b86325cb9881835726402-X'),
(140, 'flutterwave_secret', 'FLWSECK_TEST-d3f8801da31fc093fb1207ea34e68fbb-X'),
(141, 'enable_stripe_fpx', '1'),
(142, 'stripe_fpx_key', 'pk_test_51IQ0zvB0wbAJesyPLo3x4LRgOjM65IkoO5hZLHOMsnO2RaF0NlH7HNOfpCkjuLSohvdAp30U5P1wKeH98KnwXkOD00mMDavaFX'),
(143, 'stripe_fpx_secret', 'sk_test_51IQ0zvB0wbAJesyPUtR7yGdyOR7aGbMQAX5Es9P56EDUEsvEQAC0NBj7JPqFuJEYXrvSCm5OPRmGaUQBswjkRxVB00mz8xhkFX'),
(144, 'enable_paymongo', '1'),
(145, 'paymongo_key', 'pk_test_iD6aYYm4yFuvkuisyU2PGSYH'),
(146, 'paymongo_secret', 'sk_test_oxD79bMKxb8sA47ZNyYPXwf3'),
(147, 'provider_app_name', 'Service Provider'),
(148, 'default_country_code', 'DE'),
(149, 'enable_otp', '1');

-- --------------------------------------------------------

--
-- Table structure for table `availability_hours`
--

DROP TABLE IF EXISTS `availability_hours`;
CREATE TABLE IF NOT EXISTS `availability_hours` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `day` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `availability_hours_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availability_hours`
--

INSERT INTO `availability_hours` (`id`, `day`, `start_at`, `end_at`, `data`, `e_provider_id`) VALUES
(1, 'thursday', '04:00', '16:00', '{\"en\":\"Sed eius facere architecto commodi.\"}', 7),
(2, 'sunday', '11:00', '13:00', '{\"en\":\"Aut molestias officia quo ea dolorum.\"}', 3),
(3, 'saturday', '09:00', '19:00', '{\"en\":\"Et dolores voluptatem sint distinctio.\"}', 8),
(4, 'thursday', '09:00', '20:00', '{\"en\":\"Quibusdam molestias culpa ullam.\"}', 10),
(5, 'friday', '05:00', '13:00', '{\"en\":\"Ut nemo voluptas temporibus omnis.\"}', 7),
(6, 'tuesday', '09:00', '17:00', '{\"en\":\"Tempora ut fuga consequuntur odit atque.\"}', 8),
(7, 'sunday', '06:00', '21:00', '{\"en\":\"Repellendus veritatis doloremque dolor atque.\"}', 15),
(8, 'tuesday', '02:00', '21:00', '{\"en\":\"Velit et aperiam explicabo sed distinctio.\"}', 12),
(9, 'friday', '09:00', '16:00', '{\"en\":\"Autem hic quae vel ipsam placeat dignissimos.\"}', 13),
(10, 'saturday', '12:00', '14:00', '{\"en\":\"Eum aut consequatur magnam alias.\"}', 12),
(11, 'tuesday', '08:00', '23:00', '{\"en\":\"Aut totam qui sequi eum laboriosam.\"}', 5),
(12, 'thursday', '09:00', '14:00', '{\"en\":\"Aperiam qui iure ut incidunt quo eos ducimus.\"}', 14),
(13, 'friday', '10:00', '16:00', '{\"en\":\"Possimus sed autem cum beatae et quia excepturi.\"}', 2),
(14, 'saturday', '11:00', '19:00', '{\"en\":\"A qui reprehenderit ut id quos sunt vel.\"}', 7),
(15, 'saturday', '12:00', '15:00', '{\"en\":\"Distinctio aperiam est sunt minima ab.\"}', 17),
(16, 'tuesday', '07:00', '16:00', '{\"en\":\"Eaque autem possimus ullam molestiae porro.\"}', 10),
(17, 'wednesday', '04:00', '18:00', '{\"en\":\"Sint aut porro facere soluta.\"}', 4),
(18, 'monday', '05:00', '15:00', '{\"en\":\"Enim perferendis excepturi similique eum error.\"}', 7),
(19, 'monday', '02:00', '20:00', '{\"en\":\"Eaque aliquam asperiores adipisci ut est.\"}', 12),
(20, 'sunday', '04:00', '19:00', '{\"en\":\"Culpa eos ab laboriosam fugit et est et rerum.\"}', 16),
(21, 'sunday', '08:00', '16:00', '{\"en\":\"Qui voluptates fugit est.\"}', 1),
(22, 'sunday', '12:00', '23:00', '{\"en\":\"Quod ducimus optio cum ipsam.\"}', 14),
(23, 'wednesday', '04:00', '19:00', '{\"en\":\"Minus nemo alias in eum qui eum et ullam.\"}', 1),
(24, 'thursday', '12:00', '20:00', '{\"en\":\"Maxime et ratione quam quibusdam velit accusamus.\"}', 14),
(25, 'thursday', '11:00', '22:00', '{\"en\":\"Repellat et rem rerum atque iure itaque minus id.\"}', 6),
(26, 'saturday', '10:00', '22:00', '{\"en\":\"Laborum iusto sunt quibusdam et.\"}', 9),
(27, 'saturday', '07:00', '21:00', '{\"en\":\"Maiores quasi laudantium et fuga suscipit.\"}', 8),
(28, 'monday', '11:00', '16:00', '{\"en\":\"Sit enim rerum ut nesciunt vitae est praesentium.\"}', 14),
(29, 'wednesday', '04:00', '15:00', '{\"en\":\"Quod qui sit eos consequatur.\"}', 7),
(30, 'monday', '03:00', '19:00', '{\"en\":\"Dolorum ullam at repellendus aut libero.\"}', 13),
(31, 'monday', '09:00', '23:00', '{\"en\":\"Alias iusto id quia cupiditate.\"}', 15),
(32, 'wednesday', '03:00', '19:00', '{\"en\":\"Animi non aut dicta est vel veniam.\"}', 17),
(33, 'tuesday', '06:00', '13:00', '{\"en\":\"Omnis quod nam quia rerum accusamus omnis.\"}', 16),
(34, 'wednesday', '07:00', '18:00', '{\"en\":\"Quo fuga et quisquam facere aut.\"}', 2),
(35, 'monday', '04:00', '22:00', '{\"en\":\"Nemo iusto dolorem sit est modi qui impedit.\"}', 15),
(36, 'monday', '02:00', '20:00', '{\"en\":\"Ad qui illum tempora error omnis.\"}', 4),
(37, 'thursday', '02:00', '22:00', '{\"en\":\"Et molestiae provident quam odio.\"}', 16),
(38, 'monday', '08:00', '18:00', '{\"en\":\"Magnam alias impedit ad minima optio.\"}', 15),
(39, 'sunday', '06:00', '15:00', '{\"en\":\"Sequi qui facere omnis est.\"}', 14),
(40, 'sunday', '11:00', '21:00', '{\"en\":\"Perspiciatis excepturi natus qui fugit qui quia.\"}', 9),
(41, 'tuesday', '11:00', '17:00', '{\"en\":\"Dolor unde occaecati maxime quia tempore.\"}', 12),
(42, 'wednesday', '11:00', '18:00', '{\"en\":\"Quos dolores nihil doloribus excepturi.\"}', 4),
(43, 'friday', '05:00', '22:00', '{\"en\":\"Vel molestias aut enim et nostrum et.\"}', 7),
(44, 'sunday', '09:00', '17:00', '{\"en\":\"Neque nulla pariatur officia corrupti ab.\"}', 15),
(45, 'sunday', '07:00', '16:00', '{\"en\":\"Et beatae nemo eum enim doloribus alias delectus.\"}', 16),
(46, 'monday', '06:00', '13:00', '{\"en\":\"Tempore animi sunt quos adipisci at ut.\"}', 1),
(47, 'monday', '12:00', '22:00', '{\"en\":\"Odio libero repudiandae dolorum dolores et.\"}', 15),
(48, 'thursday', '05:00', '16:00', '{\"en\":\"Sed fugit quas eius.\"}', 3),
(49, 'friday', '05:00', '20:00', '{\"en\":\"Vitae quidem eaque ut eos rerum in.\"}', 10),
(50, 'saturday', '07:00', '22:00', '{\"en\":\"Rerum ut ad voluptate architecto ut.\"}', 15);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `awards_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Recusandae et deleniti numquam et. Sapiente enim explicabo et quos sed beatae ratione.\"}', '{\"en\":\"Queen, turning purple. \'I won\'t!\' said Alice. \'Who\'s making personal remarks now?\' the Hatter were having tea at it: a Dormouse was sitting on a little girl she\'ll think me for his housemaid,\' she.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(2, '{\"en\":\"Et voluptatibus deserunt rerum enim. Aliquam ut repudiandae provident consequatur rerum quis.\"}', '{\"en\":\"She did not notice this last remark that had fallen into a line along the course, here and there stood the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(3, '{\"en\":\"Expedita fugit odit esse distinctio qui omnis. Quo doloribus unde neque rem est.\"}', '{\"en\":\"And he added in an offended tone, \'Hm! No accounting for tastes! Sing her \\\"Turtle Soup,\\\" will you, won\'t you, won\'t you, will you, won\'t you, will you, won\'t you join the dance. So they got thrown.\"}', 16, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(4, '{\"en\":\"Hic quis amet in sed. Reiciendis laudantium et ut nam. Et et suscipit molestiae sed dignissimos.\"}', '{\"en\":\"Suppress him! Pinch him! Off with his whiskers!\' For some minutes the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\' asked the Mock Turtle to sing you a.\"}', 1, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(5, '{\"en\":\"Consequatur fuga velit culpa ut nobis enim. Quia et amet excepturi veniam qui.\"}', '{\"en\":\"King eagerly, and he went on to the door, and knocked. \'There\'s no sort of way, \'Do cats eat bats? Do cats eat bats? Do cats eat bats, I wonder?\' Alice guessed in a Little Bill It was all ridges and.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(6, '{\"en\":\"Quam aut et sit sit. Dolorum et est in. Omnis nobis quis ut et dolore eveniet.\"}', '{\"en\":\"March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t think,\' Alice went on, \'and most things twinkled after that--only the March Hare, \'that \\\"I like what I say--that\'s the same thing,\'.\"}', 11, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(7, '{\"en\":\"Quae provident atque quae accusamus pariatur. Ducimus qui dignissimos nam sit aut enim.\"}', '{\"en\":\"Queen. \'It proves nothing of the house before she came in with the game,\' the Queen put on her face in her life before, and she felt sure she would gather about her other little children, and.\"}', 17, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(8, '{\"en\":\"Quidem distinctio quo optio. Corrupti voluptate quaerat numquam impedit et fuga tempora hic.\"}', '{\"en\":\"King, with an M, such as mouse-traps, and the Hatter continued, \'in this way:-- \\\"Up above the world you fly, Like a tea-tray in the middle. Alice kept her eyes to see it trying in a very good height.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(9, '{\"en\":\"Nostrum quaerat deleniti aut sunt similique modi. Sunt officia laudantium et quidem.\"}', '{\"en\":\"Alice, \'and those twelve creatures,\' (she was obliged to say \\\"HOW DOTH THE LITTLE BUSY BEE,\\\" but it puzzled her a good thing!\' she said to herself as she could, for her neck kept getting entangled.\"}', 13, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(10, '{\"en\":\"Atque molestias non accusantium quae et. Commodi voluptatibus dolorem quo aut vero quis optio.\"}', '{\"en\":\"Elsie, Lacie, and Tillie; and they can\'t prove I did: there\'s no use denying it. I suppose it were nine o\'clock in the air: it puzzled her too much, so she set to work throwing everything within her.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(11, '{\"en\":\"Enim accusamus similique voluptatem et. Eos aliquam nisi modi est officiis.\"}', '{\"en\":\"Mock Turtle went on growing, and growing, and very neatly and simply arranged; the only difficulty was, that anything that had made out the Fish-Footman was gone, and, by the time they were getting.\"}', 18, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(12, '{\"en\":\"Velit ab asperiores et et. Aut qui reiciendis minima quibusdam.\"}', '{\"en\":\"Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came up to the Dormouse, not choosing to notice this question, but hurriedly went on, \'if you don\'t like them raw.\' \'Well, be off.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(13, '{\"en\":\"Qui aut et recusandae blanditiis et. Ratione iure dolor qui assumenda eius. Sint magnam hic error.\"}', '{\"en\":\"King and the party were placed along the course, here and there was a very fine day!\' said a whiting to a mouse: she had read about them in books, and she sat on, with closed eyes, and feebly.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(14, '{\"en\":\"Fugit et aut nam aut quas expedita aliquid. Nostrum quidem voluptatum et vitae mollitia mollitia.\"}', '{\"en\":\"I\'ve fallen by this time, sat down and saying to herself \'It\'s the oldest rule in the world go round!\\\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\'.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(15, '{\"en\":\"Porro voluptatem aut sunt aut libero. Corrupti itaque blanditiis et est quis et.\"}', '{\"en\":\"You\'re mad.\' \'How do you know why it\'s called a whiting?\' \'I never went to him,\' said Alice indignantly, and she had peeped into the Dormouse\'s place, and Alice looked all round her at the window.\'.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(16, '{\"en\":\"In molestiae esse ipsum sint. Earum maiores aut quis rerum tempore. At nemo qui nam.\"}', '{\"en\":\"VII. A Mad Tea-Party There was no use in talking to herself, and began to get in?\' \'There might be some sense in your knocking,\' the Footman went on muttering over the list, feeling very glad that.\"}', 14, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(17, '{\"en\":\"Est expedita sunt libero et. Nihil omnis et quae veniam. Saepe cum itaque ex est voluptatem.\"}', '{\"en\":\"Hatter shook his head sadly. \'Do I look like it?\' he said, turning to Alice an excellent opportunity for croqueting one of the hall; but, alas! either the locks were too large, or the key was too.\"}', 1, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(18, '{\"en\":\"Corrupti delectus velit consequatur et sint. Dolores velit commodi a impedit molestiae nihil.\"}', '{\"en\":\"Mouse with an air of great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'I mean what I could show you our cat Dinah: I think I must go by the officers of the tail, and ending with the grin.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(19, '{\"en\":\"Optio quia enim molestiae voluptas nesciunt. Ea sunt qui vel. Aut quasi aut modi autem aperiam et.\"}', '{\"en\":\"The Mock Turtle to sing \\\"Twinkle, twinkle, little bat! How I wonder if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the grass, merely remarking.\"}', 12, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(20, '{\"en\":\"Dignissimos velit sequi earum ipsum rerum. Velit nisi delectus ut unde et.\"}', '{\"en\":\"So they had to leave the court; but on second thoughts she decided on going into the wood to listen. \'Mary Ann! Mary Ann!\' said the King. \'Then it ought to go through next walking about at the place.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(21, '{\"en\":\"Molestias perferendis veniam modi rerum aut eum. Possimus accusantium voluptas quos aliquid beatae.\"}', '{\"en\":\"Alice guessed in a bit.\' \'Perhaps it doesn\'t matter which way I want to get in at once.\' And in she went. Once more she found she could not answer without a cat! It\'s the most important piece of.\"}', 14, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(22, '{\"en\":\"Laboriosam qui vero est dolor. Nam et ut voluptas et.\"}', '{\"en\":\"Hatter went on, yawning and rubbing its eyes, for it flashed across her mind that she was as long as it happens; and if I shall remember it in asking riddles that have no idea what to do, and in his.\"}', 13, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(23, '{\"en\":\"Voluptatum id harum aliquam. Facere est sed eos expedita. Ipsam optio fugiat quibusdam sapiente.\"}', '{\"en\":\"Alice, that she still held the pieces of mushroom in her haste, she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall sit here,\' the.\"}', 17, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(24, '{\"en\":\"Et omnis qui hic. Culpa ut aut enim eum dolorum. Ut quia ut aliquid. Quas corrupti quasi non odit.\"}', '{\"en\":\"Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, (she had grown up,\' she said to herself; \'the March Hare interrupted, yawning. \'I\'m getting tired of sitting by her sister kissed her, and.\"}', 3, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(25, '{\"en\":\"Expedita et enim aliquam dolorem laudantium fugit. Sint sunt et dolor tempora. Odio et modi sunt.\"}', '{\"en\":\"CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself what such an extraordinary ways of living would be very likely it can be,\' said the Duchess. An invitation for the garden!\'.\"}', 17, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(26, '{\"en\":\"Aliquid quia est voluptate. Velit laboriosam accusamus temporibus hic.\"}', '{\"en\":\"Will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you, will you join the dance. \'\\\"What matters it how far we go?\\\" his scaly friend replied. \\\"There is another shore, you know.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(27, '{\"en\":\"Vero voluptates quia quod dolor tempora veniam. Repellat ex adipisci at voluptates autem aliquam.\"}', '{\"en\":\"When the procession came opposite to Alice, and she went to work at once set to work at once took up the conversation a little. \'\'Tis so,\' said Alice. \'Why, SHE,\' said the Queen left off, quite out.\"}', 9, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(28, '{\"en\":\"Officiis aut ut ut mollitia. Quam aut illo accusantium ipsa vel. Est voluptas illo velit beatae.\"}', '{\"en\":\"The pepper when he finds out who I am! But I\'d better take him his fan and two or three pairs of tiny white kid gloves while she was saying, and the cool fountains. CHAPTER VIII. The Queen\'s.\"}', 2, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(29, '{\"en\":\"Placeat optio aliquam sit fugit voluptatem est. Numquam eius dolor dolor error vel.\"}', '{\"en\":\"Duchess asked, with another hedgehog, which seemed to listen, the whole party look so grave that she wanted much to know, but the Rabbit noticed Alice, as she went out, but it is.\' \'I quite forgot.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(30, '{\"en\":\"Dolorum omnis reiciendis vitae eos. Accusamus nisi eligendi aut sed.\"}', '{\"en\":\"Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the air. \'--as far out to sea as you say things are \\\"much of a candle is like after the rest waited in silence.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(31, '{\"en\":\"Quia ut eius omnis voluptatem. Nesciunt modi sapiente illo numquam quam dolores rerum.\"}', '{\"en\":\"It\'s high time you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I haven\'t had a vague sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(32, '{\"en\":\"Minus quod nihil in inventore sunt vero. Nesciunt adipisci neque voluptatem.\"}', '{\"en\":\"I COULD NOT SWIM--\\\" you can\'t help it,\' said the young Crab, a little of her or of anything to say, she simply bowed, and took the hookah out of the shelves as she could not possibly reach it: she.\"}', 9, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(33, '{\"en\":\"Tempora quia tempora et fuga. Odio sed ad ipsa sunt nam. Est modi cupiditate magni dolores ut id.\"}', '{\"en\":\"Alice. \'What IS the use of repeating all that green stuff be?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon said to herself, \'it would be very likely true.) Down, down, down. Would.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(34, '{\"en\":\"Illo fuga exercitationem qui eos cupiditate pariatur. Quis nisi aut adipisci sed.\"}', '{\"en\":\"Hatter went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was very hot, she kept tossing the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\'.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(35, '{\"en\":\"Et et hic qui id. Excepturi officiis ut quasi ut.\"}', '{\"en\":\"I dare say you\'re wondering why I don\'t care which happens!\' She ate a little bird as soon as she listened, or seemed to have finished,\' said the March Hare. \'Then it ought to be treated with.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(36, '{\"en\":\"Harum culpa architecto alias sint ea omnis unde. Sunt et qui quaerat nobis sequi tempora.\"}', '{\"en\":\"Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(37, '{\"en\":\"Sint voluptatum aut ullam impedit ut velit ut. Est beatae fugit placeat nemo voluptates.\"}', '{\"en\":\"Who in the chimney close above her: then, saying to herself, \'Why, they\'re only a mouse that had made the whole party at once and put back into the air, and came flying down upon her: she gave her.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(38, '{\"en\":\"Consequatur rerum nemo minus. Ipsum itaque ducimus fugiat quo in nulla.\"}', '{\"en\":\"I am in the sand with wooden spades, then a great deal too flustered to tell you--all I know THAT well enough; and what does it matter to me whether you\'re a little quicker. \'What a curious.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(39, '{\"en\":\"Molestiae aperiam aut sequi. Voluptatem incidunt vel doloribus expedita blanditiis dolores enim in.\"}', '{\"en\":\"I\'ve fallen by this time, sat down in a low, trembling voice. \'There\'s more evidence to come down the bottle, she found herself in the middle, wondering how she would keep, through all her wonderful.\"}', 12, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(40, '{\"en\":\"Aut vero ducimus dolor. Non veniam quibusdam ut autem. Cumque animi dolorum qui sed sint voluptas.\"}', '{\"en\":\"Alice began to get through was more hopeless than ever: she sat on, with closed eyes, and half believed herself in Wonderland, though she felt a very interesting dance to watch,\' said Alice, in a.\"}', 9, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(41, '{\"en\":\"Dolorum ab incidunt aspernatur nobis totam sit. Ut qui ut sunt. Quia non neque voluptate aut qui.\"}', '{\"en\":\"FIT you,\' said Alice, who was peeping anxiously into its mouth and began to tremble. Alice looked at her own courage. \'It\'s no business of MINE.\' The Queen turned angrily away from him, and said.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(42, '{\"en\":\"Animi amet aspernatur fuga atque et sint. Et quibusdam autem rem nihil laborum id qui.\"}', '{\"en\":\"I vote the young Crab, a little snappishly. \'You\'re enough to get in?\' \'There might be some sense in your pocket?\' he went on, turning to the porpoise, \\\"Keep back, please: we don\'t want to see.\"}', 17, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(43, '{\"en\":\"Maxime quas a non id fugiat sapiente. Aut harum amet quisquam. Animi voluptate ex magni est.\"}', '{\"en\":\"I can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all made a rush at Alice for some time busily writing in his sleep.\"}', 3, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(44, '{\"en\":\"Sit maiores optio vitae rerum. Saepe et at ea cum vel. Doloremque error eos est voluptatem.\"}', '{\"en\":\"MARMALADE\', but to open it; but, as the jury wrote it down into a large dish of tarts upon it: they looked so grave and anxious.) Alice could see, as they came nearer, Alice could see, when she.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(45, '{\"en\":\"Sint sed magni dignissimos in. Asperiores nulla numquam voluptate aut doloribus est.\"}', '{\"en\":\"I\'ve offended it again!\' For the Mouse was bristling all over, and she tried hard to whistle to it; but she could not even get her head was so small as this is May it won\'t be raving mad after all!.\"}', 1, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(46, '{\"en\":\"Voluptas cupiditate rerum corporis ea. Repellat dolor perferendis ex ut.\"}', '{\"en\":\"Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very readily: \'but that\'s because it stays the same thing a bit!\' said the.\"}', 16, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(47, '{\"en\":\"Sunt qui facere neque ut. Ut et est aliquam velit qui. Totam eos est harum magni quae quam nisi.\"}', '{\"en\":\"Alice remarked. \'Right, as usual,\' said the Gryphon. \'Then, you know,\' said the Hatter; \'so I should think very likely it can be,\' said the Caterpillar. Alice said to the Queen. \'Well, I never was.\"}', 3, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(48, '{\"en\":\"Porro in earum dolorum. Aut sunt enim repellat dolor.\"}', '{\"en\":\"Gryphon hastily. \'Go on with the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the way of speaking to it,\' she thought, \'till its ears have come, or at any rate I\'ll never go.\"}', 16, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(49, '{\"en\":\"Incidunt sed in eum. Quia magni cupiditate enim sed ratione. Quia eligendi dolores fuga nihil et.\"}', '{\"en\":\"Hatter. \'Nor I,\' said the Gryphon, \'she wants for to know your history, she do.\' \'I\'ll tell it her,\' said the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(50, '{\"en\":\"Totam eum et nam eum ipsa asperiores. Consequatur consequatur quasi consequuntur ut quia.\"}', '{\"en\":\"Tortoise because he was in the distance would take the place of the room again, no wonder she felt sure it would feel very queer indeed:-- \'\'Tis the voice of the gloves, and was gone across to the.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `e_provider` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `quantity` smallint(6) DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_status_id` int(10) UNSIGNED DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `coupon` longtext COLLATE utf8mb4_unicode_ci,
  `taxes` longtext COLLATE utf8mb4_unicode_ci,
  `booking_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci,
  `cancel` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_user_id_foreign` (`user_id`),
  KEY `bookings_booking_status_id_foreign` (`booking_status_id`),
  KEY `bookings_payment_id_foreign` (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

DROP TABLE IF EXISTS `booking_statuses`;
CREATE TABLE IF NOT EXISTS `booking_statuses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` longtext COLLATE utf8mb4_unicode_ci,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Received', 1, '2021-01-25 13:25:46', '2021-01-29 11:56:35'),
(2, 'In Progress', 40, '2021-01-25 13:26:02', '2021-02-16 15:56:52'),
(3, 'On the Way', 20, '2021-01-28 01:47:23', '2021-02-16 06:10:13'),
(4, 'Accepted', 10, '2021-02-16 06:09:29', '2021-02-16 06:10:06'),
(5, 'Ready', 30, '2021-02-16 06:11:50', '2021-02-16 15:56:42'),
(6, 'Done', 50, '2021-02-16 15:57:02', '2021-02-16 15:57:02'),
(7, 'Failed', 60, '2021-02-16 15:58:36', '2021-02-16 15:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `color` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `description`, `order`, `featured`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Car Services', '#ff9f43', '<p>Categories for all cars services</p>', 1, 1, NULL, '2021-01-19 11:01:35', '2021-01-31 08:19:56'),
(2, 'Medical Services', '#0abde3', '<p>Categories for all Medical Services<br></p>', 2, 1, NULL, '2021-01-19 12:05:00', '2021-01-31 07:35:11'),
(3, 'Laundry Service', '#ee5253', '<p>Category for all Laundry Service</p>', 3, 1, NULL, '2021-01-31 07:37:04', '2021-02-01 18:33:10'),
(4, 'Beauty & Hair Cuts', '#10ac84', '<p>Category for Hair Cuts and Barber</p>', 4, 0, NULL, '2021-01-31 07:38:37', '2021-02-23 08:37:09'),
(5, 'Washing & Cleaning', '#5f27cd', '<p>Category for&nbsp;Washing &amp; Cleaning&nbsp;</p>', 5, 0, NULL, '2021-01-31 07:42:02', '2021-01-31 07:42:02'),
(6, 'Media & Photography', '#ff9f43', '<p>Category for Media & Photography</p>', 6, 0, NULL, '2021-01-31 07:43:20', '2021-01-31 08:55:51'),
(7, 'Sewer Cleaning', '#5f27cd', '<p>Category for Sewer Cleaning<br></p>', 1, 0, 5, '2021-01-31 08:46:15', '2021-01-31 08:46:30'),
(8, 'Carpet Cleaning', '#5f27cd', '<p>Category for Carpet Cleaning<br></p>', 2, 0, 5, '2021-01-31 08:47:23', '2021-01-31 08:47:23'),
(9, 'Wheel Repair', '#5f27cd', '<p>Category for Wheel Repair<br></p>', 1, 0, 1, '2021-01-31 08:49:40', '2021-01-31 08:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `symbol` longtext COLLATE utf8mb4_unicode_ci,
  `code` longtext COLLATE utf8mb4_unicode_ci,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2020-10-22 09:50:48', '2020-10-22 09:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2020-10-22 09:51:39', '2020-10-22 09:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2020-10-22 09:52:50', '2020-10-22 09:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2020-10-22 09:53:22', '2020-10-22 09:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2020-10-22 09:54:00', '2020-10-22 09:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2020-10-22 09:55:51', '2020-10-22 09:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2020-10-22 09:56:26', '2020-10-22 09:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 15:43:58', '2019-09-06 15:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 15:49:22', '2019-09-06 15:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
CREATE TABLE IF NOT EXISTS `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(30, 'Explicabo. Eum provi.&nbsp;', 'Explicabo. Eum provi.&nbsp;', 5, 'App\\Models\\User', 2, '2019-09-06 15:52:30', '2021-02-02 05:32:57'),
(31, 'Modi est libero qui', 'Modi est libero qui', 6, 'App\\Models\\User', 2, '2019-09-06 15:52:30', '2021-02-02 05:32:57'),
(33, 'Consequatur error ip.&nbsp;', 'Consequatur error ip.&nbsp;', 5, 'App\\Models\\User', 1, '2019-09-06 15:53:58', '2021-02-02 05:32:01'),
(34, 'Qui vero ratione vel', 'Qui vero ratione vel', 6, 'App\\Models\\User', 1, '2019-09-06 15:53:58', '2021-02-02 05:32:01'),
(36, 'Dolor optio, error e', 'Dolor optio, error e', 5, 'App\\Models\\User', 3, '2019-10-15 11:21:32', '2021-02-02 05:33:23'),
(37, 'Voluptatibus ad ipsu', 'Voluptatibus ad ipsu', 6, 'App\\Models\\User', 3, '2019-10-15 11:21:32', '2021-02-02 05:33:23'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 13:31:46', '2019-10-16 13:31:46'),
(40, 'Sequi molestiae ipsa1', 'Sequi molestiae ipsa1', 6, 'App\\Models\\User', 4, '2019-10-16 13:31:46', '2021-02-21 17:32:10'),
(42, 'Omnis fugiat et cons.', 'Omnis fugiat et cons.', 5, 'App\\Models\\User', 5, '2019-12-15 12:49:44', '2021-02-02 05:29:47'),
(43, 'Consequatur delenit', 'Consequatur delenit', 6, 'App\\Models\\User', 5, '2019-12-15 12:49:44', '2021-02-02 05:29:47'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 11:28:05', '2020-03-29 11:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 11:28:05', '2020-03-29 11:28:05'),
(48, 'Voluptatem. Omnis op.', 'Voluptatem. Omnis op.', 5, 'App\\Models\\User', 7, '2021-01-17 10:13:24', '2021-02-02 05:31:36'),
(49, 'Perspiciatis aut ei', 'Perspiciatis aut ei', 6, 'App\\Models\\User', 7, '2021-01-17 10:13:24', '2021-02-02 05:31:36'),
(51, 'sdfsdf56', 'sdfsdf56', 5, 'App\\Models\\User', 8, '2021-02-10 05:31:12', '2021-02-19 08:09:37'),
(52, 'Adressttt', 'Adressttt', 6, 'App\\Models\\User', 8, '2021-02-10 05:31:12', '2021-02-19 07:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

DROP TABLE IF EXISTS `custom_pages`;
CREATE TABLE IF NOT EXISTS `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<h1>Privacy Policy of SmarterVision</h1>\n<p>SmarterVision operates the SmarterVision website, which provides the SERVICE.</p>\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the smartersvision.com website.</p>\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at smartersvision.com, unless otherwise defined in this Privacy Policy.</p>\n<h2>Information Collection and Use</h2>\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\n<h2>Log Data</h2>\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us which is called Log Data. This Log Data may include information such as your computer\'s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\n<h2>Cookies</h2>\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\'s hard drive.</p>\n<p>Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\n<h2>Service Providers</h2>\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\n<ul>\n<li>To facilitate our Service;</li>\n<li>To provide the Service on our behalf;</li>\n<li>To perform Service-related services; or</li>\n<li>To assist us in analyzing how our Service is used.</li>\n</ul>\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<h2>Security</h2>\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<h2>Links to Other Sites</h2>\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<h2>Children\'s Privacy</h2>\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<h2>Changes to This Privacy Policy</h2>\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\n<h2>Contact Us</h2>\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>', 1, '2021-02-24 05:53:21', '2021-02-24 07:19:19'),
(2, 'Terms & Conditions', '<h2>Terms &amp; Conditions</h2><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.</p><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.<br></p>', 1, '2021-02-24 07:20:06', '2021-02-24 07:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

DROP TABLE IF EXISTS `discountables`;
CREATE TABLE IF NOT EXISTS `discountables` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discountables_coupon_id_foreign` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
CREATE TABLE IF NOT EXISTS `earnings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `total_bookings` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `e_provider_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `taxes` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `earnings_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experiences_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Rem illum repellendus ex deserunt. Veniam tenetur aut voluptatum velit sit veniam eum.\"}', '{\"en\":\"Here the Dormouse began in a whisper, half afraid that it is!\' As she said to the tarts on the twelfth?\' Alice went on in these words: \'Yes, we went to work throwing everything within her reach at.\"}', 2, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(2, '{\"en\":\"Nemo odio dolor sint qui accusantium consequatur quos totam. Repellendus rerum quibusdam asperiores voluptate ipsum ullam.\"}', '{\"en\":\"Cat. \'I don\'t know what you were INSIDE, you might do very well as she had brought herself down to them, they were nowhere to be no chance of her head pressing against the ceiling, and had just.\"}', 2, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(3, '{\"en\":\"Dolorum qui non repellendus quam non. Suscipit consequatur ipsa quis.\"}', '{\"en\":\"The miserable Hatter dropped his teacup and bread-and-butter, and then turned to the other, and growing sometimes taller and sometimes she scolded herself so severely as to prevent its undoing.\"}', 12, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(4, '{\"en\":\"Sequi iste sit ut ut. Sit porro voluptas sapiente eaque. Assumenda suscipit ab commodi sunt.\"}', '{\"en\":\"Queen merely remarking that a moment\'s pause. The only things in the distance would take the roof off.\' After a minute or two the Caterpillar contemptuously. \'Who are YOU?\' said the March Hare. The.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(5, '{\"en\":\"Quia et aspernatur non voluptate. Debitis voluptas praesentium cumque. Voluptates excepturi est autem est.\"}', '{\"en\":\"I can creep under the hedge. In another moment down went Alice after it, never once considering how in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\' asked the Gryphon, \'you first.\"}', 17, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(6, '{\"en\":\"Dolores qui aliquam neque culpa hic autem eum. Praesentium ipsum doloremque ut at pariatur sit. Earum qui iste saepe.\"}', '{\"en\":\"Mock Turtle. \'And how do you know about it, you know--\' She had not long to doubt, for the Duchess to play with, and oh! ever so many out-of-the-way things to happen, that it felt quite relieved to.\"}', 1, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(7, '{\"en\":\"Perspiciatis corporis in tempora rerum asperiores aut nulla. Voluptatum tempora natus consequatur similique vel molestiae.\"}', '{\"en\":\"Canary called out \'The race is over!\' and they all crowded round her head. Still she went on just as well go in at all?\' said the Hatter: \'as the things between whiles.\' \'Then you should say what.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(8, '{\"en\":\"Ratione est eveniet alias. Qui dolor omnis minima non. Vero iusto non esse laborum excepturi.\"}', '{\"en\":\"Dormouse again, so she went on. \'We had the best thing to nurse--and she\'s such a nice soft thing to eat her up in a very difficult game indeed. The players all played at once and put it in time,\'.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(9, '{\"en\":\"Quod ullam voluptatem excepturi tempore iusto. Delectus totam qui et voluptas mollitia sit. Culpa sint iusto perspiciatis ut.\"}', '{\"en\":\"The Gryphon sat up and went to work very carefully, with one of the trial.\' \'Stupid things!\' Alice began to repeat it, but her head to feel a little startled when she looked up eagerly, half hoping.\"}', 16, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(10, '{\"en\":\"Sed libero nulla sint quae non. Delectus ipsum magni et eveniet. Ea tempore dolorem vero aut sed consequatur rem.\"}', '{\"en\":\"And she began very cautiously: \'But I don\'t put my arm round your waist,\' the Duchess to play croquet.\' Then they all crowded round it, panting, and asking, \'But who is Dinah, if I was, I shouldn\'t.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(11, '{\"en\":\"Esse aut ad qui perferendis sed. Quia recusandae perferendis maiores accusantium. Quod nobis a dicta minus ab at ad atque.\"}', '{\"en\":\"Dinah, tell me who YOU are, first.\' \'Why?\' said the Duchess: \'flamingoes and mustard both bite. And the moral of THAT is--\\\"Take care of themselves.\\\"\' \'How fond she is of finding morals in things!\'.\"}', 13, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(12, '{\"en\":\"Dicta odio ea qui repellat ab. Rerum saepe velit sint non cumque quis est velit.\"}', '{\"en\":\"CHAPTER V. Advice from a bottle marked \'poison,\' so Alice ventured to say. \'What is it?\' Alice panted as she listened, or seemed to follow, except a tiny golden key, and Alice\'s first thought was.\"}', 9, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(13, '{\"en\":\"Ut neque quae et saepe. Officiis maiores nobis nihil delectus aliquid. Eligendi soluta est eligendi voluptates accusantium.\"}', '{\"en\":\"THESE?\' said the Hatter: \'let\'s all move one place on.\' He moved on as he came, \'Oh! the Duchess, it had VERY long claws and a large flower-pot that stood near. The three soldiers wandered about in.\"}', 3, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(14, '{\"en\":\"Qui labore facere sed praesentium. Aperiam nisi nulla sed eaque id. Sunt accusamus ipsam laboriosam sapiente distinctio.\"}', '{\"en\":\"Mock Turtle replied, counting off the fire, and at last turned sulky, and would only say, \'I am older than I am very tired of being upset, and their curls got entangled together. Alice laughed so.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(15, '{\"en\":\"Quia sed natus rem ut eos molestiae sed nihil. Rerum saepe nobis nobis. Quasi earum ullam et suscipit.\"}', '{\"en\":\"I will just explain to you how the game was going a journey, I should have croqueted the Queen\'s voice in the sand with wooden spades, then a great deal to ME,\' said the Rabbit\'s voice along--\'Catch.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(16, '{\"en\":\"Quo id doloribus eos sit possimus consectetur. Exercitationem delectus voluptate tempore sequi eveniet.\"}', '{\"en\":\"White Rabbit. She was a general chorus of voices asked. \'Why, SHE, of course,\' the Dodo managed it.) First it marked out a new idea to Alice, that she ought to be two people! Why, there\'s hardly.\"}', 11, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(17, '{\"en\":\"Quidem vel repellat ut est eaque dicta qui. Quas voluptatibus eos nobis qui ea. Magnam sed ad hic incidunt fuga repellat.\"}', '{\"en\":\"For some minutes the whole party look so grave that she began thinking over all she could for sneezing. There was nothing else to do, and perhaps as this before, never! And I declare it\'s too bad.\"}', 7, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(18, '{\"en\":\"Necessitatibus in quasi nesciunt eius. Sed voluptas quasi debitis.\"}', '{\"en\":\"Alice felt a very difficult question. However, at last she spread out her hand again, and said, \'It was a dispute going on rather better now,\' she said, by way of expressing yourself.\' The baby.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(19, '{\"en\":\"Reprehenderit facilis a fugiat hic. Provident nostrum nulla et saepe. Qui omnis debitis sed.\"}', '{\"en\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a pity it wouldn\'t stay!\' sighed the Hatter. He came in sight of the house till she shook the house, and the small ones choked and had no.\"}', 16, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(20, '{\"en\":\"Et voluptates ut qui eos veniam et. Fugit quis est et. Ut quibusdam aspernatur consequuntur cum ab.\"}', '{\"en\":\"EVER happen in a court of justice before, but she did not like to hear his history. I must be collected at once took up the other, and making quite a conversation of it at last, and they sat down.\"}', 13, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(21, '{\"en\":\"Et expedita quas alias a. Ad cupiditate sequi et deserunt dolore molestias. Mollitia ut saepe eos facere.\"}', '{\"en\":\"Alice went on growing, and growing, and she soon found an opportunity of showing off her unfortunate guests to execution--once more the shriek of the lefthand bit. * * * * * * * CHAPTER II. The Pool.\"}', 13, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(22, '{\"en\":\"Architecto corrupti sunt et quidem perferendis qui. Suscipit expedita laborum sint architecto itaque voluptates.\"}', '{\"en\":\"Queen, in a moment. \'Let\'s go on with the bread-and-butter getting so thin--and the twinkling of the officers: but the Dormouse went on, \'I must be the right word) \'--but I shall fall right THROUGH.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(23, '{\"en\":\"Numquam mollitia aliquam quas ea quia. Excepturi placeat aut iusto et.\"}', '{\"en\":\"Alice caught the flamingo and brought it back, the fight was over, and she sat on, with closed eyes, and half believed herself in a very fine day!\' said a whiting to a day-school, too,\' said Alice.\"}', 18, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(24, '{\"en\":\"Nihil nihil sed dolorem dolores. Ratione laboriosam maxime consequatur quia. Cupiditate explicabo quisquam nihil eius.\"}', '{\"en\":\"Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon went on, \'that they\'d let Dinah stop in the last time she had plenty of time as she spoke; \'either you or your head must be growing small again.\'.\"}', 10, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(25, '{\"en\":\"Dolor impedit animi error. Quibusdam quod quo error. Rerum sunt voluptates beatae unde suscipit ab.\"}', '{\"en\":\"Hatter and the other side, the puppy made another rush at Alice for protection. \'You shan\'t be able! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(26, '{\"en\":\"Debitis aspernatur quia et aut aut quaerat similique. Architecto sint ut quasi et enim quis minima possimus.\"}', '{\"en\":\"Mock Turtle sighed deeply, and began, in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Duchess; \'and the moral of that is--\\\"Be what you mean,\' said Alice. \'And be quick about it,\'.\"}', 11, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(27, '{\"en\":\"Quo et quia eos in. Corporis maiores fugit totam cum eum cum natus. Facilis atque aut non rerum iure quae iure ut.\"}', '{\"en\":\"King. \'When did you manage to do it?\' \'In my youth,\' Father William replied to his son, \'I feared it might end, you know,\' Alice gently remarked; \'they\'d have been changed for Mabel! I\'ll try if I.\"}', 17, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(28, '{\"en\":\"Tempore sit non maxime voluptas. Magnam aperiam et quo ab.\"}', '{\"en\":\"The Frog-Footman repeated, in the sea. The master was an old crab, HE was.\' \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what a Mock Turtle yet?\' \'No,\' said the Mouse, getting.\"}', 13, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(29, '{\"en\":\"Ad ut nesciunt consectetur ut perferendis. Animi consequatur est illo voluptas quasi. Neque eum dignissimos ab.\"}', '{\"en\":\"Queen was to find any. And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall remember it in time,\' said the Queen, who were all in bed!\'.\"}', 14, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(30, '{\"en\":\"Ut aliquam ut qui est dolorum. Est fugit consectetur tempore doloremque culpa. Saepe dicta atque itaque et.\"}', '{\"en\":\"Alice in a confused way, \'Prizes! Prizes!\' Alice had been for some time after the candle is like after the candle is blown out, for she was now the right size, that it might be hungry, in which you.\"}', 2, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(31, '{\"en\":\"Accusamus accusantium numquam dolores hic. Fugiat ipsam mollitia architecto. Et perspiciatis iste nemo veritatis.\"}', '{\"en\":\"Majesty,\' said Alice to herself, \'it would be worth the trouble of getting up and went on so long since she had not noticed before, and he hurried off. Alice thought this a very truthful child; \'but.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(32, '{\"en\":\"Optio eum sed doloremque. Sunt quia quidem blanditiis ad ut et. Assumenda ut fugit a quia eum modi temporibus.\"}', '{\"en\":\"As soon as it was as long as it can\'t possibly make me smaller, I can kick a little!\' She drew her foot slipped, and in his sleep, \'that \\\"I breathe when I breathe\\\"!\' \'It IS a long and a scroll of.\"}', 2, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(33, '{\"en\":\"Quas quas praesentium quaerat. Mollitia rem et a ea nulla. Eligendi aut animi facilis qui.\"}', '{\"en\":\"New Zealand or Australia?\' (and she tried the effect of lying down with her head!\' the Queen was to twist it up into the open air. \'IF I don\'t like it, yer honour, at all, at all!\' \'Do as I was.\"}', 2, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(34, '{\"en\":\"Eos laboriosam similique et ut non unde vel. Quas ipsum sequi quisquam totam qui eligendi. Ipsa aut vel eos eum.\"}', '{\"en\":\"Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes filled with tears again as quickly as she fell past it. \'Well!\' thought Alice to herself. At this moment Alice appeared, she was.\"}', 16, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(35, '{\"en\":\"Corrupti rerum natus ex in et minima. Odit alias aliquam maxime vitae.\"}', '{\"en\":\"Alice panted as she went hunting about, and called out, \'First witness!\' The first question of course was, how to begin.\' For, you see, Miss, this here ought to tell him. \'A nice muddle their.\"}', 8, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(36, '{\"en\":\"Ut ea voluptates et dicta in et. Perferendis accusamus iste voluptatum non assumenda et. Laudantium sed qui eos et non.\"}', '{\"en\":\"Hatter: \'but you could draw treacle out of sight: then it watched the White Rabbit put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an.\"}', 18, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(37, '{\"en\":\"Sint autem nesciunt et optio dignissimos modi. Officiis accusantium tenetur ut eveniet quia. Ut iusto dolor in.\"}', '{\"en\":\"I almost think I may as well wait, as she could do to hold it. As soon as she spoke. (The unfortunate little Bill had left off quarrelling with the Mouse heard this, it turned a back-somersault in.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(38, '{\"en\":\"Possimus ut et maxime iusto qui mollitia. Reprehenderit non enim quaerat qui magnam sint. Rerum est aut voluptatibus illum.\"}', '{\"en\":\"This sounded promising, certainly: Alice turned and came flying down upon her: she gave a little bit, and said nothing. \'This here young lady,\' said the youth, \'one would hardly suppose That your.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(39, '{\"en\":\"Repudiandae et in similique quos. Quia nihil voluptatibus magni est ab nisi.\"}', '{\"en\":\"Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther were sharing a pie--\' [later editions continued as follows The.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(40, '{\"en\":\"Delectus minima et quaerat sint ut quo. Atque autem est sint laborum voluptatem.\"}', '{\"en\":\"Hatter went on for some way, and then she walked up towards it rather timidly, saying to herself how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\\\"\' said the Mouse, turning to.\"}', 11, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(41, '{\"en\":\"Tempora repellat autem ut quia incidunt. Consectetur est sed modi dolor unde ut voluptas. Perferendis sit beatae quam porro.\"}', '{\"en\":\"I sleep\\\" is the same tone, exactly as if he wasn\'t going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter said, turning to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' While.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(42, '{\"en\":\"Ducimus nemo quis dignissimos quis. Facilis veritatis libero natus aut. Veniam aliquam ut est ut quasi est.\"}', '{\"en\":\"White Rabbit, who said in an encouraging opening for a minute or two sobs choked his voice. \'Same as if a dish or kettle had been found and handed back to yesterday, because I was a large cauldron.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(43, '{\"en\":\"Qui et sed aut nobis sed. Laborum nihil non quia omnis. Dolores doloremque optio et est.\"}', '{\"en\":\"That he met in the sea, some children digging in the world! Oh, my dear paws! Oh my dear paws! Oh my dear Dinah! I wonder if I\'ve kept her waiting!\' Alice felt that this could not swim. He sent them.\"}', 6, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(44, '{\"en\":\"Dolores sed inventore sit vero minus et. Deleniti animi iure est sed sint nemo molestiae.\"}', '{\"en\":\"I know?\' said Alice, looking down at her feet, they seemed to be two people. \'But it\'s no use their putting their heads downward! The Antipathies, I think--\' (she was so full of tears, but said.\"}', 12, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(45, '{\"en\":\"Similique vel eaque non ut enim aut. Quia dolor quod eaque eos. Id dolorem culpa eum itaque veritatis laborum.\"}', '{\"en\":\"TO LEAVE THE COURT.\' Everybody looked at it uneasily, shaking it every now and then dipped suddenly down, so suddenly that Alice said; but was dreadfully puzzled by the officers of the doors of the.\"}', 9, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(46, '{\"en\":\"Et provident natus deserunt sit non. Aut quibusdam ut qui deleniti assumenda. Et et ad ad et soluta.\"}', '{\"en\":\"Alice. \'Why, you don\'t know much,\' said Alice; \'but when you throw them, and the beak-- Pray how did you do lessons?\' said Alice, in a hot tureen! Who for such dainties would not stoop? Soup of the.\"}', 15, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(47, '{\"en\":\"Iste nemo necessitatibus pariatur laudantium. A error quos ad.\"}', '{\"en\":\"CHAPTER V. Advice from a Caterpillar The Caterpillar was the Cat remarked. \'Don\'t be impertinent,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\'.\"}', 5, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(48, '{\"en\":\"Ducimus soluta rerum fuga ut. Veniam modi recusandae non id facere nisi. Et eos harum consequatur ullam sit repellat.\"}', '{\"en\":\"YOU like cats if you please! \\\"William the Conqueror, whose cause was favoured by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions.\"}', 10, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(49, '{\"en\":\"Quis aut voluptas ut quam aperiam. Quidem dolores dolor enim. Expedita adipisci nemo repellat omnis quos provident.\"}', '{\"en\":\"Duchess sang the second time round, she came upon a low voice, \'Your Majesty must cross-examine the next thing was snorting like a snout than a real nose; also its eyes were nearly out of this sort.\"}', 4, '2022-11-03 05:39:01', '2022-11-03 05:39:01'),
(50, '{\"en\":\"Dolorem id at exercitationem iste et. Dolorem voluptatem at commodi fugiat a. Nemo beatae ut quisquam.\"}', '{\"en\":\"I do,\' said Alice sadly. \'Hand it over afterwards, it occurred to her feet, they seemed to be told so. \'It\'s really dreadful,\' she muttered to herself, being rather proud of it: \'No room! No room!\'.\"}', 11, '2022-11-03 05:39:01', '2022-11-03 05:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `e_providers`
--

DROP TABLE IF EXISTS `e_providers`;
CREATE TABLE IF NOT EXISTS `e_providers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_type_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability_range` double(9,2) DEFAULT '0.00',
  `available` tinyint(1) DEFAULT '1',
  `featured` tinyint(1) DEFAULT '0',
  `accepted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_providers_e_provider_type_id_foreign` (`e_provider_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_providers`
--

INSERT INTO `e_providers` (`id`, `name`, `e_provider_type_id`, `description`, `phone_number`, `mobile_number`, `availability_range`, `available`, `featured`, `accepted`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Dentists Koelpin Group\"}', 3, '{\"en\":\"Ipsam cumque eveniet labore mollitia impedit tempora non. Libero cupiditate vel placeat eum eum ex quia. Recusandae molestiae consectetur sed enim aut laudantium.\"}', '(973) 498-7752', '(820) 418-3790', 12014.15, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, '{\"en\":\"Painting Ruecker, Yost and Abshire\"}', 3, '{\"en\":\"Praesentium quibusdam qui voluptatum modi nesciunt rerum omnis. Inventore ut ipsa voluptate ad et qui atque laborum. Occaecati praesentium non voluptatem dolores omnis.\"}', '(341) 316-2090', '1-206-778-9906', 13078.33, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, '{\"en\":\"Security Heathcote, Aufderhar and Rohan\"}', 3, '{\"en\":\"Et adipisci ab atque accusamus itaque enim sit. Maxime sint optio voluptas vel nemo at. Error ducimus a inventore perspiciatis velit et.\"}', '212.581.9191', '1-407-451-1175', 7739.75, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, '{\"en\":\"Masonry Kulas Group\"}', 2, '{\"en\":\"Corrupti est repudiandae vel reprehenderit numquam. Debitis itaque culpa aliquid voluptatem fugiat quo voluptatibus. Qui minima sed vel quam nemo.\"}', '+1.920.484.9388', '+1-361-319-8930', 11882.05, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, '{\"en\":\"Gardner Construction Satterfield, Quitzon and Maggio\"}', 2, '{\"en\":\"Molestiae dolore nisi voluptatibus qui. Suscipit id ipsum qui aut unde est. Omnis quia est dolorum atque.\"}', '+1 (951) 836-2382', '641.874.0381', 8143.21, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, '{\"en\":\"Masonry Stiedemann Inc\"}', 3, '{\"en\":\"Nihil id et facilis sed autem deleniti. Dolorem dolorum quas mollitia magni sunt quia. Non voluptas ab dolore ut quis consequatur.\"}', '1-857-652-4595', '410.478.5770', 11134.96, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, '{\"en\":\"Glass Senger, Monahan and Prohaska\"}', 2, '{\"en\":\"Recusandae vel iure perferendis sed ex. Consectetur itaque vero iusto totam. Dolorum vel vel ab laboriosam. Et soluta et facilis sunt qui qui.\"}', '915.370.2681', '(772) 692-6277', 14077.40, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, '{\"en\":\"Architect Daugherty LLC\"}', 2, '{\"en\":\"In pariatur asperiores cupiditate omnis ipsum aut aut. Dolorum voluptatum quasi ab iste enim ea corrupti. Molestias rerum exercitationem id saepe.\"}', '+1.248.544.3073', '+1-484-974-8894', 7822.10, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, '{\"en\":\"House Medhurst, Hand and White\"}', 2, '{\"en\":\"Atque maxime illum officiis id eveniet enim. Nihil qui rerum vel facere quam quae. Corrupti quod repellendus possimus velit.\"}', '1-346-975-9233', '1-443-524-8474', 8415.51, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, '{\"en\":\"Glass Stanton PLC\"}', 2, '{\"en\":\"Ut non libero voluptatem iure. Ut sunt voluptatem facere maiores porro voluptates dolorem temporibus. Vitae repudiandae qui autem et eaque voluptates nihil.\"}', '+17402704253', '+1-283-544-1694', 14275.25, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, '{\"en\":\"Gardner Construction Donnelly, Mueller and Stroman\"}', 3, '{\"en\":\"A fuga consectetur velit suscipit optio. Beatae facilis qui libero. Consequuntur quae mollitia distinctio voluptatibus voluptates iusto. Excepturi voluptatem velit eius.\"}', '689.405.9041', '(574) 321-7161', 6524.70, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, '{\"en\":\"Sewer Cleaning Franecki, Crona and Dare\"}', 3, '{\"en\":\"Dolores aut eos quasi illum. Iure quo et consequatur ea. Nihil quas voluptatibus assumenda quia officia animi.\"}', '+19408636052', '364-816-8014', 12321.24, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, '{\"en\":\"Glass Waelchi Ltd\"}', 3, '{\"en\":\"Assumenda et totam ex dolorum accusantium impedit. Laudantium eius dolor fugiat assumenda distinctio quia et. Eligendi veniam illum officiis neque qui sint aut. Qui expedita magnam qui tenetur saepe.\"}', '912.978.8765', '+1 (212) 517-3112', 8981.80, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, '{\"en\":\"Masonry Adams and Sons\"}', 2, '{\"en\":\"Aut sit cumque quisquam minima perspiciatis sint repellat consequuntur. Necessitatibus saepe porro omnis cupiditate saepe eos. Magni adipisci qui incidunt ut. Minus magni nihil quidem fuga nobis.\"}', '1-757-838-8015', '+15592749368', 14359.88, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, '{\"en\":\"Security Goodwin, Stanton and Quigley\"}', 2, '{\"en\":\"Voluptas repellat veritatis quis consequatur rerum ea. Consequuntur eos vel iste eius quo modi. Id rerum assumenda quo quis pariatur.\"}', '603.430.6532', '1-262-218-6869', 8984.77, 1, 1, 0, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, '{\"en\":\"Glass Rosenbaum PLC\"}', 2, '{\"en\":\"Ducimus ducimus qui recusandae. Ut explicabo exercitationem sint illo. Id accusantium esse aut voluptas et vel et. Quae culpa nihil saepe earum aspernatur iste repudiandae.\"}', '351.901.8317', '(757) 260-5616', 9293.40, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, '{\"en\":\"Security O\'Kon, Veum and Boyer\"}', 2, '{\"en\":\"Omnis nobis odio fuga laudantium. Ut ipsum libero nostrum aliquid harum. Ut aut ducimus vel dolorem inventore earum. Hic eum impedit ab est porro illum ullam vel.\"}', '+1 (818) 995-3301', '458.490.4546', 7191.16, 1, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, '{\"en\":\"Roofing Mertz Ltd\"}', 2, '{\"en\":\"Ut omnis adipisci atque quod ad rem veniam. Dolorum voluptatibus repellendus incidunt dolore illum neque. Earum odio consequuntur et quia. Facilis et ut recusandae eius repudiandae alias.\"}', '(832) 818-2268', '(513) 557-1528', 10037.48, 1, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_addresses`
--

DROP TABLE IF EXISTS `e_provider_addresses`;
CREATE TABLE IF NOT EXISTS `e_provider_addresses` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`e_provider_id`,`address_id`),
  KEY `e_provider_addresses_address_id_foreign` (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_addresses`
--

INSERT INTO `e_provider_addresses` (`e_provider_id`, `address_id`) VALUES
(1, 9),
(1, 20),
(3, 2),
(3, 19),
(5, 13),
(6, 3),
(6, 11),
(6, 13),
(7, 5),
(7, 14),
(8, 8),
(9, 3),
(9, 12),
(10, 7),
(11, 7),
(11, 12),
(11, 17),
(12, 4),
(12, 9),
(14, 1),
(14, 2),
(14, 18),
(14, 19),
(15, 18),
(16, 2),
(16, 10),
(16, 15),
(17, 2),
(17, 17),
(18, 14);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_payouts`
--

DROP TABLE IF EXISTS `e_provider_payouts`;
CREATE TABLE IF NOT EXISTS `e_provider_payouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_provider_payouts_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_taxes`
--

DROP TABLE IF EXISTS `e_provider_taxes`;
CREATE TABLE IF NOT EXISTS `e_provider_taxes` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`e_provider_id`,`tax_id`),
  KEY `e_provider_taxes_tax_id_foreign` (`tax_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_types`
--

DROP TABLE IF EXISTS `e_provider_types`;
CREATE TABLE IF NOT EXISTS `e_provider_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `commission` double(5,2) NOT NULL DEFAULT '0.00',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_types`
--

INSERT INTO `e_provider_types` (`id`, `name`, `commission`, `disabled`, `created_at`, `updated_at`) VALUES
(2, 'Company', 75.00, 0, '2021-01-13 12:05:35', '2021-02-01 15:22:19'),
(3, 'Freelancer', 50.00, 0, '2021-01-17 13:27:18', '2021-02-24 12:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_users`
--

DROP TABLE IF EXISTS `e_provider_users`;
CREATE TABLE IF NOT EXISTS `e_provider_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`e_provider_id`),
  KEY `e_provider_users_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_users`
--

INSERT INTO `e_provider_users` (`user_id`, `e_provider_id`) VALUES
(2, 1),
(2, 4),
(2, 6),
(2, 7),
(2, 12),
(2, 15),
(4, 2),
(4, 3),
(4, 14),
(4, 16),
(4, 18),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 9),
(6, 10),
(6, 14),
(6, 15),
(6, 17),
(6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `e_services`
--

DROP TABLE IF EXISTS `e_services`;
CREATE TABLE IF NOT EXISTS `e_services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(10,2) DEFAULT '0.00',
  `price_unit` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_unit` longtext COLLATE utf8mb4_unicode_ci,
  `duration` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `enable_booking` tinyint(1) DEFAULT '1',
  `available` tinyint(1) DEFAULT '1',
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_services_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_services`
--

INSERT INTO `e_services` (`id`, `name`, `price`, `discount_price`, `price_unit`, `quantity_unit`, `duration`, `description`, `featured`, `enable_booking`, `available`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Tank Cleaning\"}', 22.47, 13.36, 'fixed', NULL, '2:00', '{\"en\":\"Et est omnis similique. Et explicabo nihil nihil in et debitis praesentium odit. Necessitatibus dolores voluptatum numquam possimus ut.\"}', 0, 1, 1, 10, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, '{\"en\":\"Photography Services\"}', 17.65, 13.67, 'fixed', NULL, '2:00', '{\"en\":\"Nesciunt et doloribus impedit beatae voluptatum ea aut. Exercitationem saepe magnam dolorem maxime laudantium. Sit harum velit et suscipit hic. Dicta aut perferendis atque officia aspernatur quam.\"}', 1, 0, 1, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, '{\"en\":\"Hair Style Service\"}', 27.36, 22.63, 'fixed', NULL, '1:00', '{\"en\":\"Deserunt nemo voluptatibus voluptatem sunt. Dolores est aperiam modi consequatur facilis dolores magni id.\"}', 1, 1, 1, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, '{\"en\":\"Thai Massage Services\"}', 38.37, 0.00, 'hourly', NULL, '2:00', '{\"en\":\"Nemo quisquam ratione maiores dolor et. Asperiores eum voluptatem voluptatum ut laudantium molestiae error.\"}', 1, 1, 1, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, '{\"en\":\"Architect Service\"}', 32.62, 27.53, 'hourly', NULL, '2:00', '{\"en\":\"Qui sed consequuntur quia nam. Nemo sed praesentium qui voluptatem cupiditate.\"}', 0, 0, 1, 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, '{\"en\":\"Post Party Cleaning\"}', 29.28, 0.00, 'fixed', NULL, '2:00', '{\"en\":\"Sequi qui enim ea vitae labore aut quo. Quia at cum quae. Dolorum vel modi architecto magni quibusdam. Quasi amet ut neque.\"}', 0, 0, 0, 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, '{\"en\":\"Post Party Cleaning\"}', 20.43, 0.00, 'hourly', NULL, '2:00', '{\"en\":\"Consequatur earum quos veniam est. Consequatur provident totam placeat rerum rem. Quasi nulla eaque quod a adipisci.\"}', 0, 1, 1, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, '{\"en\":\"Thai Massage Services\"}', 48.84, 39.29, 'hourly', NULL, '2:00', '{\"en\":\"Occaecati numquam mollitia natus distinctio voluptas. Mollitia tenetur ut quibusdam velit quisquam. Cum odit voluptatem vel earum temporibus adipisci repellat mollitia.\"}', 0, 0, 1, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, '{\"en\":\"Screens - New and Repair\"}', 33.77, 24.28, 'fixed', NULL, '2:00', '{\"en\":\"Dicta ipsam ratione harum excepturi accusamus quasi magni. Corrupti veniam labore facere ipsam similique eos est adipisci. Ea quos sed autem ab.\"}', 1, 1, 0, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, '{\"en\":\"Wedding Photos\"}', 29.98, 0.00, 'hourly', NULL, '3:00', '{\"en\":\"Aut qui qui et. Et dolores sed aut totam quod velit.\"}', 1, 1, 0, 15, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, '{\"en\":\"Makeup & Beauty Services\"}', 41.95, 0.00, 'hourly', NULL, '3:00', '{\"en\":\"Perspiciatis eveniet perspiciatis libero iste maiores. Natus et numquam inventore delectus. Dolores aut exercitationem voluptatem consequatur.\"}', 1, 1, 1, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, '{\"en\":\"Architect Service\"}', 19.73, 0.00, 'fixed', NULL, '1:00', '{\"en\":\"Eum aspernatur aut in reprehenderit. Harum autem quo error libero maxime earum non.\"}', 1, 1, 1, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, '{\"en\":\"Photography Services\"}', 38.41, 0.00, 'hourly', NULL, '4:00', '{\"en\":\"Esse illo architecto dolores harum. Pariatur quam suscipit eligendi commodi qui ut. Tenetur sit quam debitis. Aliquam fugit assumenda iste sunt consequatur repudiandae sint.\"}', 0, 1, 0, 13, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, '{\"en\":\"Post Party Cleaning\"}', 26.19, 0.00, 'hourly', NULL, '5:00', '{\"en\":\"Quis ipsum quia et eaque et blanditiis. Non iusto illum illo aliquid voluptatum incidunt quo. Error molestias voluptas rerum quidem fugit at.\"}', 1, 1, 0, 13, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, '{\"en\":\"Hair Style Service\"}', 48.46, 0.00, 'hourly', NULL, '3:00', '{\"en\":\"Eos ea et non hic eos. Temporibus tempore ullam fuga quis animi nihil. Corporis at ea quas et doloremque adipisci molestias. Ratione deleniti tenetur totam autem odio.\"}', 0, 0, 1, 8, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, '{\"en\":\"Facials Services\"}', 22.53, 15.41, 'hourly', NULL, '5:00', '{\"en\":\"Quo officiis sunt aut et aut nisi omnis. At illum recusandae voluptatem asperiores. Aliquid iste ex excepturi architecto qui quae. Quia hic est voluptas rerum.\"}', 0, 0, 0, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, '{\"en\":\"Massage Services\"}', 25.25, 23.50, 'hourly', NULL, '2:00', '{\"en\":\"Aperiam aliquid ab exercitationem quos. Omnis iusto quod sequi fugiat eligendi dignissimos. Atque ullam optio dolores dicta aliquam. Placeat ut ut dolor neque facilis in ut nulla.\"}', 0, 0, 0, 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, '{\"en\":\"Thai Massage Services\"}', 23.91, 0.00, 'hourly', NULL, '4:00', '{\"en\":\"Facere voluptas similique autem quae suscipit commodi laboriosam id. Est ducimus alias veniam eum nobis quia. Voluptatem nesciunt omnis consequatur quia iusto consectetur.\"}', 0, 0, 1, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(19, '{\"en\":\"Real Estate Agents\"}', 17.70, 0.00, 'fixed', NULL, '4:00', '{\"en\":\"Reprehenderit eos impedit quas et aperiam non porro. Aliquid maxime voluptatem commodi. Amet quo quis aperiam et. Cupiditate dolorem fugit quisquam rem aliquam.\"}', 1, 0, 0, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(20, '{\"en\":\"Real Estate Agents\"}', 44.15, 35.07, 'hourly', NULL, '5:00', '{\"en\":\"Deserunt tempora provident qui aut a rerum. Occaecati eum pariatur qui vero minus magnam non. Error sit provident dolore sunt maiores autem. Facere qui totam voluptates natus.\"}', 1, 0, 1, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(21, '{\"en\":\"Bathtub Refinishing\"}', 19.43, 0.00, 'fixed', NULL, '4:00', '{\"en\":\"Minus dolor animi vitae. Ea voluptatum sapiente quo omnis aspernatur. Neque repellat omnis beatae ad cupiditate fugiat sunt.\"}', 0, 0, 1, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(22, '{\"en\":\"Hair Style Service\"}', 20.44, 17.69, 'fixed', NULL, '3:00', '{\"en\":\"Aliquam sint similique et molestiae quia. Sed temporibus rerum sint omnis et. Sit aut tenetur est nesciunt. Est consequatur dolorem fugit dolores excepturi aliquam rem adipisci.\"}', 1, 1, 1, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(23, '{\"en\":\"Hair Style Service\"}', 37.31, 32.63, 'hourly', NULL, '1:00', '{\"en\":\"Esse ea temporibus quis magni ducimus est non. Nam est recusandae aut explicabo in nostrum rerum. Reiciendis ratione quod vero rem. Quas mollitia optio vel quia.\"}', 0, 0, 1, 14, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(24, '{\"en\":\"Suv Car Washing \"}', 42.90, 38.85, 'fixed', NULL, '2:00', '{\"en\":\"Similique ut voluptatibus in. Ipsam quia quas pariatur voluptas aperiam rerum beatae neque. Delectus facilis autem voluptas eos et.\"}', 1, 0, 0, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(25, '{\"en\":\"Thai Massage Services\"}', 34.83, 0.00, 'fixed', NULL, '1:00', '{\"en\":\"Impedit error illo beatae aut. Omnis possimus deleniti praesentium rem animi dolore. Dolorem et iusto et qui optio et deserunt. Non a et non est soluta id.\"}', 0, 0, 1, 14, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(26, '{\"en\":\"Suv Car Washing \"}', 48.78, 0.00, 'fixed', NULL, '3:00', '{\"en\":\"Quos dolorem a voluptatem dolor numquam debitis blanditiis. Rerum sit quos libero ipsa deserunt labore molestiae. Est magnam molestiae odio. Reprehenderit vero impedit sunt dolores dolorem.\"}', 1, 0, 0, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(27, '{\"en\":\"Doctor at home Service\"}', 38.37, 32.55, 'fixed', NULL, '1:00', '{\"en\":\"Consectetur voluptatem alias sint vero. Recusandae alias quae id nihil. Autem est accusantium perferendis voluptatem dolor. Sed error voluptatem veniam quaerat quis quia rerum natus.\"}', 1, 1, 0, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(28, '{\"en\":\"Screens - New and Repair\"}', 47.23, 38.39, 'fixed', NULL, '3:00', '{\"en\":\"Natus omnis est impedit optio ad. Voluptate earum deserunt animi accusantium. Sed consequatur numquam numquam vitae.\"}', 1, 0, 0, 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(29, '{\"en\":\"Post Party Cleaning\"}', 30.22, 27.62, 'hourly', NULL, '4:00', '{\"en\":\"Consequatur ratione consectetur nisi. Consequuntur optio inventore tenetur expedita aut perspiciatis dolorem. Fugit quae culpa vel facere voluptatem consequatur illo quia.\"}', 0, 1, 1, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(30, '{\"en\":\"Nurse Service\"}', 11.76, 0.00, 'hourly', NULL, '4:00', '{\"en\":\"Odio accusantium labore soluta eius ab qui quibusdam molestiae. Recusandae molestias aut nihil.\"}', 1, 1, 1, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(31, '{\"en\":\"Office Cleaning\"}', 27.75, 18.84, 'hourly', NULL, '5:00', '{\"en\":\"Ut cupiditate qui deserunt deserunt sint. Doloribus quisquam fugit veritatis facilis. Distinctio sit odit perspiciatis eligendi officia enim est.\"}', 0, 0, 0, 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(32, '{\"en\":\"Deck Cleaning \\/ Sealing\"}', 11.76, 4.09, 'fixed', NULL, '1:00', '{\"en\":\"Quos aperiam ut vel iusto quaerat architecto quia. Alias qui dolore rerum voluptas. Autem ipsam ut dolores et.\"}', 0, 0, 1, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(33, '{\"en\":\"Hair Style Service\"}', 49.02, 0.00, 'fixed', NULL, '1:00', '{\"en\":\"Quod voluptatem sequi aut accusantium rerum cupiditate. Quas itaque maiores accusamus consequatur hic maxime.\"}', 0, 0, 1, 10, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(34, '{\"en\":\"Wedding Photos\"}', 42.69, 0.00, 'fixed', NULL, '2:00', '{\"en\":\"Accusamus eveniet at ab molestiae rerum maxime. Omnis facere et quasi culpa harum ratione dolor nulla. Qui nihil id rerum sint commodi et sed autem. Non nesciunt velit et perferendis beatae.\"}', 1, 0, 0, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(35, '{\"en\":\"Wedding Photos\"}', 12.20, 0.00, 'hourly', NULL, '3:00', '{\"en\":\"Beatae odio nostrum vel rerum minus. Quisquam explicabo autem sunt similique ipsam facilis. Autem ea vitae rerum maiores maiores ipsum illum laborum.\"}', 0, 1, 0, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(36, '{\"en\":\"Nurse Service\"}', 25.16, 0.00, 'hourly', NULL, '5:00', '{\"en\":\"Amet non et ipsa totam dicta. Quo accusamus vel ab occaecati non recusandae voluptatem. Illo enim sunt aut iure. Qui vel sint qui animi et.\"}', 0, 0, 0, 8, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(37, '{\"en\":\"Lawn Care Services\"}', 19.64, 15.63, 'fixed', NULL, '5:00', '{\"en\":\"Aperiam alias asperiores veritatis qui. Provident exercitationem quam voluptatum cupiditate sit.\"}', 0, 1, 1, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(38, '{\"en\":\"Sedan Car Washing \"}', 14.93, 5.56, 'fixed', NULL, '3:00', '{\"en\":\"Quod velit ipsam commodi fuga omnis sunt eos. Incidunt nihil debitis sint autem minus aut nobis voluptate. Qui sunt culpa iste fugiat eaque at quibusdam consectetur.\"}', 1, 1, 0, 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(39, '{\"en\":\"Doctor at home Service\"}', 14.69, 9.79, 'fixed', NULL, '2:00', '{\"en\":\"Inventore sint ut hic ratione. Omnis nesciunt similique beatae ut. Voluptatibus impedit neque suscipit quidem rerum excepturi delectus natus.\"}', 0, 1, 0, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(40, '{\"en\":\"Screens - New and Repair\"}', 12.10, 6.41, 'fixed', NULL, '4:00', '{\"en\":\"Numquam et doloribus numquam blanditiis pariatur nam ut. Debitis ut atque deleniti. Et ut at accusamus. Est at quisquam nam dolores. Voluptatem earum tenetur impedit vel ducimus.\"}', 0, 1, 1, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `e_service_categories`
--

DROP TABLE IF EXISTS `e_service_categories`;
CREATE TABLE IF NOT EXISTS `e_service_categories` (
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`e_service_id`,`category_id`),
  KEY `e_service_categories_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_categories`
--

INSERT INTO `e_service_categories` (`e_service_id`, `category_id`) VALUES
(2, 5),
(3, 4),
(3, 9),
(4, 6),
(5, 7),
(6, 7),
(8, 2),
(11, 1),
(12, 2),
(13, 1),
(13, 5),
(13, 8),
(14, 1),
(15, 8),
(16, 6),
(16, 7),
(17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `e_service_reviews`
--

DROP TABLE IF EXISTS `e_service_reviews`;
CREATE TABLE IF NOT EXISTS `e_service_reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` decimal(3,2) NOT NULL DEFAULT '0.00',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_service_reviews_user_id_foreign` (`user_id`),
  KEY `e_service_reviews_e_service_id_foreign` (`e_service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_reviews`
--

INSERT INTO `e_service_reviews` (`id`, `review`, `rate`, `user_id`, `e_service_id`, `created_at`, `updated_at`) VALUES
(1, 'Majesty,\' said the Lory, who at last the Mouse, in a sorrowful tone; \'at least there\'s no name.', '2.00', 8, 30, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, 'Duchess said to herself, \'Why, they\'re only a child!\' The Queen smiled and passed on. \'Who ARE you.', '1.00', 8, 8, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, 'So she was quite surprised to see it written down: but I hadn\'t drunk quite so much!\' said Alice.', '5.00', 3, 37, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the cook. The King laid his hand upon her face.', '1.00', 5, 26, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, 'Bill! I wouldn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Please, Ma\'am, is.', '2.00', 5, 22, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, 'Alice, surprised at her with large eyes full of the Lobster Quadrille?\' the Gryphon added \'Come.', '4.00', 5, 23, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, 'See how eagerly the lobsters to the table to measure herself by it, and then keep tight hold of.', '4.00', 3, 23, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, 'She did it so yet,\' said the March Hare said in a very poor speaker,\' said the Mouse, sharply and.', '3.00', 8, 26, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, 'King in a sorrowful tone; \'at least there\'s no use denying it. I suppose you\'ll be asleep again.', '4.00', 5, 33, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, 'I don\'t put my arm round your waist,\' the Duchess replied, in a rather offended tone, \'was, that.', '2.00', 8, 23, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, 'It\'s HIM.\' \'I don\'t even know what you mean,\' the March Hare. \'He denies it,\' said the Mock.', '3.00', 3, 23, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, 'Alice! when she caught it, and on both sides at once. The Dormouse shook its head to feel very.', '3.00', 8, 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, 'King. \'It began with the Queen,\' and she said to Alice, \'Have you seen the Mock Turtle yawned and.', '2.00', 8, 19, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, 'Alice, as she could not help thinking there MUST be more to do this, so she set to work, and very.', '2.00', 7, 32, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, 'Majesty,\' said Two, in a tone of this was not an encouraging tone. Alice looked at her feet in the.', '5.00', 8, 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, 'Mouse with an M, such as mouse-traps, and the King repeated angrily, \'or I\'ll have you executed.\'.', '5.00', 7, 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, 'Gryphon: \'I went to school in the book,\' said the King, \'that only makes the world she was.', '3.00', 3, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, 'Alice did not like the wind, and was going to turn into a cucumber-frame, or something of the.', '5.00', 5, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(19, 'Gryphon: \'I went to school in the wind, and was surprised to find that she hardly knew what she.', '1.00', 3, 32, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(20, 'Alice\'s great surprise, the Duchess\'s voice died away, even in the sea. But they HAVE their tails.', '1.00', 8, 37, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(21, 'After a while, finding that nothing more to do such a thing I know. Silence all round, if you.', '5.00', 7, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(22, 'Some of the song, perhaps?\' \'I\'ve heard something splashing about in the distance, sitting sad and.', '5.00', 5, 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(23, 'I suppose.\' So she swallowed one of them hit her in such a rule at processions; \'and besides, what.', '3.00', 5, 31, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(24, 'Father William replied to his son, \'I feared it might end, you know,\' said the Duchess: \'what a.', '4.00', 8, 38, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(25, 'By this time the Mouse heard this, it turned a back-somersault in at the door of which was lit up.', '4.00', 5, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(26, 'Mock Turtle. \'And how many miles I\'ve fallen by this very sudden change, but very glad to find.', '5.00', 8, 34, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(27, 'On which Seven looked up and leave the court; but on the ground as she left her, leaning her head.', '1.00', 8, 38, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(28, 'For some minutes the whole thing very absurd, but they all spoke at once, with a bound into the.', '2.00', 7, 23, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(29, 'Oh dear! I shall fall right THROUGH the earth! How funny it\'ll seem to come before that!\' \'Call.', '4.00', 8, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(30, 'Dinah, tell me your history, she do.\' \'I\'ll tell it her,\' said the Dormouse shook itself, and.', '4.00', 3, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(31, 'And the Eaglet bent down its head down, and the arm that was lying under the sea--\' (\'I haven\'t,\'.', '4.00', 5, 24, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(32, 'Seven looked up and to hear the very middle of one! There ought to speak, and no more of it.', '3.00', 3, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(33, 'Cat, \'or you wouldn\'t mind,\' said Alice: \'besides, that\'s not a moment to be two people. \'But it\'s.', '1.00', 5, 20, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(34, 'For some minutes it seemed quite natural); but when the tide rises and sharks are around, His.', '5.00', 8, 33, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(35, 'I beg your acceptance of this sort in her pocket) till she had read several nice little dog near.', '2.00', 8, 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(36, 'This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'but a grin without a great.', '1.00', 3, 21, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(37, 'She was walking by the hedge!\' then silence, and then Alice put down yet, before the officer could.', '5.00', 8, 19, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(38, 'I can do without lobsters, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice.', '2.00', 3, 29, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(39, 'Hatter with a sigh. \'I only took the regular course.\' \'What was that?\' inquired Alice. \'Reeling.', '5.00', 8, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(40, 'March Hare. Alice sighed wearily. \'I think you could only hear whispers now and then unrolled the.', '5.00', 5, 10, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(41, 'I only wish they COULD! I\'m sure she\'s the best cat in the wood, \'is to grow larger again, and.', '1.00', 3, 30, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(42, 'I!\' said the March Hare said--\' \'I didn\'t!\' the March Hare will be the right way to fly up into.', '4.00', 3, 39, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(43, 'THEN--she found herself lying on their faces, and the poor animal\'s feelings. \'I quite agree with.', '4.00', 5, 39, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(44, 'Caterpillar. \'Well, I shan\'t grow any more--As it is, I can\'t show it you myself,\' the Mock Turtle.', '4.00', 7, 37, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(45, 'I don\'t put my arm round your waist,\' the Duchess said to the baby, the shriek of the game, the.', '4.00', 7, 10, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(46, 'Hatter. \'Stolen!\' the King said to herself; \'the March Hare and his friends shared their.', '4.00', 8, 20, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(47, 'HERE.\' \'But then,\' thought Alice, \'as all the jelly-fish out of sight; and an Eaglet, and several.', '2.00', 7, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(48, 'Bill had left off quarrelling with the grin, which remained some time without hearing anything.', '5.00', 3, 27, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(49, 'Alice led the way, was the same thing, you know.\' It was, no doubt: only Alice did not like to.', '1.00', 7, 22, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(50, 'Alice looked down into its face to see what this bottle was NOT marked \'poison,\' so Alice ventured.', '5.00', 3, 31, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(51, 'Cat again, sitting on a crimson velvet cushion; and, last of all her wonderful Adventures, till.', '4.00', 7, 19, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(52, 'Mock Turtle. \'She can\'t explain it,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'ve.', '4.00', 5, 21, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(53, 'For, you see, because some of the players to be treated with respect. \'Cheshire Puss,\' she began.', '1.00', 5, 36, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(54, 'Alice angrily. \'It wasn\'t very civil of you to learn?\' \'Well, there was mouth enough for it to.', '4.00', 8, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(55, 'Alice could see it trot away quietly into the roof off.\' After a while she remembered how small.', '1.00', 7, 38, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(56, 'Alice took up the other, and making quite a crowd of little birds and animals that had fallen into.', '2.00', 7, 15, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(57, 'I was a general clapping of hands at this: it was only too glad to find that she might as well go.', '1.00', 5, 13, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(58, 'I beat him when he finds out who was peeping anxiously into its mouth and began by taking the.', '2.00', 8, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(59, 'Alice, \'it\'ll never do to come once a week: HE taught us Drawling, Stretching, and Fainting in.', '3.00', 7, 21, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(60, 'WAS a curious dream, dear, certainly: but now run in to your little boy, And beat him when he.', '5.00', 7, 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(61, 'White Rabbit as he spoke. \'A cat may look at the top of the soldiers remaining behind to execute.', '2.00', 5, 32, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(62, 'Alice, quite forgetting her promise. \'Treacle,\' said the Duchess. \'Everything\'s got a moral, if.', '5.00', 5, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(63, 'Alice heard it before,\' said the last time she saw in my own tears! That WILL be a very melancholy.', '4.00', 5, 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(64, 'I know?\' said Alice, quite forgetting in the morning, just time to wash the things being alive.', '5.00', 3, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(65, 'The Queen\'s Croquet-Ground A large rose-tree stood near the King hastily said, and went on saying.', '4.00', 3, 34, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(66, 'HERE.\' \'But then,\' thought she, \'if people had all to lie down on the English coast you find a.', '2.00', 3, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(67, 'I beg your pardon,\' said Alice loudly. \'The idea of having nothing to what I see\"!\' \'You might.', '3.00', 5, 37, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(68, 'Duchess. \'I make you dry enough!\' They all made of solid glass; there was a dispute going on.', '3.00', 5, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(69, 'You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There.', '3.00', 7, 33, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(70, 'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know that you\'re mad?\' \'To begin.', '3.00', 7, 14, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(71, 'WHAT?\' thought Alice to herself, \'in my going out altogether, like a frog; and both footmen, Alice.', '3.00', 5, 10, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(72, 'Mock Turtle: \'nine the next, and so on.\' \'What a number of executions the Queen put on her lap as.', '3.00', 5, 26, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(73, 'Mock Turtle angrily: \'really you are very dull!\' \'You ought to be rude, so she set off at once.', '5.00', 3, 35, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(74, 'D,\' she added in a very truthful child; \'but little girls of her own ears for having cheated.', '4.00', 8, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(75, 'I know I have ordered\'; and she tried to open it; but, as the jury eagerly wrote down on their.', '2.00', 7, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(76, 'Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a table, with a sigh: \'he taught Laughing.', '5.00', 8, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(77, 'Alice, \'as all the rest of the garden, where Alice could hear him sighing as if nothing had.', '3.00', 3, 24, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(78, 'Soup! Beau--ootiful Soo--oop! Soo--oop of the sea.\' \'I couldn\'t help it,\' said the Gryphon. \'Turn.', '5.00', 5, 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(79, 'No, no! You\'re a serpent; and there\'s no room at all a pity. I said \"What for?\"\' \'She boxed the.', '3.00', 3, 23, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(80, 'First, she tried the effect of lying down on one knee as he said to herself; \'his eyes are so VERY.', '3.00', 5, 40, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(81, 'They had not noticed before, and he wasn\'t one?\' Alice asked. The Hatter opened his eyes. \'I.', '2.00', 3, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(82, 'Alice began in a great hurry; \'this paper has just been reading about; and when she got to the.', '1.00', 8, 40, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(83, 'The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said in a low voice, \'Your Majesty must.', '2.00', 3, 31, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(84, 'Ann! Mary Ann!\' said the last word two or three times over to herself, \'if one only knew how to.', '2.00', 8, 17, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(85, 'Dormouse: \'not in that ridiculous fashion.\' And he added looking angrily at the sudden change, but.', '4.00', 3, 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(86, 'I should think very likely it can be,\' said the Mock Turtle with a round face, and large eyes full.', '2.00', 8, 11, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(87, 'YOU?\' said the King, and the White Rabbit cried out, \'Silence in the air: it puzzled her too much.', '1.00', 7, 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(88, 'And beat him when he finds out who was trembling down to them, and it\'ll sit up and said, \'So you.', '2.00', 7, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(89, 'I\'d nearly forgotten that I\'ve got to the jury, and the Dormouse went on, \'and most things.', '5.00', 5, 30, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(90, 'Alice, who always took a minute or two, they began moving about again, and that\'s all you know.', '5.00', 8, 19, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(91, 'WHAT?\' said the Dormouse, not choosing to notice this last remark that had made her so savage when.', '3.00', 5, 21, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(92, 'Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was no more of the ground.\' So she stood still.', '2.00', 8, 35, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(93, 'YOU sing,\' said the Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle. \'And.', '5.00', 3, 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(94, 'This question the Dodo managed it.) First it marked out a new pair of boots every Christmas.\' And.', '2.00', 7, 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(95, 'YOUR table,\' said Alice; not that she never knew whether it would be a lesson to you to sit down.', '3.00', 3, 35, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(96, 'Alice said with some difficulty, as it went. So she swallowed one of them attempted to explain the.', '1.00', 7, 38, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(97, 'But she did not see anything that had slipped in like herself. \'Would it be of any that do,\' Alice.', '1.00', 7, 8, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(98, 'He looked at each other for some way, and the little thing grunted in reply (it had left off when.', '5.00', 3, 21, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(99, 'When she got to go on with the Duchess, as she could, for the White Rabbit, trotting slowly back.', '2.00', 8, 25, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(100, 'The Mouse did not venture to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been.', '4.00', 8, 37, '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_faq_category_id_foreign` (`faq_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Veritatis unde voluptas non voluptatum culpa. Dolores mollitia voluptatem odio eum.\"}', '{\"en\":\"I do so like that curious song about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that you had been running half an hour or so there were three.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, '{\"en\":\"Hic omnis est nesciunt rerum est aut. Nesciunt nihil iste laudantium.\"}', '{\"en\":\"ARE you talking to?\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you could see her after the others. \'We must burn the house till she had felt quite strange at first; but she got back to.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, '{\"en\":\"Ab quibusdam cupiditate ab iusto omnis. Ut neque facilis eum et esse sunt.\"}', '{\"en\":\"But here, to Alice\'s side as she was a long time together.\' \'Which is just the case with MINE,\' said the Mock Turtle. So she began fancying the sort of a candle is blown out, for she felt a little.\"}', 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, '{\"en\":\"Assumenda et excepturi et perferendis maiores eaque. Et atque illum nihil optio cupiditate.\"}', '{\"en\":\"Alice. \'That\'s the first witness,\' said the March Hare moved into the loveliest garden you ever see you again, you dear old thing!\' said the Mouse, getting up and throw us, with the Dormouse. \'Don\'t.\"}', 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, '{\"en\":\"Optio veniam et aut repellat. Qui quo saepe nihil consequatur sint ipsum consequatur.\"}', '{\"en\":\"Hatter and the words have got in as well,\' the Hatter said, turning to Alice to herself. \'Of the mushroom,\' said the White Rabbit, who was trembling down to her in an angry voice--the.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, '{\"en\":\"Similique maiores sint vel aut. Non repellat ipsum commodi voluptates quis.\"}', '{\"en\":\"Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the March Hare. \'Then it ought to have any pepper in my time, but never ONE with such a capital one for catching.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, '{\"en\":\"Maiores et impedit consequatur ipsa quia. Sit sit exercitationem est sint ipsum minus.\"}', '{\"en\":\"Caterpillar. \'Well, I should think it would like the look of things at all, as the hall was very glad to find her way into a chrysalis--you will some day, you know--and then after that into a doze.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, '{\"en\":\"Aut et occaecati deleniti id qui vitae ad. Omnis rem eveniet quo incidunt.\"}', '{\"en\":\"Hatter: \'as the things I used to queer things happening. While she was as much right,\' said the Hatter. He had been found and handed them round as prizes. There was a large piece out of sight, they.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, '{\"en\":\"Similique reprehenderit neque ab numquam aut autem voluptate. Labore iste quibusdam est eos alias.\"}', '{\"en\":\"Mock Turtle sang this, very slowly and sadly:-- \'\\\"Will you walk a little shriek and a Canary called out \'The race is over!\' and they walked off together. Alice was rather glad there WAS no one.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, '{\"en\":\"Debitis sint et sed et dolores. Consectetur reiciendis doloremque maxime adipisci et ea neque qui.\"}', '{\"en\":\"King. The next thing is, to get in?\' \'There might be hungry, in which case it would like the three gardeners at it, and found herself lying on their backs was the cat.) \'I hope they\'ll remember her.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, '{\"en\":\"Et ullam cum est eos. Quia nemo maiores eos perspiciatis. Vel dolor ea itaque ipsa atque quo.\"}', '{\"en\":\"Alice thought to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid voice at her own child-life, and the fan, and skurried away into the roof of the.\"}', 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, '{\"en\":\"Aut aut non est repellendus dolorum officiis sed. Porro esse quae numquam saepe eius.\"}', '{\"en\":\"I can\'t remember,\' said the Footman. \'That\'s the first witness,\' said the Mock Turtle to the table for it, she found this a very interesting dance to watch,\' said Alice, and she hastily dried her.\"}', 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, '{\"en\":\"Saepe exercitationem explicabo voluptatem numquam et. Impedit eum ut reiciendis quisquam.\"}', '{\"en\":\"Indeed, she had known them all her riper years, the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you want to stay with it as she had wept when she.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, '{\"en\":\"Qui optio dignissimos dolores debitis veniam sed. Velit nisi saepe dicta aut fuga nostrum hic.\"}', '{\"en\":\"Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it purring, not growling,\' said Alice. The King turned pale, and shut his eyes.--\'Tell her about the reason and all dripping wet.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, '{\"en\":\"Voluptatem quis est blanditiis consectetur velit. Fugit nihil nihil vitae consequatur.\"}', '{\"en\":\"Alice looked round, eager to see what would happen next. The first question of course you know what a Gryphon is, look at all anxious to have been changed for Mabel! I\'ll try and repeat \\\"\'TIS THE.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, '{\"en\":\"Eum suscipit quia eveniet. Suscipit sequi sed alias sunt qui.\"}', '{\"en\":\"Dormouse, and repeated her question. \'Why did they draw?\' said Alice, as she did not venture to go on crying in this way! Stop this moment, I tell you, you coward!\' and at once took up the fan and.\"}', 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, '{\"en\":\"Fugiat neque eaque consequatur esse similique. Nam dolor voluptate inventore quam suscipit qui.\"}', '{\"en\":\"She got up and down in a deep sigh, \'I was a dead silence instantly, and Alice was only sobbing,\' she thought, \'it\'s sure to kill it in with the time,\' she said to Alice, very earnestly. \'I\'ve had.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, '{\"en\":\"Soluta reiciendis veniam dolores iure voluptatem. Soluta sunt ut cumque natus.\"}', '{\"en\":\"I have to fly; and the fall NEVER come to the three gardeners, but she stopped hastily, for the rest of it in a furious passion, and went by without noticing her. Then followed the Knave of Hearts.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(19, '{\"en\":\"Porro sit facilis ducimus dolor voluptatem magnam ipsa. Sit rerum quas et hic fuga aut non.\"}', '{\"en\":\"Lizard, Bill, was in a ring, and begged the Mouse was speaking, so that it ought to have finished,\' said the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to learn?\'.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(20, '{\"en\":\"Et sunt a quia iste. Aspernatur quae ut asperiores commodi velit et officia.\"}', '{\"en\":\"THIS size: why, I should think you could keep it to make it stop. \'Well, I\'d hardly finished the first witness,\' said the Rabbit say, \'A barrowful will do, to begin again, it was the Hatter. \'You.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(21, '{\"en\":\"Facilis ut iste debitis ratione dolores eum. Sint voluptates numquam beatae soluta delectus.\"}', '{\"en\":\"The judge, by the officers of the trial.\' \'Stupid things!\' Alice thought this a very little! Besides, SHE\'S she, and I\'m sure she\'s the best thing to eat some of the cupboards as she picked up a.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(22, '{\"en\":\"Assumenda eligendi id ut cumque excepturi mollitia. Est natus maxime ut explicabo.\"}', '{\"en\":\"Alice. \'Stand up and throw us, with the next witness.\' And he got up this morning, but I don\'t want to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Cat, and vanished. Alice was.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(23, '{\"en\":\"Ipsum nihil omnis quia in voluptatem. Velit et molestiae iste. Sed odio quidem sunt illo.\"}', '{\"en\":\"Dodo. Then they both sat silent for a conversation. Alice felt that this could not answer without a cat! It\'s the most important piece of evidence we\'ve heard yet,\' said the Hatter. \'You might just.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(24, '{\"en\":\"Quis est iusto ut non dignissimos minima. Quod deserunt ut quia ea sequi.\"}', '{\"en\":\"ONE with such a long argument with the edge of the baby?\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, who was a dead silence. \'It\'s a pun!\' the King said to herself in.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(25, '{\"en\":\"Ducimus et in id dicta qui. Repellat sed itaque aut ut in nihil. Ab maiores omnis ducimus.\"}', '{\"en\":\"Involved in this affair, He trusts to you how the game began. Alice gave a little queer, won\'t you?\' \'Not a bit,\' said the Dormouse, not choosing to notice this question, but hurriedly went on.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(26, '{\"en\":\"Odio dolorem ea rerum. Nam cum quia error minima cumque provident. Voluptate veritatis et enim.\"}', '{\"en\":\"Majesty!\' the Duchess to play croquet.\' The Frog-Footman repeated, in the air. She did not quite sure whether it would be quite as much as she swam nearer to make it stop. \'Well, I\'d hardly finished.\"}', 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(27, '{\"en\":\"Eos atque dolor quia autem itaque. Qui aut voluptatum qui ullam.\"}', '{\"en\":\"White Rabbit, \'but it doesn\'t mind.\' The table was a dead silence instantly, and Alice was very like a candle. I wonder if I\'ve been changed for any lesson-books!\' And so it was perfectly round, she.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(28, '{\"en\":\"Molestiae totam ullam repellat eos rem necessitatibus. Maiores ut quidem qui ullam.\"}', '{\"en\":\"Majesty means, of course,\' he said in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a VERY unpleasant state of mind, she turned to the Gryphon. \'Do you know about this business?\'.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(29, '{\"en\":\"Possimus corrupti dicta aut. Sed et non architecto repudiandae.\"}', '{\"en\":\"WOULD put their heads down! I am now? That\'ll be a footman because he taught us,\' said the King, looking round the hall, but they were lying on the OUTSIDE.\' He unfolded the paper as he wore his.\"}', 4, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(30, '{\"en\":\"Quis dolor eos eum et. Ut quae deserunt veniam nostrum maxime. Numquam perferendis aut dignissimos.\"}', '{\"en\":\"She was close behind her, listening: so she sat down a jar from one end of every line: \'Speak roughly to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT.\"}', 3, '2022-11-03 05:39:01', '2022-11-03 05:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
CREATE TABLE IF NOT EXISTS `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Service\"}', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, '{\"en\":\"Service\"}', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, '{\"en\":\"Service\"}', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, '{\"en\":\"Service\"}', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, '{\"en\":\"Service\"}', '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_e_service_id_foreign` (`e_service_id`),
  KEY `favorites_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

DROP TABLE IF EXISTS `favorite_options`;
CREATE TABLE IF NOT EXISTS `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`option_id`,`favorite_id`),
  KEY `favorite_options_favorite_id_foreign` (`favorite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Ut et cumque qui porro mollitia quasi dolores cumque.\"}', 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, '{\"en\":\"Reiciendis consequatur ratione quaerat non earum harum.\"}', 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, '{\"en\":\"Et asperiores aut illum voluptatum est quia eum maxime.\"}', 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, '{\"en\":\"Placeat consequatur et impedit qui dolore autem vel.\"}', 13, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, '{\"en\":\"Quod culpa sequi tempora provident ipsa nesciunt.\"}', 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, '{\"en\":\"Nulla consequuntur aspernatur tempore et et.\"}', 15, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, '{\"en\":\"Illo eaque eveniet assumenda voluptas qui.\"}', 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, '{\"en\":\"Nihil iusto dolorem veritatis aut alias.\"}', 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, '{\"en\":\"Fuga quis sint qui voluptatibus rem sunt.\"}', 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, '{\"en\":\"Sed nihil ut dolores odio quia error temporibus.\"}', 9, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, '{\"en\":\"Quibusdam minus consectetur nobis rerum id repellendus iste.\"}', 12, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, '{\"en\":\"Aut quia repudiandae qui dignissimos.\"}', 6, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, '{\"en\":\"Porro impedit vel facilis provident corrupti et dolorem odit.\"}', 5, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, '{\"en\":\"Commodi neque mollitia sit occaecati rerum aperiam eveniet error.\"}', 15, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, '{\"en\":\"Debitis vel velit et qui sit.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, '{\"en\":\"Facilis veritatis repellat aut esse.\"}', 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, '{\"en\":\"Dolor cum dolorum perferendis modi.\"}', 16, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, '{\"en\":\"Ab voluptatem eligendi distinctio qui.\"}', 10, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(19, '{\"en\":\"Optio voluptas occaecati voluptatem dolores ad voluptatem et.\"}', 18, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(20, '{\"en\":\"Quod aut nihil sit voluptate.\"}', 7, '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\PaymentMethod', 2, 'logo', 'razorpay', 'razorpay.png', 'image/png', 'public', 13026, '[]', '{\"uuid\":\"13e62475-6b5f-4812-b484-2b94cc52b715\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-05-07 12:03:38', '2021-05-07 12:03:38'),
(5, 'App\\Models\\PaymentMethod', 5, 'logo', 'paypal', 'paypal.png', 'image/png', 'public', 15819, '[]', '{\"uuid\":\"2b8bd9b8-5c37-4464-a5c7-623496d7655f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2021-05-07 12:03:49', '2021-05-07 12:03:49'),
(7, 'App\\Models\\PaymentMethod', 6, 'logo', 'pay_pickup', 'pay_pickup.png', 'image/png', 'public', 11712, '[]', '{\"uuid\":\"5e06e7ca-ac33-413c-9ab0-6fd4e3083cc1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-05-07 12:03:58', '2021-05-07 12:03:58'),
(9, 'App\\Models\\PaymentMethod', 7, 'logo', 'stripe-logo', 'stripe-logo.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd448a36-8a5e-4c85-8d6e-c356843429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-05-07 12:04:23', '2021-05-07 12:04:23'),
(11, 'App\\Models\\PaymentMethod', 8, 'logo', 'paystack', 'paystack.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd448a96-8a5e-4c85-8d6e-c356648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-05-07 12:04:23', '2021-05-07 12:04:23'),
(10, 'App\\Models\\PaymentMethod', 9, 'logo', 'flutterwave', 'flutterwave.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a96-8a5e-4a85-8d6e-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2021-05-07 12:04:23', '2021-05-07 12:04:23'),
(12, 'App\\Models\\PaymentMethod', 10, 'logo', 'fpx', 'fpx.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 12:04:23', '2021-05-07 12:04:23'),
(13, 'App\\Models\\PaymentMethod', 11, 'logo', 'wallet', 'wallet.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 12:04:23', '2021-05-07 12:04:23'),
(14, 'App\\Models\\PaymentMethod', 12, 'logo', 'paymongo', 'paymongo.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 12:04:23', '2021-05-07 12:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_08_29_213829_create_faq_categories_table', 1),
(11, '2019_08_29_213926_create_faqs_table', 1),
(12, '2019_10_22_144652_create_currencies_table', 1),
(13, '2021_01_07_162658_create_payment_methods_table', 1),
(14, '2021_01_07_164755_create_payment_statuses_table', 1),
(15, '2021_01_07_165422_create_payments_table', 1),
(16, '2021_01_13_105605_create_e_provider_types_table', 1),
(17, '2021_01_13_111155_create_e_providers_table', 1),
(18, '2021_01_13_111622_create_experiences_table', 1),
(19, '2021_01_13_111730_create_awards_table', 1),
(20, '2021_01_13_114302_create_taxes_table', 1),
(21, '2021_01_13_200249_create_addresses_table', 1),
(22, '2021_01_15_115239_create_e_provider_addresses_table', 1),
(23, '2021_01_15_115747_create_e_provider_users_table', 1),
(24, '2021_01_15_115850_create_e_provider_taxes_table', 1),
(25, '2021_01_16_160838_create_availability_hours_table', 1),
(26, '2021_01_19_135951_create_e_services_table', 1),
(27, '2021_01_19_140427_create_categories_table', 1),
(28, '2021_01_19_171553_create_e_service_categories_table', 1),
(29, '2021_01_22_194514_create_option_groups_table', 1),
(30, '2021_01_22_200807_create_options_table', 1),
(31, '2021_01_22_205819_create_favorites_table', 1),
(32, '2021_01_22_205944_create_favorite_options_table', 1),
(33, '2021_01_23_125641_create_e_service_reviews_table', 1),
(34, '2021_01_23_201533_create_galleries_table', 1),
(35, '2021_01_25_105421_create_slides_table', 1),
(36, '2021_01_25_162055_create_notifications_table', 1),
(37, '2021_01_25_170522_create_coupons_table', 1),
(38, '2021_01_25_170529_create_discountables_table', 1),
(39, '2021_01_25_191833_create_booking_statuses_table', 1),
(40, '2021_01_25_212252_create_bookings_table', 1),
(41, '2021_01_30_111717_create_e_provider_payouts_table', 1),
(42, '2021_01_30_135356_create_earnings_table', 1),
(43, '2021_02_24_102838_create_custom_pages_table', 1),
(44, '2021_06_26_110636_create_json_extract_function', 1),
(45, '2021_08_08_134136_create_wallets_table', 1),
(46, '2021_08_08_155732_create_wallet_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `options_e_service_id_foreign` (`e_service_id`),
  KEY `options_option_group_id_foreign` (`option_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `e_service_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"30m²\"}', '{\"en\":\"Quisquam architecto libero commodi consequatur.\"}', 24.60, 29, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(2, '{\"en\":\"40m\"}', '{\"en\":\"Laboriosam eius distinctio.\"}', 22.75, 11, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(3, '{\"en\":\"20m\"}', '{\"en\":\"Quaerat velit sunt animi deserunt ut.\"}', 11.78, 14, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(4, '{\"en\":\"30m²\"}', '{\"en\":\"Molestiae nulla magnam.\"}', 18.52, 40, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(5, '{\"en\":\"30m²\"}', '{\"en\":\"Doloribus accusantium reprehenderit dolorem.\"}', 47.13, 28, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(6, '{\"en\":\"30m²\"}', '{\"en\":\"Asperiores doloremque molestiae numquam culpa.\"}', 45.62, 9, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(7, '{\"en\":\"40m\"}', '{\"en\":\"Sequi quidem asperiores eos.\"}', 34.13, 27, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(8, '{\"en\":\"30m²\"}', '{\"en\":\"Est reprehenderit at.\"}', 12.28, 15, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(9, '{\"en\":\"10m²\"}', '{\"en\":\"Quis fugit sunt facere.\"}', 45.62, 12, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(10, '{\"en\":\"20m\"}', '{\"en\":\"Ea recusandae cum odio at.\"}', 30.78, 40, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(11, '{\"en\":\"10m²\"}', '{\"en\":\"Quo nihil ipsam unde.\"}', 24.39, 33, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(12, '{\"en\":\"30m²\"}', '{\"en\":\"Voluptatem earum aut iure.\"}', 43.64, 14, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(13, '{\"en\":\"40m\"}', '{\"en\":\"Quia illum a vero.\"}', 21.44, 14, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(14, '{\"en\":\"20m\"}', '{\"en\":\"Qui repellendus fugit exercitationem officia.\"}', 19.39, 8, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(15, '{\"en\":\"10m²\"}', '{\"en\":\"Hic omnis ipsa nam deserunt.\"}', 26.03, 28, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(16, '{\"en\":\"10m²\"}', '{\"en\":\"Voluptatem necessitatibus qui ut.\"}', 36.55, 30, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(17, '{\"en\":\"40m\"}', '{\"en\":\"Eum velit non.\"}', 11.22, 23, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(18, '{\"en\":\"20m\"}', '{\"en\":\"Neque ea eos ipsum architecto.\"}', 37.65, 4, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(19, '{\"en\":\"20m\"}', '{\"en\":\"A doloribus ratione.\"}', 36.84, 38, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(20, '{\"en\":\"30m²\"}', '{\"en\":\"Consequatur eveniet eveniet nisi suscipit qui.\"}', 36.56, 22, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(21, '{\"en\":\"10m²\"}', '{\"en\":\"Ea itaque et nam et.\"}', 10.03, 7, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(22, '{\"en\":\"40m\"}', '{\"en\":\"Error nulla dolor et non ut.\"}', 23.54, 32, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(23, '{\"en\":\"20m\"}', '{\"en\":\"Architecto id sapiente excepturi laudantium.\"}', 42.38, 32, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(24, '{\"en\":\"20m\"}', '{\"en\":\"Error repellat similique.\"}', 12.51, 6, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(25, '{\"en\":\"20m\"}', '{\"en\":\"Blanditiis dolor recusandae.\"}', 20.22, 36, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(26, '{\"en\":\"40m\"}', '{\"en\":\"Qui blanditiis quo beatae omnis.\"}', 17.30, 3, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(27, '{\"en\":\"40m\"}', '{\"en\":\"Labore rem rerum deserunt explicabo quis.\"}', 42.25, 12, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(28, '{\"en\":\"30m²\"}', '{\"en\":\"Delectus hic explicabo veritatis.\"}', 42.57, 2, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(29, '{\"en\":\"10m²\"}', '{\"en\":\"Impedit et quasi ad nobis.\"}', 18.00, 31, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(30, '{\"en\":\"40m\"}', '{\"en\":\"Quibusdam nemo tempora quia.\"}', 48.01, 12, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(31, '{\"en\":\"10m²\"}', '{\"en\":\"Sit dolore in pariatur.\"}', 39.34, 31, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(32, '{\"en\":\"20m\"}', '{\"en\":\"Quas ut numquam earum labore.\"}', 31.87, 34, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(33, '{\"en\":\"10m²\"}', '{\"en\":\"Sint sunt voluptas eum voluptate culpa.\"}', 33.94, 13, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(34, '{\"en\":\"20m\"}', '{\"en\":\"Sed architecto eum esse eum.\"}', 47.99, 8, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(35, '{\"en\":\"40m\"}', '{\"en\":\"Impedit cupiditate rem distinctio.\"}', 18.75, 31, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(36, '{\"en\":\"30m²\"}', '{\"en\":\"Aliquam et harum animi numquam commodi.\"}', 34.96, 3, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(37, '{\"en\":\"30m²\"}', '{\"en\":\"Quos velit ut pariatur.\"}', 16.82, 29, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(38, '{\"en\":\"30m²\"}', '{\"en\":\"Praesentium et molestiae sapiente.\"}', 12.31, 3, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(39, '{\"en\":\"20m\"}', '{\"en\":\"Odio velit odit possimus.\"}', 22.64, 17, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(40, '{\"en\":\"30m²\"}', '{\"en\":\"Ullam ut saepe.\"}', 16.04, 3, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(41, '{\"en\":\"10m²\"}', '{\"en\":\"Iste dolor suscipit et.\"}', 29.11, 2, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(42, '{\"en\":\"20m\"}', '{\"en\":\"Velit quia et ut nostrum.\"}', 16.87, 29, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(43, '{\"en\":\"10m²\"}', '{\"en\":\"Ea consequuntur quo dolorum minima dolorum.\"}', 27.23, 7, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(44, '{\"en\":\"40m\"}', '{\"en\":\"Animi iure quaerat.\"}', 11.85, 29, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(45, '{\"en\":\"20m\"}', '{\"en\":\"Ut quidem vero consequatur ut.\"}', 15.68, 28, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(46, '{\"en\":\"10m²\"}', '{\"en\":\"Aliquid dolorum in animi praesentium vel.\"}', 16.74, 13, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(47, '{\"en\":\"10m²\"}', '{\"en\":\"Reprehenderit sint ipsam quo quos earum.\"}', 17.73, 18, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(48, '{\"en\":\"20m\"}', '{\"en\":\"Eos sit et libero.\"}', 29.78, 13, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(49, '{\"en\":\"10m²\"}', '{\"en\":\"Magni vero beatae ex.\"}', 20.35, 20, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(50, '{\"en\":\"10m²\"}', '{\"en\":\"Sit pariatur veniam optio.\"}', 10.29, 29, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(51, '{\"en\":\"30m²\"}', '{\"en\":\"Voluptate quia commodi perspiciatis.\"}', 19.05, 29, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(52, '{\"en\":\"20m\"}', '{\"en\":\"Quia repellat porro dolor fugiat voluptatum.\"}', 39.42, 11, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(53, '{\"en\":\"40m\"}', '{\"en\":\"Veritatis quidem animi et error.\"}', 42.23, 15, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(54, '{\"en\":\"10m²\"}', '{\"en\":\"Dolorem ut quae accusamus fugiat.\"}', 15.41, 40, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(55, '{\"en\":\"20m\"}', '{\"en\":\"Et mollitia eveniet ut natus.\"}', 28.32, 39, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(56, '{\"en\":\"30m²\"}', '{\"en\":\"Dolor porro nulla amet in.\"}', 21.88, 34, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(57, '{\"en\":\"10m²\"}', '{\"en\":\"Laborum impedit excepturi omnis voluptatum quo.\"}', 15.62, 33, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(58, '{\"en\":\"30m²\"}', '{\"en\":\"Quis error et voluptas sunt rerum.\"}', 10.49, 28, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(59, '{\"en\":\"20m\"}', '{\"en\":\"Quasi sit assumenda sunt est.\"}', 33.43, 16, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(60, '{\"en\":\"10m²\"}', '{\"en\":\"Aut rerum eos dolorem.\"}', 49.76, 39, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(61, '{\"en\":\"40m\"}', '{\"en\":\"Et consequatur saepe ea est quasi.\"}', 12.55, 24, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(62, '{\"en\":\"10m²\"}', '{\"en\":\"Voluptatem qui magni ipsa.\"}', 43.63, 23, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(63, '{\"en\":\"10m²\"}', '{\"en\":\"Sit sit provident illum dolores excepturi.\"}', 31.23, 38, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(64, '{\"en\":\"20m\"}', '{\"en\":\"Pariatur odio voluptatem.\"}', 16.71, 40, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(65, '{\"en\":\"10m²\"}', '{\"en\":\"Quia consectetur cupiditate harum modi repellat.\"}', 25.44, 3, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(66, '{\"en\":\"30m²\"}', '{\"en\":\"Voluptatem eveniet veritatis.\"}', 13.65, 39, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(67, '{\"en\":\"30m²\"}', '{\"en\":\"Ipsam veniam ex eos ut et.\"}', 19.01, 14, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(68, '{\"en\":\"40m\"}', '{\"en\":\"Nulla aliquam dolorum soluta.\"}', 42.36, 20, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(69, '{\"en\":\"20m\"}', '{\"en\":\"Beatae voluptatem est ex.\"}', 13.69, 30, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(70, '{\"en\":\"40m\"}', '{\"en\":\"Impedit sed ut eaque explicabo sit.\"}', 16.36, 3, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(71, '{\"en\":\"40m\"}', '{\"en\":\"Explicabo perspiciatis corrupti qui voluptatibus.\"}', 10.34, 29, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(72, '{\"en\":\"10m²\"}', '{\"en\":\"Id ducimus vitae deserunt velit nihil.\"}', 12.59, 9, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(73, '{\"en\":\"30m²\"}', '{\"en\":\"Est vel quae omnis.\"}', 10.26, 39, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(74, '{\"en\":\"40m\"}', '{\"en\":\"Vitae et assumenda sit rerum qui.\"}', 21.29, 15, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(75, '{\"en\":\"30m²\"}', '{\"en\":\"Numquam voluptatem consequuntur dolore.\"}', 33.38, 14, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(76, '{\"en\":\"30m²\"}', '{\"en\":\"Maxime dolores minima rerum.\"}', 21.53, 24, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(77, '{\"en\":\"40m\"}', '{\"en\":\"Ea non eveniet pariatur omnis.\"}', 35.07, 29, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(78, '{\"en\":\"20m\"}', '{\"en\":\"Esse molestias esse et ut.\"}', 22.90, 15, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(79, '{\"en\":\"10m²\"}', '{\"en\":\"Et eveniet laudantium tempore neque expedita.\"}', 11.84, 15, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(80, '{\"en\":\"10m²\"}', '{\"en\":\"Eveniet libero et atque.\"}', 12.71, 39, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(81, '{\"en\":\"20m\"}', '{\"en\":\"Quia atque voluptatem omnis.\"}', 16.98, 39, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(82, '{\"en\":\"20m\"}', '{\"en\":\"Delectus est quia commodi ipsum.\"}', 16.78, 18, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(83, '{\"en\":\"20m\"}', '{\"en\":\"Et reiciendis fugiat enim velit.\"}', 24.47, 11, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(84, '{\"en\":\"10m²\"}', '{\"en\":\"Molestias recusandae unde esse aut.\"}', 44.37, 20, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(85, '{\"en\":\"20m\"}', '{\"en\":\"Voluptas quae voluptatem numquam magni.\"}', 14.79, 8, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(86, '{\"en\":\"20m\"}', '{\"en\":\"Et eligendi eius et est.\"}', 35.24, 31, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(87, '{\"en\":\"30m²\"}', '{\"en\":\"Voluptatem quia vel.\"}', 12.82, 19, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(88, '{\"en\":\"10m²\"}', '{\"en\":\"Voluptatem commodi iure non.\"}', 30.17, 30, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(89, '{\"en\":\"40m\"}', '{\"en\":\"Animi sed eveniet.\"}', 32.29, 34, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(90, '{\"en\":\"20m\"}', '{\"en\":\"Dolorum mollitia rerum dicta ea natus.\"}', 29.84, 11, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(91, '{\"en\":\"30m²\"}', '{\"en\":\"Quia doloribus eaque voluptas corporis.\"}', 21.12, 4, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(92, '{\"en\":\"10m²\"}', '{\"en\":\"Maiores facere quisquam hic et ut.\"}', 19.21, 21, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(93, '{\"en\":\"30m²\"}', '{\"en\":\"Odio quis modi commodi omnis possimus.\"}', 14.87, 34, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(94, '{\"en\":\"20m\"}', '{\"en\":\"Consequatur et et qui quo aliquid.\"}', 20.27, 23, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(95, '{\"en\":\"30m²\"}', '{\"en\":\"Ipsum sint beatae quia dignissimos.\"}', 36.33, 31, 2, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(96, '{\"en\":\"40m\"}', '{\"en\":\"In harum autem quaerat officia.\"}', 25.41, 30, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(97, '{\"en\":\"30m²\"}', '{\"en\":\"Vel sunt non tempore culpa quo.\"}', 45.15, 31, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(98, '{\"en\":\"30m²\"}', '{\"en\":\"Nulla porro eos labore et.\"}', 15.88, 14, 3, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(99, '{\"en\":\"30m²\"}', '{\"en\":\"Quam voluptates explicabo omnis.\"}', 38.05, 3, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(100, '{\"en\":\"20m\"}', '{\"en\":\"Voluptatibus consequatur quia.\"}', 26.31, 33, 1, '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

DROP TABLE IF EXISTS `option_groups`;
CREATE TABLE IF NOT EXISTS `option_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `allow_multiple`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2021-01-22 13:49:15', '2021-02-07 14:30:19'),
(2, 'Area', 1, '2021-01-22 14:46:28', '2021-01-22 14:46:28'),
(3, 'Surface', 0, '2021-01-22 14:46:47', '2021-01-22 14:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `payment_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`),
  KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  KEY `payments_payment_status_id_foreign` (`payment_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `route` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `route`, `order`, `default`, `enabled`, `created_at`, `updated_at`) VALUES
(2, 'RazorPay', 'Click to pay with RazorPay gateway', '/RazorPay', 2, 0, 1, '2021-01-17 08:33:49', '2021-02-17 16:37:30'),
(5, 'PayPal', 'Click to pay with your PayPal account', '/PayPal', 1, 0, 1, '2021-01-17 09:46:06', '2021-02-17 16:38:47'),
(6, 'Cash', 'Click to pay cash when finish', '/Cash', 3, 1, 1, '2021-02-17 16:38:42', '2021-02-17 16:38:42'),
(7, 'Credit Card (Stripe)', 'Click to pay with your Credit Card', '/Stripe', 3, 0, 1, '2021-02-17 16:38:42', '2021-02-17 16:38:42'),
(8, 'PayStack', 'Click to pay with PayStack gateway', '/PayStack', 5, 0, 1, '2021-07-23 16:38:42', '2021-07-23 16:38:42'),
(9, 'FlutterWave', 'Click to pay with FlutterWave gateway', '/FlutterWave', 6, 0, 1, '2021-07-23 16:38:42', '2021-07-23 16:38:42'),
(10, 'Malaysian Stripe FPX	', 'Click to pay with Stripe FPX gateway', '/StripeFPX', 7, 0, 1, '2021-07-24 16:38:42', '2021-07-24 16:38:42'),
(11, 'Wallet', 'Click to pay with Wallet', '/Wallet', 8, 0, 1, '2021-08-08 16:38:42', '2021-08-08 16:38:42'),
(12, 'PayMongo', 'Click to pay with PayMongo', '/PayMongo', 12, 0, 1, '2021-10-08 16:38:42', '2021-10-08 16:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

DROP TABLE IF EXISTS `payment_statuses`;
CREATE TABLE IF NOT EXISTS `payment_statuses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` longtext COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2021-01-17 09:28:28', '2021-02-17 15:55:15'),
(2, 'Paid', 10, '2021-01-11 17:19:49', '2021-02-17 15:55:53'),
(3, 'Failed', 20, '2021-01-17 08:05:04', '2021-02-17 15:56:32'),
(4, 'Refunded', 40, '2021-02-17 15:58:14', '2021-02-17 15:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2021-01-07 07:17:34', '2021-01-07 07:17:34'),
(2, 'medias.create', 'web', '2021-01-07 07:17:35', '2021-01-07 07:17:35'),
(3, 'users.profile', 'web', '2021-01-07 07:17:35', '2021-01-07 07:17:35'),
(4, 'users.index', 'web', '2021-01-07 07:17:35', '2021-01-07 07:17:35'),
(5, 'users.create', 'web', '2021-01-07 07:17:35', '2021-01-07 07:17:35'),
(6, 'users.store', 'web', '2021-01-07 07:17:35', '2021-01-07 07:17:35'),
(7, 'users.show', 'web', '2021-01-07 07:17:35', '2021-01-07 07:17:35'),
(8, 'users.edit', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(9, 'users.update', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(10, 'users.destroy', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(11, 'medias.delete', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(12, 'medias', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(13, 'permissions.index', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(14, 'permissions.create', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(15, 'permissions.store', 'web', '2021-01-07 07:17:36', '2021-01-07 07:17:36'),
(16, 'permissions.show', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(17, 'permissions.edit', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(18, 'permissions.update', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(19, 'permissions.destroy', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(20, 'roles.index', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(21, 'roles.create', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(22, 'roles.store', 'web', '2021-01-07 07:17:37', '2021-01-07 07:17:37'),
(23, 'roles.show', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(24, 'roles.edit', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(25, 'roles.update', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(26, 'roles.destroy', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(27, 'customFields.index', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(28, 'customFields.create', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(29, 'customFields.store', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(30, 'customFields.show', 'web', '2021-01-07 07:17:38', '2021-01-07 07:17:38'),
(31, 'customFields.edit', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(32, 'customFields.update', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(33, 'customFields.destroy', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(34, 'currencies.index', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(35, 'currencies.create', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(36, 'currencies.store', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(37, 'currencies.edit', 'web', '2021-01-07 07:17:39', '2021-01-07 07:17:39'),
(38, 'currencies.update', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(39, 'currencies.destroy', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(40, 'users.login-as-user', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(41, 'app-settings', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(42, 'faqCategories.index', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(43, 'faqCategories.create', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(44, 'faqCategories.store', 'web', '2021-01-07 07:17:40', '2021-01-07 07:17:40'),
(45, 'faqCategories.edit', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(46, 'faqCategories.update', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(47, 'faqCategories.destroy', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(48, 'faqs.index', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(49, 'faqs.create', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(50, 'faqs.store', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(51, 'faqs.edit', 'web', '2021-01-07 07:17:41', '2021-01-07 07:17:41'),
(52, 'faqs.update', 'web', '2021-01-07 07:17:42', '2021-01-07 07:17:42'),
(53, 'faqs.destroy', 'web', '2021-01-07 07:17:42', '2021-01-07 07:17:42'),
(54, 'payments.index', 'web', '2021-01-10 18:04:33', '2021-01-10 18:04:33'),
(55, 'payments.show', 'web', '2021-01-10 18:04:33', '2021-01-10 18:04:33'),
(56, 'payments.update', 'web', '2021-01-10 18:04:33', '2021-01-10 18:04:33'),
(57, 'paymentMethods.index', 'web', '2021-01-10 18:04:33', '2021-01-10 18:04:33'),
(58, 'paymentMethods.create', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(59, 'paymentMethods.store', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(60, 'paymentMethods.edit', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(61, 'paymentMethods.update', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(62, 'paymentMethods.destroy', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(63, 'paymentStatuses.index', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(64, 'paymentStatuses.create', 'web', '2021-01-10 18:04:34', '2021-01-10 18:04:34'),
(65, 'paymentStatuses.store', 'web', '2021-01-10 18:04:35', '2021-01-10 18:04:35'),
(66, 'paymentStatuses.edit', 'web', '2021-01-10 18:04:35', '2021-01-10 18:04:35'),
(67, 'paymentStatuses.update', 'web', '2021-01-10 18:04:35', '2021-01-10 18:04:35'),
(68, 'paymentStatuses.destroy', 'web', '2021-01-10 18:04:35', '2021-01-10 18:04:35'),
(69, 'verification.notice', 'web', '2021-01-12 04:19:50', '2021-01-12 04:19:50'),
(70, 'verification.verify', 'web', '2021-01-12 04:19:50', '2021-01-12 04:19:50'),
(71, 'verification.resend', 'web', '2021-01-12 04:19:51', '2021-01-12 04:19:51'),
(72, 'awards.index', 'web', '2021-01-12 04:19:51', '2021-01-12 04:19:51'),
(73, 'awards.create', 'web', '2021-01-12 04:19:52', '2021-01-12 04:19:52'),
(74, 'awards.store', 'web', '2021-01-12 04:19:52', '2021-01-12 04:19:52'),
(75, 'awards.show', 'web', '2021-01-12 04:19:52', '2021-01-12 04:19:52'),
(76, 'awards.edit', 'web', '2021-01-12 04:19:52', '2021-01-12 04:19:52'),
(77, 'awards.update', 'web', '2021-01-12 04:19:52', '2021-01-12 04:19:52'),
(78, 'awards.destroy', 'web', '2021-01-12 04:19:52', '2021-01-12 04:19:52'),
(79, 'experiences.index', 'web', '2021-01-12 05:20:29', '2021-01-12 05:20:29'),
(80, 'experiences.create', 'web', '2021-01-12 05:20:29', '2021-01-12 05:20:29'),
(81, 'experiences.store', 'web', '2021-01-12 05:20:30', '2021-01-12 05:20:30'),
(82, 'experiences.show', 'web', '2021-01-12 05:20:30', '2021-01-12 05:20:30'),
(83, 'experiences.edit', 'web', '2021-01-12 05:20:30', '2021-01-12 05:20:30'),
(84, 'experiences.update', 'web', '2021-01-12 05:20:30', '2021-01-12 05:20:30'),
(85, 'experiences.destroy', 'web', '2021-01-12 05:20:30', '2021-01-12 05:20:30'),
(92, 'eProviderTypes.index', 'web', '2021-01-13 05:31:08', '2021-01-13 05:31:08'),
(93, 'eProviderTypes.create', 'web', '2021-01-13 05:31:09', '2021-01-13 05:31:09'),
(94, 'eProviderTypes.store', 'web', '2021-01-13 05:31:09', '2021-01-13 05:31:09'),
(95, 'eProviderTypes.edit', 'web', '2021-01-13 05:31:09', '2021-01-13 05:31:09'),
(96, 'eProviderTypes.update', 'web', '2021-01-13 05:31:09', '2021-01-13 05:31:09'),
(97, 'eProviderTypes.destroy', 'web', '2021-01-13 05:31:09', '2021-01-13 05:31:09'),
(98, 'eProviders.index', 'web', '2021-01-13 05:48:55', '2021-01-13 05:48:55'),
(99, 'eProviders.create', 'web', '2021-01-13 05:48:56', '2021-01-13 05:48:56'),
(100, 'eProviders.store', 'web', '2021-01-13 05:48:56', '2021-01-13 05:48:56'),
(101, 'eProviders.edit', 'web', '2021-01-13 05:48:56', '2021-01-13 05:48:56'),
(102, 'eProviders.update', 'web', '2021-01-13 05:48:56', '2021-01-13 05:48:56'),
(103, 'eProviders.destroy', 'web', '2021-01-13 05:48:56', '2021-01-13 05:48:56'),
(104, 'addresses.index', 'web', '2021-01-13 05:48:56', '2021-01-13 05:48:56'),
(105, 'addresses.create', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(106, 'addresses.store', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(107, 'addresses.edit', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(108, 'addresses.update', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(109, 'addresses.destroy', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(110, 'taxes.index', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(111, 'taxes.create', 'web', '2021-01-13 05:48:57', '2021-01-13 05:48:57'),
(112, 'taxes.store', 'web', '2021-01-13 05:48:58', '2021-01-13 05:48:58'),
(113, 'taxes.edit', 'web', '2021-01-13 05:48:58', '2021-01-13 05:48:58'),
(114, 'taxes.update', 'web', '2021-01-13 05:48:58', '2021-01-13 05:48:58'),
(115, 'taxes.destroy', 'web', '2021-01-13 05:48:58', '2021-01-13 05:48:58'),
(116, 'availabilityHours.index', 'web', '2021-01-16 10:14:21', '2021-01-16 10:14:21'),
(117, 'availabilityHours.create', 'web', '2021-01-16 10:14:21', '2021-01-16 10:14:21'),
(118, 'availabilityHours.store', 'web', '2021-01-16 10:14:21', '2021-01-16 10:14:21'),
(119, 'availabilityHours.edit', 'web', '2021-01-16 10:14:21', '2021-01-16 10:14:21'),
(120, 'availabilityHours.update', 'web', '2021-01-16 10:14:22', '2021-01-16 10:14:22'),
(121, 'availabilityHours.destroy', 'web', '2021-01-16 10:14:22', '2021-01-16 10:14:22'),
(122, 'eServices.index', 'web', '2021-01-19 08:03:00', '2021-01-19 08:03:00'),
(123, 'eServices.create', 'web', '2021-01-19 08:03:00', '2021-01-19 08:03:00'),
(124, 'eServices.store', 'web', '2021-01-19 08:03:00', '2021-01-19 08:03:00'),
(126, 'eServices.edit', 'web', '2021-01-19 08:03:01', '2021-01-19 08:03:01'),
(127, 'eServices.update', 'web', '2021-01-19 08:03:01', '2021-01-19 08:03:01'),
(128, 'eServices.destroy', 'web', '2021-01-19 08:03:01', '2021-01-19 08:03:01'),
(129, 'categories.index', 'web', '2021-01-19 08:08:55', '2021-01-19 08:08:55'),
(130, 'categories.create', 'web', '2021-01-19 08:08:55', '2021-01-19 08:08:55'),
(131, 'categories.store', 'web', '2021-01-19 08:08:55', '2021-01-19 08:08:55'),
(132, 'categories.edit', 'web', '2021-01-19 08:08:55', '2021-01-19 08:08:55'),
(133, 'categories.update', 'web', '2021-01-19 08:08:56', '2021-01-19 08:08:56'),
(134, 'categories.destroy', 'web', '2021-01-19 08:08:56', '2021-01-19 08:08:56'),
(135, 'optionGroups.index', 'web', '2021-01-22 13:48:32', '2021-01-22 13:48:32'),
(136, 'optionGroups.create', 'web', '2021-01-22 13:48:32', '2021-01-22 13:48:32'),
(137, 'optionGroups.store', 'web', '2021-01-22 13:48:32', '2021-01-22 13:48:32'),
(138, 'optionGroups.edit', 'web', '2021-01-22 13:48:32', '2021-01-22 13:48:32'),
(139, 'optionGroups.update', 'web', '2021-01-22 13:48:32', '2021-01-22 13:48:32'),
(140, 'optionGroups.destroy', 'web', '2021-01-22 13:48:32', '2021-01-22 13:48:32'),
(141, 'options.index', 'web', '2021-01-22 14:10:51', '2021-01-22 14:10:51'),
(142, 'options.create', 'web', '2021-01-22 14:10:51', '2021-01-22 14:10:51'),
(143, 'options.store', 'web', '2021-01-22 14:10:52', '2021-01-22 14:10:52'),
(144, 'options.edit', 'web', '2021-01-22 14:10:52', '2021-01-22 14:10:52'),
(145, 'options.update', 'web', '2021-01-22 14:10:52', '2021-01-22 14:10:52'),
(146, 'options.destroy', 'web', '2021-01-22 14:10:52', '2021-01-22 14:10:52'),
(147, 'favorites.index', 'web', '2021-01-22 15:01:13', '2021-01-22 15:01:13'),
(148, 'favorites.create', 'web', '2021-01-22 15:01:13', '2021-01-22 15:01:13'),
(149, 'favorites.store', 'web', '2021-01-22 15:01:13', '2021-01-22 15:01:13'),
(150, 'favorites.edit', 'web', '2021-01-22 15:01:13', '2021-01-22 15:01:13'),
(151, 'favorites.update', 'web', '2021-01-22 15:01:13', '2021-01-22 15:01:13'),
(152, 'favorites.destroy', 'web', '2021-01-22 15:01:13', '2021-01-22 15:01:13'),
(153, 'eServiceReviews.index', 'web', '2021-01-23 13:42:57', '2021-01-23 13:42:57'),
(154, 'eServiceReviews.create', 'web', '2021-01-23 13:42:58', '2021-01-23 13:42:58'),
(155, 'eServiceReviews.store', 'web', '2021-01-23 13:42:58', '2021-01-23 13:42:58'),
(156, 'eServiceReviews.edit', 'web', '2021-01-23 13:42:58', '2021-01-23 13:42:58'),
(157, 'eServiceReviews.update', 'web', '2021-01-23 13:42:58', '2021-01-23 13:42:58'),
(158, 'eServiceReviews.destroy', 'web', '2021-01-23 13:42:58', '2021-01-23 13:42:58'),
(160, 'galleries.index', 'web', '2021-01-23 14:17:46', '2021-01-23 14:17:46'),
(161, 'galleries.create', 'web', '2021-01-23 14:17:47', '2021-01-23 14:17:47'),
(162, 'galleries.store', 'web', '2021-01-23 14:17:47', '2021-01-23 14:17:47'),
(163, 'galleries.edit', 'web', '2021-01-23 14:17:47', '2021-01-23 14:17:47'),
(164, 'galleries.update', 'web', '2021-01-23 14:17:47', '2021-01-23 14:17:47'),
(165, 'galleries.destroy', 'web', '2021-01-23 14:17:47', '2021-01-23 14:17:47'),
(166, 'requestedEProviders.index', 'web', '2021-01-25 03:53:17', '2021-01-25 03:53:17'),
(167, 'slides.index', 'web', '2021-01-25 05:01:20', '2021-01-25 05:01:20'),
(168, 'slides.create', 'web', '2021-01-25 05:01:20', '2021-01-25 05:01:20'),
(169, 'slides.store', 'web', '2021-01-25 05:01:20', '2021-01-25 05:01:20'),
(170, 'slides.edit', 'web', '2021-01-25 05:01:20', '2021-01-25 05:01:20'),
(171, 'slides.update', 'web', '2021-01-25 05:01:20', '2021-01-25 05:01:20'),
(172, 'slides.destroy', 'web', '2021-01-25 05:01:20', '2021-01-25 05:01:20'),
(173, 'notifications.index', 'web', '2021-01-25 09:42:33', '2021-01-25 09:42:33'),
(174, 'notifications.show', 'web', '2021-01-25 09:42:34', '2021-01-25 09:42:34'),
(175, 'notifications.destroy', 'web', '2021-01-25 09:42:34', '2021-01-25 09:42:34'),
(176, 'coupons.index', 'web', '2021-01-25 10:11:55', '2021-01-25 10:11:55'),
(177, 'coupons.create', 'web', '2021-01-25 10:11:55', '2021-01-25 10:11:55'),
(178, 'coupons.store', 'web', '2021-01-25 10:11:55', '2021-01-25 10:11:55'),
(179, 'coupons.edit', 'web', '2021-01-25 10:11:55', '2021-01-25 10:11:55'),
(180, 'coupons.update', 'web', '2021-01-25 10:11:55', '2021-01-25 10:11:55'),
(181, 'coupons.destroy', 'web', '2021-01-25 10:11:55', '2021-01-25 10:11:55'),
(182, 'bookingStatuses.index', 'web', '2021-01-25 13:21:01', '2021-01-25 13:21:01'),
(183, 'bookingStatuses.create', 'web', '2021-01-25 13:21:01', '2021-01-25 13:21:01'),
(184, 'bookingStatuses.store', 'web', '2021-01-25 13:21:01', '2021-01-25 13:21:01'),
(185, 'bookingStatuses.edit', 'web', '2021-01-25 13:21:01', '2021-01-25 13:21:01'),
(186, 'bookingStatuses.update', 'web', '2021-01-25 13:21:01', '2021-01-25 13:21:01'),
(187, 'bookingStatuses.destroy', 'web', '2021-01-25 13:21:01', '2021-01-25 13:21:01'),
(188, 'bookings.index', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(189, 'bookings.create', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(190, 'bookings.store', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(191, 'bookings.show', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(192, 'bookings.edit', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(193, 'bookings.update', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(194, 'bookings.destroy', 'web', '2021-01-25 15:27:09', '2021-01-25 15:27:09'),
(195, 'eProviderPayouts.index', 'web', '2021-01-30 05:23:08', '2021-01-30 05:23:08'),
(196, 'eProviderPayouts.create', 'web', '2021-01-30 05:23:08', '2021-01-30 05:23:08'),
(197, 'eProviderPayouts.store', 'web', '2021-01-30 05:23:08', '2021-01-30 05:23:08'),
(198, 'eProviderPayouts.destroy', 'web', '2021-01-30 05:23:09', '2021-01-30 05:23:09'),
(199, 'earnings.index', 'web', '2021-01-30 07:57:57', '2021-01-30 07:57:57'),
(200, 'earnings.create', 'web', '2021-01-30 07:57:57', '2021-01-30 07:57:57'),
(201, 'earnings.store', 'web', '2021-01-30 07:57:57', '2021-01-30 07:57:57'),
(202, 'earnings.destroy', 'web', '2021-01-30 07:57:57', '2021-01-30 07:57:57'),
(203, 'customPages.index', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(204, 'customPages.create', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(205, 'customPages.store', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(206, 'customPages.show', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(207, 'customPages.edit', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(208, 'customPages.update', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(209, 'customPages.destroy', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(210, 'wallets.index', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(211, 'wallets.create', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(212, 'wallets.store', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(213, 'wallets.update', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(214, 'wallets.edit', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(215, 'wallets.destroy', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(216, 'walletTransactions.index', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(217, 'walletTransactions.create', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(218, 'walletTransactions.store', 'web', '2021-02-24 05:37:44', '2021-02-24 05:37:44'),
(219, 'modules.update', 'web', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(220, 'modules.install', 'web', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(221, 'modules.index', 'web', '2022-11-03 05:39:00', '2022-11-03 05:39:00'),
(222, 'modules.enable', 'web', '2022-11-03 05:39:00', '2022-11-03 05:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', 0, NULL, NULL),
(3, 'provider', 'web', 0, NULL, NULL),
(4, 'customer', 'web', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(2, 3),
(2, 4),
(3, 2),
(3, 3),
(3, 4),
(4, 2),
(5, 2),
(6, 2),
(8, 2),
(9, 2),
(9, 3),
(9, 4),
(10, 2),
(11, 2),
(11, 3),
(11, 4),
(12, 2),
(12, 3),
(13, 2),
(16, 2),
(19, 2),
(20, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(42, 4),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 4),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(54, 3),
(54, 4),
(57, 2),
(57, 3),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(66, 2),
(67, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(72, 3),
(73, 2),
(73, 3),
(74, 2),
(74, 3),
(75, 2),
(75, 3),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(79, 2),
(79, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(84, 2),
(84, 3),
(85, 2),
(85, 3),
(92, 2),
(92, 3),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(99, 2),
(99, 3),
(99, 4),
(100, 2),
(100, 3),
(100, 4),
(101, 2),
(101, 3),
(102, 2),
(102, 3),
(103, 2),
(104, 2),
(104, 3),
(104, 4),
(105, 2),
(105, 3),
(105, 4),
(106, 2),
(106, 3),
(106, 4),
(107, 2),
(107, 3),
(107, 4),
(108, 2),
(108, 3),
(108, 4),
(109, 2),
(109, 3),
(109, 4),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(116, 3),
(117, 2),
(117, 3),
(118, 2),
(118, 3),
(119, 2),
(119, 3),
(120, 2),
(120, 3),
(121, 2),
(121, 3),
(122, 2),
(122, 3),
(122, 4),
(123, 2),
(123, 3),
(124, 2),
(124, 3),
(126, 2),
(126, 3),
(127, 2),
(127, 3),
(128, 2),
(128, 3),
(129, 2),
(129, 3),
(129, 4),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(135, 3),
(136, 2),
(136, 3),
(137, 2),
(137, 3),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(141, 3),
(142, 2),
(142, 3),
(143, 2),
(143, 3),
(144, 2),
(144, 3),
(145, 2),
(145, 3),
(146, 2),
(146, 3),
(147, 2),
(147, 3),
(147, 4),
(148, 2),
(149, 2),
(149, 3),
(150, 2),
(151, 2),
(151, 3),
(152, 2),
(153, 2),
(153, 3),
(153, 4),
(156, 2),
(156, 3),
(156, 4),
(157, 2),
(157, 3),
(157, 4),
(158, 2),
(160, 2),
(160, 3),
(161, 2),
(161, 3),
(162, 2),
(162, 3),
(163, 2),
(163, 3),
(164, 2),
(164, 3),
(165, 2),
(165, 3),
(166, 2),
(166, 3),
(166, 4),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(173, 3),
(173, 4),
(174, 2),
(175, 2),
(175, 3),
(175, 4),
(176, 2),
(176, 3),
(177, 2),
(178, 2),
(179, 2),
(179, 3),
(180, 2),
(180, 3),
(181, 2),
(182, 2),
(182, 3),
(185, 2),
(186, 2),
(188, 2),
(188, 3),
(188, 4),
(191, 2),
(191, 3),
(191, 4),
(192, 2),
(192, 3),
(193, 2),
(193, 3),
(194, 2),
(194, 3),
(195, 2),
(195, 3),
(196, 2),
(196, 3),
(197, 2),
(197, 3),
(199, 2),
(199, 3),
(200, 2),
(200, 3),
(203, 2),
(203, 3),
(203, 4),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(210, 3),
(210, 4),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(216, 3),
(216, 4),
(217, 2),
(218, 2),
(219, 2),
(220, 2),
(221, 2),
(222, 2);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order` int(10) UNSIGNED DEFAULT '0',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `button` longtext COLLATE utf8mb4_unicode_ci,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `e_service_id` int(10) UNSIGNED DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slides_e_service_id_foreign` (`e_service_id`),
  KEY `slides_e_provider_id_foreign` (`e_provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `e_service_id`, `e_provider_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 1, 'Assign a Handyman at Work to Fix the Household', 'Discover It', 'bottom_start', '#333333', '#009E6A', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 05:51:45', '2021-01-31 05:08:13'),
(2, 2, 'Fix the Broken Stuff by Asking for the Technicians', 'Repair', 'bottom_start', '#333333', '#F4841F', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 08:23:49', '2021-01-31 05:03:05'),
(3, 3, 'Add Hands to Your Cleaning Chores', 'Book Now', 'bottom_start', '#333333', '#1FA3F4', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-31 05:04:36', '2021-01-31 05:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `value` double(10,2) NOT NULL DEFAULT '0.00',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tax 20', 20.00, 'percent', '2021-01-15 05:12:13', '2021-02-01 15:23:01'),
(2, 'Tax 10', 10.00, 'percent', '2021-01-15 05:19:30', '2021-01-15 05:19:30'),
(3, 'Maintenance', 2.00, 'fixed', '2021-01-18 14:48:29', '2021-02-01 15:25:13'),
(4, 'Tools Fee', 5.00, 'fixed', '2021-02-01 15:24:12', '2021-02-01 15:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `phone_verified_at`, `email_verified_at`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hyatt Zimmerman', 'admin@demo.com', '+1 234 8996 321', '2021-01-10 11:22:10', '2021-01-10 11:22:10', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', '', NULL, NULL, NULL, NULL, NULL, 'fU74kiNeDsPSli77nLRFboCEmUOuK57tpt9SGSczqnmlebqgOODfO8HXjYrb', NULL, '2021-02-09 10:50:32'),
(2, 'Jennifer Paul', 'provider@demo.com', '+1 234 8996 322', '2021-01-10 11:22:10', '2021-01-10 11:22:10', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', '', NULL, NULL, NULL, NULL, NULL, 'TwyKlf5NJ0oG6l5FfFhbCKsdRWrjF6HCunV8nZn2U9OXhJJTZ2Jxx4EqAJPA', NULL, '2021-02-28 11:06:55'),
(3, 'Germaine Guzman', 'customer@demo.com', '+1 234 8996 323', '2021-01-10 11:22:10', '2021-01-10 11:22:10', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', '', NULL, NULL, NULL, NULL, NULL, 'SPz6luq3aoxCbgIS1gqmFDgM1qzGlIDtF0HgmDbtWcx2reaeFcogcFQzdP2F', NULL, '2021-02-24 15:52:57'),
(4, 'Aimee Mcgee', 'provider1@demo.com', '+1 234 8996 324', '2021-01-10 11:22:10', '2021-01-10 11:22:10', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', '', NULL, NULL, NULL, NULL, NULL, 'yCzPqDP1oczySU57q6G71SxTIJSiZUBE4vYdXbXCqzpzC2iN09igcs3jzSQK', NULL, '2021-02-21 08:50:29'),
(5, 'Josephine Harding', 'customer3@demo.com', NULL, NULL, NULL, '$2y$10$n/06hZG121ZGp3tSwDQS3uhsQKxEYspjKrn7kGlLxRinUZKiulrEm', 'gkEWScQHIol9EIRhP3m5m7JqnK5UvcGdEsKQJo7YeBcQawYFq3JAJ6SX9UKy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 04:55:52', '2021-02-02 05:29:47'),
(6, 'Nicolette Christiansen', 'provider2@demo.com', NULL, NULL, '2021-01-10 18:00:00', '$2y$04$WRpHC9iMxZ3f.gctQ4igsuZjsYfGjX7igVM8GsC2AMME3.4au3dYu', 'TKArYDDFHNiEI33sfExaBEhxHCs5kFaWP7EO6aNlUZfnqHrvsMCwsYeAk9s2', NULL, NULL, NULL, NULL, NULL, NULL, 'JbiYaHlRWGKkfITxH9qI87GzTMPf0zJ2Iw6NIdlS5dDvWuT5PC2sP5ELGwKx', '2021-01-11 05:33:59', '2021-02-02 05:30:56'),
(7, 'Rose Bauer', 'customer2@demo.com', NULL, NULL, NULL, '$2y$10$3GhoIShzRdSXevYAh1NF/.67J3OshX9D2.sqY50o8kxh7EXPw7tuC', 'w6QJYqZyllY24AIR3nSsKqgj5eMSZevmgpSywwxJxUS9nwULcuriRLBxEXZC', '', NULL, NULL, NULL, NULL, NULL, 'WxYP9zjTBy9SYF5OWjcFbMt2Ob9r0bahBKzPDOtw9OrAJ89JqaMxkN5aqu8J', '2021-01-17 10:13:24', '2021-02-28 12:03:25'),
(8, 'smarter8', 'smartersvision@gmail.com', '+12645595482', NULL, NULL, '$2y$10$MqPMTfg6RUNxxEH6aLdqnOYZUBsT7xtxkglD74pDgThV52.HJrLba', 'WivbG2oAEbEGl51EBeBuHaZeCqyfBnCVGo18nSaj2FwwiDjux2ZOAZWUoddK', '', NULL, NULL, NULL, NULL, NULL, 'SdstZCaeYW0pjqZn832HMzBD7WPGJ5m9hwWG28nhbIrzSS0etj33rbTRJ6kD', '2021-02-10 05:31:12', '2021-02-23 14:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
CREATE TABLE IF NOT EXISTS `wallets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double(16,2) NOT NULL DEFAULT '0.00',
  `currency` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `name`, `balance`, `currency`, `user_id`, `enabled`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 'My USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 1, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 'Home USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 2, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 'Work USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 3, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 'Dummy USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 4, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 'Old USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 5, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 'New USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 6, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 'USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 7, 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 'Dollar Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 8, 1, '2021-01-07 07:17:34', '2021-01-07 07:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
CREATE TABLE IF NOT EXISTS `wallet_transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('credit','debit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`),
  KEY `wallet_transactions_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `amount`, `description`, `action`, `wallet_id`, `user_id`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '01194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '02194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '03194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '04194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '05194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '06194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '07194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '8d194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 07:17:34', '2021-08-07 07:17:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
