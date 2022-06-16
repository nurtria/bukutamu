-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2022 pada 03.46
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbukutamu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttamu`
--

CREATE TABLE `ttamu` (
  `id` int(3) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `nope` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ttamu`
--

INSERT INTO `ttamu` (`id`, `tanggal`, `nama`, `alamat`, `tujuan`, `nope`) VALUES
(5, '2022-02-01', 'Visa', 'Batutulis', 'Menyerahkan Dokumen', '0895348172053'),
(6, '2022-02-03', 'Nisa', 'Pamoyanan', 'Mengantarkan Barang', '085780244347'),
(7, '2022-02-04', 'Arya', 'Ramayanan', 'Bimbingan', '085320006805'),
(8, '2022-02-07', 'Ahmad', 'Tajur', 'Mendata Fasilitas', '083811896394'),
(9, '2022-02-08', 'Chika', 'Ciomas', 'Melamar Pekerjaan', '085887308954'),
(10, '2022-02-10', 'Rendy', 'Lawang Gintung', 'Mengambil Berkas', '085779838107'),
(11, '2022-02-15', 'Maya', 'Dramaga', 'Pertemuan Meeting', '081310069776'),
(12, '2022-02-16', 'Cinta', 'Cikaret', 'Melamar Pekerjaan', '087822840255'),
(13, '2022-02-18', 'Adit', 'Cijeruk', 'Membuat Aplikasi', '085779418382'),
(14, '2022-02-23', 'Cinta', 'Cisarua', 'Mengantarkan Dokumen', '088223767061'),
(15, '2022-02-24', 'Lula', 'Taman Sari', 'Mendata Dokumen', '0895355331762'),
(16, '2022-05-25', 'puput', 'nagrog', 'Bimbingan Aplikasi', '1234567'),
(20, '2022-06-07', 'rizky', 'ciranjang', 'Konsultasi', '1234567'),
(23, '2022-06-13', 'Indri', 'nagrog', 'Bimbingan Aplikasi', '1234567'),
(27, '2022-06-15', 'nurtria', 'ciranjang', 'Bimbingan Aplikasi', '1234567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tuser`
--

CREATE TABLE `tuser` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tuser`
--

INSERT INTO `tuser` (`id_user`, `username`, `password`, `nama_pengguna`, `status`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Administator', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ttamu`
--
ALTER TABLE `ttamu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ttamu`
--
ALTER TABLE `ttamu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
