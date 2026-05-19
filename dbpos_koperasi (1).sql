-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2026 at 08:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpos_koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `transaksi_id`, `produk_id`, `qty`, `subtotal`) VALUES
(1, 2, 3, 10, 200000),
(2, 3, 2, 2, 10000),
(3, 5, 4, 5, 25000),
(4, 6, 5, 5, 25000),
(5, 8, 6, 5, 100000),
(6, 9, 4, 4, 20000),
(7, 9, 6, 1, 20000),
(8, 10, 4, 1, 5000),
(9, 11, 6, 1, 20000),
(10, 12, 6, 1, 20000),
(11, 13, 5, 1, 5000),
(12, 14, 6, 1, 20000),
(13, 15, 5, 1, 5000),
(14, 16, 7, 1, 5000),
(15, 17, 5, 1, 5000),
(16, 17, 6, 1, 20000),
(17, 18, 6, 2, 40000),
(18, 19, 9, 2, 24000),
(19, 19, 10, 1, 5000),
(20, 20, 6, 1, 20000),
(21, 20, 9, 1, 12000),
(22, 21, 6, 1, 20000),
(23, 22, 4, 1, 5000),
(24, 23, 4, 1, 5000),
(25, 23, 6, 1, 20000),
(26, 23, 7, 1, 5000),
(27, 24, 5, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `stok`, `gambar`) VALUES
(4, 'Pensil', 5000, 8, 'PRD_69dcb917407a9.jpg'),
(5, 'Tip x', 5000, 19, 'PRD_69dcb9bf9ad7d.jpg'),
(6, 'Buku', 20000, 5, 'PRD_69dcb9d08633b.jpeg'),
(7, 'Penggaris 30 cm', 5000, 8, 'PRD_69dcb9e320ae2.jpeg'),
(8, 'Penghapus', 5000, 50, 'PRD_69dcda39ab188.jpg'),
(9, 'Materai', 12000, 17, 'PRD_69e1b337b51b2.jpg'),
(10, 'Map hijau', 5000, 49, 'PRD_69e1b380607b5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `total` int(11) DEFAULT NULL,
  `metode` varchar(50) DEFAULT 'TUNAI',
  `kasir` varchar(100) DEFAULT 'Administrator',
  `bayar` decimal(10,2) DEFAULT 0.00,
  `kembali` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `total`, `metode`, `kasir`, `bayar`, `kembali`) VALUES
(1, '2026-04-08 15:32:38', 0, 'TUNAI', 'Administrator', 0.00, 0.00),
(2, '2026-04-08 15:33:38', 200000, 'TUNAI', 'Administrator', 0.00, 0.00),
(3, '2026-04-08 15:35:39', 10000, 'TUNAI', 'Administrator', 0.00, 0.00),
(4, '2026-04-08 15:36:12', 0, 'TUNAI', 'Administrator', 0.00, 0.00),
(5, '2026-04-08 15:58:04', 25000, 'TUNAI', 'Administrator', 0.00, 0.00),
(6, '2026-04-08 16:08:58', 25000, 'TUNAI', 'Administrator', 0.00, 0.00),
(7, '2026-04-08 16:09:12', 0, 'TUNAI', 'Administrator', 0.00, 0.00),
(8, '2026-04-11 13:51:24', 100000, 'TUNAI', 'Administrator', 0.00, 0.00),
(9, '2026-04-11 16:11:39', 40000, 'TUNAI', 'Administrator', 0.00, 0.00),
(10, '2026-04-13 03:06:24', 5000, 'TUNAI', 'Administrator', 0.00, 0.00),
(11, '2026-04-13 03:16:48', 20000, 'TUNAI', 'Administrator', 0.00, 0.00),
(12, '2026-04-13 17:29:32', 20000, 'TUNAI', 'Administrator', 0.00, 0.00),
(13, '2026-04-13 17:34:00', 5000, 'TUNAI', 'Administrator', 0.00, 0.00),
(14, '2026-04-13 18:05:28', 20000, 'TUNAI', 'Administrator', 0.00, 0.00),
(15, '2026-04-13 18:06:08', 5000, 'TUNAI', 'Administrator', 0.00, 0.00),
(16, '2026-04-13 18:17:10', 5000, 'QRIS', 'Administrator', 5000.00, 0.00),
(17, '2026-04-13 18:26:35', 25000, 'Transfer', 'Administrator', 25000.00, 0.00),
(18, '2026-04-13 18:54:53', 40000, 'Tunai', 'Administrator', 50000.00, 10000.00),
(19, '2026-04-17 11:15:34', 29000, 'Tunai', 'Administrator', 30000.00, 1000.00),
(20, '2026-04-17 13:39:13', 32000, 'Tunai', 'Administrator', 35000.00, 3000.00),
(21, '2026-04-17 13:40:56', 20000, 'Tunai', 'Administrator', 20000.00, 0.00),
(22, '2026-04-17 13:49:21', 5000, 'Tunai', 'Administrator', 5000.00, 0.00),
(23, '2026-05-17 13:03:10', 30000, 'Tunai', 'Administrator', 50000.00, 20000.00),
(24, '2026-05-17 13:05:19', 5000, 'Tunai', 'Administrator', 5000.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('admin','kasir','manager') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 'admin'),
(2, 'kasir', '123', 'kasir'),
(3, 'manager', '123', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
