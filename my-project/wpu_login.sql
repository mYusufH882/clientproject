-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Apr 2020 pada 15.34
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_ak`
--

CREATE TABLE `event_ak` (
  `id` int(11) NOT NULL,
  `boardgame` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `harga_tiket` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event_ak`
--

INSERT INTO `event_ak` (`id`, `boardgame`, `tanggal`, `tempat`, `status`, `harga_tiket`) VALUES
(497, 'Phasellus At LLP', '2020-04-18', 'Indonesia', 0, 45000),
(498, 'Ultrices PC', '2020-04-21', 'Indonesia', 0, 45000),
(499, 'Dui Nec Inc.', '2020-04-21', 'Indonesia', 1, 45000),
(500, 'At Auctor Ullamcorper PC', '2020-04-24', 'Indonesia', 1, 45000),
(551, 'King Arthur', '2020-04-30', 'Metro Caffe ', 1, 0),
(552, 'Battle Royal', '2020-04-29', 'Bober cafe', 1, 0),
(553, 'Fly Bird', '2020-04-22', '911 Coffe', 1, 0),
(554, 'Citadels', '2020-04-23', '911 Coffee', 1, 0),
(555, 'Rise of Nobility', '2020-04-25', 'Bober Cafe', 1, 0),
(557, 'Sonic The Hedgehog', '2020-04-21', 'Toxic Place', 0, 34500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan`
--

CREATE TABLE `pendapatan` (
  `id` int(11) NOT NULL,
  `id_boardgame` int(11) NOT NULL,
  `jl_partisipan` int(50) NOT NULL,
  `harga_tiket` int(100) NOT NULL,
  `pd_masuk` int(128) NOT NULL,
  `pengeluaran` int(128) NOT NULL,
  `pd_bersih` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendapatan`
--

INSERT INTO `pendapatan` (`id`, `id_boardgame`, `jl_partisipan`, `harga_tiket`, `pd_masuk`, `pengeluaran`, `pd_bersih`) VALUES
(11, 11, 10, 12000, 120000, 50000, 70000),
(13, 4, 7, 25000, 175000, 100000, 75000),
(14, 12, 5, 20000, 100000, 40000, 60000),
(16, 13, 10, 15000, 150000, 45000, 105000),
(18, 14, 5, 15000, 75000, 35000, 40000),
(19, 15, 6, 10000, 60000, 35000, 25000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `id_eventak` int(11) NOT NULL,
  `nama_ps` varchar(100) NOT NULL,
  `umur` int(10) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email_ps` varchar(100) NOT NULL,
  `biaya_pendaftaran` int(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `disetujui` enum('1','2') NOT NULL,
  `tgl_disetujui` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `id_eventak`, `nama_ps`, `umur`, `no_telp`, `email_ps`, `biaya_pendaftaran`, `date`, `disetujui`, `tgl_disetujui`) VALUES
(102, 412, 'Ingrid', 22, '62 20 965 1745', 'netus.et.malesuada@Vivamus.ca', 35000, '2020-04-02 17:00:00', '1', '2020-04-19'),
(103, 455, '  Hamish', 23, '  62 94 328 1750', '  penatibus@Quisqueimperdiet.net', 35000, '2020-04-02 17:00:00', '1', '2020-04-19'),
(105, 254, 'Kuame', 20, '62 30 720 7100', 'non.arcu@venenatisvelfaucibus.edu', 35000, '2020-04-02 17:00:00', '1', '2020-04-19'),
(108, 246, 'Kitra', 20, '62 86 005 2741', 'gravida.Praesent@molestieorci.org', 35000, '2020-04-02 17:00:00', '1', '2020-04-19'),
(122, 498, 'Andi', 19, '0898687678', 'haryadim28@gmail.com', 45000, '2020-04-20 10:10:33', '2', '2020-04-20'),
(123, 557, 'Risman', 21, '0898687678', 'myusufh880@gmail.com', 54000, '2020-04-20 10:10:40', '2', '2020-04-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_peserta`
--

CREATE TABLE `riwayat_peserta` (
  `id` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `id_eventak` int(11) NOT NULL,
  `biaya_pendaftaran` int(25) NOT NULL,
  `foto_bukti` text NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat_peserta`
--

INSERT INTO `riwayat_peserta` (`id`, `id_peserta`, `id_eventak`, `biaya_pendaftaran`, `foto_bukti`, `tgl_daftar`) VALUES
(1, 123, 498, 45000, '', '2020-04-20 05:45:11'),
(2, 123, 557, 34500, '', '2020-04-20 05:50:06'),
(4, 122, 557, 34500, 'index2.jpeg', '2020-04-20 07:18:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(24, 'Schustaffel', 'wehr@gmail.com', 'default.jpg', '$2y$10$MzmQnu4t52J0/ZhYNuFHw.ygMME9RVqYkYcQqXqHdtFbFojwaOQeS', 2, 1, 1587044999);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `event_ak`
--
ALTER TABLE `event_ak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_peserta`
--
ALTER TABLE `riwayat_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `event_ak`
--
ALTER TABLE `event_ak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `riwayat_peserta`
--
ALTER TABLE `riwayat_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
