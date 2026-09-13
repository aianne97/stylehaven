-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2026 at 05:29 PM
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
-- Database: `db_stylehaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `ukuran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `id_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`id_detail`, `id_pembelian`, `id_produk`, `qty`, `subtotal`) VALUES
(1, 1, 2, 1, 149000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Tops'),
(2, 'Bottoms'),
(3, 'Outerwear'),
(4, 'Dresses'),
(5, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `total` int(11) NOT NULL,
  `status` enum('pending','diproses','selesai') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_user`, `tanggal`, `total`, `status`) VALUES
(1, 2, '2026-07-02 02:34:03', 149000, ''),
(2, 2, '2026-07-04 14:50:08', 499000, '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `ukuran` varchar(20) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `gambar3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `ukuran`, `warna`, `gambar`, `deskripsi`, `id_kategori`, `gambar2`, `gambar3`) VALUES
(2, 'Style Haven SH Tribal Embroidered Cap - Black Pink Edition', 149000, 1, 'One Size ', 'Hitam', 'topim.png', 'Topi premium Style Haven dengan desain streetwear modern yang memadukan warna hitam elegan dan bordir pink eksklusif. Dilengkapi logo SH pada bagian depan serta detail tribal embroidery yang memberikan kesan bold, fashionable, dan premium untuk menunjang berbagai gaya outfit.\r\n\r\nCocok digunakan untuk aktivitas sehari-hari, hangout, travelling, maupun melengkapi tampilan casual street fashion.\r\n\r\nDETAILS\r\n\r\n• Material: Premium Cotton Twill\r\n• Bordir Logo SH Eksklusif\r\n• Detail Tribal Embroidery Premium\r\n• Adjustable Strap dengan Metal Buckle\r\n• Unisex (Pria & Wanita)\r\n• One Size Fits Most\r\n• Nyaman Dipakai Seharian\r\n• Jahitan Rapi dan Kuat', 5, 'topib.PNG', 'topid.PNG'),
(4, 'Style Haven Dream Loud Varsity Jacket', 499000, 3, 'S , M , L , XL', 'Vintage Beige', 'otrdp.jpeg', 'Tunjukkan karakter berani dengan Style Haven Dream Loud Varsity Jacket, outer premium bergaya vintage streetwear yang dirancang untuk generasi yang berani bermimpi besar dan bekerja dalam diam. Mengusung kombinasi warna beige vintage dengan aksen cokelat serta artwork bergaya grunge, jaket ini memberikan tampilan yang maskulin, modern, dan mudah dipadukan dengan berbagai outfit.\r\n\r\nBagian depan menampilkan ilustrasi angel statue serta logo Style Haven, sedangkan bagian belakang hadir dengan slogan ikonik:\r\n\r\nDream Loud.\r\nWork Quiet.\r\nWin Big.\r\n\r\nsebagai simbol semangat untuk terus berkembang tanpa perlu banyak bicara.\r\n\r\nDetail Produk\r\n\r\n- Premium canvas twill fabric\r\n- Corduroy collar warna cokelat\r\n- Full zipper (outer jacket)\r\n- Oversized / boxy fit\r\n- High-quality screen print artwork\r\n- 2 side pockets\r\n- Nyaman dipakai untuk daily wear maupun streetwear\r\n- Eksklusif dari Style Haven', 3, 'otrbp.jpeg', 'otrmp.jpeg'),
(8, 'Shadow Sunglasses Style Haven', 169000, 3, 'One Size', 'Hitam', 'kcmata1.jpeg', 'Style Haven Shadow Sunglasses hadir dengan desain modern dan minimalis yang cocok digunakan untuk berbagai aktivitas, mulai dari hangout, traveling, hingga berkendara. Dibuat menggunakan frame premium yang ringan dan nyaman dipakai dalam waktu lama. Dilengkapi lensa UV400 Protection untuk membantu melindungi mata dari paparan sinar UV, sehingga tetap nyaman digunakan di bawah sinar matahari. Cocok dipadukan dengan gaya casual maupun streetwear.\r\n\r\nSpesifikasi\r\n- Material Frame : Premium Polycarbonate\r\n- Material Lensa : UV400 Protection\r\n- Warna Frame : Black\r\n- Warna Lensa : Black\r\n- Berat : ±30 gram\r\n- Gender : Unisex\r\n- Ukuran : Lebar frame ±14,5 cm, panjang gagang ±14 cm\r\n', 5, 'kcmata2.jpeg', 'kcamata3.jpeg'),
(9, 'Rebel Wide Leg Jeans', 389000, 5, '27, 28, 29, 30', 'Washed Black', 'celanam.jpeg', 'Style Haven Rebel Wide Leg Jeans menghadirkan gaya streetwear modern dengan potongan wide leg yang nyaman dan trendi. Dilengkapi detail grafis berwarna pink yang unik pada kedua sisi celana, membuat penampilan semakin standout. Terbuat dari bahan denim premium yang kuat namun tetap nyaman digunakan untuk aktivitas sehari-hari. Cocok dipadukan dengan crop top, oversized t-shirt, maupun hoodie favoritmu.\r\n\r\nSpesifikasi\r\n- Material: Premium Denim\r\n- Model: Wide Leg\r\n- Warna: Washed Black\r\n- Motif: Pink Graphic Print\r\n- Pinggang: High Waist\r\n- Fit: Relaxed Fit\r\n- Gender: Wanita', 2, 'celanab.jpeg', 'celanad.jpeg'),
(10, 'Blossom Mini Skirt', 179000, 5, 'S , M , L', 'Hitam', 'rokm.jpeg', 'Style Haven Blossom Mini Skirt merupakan rok mini dengan desain feminin yang dihiasi detail bunga 3D elegan di seluruh permukaan. Dilengkapi aksen pita berwarna pink pada bagian samping yang memberikan sentuhan manis dan modern. Dibuat dari bahan premium yang nyaman dipakai, rok ini cocok dipadukan dengan kemeja, crop top, maupun blouse untuk berbagai kesempatan, mulai dari hangout hingga acara semi formal.\r\n\r\nSpesifikasi\r\n- Material: Premium Polyester Blend\r\n- Model: Mini Skirt\r\n- Motif: Floral 3D Applique\r\n- Warna: Black\r\n- Detail: Side Slit dengan Ribbon Pink\r\n- Fit: Slim Fit\r\n- Gender: Wanita', 2, 'rokb.jpeg', 'rokd.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `password`, `role`) VALUES
(1, 'Admin Style Haven', 'admin@stylehaven.com', 'admin123', 'admin'),
(2, 'heti hernawanti', 'nawantiii6@gmail.com', '12345', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_pembelian` (`id_pembelian`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `detail_pembelian_ibfk_1` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`),
  ADD CONSTRAINT `detail_pembelian_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
