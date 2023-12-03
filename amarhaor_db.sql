-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 04, 2023 at 12:51 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amarhaor`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_logs`
--

CREATE TABLE `auth_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_haor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `area`, `total_haor`, `header_img`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sunamganj', '24,456 Hec', '105', 'uploads/images/dc932789bd09d8369c712179b9c17ae8.jpeg', '<p>A scenic place full of beautiful haors, serene rivers, and culturally diverse monuments, Sunamganj, situated in the Sylhet division of north-eastern Bangladesh, is a place that travel enthusiasts will fall in love with. Whether you want to go for a single day tour or take your time to visit the beautiful places spread around the district, we recommend these 6 places to be part of your next travel itinerary.</p>\r\n', '2023-10-31 03:59:12', '2023-11-01 23:54:58'),
(2, 'Sylhet', '24,456 Hec', '95', 'uploads/images/e058aeabd4156477d7d9b2618a4f4ee6.jpeg', '<p>A scenic place full of beautiful haors, serene rivers, and culturally diverse monuments, Sunamganj, situated in the Sylhet division of north-eastern Bangladesh, is a place that travel enthusiasts will fall in love with. Whether you want to go for a single day tour or take your time to visit the beautiful places spread around the district, we recommend these 6 places to be part of your next travel itinerary.</p>\r\n', '2023-10-31 03:59:19', '2023-11-01 23:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(6) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `gallery_category_id` int(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `haors`
--

CREATE TABLE `haors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_img_big` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8_unicode_ci,
  `about` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `gallery_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `haors`
--

