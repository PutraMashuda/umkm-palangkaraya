-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Bulan Mei 2022 pada 07.33
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` text NOT NULL,
  `stok` varchar(25) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(28, 'UMKM 2', 'Desc tempat 2', 'Penjual makanan', '<iframe src=', 'Jl. Kinibalu', 'book.png'),
(29, 'UMKM 3', 'Desc tempat 3', 'minuman', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.21105113876!2d114.5833408142863!3d-3.2978585420570514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de4230963790c57%3A0x902859712cc02755!2sUniversitas%20Lambung%20Mangkurat%20-%20Kampus%20I%20Banjarmasin!5e0!3m2!1sid!2sid!4v1646450081002!5m2!1sid!2sid\" width=\"300\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Jl. Ninjaku', 'book.png'),
(30, 'UMKM 4', 'Desc tempat 4', 'makanan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3985.464059033022!2d111.63332151428239!3d-2.6770582394782703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e08ee423c377b61%3A0xb545ec3daae9c3cf!2sJl.%20Pakunegara%2C%20Kec.%20Arut%20Sel.%2C%20Kabupaten%20Kotawaringin%20Barat%2C%20Kalimantan%20Tengah%2074112!5e0!3m2!1sid!2sid!4v1646450120376!5m2!1sid!2sid\" width=\"300\" height=\"250\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Jl. Pakunegara', 'book.png'),
(34, 'Toko SBM', 'apaaja', 'Makanan dan Minuman', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15953.174339397376!2d124.92299621888557!3d1.584061931114048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3287a394f8a86db1%3A0x9c129dd3fe1ab910!2sPatokaan%2C%20Kec.%20Talawaan%2C%20Kabupaten%20Minahasa%20Utara%2C%20Sulawesi%20Utara!5e0!3m2!1sid!2sid!4v1648387947326!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Jl.Cinta', 'cartoon-catfish-posing-illustration-45854506.jpg'),
(35, 'Toko mss', 'mss toko', 'Makanan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15953.174339397376!2d124.92299621888557!3d1.584061931114048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3287a394f8a86db1%3A0x9c129dd3fe1ab910!2sPatokaan%2C%20Kec.%20Talawaan%2C%20Kabupaten%20Minahasa%20Utara%2C%20Sulawesi%20Utara!5e0!3m2!1sid!2sid!4v1648387947326!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Jl. Anjing', 'cartoon-catfish-posing-illustration-458545061.jpg'),
(36, 'guguk', 'anak anjing comel banget ', 'Cemilan', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15953.174339397376!2d124.92299621888557!3d1.584061931114048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3287a394f8a86db1%3A0x9c129dd3fe1ab910!2sPatokaan%2C%20Kec.%20Talawaan%2C%20Kabupaten%20Minahasa%20Utara%2C%20Sulawesi%20Utara!5e0!3m2!1sid!2sid!4v1648387947326!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Jl, Konoha Blok C', 'GBR_KUNIR_ASEM.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'huda', 'kalteng', '2021-09-25 10:25:40', '2021-09-26 10:25:40'),
(2, 'huda2', 'kalteng2', '2021-09-25 10:31:28', '2021-09-26 10:31:28'),
(3, '', '', '2021-10-03 11:06:11', '2021-10-04 11:06:11'),
(4, '', '', '2021-10-03 11:07:07', '2021-10-04 11:07:07'),
(5, 'siapa ya', 'dimana aja', '2021-10-03 12:21:30', '2021-10-04 12:21:30'),
(6, '', '', '2021-11-02 10:06:31', '2021-11-03 10:06:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 'admin123', 1),
(5, 'mashuda', 'mashuda', 'mashuda', 2),
(6, 'contoh', 'contoh', 'contoh', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
