-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 04:17 AM
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
-- Database: `tryintellilearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'admin', '2023-12-21 08:37:51', 'Add Subject 1234'),
(12, 'admin', '2024-01-17 10:15:57', 'Edit Subject MT1001'),
(13, 'admin', '2024-01-17 10:16:47', 'Edit Subject S001MT'),
(14, 'admin', '2024-01-17 10:17:33', 'Edit Subject S001GR'),
(15, 'admin', '2024-01-17 10:18:05', 'Edit Subject S001EG'),
(16, 'admin', '2024-01-17 10:18:36', 'Edit Subject S001AC'),
(17, 'admin', '2024-01-17 10:19:06', 'Edit Subject S001PJ'),
(18, 'admin', '2024-01-17 10:19:39', 'Edit Subject S002MT'),
(19, 'admin', '2024-01-17 12:51:14', 'Edit Subject S001BM1');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D'),
(93, 39, 'wq', 'A'),
(94, 39, 'qw', 'B'),
(95, 39, '21', 'C'),
(96, 39, '12', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2013-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1'),
(3, 'uploads/3617_File_login.mdb', '2013-10-28 19:35:28', 'q', 9, 80, 'q'),
(4, 'admin/uploads/7146_File_normalization.ppt', '2013-10-30 18:48:15', 'fsaf', 9, 95, 'fsaf'),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2013-10-30 18:48:33', 'fsaf', 9, 95, 'dsaf'),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2013-10-30 18:53:32', 'file', 9, 95, 'abstract'),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2013-11-01 13:13:18', 'fsafasf', 9, 95, 'Assignment#2'),
(11, 'admin/uploads/1511_File_bootstrap.css', '2013-11-01 13:18:25', 'sdsa', 9, 95, 'css'),
(12, 'admin/uploads/4309_File_new  2.txt', '2013-11-17 23:21:46', 'test', 12, 145, 'test'),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2013-11-18 16:59:35', 'q', 12, 145, 'q'),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:38:45', 'afs', 18, 159, 'dasf'),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:19', 'test', 18, 160, 'assign1'),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2013-11-25 15:53:20', 'q', 12, 161, 'q'),
(19, '', '2013-12-07 20:11:39', 'kevin test', 12, 162, ''),
(20, '', '2013-12-07 20:26:43', 'dasddsd', 12, 145, ''),
(21, '', '2013-12-07 20:26:43', 'dasddsd', 12, 162, ''),
(22, '', '2013-12-07 20:27:18', 'dasffsafsaf', 12, 162, ''),
(23, '', '2013-12-07 20:33:11', 'test', 12, 162, ''),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:39:05', 'kevin', 12, 0, 'kevin'),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:41:10', 'kevin', 12, 0, 'kevin'),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:43:25', 'kevin', 12, 0, 'kevin'),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:47:48', 'fasfafaf', 12, 0, 'fasf'),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:48:59', 'dasdasd', 12, 0, 'dasd'),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:50:47', 'dasdasd', 12, 0, 'dsad'),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 12, 167, 'q'),
(31, 'admin/uploads/8289_File_sample.pdf', '2020-12-21 09:56:48', 'asdasd', 9, 186, 'asdasd'),
(32, 'admin/uploads/7495_File_aichatbot-200110223419.pdf', '2024-01-04 07:51:50', 'bulying', 1, 1, 'cyberbulliying');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` enum('Present','Absent') NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `status`, `date`) VALUES
(1, 1, 'Present', '2024-01-17'),
(2, 2, 'Present', '2024-01-17'),
(3, 3, 'Present', '2024-01-17'),
(4, 4, 'Present', '2024-01-17'),
(5, 5, 'Present', '2024-01-17'),
(6, 6, 'Present', '2024-01-17'),
(7, 7, 'Present', '2024-01-17'),
(8, 8, 'Present', '2024-01-17'),
(9, 9, 'Present', '2024-01-17'),
(10, 11, 'Present', '2024-01-17'),
(11, 12, 'Present', '2024-01-17'),
(12, 13, 'Present', '2024-01-17'),
(13, 14, 'Present', '2024-01-17'),
(14, 15, 'Present', '2024-01-17'),
(15, 16, 'Present', '2024-01-17'),
(16, 17, 'Present', '2024-01-17'),
(17, 19, 'Present', '2024-01-17'),
(18, 20, 'Present', '2024-01-17'),
(19, 21, 'Present', '2024-01-17'),
(20, 22, 'Present', '2024-01-17'),
(21, 24, 'Present', '2024-01-17'),
(22, 25, 'Present', '2024-01-17'),
(23, 26, 'Present', '2024-01-17'),
(24, 27, 'Present', '2024-01-17'),
(25, 28, 'Present', '2024-01-17'),
(26, 29, 'Present', '2024-01-17'),
(27, 30, 'Present', '2024-01-17'),
(28, 31, 'Present', '2024-01-17'),
(29, 32, 'Absent', '2024-01-17'),
(30, 33, 'Present', '2024-01-17'),
(31, 34, 'Present', '2024-01-17'),
(32, 35, 'Present', '2024-01-17'),
(33, 36, 'Present', '2024-01-17'),
(34, 37, 'Present', '2024-01-17'),
(35, 38, 'Present', '2024-01-17'),
(36, 1, 'Present', '2024-01-17'),
(37, 2, 'Present', '2024-01-17'),
(38, 3, 'Present', '2024-01-17'),
(39, 4, 'Present', '2024-01-17'),
(40, 5, 'Present', '2024-01-17'),
(41, 6, 'Present', '2024-01-17'),
(42, 7, 'Present', '2024-01-17'),
(43, 8, 'Present', '2024-01-17'),
(44, 9, 'Present', '2024-01-17'),
(45, 11, 'Present', '2024-01-17'),
(46, 12, 'Present', '2024-01-17'),
(47, 13, 'Present', '2024-01-17'),
(48, 14, 'Present', '2024-01-17'),
(49, 15, 'Present', '2024-01-17'),
(50, 16, 'Present', '2024-01-17'),
(51, 17, 'Present', '2024-01-17'),
(52, 19, 'Present', '2024-01-17'),
(53, 20, 'Present', '2024-01-17'),
(54, 21, 'Present', '2024-01-17'),
(55, 22, 'Present', '2024-01-17'),
(56, 24, 'Present', '2024-01-17'),
(57, 25, 'Present', '2024-01-17'),
(58, 26, 'Present', '2024-01-17'),
(59, 27, 'Present', '2024-01-17'),
(60, 28, 'Present', '2024-01-17'),
(61, 29, 'Present', '2024-01-17'),
(62, 30, 'Present', '2024-01-17'),
(63, 31, 'Present', '2024-01-17'),
(64, 32, 'Absent', '2024-01-17'),
(65, 33, 'Present', '2024-01-17'),
(66, 34, 'Present', '2024-01-17'),
(67, 35, 'Present', '2024-01-17'),
(68, 36, 'Present', '2024-01-17'),
(69, 37, 'Present', '2024-01-17'),
(70, 38, 'Present', '2024-01-17'),
(71, 2, 'Present', '2024-01-17'),
(72, 3, 'Present', '2024-01-17'),
(73, 4, 'Present', '2024-01-17'),
(74, 5, 'Present', '2024-01-17'),
(75, 6, 'Present', '2024-01-17'),
(76, 7, 'Present', '2024-01-17'),
(77, 8, 'Present', '2024-01-17'),
(78, 9, 'Present', '2024-01-17'),
(79, 10, 'Present', '2024-01-17'),
(80, 11, 'Absent', '2024-01-17'),
(81, 12, 'Present', '2024-01-17'),
(82, 13, 'Present', '2024-01-17'),
(83, 14, 'Present', '2024-01-17'),
(84, 15, 'Present', '2024-01-17'),
(85, 16, 'Present', '2024-01-17'),
(86, 17, 'Present', '2024-01-17'),
(87, 18, 'Present', '2024-01-17'),
(88, 19, 'Present', '2024-01-17'),
(89, 20, 'Present', '2024-01-17'),
(90, 21, 'Present', '2024-01-17'),
(91, 22, 'Present', '2024-01-17'),
(92, 23, 'Present', '2024-01-17'),
(93, 24, 'Present', '2024-01-17'),
(94, 25, 'Present', '2024-01-17'),
(95, 26, 'Present', '2024-01-17'),
(96, 27, 'Present', '2024-01-17'),
(97, 28, 'Present', '2024-01-17'),
(98, 29, 'Present', '2024-01-17'),
(99, 30, 'Present', '2024-01-17'),
(100, 31, 'Present', '2024-01-17'),
(101, 221, 'Present', '2024-01-17'),
(102, 32, 'Present', '2024-01-17'),
(103, 33, 'Present', '2024-01-17'),
(104, 34, 'Present', '2024-01-17'),
(105, 35, 'Present', '2024-01-17'),
(106, 36, 'Present', '2024-01-17'),
(107, 37, 'Present', '2024-01-17'),
(108, 38, 'Present', '2024-01-17'),
(109, 2, 'Present', '2024-01-17'),
(110, 3, 'Present', '2024-01-17'),
(111, 4, 'Present', '2024-01-17'),
(112, 5, 'Present', '2024-01-17'),
(113, 6, 'Present', '2024-01-17'),
(114, 7, 'Present', '2024-01-17'),
(115, 8, 'Present', '2024-01-17'),
(116, 9, 'Present', '2024-01-17'),
(117, 10, 'Present', '2024-01-17'),
(118, 11, 'Absent', '2024-01-17'),
(119, 12, 'Present', '2024-01-17'),
(120, 13, 'Present', '2024-01-17'),
(121, 14, 'Absent', '2024-01-17'),
(122, 15, 'Present', '2024-01-17'),
(123, 16, 'Present', '2024-01-17'),
(124, 17, 'Absent', '2024-01-17'),
(125, 18, 'Absent', '2024-01-17'),
(126, 19, 'Present', '2024-01-17'),
(127, 20, 'Present', '2024-01-17'),
(128, 21, 'Present', '2024-01-17'),
(129, 22, 'Present', '2024-01-17'),
(130, 23, 'Absent', '2024-01-17'),
(131, 24, 'Present', '2024-01-17'),
(132, 25, 'Present', '2024-01-17'),
(133, 26, 'Absent', '2024-01-17'),
(134, 27, 'Present', '2024-01-17'),
(135, 28, 'Present', '2024-01-17'),
(136, 29, 'Present', '2024-01-17'),
(137, 30, 'Present', '2024-01-17'),
(138, 31, 'Present', '2024-01-17'),
(139, 221, 'Present', '2024-01-17'),
(140, 32, 'Present', '2024-01-17'),
(141, 33, 'Present', '2024-01-17'),
(142, 34, 'Present', '2024-01-17'),
(143, 35, 'Present', '2024-01-17'),
(144, 36, 'Present', '2024-01-17'),
(145, 37, 'Present', '2024-01-17'),
(146, 38, 'Present', '2024-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, '1-BERLIAN'),
(2, '1-ZAMRUD'),
(3, '1-INTAN'),
(4, '1-DELIMA'),
(5, '2-BERLIAN'),
(6, '2-ZAMRUD'),
(7, '2-INTAN'),
(8, '2-DELIMA'),
(9, '3-BERLIAN'),
(10, '3-ZAMRUD'),
(11, '3-INTAN'),
(12, '3-DELIMA'),
(13, '4-BERLIAN'),
(14, '4-ZAMRUD'),
(15, '4-INTAN'),
(16, '4-DELIMA'),
(17, '5-BERLIAN'),
(18, '5-ZAMRUD'),
(19, '5-INTAN'),
(20, '5-DELIMA');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6),
(18, 1, 1800, 7);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 1, '<p>Bab 1 BM</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `courseCode`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Sample Comment 101', 'class101_a', 'james_foreman', 'claire_blake', '2022-07-07 16:25:07', 'no', 2),
(2, 'Test', 'class101_a', 'claire_blake', 'claire_blake', '2022-07-07 16:25:36', 'no', 2);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>MISSION</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><span style=\"font-size:18px\">   Melestarikan Sisitem Pendidikan Yang Berkualiti Untuk Membangunkan Potensi Individu Bagi Memenuhi Aspirasi Negara.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>VISION</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; Pendidikan Berkualiti Insan Terdidik Negara Sejahtera. </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEKOLAH MENENGAH TUANKU ABDUL RAHMAN,BATU ARANG SELANGOR, Sekolah ini yang diasaskan oleh En.Baktiar Singh pada awalnya adalah sebuah sekolah Inggeris swasta dengan nama Batu Arang English School pada tahun 1930-an. Operasi sekolah ini diuruskan oleh Syarikat Perlombongan Arang Batu pada tahun 1942, Kemudiannya, sekolah ini diambil alih oleh pemerintah Jepun dan menyerahkannya kepada Syarikat Malayan Colleries Limited (MCL) untuk dikendalikan pada tahun 1945. Pada tahun 1959, aktiviti perlombongan arang batu telah ditutup. Kesan dari penutupan itu, kerajaan telah mengambil alih pengurusan sekolah dengan nama Sekolah Rendah/Menengah Jenis Kebangsaan Inggeris.\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\nSekolah ini dirasmikan oleh Menteri Besar Selangor, Dato’ Abu Bakar Baginda pada tahun 1961. Mulai tahun 1966, bangunan sekolah menengah dan rendah diasingkan dan sembilan buah bilik darjah kemudianya dibina lagi pada tahun 1968 untuk menempatkan pertambahan bilangan pelajar yang semakin meningkat pada ketika itu. Bangunan tersebut kemudianya dirasmikan oleh Menteri Pelajaran, En. Khir Johari pada 22 Februari 1969 dengan nama baru iaitu Sekolah Menengah Tuanku Abdul Rahman.\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\nPada tahun 1983, kelas tingkatan 4 dibuka dan peperiksaan Sijil Pelajaran Malaysia (SPM) yang pertama telah diadakan pada tahun 1985. Blok konkrit tambahan telah dibina pada tahun 1989 hingga 1991. Pada tahun 2001, sekolah buat kali yang pertama telah menerima Anugerah Cemerlang Pejabat Pelajaran Daerah Gombak bagi pencapaian cemerlang dalam keputusan PMR dan SPM bagi tahun 2000. SMKTAR juga telah berjaya mencatatkan kecemerlangan pencapaian peratusan keseluruhan PMR pada tahun 2007 dengan peratusan sebanyak 63.3%. Pada tahun yang sama juga SMKTAR telah menerima penghargaan dari Jabatan Pelajaran Negeri Selangor (JPS) bagi kategori Lonjakan Saujana.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>'),
(4, 'Footer', '<p style=\"text-align:center\">CHMSC Online Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2013</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">CHMSC Online Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>WELCOME NEW YAR 2024 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>January 2024&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Lokasi Koordinat -  3°19?03?N 101°28?22?E? / ?3.317509°N 101.472722°E</li>\r\n	<li>Nombor sekolah -  	360352237</li>\r\n	<li>Kod sekolah - BEB7655</li>\r\n	<li>Faks - 360353198</li>\r\n	<li>Pengetua - Puan Nor Anida binti Mamat</li>\r\n	<li>GPK Pentadbiran dan Akademik - 	Puan Vasante a/p Palanisamy</li>\r\n	<li>Penolong Kanan Hal Ehwal Murid -  Puan Hasiah binti Mamat</li>\r\n	<li>Penolong Kanan Kokurikulum - 	Encik. K. Ravechandran a/l Krishnasamy</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<pre>\r\n<span style=\"font-size:16px\"><strong>MOTTO</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><span style=\"font-size:18px\">Akhlak, Pengetahuan, Semangat</span></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>PERSATUAN IBU BAPA DAN GURU</strong></span></pre>\r\n\r\n<ul>\r\n	<li>IBU BAPA</li>\r\n	<li>GURU</li>\r\n	<li>MURID</li>\r\n	<li>TARIKH: 28 JUN 2024<br />\r\n	&nbsp;</li>\r\n</ul>\r\n'),
(15, 'Fas', '<p>hai</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `createclass`
--

CREATE TABLE `createclass` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `className` varchar(50) NOT NULL,
  `section` varchar(25) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `num_posts` int(11) NOT NULL,
  `student_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `createclass`
--

INSERT INTO `createclass` (`id`, `username`, `className`, `section`, `subject`, `courseCode`, `date`, `num_posts`, `student_array`) VALUES
(1, 'claire_blake', 'Class101', 'A', 'SampleClassOnly', 'class101_a', '2022-07-07', 0, 'james_foreman ,');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(1, 'BAHASA MELAYU', 'Suzana Binti Abu Hasan'),
(2, 'SEJARAH', 'Hartini Binti Muhammad'),
(3, 'PENDIDIKAN ISLAM', 'RAZIZAH BINTI CHE DAUD'),
(4, 'SAINS', 'NAZARIAH BINTI NAHAR');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020'),
(20, 'TEKNIK MENJAWAB BAHASA MELAYU SPM 2024', 0, '01/26/2024', '01/27/2024'),
(21, 'TEKNIK MENJAWAB BAHASA MELAYU SPM 2024', 1, '01/26/2024', '01/27/2024');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(138, 'admin/uploads/3952_File_sample.pdf', '2020-12-21 09:24:50', 'Sample', 9, 186, 'Sample', 'JomarPabuaya'),
(139, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 09:38:22', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(140, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 09:39:32', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(141, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 09:40:28', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(142, 'admin/uploads/1269_File_aichatbot-200110223419.pdf', '2024-01-03 18:40:18', 'project', 9, 186, 'AI', 'JomarPabuaya'),
(143, 'admin/uploads/9667_File_aichatbot-200110223419.pdf', '2024-01-04 07:52:51', 'project', 1, 1, 'cyberbulliying', 'SuzanaAbu Hassan'),
(144, 'admin/uploads/5131_File_07a_Machine Learning.pptx', '2024-01-04 12:43:13', 'project', 1, 1, 'Ujian 1', 'SuzanaAbu Hassan');

-- --------------------------------------------------------

--
-- Table structure for table `forum_replies`
--

CREATE TABLE `forum_replies` (
  `id` int(6) NOT NULL,
  `author` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `date_reply` datetime NOT NULL,
  `topic_correspondence` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(6) NOT NULL,
  `author` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `last_reply_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joinclass`
--

CREATE TABLE `joinclass` (
  `user_id_fk` int(11) NOT NULL,
  `class_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `joinclass`
--

INSERT INTO `joinclass` (`user_id_fk`, `class_id_fk`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `passed` varchar(10) DEFAULT NULL,
  `marks_obtained` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mark_id`, `student_id`, `firstname`, `subject_id`, `class_id`, `teacher_id`, `grade`, `passed`, `marks_obtained`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(2, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(3, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(4, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(5, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(6, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(7, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(8, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(9, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(10, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(11, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(12, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(13, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(14, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(15, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(16, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(17, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(18, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(19, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(20, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(21, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(22, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(23, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(24, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(25, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(26, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(27, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(28, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(29, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(30, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(31, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(32, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(33, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(34, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(35, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(36, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(37, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(38, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(39, 1, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(40, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(41, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(42, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(43, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(44, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(45, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(46, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(47, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(48, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(49, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(50, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(51, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(52, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(53, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(54, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(55, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(56, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(57, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(58, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(59, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(60, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(61, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(62, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(63, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(64, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(65, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(66, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(67, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(68, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(69, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(70, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(71, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(72, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(73, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(74, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(75, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(76, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(77, 1, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(78, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(79, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(80, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(81, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(82, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(83, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(84, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(85, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(86, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(87, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(88, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(89, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(90, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(91, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(92, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(93, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(94, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(95, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(96, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(97, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(98, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(99, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(100, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(101, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(102, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(103, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(104, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(105, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(106, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(107, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(108, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(109, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(110, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(111, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(112, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(113, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(114, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(115, 1, NULL, NULL, NULL, NULL, 'A+', 'Passed', 97),
(116, 2, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(117, 3, NULL, NULL, NULL, NULL, 'C-', 'Passed', 45),
(118, 4, NULL, NULL, NULL, NULL, 'C', 'Passed', 52),
(119, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 35),
(120, 6, NULL, NULL, NULL, NULL, 'C-', 'Passed', 45),
(121, 7, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(122, 8, NULL, NULL, NULL, NULL, 'C+', 'Passed', 56),
(123, 9, NULL, NULL, NULL, NULL, 'A-', 'Passed', 77),
(124, 10, NULL, NULL, NULL, NULL, 'A-', 'Passed', 71),
(125, 11, NULL, NULL, NULL, NULL, 'C+', 'Passed', 56),
(126, 12, NULL, NULL, NULL, NULL, 'A-', 'Passed', 71),
(127, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 36),
(128, 14, NULL, NULL, NULL, NULL, 'B-', 'Passed', 63),
(129, 15, NULL, NULL, NULL, NULL, 'A+', 'Passed', 96),
(130, 16, NULL, NULL, NULL, NULL, 'C', 'Passed', 52),
(131, 17, NULL, NULL, NULL, NULL, 'B+', 'Passed', 68),
(132, 18, NULL, NULL, NULL, NULL, 'A-', 'Passed', 70),
(133, 19, NULL, NULL, NULL, NULL, 'A-', 'Passed', 75),
(134, 20, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(135, 21, NULL, NULL, NULL, NULL, 'A+', 'Passed', 96),
(136, 22, NULL, NULL, NULL, NULL, 'B-', 'Passed', 63),
(137, 23, NULL, NULL, NULL, NULL, 'B-', 'Passed', 62),
(138, 24, NULL, NULL, NULL, NULL, 'C+', 'Passed', 57),
(139, 25, NULL, NULL, NULL, NULL, 'C', 'Passed', 52),
(140, 26, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(141, 27, NULL, NULL, NULL, NULL, 'A', 'Passed', 86),
(142, 28, NULL, NULL, NULL, NULL, 'A-', 'Passed', 79),
(143, 29, NULL, NULL, NULL, NULL, 'A-', 'Passed', 79),
(144, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 25),
(145, 31, NULL, NULL, NULL, NULL, 'C+', 'Passed', 56),
(146, 32, NULL, NULL, NULL, NULL, 'A-', 'Passed', 75),
(147, 33, NULL, NULL, NULL, NULL, 'A-', 'Passed', 73),
(148, 34, NULL, NULL, NULL, NULL, 'B+', 'Passed', 68),
(149, 35, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(150, 36, NULL, NULL, NULL, NULL, 'B-', 'Passed', 63),
(151, 37, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(152, 38, NULL, NULL, NULL, NULL, 'A', 'Passed', 87),
(153, 1, NULL, NULL, NULL, NULL, 'C+', 'Passed', 57),
(154, 2, NULL, NULL, NULL, NULL, 'A-', 'Passed', 75),
(155, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(156, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(157, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(158, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(159, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(160, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(161, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(162, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(163, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(164, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(165, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(166, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(167, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(168, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(169, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(170, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(171, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(172, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(173, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(174, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(175, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(176, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(177, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(178, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(179, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(180, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(181, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(182, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(183, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(184, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(185, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(186, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(187, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(188, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(189, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(190, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(191, 1, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(192, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(193, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(194, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(195, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(196, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(197, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(198, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(199, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(200, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(201, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(202, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(203, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(204, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(205, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(206, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(207, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(208, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(209, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(210, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(211, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(212, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(213, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(214, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(215, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(216, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(217, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(218, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(219, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(220, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(221, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(222, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(223, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(224, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(225, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(226, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(227, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(228, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(229, 1, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(230, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(231, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(232, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(233, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(234, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(235, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(236, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(237, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(238, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(239, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(240, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(241, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(242, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(243, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(244, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(245, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(246, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(247, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(248, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(249, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(250, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(251, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(252, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(253, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(254, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(255, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(256, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(257, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(258, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(259, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(260, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(261, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(262, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(263, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(264, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(265, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(266, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(267, 1, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(268, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(269, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(270, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(271, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(272, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(273, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(274, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(275, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(276, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(277, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(278, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(279, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(280, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(281, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(282, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(283, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(284, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(285, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(286, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(287, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(288, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(289, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(290, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(291, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(292, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(293, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(294, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(295, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(296, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(297, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(298, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(299, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(300, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(301, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(302, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(303, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(304, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(305, 2, NULL, NULL, NULL, NULL, 'C-', 'Passed', 45),
(306, 3, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(307, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 12),
(308, 5, NULL, NULL, NULL, NULL, 'A', 'Passed', 89),
(309, 6, NULL, NULL, NULL, NULL, 'E', 'Failed', 9),
(310, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 27),
(311, 8, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(312, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 7),
(313, 10, NULL, NULL, NULL, NULL, 'A', 'Passed', 89),
(314, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 9),
(315, 12, NULL, NULL, NULL, NULL, 'A', 'Passed', 89),
(316, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 9),
(317, 14, NULL, NULL, NULL, NULL, 'A', 'Passed', 87),
(318, 15, NULL, NULL, NULL, NULL, 'A-', 'Passed', 78),
(319, 16, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(320, 17, NULL, NULL, NULL, NULL, 'A-', 'Passed', 78),
(321, 18, NULL, NULL, NULL, NULL, 'B+', 'Passed', 66),
(322, 19, NULL, NULL, NULL, NULL, 'C', 'Passed', 54),
(323, 20, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(324, 21, NULL, NULL, NULL, NULL, 'C-', 'Passed', 45),
(325, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 34),
(326, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 8),
(327, 24, NULL, NULL, NULL, NULL, 'A+', 'Passed', 98),
(328, 25, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(329, 26, NULL, NULL, NULL, NULL, 'A', 'Passed', 89),
(330, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 7),
(331, 28, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(332, 29, NULL, NULL, NULL, NULL, 'C+', 'Passed', 56),
(333, 30, NULL, NULL, NULL, NULL, 'C+', 'Passed', 56),
(334, 31, NULL, NULL, NULL, NULL, 'D', 'Passed', 43),
(335, 221, NULL, NULL, NULL, NULL, 'C+', 'Passed', 56),
(336, 32, NULL, NULL, NULL, NULL, 'A+', 'Passed', 98),
(337, 33, NULL, NULL, NULL, NULL, 'A', 'Passed', 87),
(338, 34, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(339, 35, NULL, NULL, NULL, NULL, 'D', 'Passed', 43),
(340, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(341, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(342, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(343, 2, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(344, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(345, 4, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(346, 5, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(347, 6, NULL, NULL, NULL, NULL, 'A-', 'Passed', 77),
(348, 7, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(349, 8, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(350, 9, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(351, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(352, 11, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(353, 12, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(354, 13, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(355, 14, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(356, 15, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(357, 16, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(358, 17, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(359, 18, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(360, 19, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(361, 20, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(362, 21, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(363, 22, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(364, 23, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(365, 24, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(366, 25, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(367, 26, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(368, 27, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(369, 28, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(370, 29, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(371, 30, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(372, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(373, 221, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(374, 32, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(375, 33, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(376, 34, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(377, 35, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(378, 36, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(379, 37, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(380, 38, NULL, NULL, NULL, NULL, 'E', 'Failed', 0),
(381, 2, NULL, NULL, NULL, NULL, 'E', 'Failed', 12),
(382, 3, NULL, NULL, NULL, NULL, 'E', 'Failed', 34),
(383, 4, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(384, 5, NULL, NULL, NULL, NULL, 'C', 'Passed', 54),
(385, 6, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(386, 7, NULL, NULL, NULL, NULL, 'A', 'Passed', 89),
(387, 8, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(388, 9, NULL, NULL, NULL, NULL, 'C', 'Passed', 54),
(389, 10, NULL, NULL, NULL, NULL, 'E', 'Failed', 34),
(390, 11, NULL, NULL, NULL, NULL, 'A+', 'Passed', 90),
(391, 12, NULL, NULL, NULL, NULL, 'A+', 'Passed', 98),
(392, 13, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(393, 14, NULL, NULL, NULL, NULL, 'C', 'Passed', 54),
(394, 15, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(395, 16, NULL, NULL, NULL, NULL, 'A', 'Passed', 89),
(396, 17, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(397, 18, NULL, NULL, NULL, NULL, 'A-', 'Passed', 77),
(398, 19, NULL, NULL, NULL, NULL, 'A', 'Passed', 88),
(399, 20, NULL, NULL, NULL, NULL, 'A+', 'Passed', 99),
(400, 21, NULL, NULL, NULL, NULL, 'A+', 'Passed', 90),
(401, 22, NULL, NULL, NULL, NULL, 'A', 'Passed', 87),
(402, 23, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(403, 24, NULL, NULL, NULL, NULL, 'D', 'Passed', 44),
(404, 25, NULL, NULL, NULL, NULL, 'C-', 'Passed', 45),
(405, 26, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(406, 27, NULL, NULL, NULL, NULL, 'C', 'Passed', 54),
(407, 28, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(408, 29, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(409, 30, NULL, NULL, NULL, NULL, 'D', 'Passed', 43),
(410, 31, NULL, NULL, NULL, NULL, 'E', 'Failed', 23),
(411, 221, NULL, NULL, NULL, NULL, 'C-', 'Passed', 45),
(412, 32, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(413, 33, NULL, NULL, NULL, NULL, 'A', 'Passed', 87),
(414, 34, NULL, NULL, NULL, NULL, 'B+', 'Passed', 65),
(415, 35, NULL, NULL, NULL, NULL, 'B+', 'Passed', 67),
(416, 36, NULL, NULL, NULL, NULL, 'A+', 'Passed', 90),
(417, 37, NULL, NULL, NULL, NULL, 'A-', 'Passed', 76),
(418, 38, NULL, NULL, NULL, NULL, 'A', 'Passed', 88);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(1, 1, 'Kelas next week dekat mana', '2024-01-04 00:25:24', 16, 'Ahmad Ali', 'Jamal Abdilah', ''),
(31, 3, 'makan jom', '2024-01-04 01:35:25', 1, 'Hartini Muhammad', 'Suzana Abu Hassan', ''),
(32, 16, 'Siapkan Kerja', '2024-01-04 12:45:12', 1, 'Jamal Abdilah', 'Suzana Abu Hassan', 'read'),
(33, 3, 'hello', '2024-01-04 16:02:30', 1, 'Hartini Muhammad', 'Suzana Abu Hassan', ''),
(34, 16, 'Jamal, karangan minggu lepas awak tidak hantar lagi \r\n\r\nMohon segera untuk semakan permarkahan', '2024-01-16 20:14:38', 1, 'Jamal Abdilah', 'Suzana Abu Hassan', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 1, 'sad', '2023-11-12 22:50:05', 3, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya'),
(15, 1, 'Kelas next week dekat mana', '2024-01-04 00:25:24', 16, 'Ahmad Ali', 'Jamal Abdilah'),
(16, 3, 'makan jom', '2024-01-04 01:35:25', 1, 'Hartini Muhammad', 'Suzana Abu Hassan'),
(17, 16, 'Siapkan Kerja', '2024-01-04 12:45:12', 1, 'Jamal Abdilah', 'Suzana Abu Hassan'),
(18, 3, 'hello', '2024-01-04 16:02:30', 1, 'Hartini Muhammad', 'Suzana Abu Hassan'),
(19, 16, 'Jamal, karangan minggu lepas awak tidak hantar lagi \r\n\r\nMohon segera untuk semakan permarkahan', '2024-01-16 20:14:38', 1, 'Jamal Abdilah', 'Suzana Abu Hassan');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2020-12-21 09:24:50', 'downloadable_student.php'),
(16, 0, 'Add Downloadable Materials file name <b>123</b>', '2020-12-21 09:31:40', 'downloadable_student.php'),
(17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:36:27', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:38:22', 'downloadable_student.php'),
(19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:39:32', 'downloadable_student.php'),
(20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:40:28', 'downloadable_student.php'),
(21, 186, 'Add Assignment file name <b>asdasd</b>', '2020-12-21 09:56:48', 'assignment_student.php'),
(22, 186, 'Add Annoucements', '2020-12-21 09:59:00', 'announcements_student.php'),
(23, 186, 'Add Practice Quiz file', '2020-12-21 10:10:11', 'student_quiz_list.php'),
(24, 186, 'Add Downloadable Materials file name <b>AI</b>', '2024-01-03 18:40:18', 'downloadable_student.php'),
(25, 186, 'Add Annoucements', '2024-01-03 18:44:00', 'announcements_student.php'),
(26, 186, 'Add Annoucements', '2024-01-03 18:44:00', 'announcements_student.php'),
(27, 3, 'Add Annoucements', '2024-01-04 07:38:29', 'announcements_student.php'),
(28, 4, 'Add Annoucements', '2024-01-04 07:38:29', 'announcements_student.php'),
(29, 1, 'Add Assignment file name <b>cyberbulliying</b>', '2024-01-04 07:51:50', 'assignment_student.php'),
(30, 1, 'Add Downloadable Materials file name <b>cyberbulliying</b>', '2024-01-04 07:52:51', 'downloadable_student.php'),
(31, 1, 'Add Downloadable Materials file name <b>Ujian 1</b>', '2024-01-04 12:43:13', 'downloadable_student.php'),
(32, 1, 'Add Annoucements', '2024-01-16 11:35:34', 'announcements_student.php'),
(33, 1, 'Add Annoucements', '2024-01-16 20:19:57', 'announcements_student.php'),
(34, 1, 'Add Annoucements', '2024-01-16 20:31:49', 'announcements_student.php'),
(35, 1, 'Add Downloadable Materials file name <b>Calendar</b>', '2024-01-17 12:59:56', 'downloadable_student.php'),
(36, 1, 'Add Annoucements', '2024-01-17 13:01:34', 'announcements_student.php'),
(37, 1, 'Add Practice Quiz file', '2024-01-17 13:11:33', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opended` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opended`, `viewed`) VALUES
(1, 'james_foreman', 'claire_blake', 'Claire Blake posted on your class room', 'classRoom.php?classCode=class101_a#post_id=1', '2022-07-07 16:24:06', 'no', 'yes'),
(2, 'james_foreman', 'claire_blake', 'Claire Blake posted on your class room', 'classRoom.php?classCode=class101_a#post_id=2', '2022-07-07 16:24:29', 'no', 'yes'),
(3, 'claire_blake', 'james_foreman', 'James Foreman commented on your post', 'classRoom.php?classCode=class101_a#post_id=2&comment=1', '2022-07-07 16:25:07', 'no', 'yes'),
(4, 'james_foreman', 'claire_blake', 'Claire Blake commented on a post you commented on', 'classRoom.php?classCode=class101_a#post_id=2&comment=2', '2022-07-07 16:25:36', 'no', 'yes'),
(5, 'claire_blake', 'james_foreman', 'James Foreman posted on your class room', 'classRoom.php?classCode=class101_a#post_id=3', '2022-07-07 16:33:38', 'no', 'yes'),
(6, 'claire_blake', 'james_foreman', 'James Foreman posted on your class room', 'classRoom.php?classCode=class101_a#post_id=4', '2022-07-07 16:33:43', 'no', 'yes'),
(7, 'claire_blake', 'james_foreman', 'James Foreman posted on your class room', 'classRoom.php?classCode=class101_a#post_id=5', '2022-07-07 16:33:51', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 16, 'yes', 30),
(7, 16, 'yes', 29),
(8, 16, 'yes', 31),
(9, 16, 'yes', 30),
(10, 16, 'yes', 31),
(11, 16, 'yes', 30),
(12, 16, 'yes', 29),
(13, 16, 'yes', 31),
(14, 16, 'yes', 30),
(15, 16, 'yes', 29),
(16, 16, 'yes', 31),
(17, 16, 'yes', 32),
(18, 16, 'yes', 31),
(19, 16, 'yes', 30),
(20, 16, 'yes', 29),
(21, 16, 'yes', 32),
(22, 16, 'yes', 32),
(23, 16, 'yes', 31),
(24, 16, 'yes', 30),
(25, 16, 'yes', 32),
(26, 16, 'yes', 31),
(27, 16, 'yes', 30);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 9, 'yes', 18);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `edited` varchar(3) NOT NULL,
  `files` varchar(500) DEFAULT NULL,
  `fileDestination` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `courseCode`, `user_to`, `date_added`, `user_closed`, `edited`, `files`, `fileDestination`) VALUES
(1, 'Hello', 'claire_blake', 'class101_a', 'none', '2022-07-07 16:24:06', 'no', 'no', 'none', 'none'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sit amet justo justo. Duis consectetur sapien quis sapien tempus pulvinar. Morbi imperdiet at ante ut pulvinar. Suspendisse sed tellus in risus scelerisque placerat nec mollis tellus. Pellentesque mattis, mauris at fringilla tincidunt, turpis diam cursus erat, sed venenatis justo justo eget est. In posuere ex orci, quis bibendum odio iaculis sit amet. Donec ultrices velit vitae sapien tempor, ut placerat magna venenatis. Pellentesque malesuada odio et dictum pellentesque. Nulla sed purus sit amet massa consectetur iaculis.', 'claire_blake', 'class101_a', 'none', '2022-07-07 16:24:29', 'no', 'no', 'none', 'none'),
(3, 'Sample 101', 'james_foreman', 'class101_a', 'claire_blake', '2022-07-07 16:33:38', 'no', 'no', 'none', 'none'),
(4, 'Sample 102', 'james_foreman', 'class101_a', 'claire_blake', '2022-07-07 16:33:43', 'no', 'no', 'none', 'none'),
(5, 'Sample 103', 'james_foreman', 'class101_a', 'claire_blake', '2022-07-07 16:33:51', 'no', 'no', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(1, 'Sample Test', 'Test', '2023-12-03 23:01:56', 1),
(2, 'Chapter 1 Bahasa Melayu', 'Kata Nama am', '2023-12-13 01:51:02', 1),
(3, 'Sains Tingkatan 2', 'Quiz tingakatan 2 (Pengwapan)', '2023-12-20 04:12:07', 4),
(4, 'Quiz Sejarah Bab 1', 'Bab 1 - Zaman Mesopotamia', '2023-12-21 10:04:11', 9),
(7, 'BM', 'kata nama', '2024-01-17 13:11:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(1, 1, '<p>q</p>\r\n', 2, 0, '2023-12-17 04:15:03', 'False'),
(2, 3, '<p>Apakah Kondesasi</p>\r\n', 1, 0, '2023-12-17 12:25:17', 'C'),
(3, 1, '<p>Peribahasa</p>\r\n', 2, 0, '2023-12-17 12:26:18', 'True'),
(4, 4, '<p>Zaman manakah yang betul</p>\r\n', 1, 0, '2023-12-21 10:05:09', 'A'),
(5, 4, '<p>Pada abad keberapa Zaman mesopotamia?</p>\r\n', 2, 0, '2023-12-21 10:05:25', 'True'),
(6, 1, '<p>Penjodoh Bilangan</p>\r\n', 2, 0, '2023-12-21 10:05:35', 'False'),
(39, 7, '<p>1) Meja&nbsp;</p>\r\n', 1, 0, '2024-01-17 13:12:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(1, '2021-2022'),
(2, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_sessions`
--

CREATE TABLE `stripe_sessions` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stripe_sessions`
--

INSERT INTO `stripe_sessions` (`id`, `session_id`, `created_at`) VALUES
(0, 'cs_test_b1u9TNF1j2YbhaKashca1P9BJJVZYrEkzy79jf3Q00STyW5NXsXE8vxFu1', '2024-01-17 05:44:51'),
(0, 'cs_test_b1okGw2VaaO4EXhCrfb8mY0nlUbTlAYRYyKx3Q3JlZ4LoIb1Qv9ogrcn5d', '2024-01-17 06:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(2, 'Raymond', 'Seri', 13, 'raymond@11', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(3, 'Cheng', 'Zhu', 5, 'zhucheng@12', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(4, 'Nabila', 'Huda', 19, 'nabilah@08', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(5, 'Aina', 'Abdul', 6, 'aina@14', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(6, 'Harchana', 'Arulappan', 9, 'harchana@02', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(7, 'Yusra', 'Nadatul Aleeya', 10, 'yusra@02', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(8, 'Lokeshwar', 'Arumugam', 18, 'lokesh@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(9, 'Chan', 'Zhe Xiang', 1, 'chan@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(10, 'Lim', 'Young Gou', 2, 'lim@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(11, 'Carell', 'Angle', 5, 'angle@14', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(12, 'Mary ', 'Joy Liam', 2, 'mary@13', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/Desert.jpg', 'Registered'),
(13, 'Christine ', 'Joy', 4, 'christine@16', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(14, 'Erin', 'Malik', 19, 'erin@19', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(15, 'Johan', 'Amin', 19, 'johan@12', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(16, 'Jamal', 'Abdilah', 15, 'jamal@02', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/zaki yamani.jpeg', 'Registered'),
(17, 'Harry', 'Potter', 15, 'harry@20', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(18, 'Zayn', 'Malik', 15, 'zayn@23', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(19, 'Siti', 'Kamilah', 15, 'kamilah@21', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(20, 'Dhalia', 'Armin', 20, 'dhalia@20', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(21, 'Vinashri', 'Linggam', 15, 'vinashri@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(22, 'Erni', 'Zakri', 15, 'erni@02', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(23, 'Shamel', 'Zain', 15, 'shamel@02', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(24, 'Victor', 'Peter', 19, 'victor@02', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(25, 'Hanisah', 'Dhamirah', 19, 'hanisah@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(26, 'Faiz', 'Akasyah', 19, 'akasyah@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(27, 'Farah', 'Syafika', 19, 'farah@22', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(28, 'Dharisan', 'Vicham', 12, 'dharisan@12', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(29, 'Laila', 'Majnun', 12, 'laila@22', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(30, 'Kimberly', 'Tan', 19, 'kimberly@12', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(31, 'Faridah', 'Othman', 20, 'faridah@23', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(221, 'Ali', 'Mamat', 1, 'ali@11', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(32, 'Mariam', 'Hussin', 20, 'mariam@12', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(33, 'Irwanshah', 'Manap', 19, 'irwan@22', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/Desert.jpg', 'Registered'),
(34, 'Mahmud', 'Shah', 20, 'mahmud@21', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/380903_288008981235527_682004916_n.jpg', 'Registered'),
(35, 'Nur', 'Ain', 19, 'ain@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(36, 'Hani', 'Zulaikha', 20, 'hani@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(37, 'Chan', 'Pang', 19, 'chan@00', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(38, 'Nur Auni', 'Basyirah', 19, 'auni@11', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, ''),
(2, 32, 'admin/uploads/6154_File_academic.utm.my_UGStudent_asp_CourseTransferedSlipUG.asp_key=C0B8F753A0BD7F0', '2024-01-17 13:18:22', '123', 'academic', 16, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(1, 'S001BM1', 'Bahasa Melayu Pemahaman', '', '<p><span style=\"font-size:medium\"><em>BAHASA MELAYU</em></span></p>\r\n\r\n<p>Bahasa Kebangsaan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Selangor</p>\r\n\r\n<p>Bab (1-5)</p>\r\n\r\n<p>Silibus Kementerian</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '', 'Tingakatan 1'),
(2, 'S002SH1', 'Sejarah', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>Sejarah negara.</p>', 2, '', '1st'),
(3, 'S003PI1', 'Pendidikan Islam', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Pendidikan Islam &ndash; \r\n</ul>\r\n</div>', 1, '', '1st'),
(4, 'S004SC1', 'Sains', '', '<p>Sains</p>', 1, '', '1st'),
(6, 'S001BM2', 'Bahasa Melayu', '', '', 1, '', '2nd'),
(7, 'S002SH2', 'Sains', '', '', 1, '', '2nd'),
(8, 'S003PI2', 'Pendidikan Islam', '', '', 1, '', '2nd'),
(9, 'S004SC2', 'Sains', '', '', 1, '', '2nd'),
(26, 'S001MT', 'Matematik', '', '<p>Matematik Tingkatan 1</p>\r\n', 1, '', '2nd'),
(27, 'S001GR', 'Geografi', '', '<p>Geografi Tingkatan 3</p>\r\n', 3, '', '2nd'),
(28, 'S001EG', 'English', '', '<p>English Tingkatan 1</p>\r\n', 1, '', '2nd'),
(29, 'S001AC', 'Perakaunan', '', '<p>Perakaunan Tingakatn 4</p>\r\n', 4, '', '2nd'),
(30, 'S001PJ', 'Pendidikan Jasmani', '', '<p>Pendidikan Jasmani Tingakatan 1</p>\r\n', 1, '', '2nd'),
(31, 'S002MT', 'Matematik', '', '<p>Matematik Tingkatan 2</p>\r\n', 2, '', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `formId` varchar(10) NOT NULL,
  `classNameId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblform`
--

CREATE TABLE `tblform` (
  `Id` int(10) NOT NULL,
  `form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `email`, `phone`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(1, 'suzana@1001', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Suzana', 'Abu Hassan', 'suzanahassan@moe.gov.my', '012-6692722', 4, 'uploads/cik ayu.jpg', 'Ketua Panatia Bahasa Melayu', 'Registered', 'Activated'),
(2, 'jasmani@1002', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Jasmani', 'Othman', '', '', 2, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(3, 'hartini@1003', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Hartini', 'Muhammad', '', '', 2, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(4, 'razizah@1004', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Razizah', 'Che Daud', '', '', 3, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(5, 'nazariah@1005', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Nazariah', 'Nazar', '', '', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Ketua Panatia Sains', 'Registered', 'Activated'),
(6, 'mislan@1006', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Mislan', 'Misbun', '', '', 2, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(7, 'hindun', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Hindun', 'Jaini', '', '', 1, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(8, 'zara@1008', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Zara Dina', 'Azlan', '', '', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(9, 'laila@1009', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Norlaila', 'Tayeb', '', '', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(10, 'razak', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Mohd Razak', 'Mat', '', '', 1, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(11, 'yusmanita@1009', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Yusmanita', 'Mohd Yussof', '', '', 1, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(21, '', '', 'Abdul', 'Razak', '', '', 2, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(1, 1, 15, 1, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(2, 2, 19, 2, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(3, 3, 20, 4, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(4, 3, 20, 3, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(7, 2, 15, 1, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(8, 2, 19, 2, 'admin/uploads/thumbnails.jpg', '2023-2024'),
(9, 2, 4, 2, 'admin/uploads/thumbnails.jpg', '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00'),
(40, '<p>moning</p>\r\n', '9', 186, '2024-01-03 18:44:00'),
(41, '<p>moning</p>\r\n', '9', 186, '2024-01-03 18:44:00'),
(43, '', '3', 4, '2024-01-04 07:38:29'),
(44, '<p><u><strong>TUJUAN LAWATAN MURID SEKOLAH</strong></u></p>\r\n\r\n<p>Lawatan murid sekolah yang dirancang hendaklah diadakan untuk</p>\r\n\r\n<p>i. program akademik atau kokurikulum</p>\r\n\r\n<p>ii. pertandingan atau perkhemahan</p>\r\n\r\n<p>iii. lawatan sambil belajar</p>\r\n\r\n<p>iv. apa-apa program atau aktiviti lain yang ditentukan oleh Pelulus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yang Benar,&nbsp;</p>\r\n\r\n<p>Puan Suzana Abu Hassan</p>\r\n', '1', 1, '2024-01-16 11:35:34'),
(45, '<p><u><strong>KESELAMATAN SEKOLAH</strong></u></p>\r\n\r\n<p><u><strong>PROGRAM PENINGKATAN KESELAMATAN SEKOLAH</strong></u></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:14px\"><span style=\"color:rgb(0, 0, 0); font-family:ff5,times new roman,times,serif\">Sekolah Selamat didefinisikan sebagai persekitaran sekolah yang selamat di mana warga Sekolah merasa selamat tanpa&nbsp;gangguan daripada manamana&nbsp;pihak&nbsp;sama&nbsp;ada&nbsp;dari&nbsp;dalam&nbsp;mahupun&nbsp;dari&nbsp;luar.</', '1', 1, '2024-01-16 20:19:57'),
(46, '<p>Perhatian Kepada calon SPM anda digalakkan untuk menyertai Teknik Menjawab Bahasa Melayu pad 26/1/2024&nbsp; - 27/1/2024</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yang benar&nbsp;</p>\r\n\r\n<p>Cikgu Suzana</p>\r\n', '1', 1, '2024-01-16 20:31:49'),
(47, '<p><strong>Teknik Menjawab SPM 2024</strong></p>\r\n', '1', 1, '2024-01-17 13:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(383, 3, 34, 3),
(384, 1, 16, 1),
(385, 1, 19, 1),
(386, 1, 17, 1),
(392, 1, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(1, 2, 'Submit Assignment file name <b>my_assginment</b>', '2023-12-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(18, 186, 'Submit Assignment file name <b>asdasd</b>', '2020-12-21 10:12:04', 'view_submit_assignment.php', 219, 31),
(19, 1, 'Submit Assignment file name <b>academic</b>', '2024-01-17 13:18:22', 'view_submit_assignment.php', 16, 32);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2023-11-01 11:57:33', '2024-01-17 12:56:48', 1),
(2, 'admin', '2023-11-14 10:27:55', '2024-01-17 12:56:48', 1),
(3, 'admin', '2023-11-14 10:38:08', '2024-01-17 12:56:48', 1),
(90, 'admin', '2024-01-04 00:47:54', '2024-01-17 12:56:48', 1),
(91, 'admin', '2024-01-04 01:57:07', '2024-01-17 12:56:48', 1),
(92, 'admin', '2024-01-04 08:06:40', '2024-01-17 12:56:48', 1),
(93, 'admin', '2024-01-04 08:07:24', '2024-01-17 12:56:48', 1),
(94, 'admin', '2024-01-04 15:23:06', '2024-01-17 12:56:48', 1),
(95, 'admin', '2024-01-07 23:44:41', '2024-01-17 12:56:48', 1),
(96, 'admin', '2024-01-09 22:07:25', '2024-01-17 12:56:48', 1),
(97, 'admin', '2024-01-09 23:19:37', '2024-01-17 12:56:48', 1),
(98, 'admin', '2024-01-09 23:24:40', '2024-01-17 12:56:48', 1),
(99, 'admin', '2024-01-16 11:39:30', '2024-01-17 12:56:48', 1),
(100, 'admin', '2024-01-17 10:15:15', '2024-01-17 12:56:48', 1),
(101, 'admin', '2024-01-17 10:32:46', '2024-01-17 12:56:48', 1),
(102, 'admin', '2024-01-17 12:49:24', '2024-01-17 12:56:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `forum_replies`
--
ALTER TABLE `forum_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `forum_replies`
--
ALTER TABLE `forum_replies`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
