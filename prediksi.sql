-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 11:37 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prediksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(100, 'Muhammad Hisbullah', 'admin', 'admin'),
(101, 'coba', 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`) VALUES
(200, 'Air Galon Biasa', '4000'),
(201, 'Air Galon Aqua', '21000'),
(203, 'Air Galon Cleo', '17000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` year(4) NOT NULL,
  `jumlah` varchar(5) NOT NULL,
  `average` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `bulan`, `tahun`, `jumlah`, `average`) VALUES
(300, 200, 'Januari', 2019, '120', 0),
(301, 200, 'Februari', 2019, '105', 0),
(302, 200, 'Maret', 2019, '134', 0),
(303, 200, 'April', 2019, '123', 119.6666667),
(304, 200, 'Mei', 2019, '113', 120.6666667),
(305, 200, 'Juni', 2019, '124', 123.3333333),
(306, 200, 'Juli', 2019, '144', 120),
(307, 200, 'Agustus', 2019, '155', 127),
(308, 200, 'September', 2019, '133', 141),
(309, 200, 'Oktober', 2019, '120', 144),
(310, 200, 'November', 2019, '148', 136),
(311, 200, 'Desember', 2019, '100', 133.6666667),
(312, 201, 'Januari', 2019, '20', 0),
(313, 201, 'Februari', 2019, '32', 0),
(314, 201, 'Maret', 2019, '34', 0),
(316, 201, 'April', 2019, '23', 28.6666667),
(317, 201, 'Mei', 2019, '13', 29.6666667),
(318, 201, 'Juni', 2019, '24', 23.3333333),
(319, 201, 'Juli', 2019, '44', 20),
(320, 201, 'Agustus', 2019, '55', 27),
(321, 201, 'September', 2019, '36', 41),
(322, 201, 'Oktober', 2019, '20', 45),
(323, 201, 'November', 2019, '48', 37),
(324, 201, 'Desember', 2019, '30', 34.6666667),
(325, 203, 'Januari', 2019, '10', 0),
(326, 203, 'Februari', 2019, '13', 0),
(327, 203, 'Maret', 2019, '13', 0),
(328, 203, 'April', 2019, '12', 12),
(329, 203, 'Mei', 2019, '13', 12.6666667),
(330, 203, 'Juni', 2019, '12', 12.6666667),
(331, 203, 'Juli', 2019, '14', 12.3333333),
(332, 203, 'Agustus', 2019, '15', 13),
(333, 203, 'September', 2019, '13', 13.6666667),
(334, 203, 'Oktober', 2019, '12', 14),
(335, 203, 'November', 2019, '18', 13.3333333),
(336, 203, 'Desember', 2019, '11', 14.3333333);

-- --------------------------------------------------------

--
-- Table structure for table `prediksi`
--

CREATE TABLE `prediksi` (
  `id_prediksi` int(11) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` year(4) NOT NULL,
  `hasil` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prediksi`
--

INSERT INTO `prediksi` (`id_prediksi`, `bulan`, `tahun`, `hasil`) VALUES
(400, 'Januari', 2020, 122.66666666667),
(401, 'Januari', 2020, 32.666666666667),
(402, 'Januari', 2020, 13.666666666667);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `prediksi`
--
ALTER TABLE `prediksi`
  ADD PRIMARY KEY (`id_prediksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT for table `prediksi`
--
ALTER TABLE `prediksi`
  MODIFY `id_prediksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
