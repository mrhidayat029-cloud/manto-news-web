-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 04:49 AM
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
-- Database: `mantobase`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add biodata', 7, 'add_biodata'),
(26, 'Can change biodata', 7, 'change_biodata'),
(27, 'Can delete biodata', 7, 'delete_biodata'),
(28, 'Can view biodata', 7, 'view_biodata'),
(29, 'Can add kategori', 8, 'add_kategori'),
(30, 'Can change kategori', 8, 'change_kategori'),
(31, 'Can delete kategori', 8, 'delete_kategori'),
(32, 'Can view kategori', 8, 'view_kategori'),
(33, 'Can add artikel', 9, 'add_artikel'),
(34, 'Can change artikel', 9, 'change_artikel'),
(35, 'Can delete artikel', 9, 'delete_artikel'),
(36, 'Can view artikel', 9, 'view_artikel'),
(37, 'Can add sumber', 10, 'add_sumber'),
(38, 'Can change sumber', 10, 'change_sumber'),
(39, 'Can delete sumber', 10, 'delete_sumber'),
(40, 'Can view sumber', 10, 'view_sumber'),
(41, 'Can add sosial media', 11, 'add_sosialmedia'),
(42, 'Can change sosial media', 11, 'change_sosialmedia'),
(43, 'Can delete sosial media', 11, 'delete_sosialmedia'),
(44, 'Can view sosial media', 11, 'view_sosialmedia');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$UFoHpip9dQCA954v9VGKNV$SBt5tEahLhmPZW06HxQVFkn/RwUtCOc+rYSuVltcs7E=', '2024-05-31 11:14:44.978267', 1, 'rahman', '', '', '2011102441012@umkt.ac.id', 1, 1, '2024-04-24 14:00:16.000000'),
(2, 'pbkdf2_sha256$720000$Hwdj2xj9TJoUfQ4yKpdeAO$QPWqzdInKdHM3J5rrlkozSIy9Fq/eiUQJhW2bsbFfJ4=', NULL, 0, 'hidayat', '', '', '', 0, 1, '2024-04-24 14:12:18.000000'),
(6, 'pbkdf2_sha256$720000$94mViv61MwrCjsNdi6Cubq$5Hpz0SPrvxfH5g6j7ELCu78wcNy1snIPalIF6z8GhkY=', '2024-05-04 13:28:42.438389', 0, 'wahyu', 'laksamana', 'musa', 'btg@gmail.com', 0, 1, '2024-05-04 10:10:45.514877');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita_artikel`
--

CREATE TABLE `berita_artikel` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita_artikel`
--

