-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 03:16 PM
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
-- Database: `alat_tulis`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `nama` varchar(255) NOT NULL,
  `kode` int(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `stok` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`nama`, `kode`, `harga`, `stok`) VALUES
('Sticky Note', 1095, 15000, 6),
('Crayon', 1098, 35000, 27),
('BolpoinCastell', 1099, 5000, 19),
('Pensil', 1100, 3000, 86);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(50) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama_pembeli`, `alamat`, `no_hp`) VALUES
(4, 'Selena', 'Chicago', '234567'),
(5, 'Allison', 'Merseyside', '24556'),
(6, 'Nunez', 'Merseyside', '56789');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(50) NOT NULL,
  `tanggal` datetime(6) NOT NULL,
  `id_pembeli` int(50) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `harga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `tanggal`, `id_pembeli`, `nama_pembeli`, `status`, `nama_barang`, `jumlah`, `harga`) VALUES
(1, '2023-12-12 08:16:56.000000', 0, 'nonmember', 'Non-member', 'BolpoinCastell', 8, 5000),
(2, '2023-12-12 08:16:56.000000', 0, 'nonmember', 'Non-member', 'Sticky Note', 7, 15000),
(3, '2023-12-12 08:31:47.000000', 0, 'nonmember', 'Non-member', 'BolpoinCastell', 9, 5000),
(4, '2023-12-12 08:31:47.000000', 0, 'nonmember', 'Non-member', 'Sticky Note', 10, 15000),
(5, '2023-12-13 12:52:29.000000', 6, 'Nunez', 'Member', 'Pensil', 5, 3000),
(6, '2023-12-13 12:52:29.000000', 6, 'Nunez', 'Member', 'Sticky Note', 6, 15000),
(7, '2023-12-13 12:52:29.000000', 6, 'Nunez', 'Member', 'BolpoinCastell', 7, 5000),
(8, '2023-12-13 13:29:53.000000', 6, 'Nunez', 'Member', 'BolpoinCastell', 7, 5000),
(9, '2023-12-13 13:32:43.000000', 5, 'Allison', 'Member', 'Pensil', 15, 3000),
(11, '2023-12-13 21:12:42.000000', 0, 'nonmember', 'Non-member', 'BolpoinCastell', 5, 5000),
(12, '2023-12-13 21:12:42.000000', 0, 'nonmember', 'Non-member', 'Sticky Note', 6, 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
