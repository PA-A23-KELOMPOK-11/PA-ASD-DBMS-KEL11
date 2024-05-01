-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seacare_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Nama_Admin` varchar(30) DEFAULT NULL,
  `No_HP` varchar(12) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Job_desc` varchar(50) DEFAULT NULL,
  `ID_ADMIN` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Nama_Admin`, `No_HP`, `Email`, `Job_desc`, `ID_ADMIN`) VALUES
('Aidhil Saputra', '082350744799', 'aidhilsaputra24@gmail.com', 'Input Fauna', 1001),
('Rofi Hanif Fauzan', '081291381193', 'rofihaniffauzan200105@gmail.com', 'Input Flora', 1002),
('Naura Syawal Athallah Putri', '089541934060', 'naurasap@gmail.com', 'Pemeliharaan database', 1003),
('Irene Miraj Nur Sari', '081770059576', 'iraramilanda@gmail.com', 'Admin call center', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `biota_laut`
--

CREATE TABLE `biota_laut` (
  `Nama_biota` varchar(50) NOT NULL,
  `Flora_atau_Fauna` varchar(25) DEFAULT NULL,
  `Nama_Ilmiah` varchar(100) DEFAULT NULL,
  `Populasi` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `ID_perairan` int(3) DEFAULT NULL,
  `ID_ADMIN` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biota_laut`
--