INSERT INTO `berita_artikel` (`id`, `judul`, `isi`, `thumbnail`, `author_id`, `kategori_id`, `created_at`, `slug`) VALUES
(1, 'Pelupuh Songket Hitam', 'Harga : Rp. 550.000,00 |\r\nStok : 4', 'artikel/WhatsApp_Image_2024-05-27_at_17.19.05.jpeg', 1, 6, '2024-05-03 11:25:46.731267', '2024-5-4-pr-prabowo-usai-resmi-jadi-presiden-terpilih'),
(2, 'Pelupuh Songket Coklat', 'Harga : Rp. 550.000,00 | Stok : 3', 'artikel/WhatsApp_Image_2024-05-27_at_17.19.04_1.jpeg', 1, 6, '2024-05-03 11:25:46.731267', '2024-5-4-identitas-6-tersangka-narkoba'),
(3, 'Pelupuh Songket kuning', 'Harga : Rp. 550.000,00 | Stok : 6', 'artikel/WhatsApp_Image_2024-05-27_at_17.19.04.jpeg', 1, 6, '2024-05-03 11:25:46.731267', '2024-5-4-beras-basah-bontang'),
(7, 'Sanging Gedokan Samarinda', 'Harga : Rp. 250.000,00 | Stok : 4', 'artikel/WhatsApp_Image_2024-05-27_at_17.27.03.jpeg', 1, 6, '2024-05-04 12:31:21.542809', '2024-5-4-samarinda-hujan-badai'),
(8, 'Motif Hatta', 'Harga : Rp. 250.000,00 | Stok : 3', 'artikel/WhatsApp_Image_2024-05-27_at_17.28.15.jpeg', 1, 6, '2024-05-04 13:17:26.238715', '2024-5-4-xiaomi-14'),
(9, 'Motif Hatta', 'Harga : Rp. 250.000,00 | Stok : 3', 'artikel/WhatsApp_Image_2024-05-27_at_17.29.02.jpeg', 1, 6, '2024-05-27 10:31:42.670678', '2024-5-27-motif-hatta'),
(10, 'Motif Hatta', 'Harga : Rp. 250.000,00 | Stok : 6', 'artikel/WhatsApp_Image_2024-05-27_at_17.29.02_1.jpeg', 1, 6, '2024-05-27 10:31:47.192240', '2024-5-27-mot'),
(11, 'Motif Granson', 'Harga : Rp. 250.000,00 | Stok : 5', 'artikel/WhatsApp_Image_2024-05-27_at_17.30.03.jpeg', 1, 6, '2024-05-27 10:32:33.597154', '2024-5-27-motif-granson'),
(12, 'Motif Pucuk Sokbi', 'Harga : Rp. 250.000,00 | Stok : 8', 'artikel/WhatsApp_Image_2024-05-27_at_17.21.14.jpeg', 1, 6, '2024-05-27 10:33:38.650086', '2024-5-27-motif-pucuk-sokbi'),
(15, 'Kopiah Samainda', 'Harga : Rp. 110.000,00 | Stok : 9', 'artikel/WhatsApp_Image_2024-05-27_at_17.23.12.jpeg', 1, 1, '2024-05-27 10:35:29.730231', '2024-5-27-kopiah-samainda'),
(16, 'Motif Cetak', 'buruan di order murah aja wall 250k', 'artikel/WhatsApp_Image_2024-05-27_at_17.34.17.jpeg', 1, 6, '2024-05-27 10:37:08.518215', '2024-5-27-motif-cetak');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita_kategori`
--

INSERT INTO `berita_kategori` (`id`, `nama`) VALUES
(1, 'Kopiah'),
(6, 'Sarung');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-24 14:12:20.035952', '2', 'hidayat', 1, '[{\"added\": {}}]', 4, 1),
(2, '2024-04-24 14:13:35.049338', '1', 'kawan rahan', 1, '[{\"added\": {}}]', 3, 1),
(3, '2024-04-24 14:14:14.222482', '2', 'hidayat', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(4, '2024-04-25 05:58:06.388301', '1', 'kawan rahman', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(5, '2024-04-25 11:25:30.090853', '1', 'rahman', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-25 11:30:41.176056', '2', 'hidayat', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-04-25 12:57:15.696524', '1', 'Kategori object (1)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-04-25 13:03:42.143228', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih  Baca artikel detiknews, \"PR Prabowo Usai Resmi Jadi Presiden Terpilih\" selengkapnya https://news.detik.com/berita/d-7308362/pr-prabowo-usai-resmi-jadi-pre', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-04-25 13:04:17.267263', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 9, 1),
(10, '2024-04-25 13:11:49.800656', '1', 'rahman', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 7, 1),
(11, '2024-04-25 13:26:57.881399', '2', 'Makanan', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-04-25 13:27:09.955127', '3', 'Olahraga', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-04-25 14:08:15.020704', '2', 'Identitas 6 Tersangka Narkoba: Chandrika Chika, Jeixy hingga Monica Muller  Baca artikel detiknews, \"Identitas 6 Tersangka Narkoba: Chandrika Chika, Jeixy hingga Monica Muller\"', 1, '[{\"added\": {}}]', 9, 1),
(14, '2024-04-25 14:08:43.691845', '4', 'Pidana', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-04-25 14:08:52.366729', '2', 'Identitas 6 Tersangka Narkoba: Chandrika Chika, Jeixy hingga Monica Muller  Baca artikel detiknews, \"Identitas 6 Tersangka Narkoba: Chandrika Chika, Jeixy hingga Monica Muller\"', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 9, 1),
(16, '2024-04-25 14:44:48.976433', '13', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih - Detik.com', 1, '[{\"added\": {}}]', 11, 1),
(17, '2024-05-03 16:36:21.740416', '5', 'nasi padang', 2, '[]', 9, 1),
(18, '2024-05-03 16:36:47.134965', '3', 'beras basah bontang', 2, '[]', 9, 1),
(19, '2024-05-03 16:37:00.124841', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[]', 9, 1),
(20, '2024-05-03 17:01:13.243743', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 9, 1),
(21, '2024-05-03 17:01:18.395600', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[]', 9, 1),
(22, '2024-05-03 17:02:30.852840', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 9, 1),
(23, '2024-05-03 17:04:11.473888', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 9, 1),
(24, '2024-05-03 17:04:16.942642', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[]', 9, 1),
(25, '2024-05-03 17:04:55.664330', '5', 'nasi padang', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 9, 1),
(26, '2024-05-03 17:05:01.370158', '3', 'beras basah bontang', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 9, 1),
(27, '2024-05-03 17:05:06.765120', '2', 'Identitas 6 Tersangka Narkoba', 2, '[]', 9, 1),
(28, '2024-05-03 17:05:09.930747', '1', 'PR Prabowo Usai Resmi Jadi Presiden Terpilih', 2, '[]', 9, 1),
(29, '2024-05-03 17:05:14.061910', '5', 'nasi padang', 2, '[]', 9, 1),
(30, '2024-05-03 17:05:16.901324', '3', 'beras basah bontang', 2, '[]', 9, 1),
(31, '2024-05-03 17:05:20.631740', '2', 'Identitas 6 Tersangka Narkoba', 2, '[]', 9, 1),
(32, '2024-05-04 09:47:39.571854', '4', 'dona', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(33, '2024-05-04 10:08:58.014686', '4', 'dona', 3, '', 4, 1),
(34, '2024-05-04 11:30:13.089765', '1', 'kawan rahman', 3, '', 3, 1),
(35, '2024-05-04 11:40:02.210243', '1', 'rahman', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'berita', 'artikel'),
(8, 'berita', 'kategori'),
(11, 'berita', 'sosialmedia'),
(10, 'berita', 'sumber'),
(5, 'contenttypes', 'contenttype'),
(7, 'pengguna', 'biodata'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-24 13:37:38.724743'),
(2, 'auth', '0001_initial', '2024-04-24 13:37:39.132157'),
(3, 'admin', '0001_initial', '2024-04-24 13:37:39.234220'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-24 13:37:39.253221'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-24 13:37:39.275224'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-24 13:37:39.360783'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-24 13:37:39.417227'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-24 13:37:39.509226'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-24 13:37:39.528225'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-24 13:37:39.604091'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-24 13:37:39.609090'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-24 13:37:39.629090'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-24 13:37:39.657090'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-24 13:37:39.690090'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-24 13:37:39.714090'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-24 13:37:39.734089'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-24 13:37:39.760089'),
(18, 'sessions', '0001_initial', '2024-04-24 13:37:39.790368'),
(19, 'pengguna', '0001_initial', '2024-04-25 11:15:43.016104'),
(20, 'berita', '0001_initial', '2024-04-25 12:48:36.509992'),
(21, 'berita', '0002_alter_artikel_options_alter_kategori_options_and_more', '2024-04-25 13:10:45.386754'),
(22, 'pengguna', '0002_biodata_foto', '2024-04-25 13:10:45.454889'),
(23, 'berita', '0003_sumber', '2024-04-25 13:34:41.547503'),
(24, 'pengguna', '0003_alter_biodata_options', '2024-04-25 13:34:41.563115'),
(25, 'berita', '0004_sosialmedia_delete_sumber', '2024-04-25 13:40:25.214959'),
(26, 'berita', '0009_artikel_created_at', '2024-05-03 11:25:46.793781'),
(27, 'berita', '0005_alter_sosialmedia_options_and_more', '2024-05-03 16:26:55.801366'),
(28, 'berita', '0006_alter_sosialmedia_options', '2024-05-03 16:27:22.115738'),
(29, 'berita', '0007_alter_sosialmedia_judul', '2024-05-03 16:34:29.665054'),
(30, 'berita', '0008_delete_sosialmedia', '2024-05-03 16:34:29.675114'),
(31, 'berita', '0010_merge_0008_delete_sosialmedia_0009_artikel_created_at', '2024-05-03 16:34:29.675114'),
(32, 'berita', '0011_artikel_slug', '2024-05-03 16:34:29.794905'),
(33, 'berita', '0012_remove_artikel_slug', '2024-05-03 16:34:29.825286'),
(34, 'berita', '0013_sosialmedia', '2024-05-03 16:34:29.865192'),
(35, 'berita', '0014_delete_sosialmedia', '2024-05-03 16:34:29.885395'),
(36, 'berita', '0015_artikel_slug', '2024-05-03 16:35:47.835218');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4dp0pvgbgqt5qg3j0xhgwuf4m2bh6msa', '.eJxVjMsOwiAQRf-FtSGMwEBduu83kJkOSNXQpI-V8d-1SRe6veec-1KJtrWmbclzGkVdFKjT78Y0PHLbgdyp3SY9TG2dR9a7og-66H6S_Lwe7t9BpaV-a8sFnc90ZvACceiAwaCwAWaJEFzsIhqfOwsePRos4jAELtFKICD1_gDSfjdC:1s3BQR:FvrEG7obt0UduXIFrlX8E9-Sh-lpkq47vGq70e0bJfE', '2024-05-18 09:11:23.777822'),
('5sm63nqq4z3q5jjyxhwo7acm1w57vs3y', '.eJxVjMsOwiAQRf-FtSGMwEBduu83kJkOSNXQpI-V8d-1SRe6veec-1KJtrWmbclzGkVdFKjT78Y0PHLbgdyp3SY9TG2dR9a7og-66H6S_Lwe7t9BpaV-a8sFnc90ZvACceiAwaCwAWaJEFzsIhqfOwsePRos4jAELtFKICD1_gDSfjdC:1s3BgK:VcUV_SDt68_gCL2aVbgCeFUZk0wExhDH7noMvoQRk0M', '2024-05-18 09:27:48.969689');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_biodata`
--

CREATE TABLE `pengguna_biodata` (
  `id` bigint(20) NOT NULL,
  `alamat` longtext DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna_biodata`
--

INSERT INTO `pengguna_biodata` (`id`, `alamat`, `telpon`, `user_id`, `foto`) VALUES
(1, 'samarinda', '081649051698', 1, 'pengguna/WhatsApp_Image_2024-03-30_at_11.12.27.jpeg'),
(2, 'bontang', '089613051698', 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `berita_artikel_author_id_3519cf92_fk_auth_user_id` (`author_id`),
  ADD KEY `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` (`kategori_id`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD CONSTRAINT `berita_artikel_author_id_3519cf92_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `berita_kategori` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD CONSTRAINT `pengguna_biodata_user_id_e6b22e27_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
