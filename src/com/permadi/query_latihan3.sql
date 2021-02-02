-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 07:11 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `query_latihan3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti_karyawan`
--

CREATE TABLE `cuti_karyawan` (
  `id` int(11) NOT NULL,
  `nomor_induk` varchar(10) NOT NULL,
  `Tanggal_mulai` date NOT NULL,
  `Lama_cuti` smallint(6) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti_karyawan`
--

INSERT INTO `cuti_karyawan` (`id`, `nomor_induk`, `Tanggal_mulai`, `Lama_cuti`, `keterangan`) VALUES
(1, 'IP06001', '2012-02-01', 3, 'Acara keluar'),
(2, 'IP06001', '2012-02-13', 2, 'Anak sakit'),
(3, 'IP07007', '2012-02-15', 1, 'Nenek sakit'),
(4, 'IP06003', '2012-02-17', 1, 'Mendaftar sekolah anak'),
(5, 'IP07006', '2012-02-20', 5, 'Menikah'),
(6, 'IP07004', '2012-02-27', 1, 'Imunisasi anak');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Nomor_induk` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(25) NOT NULL,
  `Tanggal_lahir` date NOT NULL,
  `Tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Nomor_induk`, `Nama`, `Alamat`, `Tanggal_lahir`, `Tanggal_masuk`) VALUES
('IP06001', 'Agus', 'Jln. Gajah Mada 115A, Jak', '1970-08-01', '2006-07-07'),
('IP06002', 'Amin', 'Jln. Bungur sari v No, 17', '1977-05-03', '2006-07-07'),
('IP06003', 'Yusuf', 'Jln. Yosodpuro 15, suraba', '1973-08-09', '2006-07-07'),
('IP07004', 'Alyssa', 'Jln. Cendana No. 6 Bandun', '1983-02-14', '2007-01-05'),
('IP07005', 'Maulana', 'Jln. Ampera Raya No 1', '1985-10-10', '2007-02-05'),
('IP07006', 'Afika', 'Jln. Pejaten Barat No 6A', '1987-03-09', '2007-06-09'),
('IP07007', 'James', 'Jln. Padjadjaran No. 111,', '1988-05-19', '2007-06-09'),
('IP09008', 'Octavanus', 'Jln. Gajah Mada 101. Sema', '1988-10-07', '2008-08-08'),
('IP09009', 'Nugroho', 'Jln. Duren Tiga 196, Jaka', '1988-01-20', '2008-11-11'),
('IP09010', 'Raisa', 'Jln. Nangka Jakarta selat', '1989-12-29', '2009-02-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti_karyawan`
--
ALTER TABLE `cuti_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomor_induk` (`nomor_induk`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Nomor_induk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuti_karyawan`
--
ALTER TABLE `cuti_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuti_karyawan`
--
ALTER TABLE `cuti_karyawan`
  ADD CONSTRAINT `cuti_karyawan_ibfk_1` FOREIGN KEY (`nomor_induk`) REFERENCES `karyawan` (`Nomor_induk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