INSERT INTO `biota_laut` (`Nama_biota`, `Flora_atau_Fauna`, `Nama_Ilmiah`, `Populasi`, `Status`, `ID_perairan`, `ID_ADMIN`) VALUES
('Alga coklat', 'Flora', 'Turbinaria sp.', 'Berlimpah', 'Rentan', 135, 1002),
('Alga coklat gelembung', 'Flora', 'Turbinaria ornata', 'Berlimpah', 'Rentan', 153, 1002),
('Alga coklat tanduk rusa', 'Flora', 'Sargassum hornschuki', 'Berlimpah', 'Rentan', 144, 1002),
('Alga hijau', 'Flora', 'Caulerpa sp.', 'Berlimpah', 'Lestari', 130, 1002),
('Alga hijau bercabang', 'Flora', 'Caulerpa racemosa', 'Berlimpah', 'Lestari', 139, 1002),
('Alga hijau bercabang bulu', 'Flora', 'Caulerpa sertularoides', 'Berlimpah', 'Lestari', 148, 1002),
('Alga hijau bercabang bulu halus', 'Flora', 'Caulerpa plumosa', 'Berlimpah', 'Lestari', 157, 1002),
('Alga merah', 'Flora', 'Gracilaria sp.', 'Berlimpah', 'Lestari', 129, 1002),
('Alga merah batu', 'Flora', 'Porolithon sp.', 'Berlimpah', 'Lestari', 138, 1002),
('Alga merah batu darah', 'Flora', 'Porolithon onkodynaeum', 'Berlimpah', 'Lestari', 147, 1002),
('Alga merah batu daun', 'Flora', 'Porolithon onkodynaeum', 'Berlimpah', 'Lestari', 156, 1002),
('Bakau kurap', 'Flora', 'Lumnitzera littorea', 'Berlimpah', 'Rentan', 150, 1002),
('Bakau nipah', 'Flora', 'Xylocarpus granatum', 'Berlimpah', 'Rentan', 141, 1002),
('Hiu Karang', 'Fauna', 'Carcharhinus melanopterus', 'Sedang', 'Rentan', 106, 1001),
('Ikan Barakuda', 'Fauna', 'Sphyraena barracuda', 'Berlimpah', 'Lestari', 111, 1001),
('Ikan Baronang', 'Fauna', 'Lutjanus johni', 'Berlimpah', 'Lestari', 121, 1001),
('Ikan Buntal', 'Fauna', 'Arothron hispidus', 'Berlimpah', 'Lestari', 110, 1001),
('Ikan Cakalang', 'Fauna', 'Katsuwonus pelamis', 'Berlimpah', 'Lestari', 115, 1001),
('Ikan Duyung', 'Fauna', 'Dugong dugon', 'Terancam Punah', 'Dilindungi', 107, 1001),
('Ikan Kakap Merah', 'Fauna', 'Lutjanus campechanus', 'Berlimpah', 'Lestari', 101, 1001),
('Ikan Kakap Putih', 'Fauna', 'Plectropomus leopardus', 'Berlimpah', 'Lestari', 119, 1001),
('Ikan Kerapu', 'Fauna', 'Epinephelus fuscoguttatus', 'Berlimpah', 'Lestari', 109, 1001),
('Ikan Kerapu Beliau', 'Fauna', 'Epinephelus fuscoguttatus', 'Berlimpah', 'Lestari', 122, 1001),
('Ikan Layur', 'Fauna', 'Trichiurus lepturus', 'Berlimpah', 'Lestari', 118, 1001),
('Ikan Marlin', 'Fauna', 'Makaira spp.', 'Sedang', 'Rentan', 120, 1001),
('Ikan Mola-mola', 'Fauna', 'Mola mola', 'Sedang', 'Rentan', 112, 1001),
('Ikan Napoleon', 'Fauna', 'Cheilinus undulatus', 'Terancam Punah', 'Dilindungi', 114, 1001),
('Ikan Pari Manta', 'Fauna', 'Manta birostris', 'Terancam Punah', 'Dilindungi', 105, 1001),
('Ikan Tuna', 'Fauna', 'Thunnus spp.', 'Berlimpah', 'Lestari', 116, 1001),
('Lumba-lumba', 'Fauna', 'Tursiops truncatus', 'Berlimpah', 'Lestari', 104, 1001),
('Mangrove', 'Flora', 'Rhizophora sp.', 'Berlimpah', 'Rentan', 132, 1002),
('Nipah', 'Flora', 'Nypa fruticans', 'Berlimpah', 'Rentan', 133, 1002),
('Nipah daun kecil', 'Flora', 'Nypa fruticans var. minima', 'Berlimpah', 'Rentan', 151, 1002),
('Nipah daun lebar', 'Flora', 'Nypa fruticans var. megacarpa', 'Berlimpah', 'Rentan', 142, 1002),
('Paus Biru', 'Fauna', 'Balaenoptera musculus', 'Terancam Punah', 'Dilindungi', 117, 1001),
('Penyu Hijau', 'Fauna', 'Chelonia mydas', 'Terancam Punah', 'Dilindungi', 103, 1001),
('Penyu Sisik', 'Fauna', 'Eretmochelys imbricata', 'Terancam Punah', 'Dilindungi', 113, 1001),
('Porifera', 'Flora', 'Spongia sp.', 'Berlimpah', 'Rentan', 128, 1002),
('Rumput laut', 'Flora', 'Sargassum sp.', 'Berlimpah', 'Lestari', 126, 1002),
('Rumput laut kipas', 'Flora', 'Dictyota sp.', 'Berlimpah', 'Lestari', 145, 1002),
('Rumput laut lilin', 'Flora', 'Halimeda sp.', 'Berlimpah', 'Lestari', 154, 1002),
('Rumput laut padang', 'Flora', 'Halophila ovalis', 'Berlimpah', 'Lestari', 131, 1002),
('Rumput laut rambut putri', 'Flora', 'Padina sp.', 'Berlimpah', 'Lestari', 136, 1002),
('Rumput laut tali', 'Flora', 'Ecklonia radiata', 'Berlimpah', 'Lestari', 149, 1002),
('Rumput laut ulva', 'Flora', 'Ulva sp.', 'Berlimpah', 'Lestari', 140, 1002),
('Seagrass', 'Flora', 'Thalassia hemprichii', 'Berlimpah', 'Rentan', 134, 1002),
('Seagrass pita', 'Flora', 'Enhalus acoroides', 'Berlimpah', 'Rentan', 152, 1002),
('Seagrass sendok', 'Flora', 'Halodule uninervis', 'Berlimpah', 'Rentan', 143, 1002),
('Terumbu karang', 'Flora', 'Acropora sp.', 'Berlimpah', 'Terancam', 127, 1002),
('Terumbu karang bintang', 'Flora', 'Favia sp.', 'Berlimpah', 'Terancam', 155, 1002),
('Terumbu Karang Karang Karang', 'Flora', 'Acropora spp.', 'Berlimpah', 'Lestari', 102, 1002),
('Terumbu karang otak', 'Flora', 'Porites sp.', 'Berlimpah', 'Terancam', 137, 1002),
('Terumbu karang tanduk rusa', 'Flora', 'Acropora cervicornis', 'Berlimpah', 'Terancam', 146, 1002),
('Udang Karang', 'Fauna', 'Penaeus monodon', 'Sedang', 'Rentan', 108, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `Nama_Instansi` varchar(100) NOT NULL,
  `Domisili` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Jenis_Instansi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`Nama_Instansi`, `Domisili`, `Status`, `Jenis_Instansi`) VALUES
