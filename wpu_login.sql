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
DROP TABLE `peserta`;

INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (1,15,"Breanna",20,"62 93 266 9441","velit@dolorelitpellentesque.co.uk","251","06-06-2020",2,"19-08-2019"),(2,14,"Brenden",26,"62 22 419 0343","felis.adipiscing.fringilla@augue.ca","634","05-05-2020",2,"20-10-2019"),(3,12,"Savannah",30,"62 85 610 9670","ut.ipsum.ac@rhoncus.co.uk","901","15-08-2019",1,"12-07-2019"),(4,14,"Stephen",28,"62 94 554 5015","aliquet.lobortis.nisi@posuereenimnisl.net","391","15-05-2020",2,"03-06-2020"),(5,13,"Sybil",25,"62 70 432 7863","cursus.purus.Nullam@vellectus.org","587","16-12-2020",2,"20-05-2019"),(6,15,"Abra",17,"62 41 457 8621","amet@volutpatNulladignissim.edu","339","17-03-2020",2,"03-08-2019"),(7,12,"Bruce",23,"62 49 405 7959","eu.accumsan.sed@scelerisquedui.ca","456","29-04-2020",1,"25-09-2020"),(8,11,"Mariam",21,"62 53 418 8014","aliquam.arcu.Aliquam@egetvolutpat.ca","405","01-09-2019",1,"02-08-2019"),(9,14,"Brennan",27,"62 23 193 1513","vestibulum.neque.sed@dictum.org","348","20-04-2020",2,"26-07-2020"),(10,12,"Lilah",26,"62 35 839 0447","posuere@elitsed.net","213","12-10-2019",1,"30-07-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (11,12,"Jane",30,"62 29 594 7931","netus@nulla.com","787","26-10-2019",1,"17-05-2020"),(12,14,"Harlan",22,"62 91 626 9555","quam.quis.diam@sapien.co.uk","679","12-06-2020",2,"28-04-2019"),(13,12,"Gisela",27,"62 34 945 4512","Cras@Mauris.ca","324","06-04-2020",2,"01-12-2020"),(14,12,"Alfonso",20,"62 87 580 6038","risus@afacilisisnon.co.uk","451","16-10-2019",2,"03-05-2019"),(15,13,"Austin",30,"62 60 137 5668","massa@Inlorem.ca","678","01-04-2021",2,"01-08-2019"),(16,14,"Desiree",24,"62 61 379 3767","Nulla.tincidunt@orciPhasellus.net","583","02-02-2020",2,"07-12-2019"),(17,11,"Jonas",26,"62 86 945 2184","eu.eleifend@eros.ca","897","21-10-2020",1,"03-03-2020"),(18,13,"Orla",30,"62 39 380 5415","vel.nisl@magna.edu","188","18-10-2020",2,"01-11-2020"),(19,11,"Olympia",23,"62 91 571 9463","pharetra@velvulputate.net","836","15-06-2019",1,"01-02-2021"),(20,14,"Isaiah",19,"62 64 729 1107","consectetuer.rhoncus@etmalesuada.net","125","13-11-2019",2,"16-12-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (21,13,"Tanya",21,"62 93 905 4897","gravida.non.sollicitudin@magna.edu","443","06-04-2021",2,"25-01-2020"),(22,14,"Abbot",27,"62 76 082 5460","fames.ac.turpis@estvitae.co.uk","562","14-05-2019",1,"13-06-2019"),(23,15,"Colton",29,"62 31 126 1130","Cum.sociis.natoque@magnis.org","338","24-03-2020",1,"09-07-2019"),(24,14,"Jermaine",24,"62 71 388 3031","non.arcu.Vivamus@Proin.edu","583","20-02-2021",2,"01-05-2020"),(25,11,"Ora",24,"62 95 871 5723","facilisis.magna.tellus@Aliquam.ca","905","24-03-2020",1,"08-03-2020"),(26,13,"Byron",19,"62 53 999 1940","Quisque@disparturient.ca","974","12-10-2019",2,"19-04-2019"),(27,11,"Aspen",30,"62 68 573 9596","massa.rutrum@etrutrum.ca","437","28-07-2019",2,"27-03-2020"),(28,12,"Keane",30,"62 27 198 5577","nunc.sed.pede@aenim.com","279","23-07-2019",2,"18-06-2020"),(29,14,"Justina",29,"62 34 975 7508","Sed.nunc@pretiumaliquet.net","736","14-06-2019",1,"11-02-2020"),(30,15,"Barry",23,"62 58 842 1271","arcu.iaculis.enim@telluseu.ca","887","12-11-2020",1,"29-08-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (31,13,"Yasir",17,"62 25 021 0521","dignissim@Morbisit.net","213","06-09-2020",1,"25-06-2019"),(32,11,"Chancellor",29,"62 38 125 2798","lobortis@Sednecmetus.edu","233","08-06-2020",1,"22-09-2019"),(33,14,"Nora",21,"62 93 255 1752","lectus.a@vitae.ca","578","21-04-2019",1,"06-01-2021"),(34,15,"Neve",17,"62 43 577 1867","In.ornare.sagittis@ipsum.edu","799","19-07-2020",2,"10-02-2021"),(35,15,"Ulric",28,"62 61 887 4237","montes.nascetur@egestasDuis.co.uk","668","10-07-2019",2,"07-01-2020"),(36,14,"Colin",29,"62 40 032 7640","euismod.est@sitametmassa.co.uk","727","02-05-2020",1,"12-10-2019"),(37,13,"Tana",17,"62 59 503 8854","eleifend@nec.com","167","03-07-2019",1,"26-09-2019"),(38,15,"Davis",18,"62 10 349 6361","aliquam.enim.nec@antedictumcursus.ca","789","20-03-2021",1,"10-07-2020"),(39,12,"Aaron",25,"62 59 345 9972","scelerisque.scelerisque.dui@Aenean.edu","147","02-12-2019",2,"03-01-2021"),(40,12,"Kyla",21,"62 14 092 4922","risus@rutrumloremac.edu","860","19-08-2020",1,"09-10-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (41,11,"Maite",28,"62 89 703 7352","vitae@adlitoratorquent.ca","947","02-03-2021",2,"24-09-2019"),(42,15,"Dexter",26,"62 14 082 7073","Aliquam.erat.volutpat@vitaeeratVivamus.org","634","09-02-2020",2,"08-01-2021"),(43,15,"Bruce",26,"62 60 446 3056","est.ac@vitaedolor.ca","488","07-11-2019",2,"14-11-2020"),(44,13,"Helen",19,"62 48 949 6393","Cras@idsapienCras.edu","924","08-06-2020",2,"05-07-2020"),(45,15,"Larissa",24,"62 93 110 3132","mus@Aliquamnec.org","424","24-04-2020",2,"27-02-2020"),(46,11,"Lucas",21,"62 65 369 4639","id@congueIn.ca","528","14-10-2020",2,"06-02-2020"),(47,11,"Haviva",28,"62 22 912 9276","ornare.lectus.ante@laoreet.ca","284","09-12-2019",2,"25-06-2020"),(48,14,"Adena",29,"62 98 397 3552","neque@risus.co.uk","527","31-10-2019",2,"01-01-2020"),(49,14,"Cleo",28,"62 98 208 9051","Duis.volutpat@viverra.edu","849","30-03-2020",2,"10-02-2021"),(50,12,"Elizabeth",25,"62 55 710 7319","Proin@scelerisquesed.org","165","16-04-2019",2,"28-12-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (51,11,"Jared",20,"62 13 780 3918","enim.Etiam.imperdiet@disparturientmontes.edu","139","30-05-2020",1,"27-10-2019"),(52,12,"Hiroko",24,"62 12 907 7480","lacus@Praesent.co.uk","518","07-07-2019",1,"30-08-2020"),(53,15,"Kirk",30,"62 92 322 8637","Duis@eget.ca","961","05-08-2020",2,"12-11-2019"),(54,11,"Alec",23,"62 24 256 6005","quam.vel.sapien@eleifendCrassed.org","480","19-03-2021",2,"14-07-2020"),(55,12,"Nathan",18,"62 82 915 2238","amet.diam.eu@sitametultricies.org","570","28-04-2019",1,"14-11-2020"),(56,11,"Paki",19,"62 18 552 5811","pretium.aliquet.metus@nequepellentesquemassa.edu","940","02-03-2021",2,"27-09-2020"),(57,14,"Buckminster",22,"62 69 450 9413","augue.Sed.molestie@orcisemeget.ca","176","02-11-2020",2,"23-10-2019"),(58,15,"Boris",24,"62 24 692 3597","dictum.sapien@blanditenimconsequat.edu","791","09-12-2019",1,"23-07-2020"),(59,12,"Amy",27,"62 72 826 2246","id.magna.et@arcuCurabiturut.ca","379","24-11-2019",1,"04-01-2021"),(60,14,"Cally",23,"62 61 890 0460","dictum.augue.malesuada@ridiculus.ca","668","06-05-2020",2,"01-05-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (61,14,"Kaseem",26,"62 29 842 9865","semper@odioNaminterdum.ca","529","23-07-2019",2,"12-07-2020"),(62,14,"Luke",17,"62 77 799 5473","at.fringilla@Aliquamauctorvelit.ca","219","27-05-2020",2,"13-09-2020"),(63,11,"Cadman",21,"62 55 455 1877","Sed.nec.metus@loremDonecelementum.com","735","08-07-2019",1,"29-02-2020"),(64,15,"Dieter",21,"62 81 166 6801","est.congue.a@aliquamiaculis.ca","454","17-03-2020",1,"22-12-2020"),(65,15,"Berk",26,"62 15 699 6164","mauris.Integer.sem@magnaSed.co.uk","850","02-09-2020",2,"25-04-2019"),(66,14,"Hashim",17,"62 10 648 7195","porttitor@necluctusfelis.com","991","30-01-2021",2,"24-08-2019"),(67,13,"Lucas",30,"62 27 980 9876","enim.Etiam.gravida@dictum.edu","291","25-01-2021",2,"20-04-2019"),(68,14,"Declan",24,"62 61 268 7519","Vestibulum.ut.eros@sempercursusInteger.ca","964","09-12-2019",2,"02-10-2020"),(69,15,"Colleen",19,"62 19 231 9350","Vivamus@malesuadautsem.ca","707","25-01-2020",2,"29-08-2020"),(70,12,"Lacey",24,"62 25 963 6393","sit.amet.luctus@Nuncmauris.net","251","11-07-2020",1,"09-11-2019");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (71,11,"Tobias",22,"62 76 769 1942","Sed@scelerisqueduiSuspendisse.ca","674","25-01-2020",2,"07-09-2020"),(72,14,"Katelyn",27,"62 96 581 1315","et@tellus.co.uk","684","21-10-2019",1,"18-08-2019"),(73,12,"Keegan",26,"62 23 538 4808","Quisque.imperdiet@euerosNam.net","657","29-06-2019",2,"01-10-2019"),(74,15,"Brendan",29,"62 20 924 5470","felis.ullamcorper.viverra@lobortisquispede.co.uk","294","07-08-2019",2,"10-05-2019"),(75,14,"Omar",28,"62 73 876 0866","vehicula.Pellentesque@commodo.org","193","25-06-2019",1,"16-08-2019"),(76,12,"Fitzgerald",22,"62 76 602 6700","tincidunt@scelerisqueloremipsum.com","618","13-10-2020",1,"14-12-2019"),(77,15,"Lucian",29,"62 48 270 4384","at.velit.Pellentesque@Duis.net","936","04-12-2020",2,"17-08-2020"),(78,11,"Ocean",18,"62 67 912 4188","arcu.Sed.et@orci.ca","315","20-10-2020",2,"22-01-2021"),(79,15,"Boris",19,"62 86 763 7461","Proin@magnisdis.org","361","28-10-2020",2,"20-11-2019"),(80,15,"Heidi",17,"62 33 458 9656","dolor.dolor.tempus@dolor.com","256","01-01-2020",2,"05-06-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (81,14,"Baxter",27,"62 24 522 1544","erat.in.consectetuer@consectetuer.edu","166","01-09-2020",2,"14-01-2020"),(82,13,"Priscilla",17,"62 44 046 6702","sed.hendrerit@turpis.edu","980","07-12-2020",1,"21-07-2020"),(83,13,"Aladdin",27,"62 73 215 4147","facilisis.non@tristique.com","648","22-11-2020",1,"28-12-2020"),(84,14,"Cairo",24,"62 52 818 2132","nibh.vulputate.mauris@pharetrased.com","488","09-07-2019",1,"19-04-2020"),(85,14,"Indigo",21,"62 78 372 0415","nisi.dictum@libero.org","389","04-12-2019",2,"22-04-2019"),(86,11,"Candace",18,"62 33 698 9809","pellentesque.tellus@idblandit.net","521","18-02-2021",2,"30-03-2020"),(87,15,"Evelyn",28,"62 51 418 6742","Vestibulum@Aeneansedpede.net","711","17-08-2020",2,"10-08-2020"),(88,12,"Belle",19,"62 13 309 5190","orci.Donec.nibh@sempercursus.edu","693","30-05-2019",1,"03-05-2019"),(89,12,"Signe",30,"62 14 129 7550","orci@laciniavitae.net","571","12-12-2020",1,"18-07-2019"),(90,11,"Ryan",23,"62 31 117 2191","iaculis.lacus@Nullamfeugiatplacerat.com","293","02-10-2020",2,"10-03-2020");
INSERT INTO `peserta` (`id`,`id_eventak`,`nama_ps`,`umur`,`no_telp`,`email_ps`,`biaya_pendaftaran`,`date`,`disetujui`,`tgl_disetujui`) VALUES (91,15,"Ainsley",23,"62 64 519 5635","euismod.mauris@vellectus.ca","727","22-09-2020",2,"20-11-2019"),(92,11,"Hayes",25,"62 27 529 1284","cursus.et@sodales.net","265","15-07-2020",1,"07-09-2019"),(93,12,"Dalton",27,"62 45 905 9221","purus.sapien.gravida@temporarcuVestibulum.edu","527","05-04-2021",1,"16-08-2019"),(94,11,"Mark",18,"62 69 267 1571","libero.Proin@nisiCum.edu","335","03-02-2020",1,"31-07-2019"),(95,12,"Danielle",21,"62 11 836 2805","dapibus.gravida@Aeneanegestashendrerit.ca","127","14-04-2020",2,"25-12-2019"),(96,12,"Hedwig",20,"62 45 878 6725","ipsum.porta@enimmi.com","879","02-06-2020",1,"10-04-2020"),(97,15,"Kyla",19,"62 85 838 0283","diam.Sed.diam@ac.org","619","17-10-2019",1,"12-04-2021"),(98,15,"Harding",20,"62 43 768 3126","magnis.dis@tacitisociosquad.edu","419","23-11-2020",2,"18-09-2019"),(99,12,"Sydney",18,"62 30 553 0873","mi@ornare.net","805","25-01-2021",2,"05-04-2021"),(100,11,"Drake",19,"62 55 530 3159","metus@Integer.org","511","21-06-2020",2,"26-01-2021");

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
