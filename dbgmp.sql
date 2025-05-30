-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 02:07 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE `jadwal` (
  `hari` varchar(20) DEFAULT NULL,
  `mulai` time DEFAULT '18:00:00',
  `selesai` time DEFAULT '23:59:59'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`hari`, `mulai`, `selesai`) VALUES
('Senin', '18:00:00', '23:59:59'),
('Rabu', '17:00:00', '23:59:59'),
('Jumat', '18:00:00', '23:59:59'),
('Kamis', '05:00:00', '23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `pemain`
--

DROP TABLE IF EXISTS `pemain`;
CREATE TABLE `pemain` (
  `id_pemain` varchar(7) NOT NULL,
  `nama_pemain` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `pegangan` varchar(100) DEFAULT 'Shakehand',
  `tipe_bernain` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemain`
--

INSERT INTO `pemain` (`id_pemain`, `nama_pemain`, `tempat_lahir`, `tgl_lahir`, `instansi`, `pegangan`, `tipe_bernain`) VALUES
('2023001', 'Muhammad Yunus', '', NULL, '', NULL, NULL),
('2023002', 'Mentereng Sakti', '', NULL, '', NULL, NULL),
('2023003', 'Encik Abdul Hajar', '', NULL, '', NULL, NULL),
('2023004', 'Elfin Bastian', '', NULL, '', NULL, NULL),
('2023005', 'Asep Suganjar', '', NULL, '', NULL, NULL),
('2023006', 'Mastur Taher', '', NULL, '', NULL, NULL),
('2023007', 'Misbah', '', NULL, '', NULL, NULL),
('2023008', 'Utha', '', NULL, '', NULL, NULL),
('2023009', 'Herdiansyah', '', NULL, '', NULL, NULL),
('2023010', 'Dody Kurniawan', '', NULL, '', NULL, NULL),
('2023011', 'Hasan', '', NULL, '', NULL, NULL),
('2023012', 'M. Naaji', '', NULL, '', NULL, NULL),
('2023013', 'Razi', '', NULL, '', NULL, NULL),
('2023014', 'Martin Roito', '', NULL, '', NULL, NULL),
('2023015', 'Fajar Rianto', '', NULL, '', NULL, NULL),
('2023016', 'Erwin Jony', '', NULL, '', NULL, NULL),
('2023017', 'I Gede', '', NULL, '', NULL, NULL),
('2023018', 'Dulpani', '', NULL, '', NULL, NULL),
('2023019', 'Heru', NULL, NULL, NULL, NULL, NULL),
('2023020', 'Chandra', NULL, NULL, NULL, 'Shakehand', NULL),
('2023021', 'Syahri D. Putra', NULL, NULL, NULL, 'Shakehand', NULL),
('2023022', 'Chairiel', NULL, NULL, NULL, 'Shakehand', NULL),
('2023023', 'Ardian', NULL, NULL, NULL, 'Shakehand', NULL),
('2023024', 'M. Naziransyah', NULL, NULL, NULL, 'Shakehand', NULL),
('2023025', 'Ediwansyah', NULL, NULL, NULL, 'Shakehand', NULL),
('2023999', '-', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna` (
  `no_hp` varchar(20) NOT NULL,
  `nama_pengguna` varchar(100) DEFAULT NULL,
  `id_pemain` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`no_hp`, `nama_pengguna`, `id_pemain`) VALUES
('120363401316839542', 'Grup GMP', '0000000'),
('628113882222', 'I Gede', '2023017'),
('628117764222', 'Misbah', '2023007'),
('628117778486', 'Razi', '2023013'),
('6281214955555', 'Muhammad Yunus', '2023001'),
('6281215465555', 'Jones', '2023001'),
('6281226939835', 'Heru', '2023019'),
('6281266332301', 'M. Naziransyah', '2023024'),
('6281270112060', 'Ediwansyah', '2023025'),
('6281270148555', 'Admin', '2023001'),
('6281277949106', 'Fajar Rianto', '2023015'),
('6281282062344', 'Mastur Taher', '2023006'),
('6281368675464', 'Utha', '2023008'),
('6281372243753', 'M. Naaji', '2023012'),
('6281372497609', 'Chairiel', '2023022'),
('6282173088527', 'Mentereng Sakti', '2023002'),
('6282174948353', 'Encik Abdul Hajar', '2023003'),
('6283145196565', 'Dulpani', '2023018'),
('6283876862872', 'Chandra KBS', '2023020'),
('6285222267988', 'Asep Suganjar', '2023005'),
('6285264001447', 'Dody Kurniawan', '2023010'),
('6285264409666', 'Elfin Bastian', '2023004'),
('6285264460662', 'Erwin Jony', '2023016'),
('6285272555788', 'Syahri D. Putra', '2023021'),
('6285272643423', 'Martin Roito', '2023014'),
('6285375699322', 'Hasan', '2023011'),
('6285376101022', 'Herdiansyah', '2023009'),
('6289653628664', 'Ardian', '2023023');

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

DROP TABLE IF EXISTS `presensi`;
CREATE TABLE `presensi` (
  `id_pemain` varchar(7) DEFAULT NULL,
  `id_turnamen` varchar(6) DEFAULT NULL,
  `tgl_presensi` date DEFAULT NULL,
  `waktu_presensi` datetime DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id_pemain`, `id_turnamen`, `tgl_presensi`, `waktu_presensi`, `longitude`, `latitude`, `area`) VALUES
('2023001', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023007', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023010', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023006', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023011', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023012', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023016', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023020', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023014', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023023', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP'),
('2023025', '202505', '2025-05-28', '2025-05-28 20:00:00', 104.464, 0.902725, 'GMP');

-- --------------------------------------------------------

--
-- Table structure for table `turnamen`
--

DROP TABLE IF EXISTS `turnamen`;
CREATE TABLE `turnamen` (
  `id_turnamen` varchar(20) NOT NULL,
  `nama_turnamen` varchar(100) NOT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `tgl_turnamen` date DEFAULT NULL,
  `tgl_realisasi` date DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Tutup',
  `jadwal_presensi` int(11) DEFAULT '0',
  `priode_jadwal_mulai` date DEFAULT NULL,
  `priode_jadwal_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turnamen`
--

INSERT INTO `turnamen` (`id_turnamen`, `nama_turnamen`, `alias`, `tgl_turnamen`, `tgl_realisasi`, `tahun`, `id`, `status`, `jadwal_presensi`, `priode_jadwal_mulai`, `priode_jadwal_selesai`) VALUES
('202501', 'Turnamen Perbaikan Peringkat Pertama', 'Pertama', '2025-02-24', '2025-02-24', '2025', 1, 'Selesai', 0, NULL, NULL),
('202502', 'Turnamen Perbaikan Peringkat Kedua', 'Kedua', '2025-03-28', '2025-03-28', '2025', 2, 'Selesai', 0, NULL, NULL),
('202503', 'Turnamen Perbaikan Peringkat Ketiga', 'Ketiga', '2025-05-02', '2025-05-02', '2025', 3, 'Selesai', 0, NULL, NULL),
('202504', 'Turnamen Perbaikan Peringkat Keempat', 'Keempat', '2025-05-23', '2025-05-23', '2025', 4, 'Selesai', 0, NULL, NULL),
('202505', 'Turnamen Perbaikan Peringkat Kelima', 'Kelima', '2025-06-20', NULL, '2025', 5, 'Tutup', 1, '2025-05-26', '2025-06-19'),
('202506', 'Turnamen Perbaikan Peringkat Keenam', 'Keenam', '2025-07-25', NULL, '2025', 6, 'Tutup', 0, '2025-06-23', '2025-07-24'),
('202507', 'Turnamen Perbaikan Peringkat Ketujuh', 'Ketujuh', '2025-08-08', NULL, '2025', 7, 'Tutup', 0, NULL, NULL),
('202508', 'Turnamen Perbaikan Peringkat Kedelapan', 'Kedelapan', '2025-08-29', NULL, '2025', 8, 'Tutup', 0, NULL, NULL),
('202509', 'Turnamen Perbaikan Peringkat Kesembilan', 'Kesembilan', '2025-09-12', NULL, '2025', 9, 'Tutup', 0, NULL, NULL),
('202510', 'Turnamen Perbaikan Peringkat Kesepuluh', 'Kesepuluh', '2025-10-10', NULL, '2025', 10, 'Tutup', 0, NULL, NULL),
('202511', 'Turnamen Perbaikan Peringkat Kesebelas', 'Kesebelas', '2025-11-14', NULL, '2025', 11, 'Tutup', 0, NULL, NULL),
('202512', 'Turnamen Perbaikan Peringkat Kedua Belas', 'Kedua Belas', '2025-12-12', NULL, '2025', 12, 'Tutup', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`id_pemain`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`no_hp`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD UNIQUE KEY `id_pemain` (`id_pemain`,`id_turnamen`,`tgl_presensi`);

--
-- Indexes for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_turnamen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
