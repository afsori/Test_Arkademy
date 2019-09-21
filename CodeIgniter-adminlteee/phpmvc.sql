-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 04:12 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `brg_id` int(11) NOT NULL,
  `kd_barang` varchar(20) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `stok` varchar(20) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`brg_id`, `kd_barang`, `nm_barang`, `stok`, `keterangan`) VALUES
(15, '004', 'dsadhi', '25', 'dsaih');

-- --------------------------------------------------------

--
-- Table structure for table `detil_transaksi`
--

CREATE TABLE `detil_transaksi` (
  `detil_trans_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `brg_id` int(11) NOT NULL,
  `jumlah_barang` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` char(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `perguruan_tinggi` varchar(50) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama`, `nik`, `tgl_lahir`, `alamat`, `email`, `perguruan_tinggi`, `deskripsi`, `gambar`) VALUES
(1, 'Bayu Ferdiansyah, S.Kom, M.Ti, ENSA, HOS, CORE OF THE CORE', '1311010014', '1995-05-13', 'pagelaran', 'bayuferdi@gmail.com', 'AMIK DCC Pringsewu', 'Merupakan Dosen yang terkenal sangat ganteng dan ramah, dibalik itu semua termasuk dosen yang satu ini belum mempunyai istri. :D', ''),
(3, 'Dwi Febriana, M. Kom', '1301118118', '1996-05-06', '', 'dwifebrii@gmail.com', 'AMIK DCC Pringsewu', 'Merupakan Dosen yang terkenal sangat Cantik dan murah senyum dan sangat ramah terhadap mahasiswa, dibalik itu semua termasuk dosen yang satu ini belum mempunyai suami. :D', ''),
(4, 'siapa elo, S. Kom', '3843098420', '0000-00-00', '', 'jdasdjai@gmail.com', '', '', ''),
(5, 'eewfhio', '789789', '0000-00-00', 'jknhjkhk', 'kjnjkk@gmail.com', '', '', ''),
(8, 'Oki Fajar Saputra, S. Kom', '12908238109', '0000-00-00', '', 'okiaj@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_transaksi`
--

CREATE TABLE `jenis_transaksi` (
  `jns_trans_id` int(11) NOT NULL,
  `kd_transaksi` varchar(20) NOT NULL,
  `nm_transaksi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `salary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `salary`) VALUES
(1, '10.000.000'),
(2, '12.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nrp` char(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`) VALUES
(25, 'riki', '3473289', 'riki@kk.id', 'Teknik Informatika'),
(35, 'uhiufvh', '67868768', 'njk@jnk.cd', 'Teknik Informatika'),
(42, 'saya', '321397319', 'skasjnjn@knds.c', 'Teknik Informatika'),
(44, 'bayu ferdi', '90854543', 'afs@gmail.com', 'Teknik Informatika'),
(45, 'haikar', '4757495874', 'afsoryafsor@gmail.com', 'Manajemen Informatika'),
(46, 'tau lah, gelap', '3472389', 'jkncdskj@fv.fvq', 'Teknik Informatika'),
(47, 'angga', '74342078', 'angga@gmail.com', 'Teknik Informatika'),
(48, 'anggo', '903718789', 'anggo@gmail.com', 'Teknik Informatika'),
(50, 'Mubad', '8967868567', 'dchdsi@ijfb.dfvfd', 'Teknik Informatika'),
(51, 'afso', '89967', 'ahdskh@fd.fv', 'Bahasa Inggris'),
(52, 'asaya', '876432976', 'jcdkjs@re.vf', 'Manajemen Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `nama`
--

CREATE TABLE `nama` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_work` int(10) NOT NULL,
  `id_salary` int(10) NOT NULL,
  `salary` varchar(29) NOT NULL,
  `work` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nama`
--

INSERT INTO `nama` (`id`, `name`, `id_work`, `id_salary`, `salary`, `work`) VALUES
(1, 'Bintang', 1, 1, '10.000.000', 'Frontend Dev'),
(2, 'Tasya', 2, 2, '12.000.000', 'Backend Dev'),
(3, 'Poetra', 0, 0, '12.000.000', 'Backend'),
(4, 'Joko', 0, 0, 'Frontend', '10.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `peoples`
--

CREATE TABLE `peoples` (
  `id` int(9) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `address`, `email`) VALUES
(1, 'Harmony Monahan IV', '2016 Bradtke Meadow Apt. 998', 'adrienne15@example.net'),
(2, 'Meghan Crona IV', '1388 Jakubowski Dam', 'langosh.lorenz@example.com'),
(3, 'Adolfo Mann Jr.', '877 Marisol Falls Suite 314', 'yschultz@example.org'),
(4, 'Mrs. Kaela Klocko', '64250 Gerhold Overpass Suite 248', 'ibaumbach@example.com'),
(5, 'Dock Mayert', '853 Funk Union Suite 981', 'gregory.borer@example.org'),
(6, 'Johnnie Harber', '65804 Schroeder Plaza Suite 163', 'jayson48@example.com'),
(7, 'Dr. Vivianne Kertzmann I', '21596 Reichel Centers', 'crooks.murray@example.com'),
(8, 'Prof. Halle Gutmann', '4626 Lang Locks', 'uriah.bahringer@example.net'),
(9, 'Alisha Hahn', '122 Aletha Summit', 'gaylord93@example.net'),
(10, 'Favian Howe', '6012 Fausto Road Suite 358', 'xgutmann@example.org'),
(11, 'Lorena Bartoletti Sr.', '456 Langosh Heights Suite 853', 'magdalen31@example.org'),
(12, 'Jaylen Huels', '134 McCullough Port Apt. 606', 'ledner.arlie@example.net'),
(13, 'Kurtis Reilly', '354 Hegmann Crossroad Suite 020', 'block.reymundo@example.net'),
(14, 'Mrs. Telly Gislason', '335 Nader Field', 'shagenes@example.com'),
(15, 'Prof. Triston Beer', '857 Mann Lights Apt. 989', 'simone.botsford@example.net'),
(16, 'Ms. Noemie Thiel II', '544 Watsica Turnpike', 'barrows.cyrus@example.org'),
(17, 'Miss Annette Botsford V', '148 Bauch Well', 'ywilkinson@example.net'),
(18, 'Mrs. Grace Grady', '2654 Sporer Glens Apt. 715', 'pfunk@example.net'),
(19, 'Scarlett Rohan', '0144 Walker Isle Suite 732', 'ybeier@example.com'),
(20, 'Prof. Grayce Swaniawski', '974 Kris Rest', 'ole15@example.org'),
(21, 'Shaina Ratke', '80838 Orn Estate Apt. 231', 'jacobi.elmira@example.com'),
(22, 'Mr. Gustave Jacobi', '64354 Hegmann Tunnel Apt. 349', 'xromaguera@example.org'),
(23, 'Lelah Kemmer', '0623 Korey Ridges Apt. 568', 'greenfelder.misael@example.com'),
(24, 'Wilhelmine Douglas', '7821 Frida Inlet Suite 552', 'nicolas.horacio@example.net'),
(25, 'Clemens Rippin Jr.', '9211 Cole Track Apt. 423', 'stoltenberg.celia@example.org'),
(26, 'Rae Jakubowski', '6710 Lyla Vista', 'eleanora94@example.org'),
(27, 'Nedra Eichmann', '497 Wunsch Fort', 'dschowalter@example.net'),
(28, 'Abraham Rosenbaum II', '755 Edyth Fork', 'mitchell.jairo@example.org'),
(29, 'Brayan Erdman', '326 Hills Freeway', 'antonetta.o\'kon@example.net'),
(30, 'Beaulah Bahringer', '840 Annette Rapids', 'icie85@example.net'),
(31, 'Curt Okuneva', '94929 Kevin Mountain Suite 046', 'christiana45@example.org'),
(32, 'Alysa Mueller', '77253 Hartmann Courts Apt. 344', 'douglas.daniel@example.net'),
(33, 'Cydney Olson Sr.', '0958 Keaton Corners', 'haylie.corwin@example.net'),
(34, 'Dr. Ida Considine IV', '61317 Kassulke Lights', 'urosenbaum@example.com'),
(35, 'Virginie Jerde', '05620 Denesik Hollow Suite 893', 'lia.bayer@example.org'),
(36, 'Aditya Homenick V', '9017 Frami Mount', 'hessel.waino@example.org'),
(37, 'Glen Kulas', '656 Bernhard Branch', 'bernier.cynthia@example.com'),
(38, 'Ally Carter', '263 Shana Flat Apt. 151', 'velda08@example.com'),
(39, 'Dr. Clare Halvorson', '89706 Dangelo Valleys', 'thiel.francis@example.com'),
(40, 'Robbie Dooley DVM', '4660 Schoen Bypass Apt. 323', 'xdoyle@example.com'),
(41, 'Tommie Corkery PhD', '45908 Medhurst Mission', 'bartoletti.melyna@example.com'),
(42, 'Mr. Archibald Nienow Sr.', '60555 Streich View Apt. 436', 'bradly75@example.net'),
(43, 'Miss Esperanza Hilll', '27585 Muller Vista', 'dan52@example.com'),
(44, 'Prof. Kayla Bergstrom', '495 Kiehn Circle', 'wiley88@example.net'),
(45, 'Josefina Lemke Jr.', '1999 Emard Centers', 'gfisher@example.org'),
(46, 'Prof. Tom Boyer', '12806 Ondricka Locks Apt. 123', 'nitzsche.raegan@example.net'),
(47, 'Richie Olson', '029 Leone Greens Suite 714', 'mnolan@example.org'),
(48, 'John Robel', '1774 Rasheed Parkway', 'cleta29@example.net'),
(49, 'Mafalda Koch', '15650 Johnathan Inlet', 'sigmund70@example.org'),
(50, 'Dr. Melvin Champlin Sr.', '17438 Feest Stream', 'mercedes58@example.org'),
(51, 'Marcelina Senger', '42217 Sister Expressway Apt. 553', 'felicia.zulauf@example.org'),
(52, 'Adelbert Goyette', '671 Walton Meadows', 'heidenreich.jaclyn@example.com'),
(53, 'Juvenal Hudson PhD', '66475 Powlowski Road Suite 824', 'pearlie64@example.net'),
(54, 'Durward Monahan I', '152 Jaskolski Pass Suite 984', 'hessel.houston@example.net'),
(55, 'Annabel Jenkins', '317 Neoma Point', 'xmcglynn@example.net'),
(56, 'Dr. Charlene Boyle DVM', '701 Wiegand Bridge Suite 678', 'lamont.schultz@example.net'),
(57, 'Zachariah Crooks II', '674 Turcotte Isle Suite 530', 'cframi@example.com'),
(58, 'Erin Hoeger', '621 Fisher Cliffs', 'robel.lera@example.org'),
(59, 'Dr. Muriel DuBuque I', '9479 Jamar Crest Apt. 390', 'yost.eulalia@example.net'),
(60, 'Annabelle Raynor', '49556 Hane Orchard', 'amani14@example.org'),
(61, 'Jon Hagenes', '5613 Deckow Heights', 'schuppe.samantha@example.net'),
(62, 'Prof. Lynn Hermiston DVM', '32592 Hilma Shores', 'sbartell@example.net'),
(63, 'Melba Wunsch', '09622 Lorenza Spring', 'myrl.barrows@example.net'),
(64, 'Dagmar Pouros', '9341 Schimmel Crescent Apt. 629', 'mante.antonette@example.org'),
(65, 'Braxton Cruickshank Jr.', '557 Kihn Ramp', 'velma60@example.com'),
(66, 'Dr. Jeremy O\'Kon DDS', '55166 Johanna Extensions', 'klein.fletcher@example.org'),
(67, 'Monte Medhurst', '28372 Meta Common', 'eritchie@example.net'),
(68, 'Lamont Rosenbaum', '949 Lane Causeway', 'alejandra.krajcik@example.net'),
(69, 'Elroy Ankunding', '8204 Gwen Flats', 'qstiedemann@example.org'),
(70, 'Johnson Blanda III', '5644 Lakin Mountain Suite 306', 'annetta65@example.net'),
(71, 'Patricia Harvey', '76964 Vanessa Plains', 'zemlak.ericka@example.net'),
(72, 'Hailee Schaden PhD', '52264 Gaston Trail', 'amparo45@example.com'),
(73, 'Kaci Kulas', '91680 Forrest Mountain', 'uanderson@example.net'),
(74, 'Prof. Rod Beatty', '8406 Lauriane Street Suite 588', 'jaunita51@example.org'),
(75, 'Marlene Pouros', '54722 Hipolito Roads Suite 283', 'jabari86@example.org'),
(76, 'Mrs. Diana Bergstrom I', '7992 Myrna Dale', 'hassan55@example.org'),
(77, 'Garrett Hahn', '25591 Wisozk Station Suite 775', 'oraynor@example.com'),
(78, 'Nadia Ernser', '5733 Maxwell Ville Suite 204', 'ao\'conner@example.com'),
(79, 'Maia Trantow II', '4539 McLaughlin Forges', 'kade11@example.net'),
(80, 'Roosevelt Grant', '84253 Corwin Stravenue', 'jaylan.gaylord@example.org'),
(81, 'Mr. Baylee Champlin I', '64109 Gregg Grove', 'zoberbrunner@example.org'),
(82, 'Karen Kessler MD', '75703 Oberbrunner Plaza', 'metz.elmo@example.com'),
(83, 'Mr. Jerry Volkman DDS', '5977 Charity Summit Suite 607', 'kassulke.enola@example.org'),
(84, 'Tomas Ward', '8399 Lexus Crescent', 'price.jaleel@example.com'),
(85, 'Ms. Kaylee Schamberger', '43801 Amely Ramp Suite 963', 'kbosco@example.net'),
(86, 'Dr. Freddie Adams', '7176 Marguerite Courts Suite 848', 'rippin.marie@example.org'),
(87, 'Mr. Sheldon King', '318 Anita Gateway', 'yvonne.braun@example.org'),
(88, 'Hershel Reilly', '8756 Mittie Overpass Suite 516', 'wintheiser.elisha@example.net'),
(89, 'Monte Balistreri', '63243 Quigley Isle', 'timothy.erdman@example.com'),
(90, 'Judge Orn', '22259 Aglae Spring Suite 019', 'angeline.moen@example.net'),
(91, 'Prof. Stanford Zulauf III', '342 Wayne Forge', 'seth50@example.org'),
(92, 'Domenick Hermiston', '448 Dicki Extensions Apt. 120', 'irice@example.com'),
(93, 'Earl Ledner', '01684 Medhurst Spur Apt. 986', 'orland99@example.org'),
(94, 'Sallie Kozey I', '273 Kessler Cliffs', 'dovie.douglas@example.org'),
(95, 'Maeve Halvorson', '90631 Meagan Island Suite 131', 'hackett.constance@example.org'),
(96, 'Prof. Turner Bednar IV', '3643 Schmeler Branch Apt. 499', 'nwest@example.com'),
(97, 'Coy Reichert', '54968 Taryn Via', 'edmond.oberbrunner@example.net'),
(98, 'Mr. Carmine Brekke Sr.', '49798 Stanton Station', 'jdickens@example.net'),
(99, 'Art Macejkovic', '25851 Henry Lights Suite 257', 'green.jacobi@example.net'),
(100, 'Prof. Jesus Howell', '84288 Colton Ranch Suite 996', 'ed73@example.org');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `pesan` longtext NOT NULL,
  `contoh` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `pesan`, `contoh`) VALUES
(1, 'Handika', 'Tolong segera di publish.', 'APK KE Google Play');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `trans_id` int(11) NOT NULL,
  `jns_trans_id` int(11) NOT NULL,
  `kd_transaksi` varchar(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `keterangan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `gambar`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'aku siapa', 'akusiapa@gmail.com', 'default.jpg', '$2y$10$wX/ksZxZj9DLlMApCagcAeJdnCDMsTZMUx2PRrOmZMqS15afycA92', 2, 1, 1552621781),
(6, 'afs', 'afs@gmail.com', 'default.jpg', '$2y$10$lMY7jfnuBgyXizoh4fEJHOCtCczs826p8stC1E8hfUh03BwjU6ihi', 2, 1, 1555849732),
(8, 'aku', 'aka@gmail.com', 'default.jpg', '$2y$10$cIt7E4/y8GT42Aj3Re.tsOpsjf8HfUvXmHVaj1E25WMrnWzF.8ryK', 1, 1, 1557495480),
(9, 'ujang', 'ujang@gmail.com', 'default.jpg', '$2y$10$VTuOlkeP5ovgPsYP4ZhxbuyJA5JNe0TbU/S7FfvI3I8pjgTVavU.y', 2, 1, 1557496902),
(10, 'afsoria', 'afsoria@gmail.com', 'default.jpg', '$2y$10$DJqXI3ytKbqtfwR7aULKbub3meVvdzUxCoIb.jbmp69qJiLnzV/Ji', 2, 1, 1557498388),
(11, 'bayu ferdi', 'bayu@gmail.com', 'default.jpg', '$2y$10$M1e4PE1Cfxfktf5ZNmWHe.ZbiAJt6o5tAbbEiU8ZLSTbCa9TKVbzK', 2, 1, 1557750795),
(12, 'afs', 'afsori@gmail.com', 'default.jpg', '$2y$10$Ag0kht4f2yL0hhx/D51dDOht4/vibLOiDpUXlOBEYG4IK8ZqR0dwu', 2, 1, 1567384921),
(13, 'joni', 'joni@gmail.com', 'default.jpg', '$2y$10$q.MMrnnogoD36PIw4FxOeuUmlb58cKF88gdRQP5KpgPTnwRNNRVLy', 2, 1, 1567815251);

-- --------------------------------------------------------

--
-- Table structure for table `user_akses_menu`
--

CREATE TABLE `user_akses_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_akses_menu`
--

INSERT INTO `user_akses_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `judul`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Profil Saya', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profil', 'user/edit', 'fas fa-fw fa-user-edit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_salary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `name`, `id_salary`) VALUES
(1, 'Frontend Dev', '1'),
(2, 'Backend Dev', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`brg_id`);

--
-- Indexes for table `detil_transaksi`
--
ALTER TABLE `detil_transaksi`
  ADD PRIMARY KEY (`detil_trans_id`),
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `barang_id` (`brg_id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_transaksi`
--
ALTER TABLE `jenis_transaksi`
  ADD PRIMARY KEY (`jns_trans_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nama`
--
ALTER TABLE `nama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `jns_trans_id` (`jns_trans_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_akses_menu`
--
ALTER TABLE `user_akses_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `brg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `detil_transaksi`
--
ALTER TABLE `detil_transaksi`
  MODIFY `detil_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenis_transaksi`
--
ALTER TABLE `jenis_transaksi`
  MODIFY `jns_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `nama`
--
ALTER TABLE `nama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_akses_menu`
--
ALTER TABLE `user_akses_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
