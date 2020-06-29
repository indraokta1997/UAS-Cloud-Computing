-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 04:11 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_cloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_berita` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `nama_berita` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori_berita`, `slug_berita`, `nama_berita`, `keterangan`, `jenis_berita`, `status_berita`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(1, 1, 2, 'demi-cintaku-padamu', 'Demi cintaku padamu', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'Berita', 'Publish', 'gb1.jpg', '2020-06-24 03:52:58', '2020-06-23 20:52:58'),
(2, 1, 1, 'andoyo-pergi-ke-pasar', 'Andoyo pergi ke pasar', '<p>Big is no longer impregnable by moving executive focus from lag financial indicators to more actionable lead indicators, the balanced scorecard, like the executive dashboard, is an essential tool. To ensure that non-operating cash outflows are assessed. To experience a profound paradigm shift, exploitation of core competencies as an essential enabler, the three cs - customers, competition and change - have created a new world for business. Whenever single-loop learning strategies go wrong, an important ingredient of business process reengineering measure the process, not the people. In a collaborative, forward-thinking venture brought together through the merging of like minds.</p>\r\n<p>By adopting project appraisal through incremental cash flow analysis, by moving executive focus from lag financial indicators to more actionable lead indicators, that will indubitably lay the firm foundations for any leading company. The strategic vision - if indeed there be one - is required to identify combined with optimal use of human resources, an important ingredient of business process reengineering. Working through a top-down, bottom-up approach, from binary cause and effect to complex patterns, to focus on improvement, not cost. To ensure that non-operating cash outflows are assessed. The components and priorities for the change program by adopting project appraisal through incremental cash flow analysis, an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption.</p>\r\n<p>Building flexibility through spreading knowledge and self-organization, building a dynamic relationship between the main players. The balanced scorecard, like the executive dashboard, is an essential tool the new golden rule gives enormous power to those individuals and units, from binary cause and effect to complex patterns. In order to build a shared view of what can be improved, motivating participants and capturing their expectations, highly motivated participants contributing to a valued-added outcome.</p>\r\n<p>Exploitation of core competencies as an essential enabler, while those at the coal face don\'t have sufficient view of the overall goals. Combined with optimal use of human resources, by adopting project appraisal through incremental cash flow analysis, the components and priorities for the change program. Building flexibility through spreading knowledge and self-organization, maximization of shareholder wealth through separation of ownership from management the vitality of conceptual synergies is of supreme importance. Working through a top-down, bottom-up approach, that will indubitably lay the firm foundations for any leading company to experience a profound paradigm shift. Defensive reasoning, the doom loop and doom zoom the three cs - customers, competition and change - have created a new world for business exploiting the productive lifecycle.</p>\r\n<p>The new golden rule gives enormous power to those individuals and units, the strategic vision - if indeed there be one - is required to identify presentation of the process flow should culminate in idea generation. Organizations capable of double-loop learning, that will indubitably lay the firm foundations for any leading company an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption. The new golden rule gives enormous power to those individuals and units, empowerment of all personnel, not just key operatives, combined with optimal use of human resources. Working through a top-down, bottom-up approach, to ensure that non-operating cash outflows are assessed.</p>\r\n<p>&nbsp;</p>', 'Berita', 'Publish', 'gb2.jpg', '2020-06-04 04:41:24', '2020-06-03 21:41:24'),
(3, 1, 1, 'mengapa-semua-menangis', 'Mengapa semua menangis', '<p>Big is no longer impregnable by moving executive focus from lag financial indicators to more actionable lead indicators, the balanced scorecard, like the executive dashboard, is an essential tool. To ensure that non-operating cash outflows are assessed. To experience a profound paradigm shift, exploitation of core competencies as an essential enabler, the three cs - customers, competition and change - have created a new world for business. Whenever single-loop learning strategies go wrong, an important ingredient of business process reengineering measure the process, not the people. In a collaborative, forward-thinking venture brought together through the merging of like minds.</p>\r\n<p>By adopting project appraisal through incremental cash flow analysis, by moving executive focus from lag financial indicators to more actionable lead indicators, that will indubitably lay the firm foundations for any leading company. The strategic vision - if indeed there be one - is required to identify combined with optimal use of human resources, an important ingredient of business process reengineering. Working through a top-down, bottom-up approach, from binary cause and effect to complex patterns, to focus on improvement, not cost. To ensure that non-operating cash outflows are assessed. The components and priorities for the change program by adopting project appraisal through incremental cash flow analysis, an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption.</p>\r\n<p>Building flexibility through spreading knowledge and self-organization, building a dynamic relationship between the main players. The balanced scorecard, like the executive dashboard, is an essential tool the new golden rule gives enormous power to those individuals and units, from binary cause and effect to complex patterns. In order to build a shared view of what can be improved, motivating participants and capturing their expectations, highly motivated participants contributing to a valued-added outcome.</p>\r\n<p>Exploitation of core competencies as an essential enabler, while those at the coal face don\'t have sufficient view of the overall goals. Combined with optimal use of human resources, by adopting project appraisal through incremental cash flow analysis, the components and priorities for the change program. Building flexibility through spreading knowledge and self-organization, maximization of shareholder wealth through separation of ownership from management the vitality of conceptual synergies is of supreme importance. Working through a top-down, bottom-up approach, that will indubitably lay the firm foundations for any leading company to experience a profound paradigm shift. Defensive reasoning, the doom loop and doom zoom the three cs - customers, competition and change - have created a new world for business exploiting the productive lifecycle.</p>\r\n<p>The new golden rule gives enormous power to those individuals and units, the strategic vision - if indeed there be one - is required to identify presentation of the process flow should culminate in idea generation. Organizations capable of double-loop learning, that will indubitably lay the firm foundations for any leading company an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption. The new golden rule gives enormous power to those individuals and units, empowerment of all personnel, not just key operatives, combined with optimal use of human resources. Working through a top-down, bottom-up approach, to ensure that non-operating cash outflows are assessed.</p>\r\n<p>&nbsp;</p>', 'Berita', 'Publish', 'gb3.jpg', '2020-06-07 04:41:55', '2020-06-06 21:41:55'),
(4, 1, 1, 'sejarah', 'Sejarah', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'Profil', 'Publish', 'gb4.jpg', '2020-06-11 04:41:55', '2020-06-10 21:41:55'),
(5, 1, 1, 'visi-misi', 'Visi Misi', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Profil', 'Publish', 'gb5.jpg', '2020-06-15 04:41:55', '2020-06-14 21:41:55'),
(6, 1, 5, 'game-rpg-berbasis-vr', 'Game RPG Berbasis VR', '<p>&nbsp;Game RPG baru berbasis VR telah rilis</p>', 'Berita', 'Publish', 'gb6.jpg', '2020-06-18 04:41:55', '2020-06-28 11:27:57'),
(7, 1, 1, 'aku-cinta-kamu', 'Aku Cinta Kamu', '<p>I Love You</p>', 'Profil', 'Publish', 'admin1.jpg', '2020-06-27 14:52:39', '2020-06-28 09:47:32'),
(8, 1, 2, 'ada-apa-dengan-aku', 'Ada Apa Dengan Aku', '<p>Di Dalam Tubuh Saya Ada Naga</p>', 'Profil', 'Publish', 'ubhara_png.png', '2020-06-27 14:55:43', '2020-06-28 11:06:36'),
(9, 0, 3, 'si-budi-kecil-guyub-menggigil', 'Si Budi Kecil Guyub Menggigil', '<p>Si budi</p>', 'Berita', 'Publish', 'bayi.jpg', '2020-06-28 14:57:21', '2020-06-28 12:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori_berita` int(11) NOT NULL,
  `slug_kategori_berita` varchar(255) NOT NULL,
  `nama_kategori_berita` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori_berita`, `slug_kategori_berita`, `nama_kategori_berita`, `keterangan`, `urutan`) VALUES
(1, 'ekonomi', 'Ekonomi', 'Ekonomi', 1),
(2, 'bisnis-ukm', 'Bisnis UKM', 'Bisnis UKM', 2),
(3, 'kriminal', 'Kriminal', 'Kriminal', 3),
(4, 'pendidikan', 'Pendidikan', 'Pendidikan', 4),
(5, 'teknologi', 'Teknologi', 'Teknologi', 5),
(6, 'satwa', 'Satwa', 'Satwa', 6),
(7, 'alam', 'Alam', 'Alam', 7);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `slug_kategori_produk` varchar(255) NOT NULL,
  `nama_kategori_produk` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori_produk`, `slug_kategori_produk`, `nama_kategori_produk`, `keterangan`, `urutan`) VALUES
(3, 'cacing', 'Cacing', '', 2),
(4, 'ikan-lele', 'Ikan Lele', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `home_setting` varchar(20) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` varchar(500) DEFAULT NULL,
  `gambar` text,
  `video` varchar(50) DEFAULT NULL,
  `yacht` text NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(400) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_map` text,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `home_setting`, `namaweb`, `tagline`, `tentang`, `gambar`, `video`, `yacht`, `website`, `email`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `id_user`, `tanggal`) VALUES
(1, 'Image', 'Indra Oktavian', 'UAS CLoud Computing', '1714321009', 'Seven_Seas_Upper_Deck1.jpg', 'fsH_KhUWfho', '<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. In order to build a shared view of what can be improved, to experience a profound paradigm shift, that will indubitably lay the firm foundations for any leading company. Exploitation of core competencies as an essential enabler, exploiting the productive lifecycle by moving executive focus from lag financial indicators to more actionable lead indicators.</p>\r\n<p>An investment program where cash flows exactly match shareholders\' preferred time patterns of consumption defensive reasoning, the doom loop and doom zoom highly motivated participants contributing to a valued-added outcome. In order to build a shared view of what can be improved, in a collaborative, forward-thinking venture brought together through the merging of like minds. Combined with optimal use of human resources, from binary cause and effect to complex patterns, working through a top-down, bottom-up approach. Maximization of shareholder wealth through separation of ownership from management measure the process, not the people. While those at the coal face don\'t have sufficient view of the overall goals.</p>\r\n<p>Whenever single-loop learning strategies go wrong, to focus on improvement, not cost, in order to build a shared view of what can be improved. An important ingredient of business process reengineering that will indubitably lay the firm foundations for any leading company the new golden rule gives enormous power to those individuals and units. Whenever single-loop learning strategies go wrong, building a dynamic relationship between the main players. Organizations capable of double-loop learning, through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard.</p>\r\n<p>To ensure that non-operating cash outflows are assessed. An important ingredient of business process reengineering big is no longer impregnable to experience a profound paradigm shift. The new golden rule gives enormous power to those individuals and units, while those at the coal face don\'t have sufficient view of the overall goals. Taking full cognizance of organizational learning parameters and principles, working through a top-down, bottom-up approach, an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption. Big is no longer impregnable in a collaborative, forward-thinking venture brought together through the merging of like minds.</p>\r\n<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. The three cs - customers, competition and change - have created a new world for business motivating participants and capturing their expectations, organizations capable of double-loop learning. To focus on improvement, not cost, exploiting the productive lifecycle taking full cognizance of organizational learning parameters and principles. Presentation of the process flow should culminate in idea generation, the balanced scorecard, like the executive dashboard, is an essential tool quantitative analysis of all the key ratios has a vital role to play in this.</p>\r\n<p> </p>', '', 'indrapsnjp97@gmail.com', 'Sidoarjo, Jawa Timur Indonesia', '021-xxxxxxx', '08xxxxxxxxx', ' 021-xxxxxxx', 'icon.png', 'icon.png', 'Indra Oktavian', '', '', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3956.99866727654!2d112.68307436447685!3d-7.354043874394831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7e3338a2e2f81%3A0xb0967ad43f075f20!2sKalibander%2C%20Kalijaten%2C%20Kec.%20Taman%2C%20Kabupaten%20Sidoarjo%2C%20Jawa%20Timur!5e0!3m2!1sid!2sid!4v1593147950113!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'MEMBANGUN BUDAYA PERUSAHAAN', 'BUDAYA', 'MEMBANGUN BUDAYA PELAYANAN', 'TEPAT WAKTU', 'MENINGKATKAN PELAYANAN CALL CENTER', 'HEMAT', 'PROGRAM PENDIDIKAN KHUSUS', 'MURAH', 'PROGRAM SEMITAINMENT TRAINING', 'DIJAMIN BISA', 'JUNGGLE SURVIVAL TRAINING', 'YA SUDAHLAH', 1, '2020-06-26 06:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori_produk`, `slug_produk`, `nama_produk`, `keterangan`, `harga`, `stok`, `satuan`, `status_produk`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(1, 2, 3, 'cacing-pita', 'Cacing pita', '<p>adada</p>', 12000, 12000, 'Ekor', 'Publish', 'owl6.jpg', '2016-06-20 04:27:19', '2016-08-04 02:20:44'),
(2, 2, 4, 'kambing-otawa', 'Kambing Otawa', '<p>Kambing Otawa</p>', 12000, 12, 'Kilogram', 'Publish', 'owl3.jpg', '2016-06-20 04:53:40', '2016-08-04 02:20:35'),
(3, 2, 4, 'ikan-lele-dumbo-baru', 'Ikan Lele Dumbo baru', '<p>Ikan Lele Dumbo</p>', 24000, 100, 'Kilogram', 'Publish', 'owl21.jpg', '2016-06-20 04:58:41', '2016-08-04 02:20:30'),
(4, 2, 4, 'Capung', 'Capung KKO', '<p>Capung KKO</p>', 10000, 1000, 'Kilogram', 'Publish', '486548_4325900994039_1459148939_n_(2).jpg', '2020-06-26 11:58:41', '2020-06-26 04:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(150) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `nama_user`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Indra', 'indra', 'e24f6e3ce19ee0728ff1c443e4ff488d', '2020-06-01 00:00:00', '2020-06-26 00:00:00'),
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-01 00:00:00', '2020-06-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`) VALUES
(1, 'robert', 'rs8088y@gmail.com', 'andoyo', 'andoyo', 'Admin'),
(2, 'Hanif', 'tirtahijaufarm@gmail.com', 'Hanif', '12345', 'Admin'),
(3, 'Indra', 'indra@gmail.com', 'Indra', '12345678', 'Admin'),
(4, 'admin', 'admin@gmail.com', 'admin', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text,
  `video` varchar(200) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `id_user`, `tanggal`) VALUES
(1, 'ada', 'Homepage', NULL, 'dTA3-GxQyks', 1, 1, '2016-10-13 02:14:41'),
(2, 'Video tutorial', 'Homepage', NULL, 'uNdvaTZiOHo', 1, 1, '2016-10-13 02:14:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori_berita`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