('Balai Besar Kelautan dan Perikanan (BBK) Ambon', 'Ambon, Maluku', 'Kementerian Kelautan dan Perik', 'Lembaga Penelitian dan Pengembangan'),
('Balai Pengelolaan Sumber Daya Pesisir dan Lautan', 'Makassar', 'Pemerintah', 'Pengelolaan Sumber Daya Pesisir'),
('Balai Pengelolaan Taman Nasional Raja Ampat', 'Waisai, Papua Barat', 'Kementerian Lingkungan Hidup d', 'Taman Nasional'),
('Center for Ocean Solutions', 'California', 'Organisasi Internasional', 'Solusi Laut'),
('Conservation International Indonesia', 'Jakarta', 'Organisasi_Internasional', 'Perlindungan_Sumber_Daya_Alam'),
('Coral Guardian Indonesia', 'Bali', 'Non_Pemerintah', 'Perlindungan_Terumbu_Karang'),
('Coral Triangle Center', 'Bali', 'Non_Pemerintah', 'Konservasi_Laut'),
('Coral Triangle Initiative (CTI) - Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Internasional', 'Konservasi Alam'),
('Indonesian Biodiversity Research Center', 'Bogor', 'Lembaga_Penelitian', 'Konservasi_Biota_Laut'),
('Indonesian Center for Ocean and Climate', 'Jakarta', 'Lembaga Penelitian', 'Oseanografi Iklim'),
('Indonesian Institute of Sciences - Research Center for Oceanography', 'Jakarta', 'Lembaga Penelitian', 'Ilmu Kelautan'),
('International Coral Reef Initiative', 'Washington, D.C.', 'Organisasi Internasional', 'Inisiatif Karang'),
('Lembaga Penelitian Kelautan Indonesia', 'Jakarta', 'Lembaga Penelitian', 'Penelitian Kelautan'),
('Marine Stewardship Council Indonesia', 'Jakarta', 'Lembaga_Sertifikasi', 'Sertifikasi_Produk_Laut_Berkelanjutan'),
('Ocean Defender Indonesia', 'Jakarta', 'Non_Pemerintah', 'Pelestarian_Laut'),
('Pro Natura', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('The Nature Conservancy (TNC) Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('The Nature Conservancy Indonesia', 'Bogor', 'Non_Pemerintah', 'Konservasi_Ekosistem_Laut'),
('The Ocean Agency', 'Australia', 'Organisasi Internasional', 'Pemantauan Laut'),
('TNC Indonesia Marine Program', 'Jakarta', 'Pusat_Konservasi', 'Pelestarian_Laut_dan_Pantai'),
('Wetlands International Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Lahan Basah'),
('Wildlife Conservation Society (WCS) Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Satwa Liar'),
('WWF Indonesia', 'Jakarta', 'Non_Pemerintah', 'Pelestarian'),
('Yayasan Alam Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Alam Lestari Mandiri (YALM)', 'Bogor, Jawa Barat', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Artha Wacana', 'Bogor, Jawa Barat', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Biodiversitas Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Keanekaragaman Hayati'),
('Yayasan Green Indonesia', 'Denpasar, Bali', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Irian Jaya', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Keanekaragaman Hayati Indonesia (YKHI)', 'Bogor, Jawa Barat', 'Lembaga Swadaya Masyarakat', 'Konservasi Keanekaragaman Hayati'),
('Yayasan KEHATI', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Konservasi Laut Indonesia (YKLI)', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Laut'),
('Yayasan Konservasi Terumbu Karang Indonesia (YKTI)', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Terumbu Karang'),
('Yayasan Palung', 'Sorong, Papua Barat', 'Lembaga Swadaya Masyarakat', 'Konservasi Laut Dalam'),
('Yayasan Papua Lestari', 'Jayapura, Papua', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Pelestari Alam Indonesia (YPAI)', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Alam'),
('Yayasan Reefnesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Konservasi Terumbu Karang'),
('Yayasan Terumbu Karang Indonesia', 'Jakarta', 'Organisasi_Swadaya_Masyarakat', 'Pelestarian_Terumbu_Karang'),
('Yayasan Walhi', 'Yogyakarta, DIY', 'Lembaga Swadaya Masyarakat', 'Advokasi Lingkungan'),
('Yayasan Walhi Indonesia', 'Jakarta, DKI Jakarta', 'Lembaga Swadaya Masyarakat', 'Advokasi Lingkungan');

-- --------------------------------------------------------

--
-- Table structure for table `laut_seram`
--

CREATE TABLE `laut_seram` (
  `ID_perairan` int(3) NOT NULL,
  `Kedalaman` int(4) DEFAULT NULL,
  `Suhu_perairan` int(2) DEFAULT NULL,
  `Koordinat_perairan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laut_seram`
--

INSERT INTO `laut_seram` (`ID_perairan`, `Kedalaman`, `Suhu_perairan`, `Koordinat_perairan`) VALUES
(101, 100, 28, '3.3423, 133.2104'),
(102, 500, 27, '3.1250, 132.7500'),
(103, 1500, 29, '3.5000, 133.5000'),
(104, 2000, 26, '3.2500, 133.0000'),
(105, 3000, 28, '3.6250, 133.3750'),
(106, 4000, 30, '3.3750, 132.8750'),
(107, 5000, 29, '3.1250, 133.6250'),
(108, 1000, 27, '3.4375, 133.1250'),
(109, 2500, 28, '3.2500, 132.7500'),
(110, 3500, 26, '3.0000, 133.0000'),
(111, 150, 29, '3.4375, 133.1250'),
(112, 600, 28, '3.2500, 132.8750'),
(113, 2200, 30, '3.6250, 133.3750'),
(114, 2700, 27, '3.3750, 132.8750'),
(115, 3800, 29, '3.1250, 133.6250'),
(116, 4400, 28, '3.4375, 133.1250'),
(117, 500, 27, '3.2500, 132.7500'),
(118, 1800, 29, '3.6250, 133.3750'),
(119, 2300, 26, '3.3750, 132.8750'),
(120, 3400, 28, '3.1250, 133.6250'),
(121, 120, 29, '3.4375, 133.1250'),
(122, 700, 28, '3.2500, 132.8750'),
(123, 2000, 30, '3.6250, 133.3750'),
(124, 2500, 27, '3.3750, 132.8750'),
(125, 3600, 29, '3.1250, 133.6250'),
(126, 4200, 28, '3.4375, 133.1250'),
(127, 300, 27, '3.2500, 132.7500'),
(128, 1600, 29, '3.6250, 133.3750'),
(129, 2100, 26, '3.3750, 132.875'),
(130, 400, 28, '3.5000, 133.2500'),
(131, 900, 27, '3.3750, 132.7500'),
(132, 2400, 29, '3.7500, 133.5000'),
(133, 2900, 26, '3.5000, 133.2500'),
(134, 4500, 28, '3.3750, 132.7500'),
(135, 5100, 29, '3.7500, 133.5000'),
(136, 200, 27, '3.5000, 133.2500'),
(137, 1100, 28, '3.3750, 132.7500'),
(138, 2600, 29, '3.7500, 133.5000'),
(139, 3100, 26, '3.5000, 133.2500'),
(140, 50, 28, '3.6250, 133.3750'),
(141, 1000, 27, '3.4375, 133.1250'),
(142, 2500, 29, '3.8750, 133.6250'),
(143, 3000, 26, '3.6250, 133.3750'),
(144, 4000, 28, '3.4375, 133.1250'),
(145, 4500, 27, '3.8750, 133.6250'),
(146, 150, 29, '3.6250, 133.3750'),
(147, 650, 28, '3.4375, 133.1250'),
(148, 1900, 30, '3.8750, 133.6250'),
(149, 2400, 27, '3.6250, 133.3750'),
(150, 3500, 29, '3.4375, 133.1250'),
(151, 4000, 28, '3.8750, 133.6250'),
(152, 100, 27, '3.6250, 133.3750'),
(153, 700, 29, '3.4375, 133.1250'),
(154, 2000, 30, '3.8750, 133.6250'),
(155, 2500, 27, '3.6250, 133.3750'),
(156, 3000, 29, '3.4375, 133.1250'),
(157, 3500, 28, '3.8750, 133.6250');

-- --------------------------------------------------------

--
-- Table structure for table `penanggung_jawab`
--

CREATE TABLE `penanggung_jawab` (
  `ID_PJ` int(3) NOT NULL,
  `Nama_Instansi` varchar(100) DEFAULT NULL,
  `Nama_PJ` varchar(30) DEFAULT NULL,
  `Jobdesc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penanggung_jawab`
--

INSERT INTO `penanggung_jawab` (`ID_PJ`, `Nama_Instansi`, `Nama_PJ`, `Jobdesc`) VALUES
(911, 'Balai Besar Kelautan dan Perikanan (BBK) Ambon', 'Dwi Kusumo', 'Mengawasi dan Mengelola Konservasi Terumbu Karang di Laut Seram'),
(912, 'Balai Pengelolaan Sumber Daya Pesisir dan Lautan', 'Hadi Prayitno', 'Merawat Fauna Laut dan Habitatnya di Laut Seram'),
(913, 'Balai Pengelolaan Taman Nasional Raja Ampat', 'Fitra Priambada', 'Perlindungan dan Pelestarian Populasi Penyu di Laut Seram'),
(914, 'Center for Ocean Solutions', 'Samantha Murray', 'Memantau Kesehatan Ekosistem Terumbu Karang di Laut Seram'),
(915, 'Conservation International Indonesia', 'Dian Kurniawati', 'Mengelola Konservasi dan Perlindungan Satwa Laut di Laut Seram'),
(916, 'Coral Guardian Indonesia', 'Fauzi Rachman', 'Menjaga dan Memulihkan Kondisi Terumbu Karang di Laut Seram'),
(917, 'Coral Triangle Center', 'Rani A. Bhaktiani', 'Mengembangkan Rencana Konservasi Terumbu Karang di Laut Seram'),
(918, 'Coral Triangle Initiative (CTI) - Indonesia', 'Nurmayasari Karyanti', 'Mendorong Partisipasi Masyarakat dalam Konservasi Laut di Laut Seram'),
(919, 'Indonesian Biodiversity Research Center', 'Yulianus Mahuze', 'Studi dan Pemantauan Keanekaragaman Hayati di Laut Seram'),
(920, 'Indonesian Center for Ocean and Climate', 'Bambang Supriyadi', 'Analisis dan Penelitian Terhadap Dampak Perubahan Iklim di Laut Seram'),
(921, 'Indonesian Institute of Sciences - Research Center for Oceanography', 'Gusti Ngurah M. D. P.', 'Penelitian Dinamika Ekosistem Laut di Laut Seram'),
(922, 'International Coral Reef Initiative', 'Samantha Craven', 'Investigasi dan Penanganan Ancaman Terhadap Terumbu Karang di Laut Seram'),
(923, 'Lembaga Penelitian Kelautan Indonesia', 'Muhammad Arjon', 'Studi dan Penelitian untuk Pelestarian Laut di Laut Seram'),
(924, 'Marine Stewardship Council Indonesia', 'Rahma Suryandari', 'Membangun Kesadaran tentang Pentingnya Konservasi Laut di Laut Seram'),
(925, 'Ocean Defender Indonesia', 'Yayang Daryanto', 'Mengadvokasi Perlindungan Lingkungan Laut di Laut Seram'),
(926, 'Pro Natura', 'Jenny Pertiwi', 'Menggalang Dana untuk Mendukung Konservasi dan Perlindungan Laut di Laut Seram'),
(927, 'The Nature Conservancy (TNC) Indonesia', 'Rini Kusumawati', 'Mengelola Program Perlindungan Ekosistem Laut di Laut Seram'),
(928, 'The Nature Conservancy Indonesia', 'Fitrizal Abdul', 'Memfasilitasi Upaya Pelestarian Laut dan Sumber Daya Alam di Laut Seram'),
(929, 'The Ocean Agency', 'Richard Vevers', 'Mendokumentasikan Keanekaragaman Hayati dan Ancaman Terhadap Laut Seram'),
(930, 'TNC Indonesia Marine Program', 'Feri Irawan', 'Mengkoordinasi Program Konservasi Laut untuk Keberlanjutan di Laut Seram'),
(931, 'Wetlands International Indonesia', 'Lia Tjandra', 'Mempertahankan dan Mengelola Habitat Lahan Basah di Sekitar Laut Seram'),
(932, 'Wildlife Conservation Society (WCS) Indonesia', 'Noviar Andayani', 'Pemantauan dan Perlindungan Populasi Satwa Liar di Laut Seram'),
(933, 'WWF Indonesia', 'Efransjah Efransjah', 'Pembangunan Kapasitas Masyarakat dalam Konservasi Laut di Laut Seram'),
(934, 'Yayasan Alam Indonesia', 'Fadhilah Siregar', 'Edukasi dan Kampanye untuk Pelestarian Lingkungan Laut di Laut Seram'),
(935, 'Yayasan Alam Lestari Mandiri (YALM)', 'Guntur Ari Prayogo', 'Meningkatkan Kesejahteraan Masyarakat Pesisir dan Pulau di Laut Seram'),
(936, 'Yayasan Artha Wacana', 'Gede Suweta', 'Mendukung Program Konservasi dan Perlindungan Laut di Laut Seram'),
(937, 'Yayasan Biodiversitas Indonesia', 'Yusranil Ulil', 'Studi dan Pemantauan Keanekaragaman Hayati Laut di Laut Seram'),
(938, 'Yayasan Green Indonesia', 'Made Swandika', 'Mendorong Partisipasi Masyarakat dalam Pelestarian Lingkungan Laut di Laut Seram'),
(939, 'Yayasan Irian Jaya', 'Marsel Lokbere', 'Mengawal Penegakan Hukum untuk Mencegah Pelanggaran Lingkungan di Laut Seram'),
(940, 'Yayasan Keanekaragaman Hayati Indonesia (YKHI)', 'Rani Hardjanti', 'Identifikasi dan Perlindungan Spesies Laut Langka di Laut Seram'),
(941, 'Yayasan KEHATI', 'Iwan Kurniawan', 'Mendorong Inovasi dalam Konservasi Laut untuk Keberlanjutan di Laut Seram'),
(942, 'Yayasan Konservasi Laut Indonesia (YKLI)', 'Alfian Rahardjo', 'Penyusunan Rencana Pengelolaan Kawasan Laut untuk Pelestarian di Laut Seram'),
(943, 'Yayasan Konservasi Terumbu Karang Indonesia (YKTI)', 'Wahyu Pandoe', 'Membantu Penyuluhan dan Pendidikan Konservasi Laut di Laut Seram'),
(944, 'Yayasan Palung', 'Aditya Bayu', 'Rehabilitasi dan Restorasi Terumbu Karang di Laut Seram'),
(945, 'Yayasan Papua Lestari', 'Ali Musa', 'Mendukung Hak Masyarakat Adat dalam Pengelolaan Sumber Daya Laut di Laut Seram'),
(946, 'Yayasan Pelestari Alam Indonesia (YPAI)', 'Rini Winarti', 'Pengembangan dan Pengelolaan Ekowisata Laut di Laut Seram'),
(947, 'Yayasan Reefnesia', 'I Ketut Agus Wiranata', 'Mengamankan dan Mempromosikan Pariwisata Laut Berkelanjutan di Laut Seram'),
(948, 'Yayasan Terumbu Karang Indonesia', 'Komang Astika', 'Mengelola dan Melestarikan Bank Bibit Terumbu Karang di Laut Seram'),
(949, 'Yayasan Walhi', 'Nur Hidayati', 'Mengawal Kebijakan Lingkungan Hidup untuk Perlindungan Lingkungan Laut di Laut Seram'),
(950, 'Balai Besar Kelautan dan Perikanan (BBK) Ambon', 'Siti Rahayu', 'Mengkoordinasi Program Pemantauan dan Evaluasi Terumbu Karang di Laut Seram'),
(951, 'Balai Pengelolaan Sumber Daya Pesisir dan Lautan', 'Andi Susanto', 'Menjaga Keseimbangan Ekosistem Laut dan Pesisir di Laut Seram'),
(952, 'Balai Pengelolaan Taman Nasional Raja Ampat', 'Ahmad Ridwan', 'Mengembangkan Program Penelitian Konservasi Terumbu Karang di Laut Seram'),
(953, 'Center for Ocean Solutions', 'Fara Azizah', 'Melakukan Analisis Terhadap Dampak Perubahan Iklim Terhadap Ekosistem Laut di Laut Seram'),
(954, 'Conservation International Indonesia', 'Arifin', 'Membantu Pelatihan dan Edukasi Masyarakat tentang Pentingnya Konservasi Laut di Laut Seram'),
(955, 'Coral Guardian Indonesia', 'Lia Wijayanti', 'Membantu Rehabilitasi Terumbu Karang yang Rusak di Laut Seram'),
(956, 'Coral Triangle Center', 'Rendy Kurniawan', 'Menggalang Dana untuk Proyek Konservasi Terumbu Karang di Laut Seram'),
(957, 'Coral Triangle Initiative (CTI) - Indonesia', 'Dina Fadillah', 'Mengorganisir Kampanye Perlindungan Lingkungan Laut di Laut Seram'),
(958, 'Indonesian Biodiversity Research Center', 'Hendra Susanto', 'Menyelidiki Pola Perilaku Spesies Laut Endemik di Laut Seram'),
(959, 'Indonesian Center for Ocean and Climate', 'Rizki Ramadhan', 'Mengembangkan Model Prediksi Perubahan Iklim Terhadap Lautan di Laut Seram'),
(960, 'Indonesian Institute of Sciences - Research Center for Oceanography', 'Ayu Dewi', 'Mengelola Database Keanekaragaman Hayati Laut di Laut Seram');

-- --------------------------------------------------------

--
-- Table structure for table `tindakan_pelestarian`
--

CREATE TABLE `tindakan_pelestarian` (
  `ID_REGISTRASI` int(3) NOT NULL,
  `ID_PJ` int(3) DEFAULT NULL,
  `ID_perairan` int(3) DEFAULT NULL,
  `Jenis_Tindakan` varchar(50) DEFAULT NULL,
  `Waktu_Kegiatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tindakan_pelestarian`
--

INSERT INTO `tindakan_pelestarian` (`ID_REGISTRASI`, `ID_PJ`, `ID_perairan`, `Jenis_Tindakan`, `Waktu_Kegiatan`) VALUES
(201, 911, 101, 'Monitoring Terumbu Karang', '2020-01-01'),
(202, 912, 102, 'Merawat Fauna Laut', '2019-03-02'),
(203, 913, 103, 'Perlindungan Populasi Penyu', '2022-09-03'),
(204, 914, 104, 'Analisis Kesehatan Terumbu Karang', '2023-03-04'),
(205, 915, 105, 'Perlindungan Satwa Laut', '2023-09-05'),
(206, 916, 106, 'Pemulihan Terumbu Karang', '2024-01-06'),
(207, 917, 107, 'Pengembangan Konservasi Terumbu Karang', '2024-03-07'),
(208, 918, 108, 'Partisipasi Masyarakat dalam Konservasi Laut', '2024-09-08'),
(209, 919, 109, 'Studi Keanekaragaman Hayati', '2024-01-09'),
(210, 920, 110, 'Penelitian Dampak Perubahan Iklim', '2023-01-10'),
(211, 921, 111, 'Penelitian Dinamika Ekosistem Laut', '2023-03-11'),
(212, 922, 112, 'Investigasi Ancaman Terumbu Karang', '2023-09-12'),
(213, 923, 113, 'Studi dan Penelitian Laut', '2022-01-13'),
(214, 924, 114, 'Kesadaran tentang Konservasi Laut', '2020-01-14'),
(215, 925, 115, 'Advokasi Perlindungan Lingkungan Laut', '2020-03-15'),
(216, 926, 116, 'Menggalang Dana untuk Konservasi Laut', '2022-09-16'),
(217, 927, 117, 'Program Perlindungan Ekosistem Laut', '2023-01-17'),
(218, 928, 118, 'Mendorong Upaya Pelestarian Laut', '2023-03-18'),
(219, 929, 119, 'Mendokumentasikan Keanekaragaman Hayati Laut', '2023-09-19'),
(220, 930, 120, 'Koordinasi Program Konservasi Laut', '2024-01-20'),
(221, 931, 121, 'Mempertahankan Habitat Lahan Basah', '2024-03-21'),
(222, 932, 122, 'Pemantauan Satwa Liar Laut', '2024-09-22'),
(223, 933, 123, 'Pembangunan Kapasitas Masyarakat', '2024-01-23'),
(224, 934, 124, 'Edukasi Lingkungan Laut', '2024-03-24'),
(225, 935, 125, 'Kesejahteraan Masyarakat Pesisir', '2024-09-25'),
(226, 936, 126, 'Dukungan Program Konservasi Laut', '2024-01-26'),
(227, 937, 127, 'Penyelidikan Keanekaragaman Hayati', '2024-03-27'),
(228, 938, 128, 'Partisipasi Masyarakat dalam Konservasi Lingkungan', '2024-09-28'),
(229, 939, 129, 'Penegakan Hukum Lingkungan', '2024-01-29'),
(230, 940, 130, 'Identifikasi Spesies Laut Langka', '2024-03-30'),
(231, 941, 131, 'Inovasi dalam Konservasi Laut', '2024-09-31'),
(232, 942, 132, 'Pengelolaan Kawasan Laut', '2023-01-01'),
(233, 943, 133, 'Penyuluhan Konservasi Laut', '2023-03-02'),
(234, 944, 134, 'Rehabilitasi Terumbu Karang', '2023-09-03'),
(235, 945, 135, 'Mendukung Hak Masyarakat Adat', '2024-01-04'),
(236, 946, 136, 'Pengembangan Ekowisata Laut', '2024-03-05'),
(237, 947, 137, 'Promosi Pariwisata Laut Berkelanjutan', '2024-09-06'),
(238, 948, 138, 'Pelestarian Bank Bibit Terumbu Karang', '2020-01-07'),
(239, 949, 139, 'Pengawalan Kebijakan Lingkungan', '2020-03-08'),
(240, 950, 140, 'Monitoring Terumbu Karang', '2022-09-09'),
(241, 951, 141, 'Mengelola Ekosistem Laut dan Pesisir', '2022-01-10'),
(242, 952, 142, 'Program Penelitian Konservasi Terumbu Karang', '2022-03-11'),
(243, 953, 143, 'Analisis Dampak Perubahan Iklim Terhadap Ekosistem', '2022-09-12'),
(244, 954, 144, 'Pelatihan dan Edukasi Konservasi Laut', '2023-01-13'),
(245, 955, 145, 'Rehabilitasi Terumbu Karang Rusak', '2023-03-14'),
(246, 956, 146, 'Penggalangan Dana untuk Konservasi Terumbu Karang', '2023-09-15'),
(247, 957, 147, 'Kampanye Perlindungan Lingkungan Laut', '2024-01-16'),
(248, 958, 148, 'Studi Pola Perilaku Spesies Laut Endemik', '2024-03-17'),
(249, 959, 149, 'Model Prediksi Perubahan Iklim Terhadap Lautan', '2024-09-18'),
(250, 960, 150, 'Manajemen Database Keanekaragaman Hayati Laut', '2020-01-19'),
(252, 915, 120, 'Konservasi Laut dengan Masyarakat', '2021-09-22'),
(253, 920, 150, 'Menyelamatkan penyu yang terjerat jebakan nelayan', '2018-10-22'),
(254, 930, 117, 'Menangkap nelayan ilegal dari negara asing', '2019-05-15'),
(255, 940, 105, 'Menangkap oknum bom ikan', '2023-08-10'),
(256, 955, 125, 'Edukasi masyarakat dalam merawat laut', '2021-11-30'),
(257, 945, 150, 'Menanam kembali terumbu karang yang rusak', '2022-10-22'),
(258, 917, 150, 'Pemantauan terumbu karang dan hewan yang tinggal', '2023-01-22'),
(259, 944, 150, 'Penangkapan oknum pemburu Penyu', '2023-02-11'),
(260, 937, 145, 'Pemeliharaan Alga dan rumput laut', '2023-05-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`);

--
-- Indexes for table `biota_laut`
--
ALTER TABLE `biota_laut`
  ADD PRIMARY KEY (`Nama_biota`),
  ADD KEY `ID_perairan` (`ID_perairan`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`Nama_Instansi`);

--
-- Indexes for table `laut_seram`
--
ALTER TABLE `laut_seram`
  ADD PRIMARY KEY (`ID_perairan`);

--
-- Indexes for table `penanggung_jawab`
--
ALTER TABLE `penanggung_jawab`
  ADD PRIMARY KEY (`ID_PJ`),
  ADD KEY `Nama_Instansi` (`Nama_Instansi`);

--
-- Indexes for table `tindakan_pelestarian`
--
ALTER TABLE `tindakan_pelestarian`
  ADD PRIMARY KEY (`ID_REGISTRASI`),
  ADD KEY `ID_PJ` (`ID_PJ`),
  ADD KEY `ID_perairan` (`ID_perairan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_ADMIN` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `laut_seram`
--
ALTER TABLE `laut_seram`
  MODIFY `ID_perairan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `penanggung_jawab`
--
ALTER TABLE `penanggung_jawab`
  MODIFY `ID_PJ` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT for table `tindakan_pelestarian`
--
ALTER TABLE `tindakan_pelestarian`
  MODIFY `ID_REGISTRASI` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biota_laut`
--
ALTER TABLE `biota_laut`
  ADD CONSTRAINT `ID_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`),
  ADD CONSTRAINT `biota_laut_ibfk_1` FOREIGN KEY (`ID_perairan`) REFERENCES `laut_seram` (`ID_perairan`);

--
-- Constraints for table `penanggung_jawab`
--
ALTER TABLE `penanggung_jawab`
  ADD CONSTRAINT `penanggung_jawab_ibfk_1` FOREIGN KEY (`Nama_Instansi`) REFERENCES `instansi` (`Nama_Instansi`);

--
-- Constraints for table `tindakan_pelestarian`
--
ALTER TABLE `tindakan_pelestarian`
  ADD CONSTRAINT `tindakan_pelestarian_ibfk_1` FOREIGN KEY (`ID_PJ`) REFERENCES `penanggung_jawab` (`ID_PJ`),
  ADD CONSTRAINT `tindakan_pelestarian_ibfk_2` FOREIGN KEY (`ID_perairan`) REFERENCES `laut_seram` (`ID_perairan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
