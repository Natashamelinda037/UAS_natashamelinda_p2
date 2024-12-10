-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 06:20 AM
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
-- Database: `api_natasha_p2`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `namatokoh` varchar(225) NOT NULL,
  `peran` varchar(225) NOT NULL,
  `jeniskelamin` varchar(225) NOT NULL,
  `rasspesies` varchar(225) NOT NULL,
  `cirikhas` varchar(225) NOT NULL,
  `relasidenganmoana` varchar(225) NOT NULL,
  `keahlian` varchar(225) NOT NULL,
  `kelemahan` varchar(225) NOT NULL,
  `tugasdalamcerita` varchar(225) NOT NULL,
  `motivasi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `namatokoh`, `peran`, `jeniskelamin`, `rasspesies`, `cirikhas`, `relasidenganmoana`, `keahlian`, `kelemahan`, `tugasdalamcerita`, `motivasi`) VALUES
(1, 'Moana', 'Protagonis', 'Perempuan', 'manusia', 'Rambut panjang keriting', 'Tokoh utama', 'Navigasi dan kepemimpinan ', 'Keraguan awalnya', 'Menyelamatkann pulau dan lautan', 'Melindungi desanya'),
(2, 'Maui', 'Demigod', 'Laki-laki', 'Demigod', 'Tato hidup dan kail ajaib', 'Rekan petualangan', 'Transformasi dan kekuatan fisik', 'Ego yang besar', 'Membantu Moana mengembalikan hati Te Fiti', 'Membuktikan keberhargaan dirinya'),
(3, 'Te Fiti', 'Dewi kehidupan', 'Perempuan', 'Dewi', 'Bentuk alami hijau dan bisa berubah ', 'Fokus misi moana', 'Menciptakan kehidupan', 'Kehilangan hati', 'Menjadi sumber kekuatan alam', 'Ingin memberikan kehidupan kepada dunia '),
(4, 'Te ka', 'Antagonis', 'Tidak jelas', 'Entitas Lava', 'Api dan magma', 'Musuh', 'Menghancurkan', 'Tidak punya hati ', 'Menjadi rintangan utama Moana', 'Melindungi diri dari ancaman '),
(5, 'Tala', 'Nenek Moana ', 'Perempuan', 'Manusia', 'mencintai lautan', 'Nenek Moana', 'Pengetahuan leluhur ', 'Usia sudah tua', 'Memberi inspirasi kepada Moana', 'Ingin mewariskan tradisi leluhur'),
(6, 'Chief Tui', 'Ayah Moana, pemimpin desa', 'Laki-laki', 'Manusia', 'memiliki jiwa kepemimpinan dan pelindung', 'orang tua Moana(Ayah Moana)', 'Kepemimpinan ', 'Ketakutan akan laut ', 'Menentang petualangan Moana', 'Ingin melindungi keluarganya'),
(7, 'Sina', 'Ibu Moana', 'Perempuan', 'Manusia', 'Rambut panjang keriting seperti Moana', 'orang tua Moana(Ibu Moana)', 'Memberikan dukungan emosional', 'Tidak berani menentang Tui', 'Memberikan dukungan rahasia kepada Moana', 'Ingin melihat Moana bahagia'),
(8, 'Pua', 'Hewan peliharaan Moana', 'Tidak diketahui ', 'Babi', 'Memiliki tubuh yang kecil dan bewarna pink', 'Hewan peliharaan sekaligus teman Moana', 'Memberikan hiburan ', 'Tidak berani berpetualang', 'Memberi warna dalam cerita', 'Menambahkan warna dalam cerita'),
(9, 'Gramma Tala\'s spirit ', 'Penolong roh', 'Perempuan', 'Roh Manusia', 'Cahaya biru dan berbentuk ikan pari', 'Penolong spiritual Moana', 'Memberikan nasehat dan arahan bijak kepada Moana', 'Tidak memiliki bentuk fisik lagi', 'Membimbing Moana di saat sulit', 'Melindungi cucunya'),
(10, 'Fiti', 'Penolong Mirror', 'Perempuan', 'Manusia', 'anak-anak desa yang ceria', 'Penduduk satu desa dengan Moana', 'Memberikan hiburan dan semangat', 'Ketakutan terhadap lautan', 'Membangun suasana di desanya', 'Mendukung Moana secara lokal'),
(11, 'Lava Monster', 'Rintangan atau musuh', 'Tidak jelas', 'Makhluk Lava', 'Tubuh penuh lava dan besar', 'Salah satu musuh Moana', 'Serangan api', 'Tidak bisa berfikir strategis dan logis', 'Menjadi ancaman di perjalanan Moana', 'Ingin menjaga wilayahnya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
