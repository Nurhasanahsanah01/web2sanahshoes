-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 05:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanahshoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `datapelanggan`
--

CREATE TABLE `datapelanggan` (
  `id_pelanggan` int(30) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `merek_sepatu` varchar(50) NOT NULL,
  `jumlah_sepatu` varchar(50) NOT NULL,
  `total_harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datapelanggan`
--

INSERT INTO `datapelanggan` (`id_pelanggan`, `nama_pelanggan`, `merek_sepatu`, `jumlah_sepatu`, `total_harga`) VALUES
(1, 'sanah', 'sepatu jordan', '2 pasang', 700),
(8, 'citra', 'sepatu futsal', '1 pasang', 900),
(10, 'tariii', 'sepatu sekolah', '2 pasang', 2000),
(11, 'sanah', 'sepatu sport', '2 pasang', 200000),
(12, 'sanah', 'sepatu futsal', '1 pasang', 200),
(13, 'putriani', 'sepatu sport', '3 pasang', 700);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_handphone` int(50) NOT NULL,
  `pesan` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`nama`, `email`, `no_handphone`, `pesan`, `date`) VALUES
('muliyani', 'yani@gmail.com', 2147483647, 'produksi sepatunya tolong di perbanyak karena barang  nya mudah soldout', '2024-01-23 14:16:47'),
('lestari', 'tari@gmail.com', 2147483647, 'stok warna hitam tolong produksi lebih banyak lagi', '2024-01-23 15:23:41'),
('dedi', 'dedi@gmail.com', 2147483647, 'sepatunya haruss lebihh baru lagi yaaaa', '2024-02-22 07:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(254) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` char(128) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `foto` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `token`, `status`, `foto`, `last_login`) VALUES
(2, 'nurhasanah', 'b5db015e89b7a94c3e0ee95520d8f458', 'nur@gmail.com', 'fae76a6cbadd169eaeac6a6b8866b8c2', '1', '2024-02-22-8-03-52.jpeg', '2024-02-22 15:49:39'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'adm@gmail.com', 'c0e024d9200b5705bc4804722636378a', '1', '2024-02-22-7-29-53.jpeg', '2024-02-22 14:34:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapelanggan`
--
ALTER TABLE `datapelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datapelanggan`
--
ALTER TABLE `datapelanggan`
  MODIFY `id_pelanggan` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
