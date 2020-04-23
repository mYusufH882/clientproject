-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Apr 2020 pada 16.04
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
  `harga_tiket` int(25) NOT NULL,
  `pengeluaran` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event_ak`
--

INSERT INTO `event_ak` (`id`, `boardgame`, `tanggal`, `tempat`, `status`, `harga_tiket`, `pengeluaran`) VALUES
(497, 'Phasellus At LLP', '2020-04-18', 'Indonesia', 0, 45000, 5000),
(498, 'Ultrices PC', '2020-04-27', 'Indonesia', 0, 45000, 5000),
(500, 'At Auctor Ullamcorper PC', '2020-04-24', 'Indonesia', 1, 45000, 7000),
(557, 'Sonic The Hedgehog', '2020-04-21', 'Toxic Place', 0, 34500, 15000),
(558, 'GTA V', '2020-04-24', 'Toxic Place', 0, 75000, 9000);

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
(1, 500, 1, 45000, 45000, 7000, 38000);

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
(1, 498, 'Haryadi', 18, '0898687678', 'haryadim28@gmail.com', 45000, '2020-04-22 06:52:53', '2', '2020-04-22');

--
-- Trigger `peserta`
--
DELIMITER $$
CREATE TRIGGER `riwayat_peserta` AFTER UPDATE ON `peserta` FOR EACH ROW INSERT INTO riwayat_peserta SET 
	id_peserta = OLD.id,
    id_eventak = OLD.id_eventak,
    foto_bukti = 'kosong',
    biaya_pendaftaran = OLD.biaya_pendaftaran,
    tgl_daftar = OLD.tgl_disetujui
$$
DELIMITER ;

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
(1, 1, 498, 45000, 'kosong', '2020-04-22 11:10:24'),
(2, 1, 500, 45000, 'index3.jpeg', '2020-04-22 01:55:49'),
(3, 1, 558, 45000, 'index31.jpeg', '2020-04-22 09:02:53');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `riwayat_peserta`
--
ALTER TABLE `riwayat_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
