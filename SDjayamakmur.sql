-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Jan 2021 pada 11.34
-- Versi server: 10.3.27-MariaDB-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdinpres_jayamakmur`
--
CREATE DATABASE IF NOT EXISTS `sdinpres_jayamakmur` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sdinpres_jayamakmur`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` text DEFAULT NULL,
  `penerbit` text DEFAULT NULL,
  `pengarang` text DEFAULT NULL,
  `tahun` decimal(10,0) DEFAULT NULL,
  `kategori` text DEFAULT NULL,
  `id_sekolah` int(11) NOT NULL,
  `buku_kelas` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `file` text DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `cover` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul_buku`, `penerbit`, `pengarang`, `tahun`, `kategori`, `id_sekolah`, `buku_kelas`, `status`, `file`, `date_upload`, `cover`) VALUES
(1, 'Ilmu Pengetahuan Sosial', 'Pusat PerbukuanDepartemen Pendidikan Nasional', 'sutrisno', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Ilmu_Pengetahuan_Sosial_Kelas_1_Sutrisno_Sri_Utami_R_Sutono_Sri_Sadiman_dkk_2009.pdf', '2020-07-09 06:12:26', 'http://bsd.pendidikan.id/data/SD_1/cover/Ilmu_Pengetahuan_Sosial_Kelas_1_Sutrisno_Sri_Utami_R_Sutono_Sri_Sadiman_dkk_2009-thumb.jpg'),
(2, 'Pendidikan  Kewarganegaraan', 'Pusat Perbukuan DepartemenPendidikanNasional', 'Anis Kusumawardani', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Kewarganegaraan_1_Kelas_1_Anis_Kusumawardani_Sunarso_2009.pdf', '2020-07-09 06:13:15', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Kewarganegaraan_1_Kelas_1_Anis_Kusumawardani_Sunarso_2009-thumb.jpg'),
(3, 'Bahasa Indonesia', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Iskandar', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Bahasa_Indonesia_Kelas_1_Iskandar_Sukini_2009.pdf', '2020-07-09 06:15:09', 'http://bsd.pendidikan.id/data/SD_1/cover/Bahasa_Indonesia_Kelas_1_Iskandar_Sukini_2009-thumb.jpg'),
(4, 'matematika 1', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'djaelani', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Matematika_Untuk_SD_MI_Kelas_1_Djaelani_Haryono_2008.pdf', '2020-07-09 06:17:49', 'http://bsd.pendidikan.id/data/SD_1/cover/Matematika_Untuk_SD_MI_Kelas_1_Djaelani_Haryono_2008-thumb.jpg'),
(5, 'IPA 1 Salingtemas', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Choiril Azmiyawat', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/IPA_Salingtemas_1_Kelas_1_Choiril_Azmiyawati_Wigati_Hadi_Omegawati_Rohana_2010.pdf', '2020-07-09 06:19:41', 'http://bsd.pendidikan.id/data/SD_1/cover/IPA_Salingtemas_1_Kelas_1_Choiril_Azmiyawati_Wigati_Hadi_Omegawati_Rohana_2010-thumb.jpg'),
(6, 'Pendidikan  Kewarganegaraan 1', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Winarno', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Kewarganegaraan_1_Kelas_1_Winarno_Usodo_2009.pdf', '2020-07-09 06:21:05', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Kewarganegaraan_1_Kelas_1_Winarno_Usodo_2009-thumb.jpg'),
(7, 'Ilmu Pengetahuan Sosial', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Sri Mulyaningsih', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Ilmu_Pengetahuan_Sosial_Kelas_1_Sri_Mulyaningsih_Tuju_Widodo_2009.pdf', '2020-07-09 06:23:26', 'http://bsd.pendidikan.id/data/SD_1/cover/Ilmu_Pengetahuan_Sosial_Kelas_1_Sri_Mulyaningsih_Tuju_Widodo_2009-thumb.jpg'),
(8, 'PendidikanAgama Islam', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Muhammad Imron', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Agama_Islam_I_Kelas_1_Muhammad_Imron_Taufiq_Hidayatullah_dan_Zamrotul_2011.pdf', '2020-07-09 06:46:07', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Agama_Islam_I_Kelas_1_Muhammad_Imron_Taufiq_Hidayatullah_dan_Zamrotul_2011-thumb.jpg'),
(9, 'Ilmu Pengetahuan Sosial', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Edi Hernawan', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Ilmu_Pengetahuan_Sosial_1_Kelas_1_Edi_Hernawan_Endang_Hendayani_2008.pdf', '2020-07-09 06:47:19', 'http://bsd.pendidikan.id/data/SD_1/cover/Ilmu_Pengetahuan_Sosial_1_Kelas_1_Edi_Hernawan_Endang_Hendayani_2008-thumb.jpg'),
(10, 'Pendidikan  Kewarganegaraan', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Edi Hernawan', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Kewarganegaraan_Kelas_1_Edi_Heryawan_Endang_Hendayani_2009.pdf', '2020-09-23 03:30:29', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Kewarganegaraan_Kelas_1_Edi_Heryawan_Endang_Hendayani_2009-thumb.jpg'),
(11, 'Pendidikan  Kewarganegaraan', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Setiati  Widihastuti', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Kewarganegaraan_Kelas_1_Setiati_Wadihastuti_Fajar_Rahayuningsih_2008.pdf', '2020-09-23 03:30:19', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Kewarganegaraan_Kelas_1_Setiati_Wadihastuti_Fajar_Rahayuningsih_2008-thumb.jpg'),
(12, 'Pendidikan Agama Islam', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Suyanto', 2011, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Agama_Islam_I_Kelas_1_Suyanto_dan_Sugeng_Wisyhnu_Hariyadhie_2011.pdf', '2020-09-23 03:30:11', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Agama_Islam_I_Kelas_1_Suyanto_dan_Sugeng_Wisyhnu_Hariyadhie_2011-thumb.jpg'),
(13, 'SENI BUDAYA DAN KETERAMPILAN', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Dyah Ruci Bramadya Rasha Murti', 2010, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Seni_Budaya_dan_Keterampilan_Kelas_2_Dyah_Ruci_Bramadya_Rasha_Murti_Lukman_Zein_2010.pdf', '2020-09-23 03:29:57', 'http://bsd.pendidikan.id/data/SD_1/cover/Seni_Budaya_dan_Keterampilan_Kelas_2_Dyah_Ruci_Bramadya_Rasha_Murti_Lukman_Zein_2010-thumb.jpg'),
(14, 'Pendidikan Agama Islam', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Sa’ronih', 2011, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Pendidikan_Agama_Islam_I_Kelas_1_Saronih_dan_Lia_Syukriyah_Sahroni_2011.pdf', '2020-09-23 03:29:49', 'http://bsd.pendidikan.id/data/SD_1/cover/Pendidikan_Agama_Islam_I_Kelas_1_Saronih_dan_Lia_Syukriyah_Sahroni_2011-thumb.jpg'),
(15, 'Ilmu Pengetahuan Sosial 1', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Muh. Nursa’ban', 2010, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Ilmu_Pengetahuan_Sosial_Kelas_1_Muh_Nursaban_dan_Rusmawan_2010.pdf', '2020-09-23 03:29:41', 'http://bsd.pendidikan.id/data/SD_1/cover/Ilmu_Pengetahuan_Sosial_Kelas_1_Muh_Nursaban_dan_Rusmawan_2010-thumb.jpg'),
(16, 'Ilmu Pengetahuan Sosial', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Inoki Wasis Jatmiko', 2008, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Ilmu_Pengetahuan_Sosial_SD_MI_Kelas_1_Inoki_Wasis_Jatmiko_Mariyono_San_Dwi_2008.pdf', '2020-09-23 03:29:32', 'http://bsd.pendidikan.id/data/SD_1/cover/Ilmu_Pengetahuan_Sosial_SD_MI_Kelas_1_Inoki_Wasis_Jatmiko_Mariyono_San_Dwi_2008-thumb.jpg'),
(17, 'Ilmu Pengetahuan Sosial 1', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Leo Agung', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Ilmu_Pengetahuan_Sosial_Kelas_1_Leo_Agung_Sutoyo_Sulasih_2009.pdf', '2020-09-23 03:29:20', 'http://bsd.pendidikan.id/data/SD_1/cover/Ilmu_Pengetahuan_Sosial_Kelas_1_Leo_Agung_Sutoyo_Sulasih_2009-thumb.jpg'),
(18, 'Ilmu Pengetahuan Sosial 1', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Suwarto W.A.', 2010, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/IPS_Kelas_1_Suwarto_WA_dan_Bambang_Tri_Y_2010.pdf', '2020-09-23 03:29:11', 'http://bsd.pendidikan.id/data/SD_1/cover/IPS_Kelas_1_Suwarto_WA_dan_Bambang_Tri_Y_2010-thumb.jpg'),
(19, 'Matematika', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Dwi Priyo Utomo', 2009, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/Matematika_I_Kelas_1_Dwi_Priyo_Utomo_Ida_Arijanny_2009.pdf', '2020-09-23 03:29:02', 'http://bsd.pendidikan.id/data/SD_1/cover/Matematika_I_Kelas_1_Dwi_Priyo_Utomo_Ida_Arijanny_2009-thumb.jpg'),
(20, 'A.B.I Asyiknya Belajar IPA', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Sholehudin, S.Pd, M.M', 2008, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/ABI_Asiknya_Belajar_IPA_Kelas_1_Evi_Susanti_Sholehudin_2008.pdf', '2020-09-23 03:28:48', 'http://bsd.pendidikan.id/data/SD_1/cover/ABI_Asiknya_Belajar_IPA_Kelas_1_Evi_Susanti_Sholehudin_2008-thumb.jpg'),
(21, 'PKn 1', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Suliasih', 2008, 'SD', 1, 1, 1, 'http://bsd.pendidikan.id/data/SD_1/PKn_1_Kelas_1_Priyati_E_Suliasih_Ridwan_Efendi_2008.pdf', '2020-09-23 03:28:38', 'http://bsd.pendidikan.id/data/SD_1/cover/PKn_1_Kelas_1_Priyati_E_Suliasih_Ridwan_Efendi_2008-thumb.jpg'),
(22, 'Ayo Mengaji 5 Pendidikan Agama Islam', 'Kementerian  Pendidikan  Nasional', 'Asep Puji Syukur', 2011, 'SD', 1, 5, 1, 'https://assets.annibuku.com/bse/Kelas5/Kelas5_Ayo_Mengaji_5_Pendidikan_Agama_Islam_1135.pdf', '2020-09-23 03:28:24', 'https://assets.annibuku.com/tn/20121405133042.jpg'),
(23, 'BELAJAR  MENGAMALKAN AGAMA ISLAM', 'Kementerian  Pendidikan  Nasional', 'Khusnul Imam', 2011, 'SD', 1, 5, 1, 'https://assets.annibuku.com/bse/Kelas5/Kelas5_Belajar_Mengamalkan_Agama_Islam_Pendidikan_Agama_Islam_1158.pdf', '2020-09-23 03:27:42', 'https://assets.annibuku.com/tn/20121405142822.jpg'),
(24, 'Tema 1 Selamatkan Makhluk Hidup', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', 'Angi St Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati,    Lely Mifthachul Khasanah, dan Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1NAt0oz4DFVOUYnIQ02BFNZw507DFiFs-/preview', '2020-09-23 03:27:22', 'https://drive.google.com/file/d/1A5wdwkxqBQ6-uMzMQ78Eoh0Kf-g2kWmc/view?usp=sharing'),
(25, 'Persatuan dalam Perbedaan', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, NULL, 0, '', '2020-09-23 01:08:03', 'http://e-book.sdinpresjayamakmur.sch.id/source/BG%20Kelas%206%20Tema%202.jpg'),
(26, 'Persatuan dalam Perbedaan', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1YeV4aTm16xdF0FADJe5JhtuFtTqFXPS5/preview', '2020-09-23 03:35:17', 'http://e-book.sdinpresjayamakmur.sch.id/source/BG%20Kelas%206%20Tema%202.jpg'),
(27, 'Tema 3:  Tokoh dan Penemuan', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', 'Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati,   Lely Mifthachul Khasanah, dan Santi Hendriyeti. ', 2018, 'SD', 1, NULL, 0, 'http://e-book.sdinpresjayamakmur.sch.id/source/Buku%20Guru%20Kelas%206%20Tema%202%20Revisi%202018%20(5).pdf', '2020-09-23 01:12:18', ''),
(28, 'Tema 3:  Tokoh dan Penemuan', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1xnu8O-zpPqht1UdePaF-XVyHFnR0R2RO/preview', '2020-09-23 03:35:09', 'http://e-book.sdinpresjayamakmur.sch.id/source/BG%206TEMA%203.png'),
(29, 'Tema 4 : Globalisas', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1dHYTSwkHifQkrIS-dvxpYBVPNsUWVFkD/preview', '2020-09-23 03:35:00', 'http://e-book.sdinpresjayamakmur.sch.id/source/BG%206TEMA%204.png'),
(30, 'Tema 5 Wirausaha', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1wJFpR6mAbA2r2sOEAq8Tnkv_VhlqsHeD/preview', '2020-09-23 03:34:55', 'http://e-book.sdinpresjayamakmur.sch.id/source/BG%206%20TEMA%205.png'),
(31, 'Tema 1 Selamatkan Makhluk Hidup', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, NULL, 0, 'https://drive.google.com/file/d/1lAeh8bZxAlGKFgnkc1Zu4B7giZ2kllMi/preview', '2020-09-23 01:03:12', 'http://e-book.sdinpresjayamakmur.sch.id/source/BS%206%20TEMA%201.png'),
(32, 'Tema 1 Selamatkan Makhluk Hidup', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1lAeh8bZxAlGKFgnkc1Zu4B7giZ2kllMi/preview', '2020-09-23 03:34:48', 'http://e-book.sdinpresjayamakmur.sch.id/source/BS%206%20TEMA%201.png'),
(33, 'Persatuan dalam Perbedaan', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/15sZ5c0wuk7MTIADG35SnmZBnxyBS77Yn/preview', '2020-09-23 03:34:41', 'http://e-book.sdinpresjayamakmur.sch.id/source/BS%206%20TEMA%202.png'),
(34, 'Tema 5 Wirausaha', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, NULL, 0, 'http://e-book.sdinpresjayamakmur.sch.id/source/Buku%20Siswa%20Kelas%206%20Tema%203%20Revisi%202018.pdf', '2020-09-23 00:59:26', 'http://e-book.sdinpresjayamakmur.sch.id/source/BS%206%20TEMA%203.png'),
(35, 'Tema 3:  Tokoh dan Penemuan', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', ' Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, Santi Hendriyeti. ', 2018, 'SD', 1, 6, 1, 'https://drive.google.com/file/d/1Y8TAbh9ccmWZUEt3TEAdpn_o64JII93A/preview', '2020-09-23 03:34:31', 'http://e-book.sdinpresjayamakmur.sch.id/source/BS%206%20TEMA%203.png'),
(37, 'Pendidikan Agama Buddha dan Budi Pekerti ', ' Kementerian Pendidikan dan Kebudayaan', 'Sukiman dan Pandu Dinata', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1jaUh_FXolopmNgYiYPuBYxqQh8cplNrR/preview', '2020-10-17 03:20:34', ''),
(38, 'Pendidikan Agama Hindu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'I Gede Jaman dan I Made Agus Adi Prawira.', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1LPxn7EeGETnyy6m-nKSDdCUwluyzKlYz/preview', '2020-10-17 03:22:05', ''),
(39, 'Pendidikan Agama Islam dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Achmad Hasim dan M. Kholid Fathoni	', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1ertdp0xUy6Ex08yGOceZ_OSFq91EHllH/preview', '2020-10-17 03:23:25', ''),
(40, 'Pendidikan Agama Katolik dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', ' Susi Bonardy dan Yenny Suria.', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1Bd8cV1cKYPttUWsel_Ai7BYKXNzf4cIJ/preview', '2020-10-17 03:24:21', ''),
(41, 'Pendidikan Agama Khonghucu dan Budi Pekerti ', 'Kementerian Pendidikan dan Kebudayaan', ' Liana Wijaya dan Lany Guito', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1aXXMDutMBdA8HFbZXaPpmaOeeYbz0Rpt/preview', '2020-10-17 03:25:13', ''),
(42, 'Pendidikan Agama Kristen dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Fransiska Veronica Muda dan Ev. Robinson Napitupulu.', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1m146-MzTS2W7el_K717yWMnyU96QCmBx/preview', '2020-10-17 03:26:10', ''),
(43, 'Hidup Rukun', 'Kementerian Pendidikan dan Kebudayaan', 'Irene Maria Juli Astuti', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1xx3J6rLevRoKbIpftGHbfIk-Iu6qLrrK/preview', '2020-10-17 03:27:18', ''),
(44, 'Bermain di Lingkunganku ', 'Kementerian Pendidikan dan Kebudayaan', 'Taufina', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-10-17 03:28:19', ''),
(45, 'Tugasku Sehari-hari ', 'Kementerian Pendidikan dan Kebudayaan', 'Purnomosidi', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1muTIdfm4sR7AISLasp7Dc5sr4gKNwn9S/preview', '2020-10-17 03:29:14', ''),
(46, 'Hidup Bersih dan Sehat', 'Kementerian Pendidikan dan Kebudayaan', 'Faisal', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1uC7HAicp-0glKSRW1jAr3EDSbEF3LTeE/preview', '2020-10-17 03:30:09', ''),
(47, 'Pengalamanku', 'Kementerian Pendidikan dan Kebudayaan', 'Taufina', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-10-17 03:32:04', ''),
(48, 'Merawat Hewan dan Tumbuhan', 'Kementerian Pendidikan dan Kebudayaan', 'Irene Maria Juli Astuti, Fransiska Susilawati.', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1Hkvh1o8mA0WAforECRVMPTLKCabR_db7/preview', '2020-10-17 03:32:59', ''),
(49, 'Kebersamaan', 'Kementerian Pendidikan dan Kebudayaan', 'Purnomosidi', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-10-17 03:33:58', ''),
(50, 'Keselamatan di Rumah dan Perjalanan', 'Kementerian Pendidikan dan Kebudayaan', 'Faisal', 2017, 'SD', 1, 2, 1, 'https://drive.google.com/file/d/1nqiumbQjTpwZvoL2UdiI6969fRbFV8Jq/preview', '2020-10-17 03:35:42', ''),
(51, 'Pendidikan Agama Buddha dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Pujimin dan Suyatno', 2017, 'SD', 0, 2, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf-m3-/preview', '2020-10-17 03:38:31', ''),
(52, 'Pendidikan Agama Hindu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Duwijo dan Komang Susila.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1Kc5TVmd_-Pz_UfK6N6kOmES_bKct7ylf/preview', '2020-10-17 03:53:24', ''),
(53, 'Pendidikan Agama Katolik dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Daniel Boli Kotan dan Marianus Didi Kasmudi.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1A8tiZSTfXiAjDu-An7qPOtlYjD7DgD63/preview', '2020-10-17 03:53:29', ''),
(54, 'Pendidikan Agama Khonghucu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Budi Wijaya dan Lany Guito', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1m5ZH6eNRFmfoA9Se2KpLXr4UngKObazI/preview', '2020-10-17 03:53:34', ''),
(55, 'Selalu Berhemat Energi', 'Kementerian Pendidikan dan Kebudayaan', 'Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, dan Santi Hendriyeti.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-10-17 03:53:38', ''),
(56, 'Peduli Terhadap Makhluk Hidup', 'Kementerian Pendidikan dan Kebudayaan', 'Angi St. Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, dan Santi Hendriyeti', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1eqVR3HXQoUev8_-FVuUWsevNMxXXs6oI/preview', '2020-10-17 03:53:43', ''),
(57, 'Berbagai Pekerjaan', 'Kementerian Pendidikan dan Kebudayaan', 'Angi St Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, dan Santi Hendriyeti. ', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1R8_cFQLGm4G55whE1xaIrmgqBWgqj9Jl/preview', '2020-10-17 03:53:47', ''),
(58, 'Pahlawanku', 'Kementerian Pendidikan dan Kebudayaan', 'Angi St Anggari, Afriki, Dara Retno Wulan, Nuniek Puspitawati, Lely Mifthachul Khasanah, dan Santi Hendriyeti.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1NQs1nuw_PNW4jITIMkvaVCkQ13MxstR0/preview', '2020-10-17 03:53:52', ''),
(59, 'Cita-Citaku', 'Kementerian Pendidikan dan Kebudayaan', 'Diana Puspa Karitas, Fransiska Susilawati, Irene Maria Juli Astuti.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1suwoIOz24fLnVdldG1iSOALOwQSVh0Dz/preview', '2020-10-17 03:53:57', ''),
(60, 'Indahnya Keragaman di Negeriku', 'Kementerian Pendidikan dan Kebudayaan', 'Heny Kusumawati', 2017, 'SD', 0, 2, 1, 'https://drive.google.com/file/d/1SxULjKnhwtliUMjx84JaWh_PF21dPXPx/preview', '2020-10-17 03:47:07', ''),
(61, 'Daerah Tempat Tinggalku', 'Kementerian Pendidikan dan Kebudayaan', 'Ari Subekti.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf-zlK/preview', '2020-10-17 03:52:44', ''),
(62, 'Kayanya Negeriku', 'Kementerian Pendidikan dan Kebudayaan', 'Maryanto.', 2017, 'SD', 1, 4, 1, 'https://drive.google.com/file/d/1j3KzlaLL3ROma4AisLeGhZbj--gFXFb7/preview', '2020-10-17 03:55:14', ''),
(63, 'Pendidikan Agama Buddha dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Pujimin dan Suyatno', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-10-17 03:57:21', ''),
(64, 'Pendidikan Agama Hindu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'I Ketut Darta dan Duwijo', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1aADvqsLkpcDjcvSB6i6gF6fiyIXTyXE4/preview', '2020-10-17 03:58:06', ''),
(65, 'Pendidikan Agama Islam dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Feisal Ghozaly dan Achmad Buchori Ismail.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf--UU-D/preview', '2020-10-17 03:59:06', ''),
(66, 'Pendidikan Agama Katolik dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'FX. Dapiyanta. dan Marianus Didi Kasmudi', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1OI5txvsuzcvK6uVx2toJyEFcll7JOjeB/preview', '2020-10-17 04:00:04', ''),
(67, 'Pendidikan Agama Khonghucu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', '  Budi Wijaya dan Liana Wijaya.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1Uj4LrA9PswVUmQrd4j-4J5_6njWYEPY8/preview', '2020-10-17 04:00:56', ''),
(68, 'Pendidikan Agama Kristen dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Erich Von Marthin dan Norita Yudiet Tompah.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1HPxqZdHXk9lnQc6_kmNx0J64D_8-Iwtu/preview', '2020-10-17 04:01:53', ''),
(69, 'Organ Gerak Hewan dan Manusia', 'Kementerian Pendidikan dan Kebudayaan', 'Maryanto.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1h5M4I6ctoQFtljR-y2X9ZMIdN2ZRd8NS/preview', '2020-10-17 04:02:42', ''),
(70, 'Udara Bersih bagi Kesehatan', 'Kementerian Pendidikan dan Kebudayaan', 'Heny Kusumawati', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1MFwqzf-hxAfvNk6e3xFOd0412Mhx9wJJ/preview', '2020-10-17 04:03:33', ''),
(71, 'Makanan Sehat', 'Kementerian Pendidikan dan Kebudayaan', 'Fransiska Susilawati', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1IktonuzSnnppdl4u21o2c9WkaE11nlzP/preview', '2020-10-17 04:04:34', ''),
(72, 'Sehat itu Penting', 'Kementerian Pendidikan dan Kebudayaan', 'Ari Subekti', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-10-17 04:05:31', ''),
(73, 'Ekosistem', 'Kementerian Pendidikan dan Kebudayaan', 'Diana Puspa Karitas.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1ZH0zJzjEh14FTlJBKHyEJJyR1mY6HHOc/preview', '2020-10-17 04:06:17', ''),
(74, 'Panas dan Perpindahannya', 'Kementerian Pendidikan dan Kebudayaan', 'Diana Karitas, Fransiska', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1s2RgtKTKByxaLT4WfOZ6bpV1DAriJt2b/preview', '2020-10-17 04:07:21', ''),
(75, 'Peristiwa dalam Kehidupan', 'Kementerian Pendidikan dan Kebudayaan', 'Maryanto, Fransiska,  Heny Kusumawati, Diana Puspa, dan Ari Subekti.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/17X_9KQVfefUQpiByjGcNR3flktVh8jBZ/preview', '2020-10-17 04:08:09', ''),
(76, 'Lingkungan Sahabat Kita', 'Kementerian Pendidikan dan Kebudayaan', 'Heny Kusumawati', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/17Rjazn46pv2RTyeFlToZIaGDecbvP3fz/preview', '2020-10-17 04:08:58', ''),
(77, 'Benda-Benda di Sekitar Kita/Buku Siswa', 'Kementerian Pendidikan dan Kebudayaan', 'Ari Subekti.', 2017, 'SD', 1, 5, 1, 'https://drive.google.com/file/d/1PMQd33r-Cn2hBGwM8F4kTt36P_WkMcRo/preview', '2020-10-17 04:09:54', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(11) NOT NULL,
  `gambar` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `date_upload` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_galeri`
--

INSERT INTO `tb_galeri` (`id`, `gambar`, `keterangan`, `status`, `date_upload`) VALUES
(1, 'http://e-book.sdinpresjayamakmur.sch.id/source/PENGATURAN/banner.png', '<p>Contoh Ruang Perpustakaan</p>\r\n', 1, '2020-08-28 14:41:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_home`
--

CREATE TABLE `tb_home` (
  `id` int(11) NOT NULL,
  `tittle` varchar(50) DEFAULT NULL,
  `kepala_sekolah` varchar(100) NOT NULL,
  `logo_login` text NOT NULL,
  `logo` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `foto` text NOT NULL,
  `selogan` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `maskot` text DEFAULT NULL,
  `tentang_e_book` text DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_home`
--

INSERT INTO `tb_home` (`id`, `tittle`, `kepala_sekolah`, `logo_login`, `logo`, `banner`, `foto`, `selogan`, `background`, `maskot`, `tentang_e_book`, `meta`, `descriptions`, `date_update`) VALUES
(1, 'Perpustakaan', 'SUTOPO, S.Pd.SD', 'http://e-book.sdinpresjayamakmur.sch.id/source/LOGO-SKL.png', 'http://e-book.sdinpresjayamakmur.sch.id/source/PENGATURAN/LG%20(1).png', 'http://e-book.sdinpresjayamakmur.sch.id/source/PENGATURAN/banner.png', 'http://e-book.sdinpresjayamakmur.sch.id/source/Kepsek1.png', 'Rajin-rajinlah belajar Demi Masa Depan', 'http://e-book.sdinpresjayamakmur.sch.id/source/PENGATURAN/banner.png', 'http://e-book.sdinpresjayamakmur.sch.id/source/PENGATURAN/MKT.png', '<p style=\"text-align:justify\">Perpustakaan digital (E-Book Library) adalah perpustakaan yang mempunyai koleksi buku sebagian besar dalam bentuk format digital dan yang bisa diakses dengan komputer atau smart phone. Jenis perpustakaan ini berbeda dengan jenis perpustakaan konvensional yang berupa kumpulan buku tercetak, film mikro (microform dan microfiche), ataupun kumpulan kaset audio, video, dll. Isi dari perpustakaan digital berada dalam suatu komputer server yang bisa ditempatkan secara lokal, maupun di lokasi yang jauh, namun dapat diakses dengan cepat dan mudah lewat jaringan komputer.</p>\r\n', 'meta', 'description', '2020-09-24 05:09:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `kategori` text DEFAULT NULL,
  `kelas` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `date_upload` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `id_kategori`, `kategori`, `kelas`, `status`, `date_upload`) VALUES
(1, 1, 'Novel', NULL, 0, '2020-07-09 06:21:12'),
(2, 2, 'Komik', NULL, 0, '2020-07-09 06:21:17'),
(3, 3, 'Ensiklopedia', NULL, 0, NULL),
(4, 4, 'Nomik', NULL, 0, NULL),
(5, 5, 'Antologi', NULL, 0, NULL),
(6, 6, 'Dongeng', NULL, 0, NULL),
(7, 7, 'Biografi', NULL, 0, NULL),
(8, 8, 'Catatan Harian', NULL, 0, NULL),
(9, 9, 'Fotografi', NULL, 0, NULL),
(10, 10, 'Karya Ilmiah', NULL, 0, '2020-04-25 08:40:34'),
(11, 11, 'Tafsir', NULL, 0, NULL),
(12, 12, 'Kamus', NULL, 0, NULL),
(13, 13, 'Panduan', NULL, 0, NULL),
(14, 14, 'Atlas', NULL, 0, NULL),
(15, 15, 'Ilmiah', NULL, 0, NULL),
(16, 16, 'Olahraga', NULL, 0, '2020-04-25 08:35:37'),
(17, 17, 'SD', NULL, 1, '2020-09-23 02:19:32'),
(18, 18, 'SMP', NULL, 0, '2020-07-09 06:21:34'),
(19, 19, 'SMA', NULL, 0, '2020-07-09 06:21:27'),
(20, 20, 'Pelajaran', NULL, 1, '2020-09-23 02:20:06'),
(21, 21, 'Umum', NULL, 1, '2020-09-23 02:20:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kelas` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`kelas`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konten`
--

CREATE TABLE `tb_konten` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_konten`
--

INSERT INTO `tb_konten` (`id`, `judul`, `isi`, `date_update`) VALUES
(1, 'Profile Sekolah', '<p style=\"text-align:center\"><a href=\"http://book.it/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png\" target=\"_blank\"><img alt=\"\" src=\"https://e-book.sdinpresjayamakmur.sch.id/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png\" style=\"height:153px; width:150px\" /><img alt=\"\" src=\"http://e-book.sdinpresjayamakmur.sch.id/source/LOGO%20SKL.png\" style=\"height:135px; width:150px\" /></a></p>\r\n\r\n<div class=\"col-lg-12\">\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\">SD Inpres Jaya Makmur merupakan sekolah yang berstatus Negeri dengan Akreditasi B, yang berkedudukan di Kampung&nbsp; Jaya Makmur Distrik Kurik Kabupaten Merauke Propinsi Papua yang dengan memilik tenaga pendidik dan tenaga kependidkan berjumlah 15 orang terdiri dari Tenaga Kependidkan&nbsp; / Kepala Sekolah bapak Sutopo, S.Pd.SD dan &nbsp;guru / tenaga pendidik 14 orang serta &nbsp;peserta didik sebanyak 338 anak .</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Sarana gedung SD Inpres Jaya Makmur sebanyak 12 ruang kelas, 1 ruang guru dan 1 ruang kantor. Sedangkan sarana pendukung lainnya seperti perangkat ICT berupa Laptop sebanyak &nbsp;8 unit dan printer sebanyak 4 Unit dalam kondisi baik dan siap pakai. Sedangkan perangkat yang dalam kondisi rusak terdiri atas Laptop 3 unit dan computer PC 1 unit.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Guna memenuhi kebutuhan operasional sekolah, Kepala Sekolah SD Inpres Jaya Makmur telah mengambil kebijakan dengan melakukan belanja perangkat laptop sebanyak 3 unit di tahun anggaran 2019.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:11pt\">SD Inpres Jaya Makmur merupakan salah satu sekolah yang diberikan kepercayaan berupa bantuan Dana Afirmasi dari kementerian Pendidikan yang mana keperuntukannya untuk membangun Laboratorium pembelajaran Jarak Jauh berbasis Rumah Belajar. Yang terdiri atas Komputer PC 1 Unit, Laptop 1 Unit, Infocus 1 unit, Eksternal HardDisk 1 buah, Perangkat Wireless AP 1 Unit dan Tablet 8&rdquo; sebantak 314 Unit.</span></span></p>\r\n</div>\r\n', '2020-09-24 03:26:57'),
(2, 'Visi dan Misi', '<div class=\"col-lg-12\">\r\n<div class=\"blog_left_sidebar\">\r\n<div class=\"col-md-12\">\r\n<div class=\"blog_post\">\r\n<div class=\"blog_details\">\r\n<p><strong>Visi Sekolah Dasar Inpres Jaya Makmur</strong></p>\r\n\r\n<p>&ldquo; Terwujudnya Peserta Didik yang beriman, cerdas, terampil, berkarakter, mandiri berwawasan luas.&rdquo;</p>\r\n\r\n<p><strong>Misi Sekolah Dasar Inpres Jaya Makmur</strong></p>\r\n\r\n<ul>\r\n	<li>1. Menanamkan keimanan dan ketaqwaan melalui pengamalan ajaran agama.</li>\r\n	<li>2. Mengoptimalkan proses belajar dan bimbingan.</li>\r\n	<li>3. Mengembangkan bidang ilmu pengethuan dan teknologi berdasarkan minat, bakat, dan potensi peerta didik.</li>\r\n	<li>4. Membina kemandirian peserta didik melalui kegiatan pembiasaan, kewirausahaan dan pengembangan diri yang terencana dan berkesinambungan.</li>\r\n	<li>5. Menjalin kerja sama yang harmonis antar warga sekolah dan lembaga lain yang terkait.</li>\r\n	<li>6. Membentuk peserta didik yang menguasai pengetahuan dan keterampilan dasar.</li>\r\n	<li>7. Menjadikan sekolah sebagai pusat pendidikan guna mencerdaskan kehidupan bangsa.</li>\r\n	<li>8. Menciptakan keakraban di antara warga sekolah dan masyarakat sekitarnya</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '2020-09-24 02:52:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_log`
--

CREATE TABLE `tb_log` (
  `id` int(11) NOT NULL,
  `id_member` int(20) DEFAULT NULL,
  `nama` text DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `tanggal` int(2) DEFAULT NULL,
  `bulan` varchar(15) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_log`
--

INSERT INTO `tb_log` (`id`, `id_member`, `nama`, `kategori`, `tanggal`, `bulan`, `tahun`, `date`, `time`) VALUES
(1, 123, 'Feri Pebriansah Nugraha', 'Guru', 8, 'July', 2020, '2020-07-08', '12:41:16'),
(2, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:08:51'),
(3, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:24:37'),
(4, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:24:48'),
(5, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:40:13'),
(6, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:41:18'),
(7, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:41:33'),
(8, 123, 'Feri Pebriansah Nugraha', 'Guru', 9, 'July', 2020, '2020-07-09', '06:42:50'),
(9, 123, 'Feri Pebriansah Nugraha', 'Guru', 18, 'July', 2020, '2020-07-18', '01:30:14'),
(10, 123, 'Feri Pebriansah Nugraha', 'Guru', 18, 'July', 2020, '2020-07-18', '01:30:23'),
(11, 123, 'Feri Pebriansah Nugraha', 'Guru', 18, 'July', 2020, '2020-07-18', '03:17:33'),
(12, 123, 'Feri Pebriansah Nugraha', 'Guru', 22, 'July', 2020, '2020-07-22', '04:34:32'),
(13, 123, 'Feri Pebriansah Nugraha', 'Guru', 22, 'July', 2020, '2020-07-22', '04:38:44'),
(14, 123, 'Feri Pebriansah Nugraha', 'Guru', 22, 'July', 2020, '2020-07-22', '07:11:06'),
(15, 123, 'Feri Pebriansah Nugraha', 'Guru', 22, 'July', 2020, '2020-07-22', '11:42:56'),
(16, 123, 'Feri Pebriansah Nugraha', 'Guru', 23, 'July', 2020, '2020-07-23', '12:20:00'),
(17, 123, 'Feri Pebriansah Nugraha', 'Guru', 26, 'July', 2020, '2020-07-26', '05:32:08'),
(18, 123, 'Feri Pebriansah Nugraha', 'Guru', 27, 'July', 2020, '2020-07-27', '09:22:09'),
(19, 12345, 'Guru', 'Guru', 7, 'August', 2020, '2020-08-07', '11:15:46'),
(20, 123, 'Feri Pebriansah Nugraha', 'Guru', 7, 'August', 2020, '2020-08-07', '11:23:01'),
(21, 123, 'Siswa', 'Siswa', 7, 'August', 2020, '2020-08-07', '11:25:30'),
(22, 123, 'Siswa', 'Siswa', 15, 'August', 2020, '2020-08-15', '02:44:28'),
(23, 12345, 'Guru', 'Guru', 28, 'August', 2020, '2020-08-28', '01:05:04'),
(24, 12345, 'Guru', 'Guru', 28, 'August', 2020, '2020-08-28', '01:26:39'),
(25, 12345, 'Guru', 'Guru', 28, 'August', 2020, '2020-08-28', '01:36:04'),
(26, 12345, 'Guru', 'Guru', 28, 'August', 2020, '2020-08-28', '02:32:48'),
(27, 123, 'Siswa', 'Siswa', 28, 'August', 2020, '2020-08-28', '13:38:23'),
(28, 123, 'Siswa', 'Siswa', 28, 'August', 2020, '2020-08-28', '13:51:25'),
(29, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:07:28'),
(30, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:07:34'),
(31, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:07:59'),
(32, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:08:19'),
(33, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:08:49'),
(34, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:09:03'),
(35, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:09:13'),
(36, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:09:59'),
(37, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:12:40'),
(38, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:16:26'),
(39, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:17:15'),
(40, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:17:40'),
(41, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:23:15'),
(42, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:39:47'),
(43, 12345, 'Guru', 'Guru', 29, 'August', 2020, '2020-08-29', '02:39:48'),
(44, 123, 'Siswa', 'Siswa', 1, 'September', 2020, '2020-09-01', '00:49:51'),
(45, 123, 'Siswa', 'Siswa', 1, 'September', 2020, '2020-09-01', '01:12:22'),
(46, 99999, 'Administraror', 'Guru', 1, 'September', 2020, '2020-09-01', '01:46:50'),
(47, 123, 'Siswa', 'Siswa', 1, 'September', 2020, '2020-09-01', '02:02:41'),
(48, 12345, 'Guru', 'Guru', 2, 'September', 2020, '2020-09-02', '03:42:41'),
(49, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '02:48:34'),
(50, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '04:55:08'),
(51, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '07:41:26'),
(52, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '07:42:50'),
(53, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '07:46:52'),
(54, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '09:25:17'),
(55, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '11:50:22'),
(56, 12345, 'Guru', 'Guru', 5, 'September', 2020, '2020-09-05', '12:29:58'),
(57, 123, 'Siswa', 'Siswa', 5, 'September', 2020, '2020-09-05', '12:33:18'),
(58, 12345, 'Guru', 'Guru', 5, 'September', 2020, '2020-09-05', '12:41:26'),
(59, 12345, 'Guru', 'Guru', 5, 'September', 2020, '2020-09-05', '12:41:45'),
(60, 123, 'Siswa', 'Siswa', 7, 'September', 2020, '2020-09-07', '00:04:30'),
(61, 12345, 'Guru', 'Guru', 7, 'September', 2020, '2020-09-07', '02:35:58'),
(62, 123, 'Siswa', 'Siswa', 8, 'September', 2020, '2020-09-08', '00:00:27'),
(63, 123, 'Siswa', 'Siswa', 8, 'September', 2020, '2020-09-08', '00:29:27'),
(64, 123, 'Siswa', 'Siswa', 8, 'September', 2020, '2020-09-08', '00:35:04'),
(65, 123, 'Siswa', 'Siswa', 8, 'September', 2020, '2020-09-08', '00:39:16'),
(66, 123, 'Siswa', 'Siswa', 10, 'September', 2020, '2020-09-10', '15:29:11'),
(67, 123, 'Siswa', 'Siswa', 11, 'September', 2020, '2020-09-11', '04:30:56'),
(68, 123, 'Siswa', 'Siswa', 13, 'September', 2020, '2020-09-13', '03:49:41'),
(69, 123, 'Siswa', 'Siswa', 13, 'September', 2020, '2020-09-13', '23:19:58'),
(70, 123, 'Siswa', 'Siswa', 14, 'September', 2020, '2020-09-14', '01:27:00'),
(71, 123, 'Siswa', 'Siswa', 14, 'September', 2020, '2020-09-14', '01:29:31'),
(72, 123, 'Siswa', 'Siswa', 15, 'September', 2020, '2020-09-15', '11:48:11'),
(73, 123, 'Siswa', 'Siswa', 16, 'September', 2020, '2020-09-16', '03:29:31'),
(74, 123, 'Siswa', 'Siswa', 16, 'September', 2020, '2020-09-16', '20:23:41'),
(75, 123, 'Siswa', 'Siswa', 17, 'September', 2020, '2020-09-17', '06:11:11'),
(76, 123, 'Siswa', 'Siswa', 17, 'September', 2020, '2020-09-17', '07:40:56'),
(77, 123, 'Siswa', 'Siswa', 17, 'September', 2020, '2020-09-17', '14:35:39'),
(78, 123, 'Siswa', 'Siswa', 21, 'September', 2020, '2020-09-21', '11:20:35'),
(79, 123, 'Siswa', 'Siswa', 21, 'September', 2020, '2020-09-21', '11:21:08'),
(80, 12345, 'Guru', 'Guru', 22, 'September', 2020, '2020-09-22', '03:05:14'),
(81, 12345, 'Guru', 'Guru', 22, 'September', 2020, '2020-09-22', '04:14:22'),
(82, 12345, 'Guru', 'Guru', 23, 'September', 2020, '2020-09-23', '00:55:03'),
(83, 12345, 'Guru', 'Guru', 23, 'September', 2020, '2020-09-23', '02:18:07'),
(84, 123, 'Siswa', 'Siswa', 24, 'September', 2020, '2020-09-24', '00:44:45'),
(85, 12345, 'Guru', 'Guru', 24, 'September', 2020, '2020-09-24', '05:10:11'),
(86, 12345, 'Guru', 'Guru', 24, 'September', 2020, '2020-09-24', '05:13:10'),
(87, 123, 'Siswa', 'Siswa', 26, 'September', 2020, '2020-09-26', '01:40:24'),
(88, 123, 'Siswa', 'Siswa', 6, 'October', 2020, '2020-10-06', '06:21:38'),
(89, 123, 'Siswa', 'Siswa', 6, 'October', 2020, '2020-10-06', '06:25:07'),
(90, 12345, 'Guru', 'Guru', 6, 'October', 2020, '2020-10-06', '09:10:21'),
(91, 12345, 'Guru', 'Guru', 6, 'October', 2020, '2020-10-06', '09:11:31'),
(92, 12345, 'Guru', 'Guru', 6, 'October', 2020, '2020-10-06', '09:24:11'),
(93, 12345, 'Guru', 'Guru', 6, 'October', 2020, '2020-10-06', '09:32:40'),
(94, 12345, 'Guru', 'Guru', 17, 'October', 2020, '2020-10-17', '03:36:06'),
(95, 123, 'Siswa', 'Siswa', 19, 'October', 2020, '2020-10-19', '23:47:04'),
(96, 123, 'Siswa', 'Siswa', 21, 'October', 2020, '2020-10-21', '04:44:02'),
(97, 123, 'Siswa', 'Siswa', 23, 'October', 2020, '2020-10-23', '08:56:16'),
(98, 123, 'Siswa', 'Siswa', 25, 'October', 2020, '2020-10-25', '09:49:32'),
(99, 123, 'Siswa', 'Siswa', 31, 'October', 2020, '2020-10-31', '04:44:36'),
(100, 123, 'Siswa', 'Siswa', 31, 'October', 2020, '2020-10-31', '04:49:36'),
(101, 123, 'Siswa', 'Siswa', 31, 'October', 2020, '2020-10-31', '04:49:42'),
(102, 12345, 'Guru', 'Guru', 31, 'October', 2020, '2020-10-31', '06:12:00'),
(103, 12345, 'Guru', 'Guru', 31, 'October', 2020, '2020-10-31', '06:15:59'),
(104, 123, 'Siswa', 'Siswa', 31, 'October', 2020, '2020-10-31', '19:20:12'),
(105, 123, 'Siswa', 'Siswa', 31, 'October', 2020, '2020-10-31', '19:43:10'),
(106, 123, 'Siswa', 'Siswa', 31, 'October', 2020, '2020-10-31', '21:03:09'),
(107, 123, 'Siswa', 'Siswa', 1, 'November', 2020, '2020-11-01', '02:14:02'),
(108, 123, 'Siswa', 'Siswa', 1, 'November', 2020, '2020-11-01', '08:50:40'),
(109, 123, 'Siswa', 'Siswa', 16, 'November', 2020, '2020-11-16', '08:12:20'),
(110, 12345, 'Guru', 'Guru', 31, 'January', 2021, '2021-01-31', '04:33:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_member`
--

CREATE TABLE `tb_member` (
  `id` int(11) NOT NULL,
  `id_member` int(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kategori` enum('Guru','Siswa') DEFAULT NULL,
  `status` enum('1','0') DEFAULT '0',
  `foto` text DEFAULT NULL,
  `akses` enum('1','0') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_member`
--

INSERT INTO `tb_member` (`id`, `id_member`, `password`, `nama`, `email`, `kategori`, `status`, `foto`, `akses`) VALUES
(1, 123, '8e73d780af363597b853dd8682cb9ae5', 'Siswa', 'siswa@gmail.com', 'Siswa', '1', NULL, '0'),
(3, 12345, '98c9393a68f6a2a41c2e99973a434245', 'Guru', 'guru@gmail.com', 'Guru', '1', NULL, '0'),
(4, 99999, 'a8f5f167f44f4964e6c998dee827110c', 'Administraror', 'administrator@sdinpresjayamakmur.sch.id', 'Guru', '1', NULL, '0'),
(5, 20202001, 'd1f1a3ae1fae2c6908e59e53604adb1e', 'Sisiwa 001', 'siswa2001@sdinpresjayamakmur.sch.id', 'Siswa', '1', NULL, '0'),
(6, 20202002, 'fde17410dc09fc24793a5f9257fea000', 'Sisiwa 002', 'siswa2002@sdinpresjayamakmur.sch.id', 'Siswa', '1', NULL, '0'),
(7, 20202003, '8b4f9fcc98fe1b12901bf747663795f7', 'Sisiwa 003', 'siswa2003@sdinpresjayamakmur.sch.id', 'Siswa', '1', NULL, '0'),
(8, 20202004, '96ed39c73ffe42e65ac564927fc53180', 'Sisiwa 004', 'siswa2004@sdinpresjayamakmur.sch.id', 'Siswa', '1', NULL, '0'),
(9, 20201001, 'c31bd8a16a33f5fee5c804f926adfea5', 'Guru 001', 'guru1001@sdinpresjayamakmur.sch.id', 'Guru', '1', NULL, '0'),
(10, 20201002, 'fec6e81cba6fdcfb04ec3e68a4368eeb', 'Guru 002', 'guru1002@sdinpresjayamakmur.sch.id', 'Guru', '1', NULL, '0'),
(11, 20201003, '9424784be91a8cbd4c6c7b1f6e3b7c22', 'Guru 003', 'guru1003@sdinpresjayamakmur.sch.id', 'Guru', '1', NULL, '0'),
(12, 20201004, 'dbf1b422a45c183b81f65e80a3c91534', 'Guru 004', 'guru1004@sdinpresjayamakmur.sch.id', 'Guru', '1', NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_member_kategori`
--

CREATE TABLE `tb_member_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_member_kategori`
--

INSERT INTO `tb_member_kategori` (`id`, `kategori`) VALUES
(1, 'Guru'),
(2, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_saran_buku`
--

CREATE TABLE `tb_saran_buku` (
  `id` int(11) NOT NULL,
  `nama` text DEFAULT NULL,
  `judul_buku` text DEFAULT NULL,
  `penerbit` text DEFAULT NULL,
  `pengarang` text DEFAULT NULL,
  `tahun` decimal(10,0) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `status` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sekolah`
--

INSERT INTO `tb_sekolah` (`id`, `sekolah`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slide`
--

CREATE TABLE `tb_slide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `star` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slide`
--

INSERT INTO `tb_slide` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`, `star`, `status`) VALUES
(1, 'Slide 1', 'http://e-book.sdinpresjayamakmur.sch.id/source/SLIDER/1.png', ',', '2020-09-24 03:05:29', '2020-09-24 03:05:29', NULL, 1),
(2, 'Slide 2', 'http://e-book.sdinpresjayamakmur.sch.id/source/SLIDER/2.png', '.', '2020-09-24 03:05:41', '2020-09-24 03:05:41', NULL, 1),
(3, 'Slide 3', 'http://e-book.sdinpresjayamakmur.sch.id/source/SLIDER/3.png', ',', '2020-09-24 03:05:53', '2020-09-24 03:05:53', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tokens`
--

CREATE TABLE `tb_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_member` int(20) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `katerangan` enum('Guru','Siswa') DEFAULT NULL,
  `status` enum('1','0') DEFAULT '1',
  `foto` text DEFAULT NULL,
  `akses` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `id_user`, `username`, `password`, `nama`, `email`, `katerangan`, `status`, `foto`, `akses`) VALUES
(1, 1, 'feri', '7815696ecbf1c96e6894b779456d330e', 'Feri Pebriansah Nugraha', 'feripebriansah@gmail.com', NULL, '1', 'http://book.it/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', '1'),
(2, 0, 'Administrator', '4441e5d70b3657900fa57e66db407e0b', 'Admin', 'admin@gmail.com', NULL, '1', '.', '1'),
(3, 0, 'admin2020', 'e76e752558361a2e9814c4d6c2239568', 'admin', 'admin2020@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(4, 0, 'Jayamakmur2020', 'b633507e28edc99541ebc878d58fc3c6', 'Jayamakmur', 'Jayamakmur2020@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(5, 0, 'user_001', '17a43a3df135e1be9274554c4d387ea0', 'user_001', 'user_001@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(6, 0, 'user_002', '4d2fe73322da7f7d0bc0df18142dfd3d', 'user_002', 'user_002@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(7, 0, 'user_003', '98d8ef4ca3f39b8645d93d18f1d62471', 'user_003', 'user_003@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(8, 0, 'user_004', '47d69094f2fe0c26d14302267ce01951', 'user_004', 'user_004@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(9, 0, 'user_005', 'b62ca16c9840f8e844282ddf01837149', 'user_005', 'user_005@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(10, 0, 'user_006', '5339fb560cadd55564fd225adb2b8eea', 'user_006', 'user_006@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1'),
(11, 0, 'user_007', 'a2a21f5300411719147ae53d187b656d', 'user_007', 'user_007@sdinpresjayamakmur.sch.id', NULL, '1', '-', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_akses`
--

CREATE TABLE `tb_user_akses` (
  `id_user` bigint(20) NOT NULL,
  `akses` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `tb_user_akses`
--

INSERT INTO `tb_user_akses` (`id_user`, `akses`) VALUES
(1, 'dasbor/user'),
(1, 'dasbor/member'),
(1, 'dasbor/pengaturan'),
(1, 'dasbor/galeri'),
(1, 'dasbor/kategori_video'),
(1, 'dasbor/video_edukasi'),
(2, 'dasbor/video_edukasi'),
(2, 'dasbor/saran_buku'),
(2, 'dasbor/buku'),
(2, 'dasbor/kategori'),
(2, 'dasbor/slide'),
(2, 'dasbor/visi_dan_misi'),
(2, 'dasbor/profile_sekolah'),
(3, 'dasbor/video_edukasi'),
(3, 'dasbor/saran_buku'),
(3, 'dasbor/buku'),
(3, 'dasbor/kategori'),
(3, 'dasbor/slide'),
(3, 'dasbor/visi_dan_misi'),
(3, 'dasbor/profile_sekolah'),
(4, 'dasbor/video_edukasi'),
(4, 'dasbor/saran_buku'),
(4, 'dasbor/buku'),
(4, 'dasbor/kategori'),
(4, 'dasbor/slide'),
(4, 'dasbor/visi_dan_misi'),
(4, 'dasbor/profile_sekolah'),
(1, 'dasbor/saran_buku'),
(1, 'dasbor/buku'),
(1, 'dasbor/slide'),
(1, 'dasbor/kategori'),
(1, 'dasbor/visi_dan_misi'),
(4, 'dasbor/kategori_video'),
(4, 'dasbor/galeri'),
(4, 'dasbor/pengaturan'),
(4, 'dasbor/member'),
(4, 'dasbor/user'),
(3, 'dasbor/kategori_video'),
(3, 'dasbor/galeri'),
(3, 'dasbor/pengaturan'),
(3, 'dasbor/member'),
(3, 'dasbor/user'),
(2, 'dasbor/kategori_video'),
(2, 'dasbor/galeri'),
(2, 'dasbor/pengaturan'),
(2, 'dasbor/member'),
(2, 'dasbor/user'),
(5, 'dasbor/profile_sekolah'),
(5, 'dasbor/visi_dan_misi'),
(5, 'dasbor/slide'),
(5, 'dasbor/kategori'),
(5, 'dasbor/buku'),
(5, 'dasbor/saran_buku'),
(5, 'dasbor/kategori_video'),
(5, 'dasbor/video_edukasi'),
(5, 'dasbor/galeri'),
(5, 'dasbor/pengaturan'),
(5, 'dasbor/member'),
(5, 'dasbor/user'),
(6, 'dasbor/profile_sekolah'),
(6, 'dasbor/visi_dan_misi'),
(6, 'dasbor/slide'),
(6, 'dasbor/kategori'),
(6, 'dasbor/buku'),
(6, 'dasbor/saran_buku'),
(6, 'dasbor/kategori_video'),
(6, 'dasbor/video_edukasi'),
(6, 'dasbor/galeri'),
(6, 'dasbor/pengaturan'),
(6, 'dasbor/member'),
(6, 'dasbor/user'),
(7, 'dasbor/profile_sekolah'),
(7, 'dasbor/visi_dan_misi'),
(7, 'dasbor/slide'),
(7, 'dasbor/kategori'),
(7, 'dasbor/buku'),
(7, 'dasbor/saran_buku'),
(7, 'dasbor/kategori_video'),
(7, 'dasbor/video_edukasi'),
(7, 'dasbor/galeri'),
(7, 'dasbor/pengaturan'),
(7, 'dasbor/member'),
(7, 'dasbor/user'),
(8, 'dasbor/profile_sekolah'),
(8, 'dasbor/visi_dan_misi'),
(8, 'dasbor/slide'),
(8, 'dasbor/kategori'),
(8, 'dasbor/buku'),
(8, 'dasbor/saran_buku'),
(8, 'dasbor/kategori_video'),
(8, 'dasbor/video_edukasi'),
(8, 'dasbor/galeri'),
(8, 'dasbor/pengaturan'),
(8, 'dasbor/member'),
(8, 'dasbor/user'),
(9, 'dasbor/profile_sekolah'),
(9, 'dasbor/visi_dan_misi'),
(9, 'dasbor/slide'),
(9, 'dasbor/kategori'),
(9, 'dasbor/buku'),
(9, 'dasbor/saran_buku'),
(9, 'dasbor/kategori_video'),
(9, 'dasbor/video_edukasi'),
(9, 'dasbor/galeri'),
(9, 'dasbor/pengaturan'),
(9, 'dasbor/member'),
(9, 'dasbor/user'),
(10, 'dasbor/profile_sekolah'),
(10, 'dasbor/visi_dan_misi'),
(10, 'dasbor/slide'),
(10, 'dasbor/kategori'),
(10, 'dasbor/buku'),
(10, 'dasbor/saran_buku'),
(10, 'dasbor/kategori_video'),
(10, 'dasbor/video_edukasi'),
(10, 'dasbor/galeri'),
(10, 'dasbor/pengaturan'),
(10, 'dasbor/member'),
(10, 'dasbor/user'),
(11, 'dasbor/profile_sekolah'),
(11, 'dasbor/visi_dan_misi'),
(11, 'dasbor/slide'),
(11, 'dasbor/kategori'),
(11, 'dasbor/buku'),
(11, 'dasbor/saran_buku'),
(11, 'dasbor/kategori_video'),
(11, 'dasbor/video_edukasi'),
(11, 'dasbor/galeri'),
(11, 'dasbor/pengaturan'),
(11, 'dasbor/member'),
(11, 'dasbor/user'),
(1, 'dasbor/profile_sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_video`
--

CREATE TABLE `tb_video` (
  `id` int(11) NOT NULL,
  `judul_video` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `video_kategori` int(11) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `status` int(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_video`
--

INSERT INTO `tb_video` (`id`, `judul_video`, `link`, `keterangan`, `video_kategori`, `date_upload`, `status`) VALUES
(1, 'Kelas 01 - Bahasa Inggris - Body Parts | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/z5Uh-oeU4Bk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:11:29', 1),
(2, 'Kelas 01 - Inklusi: Hyperaktif & ATG - Anggota Tubuh dan Fungsinya | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BjdxPtLqcA4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:12:58', 1),
(3, 'Kelas 02 - Tema 1 Subtema 2 - Matematika (Membandingkan Bilangan) | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/euDQAxTyIAU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:13:43', 1),
(4, 'Kelas 02 - Tema 2 Subtema 1 - SBdp (Bermain Simpai) | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8-nAT4hZj_s\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:14:26', 1),
(5, 'Kelas 03 - Tema 1 Subtema 3 - IPA (Daur Hidup Kupu-Kupu) | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SaN3L830jgs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:15:04', 1),
(6, 'Kelas 03 - Bahasa Daerah - Panulise Basa Jawa (Tulisan Jawa) | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0D8pKITAxM4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:15:31', 1),
(7, 'Kelas 04 IPA Sumber Daya Bahan Tambang', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2xJnRw74xPk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:17:14', 1),
(8, 'Kelas 04 IPA Sumber Daya Hewan dan Tumbuhan Kharisma', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QYgZ5KI6OgI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:17:45', 1),
(9, 'Kelas 05 IPA Wujud Benda', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qm_xHpaQBas\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:18:18', 1),
(10, 'Kelas 05 IPA Struktur dan Lapisan Bumi', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xiXbSgOTVIc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:18:47', 1),
(11, 'Kelas 06 IPA Tumbuhan Yang Hidup di Darat', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/a-qXesaljP0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:19:41', 1),
(12, 'Kelas 06 IPA Penyebab Perubahan Pada Wujud Benda Pelapukan dan Perkaratan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ss1kO7zBKds\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-10-31 06:20:06', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_video_kategori`
--

CREATE TABLE `tb_video_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_video_kategori`
--

INSERT INTO `tb_video_kategori` (`id`, `kategori`, `slug`) VALUES
(1, 'Kelas Dasar', 'kelas_dasar'),
(2, 'Kelas Menengah', 'kelas_menengah'),
(3, 'Kelas Tinggi', 'kelas_tinggi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_visitor`
--

CREATE TABLE `tb_visitor` (
  `ip` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `online` varchar(225) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_visitor`
--

INSERT INTO `tb_visitor` (`ip`, `date`, `hits`, `online`, `time`) VALUES
('114.5.218.123', '2020-09-02', 5, '1599018377', '2020-09-02 03:44:28'),
('114.125.168.107', '2020-09-05', 1, '1599274114', '2020-09-05 02:48:34'),
('114.125.168.179', '2020-09-05', 2, '1599306622', '2020-09-05 02:48:42'),
('114.125.210.91', '2020-09-05', 1, '1599281708', '2020-09-05 04:55:08'),
('114.125.210.108', '2020-09-05', 1, '1599281731', '2020-09-05 04:55:31'),
('114.125.210.79', '2020-09-05', 1, '1599281847', '2020-09-05 04:57:27'),
('114.125.210.126', '2020-09-05', 2, '1599282148', '2020-09-05 05:02:23'),
('114.125.210.83', '2020-09-05', 2, '1599282538', '2020-09-05 05:08:53'),
('114.125.210.72', '2020-09-05', 2, '1599309198', '2020-09-05 07:41:26'),
('114.125.210.68', '2020-09-05', 1, '1599291743', '2020-09-05 07:42:23'),
('114.125.210.70', '2020-09-05', 1, '1599291770', '2020-09-05 07:42:50'),
('114.125.210.104', '2020-09-05', 1, '1599291813', '2020-09-05 07:43:33'),
('114.125.210.120', '2020-09-05', 1, '1599291854', '2020-09-05 07:44:14'),
('114.125.210.98', '2020-09-05', 2, '1599291906', '2020-09-05 07:44:55'),
('114.125.210.75', '2020-09-05', 4, '1599291936', '2020-09-05 07:45:26'),
('182.1.186.145', '2020-09-05', 1, '1599292012', '2020-09-05 07:46:52'),
('182.1.170.249', '2020-09-05', 1, '1599292043', '2020-09-05 07:47:23'),
('182.1.187.221', '2020-09-05', 1, '1599292051', '2020-09-05 07:47:31'),
('114.125.164.89', '2020-09-05', 3, '1599297929', '2020-09-05 09:24:29'),
('114.125.164.86', '2020-09-05', 1, '1599297918', '2020-09-05 09:25:18'),
('114.125.180.242', '2020-09-05', 1, '1599308291', '2020-09-05 12:18:11'),
('36.80.149.165', '2020-09-05', 2, '1599309705', '2020-09-05 12:29:58'),
('36.72.216.213', '2020-09-05', 2, '1599309686', '2020-09-05 12:31:27'),
('182.1.161.116', '2020-09-05', 1, '1599309768', '2020-09-05 12:42:48'),
('114.5.220.10', '2020-09-05', 1, '1599311943', '2020-09-05 13:19:03'),
('182.1.177.122', '2020-09-07', 1, '1599437070', '2020-09-07 00:04:30'),
('182.1.179.226', '2020-09-07', 1, '1599437598', '2020-09-07 00:13:18'),
('182.1.163.234', '2020-09-07', 16, '1599443015', '2020-09-07 01:05:41'),
('182.1.161.238', '2020-09-07', 14, '1599441229', '2020-09-07 01:12:02'),
('182.1.160.106', '2020-09-07', 11, '1599442222', '2020-09-07 01:14:20'),
('182.1.176.114', '2020-09-07', 1, '1599441410', '2020-09-07 01:16:50'),
('182.1.161.250', '2020-09-07', 10, '1599443081', '2020-09-07 01:22:02'),
('182.1.177.242', '2020-09-07', 3, '1599442481', '2020-09-07 01:34:28'),
('182.1.177.130', '2020-09-07', 2, '1599442691', '2020-09-07 01:38:04'),
('182.1.162.238', '2020-09-07', 3, '1599443702', '2020-09-07 01:54:48'),
('114.125.181.234', '2020-09-07', 6, '1599445266', '2020-09-07 02:19:02'),
('114.125.186.234', '2020-09-07', 2, '1599445415', '2020-09-07 02:23:30'),
('114.125.150.26', '2020-09-07', 7, '1599446459', '2020-09-07 02:35:59'),
('114.125.158.11', '2020-09-08', 8, '1599525556', '2020-09-08 00:00:27'),
('182.1.176.72', '2020-09-10', 2, '1599752136', '2020-09-10 15:29:11'),
('182.1.163.160', '2020-09-10', 1, '1599752053', '2020-09-10 15:34:13'),
('182.1.163.68', '2020-09-10', 3, '1599752172', '2020-09-10 15:34:16'),
('182.1.176.156', '2020-09-10', 1, '1599752090', '2020-09-10 15:34:50'),
('182.1.163.144', '2020-09-10', 1, '1599752178', '2020-09-10 15:36:18'),
('114.125.186.65', '2020-09-11', 1, '1599798656', '2020-09-11 04:30:56'),
('114.125.210.111', '2020-09-11', 1, '1599798670', '2020-09-11 04:31:10'),
('114.125.210.79', '2020-09-11', 1, '1599798721', '2020-09-11 04:32:01'),
('114.125.210.96', '2020-09-11', 1, '1599798733', '2020-09-11 04:32:13'),
('114.125.180.142', '2020-09-11', 1, '1599798906', '2020-09-11 04:35:06'),
('114.125.180.146', '2020-09-11', 1, '1599798948', '2020-09-11 04:35:48'),
('114.125.164.55', '2020-09-11', 4, '1599798995', '2020-09-11 04:36:24'),
('114.125.210.84', '2020-09-13', 1, '1599968981', '2020-09-13 03:49:41'),
('114.125.210.104', '2020-09-13', 1, '1599969002', '2020-09-13 03:50:02'),
('114.125.210.80', '2020-09-13', 1, '1599969041', '2020-09-13 03:50:41'),
('114.125.210.121', '2020-09-13', 1, '1599969142', '2020-09-13 03:52:22'),
('114.125.210.89', '2020-09-13', 1, '1599969160', '2020-09-13 03:52:40'),
('114.125.210.94', '2020-09-13', 1, '1599969473', '2020-09-13 03:57:53'),
('114.125.210.100', '2020-09-13', 1, '1600039198', '2020-09-13 23:19:58'),
('114.125.210.83', '2020-09-14', 1, '1600046820', '2020-09-14 01:27:00'),
('114.125.210.127', '2020-09-14', 1, '1600046881', '2020-09-14 01:28:01'),
('114.125.210.84', '2020-09-14', 1, '1600046971', '2020-09-14 01:29:31'),
('114.125.210.76', '2020-09-14', 1, '1600047007', '2020-09-14 01:30:07'),
('114.125.210.87', '2020-09-14', 1, '1600047031', '2020-09-14 01:30:31'),
('114.125.210.63', '2020-09-14', 1, '1600047043', '2020-09-14 01:30:43'),
('114.125.210.110', '2020-09-14', 1, '1600047075', '2020-09-14 01:31:15'),
('114.125.210.61', '2020-09-14', 1, '1600047502', '2020-09-14 01:38:22'),
('114.125.210.118', '2020-09-14', 1, '1600047505', '2020-09-14 01:38:25'),
('114.125.210.117', '2020-09-15', 1, '1600170491', '2020-09-15 11:48:11'),
('114.125.210.94', '2020-09-15', 1, '1600170500', '2020-09-15 11:48:20'),
('114.125.210.89', '2020-09-15', 1, '1600170504', '2020-09-15 11:48:24'),
('114.125.210.90', '2020-09-15', 1, '1600170507', '2020-09-15 11:48:27'),
('114.125.164.107', '2020-09-16', 1, '1600226971', '2020-09-16 03:29:31'),
('114.125.185.32', '2020-09-16', 1, '1600228905', '2020-09-16 04:01:45'),
('114.125.164.92', '2020-09-16', 1, '1600287822', '2020-09-16 20:23:42'),
('114.125.180.253', '2020-09-16', 3, '1600287885', '2020-09-16 20:24:28'),
('182.1.168.235', '2020-09-17', 2, '1600323108', '2020-09-17 06:11:11'),
('182.1.186.247', '2020-09-17', 2, '1600323322', '2020-09-17 06:11:26'),
('182.1.169.243', '2020-09-17', 1, '1600323202', '2020-09-17 06:13:22'),
('114.125.181.147', '2020-09-17', 1, '1600323811', '2020-09-17 06:23:31'),
('182.1.162.251', '2020-09-17', 2, '1600328483', '2020-09-17 07:40:56'),
('182.1.160.119', '2020-09-17', 1, '1600328526', '2020-09-17 07:42:06'),
('182.1.161.251', '2020-09-17', 2, '1600328588', '2020-09-17 07:42:55'),
('114.125.165.188', '2020-09-17', 1, '1600353339', '2020-09-17 14:35:39'),
('114.125.165.176', '2020-09-17', 3, '1600353490', '2020-09-17 14:35:55'),
('114.125.181.36', '2020-09-17', 1, '1600353365', '2020-09-17 14:36:05'),
('114.125.181.108', '2020-09-17', 1, '1600353469', '2020-09-17 14:37:49'),
('114.125.183.168', '2020-09-17', 1, '1600353506', '2020-09-17 14:38:26'),
('182.1.187.175', '2020-09-21', 1, '1600687236', '2020-09-21 11:20:36'),
('182.1.185.179', '2020-09-21', 1, '1600687268', '2020-09-21 11:21:08'),
('182.1.170.39', '2020-09-21', 1, '1600687286', '2020-09-21 11:21:26'),
('182.1.185.59', '2020-09-21', 1, '1600687291', '2020-09-21 11:21:31'),
('66.96.232.145', '2020-09-22', 9, '1600748062', '2020-09-22 03:05:14'),
('114.4.220.103', '2020-09-23', 68, '1600840438', '2020-09-23 00:55:03'),
('182.1.160.59', '2020-09-23', 2, '1600835372', '2020-09-23 04:29:32'),
('182.1.161.179', '2020-09-23', 1, '1600835385', '2020-09-23 04:29:45'),
('182.1.163.99', '2020-09-23', 2, '1600835404', '2020-09-23 04:29:54'),
('114.125.210.126', '2020-09-24', 1, '1600907490', '2020-09-24 00:31:30'),
('114.125.210.77', '2020-09-24', 1, '1600907518', '2020-09-24 00:31:58'),
('114.125.210.92', '2020-09-24', 1, '1600907561', '2020-09-24 00:32:41'),
('114.125.210.59', '2020-09-24', 1, '1600907629', '2020-09-24 00:33:49'),
('114.125.210.122', '2020-09-24', 2, '1600921253', '2020-09-24 00:38:50'),
('114.125.210.85', '2020-09-24', 1, '1600908016', '2020-09-24 00:40:16'),
('114.125.210.74', '2020-09-24', 1, '1600908250', '2020-09-24 00:44:10'),
('114.125.210.105', '2020-09-24', 1, '1600908285', '2020-09-24 00:44:45'),
('114.125.210.60', '2020-09-24', 1, '1600908318', '2020-09-24 00:45:18'),
('114.125.210.104', '2020-09-24', 1, '1600908335', '2020-09-24 00:45:35'),
('114.4.220.103', '2020-09-24', 81, '1600926079', '2020-09-24 02:37:31'),
('182.1.160.78', '2020-09-24', 1, '1600924997', '2020-09-24 05:23:17'),
('114.125.210.83', '2020-09-24', 1, '1600964689', '2020-09-24 16:24:49'),
('114.125.164.179', '2020-09-26', 20, '1601084608', '2020-09-26 01:38:22'),
('114.125.186.211', '2020-09-26', 2, '1601091359', '2020-09-26 03:35:26'),
('182.1.178.185', '2020-10-02', 1, '1601608805', '2020-10-02 03:20:05'),
('182.1.160.161', '2020-10-02', 2, '1601608919', '2020-10-02 03:21:52'),
('182.1.161.169', '2020-10-02', 1, '1601608925', '2020-10-02 03:22:05'),
('182.1.176.159', '2020-10-06', 1, '1601965132', '2020-10-06 06:18:52'),
('182.1.160.171', '2020-10-06', 1, '1601965156', '2020-10-06 06:19:16'),
('182.1.177.183', '2020-10-06', 1, '1601965299', '2020-10-06 06:21:39'),
('182.1.163.163', '2020-10-06', 1, '1601965305', '2020-10-06 06:21:45'),
('182.1.161.179', '2020-10-06', 1, '1601965352', '2020-10-06 06:22:32'),
('182.1.160.59', '2020-10-06', 1, '1601965365', '2020-10-06 06:22:45'),
('114.125.185.176', '2020-10-06', 1, '1601965507', '2020-10-06 06:25:07'),
('114.125.185.164', '2020-10-06', 1, '1601965534', '2020-10-06 06:25:34'),
('114.125.169.137', '2020-10-06', 2, '1601965545', '2020-10-06 06:25:41'),
('114.125.169.125', '2020-10-06', 4, '1601965664', '2020-10-06 06:25:59'),
('114.125.169.180', '2020-10-06', 2, '1601965615', '2020-10-06 06:26:47'),
('114.125.185.112', '2020-10-06', 1, '1601965618', '2020-10-06 06:26:58'),
('114.125.169.48', '2020-10-06', 1, '1601965625', '2020-10-06 06:27:05'),
('114.125.169.160', '2020-10-06', 1, '1601965654', '2020-10-06 06:27:34'),
('182.1.161.104', '2020-10-06', 3, '1601965723', '2020-10-06 06:28:24'),
('120.188.78.98', '2020-10-06', 14, '1601976813', '2020-10-06 09:09:14'),
('66.96.232.145', '2020-10-06', 32, '1601976769', '2020-10-06 09:11:14'),
('66.96.232.145', '2020-10-07', 1, '1602033621', '2020-10-07 01:20:21'),
('114.5.252.212', '2020-10-07', 2, '1602076301', '2020-10-07 13:11:41'),
('180.244.69.253', '2020-10-09', 5, '1602231502', '2020-10-09 08:05:09'),
('66.96.232.145', '2020-10-17', 5, '1602905781', '2020-10-17 03:16:19'),
('114.125.185.245', '2020-10-19', 8, '1603151360', '2020-10-19 23:46:40'),
('114.125.210.103', '2020-10-21', 2, '1603255410', '2020-10-21 04:43:28'),
('114.125.210.89', '2020-10-21', 1, '1603255442', '2020-10-21 04:44:02'),
('114.125.210.93', '2020-10-21', 1, '1603255461', '2020-10-21 04:44:21'),
('13.211.237.197', '2020-10-21', 1, '1603287815', '2020-10-21 13:43:35'),
('66.96.232.145', '2020-10-22', 1, '1603341297', '2020-10-22 04:34:57'),
('114.125.183.47', '2020-10-23', 1, '1603427322', '2020-10-23 04:28:42'),
('182.1.160.59', '2020-10-23', 2, '1603443376', '2020-10-23 08:56:05'),
('182.1.179.47', '2020-10-23', 3, '1603443399', '2020-10-23 08:56:29'),
('182.1.160.67', '2020-10-23', 1, '1603443487', '2020-10-23 08:58:07'),
('182.1.170.35', '2020-10-25', 1, '1603619271', '2020-10-25 09:47:51'),
('182.1.186.27', '2020-10-25', 1, '1603619372', '2020-10-25 09:49:32'),
('182.1.184.103', '2020-10-25', 1, '1603619415', '2020-10-25 09:50:15'),
('182.1.171.3', '2020-10-25', 1, '1603619492', '2020-10-25 09:51:32'),
('182.1.187.11', '2020-10-25', 1, '1603619506', '2020-10-25 09:51:46'),
('182.1.171.247', '2020-10-25', 1, '1603619586', '2020-10-25 09:53:06'),
('114.4.213.233', '2020-10-26', 6, '1603723377', '2020-10-26 14:40:09'),
('34.232.95.213', '2020-10-28', 1, '1603884665', '2020-10-28 11:31:05'),
('114.125.210.109', '2020-10-31', 1, '1604119444', '2020-10-31 04:44:04'),
('114.125.210.89', '2020-10-31', 1, '1604119476', '2020-10-31 04:44:36'),
('114.125.210.103', '2020-10-31', 1, '1604119496', '2020-10-31 04:44:56'),
('114.125.210.71', '2020-10-31', 1, '1604119782', '2020-10-31 04:49:42'),
('114.125.210.102', '2020-10-31', 2, '1604120021', '2020-10-31 04:50:04'),
('114.125.210.84', '2020-10-31', 2, '1604119985', '2020-10-31 04:51:39'),
('114.125.210.98', '2020-10-31', 1, '1604119926', '2020-10-31 04:52:06'),
('114.125.210.101', '2020-10-31', 1, '1604119936', '2020-10-31 04:52:16'),
('114.4.214.199', '2020-10-31', 14, '1604125226', '2020-10-31 06:08:02'),
('114.125.171.103', '2020-10-31', 1, '1604171263', '2020-10-31 19:07:43'),
('182.1.160.3', '2020-10-31', 4, '1604172026', '2020-10-31 19:17:25'),
('182.1.168.147', '2020-10-31', 1, '1604173391', '2020-10-31 19:43:11'),
('182.1.177.223', '2020-10-31', 1, '1604173705', '2020-10-31 19:48:25'),
('182.1.162.147', '2020-10-31', 4, '1604173728', '2020-10-31 19:48:34'),
('182.1.179.159', '2020-10-31', 2, '1604173805', '2020-10-31 19:49:15'),
('182.1.161.147', '2020-10-31', 1, '1604174617', '2020-10-31 20:03:37'),
('182.1.184.19', '2020-10-31', 1, '1604178189', '2020-10-31 21:03:09'),
('114.125.210.98', '2020-11-01', 2, '1604220890', '2020-11-01 02:12:29'),
('114.125.210.86', '2020-11-01', 1, '1604196845', '2020-11-01 02:14:05'),
('114.125.210.109', '2020-11-01', 1, '1604196867', '2020-11-01 02:14:27'),
('114.125.210.119', '2020-11-01', 1, '1604196923', '2020-11-01 02:15:23'),
('114.125.210.76', '2020-11-01', 1, '1604197121', '2020-11-01 02:18:41'),
('114.125.210.112', '2020-11-01', 1, '1604197143', '2020-11-01 02:19:03'),
('114.125.210.114', '2020-11-01', 1, '1604197583', '2020-11-01 02:26:23'),
('114.125.210.117', '2020-11-01', 1, '1604220571', '2020-11-01 08:49:31'),
('114.125.210.113', '2020-11-01', 1, '1604220640', '2020-11-01 08:50:40'),
('114.125.210.127', '2020-11-01', 1, '1604220657', '2020-11-01 08:50:57'),
('114.125.210.93', '2020-11-01', 1, '1604220707', '2020-11-01 08:51:47'),
('114.125.210.81', '2020-11-01', 1, '1604220725', '2020-11-01 08:52:05'),
('114.125.210.90', '2020-11-01', 3, '1604221116', '2020-11-01 08:58:23'),
('114.125.210.112', '2020-11-05', 1, '1604576241', '2020-11-05 11:37:21'),
('114.125.169.242', '2020-11-05', 2, '1604576831', '2020-11-05 11:45:02'),
('114.125.210.102', '2020-11-06', 1, '1604625222', '2020-11-06 01:13:42'),
('114.125.210.89', '2020-11-09', 1, '1604895551', '2020-11-09 04:19:11'),
('51.158.98.255', '2020-11-15', 1, '1605448739', '2020-11-15 13:58:59'),
('114.125.210.92', '2020-11-16', 1, '1605514321', '2020-11-16 08:12:01'),
('114.125.210.85', '2020-11-16', 1, '1605514340', '2020-11-16 08:12:20'),
('114.125.210.102', '2020-11-16', 1, '1605514391', '2020-11-16 08:13:11'),
('182.1.163.241', '2020-11-20', 1, '1605888627', '2020-11-20 16:10:27'),
('51.15.195.246', '2020-11-21', 1, '1605998890', '2020-11-21 22:48:10'),
('163.172.148.199', '2020-11-23', 1, '1606101588', '2020-11-23 03:19:48'),
('114.125.210.109', '2020-11-27', 1, '1606457121', '2020-11-27 06:05:21'),
('114.125.210.103', '2020-11-27', 1, '1606470785', '2020-11-27 09:53:05'),
('114.125.184.54', '2020-11-28', 1, '1606524720', '2020-11-28 00:52:00'),
('202.80.216.194', '2020-11-30', 4, '1606754335', '2020-11-30 16:35:08'),
('66.249.79.57', '2020-12-01', 1, '1606783842', '2020-12-01 00:50:42'),
('167.172.244.15', '2020-12-01', 1, '1606853374', '2020-12-01 20:09:34'),
('205.169.39.182', '2020-12-03', 2, '1606995922', '2020-12-03 11:44:58'),
('65.155.30.101', '2020-12-07', 1, '1607377251', '2020-12-07 21:40:51'),
('205.169.39.49', '2020-12-07', 1, '1607377268', '2020-12-07 21:41:08'),
('205.169.39.18', '2020-12-10', 1, '1607579240', '2020-12-10 05:47:20'),
('116.206.12.58', '2020-12-11', 2, '1607730355', '2020-12-11 23:45:49'),
('52.211.27.175', '2020-12-16', 1, '1608121577', '2020-12-16 12:26:17'),
('138.246.253.24', '2020-12-17', 1, '1608188708', '2020-12-17 07:05:08'),
('66.249.71.37', '2020-12-20', 1, '1608447936', '2020-12-20 07:05:36'),
('138.246.253.24', '2020-12-20', 1, '1608458789', '2020-12-20 10:06:29'),
('66.249.65.247', '2020-12-23', 1, '1608750889', '2020-12-23 19:14:49'),
('157.46.123.45', '2020-12-24', 1, '1608788476', '2020-12-24 05:41:16'),
('66.249.71.37', '2020-12-25', 1, '1608854876', '2020-12-25 00:07:56'),
('35.223.145.37', '2020-12-26', 2, '1609000448', '2020-12-26 14:39:12'),
('138.246.253.24', '2020-12-26', 1, '1609025471', '2020-12-26 23:31:11'),
('138.246.253.24', '2020-12-27', 1, '1609031512', '2020-12-27 01:11:52'),
('66.249.79.54', '2020-12-28', 1, '1609126689', '2020-12-28 03:38:09'),
('114.6.128.5', '2020-12-30', 1, '1609342824', '2020-12-30 15:40:24'),
('138.246.253.24', '2020-12-31', 1, '1609408261', '2020-12-31 09:51:01'),
('138.246.253.24', '2021-01-01', 1, '1609493498', '2021-01-01 09:31:38'),
('66.249.69.69', '2021-01-06', 1, '1609939309', '2021-01-06 13:21:49'),
('138.246.253.24', '2021-01-08', 1, '1610123670', '2021-01-08 16:34:30'),
('138.246.253.24', '2021-01-09', 1, '1610188452', '2021-01-09 10:34:12'),
('212.47.251.118', '2021-01-09', 1, '1610210053', '2021-01-09 16:34:13'),
('163.172.180.25', '2021-01-11', 1, '1610328057', '2021-01-11 01:20:57'),
('51.15.195.246', '2021-01-14', 1, '1610593059', '2021-01-14 02:57:39'),
('138.246.253.24', '2021-01-14', 1, '1610657638', '2021-01-14 20:53:58'),
('51.158.118.231', '2021-01-15', 1, '1610682104', '2021-01-15 03:41:44'),
('138.246.253.24', '2021-01-16', 1, '1610833075', '2021-01-16 21:37:55'),
('138.246.253.24', '2021-01-21', 2, '1611234641', '2021-01-21 09:49:51'),
('66.249.65.249', '2021-01-23', 1, '1611417650', '2021-01-23 16:00:50'),
('132.145.208.51', '2021-01-23', 2, '1611441617', '2021-01-23 20:01:30'),
('95.217.22.22', '2021-01-25', 1, '1611547445', '2021-01-25 04:04:05'),
('138.246.253.24', '2021-01-29', 2, '1611942985', '2021-01-29 02:36:03'),
('34.253.92.29', '2021-01-31', 1, '1612055550', '2021-01-31 01:12:30'),
('182.1.161.9', '2021-01-31', 1, '1612066943', '2021-01-31 04:22:23'),
('182.1.161.133', '2021-01-31', 1, '1612066974', '2021-01-31 04:22:54'),
('202.80.219.202', '2021-01-31', 5, '1612067610', '2021-01-31 04:25:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_article`
--

CREATE TABLE `web_article` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL,
  `article_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `overview` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keyword` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `language` varchar(2) NOT NULL DEFAULT 'ID',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `publish_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unpublish_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `view` int(11) NOT NULL DEFAULT 0,
  `visibility` int(11) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_article`
--

INSERT INTO `web_article` (`id`, `admin_id`, `article_category`, `name`, `slug`, `overview`, `description`, `keyword`, `tag`, `image`, `language`, `created_at`, `updated_at`, `publish_at`, `unpublish_at`, `view`, `visibility`, `status`) VALUES
(1, 0, 1, 'Pidato Mendikbud Nadiem Makarim pada Upacara Bendera Peringatan Hari Guru Nasional 2019  28 November 2019', 'Pidato_Mendikbud_Nadiem_Makarim_pada_Upacara_Bendera_Peringatan_Hari_Guru_Nasional_2019__28_November_2019', NULL, '<p style=\"text-align:justify\">Assalamu alaikum warahmatullahi wabarakatuh,<br />\r\nShalom,<br />\r\nOm Swastiastu,<br />\r\nNamo Buddhaya,<br />\r\nRahayu,<br />\r\nSelamat pagi dan salam kebajikan bagi kita semua,<br />\r\n<br />\r\nBapak dan Ibu Guru yang saya hormati, biasanya tradisi Hari Guru dipenuhi oleh kata-kata inspiratif dan retorik. Mohon maaf, tetapi hari ini pidato saya akan sedikit berbeda. Saya ingin berbicara apa adanya, dengan hati yang tulus, kepada semua guru di Indonesia, dari Sabang sampai Merauke.<br />\r\n<br />\r\nGuru Indonesia yang tercinta, tugas Anda adalah yang termulia sekaligus yang tersulit. Anda ditugasi untuk membentuk masa depan bangsa, tetapi lebih sering diberi aturan dibandingkan dengan pertolongan. Anda ingin membantu murid yang mengalami ketertinggalan di kelas, tetapi waktu Anda habis untuk mengerjakan tugas administratif tanpa manfaat yang jelas.<br />\r\n<br />\r\nAnda tahu betul bahwa potensi anak tidak dapat diukur dari hasil ujian, tetapi terpaksa mengejar angka karena didesak berbagai pemangku kepentingan. Anda ingin mengajak murid keluar kelas untuk belajar dari dunia sekitarnya, tetapi kurikulum yang begitu padat menutup pintu petualangan.<br />\r\n<br />\r\nAnda frustasi karena Anda tahu bahwa di dunia nyata kemampuan berkarya dan berkolaborasi akan menentukan kesuksesan anak, bukan kemampuan menghafal. Anda tahu bahwa setiap anak memiliki kebutuhan berbeda, tetapi keseragaman telah mengalahkan keberagaman sebagai prinsip dasar birokrasi. Anda ingin setiap murid terinspirasi, tetapi Anda tidak diberi kepercayaan untuk berinovasi.<br />\r\n<br />\r\nSaya tidak akan membuat janji-janji kosong kepada Anda. Perubahan adalah hal yang sulit dan penuh dengan ketidaknyamanan. Satu hal yang pasti, saya akan berjuang untuk kemerdekaan belajar di Indonesia. Namun, perubahan tidak dapat dimulai dari atas. Semuanya berawal dan berakhir dari guru. Jangan menunggu aba-aba, jangan menunggu perintah. Ambil langkah pertama.<br />\r\n<br />\r\nBesok, di manapun Anda berada, lakukan perubahan kecil di kelas Anda.</p>\r\n\r\n<ul>\r\n	<li>Ajaklah kelas berdiskusi, bukan hanya mendengar.</li>\r\n	<li>Berikan kesempatan kepada murid untuk mengajar di kelas.</li>\r\n	<li>Cetuskan proyek bakti sosial yang melibatkan seluruh kelas.</li>\r\n	<li>Temukan suatu bakat dalam diri murid yang kurang percaya diri.</li>\r\n	<li>Tawarkan bantuan kepada guru yang sedang mengalami kesulitan.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nApa pun perubahan kecil itu, jika setiap guru melakukannya secara serentak, kapal besar bernama Indonesia ini pasti akan bergerak.<br />\r\nSelamat Hari Guru,<br />\r\n#merdekabelajar #gurupenggerak<br />\r\n<br />\r\nWassalamu alaikum warrahmatullahi wabarakatuh,<br />\r\nShalom,<br />\r\nOm Santi Santi Om,<br />\r\nNamo Buddhaya,<br />\r\nRahayu.<br />\r\n<br />\r\nJakarta, 25 November 2019<br />\r\nMenteri Pendidikan dan Kebudayaan<br />\r\nRepublik Indonesia,<br />\r\n<br />\r\nNadiem Anwar Makarim</p>\r\n\r\n<p style=\"text-align:justify\">Penulis : pengelola web kemdikbud</p>\r\n', '', '', 'http://sdinpresjayamakmur.sch.id/source/2.jpg', 'ID', '2020-06-24 05:37:41', '2020-09-05 03:02:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1),
(2, 0, 2, 'Mendikbud dan Mendagri Gelar Rakor dengan Kepala Daerah Bahas Pembelajaran di Masa Pandemi  02 September 2020', 'Mendikbud_dan_Mendagri_Gelar_Rakor_dengan_Kepala_Daerah_Bahas_Pembelajaran_di_Masa_Pandemi__02_September_2020', NULL, '<p>Jakarta, Kemendikbud --- Menteri Pendidikan dan Kebudayaan (Mendikbud) Nadiem Anwar Makarim bersama Menteri Dalam Negeri Muhammad Tito Karnavian melakukan rapat koordinasi (rakor) dengan seluruh kepala daerah untuk memastikan kebijakan pembelajaran di masa Pandemi COVID-19 terlaksana dengan baik di daerah.<br />\r\n<br />\r\n&ldquo;Prinsip kebijakan pendidikan di masa Pandemi COVID-19 adalah mengutamakan kesehatan dan keselamatan peserta didik, pendidik, tenaga kependidikan, keluarga, dan masyarakat secara umum, serta mempertimbangkan tumbuh kembang peserta didik dan kondisi psikososial dalam upaya pemenuhan layanan pendidikan selama pandemi COVID-19,&rdquo; jelas Mendikbud dalam rapat koordinasi (rakor) bersama Kepala Daerah seluruh Indonesia tentang Kebijakan Pembelajaran di Masa Pandemi COVID-19, secara daring, Rabu (02/09).<br />\r\n<br />\r\nPemerintah telah mengeluarkan berbagai kebijakan dan inisiatif untuk menghadapi kendala pembelajaran di masa pandemi COVID-19, seperti&nbsp; Revisi Surat Keputusan Bersama (SKB) Empat Menteri yang telah diterbitkan tanggal 7 Agustus 2020, untuk menyesuaikan kebijakan pembelajaran di era pandemi saat ini. Selain itu,&nbsp; sekolah diberi fleksibilitas untuk memilih kurikulum yang sesuai dengan kebutuhan pembelajaran siswa di masa pandemi, sebagaimana ditetapkan dalam Keputusan Menteri Pendidikan dan Kebudayaan terkait kurikulum pada masa darurat.<br />\r\n<br />\r\n&ldquo;Kemendikbud juga melakukan inisiatif membantu mengatasi kendala yang dihadapi guru, orang tua, dan anak selama pembelajaran jarak jauh,&rdquo; tutur Mendikbud.<br />\r\n<br />\r\nMempertimbangkan kebutuhan pembelajaran, berbagai masukan dari para ahli dan organisasi serta mempertimbangkan evaluasi implementasi SKB Empat Menteri, Pemerintah melakukan penyesuaian terkait pelaksanaan pembelajaran di zona kuning dan hijau dapat melaksanakan pembelajaran tatap muka dengan penerapan protokol kesehatan yang sangat ketat.<br />\r\n<br />\r\nBagi daerah yang berada di zona oranye dan merah dilarang melakukan pembelajaran tatap muka di satuan pendidikan dan tetap melanjutkan Belajar dari Rumah (BDR). Berdasarkan data per 23 Agustus 2020 dari http://covid19.go.id/ terdapat sekitar 48 persen peserta didik masih berada di zona merah dan&nbsp; oranye. Sementara itu, sekitar 52 persen peserta didik berada di zona kuning dan hijau.<br />\r\n<br />\r\nProsedur pengambilan keputusan pembelajaran tatap muka di zona kuning dan hijau, kata Mendikbud, tetap dilakukan secara bertingkat seperti pada SKB sebelumnya. Pemda/kantor/kanwil Kemenag dan sekolah memiliki kewenangan penuh untuk menentukan apakah daerah atau sekolahnya dapat mulai melakukan pembelajaran tatap muka. &ldquo;Bukan berarti ketika sudah berada di zona hijau atau kuning, daerah atau sekolah wajib mulai tatap muka kembali ya,&rdquo; Mendikbud menjelaskan.<br />\r\n<br />\r\nMendikbud juga menekankan, bahwa sekali pun daerah sudah dalam zona hijau atau kuning, serta Pemda dan sekolah sudah memberikan izin pembelajaran tatap muka, keputusan terakhir ada di orang tua. Apabila orang tua tidak mengizinkan putra-putrinya mengikuti pembelajaran tatap muka, maka anaknya tetap melanjutkan belajar dari rumah. &ldquo;Pembelajaran tatap muka di sekolah di zona kuning dan hijau diperbolehkan, namun tidak diwajibkan,&rdquo; tegas Mendikbud.<br />\r\n<br />\r\nTahapan pembelajaran tatap muka satuan pendidikan di zona hijau dan zona kuning dalam revisi SKB Empat Menteri dilakukan secara bersamaan pada jenjang pendidikan dasar dan menengah dengan pertimbangan risiko kesehatan yang tidak berbeda untuk kelompok umur pada dua jenjang tersebut. Sementara itu untuk PAUD dapat memulai pembelajaran tatap muka paling cepat dua bulan setelah jenjang pendidikan dasar dan menengah.<br />\r\n<br />\r\n&ldquo;Selain itu, dengan pertimbangan bahwa pembelajaran praktik adalah keahlian inti SMK, pelaksanaan pembelajaran praktik bagi peserta didik SMK diperbolehkan di semua zona dengan wajib menerapkan protokol kesehatan yang ketat,&rdquo; ucap Mendikbud.<br />\r\n&nbsp;<br />\r\n&ldquo;Evaluasi akan selalu dilakukan untuk mengutamakan kesehatan dan keselamatan. Dinas Pendidikan, Dinas Kesehatan Provinsi atau Kabupaten/Kota, bersama Kepala Satuan Pendidikan akan terus berkoordinasi dengan gugus tugas percepatan penanganan COVID-19 untuk memantau tingkat risiko COVID-19 di daerah,&rdquo; imbuh Mendikbud.<br />\r\n<br />\r\n&ldquo;Apabila terindikasi dalam kondisi tidak aman, terdapat kasus terkonfirmasi positif COVID-19, atau tingkat risiko daerah berubah menjadi oranye atau merah, satuan pendidikan wajib ditutup kembali,&rdquo; tegas Mendikbud.<br />\r\n<br />\r\nSejak Maret 2020, Kemendikbud telah melakukan penyesuaian kebijakan pendidikan, serta menyediakan inisiatif dan solusi di masa pandemi COVID-19. Pada bulan Maret, terdapat pembatalan ujian nasional, ujian sekolah tidak perlu mengukur ketuntasan kurikulum, sekolah yang belum melaksanakan ujian dapat menggunakan nilai lima semester terakhir untuk menentukan kelulusan siswa, mekanisme PPDB tidak mengumpulkan siswa dan orangtua, PPDB jalur prestasi berdasarkan akumulasi nilai rapor dan prestasi lain.<br />\r\n<br />\r\nBulan Maret &ndash; April 2020, Kemendikbud melakukan penyediaan kuota gratis, realokasi anggaran Pendidikan Tinggi sebesar Rp 405 M untuk Rumah Sakit Pendidikan Perguruan Tinggi Neger dan Perguruan Tinggi Swasta, realokasi anggaran Kebudayaan Rp 70 M untuk kegiatan Belajar dari Rumah melalui TVRI, peluncuran portal Guru Berbagi, relaksasi penggunaan BOS dan BOP untuk pembayaran honor guru, serta pembelajaran daring.<br />\r\n<br />\r\nBulan Mei &ndash; Juni 2020, Kemendikbud memberikan bantuan Uang Kuliah Tunggal (UKT) untuk 410 ribu mahasiswa, BOS Afirmasi dan BOS Kinerja diperluas cakupannya untuk sekolah swasta (bukan hanya sekolah negeri). Pada bulan Juli &ndash; Agustus 2020, Sekolah di zona hijau dan kuning diperbolehkan melakukan pembukaan kembali, zona lain masih dilarang, peluncuran kurikulum dalam kondisi khusus, dan Pemberian modul pembelajaran bagi PAUD dan SD.<br />\r\n<br />\r\nKemendikbud juga akan memberikan bantuan subsidi kuota internet untuk siswa, guru, mahasiswa dan dosen selama empat bulan (September-Desember 2020). Besaran bantuan, siswa 35 GB/bulan, guru 42 GB/bulan, serta mahasiswa dan dosen 50 GB/bulan. Kepala satuan pendidikan harus melengkapi nomor telepon selular (handphone) peserta didik yang aktif melalui aplikasi dapodik sebelum 11 September 2020.<br />\r\n<br />\r\nAgar kebijakan pembelajaran di masa Pandemi COVID-19 terlaksana dengan baik di daerah, Mendagri mengimbau kepada pemerintah daerah untuk memastikan sekolah yang sudah pembelajaran tatap muka (PTM) di zona merah dan zona oranye untuk kembali belajar dari rumah. Untuk zona hijau dan kuning, Mendagri meminta Pemda mempersiapkan dana untuk membantu sekolah memenuhi protokol kesehatan yang terdapat di daftar periksa kesiapan pembelajaran dan mengawal implementasinya.<br />\r\n<br />\r\nMendagri juga mengimbau kepada Pemerintah daerah untuk memberikan pemahaman bahwa kurikulum darurat dan modul pembelajaran tersedia dan dapat digunakan, akselerasi testing populasi di daerah untuk memenuhi standar minimal jumlah tes (1 orang per 1,000 penduduk setiap minggu untuk semua daerah) sehingga peta risiko zonasi lebih akurat.<br />\r\n<br />\r\n&ldquo;Saya meminta Pemda untuk meningatkan sekolah memastikan pengisian nomor handphone siswa di dapodik untuk menerima bantuan penyediaan kuota,&rdquo; pesan Mendagri.<br />\r\n<br />\r\nPemerintah pusat telah mengalokasikan dukungan dan bantuan, sementara pemerintah daerah bertanggung jawab untuk memenuhi kebutuhan sekolah. Pemerintah daerah daerah dapat membantu membiayai pemenuhan kebutuhan sekolah untuk melakukan pembelajaran tatap muka seperti sarana sanitasi dan kebersihan, pengukur suhu tubuh tembak, dan masker.<br />\r\n<br />\r\n&rdquo;Pemda diimbau untuk memastikan dan mengawasi implementasi SKB di sekolah,&rdquo; pesan Mendagri.<br />\r\n<br />\r\nPada kesempatan ini, Gubernur Kalimantan Barat, Sutarmidji, mendukung kebijakan SKB Empat Menteri. Sekolah di provinsi Kalimantan Barat yang diperbolehkan masuk adalah sekolah yang berstatus zona kuning dan hijau dengan penerapan protokol kesehatan yang sangat ketat.<br />\r\n<br />\r\nPelaksanaan kegiatan pembelajaran, kata Sutarmidji, menerapkan prinsip 3 M (menggunakan masker, menjaga jarak, dan mencuci tangan). Setiap guru yang masuk sekolah akan dilakukan tes swab dan siswa tes rapid. Pemerintah Daerah memberikan lima masker kain untuk setiap siswa dengan warna yang berbeda yang digunakan setiap harinya sehingga dapat dipastikan bahwa setiap hari siswa akan mengganti maskernya.<br />\r\n<br />\r\n&ldquo;Waktu pembelajaran tatap muka juga akan dibatasi sehingga akan dilakukan juga pengaturan mata pelajaran antara PJJ dan PTM, dan akan diatur di kelas satu kursi/meja/anak untuk meminimalisasi terjadinya kontak fisik antarsiswa,&rdquo; jelasnya.<br />\r\n<br />\r\nSementara itu, Wakil Walikota Tegal, Muhamad Jumadi, mengatakan daerahnya melakukan aturan pembelajaran sesuai SKB Empat Menteri berprinsip pada kesehatan dan keselamatan siswa. Pelaksanaan pembelajaran tatap muka akan dilakukan dengan izin orang tua siswa. &ldquo;Kota Tegal melakukan kombinasi PTM dan PJJ dengan skema 3 hari masuk, 4 hari libur, dan 7 hari PJJ secara bergiliran serta dengan prosedur pengajuan sekolah untuk kegiatan belajar mengajar tatap muka,&rdquo; jelasnya. &nbsp;<br />\r\n<br />\r\nKepala Dinas Pendidikan Provinsi Riau, Zul Ikram mengapresiasi kebijakan pemberian bantuan subsidi kuota internet, serta revisi SKB Empat Menteri karena dinilainya memberi keleluasaan bagi pemerintah daerah untuk menentukan kebijakan sesuai dengan kondisi wilayahnya. &ldquo;Alhamdulillah melalui SKB Empat Menteri telah mengumumkan suatu hal baru yang utamanya kemerdekaan pembelajaran. Ini sebuah kemajuan, zona kuning diperbolehkan melakukan pembelajaran tatap muka sesuai dengan protokol kesehatan,&rdquo; ucapnya.<br />\r\n<br />\r\nSenada dengan itu, Kepala Dinas Pendidikan, Pemuda, dan Olahraga Kabupaten Kepulauan Talaud Provinsi Sulawesi Utara, Adrianson A.M Taarega mengatakan pihaknya sangat mendukung ketika zona hijau dan kuning sudah diperbolehkan membuka pembelajaran tatap muka dengan syarat memenuhi seluruh daftar periksa. &ldquo;Kebijakan yang dijelaskan hari ini tepat dengan kondisi wilayah kami. Pembelajaran tatap muka langsung hal tersebut sangat baik,&rdquo; tuturnya.<br />\r\nPada bagian terakhir dalam rakor tersebut, Wakil Walikota Malang, Sofyan Edi Jarwoko mengungkapkan rasa terima kasihnya karena dana BOS sangat bermanfaat bagi masyarakatnya di masa pandemi ini.</p>\r\n\r\n<p>Jakarta, 2 September 2020<br />\r\nBiro Kerja Sama dan Hubungan Masyarakat<br />\r\nSekretariat Jenderal<br />\r\nKementerian Pendidikan dan Kebudayaan<br />\r\n<br />\r\nLaman: kemdikbud.go.id<br />\r\nTwitter: twitter.com/Kemdikbud_RI<br />\r\nInstagram: instagram.com/kemdikbud.ri<br />\r\nFacebook: facebook.com/kemdikbud.ri<br />\r\nYoutube: KEMENDIKBUD RI<br />\r\nPertanyaan dan Pengaduan: ult.kemdikbud.go.id<br />\r\n<br />\r\n#berprestasidarirumah<br />\r\n#merdekabelajar<br />\r\n#belajardarirumah<br />\r\n#bersamahadapikorona<br />\r\nSumber : Siaran Pers Kementerian Pendidikan dan Kebudayaan Nomor : 240/sipres/A6/IX/2020</p>\r\n\r\n<p>Penulis : pengelola web kemdikbud</p>\r\n\r\n<p>Penyalin: Pengelola Web SD Inpres Jaya Makmur</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'http://sdinpresjayamakmur.sch.id/source/3.jpg', 'ID', '2020-06-24 05:40:55', '2020-09-05 03:45:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_article_category`
--

CREATE TABLE `web_article_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_article_category`
--

INSERT INTO `web_article_category` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Informasi', 'informasi', 1),
(2, 'Berita', 'berita', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_banner`
--

CREATE TABLE `web_banner` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL,
  `banner_category_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` int(1) NOT NULL DEFAULT 0,
  `mode` int(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `language` varchar(2) NOT NULL DEFAULT 'ID',
  `view_quota` int(11) DEFAULT NULL,
  `view_usage` int(11) DEFAULT NULL,
  `click_quota` int(11) DEFAULT NULL,
  `click_usage` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `publish_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unpublish_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_banner`
--

INSERT INTO `web_banner` (`id`, `admin_id`, `banner_category_id`, `name`, `description`, `url`, `target`, `mode`, `image`, `language`, `view_quota`, `view_usage`, `click_quota`, `click_usage`, `created_at`, `updated_at`, `publish_at`, `unpublish_at`, `sort`, `status`) VALUES
(1, 0, 1, 'Nama', '', '', 0, 1, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/home-banner.jpg', 'ID', NULL, NULL, NULL, NULL, '2020-06-24 06:11:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(2, 0, 1, '', '', '', 0, 1, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/home-banner.jpg', 'ID', NULL, NULL, NULL, NULL, '2020-06-24 06:12:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(3, 0, 1, 'Visi dan Misi SD Inpres Jaya Makmur', '', '', 0, 1, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/4.png', 'ID', NULL, NULL, NULL, NULL, '2020-08-28 06:20:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(4, 0, 1, 'Foto Bersama Bapak dan Ibu Guru SD Inpres Jaya Makmur', '', '', 0, 1, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/1.png', 'ID', NULL, NULL, NULL, NULL, '2020-08-28 06:22:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(5, 0, 1, 'Foto Bersama Bapak Ibu Guru Beserta Siswa', '', '', 0, 1, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/2.png', 'ID', NULL, NULL, NULL, NULL, '2020-08-28 06:23:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_banner_category`
--

CREATE TABLE `web_banner_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `thum` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_banner_category`
--

INSERT INTO `web_banner_category` (`id`, `thum`, `name`, `slug`, `status`) VALUES
(1, 'http://sdinpresjayamakmur.sch.id/source/SISWA/applicationsscience_103774.png', 'Kategori 1', 'kategori_1', 1),
(2, 'http://sdinpresjayamakmur.sch.id/source/SISWA/applicationsscience_103774.png', 'Kategori 2', 'kategori_2', 1),
(3, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/home-banner.jpg', 'Pembelajaran', 'pembelajaran', 1),
(4, 'http://sdinpresjayamakmur.sch.id/source/SLIDE/home-banner.jpg', 'Olah Raga', 'olah_raga', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_direktori_alumni`
--

CREATE TABLE `web_direktori_alumni` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `tahun_lulus` varchar(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_direktori_alumni`
--

INSERT INTO `web_direktori_alumni` (`id`, `nama`, `tempat`, `tanggal_lahir`, `foto`, `tahun_lulus`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Nama Alumni 1', 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '2010', '2020-06-24 06:09:56', NULL, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_direktori_guru_staf`
--

CREATE TABLE `web_direktori_guru_staf` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip/nis` int(20) DEFAULT NULL,
  `studi` varchar(100) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `kategori` enum('1','2') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_direktori_guru_staf`
--

INSERT INTO `web_direktori_guru_staf` (`id`, `nama`, `nip/nis`, `studi`, `tempat`, `tanggal_lahir`, `foto`, `kategori`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Nama Guru 1', 123456789, '1', 'Merauke', '2020-01-01', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '1', '2020-06-24 05:45:15', NULL, '1'),
(2, 'Nama Guru 2', 123456789, '2', 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '1', '2020-06-24 05:45:46', NULL, '1'),
(3, 'Nama Guru 3', 123456789, '3', 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '1', '2020-06-24 05:46:03', NULL, '1'),
(4, 'Nama Staf 1', 123456789, '1', 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '2', '2020-06-24 05:46:51', NULL, '1'),
(5, 'Nama Staf 2', 123456789, '2', 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '2', '2020-06-24 05:47:05', NULL, '1'),
(6, 'Nama Staf 3', 123456789, '3', 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/GURU/user.png', '2', '2020-06-24 05:47:18', NULL, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_direktori_siswa`
--

CREATE TABLE `web_direktori_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nis` int(20) DEFAULT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `kelas` varchar(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_direktori_siswa`
--

INSERT INTO `web_direktori_siswa` (`id`, `nama`, `nis`, `tempat`, `tanggal_lahir`, `foto`, `kelas`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Nama Siswa 1', 123456789, 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/SISWA/applicationsscience_103774.png', '1', '2020-06-24 06:08:40', NULL, '1'),
(2, 'Nama Siswa 2', 123456789, 'Merauke', '2020-06-24', 'http://sdinpresjayamakmur.sch.id/source/SISWA/applicationsscience_103774.png', '1', '2020-06-24 06:09:19', NULL, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_kontak`
--

CREATE TABLE `web_kontak` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_kontak`
--

INSERT INTO `web_kontak` (`id`, `name`, `email`, `reason`, `phone`, `address`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Joko Martopo', 'JokoMtp@yahoo.com', '', '', NULL, '', '2020-07-07 23:38:10', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_link`
--

CREATE TABLE `web_link` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_link`
--

INSERT INTO `web_link` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Kementerian Pendidikan dan Kebudayaan', 'http://sdinpresjayamakmur.sch.id/source/LINK/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', 'https://www.kemdikbud.go.id/', '2020-06-24 05:42:02', NULL, 1),
(2, 'Perpustakaan SD Inpres Jaya Makmur', 'http://sdinpresjayamakmur.sch.id/source/LINK/kisspng-computer-icons-textbook-school-tutor-5b558f4688c794-8528614715323338945603.png', 'http://e-book.sdinpresjayamakmur.sch.id/', '2020-07-18 01:26:30', '2020-07-18 04:17:13', 1),
(3, 'SMPN 5 Merauke', 'http://sdinpresjayamakmur.sch.id/source/LINK/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', 'http://smpn5merauke.sch.id/', '2020-07-18 05:08:00', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_page`
--

CREATE TABLE `web_page` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `mode` varchar(255) NOT NULL,
  `overview` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keyword` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `language` varchar(2) NOT NULL DEFAULT 'ID',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `publish_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unpublish_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visibility` int(11) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_page`
--

INSERT INTO `web_page` (`id`, `admin_id`, `menu_id`, `name`, `slug`, `mode`, `overview`, `description`, `keyword`, `image`, `language`, `created_at`, `updated_at`, `publish_at`, `unpublish_at`, `visibility`, `status`) VALUES
(1, 0, 0, 'Home', '', '', NULL, '<p style=\"text-align:justify\"><span style=\"font-size:22px\"><strong><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Selamat Datang</span></span></strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">SD Inpres Jaya Makmur Kabupaten merauke adalah merupakan salah satu sekolah yang memperoleh bantuan sarana perangkat keras belajar berbasis teknologi informasi, dengan demikian maka patutlah untuk kita syukuri bersama. SD Inpres Jaya Makmur yang terletak di distrik kurik merupakan daerah pinggiran kota Merauke, yang tentunya masih memiliki berbagai kekurangan baik dari sisi sarana dan prasarana mengajar serta keterbatasan jumlah guru pengajar, tentunya keterbatasan-keterbatasn ini menjadi catatan tersendiri.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">Namun demikian kita tetap harus berfikir optimis untuk dapat mengikuti perkembangan-perkembangan didunia mengajar. Salah satunya adalah dengan mengintegrasikan teknologi informasi didunia pendidikan.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">Dengan mengucap syukur atas se ijin Allah SWT, SD Inpres Jaya Makmur telah memenuhi salah satu arahan yang tertuang didalam salah juknis sekolah bahwasannya sekolah diharapkan memiliki laman domain sch.id. Dengan demikian maka kita dapat menyampaikan berbagai informasi positif tentunya terkait segala proses pelaksanaan belajar mengajar disekolah, baik yang bersifat luring maupun daring. Serta menjadi Rumah halaman digital sekolah yang dapat digunakan sebagai sarana motivasi siswa/siswi dalam mengembangkan kreativitas individu maupun kelompok.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">Selain untuk menampung hasil kreativitas siswa/siswi, rumah digital ini juga kamiberharap dapat menjadi sarana publik yang berisi hasil-hasil kreatifitas Bapak/Ibu guru, sehingga dapat menjadi contoh dan tauladan bagi anak didik terkait mengasah kemampuan diri masing-masing.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">Laman domain sch.id ini sendiri memiliki fungsi utama adalah untuk menampilkan pelaksanaan kegiatan belajar mengajar berbasis Rumah Belajar, yang mana disekolah masih penuh dengan keterbatasan sarana, namun kami tetap berkomitmen untuk mengenalkan berbagai fungsi teknologi informasi kepada siswa/siswi dalam menuntut ilmu.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">Adapun laman domain sch.id SD Inpres Jaya Makmur dapat diakses melalui alamat website resmi : </span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><a href=\"http://sdinpresjayamakmur.sch.id/\" style=\"color:blue; text-decoration:underline\">http://sdinpresjayamakmur.sch.id/</a></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Selain laman domain tersebut diatas, </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#525252\">SD Inpres Jaya Makmur juga telah menyediakan sarana gudang buku yang dapat diakses oleh siswa/siswi baik disekolah maupun dirumah dan dimana saja yang dalam hal ini kami kemas dalam bentuk sarana teknologi informasi Perpustakaan Digital SD Inpres Jaya Makmur, yang dapat diakses melalui alamat resmi : </span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><a href=\"http://e-book.sdinpresjayamakmur.sch.id/\" style=\"color:blue; text-decoration:underline\">http://e-book.sdinpresjayamakmur.sch.id/</a></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Serta sebagai catatan bahwa kedua alamat teknologi informasi tersebut telah saling terintegrasi satu sama lainnya.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:#f6f6f7\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#3f4042\">Dengan demikian kita berharap generasi millennial dapat menggunakan smartphone, tablet digital atau personal komputer secara &ldquo;cerdas&rdquo; dengan metode belajar ganda, dimana belajar bukan hanya sekedar berhubungan dengan membaca buku, namun juga dikuatkan dengan audio visual, latihan soal serta bacaan literasi berupa komik yang diharapkan dapat membantu menstimulasi penyerapan materi pelajaran secara lebih maksimal.</span></span></span></span></span></span></p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-08-28 02:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, 0, 0, 'Profile Lengkap', '', '', NULL, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">SD Inpres Jaya Makmur merupakan sekolah yang berstatus Negeri dengan Akreditasi B, yang berkedudukan di Kampung&nbsp; Jaya Makmur Distrik Kurik Kabupaten Merauke Propinsi Papua yang dengan memilik tenaga pendidik dan tenaga kependidkan berjumlah 15 orang terdiri dari Tenaga Kependidkan&nbsp; / Kepala Sekolah bapak Sutopo, S.Pd.SD dan &nbsp;guru / tenaga pendidik 14 orang serta &nbsp;peserta didik sebanyak 338 anak . </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sarana gedung SD Inpres Jaya Makmur sebanyak 12 ruang kelas, 1 ruang guru dan 1 ruang kantor. Sedangkan sarana pendukung lainnya seperti perangkat ICT berupa Laptop sebanyak &nbsp;8 unit dan printer sebanyak 4 Unit dalam kondisi baik dan siap pakai. Sedangkan perangkat yang dalam kondisi rusak terdiri atas Laptop 3 unit dan computer PC 1 unit.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Guna memenuhi kebutuhan operasional sekolah, Kepala Sekolah SD Inpres Jaya Makmur telah mengambil kebijakan dengan melakukan belanja perangkat laptop sebanyak 3 unit di tahun anggaran 2019.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">SD Inpres Jaya Makmur merupakan salah satu sekolah yang diberikan kepercayaan berupa bantuan Dana Afirmasi dari kementerian Pendidikan yang mana keperuntukannya untuk membangun Laboratorium pembelajaran Jarak Jauh berbasis Rumah Belajar. Yang terdiri atas Komputer PC 1 Unit, Laptop 1 Unit, Infocus 1 unit, Eksternal HardDisk 1 buah, Perangkat Wireless AP 1 Unit dan Tablet 8&rdquo; sebantak 314 Unit.</span></span></p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-09-05 02:17:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(3, 0, 0, 'Struktur Organisasi', '', '', NULL, '<p style=\"text-align:justify\"><img alt=\"\" class=\"img-responsive\" src=\"http://sdinpresjayamakmur.sch.id/source/KK.jpg\" /></p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-07-18 09:57:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(4, 0, 0, 'Sejarah', '', '', NULL, '<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">SEJARAH SINGKAT BERDIRINYA SD INPRES JAYA MAKMUR</span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">SD Inpres Jaya Makmur merupakan salah satu SD yang ada di Kabupaten Merauke terletak di kawasan Eks Unit Pemukiman Transmigrasi Kurik IV Distrik Kurik Kabupaten Merauke dengan Jumlah penduduk 650 Kepala Keluarga pada tahun 1983.&nbsp; Dengan banyaknya warga masyarakat&nbsp; maka pemerintah membangun 2 Sekolah yaitu SD Inpres Kurik VII pada tahun 1983 dan SD Inpres Kurik VIII pada tahun 1984.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Dengan pesatnya pembangunan di Kabupaten Merauke maka Kabupaten Merauke dimekarkan menjadi 4 kabupaten yakni 1 kabupaten Induk yaitu Kabupaten Merauke ditambah 3 Kabupaten antara lain Kabupaten BovenDigoel, Kabupaten Mappi dan Kabupaten Asmat. Dengan pemekaran Kabupaten berdampak pada Pada Guru yang harus memenuhi kebutuhan di sekolah di Kabupaten Pemekaran sehingga guru guru dimutasi di kabupaten Pemekaran sehingga guru di sekolah kabupaten Induk berkurang sehingga pemerintah Kabupaten Merauke melakukan penggabungan sekolah dari SD Inpres Kurik VII yang berlokasi di Jalan&nbsp; Pendidikan Kampung Jaya Makmur dan SD Inpres kurik VIII Poros Kampung Jaya Makmur menjadi SD Inpres Jaya Makmur dengan Nomor SK. 307/TAHUN/2007 Tanggal 30 Oktober 2007. yang berlokasi di Jalan Pendidikan Jaya Makmur. </span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Meskipun demikian SD Inpres Jaya Makmur masih berada di 2 Lokasi tersebut yakni Kelas 1a,Kelas 1b, Kelas 2a Kelas 2b, Kelas 3a, Kelas 5a, kelas 5b, kelas 6a, kelas 6b dan Kantor ada di Jalan Pendidikan sedang kelas 3b, kelas 4a dan kelas 4b ada di jalan Poros Kampung Jaya Makmur</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Dari tahun 2007 sampai dengan tahun 2020 ini telah terjadi pergantian kepemimpinan Sekolah yaitu:</span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Bapak Matius Damis, S.Pd&nbsp; Tahun 2007 sampai dengan 2012</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Bapak Edy Sukmono, S.Pd.SD Tahun 2012 sampai dengan 2018</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Bapak Sutopo, S.Pd.SD Tahun 2018 sampai saat ini yang memegang menejerial SD Inpres Jaya makmur</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Demikin sejarah singkat SD Inpres Jaya Makmur apabila dalam penulisan masih terdapat informasi yang kurang tepat maka tim editor akan melakukan perbaikan</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Sumber : Pengelola Website SD Inpres Jaya makmur</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-09-05 04:08:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(5, 0, 0, 'Visi dan Misi', '', '', NULL, '<p style=\"margin-left:24px; text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><strong><span style=\"font-size:14.0pt\">Visi Sekolah Dasar Inpres Jaya Makmur</span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:14.0pt\">&ldquo; Terwujudnya Peserta Didik yang beriman, cerdas, terampil, berkarakter, mandiri berwawasan luas.&rdquo;</span></span></span></p>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><strong><span style=\"font-size:14.0pt\">Misi Sekolah Dasar Inpres Jaya Makmur</span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Menanamkan keimanan dan ketaqwaan melalui pengamalan ajaran agama.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Mengoptimalkan proses belajar dan bimbingan.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Mengembangkan bidang ilmu pengethuan dan teknologi berdasarkan minat, bakat, dan potensi peerta didik.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Membina kemandirian peserta didik melalui kegiatan pembiasaan, kewirausahaan dan pengembangan diri yang terencana dan berkesinambungan.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Menjalin kerja sama yang harmonis antar warga sekolah dan lembaga lain yang terkait.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Membentuk peserta didik yang menguasai pengetahuan dan keterampilan dasar.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Menjadikan sekolah sebagai pusat pendidikan guna mencerdaskan kehidupan bangsa.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-size:13.0pt\">Menciptakan keakraban di antara warga sekolah dan masyarakat sekitarnya</span></span></span></li>\r\n</ol>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-07-18 04:07:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(6, 0, 0, 'Fasilitas', '', '', NULL, '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-06-24 05:43:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(7, 0, 0, 'Prestasi Sekolah', '', '', NULL, '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-06-26 00:43:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(8, 0, 0, 'Prestasi Guru', '', '', NULL, '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-06-26 00:43:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(9, 0, 0, 'Prestasi Siswa', '', '', NULL, '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-06-26 00:43:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(10, 0, 0, 'Osis', '', '', NULL, '\r\n<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-06-26 00:42:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(11, 0, 0, 'Ekstra Kulikuler', '', '', NULL, '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '', 'default.jpg', 'ID', '0000-00-00 00:00:00', '2020-06-26 00:42:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(12, 0, 0, 'SUTOPO, S.Pd.SD', '', '', NULL, '<p>Perkembangan teknologi informasi yang semakin pesat di era globalisasi saat ini tidak bisa dihindari lagi pengaruhnya terhadap dunia pendidikan. Tuntutan global menuntut dunia pendidikan untuk selalu dan senantiasa menyesuaikan perkembangan teknologi terhadap usaha dalam peningkatan mutu pendidikan, terutama penyesuaian penggunaan teknologi informasi dan komunikasi bagi dunia pendidikan khususnya dalam proses pembelajaran.</p>\r\n\r\n<p>Perkembangan teknologi informasi dan komunikasi telah memberikan pengaruh terhadap dunia pendidikan khususnya dalam proses pembelajaran. Menurut Rosenberg dalam G. Gunawan (2009) dalam Sudibyo (2011), dengan berkembangnya penggunaan teknologi informasi dan komunikasi maka ada lima pergeseran dalam proses pembelajaran, yaitu:</p>\r\n\r\n<ol>\r\n	<li>Dari pelatihan ke penampilan,</li>\r\n	<li>Dari ruang kelas ke di mana dan kapan saja,</li>\r\n	<li>Dari kertas ke &quot;on line&quot; atau saluran,</li>\r\n	<li>Dari fasilitas fisik ke fasilitas jaringan kerja,</li>\r\n	<li>Dari waktu siklus ke waktu nyata.</li>\r\n</ol>\r\n\r\n<p>Dalam proses pendidikan, komunikasi dilakukan dengan menggunakan media media komunikasi seperti telepon, komputer, internet, e-mail, dan sebagainya. Interaksi antara guru/dosen dan siswa/mahasiswa tidak hanya dilakukan melalui hubungan tatap muka, tetapi juga dilakukan dengan menggunakan media-media tersebut. Dengan adanya teknologi informasi sekarang ini guru/dosen dapat memberikan layanan tanpa harus berhadapan langsung dengan siswa/mahasiswa.</p>\r\n\r\n<p>Demikian pula siswa dapat memperoleh informasi dalam lingkup yang luas dari berbagai sumber melalui cyber space atau ruang maya dengan menggunakan komputer atau internet. Hal yang paling mutakhir adalah berkembangnya apa yang disebut &quot;cyber teaching&quot; atau &quot;pengajaran maya&quot;, yaitu proses pengajaran yang dilakukan dengan menggunakan internet. Istilah lain yang makin popular saat ini ialah e-learning, yaitu suatu model pembelajaran dengan menggunakan media teknologi komunikasi dan informasi, khususnya internet.</p>\r\n\r\n<p>Teknologi informasi dalam pendidikan bisa dipahami sebagai suatu proses yang kompleks, dan terpadu yang melibatkan orang, ide, peralatan, dan organisasi untuk menganilisis masalah, mencari jalan untuk mengatasi permasalahan, melaksanakan, menilai, dan mengelola pemecahan masalah tersebut yang mencakup semua aspek belajar manusia (Sukadi, 2008) dalam Sudibyo (2011). Sejalan dengan itu, maka lahirnya teknologi informasi dalam pendidikan diawali adanya masalah dalam pendidikan itu sendiri. Permasalahan pendidikan yang mencuat saat ini adalah meliputi pemerataan kesempatan memperoleh pendidikan, peningkatan kualitas/mutu pendidikan, relevansi dan efisiensi pendidikan. Permasalahan serius yang masih dirasakan oleh dunia pendidikan di Indonesia mulai pendidikan dasar sampai pendidikan tinggi adalah masalah &quot;kualitas/mutu&quot;. Untuk itu ada tiga prinsip dasar dalam teknologi pendidikan sebagai acuan untuk pengembangan dan pemanfaatannya, yaitu: pendekatan sistem, berorientasi pada siswa/mahasiswa, dan pemanfaatan sumber belajar.</p>\r\n\r\n<p>Secara umum, peranan e-learning dalam proses pembelajaran dapat dikelompokkan menjadi dua, yaitu: komplementer dan substitusi. Komplementer mengandaikan bahwa cara pembelajaran dengan pertemuan tatap muka masih berjalan, tetapi ditambah dengan model interaksi berbantuan teknologi informasi (TI). Sedangkan yang subtitusi, sebagian besar proses pembelajaran dilakukan berbantuan teknologi informasi (TI). Saat ini regulasi yang dikeluarkan oleh pemerintah juga telah memfasilitasi pemanfaatan e-learning sebagai substitusi proses pembelajaran konvensional. Surat Keputusan Menteri Pendidikan Nsional No. 107/U/2001 dengan jelas membuka koridor untuk menyelenggarakan pendidikan jarak jauh, di mana elearning dapat masuk memainkan peran. Enam prinsip di atas sangat penting untuk diingat agar e-learning betul-betul tepat sasaran dan mampu menggugah semangat belajar peserta didik dalam mengarungi samudra ilmu pengetahuan.</p>\r\n\r\n<p><sup>Sumber: </sup><a href=\"https://www.kompasiana.com/tutinamaku/5bcaf02643322f2c44578c72/peranan-teknologi-dalam-dunia-pendidikan?page=all\"><sup>https://www.kompasiana.com/tutinamaku/5bcaf02643322f2c44578c72/peranan-teknologi-dalam-dunia-pendidikan?page=all</sup></a></p>\r\n\r\n<p>SD Inpres Jaya Makmur Kabupaten merauke adalah merupakan salah satu sekolah yang memperoleh bantuan sarana perangkat keras belajar berbasis teknologi informasi, dengan demikian maka patutlah untuk kita syukuri bersama. SD Inpres Jaya Makmur yang terletak di distrik kurik merupakan daerah pinggiran kota Merauke, yang tentunya masih memiliki berbagai kekurangan baik dari sisi sarana dan prasarana mengajar serta keterbatasan jumlah guru pengajar, tentunya keterbatasan-keterbatasn ini menjadi catatan tersendiri.</p>\r\n\r\n<p>Namun demikian kita tetap harus berfikir optimis untuk dapat mengikuti perkembangan-perkembangan didunia mengajar. Salah satunya adalah dengan mengintegrasikan teknologi informasi didunia pendidikan.</p>\r\n\r\n<p>Dengan mengucap syukur atas se ijin Allah SWT, SD Inpres Jaya Makmur telah memenuhi salah satu arahan yang tertuang didalam salah juknis sekolah bahwasannya sekolah diharapkan memiliki laman domain sch.id. Dengan demikian maka kita dapat menyampaikan berbagai informasi positif tentunya terkait segala proses pelaksanaan belajar mengajar disekolah, baik yang bersifat luring maupun daring. Serta menjadi Rumah halaman digital sekolah yang dapat digunakan sebagai sarana motivasi siswa/siswi dalam mengembangkan kreativitas individu maupun kelompok.</p>\r\n\r\n<p>Selain untuk menampung hasil kreativitas siswa/siswi, rumah digital ini juga kamiberharap dapat menjadi sarana publik yang berisi hasil-hasil kreatifitas Bapak/Ibu guru, sehingga dapat menjadi contoh dan tauladan bagi anak didik terkait mengasah kemampuan diri masing-masing.</p>\r\n\r\n<p>Laman domain sch.id ini sendiri memiliki fungsi utama adalah untuk menampilkan pelaksanaan kegiatan belajar mengajar berbasis Rumah Belajar, yang mana disekolah masih penuh dengan keterbatasan sarana, namun kami tetap berkomitmen untuk mengenalkan berbagai fungsi teknologi informasi kepada siswa/siswi dalam menuntut ilmu.</p>\r\n\r\n<p>Adapun laman domain sch.id SD Inpres Jaya Makmur dapat diakses melalui alamat website resmi : <a href=\"http://sdinpresjayamakmur.sch.id/\">http://sdinpresjayamakmur.sch.id/</a></p>\r\n\r\n<p>Selain laman domain tersebut diatas, SD Inpres Jaya Makmur juga telah menyediakan sarana gudang buku yang dapat diakses oleh siswa/siswi baik disekolah maupun dirumah dan dimana saja yang dalam hal ini kami kemas dalam bentuk sarana teknologi informasi Perpustakaan Digital SD Inpres Jaya Makmur, yang dapat diakses melalui alamat resmi : <a href=\"http://e-book.sdinpresjayamakmur.sch.id/\">http://e-book.sdinpresjayamakmur.sch.id/</a></p>\r\n\r\n<p>Serta sebagai catatan bahwa kedua alamat teknologi informasi tersebut telah saling terintegrasi satu sama lainnya.</p>\r\n\r\n<p>Dengan demikian kita berharap generasi millennial dapat menggunakan smartphone, tablet digital atau personal komputer secara &ldquo;cerdas&rdquo; dengan metode belajar ganda, dimana belajar bukan hanya sekedar berhubungan dengan membaca buku, namun juga dikuatkan dengan audio visual, latihan soal serta bacaan literasi berupa komik yang diharapkan dapat membantu menstimulasi penyerapan materi pelajaran secara lebih maksimal.</p>\r\n', '', 'http://sdinpresjayamakmur.sch.id/source/KEPALA%20SEKOLAH/Kepsek1.png', 'ID', '0000-00-00 00:00:00', '2020-08-28 03:08:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_pengaturan`
--

CREATE TABLE `web_pengaturan` (
  `id` int(11) NOT NULL,
  `url_web` text DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `bg_home` text DEFAULT NULL,
  `bg_menu` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telfon` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_pengaturan`
--

INSERT INTO `web_pengaturan` (`id`, `url_web`, `title`, `keywords`, `description`, `icon`, `logo`, `bg_home`, `bg_menu`, `alamat`, `telfon`, `email`, `updated_at`) VALUES
(1, 'sdinpresjayamakmur.sch.id', 'SD INPRES JAYA MAKMUR ', 'Keywords', 'Description', 'http://sdinpresjayamakmur.sch.id/source/PENGATURAN/ICON%20(1).png', 'http://sdinpresjayamakmur.sch.id/source/PENGATURAN/LOGO%20(1).png', 'http://sdinpresjayamakmur.sch.id/source/PENGATURAN/bg.jpg', 'http://sdinpresjayamakmur.sch.id/source/PENGATURAN/WhatsApp%20Image%202020-07-18%20at%209-51-55%20AM.jpg', 'alamat', '1234567890', 'sutopo.jaya@gmail.com', '2020-07-20 04:16:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_slide`
--

CREATE TABLE `web_slide` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `star` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_slide`
--

INSERT INTO `web_slide` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`, `star`, `status`) VALUES
(1, 'Foto Bapak/Ibu Guru SD Inpres Jaya Makmur', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/1.png', '', '2020-06-24 06:01:47', '2020-07-18 04:40:26', 1, 1),
(2, 'Foto Bersama sebelum Pandemik Covid 19', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/2.png', '', '2020-06-24 06:01:56', '2020-07-18 04:40:56', NULL, 1),
(3, 'Perangkat Tablet Penunjang Pembelajaran Jarak Jauh Berbasis Digital Rumah Belajar', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/3.png', '', '2020-06-24 06:02:35', '2020-07-18 04:41:21', NULL, 1),
(4, ' ', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/4.png', '', '2020-07-18 04:46:40', NULL, NULL, 1),
(5, ' ', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/5.png', '', '2020-07-18 04:46:48', NULL, NULL, 1),
(6, 'Kegiatan Sosialisasi & Pelatihan Pengelolaan Aplikasi Pembelajaran Jarak Jauh SD Inpres Jaya Makmur', 'http://sdinpresjayamakmur.sch.id/source/f9a24cc4-4b5e-4768-ae00-a8eff01b78b7.jpg', '', '2020-09-05 03:13:55', NULL, NULL, 1),
(7, 'Sosialisasi dan Pelatihan Pengelolaan Konten Perpustakaan Digital SD Inpres Jaya Makmur', 'http://sdinpresjayamakmur.sch.id/source/WhatsApp%20Image%202020-08-28%20at%2014-34-39.jpg', '', '2020-09-05 03:17:11', NULL, NULL, 1),
(8, 'Kegiatan Sosialisasi & Pelatihan Pengelolaan Konten Perpustakaan Digital SD Inpres Jaya Makmur', 'http://sdinpresjayamakmur.sch.id/source/WhatsApp%20Image%202020-08-28%20at%2013-49-08.jpg', '', '2020-09-05 03:22:22', NULL, NULL, 1),
(9, 'Persiapan Bapak dan Ibu Guru Menggunakan Perangkat Tablet Sebagai Sarana Pembelajaran Jarak Jauh', 'http://sdinpresjayamakmur.sch.id/source/WhatsApp%20Image%202020-09-04%20at%2014-44-16.jpg', '', '2020-09-05 03:34:15', NULL, NULL, 1),
(10, 'Pelatihan & Pendampingan Teknis Tim Administrator Sekolah Pengelola Konten Perpustakaan Digital', 'http://sdinpresjayamakmur.sch.id/source/WhatsApp%20Image%202020-09-04%20at%2014-48-57.jpg', '', '2020-09-05 03:35:20', '2020-09-05 03:53:35', NULL, 1),
(11, 'Pelatihan & Pendampingan Teknis Pengoperasian Aplikasi Pembelajaran Jarak Jauh', 'http://sdinpresjayamakmur.sch.id/source/WhatsApp%20Image%202020-09-04%20at%2014-46-45.jpg', '', '2020-09-05 03:36:07', NULL, NULL, 1),
(12, '1. Infografis Cegah Covid-19 di Satuan Pendidikan', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/4.jpg', '', '2020-09-05 03:50:10', NULL, NULL, 1),
(13, '2.Infografis Cegah Covid-19 di Satuan Pendidikan', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/5.jpg', '', '2020-09-05 03:50:26', NULL, NULL, 1),
(14, '3.Infografis Cegah Covid-19 di Satuan Pendidikan', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/6.jpg', '', '2020-09-05 03:50:43', NULL, NULL, 1),
(15, '4.Infografis Cegah Covid-19 di Satuan Pendidikan', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/7.jpg', '', '2020-09-05 03:51:04', NULL, NULL, 1),
(16, '5.Infografis Cegah Covid-19 di Satuan Pendidikan', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/8.jpg', '', '2020-09-05 03:51:23', NULL, NULL, 1),
(17, '6.Infografis Cegah Covid-19 di Satuan Pendidikan', 'http://sdinpresjayamakmur.sch.id/source/SLIDE/9.jpg', '', '2020-09-05 03:51:39', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_studi`
--

CREATE TABLE `web_studi` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_studi`
--

INSERT INTO `web_studi` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Matematika', 'matematika', 1),
(2, 'Bahasa Indonesia', 'bahasa_indonesia', 1),
(3, 'Bahasa Ingris', 'bahasa_ingris', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_tokens`
--

CREATE TABLE `web_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_user` int(20) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_user`
--

CREATE TABLE `web_user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('1','0') DEFAULT '1',
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_user`
--

INSERT INTO `web_user` (`id`, `username`, `password`, `nama`, `email`, `status`, `foto`) VALUES
(1, 'feri', '7815696ecbf1c96e6894b779456d330e', 'Feri Pebriansah Nugraha', 'ferpebriansah@gmail.com', '1', NULL),
(2, 'bom', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'BOM BOM', 'destroyerfery@gmail.com', '1', NULL),
(3, 'admin2020', 'e76e752558361a2e9814c4d6c2239568', 'admin', 'admin@dinpresjayamakmur.sch.id', '1', NULL),
(4, 'Jayamakmur2020', 'b633507e28edc99541ebc878d58fc3c6', 'Jayamakmur', 'Jayamakmur@sdinpresjayamakmur.sch.id', '1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_visitor`
--

CREATE TABLE `web_visitor` (
  `ip` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `online` varchar(225) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_visitor`
--

INSERT INTO `web_visitor` (`ip`, `date`, `hits`, `online`, `time`) VALUES
('114.5.218.123', '2020-09-02', 12, '1599017777', '2020-09-02 03:29:41'),
('114.5.104.104', '2020-09-02', 2, '1599036965', '2020-09-02 08:56:01'),
('46.229.168.138', '2020-09-02', 1, '1599040392', '2020-09-02 09:53:12'),
('165.22.46.100', '2020-09-03', 1, '1599098529', '2020-09-03 02:02:09'),
('46.229.168.144', '2020-09-03', 1, '1599158033', '2020-09-03 18:33:53'),
('46.229.168.130', '2020-09-04', 1, '1599196348', '2020-09-04 05:12:28'),
('46.229.168.151', '2020-09-04', 1, '1599201494', '2020-09-04 06:38:14'),
('46.229.168.137', '2020-09-04', 1, '1599213092', '2020-09-04 09:51:32'),
('182.1.184.128', '2020-09-05', 1, '1599265242', '2020-09-05 00:20:42'),
('114.125.183.40', '2020-09-05', 1, '1599268695', '2020-09-05 01:18:15'),
('114.125.186.0', '2020-09-05', 1, '1599268889', '2020-09-05 01:21:29'),
('114.125.169.181', '2020-09-05', 3, '1599269891', '2020-09-05 01:30:49'),
('114.125.169.69', '2020-09-05', 1, '1599269799', '2020-09-05 01:36:39'),
('46.229.168.146', '2020-09-05', 1, '1599271225', '2020-09-05 02:00:25'),
('114.125.185.101', '2020-09-05', 2, '1599278038', '2020-09-05 02:03:15'),
('114.125.168.107', '2020-09-05', 3, '1599271947', '2020-09-05 02:11:57'),
('114.125.168.179', '2020-09-05', 1, '1599271936', '2020-09-05 02:12:16'),
('114.125.168.165', '2020-09-05', 3, '1599277357', '2020-09-05 02:17:41'),
('114.125.164.59', '2020-09-05', 1, '1599272272', '2020-09-05 02:17:52'),
('114.125.184.31', '2020-09-05', 5, '1599277439', '2020-09-05 02:32:40'),
('114.125.168.93', '2020-09-05', 4, '1599277088', '2020-09-05 02:32:48'),
('120.188.35.24', '2020-09-05', 13, '1599277582', '2020-09-05 02:33:40'),
('114.125.164.178', '2020-09-05', 4, '1599275450', '2020-09-05 03:02:07'),
('114.125.164.174', '2020-09-05', 1, '1599274931', '2020-09-05 03:02:11'),
('114.125.164.180', '2020-09-05', 3, '1599276147', '2020-09-05 03:08:44'),
('114.125.164.175', '2020-09-05', 2, '1599275838', '2020-09-05 03:09:36'),
('114.125.164.176', '2020-09-05', 3, '1599275402', '2020-09-05 03:09:58'),
('114.125.164.177', '2020-09-05', 1, '1599275642', '2020-09-05 03:14:02'),
('114.125.168.139', '2020-09-05', 4, '1599277217', '2020-09-05 03:37:56'),
('114.125.168.113', '2020-09-05', 3, '1599277346', '2020-09-05 03:40:35'),
('114.125.185.129', '2020-09-05', 2, '1599278074', '2020-09-05 03:47:38'),
('114.125.169.161', '2020-09-05', 1, '1599277662', '2020-09-05 03:47:42'),
('114.125.185.197', '2020-09-05', 1, '1599277909', '2020-09-05 03:51:49'),
('114.125.210.83', '2020-09-05', 1, '1599278907', '2020-09-05 04:08:27'),
('114.125.210.88', '2020-09-05', 1, '1599278931', '2020-09-05 04:08:51'),
('114.125.210.58', '2020-09-05', 1, '1599278958', '2020-09-05 04:09:18'),
('114.125.210.61', '2020-09-05', 4, '1599287471', '2020-09-05 04:10:14'),
('114.125.210.105', '2020-09-05', 1, '1599279063', '2020-09-05 04:11:03'),
('114.5.220.10', '2020-09-05', 2, '1599279214', '2020-09-05 04:13:24'),
('114.125.210.103', '2020-09-05', 1, '1599279655', '2020-09-05 04:20:55'),
('114.125.210.78', '2020-09-05', 1, '1599279677', '2020-09-05 04:21:17'),
('114.125.164.52', '2020-09-05', 1, '1599282665', '2020-09-05 05:11:05'),
('114.125.164.55', '2020-09-05', 2, '1599282689', '2020-09-05 05:11:15'),
('114.125.210.106', '2020-09-05', 1, '1599287292', '2020-09-05 06:28:12'),
('114.125.210.96', '2020-09-05', 1, '1599287360', '2020-09-05 06:29:20'),
('114.125.210.60', '2020-09-05', 1, '1599287396', '2020-09-05 06:29:56'),
('114.125.210.125', '2020-09-05', 2, '1599287420', '2020-09-05 06:30:11'),
('114.125.210.75', '2020-09-05', 1, '1599287524', '2020-09-05 06:32:04'),
('114.125.210.120', '2020-09-05', 2, '1599291654', '2020-09-05 07:21:40'),
('114.125.210.102', '2020-09-05', 1, '1599290802', '2020-09-05 07:26:42'),
('114.125.210.79', '2020-09-05', 1, '1599291390', '2020-09-05 07:36:30'),
('114.125.169.29', '2020-09-05', 1, '1599298474', '2020-09-05 09:34:34'),
('114.125.180.33', '2020-09-05', 2, '1599299906', '2020-09-05 09:57:56'),
('114.125.185.222', '2020-09-05', 2, '1599300971', '2020-09-05 10:15:55'),
('114.125.169.62', '2020-09-05', 1, '1599301058', '2020-09-05 10:17:38'),
('103.27.206.11', '2020-09-05', 3, '1599306493', '2020-09-05 11:47:03'),
('36.80.149.165', '2020-09-05', 1, '1599309668', '2020-09-05 12:41:08'),
('46.229.168.145', '2020-09-05', 1, '1599333936', '2020-09-05 19:25:36'),
('114.125.150.141', '2020-09-06', 3, '1599397084', '2020-09-06 12:54:02'),
('182.1.177.122', '2020-09-07', 2, '1599436943', '2020-09-07 00:01:19'),
('182.1.162.102', '2020-09-07', 1, '1599436959', '2020-09-07 00:02:39'),
('182.1.186.181', '2020-09-07', 1, '1599443398', '2020-09-07 01:49:58'),
('114.125.150.26', '2020-09-07', 1, '1599446010', '2020-09-07 02:33:30'),
('46.229.168.139', '2020-09-07', 1, '1599450755', '2020-09-07 03:52:35'),
('46.229.168.134', '2020-09-07', 1, '1599452070', '2020-09-07 04:14:30'),
('46.229.168.153', '2020-09-07', 1, '1599481829', '2020-09-07 12:30:29'),
('46.229.168.137', '2020-09-07', 1, '1599485147', '2020-09-07 13:25:47'),
('114.125.158.11', '2020-09-07', 3, '1599523168', '2020-09-07 23:57:00'),
('114.125.158.11', '2020-09-08', 2, '1599525235', '2020-09-08 00:17:44'),
('114.125.210.88', '2020-09-09', 1, '1599692408', '2020-09-09 23:00:08'),
('114.5.213.204', '2020-09-10', 6, '1599710783', '2020-09-10 04:01:57'),
('182.1.168.40', '2020-09-10', 1, '1599749996', '2020-09-10 14:59:56'),
('182.1.169.104', '2020-09-10', 1, '1599750078', '2020-09-10 15:01:18'),
('182.1.169.240', '2020-09-10', 1, '1599750093', '2020-09-10 15:01:33'),
('182.1.171.180', '2020-09-10', 3, '1599750131', '2020-09-10 15:02:03'),
('182.1.186.232', '2020-09-10', 1, '1599750148', '2020-09-10 15:02:28'),
('182.1.187.160', '2020-09-10', 1, '1599750160', '2020-09-10 15:02:40'),
('114.125.165.213', '2020-09-11', 1, '1599798549', '2020-09-11 04:29:09'),
('114.125.171.65', '2020-09-11', 2, '1599798569', '2020-09-11 04:29:25'),
('114.125.180.94', '2020-09-11', 1, '1599799048', '2020-09-11 04:37:28'),
('114.125.210.107', '2020-09-13', 1, '1599968707', '2020-09-13 03:45:07'),
('114.125.210.83', '2020-09-13', 1, '1599968726', '2020-09-13 03:45:26'),
('114.125.210.76', '2020-09-13', 2, '1599968843', '2020-09-13 03:45:58'),
('114.125.210.113', '2020-09-13', 1, '1599968785', '2020-09-13 03:46:25'),
('114.125.210.87', '2020-09-13', 1, '1599968824', '2020-09-13 03:47:04'),
('114.125.210.96', '2020-09-13', 1, '1600039422', '2020-09-13 23:23:42'),
('114.125.210.63', '2020-09-13', 1, '1600039553', '2020-09-13 23:25:53'),
('114.125.210.62', '2020-09-13', 1, '1600039652', '2020-09-13 23:27:32'),
('65.154.226.109', '2020-09-15', 1, '1600143232', '2020-09-15 04:13:52'),
('65.155.30.101', '2020-09-15', 1, '1600144840', '2020-09-15 04:40:40'),
('114.125.184.185', '2020-09-15', 1, '1600208549', '2020-09-15 22:22:29'),
('114.125.164.233', '2020-09-16', 2, '1600287787', '2020-09-16 20:22:41'),
('114.125.180.66', '2020-09-16', 1, '1600287901', '2020-09-16 20:25:01'),
('114.125.180.253', '2020-09-16', 3, '1600287937', '2020-09-16 20:25:14'),
('114.125.164.92', '2020-09-16', 1, '1600288048', '2020-09-16 20:27:28'),
('182.1.168.235', '2020-09-17', 2, '1600322722', '2020-09-17 06:02:17'),
('182.1.185.247', '2020-09-17', 1, '1600322872', '2020-09-17 06:07:52'),
('114.125.181.147', '2020-09-17', 7, '1600328180', '2020-09-17 06:24:43'),
('114.125.187.80', '2020-09-17', 1, '1600325489', '2020-09-17 06:51:29'),
('114.125.186.76', '2020-09-17', 1, '1600325585', '2020-09-17 06:53:05'),
('114.125.187.0', '2020-09-17', 1, '1600325585', '2020-09-17 06:53:05'),
('114.125.183.7', '2020-09-17', 1, '1600327875', '2020-09-17 07:31:15'),
('114.125.210.116', '2020-09-17', 1, '1600332677', '2020-09-17 08:51:17'),
('36.78.248.42', '2020-09-17', 1, '1600348875', '2020-09-17 13:21:15'),
('114.125.210.111', '2020-09-17', 1, '1600353187', '2020-09-17 14:33:07'),
('114.125.165.136', '2020-09-17', 1, '1600353235', '2020-09-17 14:33:55'),
('114.125.165.188', '2020-09-17', 1, '1600353242', '2020-09-17 14:34:02'),
('114.125.181.36', '2020-09-17', 1, '1600353258', '2020-09-17 14:34:18'),
('54.202.44.108', '2020-09-18', 1, '1600401435', '2020-09-18 03:57:15'),
('114.125.210.84', '2020-09-18', 1, '1600407731', '2020-09-18 05:42:11'),
('114.125.168.223', '2020-09-18', 1, '1600462221', '2020-09-18 20:50:21'),
('182.1.163.126', '2020-09-19', 1, '1600485562', '2020-09-19 03:19:22'),
('182.1.160.158', '2020-09-19', 1, '1600485605', '2020-09-19 03:20:05'),
('182.1.168.114', '2020-09-19', 1, '1600488962', '2020-09-19 04:16:02'),
('182.1.187.114', '2020-09-19', 3, '1600489339', '2020-09-19 04:17:38'),
('114.5.208.39', '2020-09-19', 6, '1600493441', '2020-09-19 05:28:57'),
('114.125.187.224', '2020-09-21', 1, '1600675338', '2020-09-21 08:02:18'),
('182.1.169.252', '2020-09-21', 3, '1600684690', '2020-09-21 10:37:27'),
('182.1.171.56', '2020-09-21', 1, '1600684748', '2020-09-21 10:39:08'),
('182.1.179.136', '2020-09-21', 1, '1600685286', '2020-09-21 10:48:06'),
('66.96.232.145', '2020-09-22', 4, '1600749538', '2020-09-22 02:53:35'),
('103.27.206.11', '2020-09-22', 2, '1600743808', '2020-09-22 03:03:26'),
('114.125.210.59', '2020-09-24', 1, '1600907465', '2020-09-24 00:31:05'),
('114.125.210.89', '2020-09-24', 1, '1600910386', '2020-09-24 01:19:46'),
('114.4.220.103', '2020-09-24', 6, '1600923063', '2020-09-24 02:37:56'),
('182.1.169.90', '2020-09-24', 2, '1600925614', '2020-09-24 05:33:33'),
('64.246.161.42', '2020-09-24', 1, '1600930404', '2020-09-24 06:53:24'),
('138.197.143.26', '2020-09-24', 1, '1600959466', '2020-09-24 14:57:46'),
('114.125.172.25', '2020-09-26', 6, '1601084612', '2020-09-26 01:33:13'),
('44.227.13.141', '2020-09-26', 1, '1601150867', '2020-09-26 20:07:47'),
('66.249.68.6', '2020-09-28', 1, '1601269417', '2020-09-28 05:03:37'),
('66.249.68.4', '2020-09-28', 1, '1601274799', '2020-09-28 06:33:19'),
('114.125.183.42', '2020-09-30', 1, '1601463272', '2020-09-30 10:54:32'),
('103.27.207.18', '2020-10-01', 2, '1601561112', '2020-10-01 05:05:53'),
('66.96.232.145', '2020-10-04', 1, '1601820482', '2020-10-04 14:08:02'),
('66.96.232.145', '2020-10-06', 9, '1601964377', '2020-10-06 05:26:31'),
('182.1.161.104', '2020-10-06', 2, '1601965784', '2020-10-06 06:28:50'),
('182.1.178.5', '2020-10-06', 1, '1601965992', '2020-10-06 06:33:12'),
('182.1.161.157', '2020-10-06', 1, '1601966083', '2020-10-06 06:34:43'),
('182.1.162.133', '2020-10-06', 2, '1601966100', '2020-10-06 06:34:51'),
('66.249.79.197', '2020-10-06', 2, '1601971960', '2020-10-06 08:11:07'),
('51.15.252.118', '2020-10-06', 1, '1602025614', '2020-10-06 23:06:54'),
('114.125.210.58', '2020-10-07', 1, '1602104631', '2020-10-07 21:03:51'),
('182.1.162.144', '2020-10-08', 2, '1602149994', '2020-10-08 09:28:28'),
('114.125.165.168', '2020-10-08', 1, '1602149613', '2020-10-08 09:33:33'),
('114.125.165.152', '2020-10-08', 2, '1602149657', '2020-10-08 09:34:07'),
('114.125.210.92', '2020-10-08', 1, '1602200898', '2020-10-08 23:48:18'),
('114.125.210.78', '2020-10-09', 1, '1602201995', '2020-10-09 00:06:35'),
('114.125.164.117', '2020-10-09', 1, '1602235242', '2020-10-09 09:20:42'),
('66.249.79.197', '2020-10-14', 1, '1602671091', '2020-10-14 10:24:51'),
('66.249.79.222', '2020-10-14', 1, '1602671764', '2020-10-14 10:36:04'),
('182.1.163.19', '2020-10-15', 1, '1602790906', '2020-10-15 19:41:46'),
('114.125.170.111', '2020-10-15', 1, '1602791941', '2020-10-15 19:59:01'),
('114.125.167.139', '2020-10-15', 1, '1602791941', '2020-10-15 19:59:01'),
('182.1.169.155', '2020-10-15', 1, '1602792277', '2020-10-15 20:04:37'),
('114.125.210.73', '2020-10-17', 1, '1602943461', '2020-10-17 14:04:21'),
('18.192.104.237', '2020-10-18', 1, '1602989139', '2020-10-18 02:45:39'),
('3.21.185.12', '2020-10-18', 1, '1603045385', '2020-10-18 18:23:05'),
('64.246.165.190', '2020-10-19', 1, '1603092594', '2020-10-19 07:29:54'),
('66.96.232.145', '2020-10-22', 1, '1603341393', '2020-10-22 04:36:33'),
('114.125.167.195', '2020-10-23', 1, '1603427273', '2020-10-23 04:27:53'),
('182.1.187.27', '2020-10-23', 1, '1603433651', '2020-10-23 06:14:11'),
('66.249.79.222', '2020-10-24', 1, '1603500701', '2020-10-24 00:51:41'),
('66.249.79.194', '2020-10-24', 1, '1603511563', '2020-10-24 03:52:43'),
('52.25.227.96', '2020-10-25', 1, '1603665410', '2020-10-25 22:36:50'),
('142.93.147.255', '2020-10-26', 1, '1603676041', '2020-10-26 01:34:01'),
('142.93.146.97', '2020-10-26', 1, '1603676042', '2020-10-26 01:34:02'),
('134.122.32.54', '2020-10-26', 1, '1603676043', '2020-10-26 01:34:03'),
('134.122.42.68', '2020-10-26', 1, '1603676044', '2020-10-26 01:34:04'),
('114.125.210.126', '2020-10-26', 1, '1603700659', '2020-10-26 08:24:19'),
('114.125.210.82', '2020-10-26', 1, '1603700757', '2020-10-26 08:25:57'),
('114.125.210.109', '2020-10-26', 1, '1603700783', '2020-10-26 08:26:23'),
('114.125.210.76', '2020-10-26', 1, '1603700809', '2020-10-26 08:26:49'),
('114.125.210.122', '2020-10-26', 2, '1603700921', '2020-10-26 08:28:39'),
('66.96.232.145', '2020-10-26', 2, '1603723072', '2020-10-26 14:37:38'),
('114.4.213.233', '2020-10-26', 3, '1603723088', '2020-10-26 14:37:57'),
('138.201.184.38', '2020-10-27', 1, '1603816312', '2020-10-27 16:31:52'),
('182.1.171.99', '2020-10-30', 2, '1604064768', '2020-10-30 13:32:37'),
('114.125.170.111', '2020-10-31', 1, '1604171267', '2020-10-31 19:07:47'),
('182.1.179.159', '2020-10-31', 1, '1604174871', '2020-10-31 20:07:51'),
('182.1.177.223', '2020-10-31', 1, '1604180436', '2020-10-31 21:40:36'),
('114.125.183.202', '2020-11-01', 1, '1604190446', '2020-11-01 00:27:26'),
('103.27.207.18', '2020-11-01', 2, '1604239368', '2020-11-01 05:03:01'),
('182.1.176.228', '2020-11-03', 1, '1604389752', '2020-11-03 07:49:12'),
('182.1.170.20', '2020-11-03', 1, '1604408213', '2020-11-03 12:56:53'),
('66.249.68.6', '2020-11-04', 1, '1604479667', '2020-11-04 08:47:47'),
('114.125.165.60', '2020-11-04', 1, '1604481090', '2020-11-04 09:11:30'),
('66.249.68.9', '2020-11-04', 1, '1604492065', '2020-11-04 12:14:25'),
('129.88.46.51', '2020-11-04', 1, '1604533898', '2020-11-04 23:51:38'),
('114.125.210.127', '2020-11-05', 1, '1604576103', '2020-11-05 11:35:03'),
('114.125.210.77', '2020-11-06', 1, '1604634554', '2020-11-06 03:49:14'),
('114.125.185.165', '2020-11-07', 6, '1604712120', '2020-11-07 01:01:39'),
('114.125.164.76', '2020-11-07', 1, '1604716024', '2020-11-07 02:27:04'),
('114.125.164.83', '2020-11-07', 1, '1604716037', '2020-11-07 02:27:17'),
('114.125.164.88', '2020-11-07', 1, '1604719213', '2020-11-07 03:20:13'),
('114.125.210.69', '2020-11-09', 1, '1604895541', '2020-11-09 04:19:01'),
('8.210.239.61', '2020-11-12', 1, '1605153943', '2020-11-12 04:05:43'),
('66.249.68.30', '2020-11-12', 2, '1605187855', '2020-11-12 09:55:50'),
('180.246.89.91', '2020-11-14', 1, '1605352673', '2020-11-14 11:17:53'),
('64.246.165.180', '2020-11-14', 1, '1605362155', '2020-11-14 13:55:55'),
('182.1.179.245', '2020-11-20', 1, '1605889222', '2020-11-20 16:20:22'),
('182.1.179.233', '2020-11-20', 1, '1605889314', '2020-11-20 16:21:54'),
('66.249.68.3', '2020-11-20', 1, '1605899418', '2020-11-20 19:10:18'),
('66.249.68.4', '2020-11-21', 1, '1605924317', '2020-11-21 02:05:17'),
('125.166.226.178', '2020-11-21', 1, '1605960894', '2020-11-21 12:14:54'),
('51.158.66.83', '2020-11-22', 1, '1606047563', '2020-11-22 12:19:23'),
('51.15.205.3', '2020-11-23', 1, '1606105329', '2020-11-23 04:22:09'),
('65.155.30.101', '2020-11-24', 1, '1606179027', '2020-11-24 00:50:27'),
('205.169.39.41', '2020-11-24', 1, '1606179087', '2020-11-24 00:51:27'),
('70.42.131.189', '2020-11-24', 1, '1606179228', '2020-11-24 00:53:48'),
('51.15.195.246', '2020-11-24', 1, '1606220926', '2020-11-24 12:28:46'),
('54.202.53.254', '2020-11-25', 1, '1606334027', '2020-11-25 19:53:47'),
('114.125.181.231', '2020-11-25', 1, '1606348741', '2020-11-25 23:59:01'),
('66.249.68.3', '2020-11-27', 3, '1606511546', '2020-11-27 21:03:06'),
('66.249.68.30', '2020-11-27', 2, '1606511536', '2020-11-27 21:09:51'),
('66.249.66.76', '2020-11-29', 1, '1606609454', '2020-11-29 00:24:14'),
('202.80.216.194', '2020-11-30', 1, '1606754083', '2020-11-30 16:34:43'),
('103.27.207.18', '2020-12-01', 2, '1606827872', '2020-12-01 04:17:45'),
('66.249.79.222', '2020-12-01', 2, '1606811561', '2020-12-01 08:32:25'),
('114.125.168.5', '2020-12-03', 1, '1606955587', '2020-12-03 00:33:07'),
('36.72.216.236', '2020-12-04', 1, '1607047338', '2020-12-04 02:02:18'),
('138.246.253.24', '2020-12-05', 2, '1607157733', '2020-12-05 02:25:10'),
('138.246.253.24', '2020-12-06', 1, '1607241869', '2020-12-06 08:04:29'),
('167.172.253.93', '2020-12-07', 1, '1607311267', '2020-12-07 03:21:07'),
('180.243.28.102', '2020-12-08', 2, '1607405316', '2020-12-08 05:28:36'),
('64.246.165.160', '2020-12-09', 1, '1607480778', '2020-12-09 02:26:18'),
('138.246.253.24', '2020-12-10', 2, '1607590461', '2020-12-10 08:47:21'),
('180.243.28.102', '2020-12-11', 2, '1607651698', '2020-12-11 01:54:28'),
('44.238.100.150', '2020-12-11', 1, '1607725933', '2020-12-11 22:32:13'),
('13.124.76.8', '2020-12-12', 2, '1607736044', '2020-12-12 01:20:44'),
('138.246.253.24', '2020-12-13', 1, '1607872773', '2020-12-13 15:19:33'),
('35.222.37.109', '2020-12-13', 1, '1607891476', '2020-12-13 20:31:16'),
('66.249.71.146', '2020-12-15', 1, '1607996639', '2020-12-15 01:43:59'),
('138.246.253.24', '2020-12-17', 3, '1608219547', '2020-12-17 12:51:26'),
('66.249.71.158', '2020-12-18', 2, '1608282348', '2020-12-18 01:31:36'),
('66.249.71.156', '2020-12-18', 1, '1608281815', '2020-12-18 08:56:55'),
('66.249.71.157', '2020-12-18', 1, '1608283209', '2020-12-18 09:20:09'),
('66.249.79.197', '2020-12-18', 1, '1608283209', '2020-12-18 09:20:09'),
('66.249.79.222', '2020-12-18', 1, '1608284257', '2020-12-18 09:37:37'),
('51.15.209.146', '2020-12-21', 1, '1608543081', '2020-12-21 09:31:21'),
('66.249.71.156', '2020-12-21', 1, '1608543647', '2020-12-21 09:40:47'),
('66.249.71.157', '2020-12-21', 1, '1608561967', '2020-12-21 14:46:07'),
('207.46.13.198', '2020-12-23', 1, '1608726245', '2020-12-23 12:24:05'),
('66.249.73.36', '2020-12-23', 1, '1608748858', '2020-12-23 18:40:58'),
('66.249.73.40', '2020-12-24', 1, '1608777003', '2020-12-24 02:30:03'),
('138.246.253.24', '2020-12-24', 1, '1608815575', '2020-12-24 13:12:55'),
('35.199.155.61', '2020-12-25', 1, '1608898021', '2020-12-25 12:07:01'),
('34.83.11.124', '2020-12-25', 1, '1608898022', '2020-12-25 12:07:02'),
('34.105.109.39', '2020-12-25', 1, '1608898022', '2020-12-25 12:07:02'),
('34.83.93.181', '2020-12-25', 1, '1608898023', '2020-12-25 12:07:03'),
('138.246.253.24', '2020-12-25', 1, '1608900377', '2020-12-25 12:46:17'),
('18.237.220.60', '2020-12-25', 1, '1608936701', '2020-12-25 22:51:41'),
('138.246.253.24', '2020-12-26', 1, '1608956086', '2020-12-26 04:14:46'),
('209.17.97.50', '2020-12-26', 1, '1608962025', '2020-12-26 05:53:45'),
('209.17.96.114', '2020-12-26', 1, '1608987288', '2020-12-26 12:54:48'),
('66.249.71.157', '2020-12-26', 1, '1609003741', '2020-12-26 17:29:01'),
('66.249.79.222', '2020-12-27', 1, '1609063109', '2020-12-27 09:58:29'),
('66.249.71.157', '2020-12-27', 3, '1609063294', '2020-12-27 09:59:14'),
('66.249.71.156', '2020-12-27', 2, '1609063715', '2020-12-27 10:03:07'),
('66.249.71.158', '2020-12-27', 1, '1609067888', '2020-12-27 11:18:08'),
('213.32.83.105', '2020-12-29', 1, '1609217490', '2020-12-29 04:51:30'),
('157.90.29.145', '2020-12-29', 1, '1609266401', '2020-12-29 18:26:41'),
('34.67.85.50', '2020-12-30', 3, '1609369442', '2020-12-30 20:10:51'),
('134.122.9.235', '2020-12-31', 1, '1609456794', '2020-12-31 23:19:54'),
('103.27.207.18', '2021-01-01', 1, '1609502692', '2021-01-01 12:04:52'),
('138.246.253.24', '2021-01-01', 1, '1609529465', '2021-01-01 19:31:05'),
('138.246.253.24', '2021-01-02', 1, '1609601920', '2021-01-02 15:38:40'),
('77.247.127.75', '2021-01-02', 1, '1609604023', '2021-01-02 16:13:43'),
('64.246.165.150', '2021-01-02', 1, '1609608404', '2021-01-02 17:26:44'),
('77.247.127.75', '2021-01-03', 2, '1609639397', '2021-01-03 02:03:07'),
('138.246.253.24', '2021-01-03', 1, '1609691119', '2021-01-03 16:25:19'),
('159.203.64.138', '2021-01-06', 1, '1609920902', '2021-01-06 08:15:02'),
('34.67.85.50', '2021-01-06', 3, '1609957853', '2021-01-06 14:17:52'),
('138.246.253.24', '2021-01-07', 1, '1610020144', '2021-01-07 11:49:04'),
('13.66.139.112', '2021-01-08', 2, '1610129226', '2021-01-08 14:49:01'),
('138.246.253.24', '2021-01-08', 1, '1610125238', '2021-01-08 17:00:38'),
('163.172.180.25', '2021-01-09', 1, '1610236102', '2021-01-09 23:48:22'),
('51.158.118.231', '2021-01-10', 1, '1610290120', '2021-01-10 14:48:40'),
('51.158.108.77', '2021-01-11', 1, '1610330267', '2021-01-11 01:57:47'),
('23.228.109.146', '2021-01-11', 1, '1610341288', '2021-01-11 05:01:28'),
('23.228.109.146', '2021-01-11', 1, '1610341288', '2021-01-11 05:01:28'),
('2.57.122.33', '2021-01-11', 1, '1610359376', '2021-01-11 10:02:56'),
('51.15.251.143', '2021-01-12', 1, '1610475660', '2021-01-12 18:21:00'),
('66.249.69.164', '2021-01-12', 1, '1610484236', '2021-01-12 20:43:56'),
('66.249.71.157', '2021-01-13', 2, '1610544992', '2021-01-13 03:18:41'),
('51.15.251.143', '2021-01-13', 1, '1610519087', '2021-01-13 06:24:47'),
('66.249.69.164', '2021-01-13', 1, '1610575115', '2021-01-13 21:58:35'),
('163.172.148.199', '2021-01-14', 1, '1610582970', '2021-01-14 00:09:30'),
('138.246.253.24', '2021-01-15', 1, '1610673765', '2021-01-15 01:22:45'),
('138.246.253.24', '2021-01-16', 1, '1610835197', '2021-01-16 22:13:17'),
('66.249.73.38', '2021-01-17', 1, '1610846132', '2021-01-17 01:15:32'),
('138.246.253.24', '2021-01-17', 1, '1610865001', '2021-01-17 06:30:01'),
('66.249.73.36', '2021-01-18', 1, '1610944982', '2021-01-18 04:43:02'),
('66.249.73.40', '2021-01-18', 1, '1610974709', '2021-01-18 12:58:29'),
('13.76.158.243', '2021-01-20', 3, '1611152817', '2021-01-20 14:26:56'),
('40.77.167.20', '2021-01-21', 1, '1611209244', '2021-01-21 06:07:24'),
('100.21.218.158', '2021-01-23', 1, '1611374376', '2021-01-23 03:59:36'),
('66.249.73.38', '2021-01-23', 2, '1611398349', '2021-01-23 07:07:23'),
('66.249.68.30', '2021-01-25', 1, '1611559702', '2021-01-25 07:28:22'),
('116.203.205.103', '2021-01-25', 1, '1611569618', '2021-01-25 10:13:38'),
('34.211.1.34', '2021-01-26', 1, '1611634634', '2021-01-26 04:17:14'),
('66.249.68.4', '2021-01-26', 1, '1611666617', '2021-01-26 13:10:17'),
('66.249.68.30', '2021-01-26', 1, '1611679469', '2021-01-26 16:44:29'),
('216.145.17.190', '2021-01-26', 1, '1611697745', '2021-01-26 21:49:05'),
('66.249.68.3', '2021-01-26', 1, '1611703244', '2021-01-26 23:20:44'),
('66.249.68.3', '2021-01-27', 1, '1611707271', '2021-01-27 00:27:51'),
('66.249.75.194', '2021-01-28', 5, '1611855343', '2021-01-28 00:42:06'),
('66.249.75.197', '2021-01-28', 1, '1611797476', '2021-01-28 01:31:16'),
('129.213.31.250', '2021-01-28', 3, '1611875590', '2021-01-28 17:33:28'),
('66.249.75.222', '2021-01-28', 1, '1611857631', '2021-01-28 18:13:51'),
('161.35.191.209', '2021-01-28', 1, '1611859334', '2021-01-28 18:42:14'),
('66.249.75.222', '2021-01-29', 2, '1611936305', '2021-01-29 14:35:43'),
('66.249.75.197', '2021-01-29', 1, '1611945184', '2021-01-29 18:33:04'),
('78.85.147.157', '2021-01-30', 2, '1611980335', '2021-01-30 04:18:51'),
('66.249.75.194', '2021-01-30', 4, '1612038990', '2021-01-30 09:16:35'),
('66.249.75.197', '2021-01-30', 3, '1612040567', '2021-01-30 09:35:31'),
('129.213.109.135', '2021-01-30', 3, '1612036774', '2021-01-30 17:24:57'),
('66.249.75.222', '2021-01-30', 2, '1612038994', '2021-01-30 20:36:26'),
('34.253.92.29', '2021-01-31', 1, '1612055550', '2021-01-31 01:12:30'),
('66.249.75.194', '2021-01-31', 1, '1612065048', '2021-01-31 03:50:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_sekolah` (`id_sekolah`),
  ADD KEY `id_sekolah_2` (`id_sekolah`),
  ADD KEY `id_sekolah_3` (`id_sekolah`);

--
-- Indeks untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_home`
--
ALTER TABLE `tb_home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_konten`
--
ALTER TABLE `tb_konten`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_member_kategori`
--
ALTER TABLE `tb_member_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_saran_buku`
--
ALTER TABLE `tb_saran_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tokens`
--
ALTER TABLE `tb_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_kategori` (`video_kategori`);

--
-- Indeks untuk tabel `tb_video_kategori`
--
ALTER TABLE `tb_video_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_article`
--
ALTER TABLE `web_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `web_article_category`
--
ALTER TABLE `web_article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_banner`
--
ALTER TABLE `web_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `banner_category_id` (`banner_category_id`);

--
-- Indeks untuk tabel `web_banner_category`
--
ALTER TABLE `web_banner_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_direktori_alumni`
--
ALTER TABLE `web_direktori_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_direktori_guru_staf`
--
ALTER TABLE `web_direktori_guru_staf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_direktori_siswa`
--
ALTER TABLE `web_direktori_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_kontak`
--
ALTER TABLE `web_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_link`
--
ALTER TABLE `web_link`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_page`
--
ALTER TABLE `web_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `web_pengaturan`
--
ALTER TABLE `web_pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_slide`
--
ALTER TABLE `web_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_studi`
--
ALTER TABLE `web_studi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_tokens`
--
ALTER TABLE `web_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_user`
--
ALTER TABLE `web_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_home`
--
ALTER TABLE `tb_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_konten`
--
ALTER TABLE `tb_konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_member_kategori`
--
ALTER TABLE `tb_member_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_saran_buku`
--
ALTER TABLE `tb_saran_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_tokens`
--
ALTER TABLE `tb_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_video_kategori`
--
ALTER TABLE `tb_video_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `web_article`
--
ALTER TABLE `web_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `web_article_category`
--
ALTER TABLE `web_article_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `web_banner`
--
ALTER TABLE `web_banner`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `web_banner_category`
--
ALTER TABLE `web_banner_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `web_direktori_alumni`
--
ALTER TABLE `web_direktori_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `web_direktori_guru_staf`
--
ALTER TABLE `web_direktori_guru_staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `web_direktori_siswa`
--
ALTER TABLE `web_direktori_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `web_kontak`
--
ALTER TABLE `web_kontak`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `web_link`
--
ALTER TABLE `web_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `web_page`
--
ALTER TABLE `web_page`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `web_pengaturan`
--
ALTER TABLE `web_pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `web_slide`
--
ALTER TABLE `web_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `web_studi`
--
ALTER TABLE `web_studi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `web_tokens`
--
ALTER TABLE `web_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `web_user`
--
ALTER TABLE `web_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  ADD CONSTRAINT `video_kategori` FOREIGN KEY (`video_kategori`) REFERENCES `tb_video_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
