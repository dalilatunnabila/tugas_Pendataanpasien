-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2022 pada 05.30
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pendataanpasien`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id` int(4) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `no_telp` decimal(12,0) NOT NULL,
  `agama` enum('islam','kristen','hindu','budha','katolik','konghucu') NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `gejala` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_kamar` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pasien`
--

INSERT INTO `tb_pasien` (`id`, `nama_lengkap`, `alamat`, `jk`, `no_telp`, `agama`, `tanggal_masuk`, `gejala`, `tempat_lahir`, `tanggal_lahir`, `no_kamar`) VALUES
(1, 'bian', 'demak', 'laki-laki', '88233696634', 'islam', '2022-10-12', 'tipes', 'demak', '2005-01-01', 10),
(3, 'intan', 'daleman', 'perempuan', '88344521123', 'islam', '2022-10-13', 'demam', 'semarang', '2022-08-23', 3),
(4, 'rika', 'gorawe', 'perempuan', '88233456672', 'hindu', '2022-10-18', 'batuk', 'semarang', '2022-10-08', 3),
(6, 'riska', 'timbulsloko', 'perempuan', '456890634334', 'konghucu', '2022-10-19', 'panas dalam', 'demak', '2022-09-30', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
