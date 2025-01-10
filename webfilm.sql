-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 04:45 AM
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
-- Database: `webfilm`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `harga` varchar(15) DEFAULT NULL,
  `synopsis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `image`, `date`, `time`, `harga`, `synopsis`) VALUES
(1, 'Ant-Man', 'assets/antman.jpg', '2023-01-01', '10:00:00', '60.000', 'Seorang pahlawan kecil dengan teknologi canggih menghadapi ancaman besar untuk menyelamatkan dunia.'),
(2, 'Avengers: Endgame', 'assets/avenger.jpg', '2023-01-01', '12:00:00', '40.000', 'Para Avengers bersatu untuk menghadapi Thanos dalam pertempuran epik untuk menyelamatkan alam semesta.'),
(3, 'The Dark Knight', 'assets/batman.jpg', '2023-01-01', '14:00:00', '40.000', 'Batman menghadapi tantangan besar saat berhadapan dengan Joker, seorang penjahat dengan rencana mengacaukan Gotham.'),
(4, 'Dune', 'assets/dune.jpg', '2023-01-02', '10:00:00', '40.000', 'Seorang pemuda menemukan rahasia besar di planet gurun yang akan mengubah nasib keluarganya dan dunia.'),
(5, 'Everything Everywhere All At Once', 'assets/everything.jpg', '2023-01-02', '12:00:00', '40.000', 'Seorang ibu dan anaknya terjebak dalam berbagai dimensi yang absurd untuk menyelamatkan keluarga mereka dari kehancuran.'),
(6, 'Infinite Storm', 'assets/infinite.jpg', '2023-01-02', '14:00:00', '40.000', 'Seorang pendaki menghadapi badai dahsyat di gunung yang membawanya pada perjuangan bertahan hidup yang mendalam.'),
(7, 'Joker', 'assets/joker.jpg', '2023-01-03', '10:00:00', '40.000', 'Kisah mendalam tentang seorang pria yang berubah menjadi Joker, penjahat ikonik dengan masa lalu kelam.'),
(8, 'Lightyear', 'assets/lightyear.jpg', '2023-01-03', '12:00:00', '40.000', 'Astronot Buzz Lightyear memulai petualangan epik untuk menemukan jalan pulang ke rumah setelah misi yang salah arah.'),
(9, 'Morbius', 'assets/morbius.jpg', '2023-01-03', '14:00:00', '40.000', 'Dokter berbakat berubah menjadi vampir dalam upaya menyembuhkan penyakitnya, tetapi mendapati dirinya menjadi ancaman bagi dunia.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