INSERT INTO `haors` (`id`, `district_id`, `upazila_id`, `name`, `area`, `thumb_img`, `thumb_img_big`, `header_img`, `overview`, `about`, `description`, `gallery_items`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Tangua Haor', '24,456 Hec', 'uploads/images/9fd5e6b7d641c0eb4abaed2aec6f7b19.jpeg', NULL, 'uploads/images/6121617286d472b28c11a399b45f467c.jpeg', 'Bishwambarpur, where the waterline blends with the high green hills of Meghalaya, is visited by almost 30 kinds of migratory wild ducks every year. You can easily hire a dinghy from the local villages and enjoy the scenic, feathery beauty', '<h3>ABOUT</h3>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus.</p>\r\n\r\n<h3>DESIGNATIONS</h3>\r\n\r\n<ul>\r\n	<li>Official name: Tanguar Haor</li>\r\n	<li>Designated: 10 June 2000</li>\r\n	<li>Reference no.1031</li>\r\n</ul>\r\n\r\n<h3>LOCATION</h3>\r\n\r\n<p>Dharmpasha - Tahirpur Road, 3030</p>\r\n\r\n<h3>AREA</h3>\r\n\r\n<p>The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n', '<h1>Geographic Information</h1>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tanguar Haor is a river basin which is located at the Tahirpur Upazila of Sunamgonj district in Sylhet Division. Its takes roughly 6-7 hours to reach here from Dhaka. After getting off at the Surma Bridge just off the Bus station, you need to hire a bike or a CNG Taxi to get yourself at Tahirpur. From Tahirpur you can hire boat and enjoy the beauty of Haor.</p>\r\n\r\n<p>Tangua is one of the finest places in the world to enjoy the perfect sunset and the sunrise.</p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tanguar Haor is a river basin which is located at the Tahirpur Upazila of Sunamgonj district in Sylhet Division. Its takes roughly 6-7 hours to reach here from Dhaka. After getting off at the Surma Bridge just off the Bus station, you need to hire a bike or a CNG Taxi to get yourself at Tahirpur. From Tahirpur you can hire boat and enjoy the beauty of Haor.</p>\r\n\r\n<hr />\r\n<h1>Conservation efforts</h1>\r\n\r\n<p>Tangua is one of the finest places in the world to enjoy the perfect sunset and the sunrise.</p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tangua is one of the finest places in the world to enjoy the perfect sunset and the sunrise.</p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tangua is one of the finest places in the world to enjoy the perfect sunset and the sunrise.</p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n', '[{\"image\":\"\\/uploads\\/images\\/33ef49c45a3cef3f398bbe6f86cb4515.jpeg\"},{\"image\":\"\\/uploads\\/images\\/b94d1e721ba485dc3b00fa0bf9ea1f5f.jpeg\"},{\"image\":\"\\/uploads\\/images\\/714962831dff7f9d836566d1fb03f388.jpeg\"},{\"image\":\"\\/uploads\\/images\\/892d19842532998d3382d71d204169a1.jpeg\"},{\"image\":\"\\/uploads\\/images\\/0a66065456e65c410ccedba33923714c.jpeg\"},{\"image\":\"\\/uploads\\/images\\/d99d4e35a6bd3f3588f480c8d39b576c.jpeg\"}]', '2023-10-31 04:00:25', '2023-11-01 23:59:11'),
(2, 1, 1, 'Chawlar Haor', NULL, 'uploads/images/1414f1b39540947e91f8b40ba8ac5ee9.jpeg', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"\"}]', '2023-10-31 04:00:38', '2023-11-01 23:59:32'),
(3, 1, 1, 'Jahidpur Haor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"\"}]', '2023-10-31 04:00:49', '2023-11-01 23:59:50'),
(4, 1, 1, 'Jaliar Haor', NULL, 'uploads/images/d3e2dc713f93e3133f0c6c9b49aa1923.jpeg', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"\"}]', '2023-11-01 03:26:10', '2023-11-02 00:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topbar_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topbar_menu_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `social_media_menu_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `topbar_telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mega_menu_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_top_hero_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_top_hero_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_top_hero_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_top_hero_video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_exploring_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_exploring_text` text COLLATE utf8_unicode_ci,
  `home_exploring_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_statistics_total_haors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_statistics_total_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_statistics_total_projects` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_featured_haors_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_featured_haors_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_featured_haors_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_featured_haors_view_all_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_haor_map_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_haor_map_text` text COLLATE utf8_unicode_ci,
  `home_haor_map_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_conservation_effects_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_conservation_effects_text` text COLLATE utf8_unicode_ci,
  `home_conservation_effects_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_summary_report_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_summary_report_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_summary_report_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_summary_report_view_all_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_recreation_tourism_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_recreation_tourism_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `home_gallery_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `statistics_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statistics_page_header_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statistics_page_overview` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statistics_page_content` text COLLATE utf8_unicode_ci,
  `statistics_page_right_content` text COLLATE utf8_unicode_ci,
  `travel_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travel_page_header_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travel_page_how_to_go_content` text COLLATE utf8_unicode_ci,
  `travel_page_how_to_go_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travel_page_where_to_stay_content` text COLLATE utf8_unicode_ci,
  `travel_page_where_to_stay_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resort_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resort_page_header_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resort_page_hotel_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `bird_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bird_page_header_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bird_page_overview` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bird_page_content` text COLLATE utf8_unicode_ci,
  `fish_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fish_page_header_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fish_page_overview` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fish_page_content` text COLLATE utf8_unicode_ci,
  `cookie_policy_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cookie_policy_content` text COLLATE utf8_unicode_ci,
  `privacy_policy_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy_content` text COLLATE utf8_unicode_ci,
  `terms_conditions_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions_content` text COLLATE utf8_unicode_ci,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_contact_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_link_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `footer_link_items_section2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `footer_copyright_text` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `topbar_logo`, `topbar_menu_items`, `social_media_menu_items`, `topbar_telephone`, `topbar_email`, `mega_menu_items`, `home_top_hero_title`, `home_top_hero_text`, `home_top_hero_image`, `home_top_hero_video_url`, `home_exploring_title`, `home_exploring_text`, `home_exploring_items`, `home_statistics_total_haors`, `home_statistics_total_area`, `home_statistics_total_projects`, `home_featured_haors_title`, `home_featured_haors_sub_title`, `home_featured_haors_items`, `home_featured_haors_view_all_url`, `home_haor_map_title`, `home_haor_map_text`, `home_haor_map_items`, `home_conservation_effects_title`, `home_conservation_effects_text`, `home_conservation_effects_items`, `home_summary_report_title`, `home_summary_report_sub_title`, `home_summary_report_items`, `home_summary_report_view_all_url`, `home_recreation_tourism_title`, `home_recreation_tourism_items`, `home_gallery_items`, `statistics_page_title`, `statistics_page_header_image`, `statistics_page_overview`, `statistics_page_content`, `statistics_page_right_content`, `travel_page_title`, `travel_page_header_image`, `travel_page_how_to_go_content`, `travel_page_how_to_go_image`, `travel_page_where_to_stay_content`, `travel_page_where_to_stay_image`, `resort_page_title`, `resort_page_header_image`, `resort_page_hotel_list`, `bird_page_title`, `bird_page_header_image`, `bird_page_overview`, `bird_page_content`, `fish_page_title`, `fish_page_header_image`, `fish_page_overview`, `fish_page_content`, `cookie_policy_title`, `cookie_policy_content`, `privacy_policy_title`, `privacy_policy_content`, `terms_conditions_title`, `terms_conditions_content`, `footer_logo`, `footer_text`, `footer_contact_address`, `footer_link_items`, `footer_link_items_section2`, `footer_copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'uploads/images/8bda149247c68a6b610965acf7e30902.png', '[{\"text\":\"List of Haors\",\"url\":\"#\"},{\"text\":\"Information\",\"url\":\"#\"},{\"text\":\"Toursim\",\"url\":\"#\"},{\"text\":\"Contact us\",\"url\":\"#\"}]', '[{\"icon\":\"fab fa-facebook-f\",\"url\":\"#\"},{\"icon\":\"fab fa-twitter\",\"url\":\"#\"},{\"icon\":\"fab fa-linkedin-in\",\"url\":\"#\"}]', '012-3589785', 'contact@amarhaor.bd', '[{\"image\":\"\\/uploads\\/images\\/e149f6809eb548ef563b3370e0d91211.jpeg\",\"title\":\"TANGUAR HAOR\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/f623a9d1217141b864ad76bf616824ea.jpeg\",\"title\":\"HAKALUKI HAOR\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/5adeb745190717771d323c2c6c209078.jpeg\",\"title\":\"TANGUAR HAOR\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/7375b83781d6935ae27af5cef928c309.jpeg\",\"title\":\"BISHWAMBARPUR\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/94a574a0e652468a0455eae95a608406.jpeg\",\"title\":\"CHHATAK\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/e149f6809eb548ef563b3370e0d91211.jpeg\",\"title\":\"TANGUAR HAOR\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/d916313d370e5e269ed3954d8af5c738.jpeg\",\"title\":\"NIKLI HAOR\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/e149f6809eb548ef563b3370e0d91211.jpeg\",\"title\":\"TANGUAR HAOR\",\"url\":\"#\"}]', 'Discover the Enchanting Haors of Bangladesh', 'Find your next destination to visit in haors', 'uploads/images/f4f369e765cca574a39017ef2a52a4bc.jpeg', '/assets/video/hero-video.mp4', 'Exploring the Haors of Bangladesh', 'Embark on a journey to uncover the mesmerizing beauty and rich cultural heritage of Bangladesh\'s haors. Dive into the heart of this enchanting world as we explore the serene waters, lush landscapes, and captivating stories that make these lakes a treasure trove of natural wonders and cultural significance.', '[{\"image\":\"\\/uploads\\/images\\/efcb41287e4bded9f9ac10f5f502f728.jpeg\",\"title\":\"Bishwambarpur\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/84e0e421aaad70feebd5f7e8e520775d.jpeg\",\"title\":\"Chhatak\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/c51ca97aa8ca1abfc4fbca4e00d20739.jpeg\",\"title\":\"Dakshin Sunamganj\",\"url\":\"#\"}]', '357', '284,272 HEC.', '154', 'Popular Haors in Bangladesh', 'FEATURED HAORS', '[{\"image\":\"\\/uploads\\/images\\/64cf6d9f07670c063e83fe22a4551210.jpeg\",\"title\":\"Tanguar Haor\",\"subtitle\":\"Derai, Sunamganj\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/552815f956d7cb1cfce93f5f767e7e95.jpeg\",\"title\":\"Banaiya Hao\",\"subtitle\":\"Balaganj, Sylhet\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/4c62a038ce3d12022f95be6d482aa20e.jpeg\",\"title\":\"Boro Haor\",\"subtitle\":\"Kanaighat, Sylhet\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/14dd629b5db2905e584be69959814bd0.jpeg\",\"title\":\"Gungiajuri\",\"subtitle\":\"Bahubal, Habiganj\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/395557af8d40d367069a449179bb50ef.jpeg\",\"title\":\"Hakaluki\",\"subtitle\":\"Barlekha, Maulvibazar\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/4c62a038ce3d12022f95be6d482aa20e.jpeg\",\"title\":\"Medar Beel\",\"subtitle\":\"Barhatta, Netrakona\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/64cf6d9f07670c063e83fe22a4551210.jpeg\",\"title\":\"Dattakhola\",\"subtitle\":\"Akhaura, Brahmanbaria\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/552815f956d7cb1cfce93f5f767e7e95.jpeg\",\"title\":\"Mithamain\",\"subtitle\":\"Austagram, Kishoreganj\",\"url\":\"#\"}]', '/haors', 'Haor Map', 'Embark on a journey to uncover the mesmerizing beauty and rich cultural heritage of Bangladesh\'s haors. Dive into the heart of this enchanting world as we explore the serene waters, lush landscapes, and captivating stories that make these lakes a treasure trove of natural wonders and cultural significance.', '[{\"district\":\"Sylhet\",\"url\":\"#\"},{\"district\":\"Sunamgang\",\"url\":\"#\"},{\"district\":\"Netrokona\",\"url\":\"#\"},{\"district\":\"Kishoreganj\",\"url\":\"#\"},{\"district\":\"Brahmanbaria\",\"url\":\"#\"},{\"district\":\"Brahmanbaria\",\"url\":\"#\"},{\"district\":\"Habiganj\",\"url\":\"#\"},{\"district\":\"Maulvibazar\",\"url\":\"#\"}]', 'Conservation Effects', 'Embark on a journey to uncover the mesmerizing beauty and rich cultural heritage of Bangladesh\'s haors. Dive into the heart of this enchanting world as we explore the serene waters, lush landscapes, and captivating stories that make these lakes a treasure trove of natural wonders and cultural significance.', '[{\"image\":\"\\/uploads\\/images\\/ffaab2be3cd4fd31bd905cab668eb256.jpeg\",\"title\":\"Haor Statestics\",\"text\":\"Brief introduction to bird sanctuaries, their importance, and their role in bird conservation. Brief introduction to bird sanctuaries, their importance, and their role in bird conservation. Brief introduction to bird sanctuaries, their importance, and their role in bird conservation.\",\"url\":\"\\/statistics\"},{\"image\":\"\\/uploads\\/images\\/1eece06f5aa8fa0c89f2aff10b095edd.jpeg\",\"title\":\"Bird Sanctuary\",\"text\":\"Brief introduction to bird sanctuaries, their importance, and their role in bird conservation.\",\"url\":\"\\/bird\"},{\"image\":\"\\/uploads\\/images\\/b9b10221ee0e0efa8189621f0edb7b14.jpeg\",\"title\":\"Fish Sanctuary\",\"text\":\"Brief introduction to bird sanctuaries, their importance, and their role in bird conservation.\",\"url\":\"\\/fish\"},{\"image\":\"\\/uploads\\/images\\/d73383683bc44cfc66956347536b9a92.jpeg\",\"title\":\"Plant\",\"text\":\"Brief introduction to bird sanctuaries, their importance, and their role in bird conservation.\",\"url\":\"\\/statistics\"},{\"image\":\"\\/uploads\\/images\\/5606474a778a9fadcbbd7052eebd1ad4.jpeg\",\"title\":\"Climate\",\"text\":\"Brief introduction to bird sanctuaries, their importance, and their role in bird conservation.\",\"url\":\"\\/statistics\"}]', 'Haor Statistics and Insights', 'Stay up to date with our tourism and hospitality industry reports.', '[{\"image\":\"\\/uploads\\/images\\/cc4ab727a4b7ba99fae52d7e89fa3bf8.jpeg\",\"title\":\"Summary Report 2023\",\"subtitle\":\"Master plan of Haor Area Summary Report for April 2023\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/264baf682ce6b718173e77b1bea09b35.jpeg\",\"title\":\"Summary Report 2022\",\"subtitle\":\"Master plan of Haor Area Summary Report for April 2022\",\"url\":\"#\"},{\"image\":\"\\/uploads\\/images\\/346b797dadead8a1d3de32a216b36b55.jpeg\",\"title\":\"Summary Report 2021\",\"subtitle\":\"Master plan of Haor Area Summary Report for April 2021\",\"url\":\"#\"}]', '#', 'Recreation and Tourism', '[{\"image\":\"\\/uploads\\/images\\/e2e169b139765d5dfacfb27413668f4a.jpeg\",\"title\":\"Resort List\",\"subtitle\":\"Locations and contacts\",\"url\":\"\\/resort\"},{\"image\":\"\\/uploads\\/images\\/80e131b6e246b9b848aca293332b8b02.jpeg\",\"title\":\"Nearby Attractions\",\"subtitle\":\"Nearby Attractions\",\"url\":\"\\/travel\"},{\"image\":\"\\/uploads\\/images\\/5a0ce6189f1f1e40b8eb240638ab2c07.jpeg\",\"title\":\"Travel Tips\",\"subtitle\":\"Best times to visit, and safety tips.\",\"url\":\"\\/travel\"}]', '[{\"image\":\"\\/uploads\\/images\\/5619771b2cc981e0e0bcf1139367b333.jpeg\",\"image2\":\"\\/uploads\\/images\\/1d0d9bcbc3548b0be071ad196fa9ca4a.jpeg\"},{\"image\":\"\\/uploads\\/images\\/d56932dce3efb40b29111b3e1db9440e.jpeg\",\"image2\":\"\\/uploads\\/images\\/7708cee0f20b8781ba171bbedc147bf6.jpeg\"},{\"image\":\"\\/uploads\\/images\\/26e46d420825429ac568ee32b5cf0148.jpeg\",\"image2\":\"\\/uploads\\/images\\/8e5e26c3ed575cc0e077611709528ba9.jpeg\"},{\"image\":\"\\/uploads\\/images\\/f362eafa98cdc155144570fa46876404.jpeg\",\"image2\":\"\\/uploads\\/images\\/f06d18678541f5ac15c09ad1b1df444f.jpeg\"},{\"image\":\"\\/uploads\\/images\\/871b1d79dc7085e3a90d4beeab114133.jpeg\",\"image2\":\"\\/uploads\\/images\\/bd546fdc074d1928eb02487b905a03c2.jpeg\"}]', 'Haor Statestics', 'uploads/images/e10d615542f006abfa47c256a7da066e.jpeg', 'Bishwambarpur, where the waterline blends with the high green hills of Meghalaya, is visited by almost 30 kinds of migratory wild ducks every year. You can easily hire a dinghy from the local villages and enjoy the scenic, feathery beauty', '<h2>Human Resource</h2>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p>Tangua is one of the finest places in the world to enjoy the perfect sunset and the sunrise.</p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tanguar Haor is a river basin which is located at the Tahirpur Upazila of Sunamgonj district in Sylhet Division. Its takes roughly 6-7 hours to reach here from Dhaka. After getting off at the Surma Bridge just off the Bus station, you need to hire a bike or a CNG Taxi to get yourself at Tahirpur. From Tahirpur you can hire boat and enjoy the beauty of Haor.</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<h2>Planning Process</h2>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n', '<h3>STATESTICS</h3>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus.</p>\r\n\r\n<h3>DESIGNATIONS</h3>\r\n\r\n<ul>\r\n	<li>Official name: Tanguar Haor</li>\r\n	<li>Designated: 10 June 2000</li>\r\n	<li>Reference no.1031</li>\r\n</ul>\r\n\r\n<h3>LOCATION</h3>\r\n\r\n<p>Dharmpasha - Tahirpur Road, 3030</p>\r\n\r\n<h3>AREA</h3>\r\n\r\n<p>The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n', 'Travel Essentials', 'uploads/images/1d913eab51d40a2850a9297cd5320dd6.jpeg', '<h2>How to go</h2>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p><a href=\"#\">TRANSPORT FACILITY</a></p>\r\n', 'uploads/images/8d968c1a464d6518a6fa561988dd5700.jpeg', '<h2>Where to Stay</h2>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tanguar Haor is a river basin which is located at the Tahirpur Upazila of Sunamgonj district in Sylhet Division. Its takes roughly 6-7 hours to reach here from Dhaka. After getting off at the Surma Bridge just off the Bus station, you need to hire a bike or a CNG Taxi to get yourself at Tahirpur. From Tahirpur you can hire boat and enjoy the beauty of Haor.</p>\r\n\r\n<p><a href=\"hotels.html\">RESORT LIST</a></p>\r\n', 'uploads/images/d246bd2d9b66e8583e757fc006ba5a07.jpeg', 'Hotels and Resorts', 'uploads/images/2bb60df6746b9eb28ad2efe61d315058.jpeg', '[{\"image\":\"\\/uploads\\/images\\/1f5751a568d0719bd1cf56125f4d5031.jpeg\",\"content\":\"<h3><a href=\\\"#\\\">Palace Luxury Resort<\\/a><\\/h3>\\n\\n<ul>\\n\\t<li>0.5 km from center of Sylhet<\\/li>\\n\\t<li>Double bed<\\/li>\\n\\t<li>AC available<\\/li>\\n\\t<li>Comprehensive Breakfast<\\/li>\\n<\\/ul>\\n\",\"contact\":\"<p><a href=\\\"tel:017115858589\\\">CALL: 017115858589<\\/a><\\/p>\\n\\n<p><a href=\\\"#\\\" target=\\\"_blank\\\">View in Map<\\/a><\\/p>\\n\"},{\"image\":\"\\/uploads\\/images\\/0bf93fd4d12078f8a2219a5b351e6d15.jpeg\",\"content\":\"<h3><a href=\\\"#\\\">Hotel Supreme<\\/a><\\/h3>\\n\\n<ul>\\n\\t<li>0.5 km from center of Sylhet<\\/li>\\n\\t<li>Double bed<\\/li>\\n\\t<li>AC available<\\/li>\\n\\t<li>Comprehensive Breakfast<\\/li>\\n<\\/ul>\\n\",\"contact\":\"<p><a href=\\\"tel:017115858589\\\">CALL: 017115858589<\\/a><\\/p>\\n\\n<p><a href=\\\"#\\\" target=\\\"_blank\\\">View in Map<\\/a><\\/p>\\n\"},{\"image\":\"\\/uploads\\/images\\/abd8a534fa4f65323b4cfc856a16e35c.jpeg\",\"content\":\"<h3><a href=\\\"#\\\">Grand Sultan<\\/a><\\/h3>\\n\\n<ul>\\n\\t<li>0.5 km from center of Sylhet<\\/li>\\n\\t<li>Double bed<\\/li>\\n\\t<li>AC available<\\/li>\\n\\t<li>Comprehensive Breakfast<\\/li>\\n<\\/ul>\\n\",\"contact\":\"<p><a href=\\\"tel:017115858589\\\">CALL: 017115858589<\\/a><\\/p>\\n\\n<p><a href=\\\"#\\\" target=\\\"_blank\\\">View in Map<\\/a><\\/p>\\n\"},{\"image\":\"\\/uploads\\/images\\/f715c7e28c254fac8960bdd8b94d62ef.jpeg\",\"content\":\"<h3><a href=\\\"#\\\">Dusai Resort<\\/a><\\/h3>\\n\\n<ul>\\n\\t<li>0.5 km from center of Sylhet<\\/li>\\n\\t<li>Double bed<\\/li>\\n\\t<li>AC available<\\/li>\\n\\t<li>Comprehensive Breakfast<\\/li>\\n<\\/ul>\\n\",\"contact\":\"<p><a href=\\\"tel:017115858589\\\">CALL: 017115858589<\\/a><\\/p>\\n\\n<p><a href=\\\"#\\\" target=\\\"_blank\\\">View in Map<\\/a><\\/p>\\n\"},{\"image\":\"\\/uploads\\/images\\/77b59008095116f2228a67eb1034cd4e.jpeg\",\"content\":\"<h3><a href=\\\"#\\\">Dusai Resort<\\/a><\\/h3>\\n\\n<ul>\\n\\t<li>0.5 km from center of Sylhet<\\/li>\\n\\t<li>Double bed<\\/li>\\n\\t<li>AC available<\\/li>\\n\\t<li>Comprehensive Breakfast<\\/li>\\n<\\/ul>\\n\",\"contact\":\"<p><a href=\\\"tel:017115858589\\\">CALL: 017115858589<\\/a><\\/p>\\n\\n<p><a href=\\\"#\\\" target=\\\"_blank\\\">View in Map<\\/a><\\/p>\\n\"}]', 'Bird Sanctuary', 'uploads/images/d5eaca56b808c8de3cd6432e32cc500a.jpeg', 'Number of aquatic birds rises at Hakaluki Haor. Two-day bird census reveals the number of birds in different beels of Hakaluki Haor', '<h1>Hakaluki Haor Birds Rises</h1>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p><img alt=\"\" src=\"./assets/images/details/haor-d-9.jpg\" /></p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tanguar Haor is a river basin which is located at the Tahirpur Upazila of Sunamgonj district in Sylhet Division. Its takes roughly 6-7 hours to reach here from Dhaka. After getting off at the Surma Bridge just off the Bus station, you need to hire a bike or a CNG Taxi to get yourself at Tahirpur. From Tahirpur you can hire boat and enjoy the beauty of Haor.</p>\r\n\r\n<p><img alt=\"\" src=\"./assets/images/details/haor-d-10.jpg\" /></p>\r\n\r\n<h1>Planning Process</h1>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p><img alt=\"\" src=\"./assets/images/details/haor-d-11.jpg\" /><img alt=\"\" src=\"./assets/images/details/haor-d-12.jpg\" /></p>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n', 'Fish Sanctuary', 'uploads/images/163d3e7ed0df0aa2be71327307d8ae14.jpeg', 'Number of aquatic fish rises at Hakaluki Haor. Two-day bird census reveals the number of birds in different beels of Hakaluki Haor', '<h2>Hakaluki Haor Fish Rises</h2>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p><img alt=\"\" src=\"./assets/images/details/haor-d-13.jpg\" /></p>\r\n\r\n<p>Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.36 ha&sup2; is wetland.</p>\r\n\r\n<p>Tanguar Haor is a river basin which is located at the Tahirpur Upazila of Sunamgonj district in Sylhet Division. Its takes roughly 6-7 hours to reach here from Dhaka. After getting off at the Surma Bridge just off the Bus station, you need to hire a bike or a CNG Taxi to get yourself at Tahirpur. From Tahirpur you can hire boat and enjoy the beauty of Haor.</p>\r\n\r\n<p><img alt=\"\" src=\"./assets/images/details/haor-d-14.jpg\" /></p>\r\n\r\n<h2>Planning Process</h2>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p><img alt=\"\" src=\"./assets/images/details/haor-d-15.jpg\" /><img alt=\"\" src=\"./assets/images/details/haor-d-16.jpg\" /></p>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n\r\n<p>Primary data have been collected through survey carried out during PCMs and RRA. Remote Sensing images have been processed and analyzed using GIS techniques. Secondary data have been obtained from National Water Resources Database (NWRD), Bangladesh Bureau of Statistics (BBS) and published documents of different organizations.</p>\r\n\r\n<p>The total population of the seven haor districts is 19.37 million (projected from BBS, 2001 census). The overall population density in the haor districts is 987 per sq km which is lower than the average national population density of 1142 per sq km. By the years 2020 and 2030 the population may increase to 21.38 million and 22.92 million respectively. The population growth rate per annum for the overall haor area is 1.09% which is lower than the national rate. It might decrease further from 1.09% to 0.63% by the year 2030, while the overall national growth rate might also decrease from 1.31% to 0.84% over the same period. Figure 5.1 shows the trend of population distribution by age groups for 2010, 2020 and 2030</p>\r\n', 'Cookies Policy', '<p>Last updated: November 01, 2023</p>\r\n\r\n<p>This Cookies Policy explains what Cookies are and how We use them. You should read this policy so You can understand what type of cookies We use, or the information We collect using Cookies and how that information is used. This Cookies Policy has been created with the help of the&nbsp;<a href=\"https://www.freeprivacypolicy.com/free-cookies-policy-generator/\" target=\"_blank\">Free Cookies Policy Generator</a>.</p>\r\n\r\n<p>Cookies do not typically contain any information that personally identifies a user, but personal information that we store about You may be linked to the information stored in and obtained from Cookies. For further information on how We use, store and keep your personal data secure, see our Privacy Policy.</p>\r\n\r\n<p>We do not store sensitive personal information, such as mailing addresses, account passwords, etc. in the Cookies We use.</p>\r\n\r\n<h2>Interpretation and Definitions</h2>\r\n\r\n<p>Interpretation</p>\r\n\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n\r\n<p>Definitions</p>\r\n\r\n<p>For the purposes of this Cookies Policy:</p>\r\n\r\n<ul>\r\n	<li><strong>Company</strong>&nbsp;(referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Cookies Policy) refers to Amar Haor.</li>\r\n	<li><strong>Cookies</strong>&nbsp;means small files that are placed on Your computer, mobile device or any other device by a website, containing details of your browsing history on that website among its many uses.</li>\r\n	<li><strong>Website</strong>&nbsp;refers to Amar Haor, accessible from&nbsp;<a href=\"https://amarhaor.com/\" target=\"_blank\">https://amarhaor.com/</a></li>\r\n	<li><strong>You</strong>&nbsp;means the individual accessing or using the Website, or a company, or any legal entity on behalf of which such individual is accessing or using the Website, as applicable.</li>\r\n</ul>\r\n\r\n<h2>The use of the Cookies</h2>\r\n\r\n<p>Type of Cookies We Use</p>\r\n\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close your web browser.</p>\r\n\r\n<p>We use both session and persistent Cookies for the purposes set out below:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Necessary / Essential Cookies</strong></p>\r\n\r\n	<p>Type: Session Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Functionality Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Your Choices Regarding Cookies</p>\r\n\r\n<p>If You prefer to avoid the use of Cookies on the Website, first You must disable the use of Cookies in your browser and then delete the Cookies saved in your browser associated with this website. You may use this option for preventing the use of Cookies at any time.</p>\r\n\r\n<p>If You do not accept Our Cookies, You may experience some inconvenience in your use of the Website and some features may not function properly.</p>\r\n\r\n<p>If You&#39;d like to delete Cookies or instruct your web browser to delete or refuse Cookies, please visit the help pages of your web browser.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>For the Chrome web browser, please visit this page from Google:&nbsp;<a href=\"https://support.google.com/accounts/answer/32050\" target=\"_blank\">https://support.google.com/accounts/answer/32050</a></p>\r\n	</li>\r\n	<li>\r\n	<p>For the Internet Explorer web browser, please visit this page from Microsoft:&nbsp;<a href=\"http://support.microsoft.com/kb/278835\" target=\"_blank\">http://support.microsoft.com/kb/278835</a></p>\r\n	</li>\r\n	<li>\r\n	<p>For the Firefox web browser, please visit this page from Mozilla:&nbsp;<a href=\"https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored\" target=\"_blank\">https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored</a></p>\r\n	</li>\r\n	<li>\r\n	<p>For the Safari web browser, please visit this page from Apple:&nbsp;<a href=\"https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac\" target=\"_blank\">https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>For any other web browser, please visit your web browser&#39;s official web pages.</p>\r\n\r\n<p>More Information about Cookies</p>\r\n\r\n<p>You can learn more about cookies:&nbsp;<a href=\"https://www.freeprivacypolicy.com/blog/cookies/\" target=\"_blank\">Cookies: What Do They Do?</a>.</p>\r\n\r\n<p>Contact Us</p>\r\n\r\n<p>If you have any questions about this Cookies Policy, You can contact us:</p>\r\n\r\n<ul>\r\n	<li>By email:&nbsp;haorbd@gmail.com</li>\r\n</ul>\r\n', 'Privacy Policy', '<p>Last updated: November 01, 2023</p>\r\n\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the&nbsp;<a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\">Free Privacy Policy Generator</a>.</p>\r\n\r\n<h2>Interpretation and Definitions</h2>\r\n\r\n<h3>Interpretation</h3>\r\n\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n\r\n<h3>Definitions</h3>\r\n\r\n<p>For the purposes of this Privacy Policy:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Account</strong>&nbsp;means a unique account created for You to access our Service or parts of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Company</strong>&nbsp;(referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to Amar Haor.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies</strong>&nbsp;are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Country</strong>&nbsp;refers to: Bangladesh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal Data</strong>&nbsp;is any information that relates to an identified or identifiable individual.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service Provider</strong>&nbsp;means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Usage Data</strong>&nbsp;refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Website</strong>&nbsp;refers to Amar Haor, accessible from&nbsp;<a href=\"https://amarhaor.com/\" target=\"_blank\">https://amarhaor.com/</a></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n\r\n<h3>Types of Data Collected</h3>\r\n\r\n<p>Personal Data</p>\r\n\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>Usage Data</li>\r\n</ul>\r\n\r\n<p>Usage Data</p>\r\n\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n\r\n<p>Usage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n\r\n<p>Tracking Technologies and Cookies</p>\r\n\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n\r\n<ul>\r\n	<li><strong>Cookies or Browser Cookies.</strong>&nbsp;A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n	<li><strong>Web Beacons.</strong>&nbsp;Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies on the&nbsp;<a href=\"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\">Free Privacy Policy website</a>&nbsp;article.</p>\r\n\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Necessary / Essential Cookies</strong></p>\r\n\r\n	<p>Type: Session Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Functionality Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n\r\n<h3>Use of Your Personal Data</h3>\r\n\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your Account:</strong>&nbsp;to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For the performance of a contract:</strong>&nbsp;the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To contact You:</strong>&nbsp;To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To provide You</strong>&nbsp;with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your requests:</strong>&nbsp;To attend and manage Your requests to Us.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For business transfers:</strong>&nbsp;We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We may share Your personal information in the following situations:</p>\r\n\r\n<ul>\r\n	<li><strong>With Service Providers:</strong>&nbsp;We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n	<li><strong>For business transfers:</strong>&nbsp;We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n	<li><strong>With Affiliates:</strong>&nbsp;We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n	<li><strong>With business partners:</strong>&nbsp;We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n	<li><strong>With other users:</strong>&nbsp;when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n	<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n\r\n<h3>Retention of Your Personal Data</h3>\r\n\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n\r\n<h3>Transfer of Your Personal Data</h3>\r\n\r\n<p>Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n\r\n<h3>Delete Your Personal Data</h3>\r\n\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n\r\n<h3>Disclosure of Your Personal Data</h3>\r\n\r\n<p>Business Transactions</p>\r\n\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n\r\n<p>Law enforcement</p>\r\n\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n\r\n<p>Other legal requirements</p>\r\n\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>Comply with a legal obligation</li>\r\n	<li>Protect and defend the rights or property of the Company</li>\r\n	<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>Protect the personal safety of Users of the Service or the public</li>\r\n	<li>Protect against legal liability</li>\r\n</ul>\r\n\r\n<h3>Security of Your Personal Data</h3>\r\n\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n\r\n<h2>Children&#39;s Privacy</h2>\r\n\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.</p>\r\n\r\n<h2>Links to Other Websites</h2>\r\n\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&#39;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h2>Changes to this Privacy Policy</h2>\r\n\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n\r\n<ul>\r\n	<li>By phone number:&nbsp;haorbd@gmail.com</li>\r\n</ul>\r\n', 'Terms and Conditions', '<p>Last updated: November 01, 2023</p>\r\n\r\n<p>Please read these terms and conditions carefully before using Our Service.</p>\r\n\r\n<h2>Interpretation and Definitions</h2>\r\n\r\n<h3>Interpretation</h3>\r\n\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n\r\n<h3>Definitions</h3>\r\n\r\n<p>For the purposes of these Terms and Conditions:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Country</strong>&nbsp;refers to: Bangladesh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Company</strong>&nbsp;(referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to Amar Haor.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Terms and Conditions</strong>&nbsp;(also referred as &quot;Terms&quot;) mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the&nbsp;<a href=\"https://www.freeprivacypolicy.com/free-terms-and-conditions-generator/\" target=\"_blank\">Free Terms and Conditions Generator</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Third-party Social Media Service</strong>&nbsp;means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Website</strong>&nbsp;refers to Amar Haor, accessible from&nbsp;<a href=\"https://amarhaor.com/\" target=\"_blank\">https://amarhaor.com/</a></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Acknowledgment</h2>\r\n\r\n<p>These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.</p>\r\n\r\n<p>Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.</p>\r\n\r\n<p>By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.</p>\r\n\r\n<p>You represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.</p>\r\n\r\n<p>Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.</p>\r\n\r\n<h2>Links to Other Websites</h2>\r\n\r\n<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.</p>\r\n\r\n<p>The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>\r\n\r\n<p>We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.</p>\r\n\r\n<h2>Termination</h2>\r\n\r\n<p>We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.</p>\r\n\r\n<p>Upon termination, Your right to use the Service will cease immediately.</p>\r\n\r\n<h2>Limitation of Liability</h2>\r\n\r\n<p>Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven&#39;t purchased anything through the Service.</p>\r\n\r\n<p>To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.</p>\r\n\r\n<p>Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party&#39;s liability will be limited to the greatest extent permitted by law.</p>\r\n\r\n<h2>&quot;AS IS&quot; and &quot;AS AVAILABLE&quot; Disclaimer</h2>\r\n\r\n<p>The Service is provided to You &quot;AS IS&quot; and &quot;AS AVAILABLE&quot; and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.</p>\r\n\r\n<p>Without limiting the foregoing, neither the Company nor any of the company&#39;s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.</p>\r\n\r\n<p>Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.</p>\r\n\r\n<h2>Governing Law</h2>\r\n\r\n<p>The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.</p>\r\n\r\n<h2>Disputes Resolution</h2>\r\n\r\n<p>If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.</p>\r\n\r\n<h2>For European Union (EU) Users</h2>\r\n\r\n<p>If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.</p>\r\n\r\n<h2>United States Legal Compliance</h2>\r\n\r\n<p>You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a &quot;terrorist supporting&quot; country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.</p>\r\n\r\n<h2>Severability and Waiver</h2>\r\n\r\n<h3>Severability</h3>\r\n\r\n<p>If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.</p>\r\n\r\n<h3>Waiver</h3>\r\n\r\n<p>Except as provided herein, the failure to exercise a right or to require performance of an obligation under these Terms shall not effect a party&#39;s ability to exercise such right or require such performance at any time thereafter nor shall the waiver of a breach constitute a waiver of any subsequent breach.</p>\r\n\r\n<h2>Translation Interpretation</h2>\r\n\r\n<p>These Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.</p>\r\n\r\n<h2>Changes to These Terms and Conditions</h2>\r\n\r\n<p>We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days&#39; notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.</p>\r\n\r\n<p>By continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about these Terms and Conditions, You can contact us:</p>\r\n\r\n<ul>\r\n	<li>By email:&nbsp;haorbd@gmail.com</li>\r\n</ul>\r\n', 'uploads/images/7dca4f6a4360c83057e22be8b2310d14.png', 'Embark on a journey to uncover the mesmerizing beauty and rich cultural heritage of Bangladesh\'s haors.', 'Porjoton Bhaban (Level-9), Plot: E-5, C/1, West Agargaon, Sher-E Bangla Nagar (Administrative Area), Dhaka-1207', '[{\"text\":\"List of Haors\",\"url\":\"#\"},{\"text\":\"Geographic information\",\"url\":\"#\"},{\"text\":\"Socioeconomic information\",\"url\":\"#\"},{\"text\":\"Toursim\",\"url\":\"#\"},{\"text\":\"Coservation\",\"url\":\"#\"},{\"text\":\"Important links\",\"url\":\"#\"}]', '[{\"text\":\"List of Haors\",\"url\":\"#\"},{\"text\":\"Geographic information\",\"url\":\"#\"},{\"text\":\"Socioeconomic information\",\"url\":\"#\"},{\"text\":\"Toursim\",\"url\":\"#\"},{\"text\":\"Coservation\",\"url\":\"#\"},{\"text\":\"Important links\",\"url\":\"#\"}]', '<p>2023 Copyright Amar Haor. All rights reserved.</p>\r\n', NULL, '2023-11-01 05:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(62, '2014_10_12_000000_create_users_table', 1),
(63, '2014_10_12_100000_create_password_resets_table', 1),
(64, '2019_08_19_000000_create_failed_jobs_table', 1),
(65, '2021_04_12_153329_create_auth_logs_table', 1),
(66, '2021_12_02_054840_create_landing_pages_table', 1),
(67, '2023_10_14_194511_create_districts_table', 1),
(68, '2023_10_14_194550_create_upazilas_table', 1),
(69, '2023_10_14_194552_create_haors_table', 1),
(70, '2023_11_02_115758_create_pages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rivers`
--

CREATE TABLE `rivers` (
  `id` int(6) NOT NULL,
  `region` varchar(32) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rivers`
--

INSERT INTO `rivers` (`id`, `region`, `name`, `created_at`, `updated_at`) VALUES
(2, 'North West Region', 'Akhira-Maccha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(3, 'North West Region', 'Atrai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(4, 'North West Region', 'Atrai (Dinajpur) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(5, 'North West Region', 'Atrai (Naogaon-Natore)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(6, 'North West Region', 'Atrai (Pabna) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(7, 'North West Region', 'Alai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(8, 'North West Region', 'Alai Kumari (Burail) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(9, 'North West Region', 'Ichamati (Dinajpur) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(10, 'North West Region', 'Ichamati (Pabna) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(11, 'North West Region', 'Ichamati (Bogra) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(12, 'North West Region', 'Ichamati (Bogra-Sirajganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(13, 'North West Region', 'Iramati ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(14, 'North West Region', 'Karatoya* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(15, 'North West Region', 'Karatoya (Nilphamari) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(16, 'North West Region', 'Kageshwari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(17, 'North West Region', 'Katakhali (Gaibandha) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(18, 'North West Region', 'Kala ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(19, 'North West Region', 'Kalapani ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(20, 'North West Region', 'Kaludaha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(21, 'North West Region', 'Kumlal-Nautara ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(22, 'North West Region', 'Kurum ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(23, 'North West Region', 'Kulik* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(24, 'North West Region', 'Khar Kharia-Tilai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(25, 'North West Region', 'Khalsadingi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(26, 'North West Region', 'Gadai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(27, 'North West Region', 'Gaveshwari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(28, 'North West Region', 'Ganges (Padma)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(29, 'North West Region', 'Gangnai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(30, 'North West Region', 'Gidari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(31, 'North West Region', 'Girai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(32, 'North West Region', 'Guksi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(33, 'North West Region', 'Gobra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(34, 'North West Region', 'Gohala ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(35, 'North West Region', 'Garaiya Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(36, 'North West Region', 'Ghaghat ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(37, 'North West Region', 'Ghirnai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(38, 'North West Region', 'Ghoramara* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(39, 'North West Region', 'Chawai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(40, 'North West Region', 'Chiknai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(41, 'North West Region', 'Chikli ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(42, 'North West Region', 'Ciri ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(43, 'North West Region', 'Chhiri ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(44, 'North West Region', 'Chungabhanga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(45, 'North West Region', 'Satnai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(46, 'North West Region', 'Choto Dhepa ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(47, 'North West Region', 'Choto Jamuna ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(48, 'North West Region', 'Choto Sinua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(49, 'North West Region', 'Tangon* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(50, 'North West Region', 'Dahuk* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(51, 'North West Region', 'Dhepa ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(52, 'North West Region', 'Talma* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(53, 'North West Region', 'Teesta* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(54, 'North West Region', 'Teesta (Panchagarh) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(55, 'North West Region', 'Tirnai (Thakurgaon) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(56, 'North West Region', 'Tirnai (Panchagarh) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(57, 'North West Region', 'Tulshi Ganga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(58, 'North West Region', 'Dudhkumar* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(59, 'North West Region', 'Deonai-Charalkata-Jamuneshwari* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(60, 'North West Region', 'Dharla* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(61, 'North West Region', 'Dhaijan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(62, 'North West Region', 'Dhum ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(63, 'North West Region', 'Narth ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(64, 'North West Region', 'Nalshisa ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(65, 'North West Region', 'Naleya ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(66, 'North West Region', 'Nagar Upper* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(67, 'North West Region', 'Nagar Lower (Bogra-Natore) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(68, 'North West Region', 'Narode ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(69, 'North West Region', 'Palimari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(70, 'North West Region', 'Pagla* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(71, 'North West Region', 'Patharghata ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(72, 'North West Region', 'Pathraj ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(73, 'North West Region', 'Punarbhaba* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(74, 'North West Region', 'Petki ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(75, 'North West Region', 'Fakirni ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(76, 'North West Region', 'Phulkumar ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(77, 'North West Region', 'Brahmaputra-Jamuna* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(78, 'North West Region', 'Baral Upper (Baral-Nandakuja) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(79, 'North West Region', 'Baral Lower (Pabna) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(80, 'North West Region', 'Bangali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(81, 'North West Region', 'Badai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(82, 'North West Region', 'Barnai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(83, 'North West Region', 'Banni ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(84, 'North West Region', 'Burail ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(85, 'North West Region', 'Bullai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(86, 'North West Region', 'Burikhora ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(87, 'North West Region', 'Buri Teesta* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(88, 'North West Region', 'Berong ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(89, 'North West Region', 'Belan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(90, 'North West Region', 'Besani ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(91, 'North West Region', 'Borka ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(92, 'North West Region', 'Bhadai (Bogra) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(93, 'North West Region', 'Bhulli ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(94, 'North West Region', 'Versha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(95, 'North West Region', 'Mahananda Upper (Panchagarh)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(96, 'North West Region', 'Mahananda Lower (Nawabganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(97, 'North West Region', 'Maila ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(98, 'North West Region', 'Maldaha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(99, 'North West Region', 'Musakhan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(100, 'North West Region', 'Monas ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(101, 'North West Region', 'Jamuna (Panchagarh) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(102, 'North West Region', 'Ratnai (Lalmonirhat) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(103, 'North West Region', 'Ramchandi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(104, 'North West Region', 'Rakhasini-Tetulia (Tulai)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(105, 'North West Region', 'Lenga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(106, 'North West Region', 'Lona ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(107, 'North West Region', 'Shib ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(108, 'North West Region', 'Sati-Sarnamati-Bhateshwari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(109, 'North West Region', 'Shemlajan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(110, 'North West Region', 'Shirmakhali Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(111, 'North West Region', 'Singimari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(112, 'North West Region', 'Sui ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(113, 'North West Region', 'Sinua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(114, 'North West Region', 'Shoz ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(115, 'North West Region', 'Harabati ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(116, 'North West Region', 'Hura Sagor ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(117, 'North Central Region', 'Aiman-Akhila ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(118, 'North Central Region', 'Aiman-Mobari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(119, 'North Central Region', 'Arial Khan (Narsingdi) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(120, 'North Central Region', 'Ichamati (Manikganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(121, 'North Central Region', 'Ichamati (Serajdikhan) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(122, 'North Central Region', 'Ilishmari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(123, 'North Central Region', 'Alongjani ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(124, 'North Central Region', 'Katakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(125, 'North Central Region', 'Kaliganga (Manikganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(126, 'North Central Region', 'Khiro (Trishal) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(127, 'North Central Region', 'Khiro (Bhaluka) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(128, 'North Central Region', 'Gangdubi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(129, 'North Central Region', 'Gazikhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(130, 'North Central Region', 'Goallar Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(131, 'North Central Region', 'Chatal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(132, 'North Central Region', 'Chapai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(133, 'North Central Region', 'Chilai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(134, 'North Central Region', 'Joypara Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(135, 'North Central Region', 'Jharkata ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(136, 'North Central Region', 'Jinjiram* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(137, 'North Central Region', 'Jhinai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(138, 'North Central Region', 'Tungi Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(139, 'North Central Region', 'Tanki Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(140, 'North Central Region', 'Taltala Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(141, 'North Central Region', 'Turag ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(142, 'North Central Region', 'Tulashikhali Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(143, 'North Central Region', 'Dhaleswari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(144, 'North Central Region', 'Nagda Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(145, 'North Central Region', 'Nangla ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(146, 'North Central Region', 'Naljuri Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(147, 'North Central Region', 'Nangli ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(148, 'North Central Region', 'Padma ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(149, 'North Central Region', 'Pagaria-Shila ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(150, 'North Central Region', 'Paruli Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(151, 'North Central Region', 'Paharia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(152, 'North Central Region', 'Old Dhaleswari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(153, 'North Central Region', 'Old Brahmaputra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(154, 'North Central Region', 'Pungli ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(155, 'North Central Region', 'Bangshi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(156, 'North Central Region', 'Bangshi (Savar) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(157, 'North Central Region', 'Brahmaputra (Narsingdi-Munshiganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(158, 'North Central Region', 'Baksatra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(159, 'North Central Region', 'Bajja-Medhua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(160, 'North Central Region', 'Banar Upper ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(161, 'North Central Region', 'Banar Lower ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(162, 'North Central Region', 'Balu ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(163, 'North Central Region', 'Buriganga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(164, 'North Central Region', 'Bairan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(165, 'North Central Region', 'Boshkhalir Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(166, 'North Central Region', 'Mora Jinjiram ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(167, 'North Central Region', 'Mahari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(168, 'North Central Region', 'Menikhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(169, 'North Central Region', 'Labundha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(170, 'North Central Region', 'Louhajang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(171, 'North Central Region', 'Sitalakhya ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(172, 'North Central Region', 'Saldha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(173, 'North Central Region', 'Suti ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(174, 'North Central Region', 'Sutia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(175, 'North Central Region', 'Sonakhali Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(176, 'North Central Region', 'Hai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(177, 'North Central Region', 'Haridoya ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(178, 'North East Region', 'Atrakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(179, 'North East Region', 'Abua (Nandia Gang) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(180, 'North East Region', 'Amri Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(181, 'North East Region', 'Isdhar Khal-Barbhanga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(182, 'North East Region', 'Updakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(183, 'North East Region', 'Umiyam* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(184, 'North East Region', 'Karnajhora ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(185, 'North East Region', 'Kharno-Balja* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(186, 'North East Region', 'Koris ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(187, 'North East Region', 'Kacha Matia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(188, 'North East Region', 'Kapna ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(189, 'North East Region', 'Kamarkhal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(190, 'North East Region', 'Kamarkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(191, 'North East Region', 'Kaldahar-Kanyakul ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(192, 'North East Region', 'Kalni ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(193, 'North East Region', 'Kalapani Jhora ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(194, 'North East Region', 'Kushiyara* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(195, 'North East Region', 'Korangi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(196, 'North East Region', 'Khazenchi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(197, 'North East Region', 'Khasimara ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(198, 'North East Region', 'Khepa ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(199, 'North East Region', 'Khowai* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(200, 'North East Region', 'Gumai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(201, 'North East Region', 'Ghagtia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(202, 'North East Region', 'Ghanura-Bagala (Bukha) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(203, 'North East Region', 'Ghora Utra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(204, 'North East Region', 'Chamti ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(205, 'North East Region', 'Chitalkhali* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(206, 'North East Region', 'Chela ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(207, 'North East Region', 'Jaflong-Dauki ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(208, 'North East Region', 'Jalia Chara (Bholaganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(209, 'North East Region', 'Jalukhali (Chalti)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(210, 'North East Region', 'Juri* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(211, 'North East Region', 'Dauka ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(212, 'North East Region', 'Dhala* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(213, 'North East Region', 'Dudhda ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(214, 'North East Region', 'Dolta ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(215, 'North East Region', 'Dhanu ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(216, 'North East Region', 'Dhalai-Bishnai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(217, 'North East Region', 'Dhalai (Maulvibazar)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(218, 'North East Region', 'Nokla-Sundrakasi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(219, 'North East Region', 'Narasunda ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(220, 'North East Region', 'Naljur ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(221, 'North East Region', 'Noya Gang (Khasiamara)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(222, 'North East Region', 'Naya Gang (Jaintiapur) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(223, 'North East Region', 'Netai* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(224, 'North East Region', 'Patnai Paikartala ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(225, 'North East Region', 'Pabijuri-Kusi Gang-Kusiya ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(226, 'North East Region', 'Piyain (Sylhet-Sunamganj)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(227, 'North East Region', 'Piyain (Sunamganj-Netrakona) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(228, 'North East Region', 'Old Surma ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(229, 'North East Region', 'Pora Khal-Khaiya ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(230, 'North East Region', 'Botor Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(231, 'North East Region', 'Bar Gang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(232, 'North East Region', 'Baulai (Balua) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(233, 'North East Region', 'Bathail ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(234, 'North East Region', 'Baloi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(235, 'North East Region', 'Bijna-Guinggajuri ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(236, 'North East Region', 'Bibiana ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(237, 'North East Region', 'Bekra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(238, 'North East Region', 'Betair ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(239, 'North East Region', 'Bedori Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(240, 'North East Region', 'Bhabna-Bashia-Bahia Gang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(241, 'North East Region', 'Bhogai Kangsho* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(242, 'North East Region', 'Magra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(243, 'North East Region', 'Manu* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(244, 'North East Region', 'Mora Surma ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(245, 'North East Region', 'Moharoshi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(246, 'North East Region', 'Mohasingh ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(247, 'North East Region', 'Malijhi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(248, 'North East Region', 'Mirgi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(249, 'North East Region', 'Jadukata-Rakti* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(250, 'North East Region', 'Lungla* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(251, 'North East Region', 'Lain ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(252, 'North East Region', 'Lauranjani ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(253, 'North East Region', 'Lubha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(254, 'North East Region', 'Saiduli-Baruni ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(255, 'North East Region', 'Satar Khali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(256, 'North East Region', 'Sari Gowain* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(257, 'North East Region', 'Sinai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(258, 'North East Region', 'Singua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(259, 'North East Region', 'Sutang* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(260, 'North East Region', 'Surma ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(261, 'North East Region', 'Sonai-Bordal* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(262, 'North East Region', 'Someswari* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(263, 'North East Region', 'Someswari (Dharmapasha) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(264, 'North East Region', 'Someswari (Sreebardi-Jhenaigati) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(265, 'Eastern Hills Region', 'Ichamati (Rangamati) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(266, 'Eastern Hills Region', 'Eidgoan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(267, 'Eastern Hills Region', 'Karnafuli ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(268, 'Eastern Hills Region', 'Kasalang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(269, 'Eastern Hills Region', 'Chingri (Chengi) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(270, 'Eastern Hills Region', 'Dolu Khal-Tankabati Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(271, 'Eastern Hills Region', 'Naf* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(272, 'Eastern Hills Region', 'Bura Matamuhuri ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(273, 'Eastern Hills Region', 'Bakkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(274, 'Eastern Hills Region', 'Bharuakhali Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(275, 'Eastern Hills Region', 'Bholakhal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(276, 'Eastern Hills Region', 'Maini ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(277, 'Eastern Hills Region', 'Matamuhuri* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(278, 'Eastern Hills Region', 'Rangkhaing ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(279, 'Eastern Hills Region', 'Sangu* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(280, 'Eastern Hills Region', 'Halda ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(281, 'South East Region', 'Arsi-Nalia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(282, 'South East Region', 'Kakri* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(283, 'South East Region', 'Kasti ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(284, 'South East Region', 'Gomti* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(285, 'South East Region', 'Ghungghur ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(286, 'South East Region', 'Little Feni ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(287, 'South East Region', 'Dakatia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(288, 'South East Region', 'Dasadia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(289, 'South East Region', 'Titas ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(290, 'South East Region', 'Titas (Narsingdi Sadar-Bancharampur) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(291, 'South East Region', 'Dhanagoda ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(292, 'South East Region', 'Feni* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(293, 'South East Region', 'Bijni* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(294, 'South East Region', 'Buri ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(295, 'South East Region', 'Vulua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(296, 'South East Region', 'Mahuri* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(297, 'South East Region', 'Meghna (Upper) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(298, 'South East Region', 'Meghna (Lower) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(299, 'South East Region', 'Lahar ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(300, 'South East Region', 'Longon Bolvodra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(301, 'South East Region', 'Salda* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(302, 'South East Region', 'Selonia* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(303, 'South East Region', 'Sonai* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(304, 'South East Region', 'Hawra* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(305, 'South West Region', 'Atharbanki ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(306, 'South West Region', 'Arial Khan ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(307, 'South West Region', 'Atai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(308, 'South West Region', 'Andarmanick ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(309, 'South West Region', 'Afra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(310, 'South West Region', 'Arpangasia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(311, 'South West Region', 'Ichamati-Kalindi* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(312, 'South West Region', 'Kacha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(313, 'South West Region', 'Kapotakshi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(314, 'South West Region', 'Kumar (Chuadanga) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(315, 'South West Region', 'Kumar (Faridpur-Gopalganj) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(316, 'South West Region', 'Kumar (Upper) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(317, 'South West Region', 'Kumar (Lower) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(318, 'South West Region', 'Koyra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(319, 'South West Region', 'Karulia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(320, 'South West Region', 'Kankshiali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(321, 'South West Region', 'Kazibacha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(322, 'South West Region', 'Katakhali (Narail) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(323, 'South West Region', 'Katakhal (Tungipara) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(324, 'South West Region', 'Kaliganga (Pirojpur) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(325, 'South West Region', 'Kirtonkhola ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(326, 'South West Region', 'Khairabad ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(327, 'South West Region', 'Kholpetua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(328, 'South West Region', 'Garai ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(329, 'South West Region', 'Gunkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(330, 'South West Region', 'Galghasia (Gutia Khali) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(331, 'South West Region', 'Gulisakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(332, 'South West Region', 'Ghagar ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(333, 'South West Region', 'Ghasiakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(334, 'South West Region', 'Chatra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(335, 'South West Region', 'Chunkuri ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(336, 'South West Region', 'Chandana-Barasia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(337, 'South West Region', 'Chatkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(338, 'South West Region', 'Chitra (Chuadanga) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(339, 'South West Region', 'Jhap Jhapia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(340, 'South West Region', 'Tarki ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(341, 'South West Region', 'Tiakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(342, 'South West Region', 'Dhaki ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(343, 'South West Region', 'Tetulia (Barisal) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(344, 'South West Region', 'Teliganga-Ghengrail ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(345, 'South West Region', 'Daratana-Poylahara ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(346, 'South West Region', 'Darir Gang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(347, 'South West Region', 'Deluti ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(348, 'South West Region', 'Nunda-Otra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(349, 'South West Region', 'Nabaganga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(350, 'South West Region', 'Naria Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(351, 'South West Region', 'Nehalganj-Rangmatia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(352, 'South West Region', 'Patuakhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(353, 'South West Region', 'Putimari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(354, 'South West Region', 'Old Passur ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(355, 'South West Region', 'Passur ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(356, 'South West Region', 'Pandab ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(357, 'South West Region', 'Panguchhi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(358, 'South West Region', 'Palang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(359, 'South West Region', 'Fatki ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(360, 'South West Region', 'Bogi ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(361, 'South West Region', 'Burirswar-Payra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(362, 'South West Region', 'Baleswar ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(363, 'South West Region', 'Badurgachha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(364, 'South West Region', 'Bishkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(365, 'South West Region', 'Bisarkand-Bagda Khal ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(366, 'South West Region', 'Bishnu-Kumarkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(367, 'South West Region', 'Begabati ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(368, 'South West Region', 'Betna* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(369, 'South West Region', 'Belua ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(370, 'South West Region', 'Bhadra ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(371, 'South West Region', 'Bhubaneswar ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(372, 'South West Region', 'Bhairab ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(373, 'South West Region', 'Bhairab (Bagerhat)* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(374, 'South West Region', 'Bhairab-Kobadak ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(375, 'South West Region', 'Bhola (Bagerhat) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(376, 'South West Region', 'Mongla ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(377, 'South West Region', 'Mukteshwari Teka ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(378, 'South West Region', 'Madhumati ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(379, 'South West Region', 'Morirchap-Labangabati ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(380, 'South West Region', 'Mathabhanga* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(381, 'South West Region', 'Madar Gang ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(382, 'South West Region', 'Madaripur Bil Route ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(383, 'South West Region', 'Malancha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(384, 'South West Region', 'Minaj ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(385, 'South West Region', 'Rupsa (Khulna) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(386, 'South West Region', 'Rabnabad ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(387, 'South West Region', 'Raimangal* ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(388, 'South West Region', 'Lohalia ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(389, 'South West Region', 'Sakbaria ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(390, 'South West Region', 'Satla-Harta-Natherkanda ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(391, 'South West Region', 'Saildaha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(392, 'South West Region', 'Sibsa ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(393, 'South West Region', 'Solmari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(394, 'South West Region', 'Sugandha ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(395, 'South West Region', 'Shaynda ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(396, 'South West Region', 'Soya-Harinbhanga ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(397, 'South West Region', 'Shapmara-Habra (Khutikkhali) ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(398, 'South West Region', 'Salta ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(399, 'South West Region', 'Sirajpur Haor ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(400, 'South West Region', 'Hari ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(401, 'South West Region', 'Harihar ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(402, 'South West Region', 'Hamkura ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(403, 'South West Region', 'Haria ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(404, 'South West Region', 'Haparkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(405, 'South West Region', 'Habarkhali ', '2023-12-03 03:59:33', '2023-12-03 03:59:33'),
(406, 'South West Region', 'Hisna-Jhanja ', '2023-12-03 03:59:33', '2023-12-03 03:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_haor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `area`, `total_haor`, `header_img`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chhatak', '24,456 Hec', '95', 'uploads/images/4e7fbd5cfd296718678869129c56984c.jpeg', '<p>A scenic place full of beautiful haors, serene rivers, and culturally diverse monuments, Sunamganj, situated in the Sylhet division of north-eastern Bangladesh, is a place that travel enthusiasts will fall in love with. Whether you want to go for a single day tour or take your time to visit the beautiful places spread around the district, we recommend these 6 places to be part of your next travel itinerary.</p>\r\n', '2023-10-31 03:59:33', '2023-11-01 23:55:59'),
(2, 1, 'Dakshin', NULL, NULL, NULL, NULL, '2023-10-31 03:59:43', '2023-11-01 23:56:30'),
(3, 1, 'Derai', NULL, NULL, NULL, NULL, '2023-10-31 03:59:55', '2023-11-01 23:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@amarhaor.com', NULL, '$2y$10$reIcaogYWrWdr1UL8id87OB08Unx3jrivHJBQdljz5yeQhoMurJia', '3e9FzweWYgKvDklNpnPjALOKtRMHDOPTp9zrirsBP9G1BfiSFiOxXCfMJEWp', NULL, NULL),
(2, 'Ashraful', 'ashraful@hnsautomobiles.com', NULL, '$2y$10$kbw16WsprHk5I76KNJl/AeMFQlX/ZlrVOvcIPNMWdQWbKbOiSJW/W', NULL, NULL, NULL),
(3, 'Mahbub', 'mahbub@hnsautomobiles.com', NULL, '$2y$10$jEIrqUamkMtyhwTrAuNCN..fOwvfuuPT2xlh1EKzXOHaIYET5tcZK', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_logs`
--
ALTER TABLE `auth_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `haors`
--
ALTER TABLE `haors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `haors_district_id_foreign` (`district_id`),
  ADD KEY `haors_upazila_id_foreign` (`upazila_id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rivers`
--
ALTER TABLE `rivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazilas_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_logs`
--
ALTER TABLE `auth_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `haors`
--
ALTER TABLE `haors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rivers`
--
ALTER TABLE `rivers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `haors`
--
ALTER TABLE `haors`
  ADD CONSTRAINT `haors_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `haors_upazila_id_foreign` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`);

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
