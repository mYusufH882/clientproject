-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Apr 2020 pada 16.42
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
  `notif` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event_ak`
--

INSERT INTO `event_ak` (`id`, `boardgame`, `tanggal`, `tempat`, `status`, `notif`) VALUES
(4, 'Pirates of Carribian', '2019-10-12', '372 Kopi Setiabudi', 1, '0'),
(11, 'King Arthur', '2019-10-26', 'Metro Caffe ', 1, '0'),
(12, 'Battle Royal', '2019-10-13', 'Bober cafe', 1, '0'),
(13, 'Fly Bird', '2019-10-26', '911 Coffe', 1, '0'),
(14, 'Citadels', '2019-11-02', '911 Coffee', 1, '0'),
(15, 'Rise of Nobility', '2019-10-11', 'Bober Cafe', 1, '0'),
(56, 'Counter Strike', '2020-04-19', 'Studio E-Sports', 0, 'tunggu');

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
  `tgl_disetujui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `id_eventak`, `nama_ps`, `umur`, `no_telp`, `email_ps`, `biaya_pendaftaran`, `date`, `disetujui`, `tgl_disetujui`) VALUES
(3, 17, 'Shikamaru', 19, '0898687678', 'haryadim28@gmail.com', 50000, '2020-04-15 10:40:23', '2', '2020-04-15');

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
(18, 'Abimanyu', 'abimbaim@yahoo.com', 'default.jpg', '$2y$10$x/E.CJ6mVrq/rC6aAaKfvupzFsqsPPu2fQo5NKb2ghSBfW296G7LW', 2, 1, 1567673154),
(23, 'Steven Axwell', 'prayogabimanyu20@gmail.com', 'default.jpg', '$2y$10$4TvQso6VoSiIjkkty0PpxOaxQ1MFqHBmIgdGiJOXBSxnKNePxQyci', 2, 0, 1569431003);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
