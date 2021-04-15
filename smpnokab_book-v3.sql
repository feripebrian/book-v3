-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Jan 2021 pada 10.48
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
-- Database: `smpnokab_book-v3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_article`
--

CREATE TABLE `tb_article` (
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
-- Dumping data untuk tabel `tb_article`
--

INSERT INTO `tb_article` (`id`, `admin_id`, `article_category`, `name`, `slug`, `overview`, `description`, `keyword`, `tag`, `image`, `language`, `created_at`, `updated_at`, `publish_at`, `unpublish_at`, `view`, `visibility`, `status`) VALUES
(2, 0, 1, 'Perpustakaan Digital SMP N 2 Okaba', 'perpustakaan_digital_smp_n_2_okaba', NULL, '<p style=\"text-align:justify\">Perpustakaan digital (E-Book Library) adalah perpustakaan yang mempunyai koleksi buku sebagian besar dalam bentuk format digital dan yang bisa diakses dengan komputer atau smart phone. Jenis perpustakaan ini berbeda dengan jenis perpustakaan konvensional yang berupa kumpulan buku tercetak, film mikro (microform dan microfiche), ataupun kumpulan kaset audio, video, dll. Isi dari perpustakaan digital berada dalam suatu komputer server yang bisa ditempatkan secara lokal, maupun di lokasi yang jauh, namun dapat diakses dengan cepat dan mudah lewat jaringan komputer.</p>\r\n', '', '', 'http://smpn2okaba.sch.id/source/3.png', 'ID', '0000-00-00 00:00:00', '2020-11-20 16:15:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1),
(3, 0, 2, 'Pemberitahuan Umum', 'pemberitahuan_umum', NULL, '<p>Selamat Pagi...</p>\r\n\r\n<p>Ditujukan kepada Seluruh Siswa dan siswi SMP N 2 Okaba Kab.Merauke</p>\r\n\r\n<p>Diharapkan untuk berperan Aktif secara positif dalam memanfaatkan fasilitas Jaringan Internet Gratis disekitar Sekolah, serta Memanfaatkan Perpustakaan Digital Sekolah guna menjadi sarana dalam meningkatkan Kemampuan generasi Bangsa Indonesia.&nbsp;</p>\r\n', '', '', 'http://smpn2okaba.sch.id/source/PENGATURAN/avatar5.png', 'ID', '2020-06-17 11:04:54', '2020-11-20 16:45:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1),
(4, 0, 1, 'Pentingnya Website Sekolah untuk Kemajuan Sekolah', 'pentingnya_website_sekolah_untuk_kemajuan_sekolah', NULL, '<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#8b8c94\">Keberadaan website sekarang ini sangatlah penting untuk meningkatkan eksistensi organisasi yang bersangkutan. Tidak mengherankan jika saat ini banyak layanan jasa penyedia pembuatan website bagi organisasi untuk meningkatkan citra sekaligus juga integritas dari organisasi tersebut. Salah satu jenis website organisasi yaitu website sekolah yang sangat berpengaruh pada eksistensi sekolah tersebut ketika dikelola dan dikembangkan dengan baik.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#8b8c94\">Eksistensi dari sebuah organisasi seperti halnya pada sekolah dipengaruhi oleh SDM-nya yang mengerti tentang teknologi dan mampu memanfaatkan dengan baik perkembangan internet di era digital saat ini. Hadirnya website sekolah akan sangat membantu sekolah dalam menangani berbagai hal terkait sebagai media penyebaran informasi dan lain sebagainya.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#8b8c94\">Untuk itu, berikut ini adalah beberapa hal penting yang menjadikan setiap sekolah saat ini harus mempunyai sebuah website.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">1. Sebagai Media Untuk Membantu meningkatkan kredibilitas sekolah</span></span></span></span></span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">2. Sebagai media informasi sekolah dengan wali siswa</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">3. Sebagai media untuk mempublikasikan berbagai prestasi sekolah</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">4. Sebagai Media Untuk Memperkenalkan berbagai fasilitas yang tersedia</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">5. Sebagai Media untuk promosi</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">6. Sebagai Media pemberitahuan informasi kelulusan para siswa</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">7. Sebagai Media Untuk Menampilkan profile sekolah</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">8. Sebagai Media untuk menampilkan struktur sekolah</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#4f81bd\"><span style=\"color:#333333\">9. Sebagai Media Untuk Menyambung tali silaturahmi antara guru dengan alumni</span></span></span></span></span></h3>\r\n\r\n<p><span style=\"font-size:11px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#333333\">10. Sebagai Media untuk menampilkan galeri sekolah</span></span></span></p>\r\n', '', '', 'http://smpn2okaba.sch.id/source/4.png', 'ID', '2020-06-17 11:08:37', '2020-11-20 16:35:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1),
(5, 0, 1, 'Satgas: Sampai Nanti Vaksin Covid-19 Sudah Ada, Ingat Disiplin 3M  ', 'satgas:_sampai_nanti_vaksin_covid-19_sudah_ada,_ingat_disiplin_3m__', NULL, '<p><span style=\"font-size:10.0pt\"><span style=\"background-color:white\"><span style=\"color:#2a2a2a\">Penulis Fitria Chusna Farisa | Editor Kristian Erdianto JAKARTA, KOMPAS.com - Juru Bicara Satuan Tugas Penanganan Covid-19 Reisa Broto Asmoro mengingatkan pentingnya penerapan 3M, yakni memakai masker, mencuci tangan dan menjaga jarak selama pandemi virus corona. Protokol tersebut harus terus diterapkan selama menunggu vaksin Covid-19, bahkan hingga kelak vaksin sudah ada dan diproduksi secara massal. Baca juga: Biaya Perawatan Pasien Covid-19 Habiskan Ratusan Juta, Satgas Ingatkan Pentingnya Pencegahan &nbsp; &quot;Sementara menunggu vaksin sampai nanti pun vaksin sudah ada ingat kita tetap harus disiplin 3M,&quot; kata Reisa dalam diskusi virtual yang ditayangkan YouTube Sekretariat Presiden, Jumat (20/11/2020). &quot;Memakai masker dengan baik dan benar, menjaga jarak aman minimal 1 meter, mencuci tangan sesering mungkin idealnya dengan sabun dan air mengalir minimal 20 detik,&quot; tuturnya. Reisa mengingatkan, Instruksi Presiden Nomor 6 tahun 2020 tentang peningkatan disiplin dan penegakan hukum protokol kesehatan dalam pencegahan dan pengendalian Covid-19 masih berlaku. Ia meminta masyarakat menerapkan 3M sebagai satu kesatuan protokol kesehatan yang praktiknya tidak terpisah-pisah. Bersamaan dengan itu, masyarakat diminta terus mendukung upaya pemerintah menerapkan 3T, yakni testing, tracing dan treatment. &quot;Tunjukkan kerja sama baik kita sebagai warga negara untuk kebaikan kita bersama juga,&quot; ujar Reisa. Baca juga: Satgas: Kerumunan Terkait Rizieq Shihab Diharapkan Sadar dan Ikhlas Tes Covid-19 Terkait dengan vaksin Covid-19, Reisa menyebut bahwa pemerintah mengutamakan kepastian keamanannya. Hal ini sebelumnya telah disampaikan Presiden Joko Widodo. Jokowi menyebut, vaksin yang akan digunakan harus masuk ke dalam daftar Badan Kesehatan Dunia atau World Health Organization (WHO) serta sesuai data sains dan standar kesehatan. Dikatakan pula oleh Jokowi bahwa vaksin harus melewati tahapan di Badan Pengawas Obat dan Makanan (BPOM) serta wajib memiliki emergency use authorization. &quot;Ketiga, sebelum vaksinasi dilakukan pemerintah akan terus melakukan sosialisasi vaksin, termasuk juga sosialisasi melalui tokoh-tokoh agama agar penerimaan masyarakat akan vaksin ini akan terus meningkat,&quot; kata Reisa. Reisa pun meminta masyarakat untuk kelak tidak takut divaksin ketika vaksin Covid-19 sudah tersedia.</span></span></span><br />\r\n<br />\r\n<span style=\"font-size:10.0pt\"><span style=\"color:#2a2a2a\"><span style=\"background-color:white\">Artikel ini telah tayang di&nbsp;</span></span></span><span style=\"font-size:11.0pt\"><a href=\"https://www.kompas.com/\" style=\"box-sizing:border-box; color:inherit; outline:0px; transition:all 0.2s ease 0s; font-variant-ligatures:normal; font-variant-caps:normal; orphans:2; text-align:start; widows:2; -webkit-text-stroke-width:0px; word-spacing:0px; text-decoration:underline\"><span style=\"font-size:10.0pt\"><span style=\"background-color:white\">Kompas.com</span></span></a></span><span style=\"font-size:10.0pt\"><span style=\"background-color:white\"><span style=\"color:#2a2a2a\">&nbsp;dengan judul &quot;Satgas: Sampai Nanti Vaksin Covid-19 Sudah Ada, Ingat Disiplin 3M&quot;, Klik untuk baca:&nbsp;</span></span></span><span style=\"font-size:11.0pt\"><a href=\"https://nasional.kompas.com/read/2020/11/20/22471791/satgas-sampai-nanti-vaksin-covid-19-sudah-ada-ingat-disiplin-3m\" style=\"box-sizing:border-box; color:inherit; outline:0px; transition:all 0.2s ease 0s; font-variant-ligatures:normal; font-variant-caps:normal; orphans:2; text-align:start; widows:2; -webkit-text-stroke-width:0px; word-spacing:0px; text-decoration:underline\"><span style=\"font-size:10.0pt\"><span style=\"background-color:white\">https://nasional.kompas.com/read/2020/11/20/22471791/satgas-sampai-nanti-vaksin-covid-19-sudah-ada-ingat-disiplin-3m</span></span></a></span><span style=\"font-size:10.0pt\"><span style=\"background-color:white\"><span style=\"color:#2a2a2a\">.</span></span></span><br />\r\n<span style=\"font-size:10.0pt\"><span style=\"color:#2a2a2a\"><span style=\"background-color:white\">Penulis : Fitria Chusna Farisa</span><br />\r\n<span style=\"background-color:white\">Editor : Kristian Erdianto</span></span></span></p>\r\n', '', '', 'http://smpn2okaba.sch.id/source/5.png', 'ID', '2020-11-11 11:53:26', '2020-11-20 16:41:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1),
(6, 0, 1, 'Berita 4', 'berita_4', NULL, '<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 'http://book-v3.it/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', 'ID', '2020-11-11 11:54:26', '2020-11-20 02:31:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_article_category`
--

CREATE TABLE `tb_article_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_article_category`
--

INSERT INTO `tb_article_category` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Informasi', 'informasi', 1),
(2, 'Berita', 'berita', 1),
(3, 'Berita Terkini', 'Berita_Terkini', 1);

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
  `id_sekolah` int(11) DEFAULT NULL,
  `buku_kelas` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `file` text DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `cover` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul_buku`, `penerbit`, `pengarang`, `tahun`, `kategori`, `id_sekolah`, `buku_kelas`, `status`, `file`, `date_upload`, `cover`) VALUES
(1, 'Pendidikan Agama Katolik dan Budi Pekerti', 'Kementrian Pendidikan dan Kebudayaan Republik Indonesia', 'Maman Sutarman dan Lorensius Atrik Wibawa.', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/1iiTRemM8OqOqu3A1_4bMd6RW7MwK67dE/preview', '2020-11-30 16:51:49', ''),
(2, 'Pendidikan Agama Islam dan Budi Pekerti', 'Kementrian Pendidikan dan Kebudayaan Republik Indonesia', 'Muhammad Ahsan, Sumiyati, dan Mustahdi.', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/1ZdRniDE1ebKzKfORL1g8CAHf05jDBWhx/preview', '2020-11-30 16:49:47', ''),
(3, 'Pendidikan Agama Hindu dan Budi Pekerti', 'Kementrian Pendidikan dan Kebudayaan Republik Indonesia', 'Ida Made Sugita.', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/150r3KvuLF3mvtmEgOY5z6hhcib4cH_4Z/preview', '2020-11-30 16:48:49', ''),
(4, 'Matematika', 'Kementrian Pendidikan dan Kebudayaan Republik Indonesia', 'Abdur Rahman As’ari, Mohammad Tohir, Erik Valentino,  Zainul Imron, dan Ibnu Taufiq.', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/11-cFOqGv0vwthxqK3UZ02OBgRpYFrbbH/preview', '2020-11-30 16:47:46', ''),
(5, 'Ilmu Pengetahuan Alam S2', 'Kementrian Pendidikan dan Kebudayaan Republik Indonesia', 'Wahono Widodo, Fida Rachmadiarti, dan Siti Nurul Hidayati.', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/1-OB9tLQurjy_zrDyndTc5fpzs6Tq85tu/preview', '2020-11-30 16:46:45', ''),
(6, 'Ilmu Pengetahuan Alam', 'Kementrian Pendidikan dan Kebudayaan Republik Indonesia', '-', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/1ygWOWzufIzQM6Lx8CBjsghzVlMC3rP00/preview', '2020-11-30 16:44:50', ''),
(8, 'p', 'p', 'p', 0, 'Umum', NULL, 1, 1, 'http://book.it/source/BUKU/Kelas_07_SMP_Pendidikan_Jasmani_Olahraga_dan_Kesehatan_Siswa_2017-thumb.jpg', '2020-09-18 06:20:51', 'http://book.it/source/BUKU/Kelas_07_SMP_Pendidikan_Jasmani_Olahraga_dan_Kesehatan_Siswa_2017-thumb.jpg'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-19 08:35:29', NULL),
(10, 'Bahasa Inggris, When English Rings a Bell', 'Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud', 'Siti Wachidah, Asep Gunawan, Diyantari, Yuli Rulani Khatimah.', 2017, 'Pelajaran', 2, 7, 1, 'https://drive.google.com/file/d/1qmbqnvBkBoRW3mWy9t_CNuJJI771vtL-/preview', '2020-11-30 16:43:18', ''),
(11, 'Seni Budaya', 'Kementerian Pendidikan dan Kebudayaan', 'Milasari, Heru Subagio, Siti Masripah, dan Jelmanto.', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1FNmRtzaf7IFPR75a1RY42IWowUy5gOTO/preview', '2020-12-08 06:42:17', ''),
(12, 'Prakarya 2', 'Kementerian Pendidikan dan Kebudayaan', 'Dewi Sri Handayani Nuswantari, Sukri Paroki Saha, Ichda Chaerudin, Yenti Rokhmulyenti, dan Sri Samini.', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1pDj5gXZxVCWv1GwmHEA-xka619BM2BYY/preview', '2020-12-08 06:42:24', ''),
(13, 'Prakarya 1', 'Kementerian Pendidikan dan Kebudayaan', 'Dewi Sri Handayani Nuswantari, Sukri Paroki Saha, Ichda Chaerudin, Yenti Rokhmulyenti, dan Sri Samini.', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1qADAnDQZnN4rJHtFRUlqDXxkI04eY8E-/preview', '2020-12-08 06:42:29', ''),
(14, 'Pendidikan Pancasila dan Kewarganegaraan', 'Kementerian Pendidikan dan Kebudayaan', 'Salikun, Rapii Pramedya, Yusnawan Lubis, dan Asep Sutisna Putra.', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-12-08 06:40:50', ''),
(15, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'Kementerian Pendidikan dan Kebudayaan', 'Bambang Abduljabar dan Lukmanul Haqim Lubay', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1zw0Un02Gbvdx8Bp2QRPn6548Fy7JuuEO/preview', '2020-12-08 06:43:46', ''),
(16, 'Pendidikan Agama dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1RO3AuP3s-DmI_PxjqRZULN-sJwLkSgBI/preview', '2020-12-08 06:46:18', ''),
(17, 'Pendidikan Agama Khonghucu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Suci Paresti, Dewi Sri Handayani N., Erny Yuliani, Hadi Saputro, Yudia Putri Anne, Ayat Suryatna, Kamin Sumardi, Irma Isna!a Arief, dan Atat Siti Nurani', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1aaMO6mZbQmGw0trE63xeld7hAy1MqyGo/preview', '2020-12-08 06:47:09', ''),
(18, 'Pendidikan Agama Katolik dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Lorensius Atrik Wibawa dan Y. Sulisdwiyanta', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-12-08 06:47:57', ''),
(19, 'Pendidikan Agama Islam dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Muhammad Ahsan dan Sumiyati', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/18xvPBJOgGgZOd3L13gNAyfC54mk_wy-7/preview', '2020-12-08 06:48:50', ''),
(20, 'Pendidikan Agama Hindu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Untung Suhardi dan Ida Bagus Sudirga.', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/19E1alYO-0ZvuReUxvD1_R2suVDgtMAZ0/preview', '2020-12-08 06:49:35', ''),
(21, 'Pendidikan Agama Buddha dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Sulan dan Karsan', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1WOH1i83Tf6W5kAuk_h8QO2lCB4Jbn6-x/preview', '2020-12-08 06:50:22', ''),
(22, 'MATEMATIKA 2', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/16jIcylTMDHsaBYOtyv7UfXp9qINKZUfm/preview', '2020-12-08 06:52:25', ''),
(23, 'MATEMATIKA', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1IkAbxtSc_uE-aKl-8_eEWJVf64Wj9zWz/preview', '2020-12-08 07:06:03', ''),
(24, 'ILmu Pengetahuan Sosial', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/12YQmq4M5-EMSUWeVu-WVwO1DRZVfHQhw/preview', '2020-12-08 07:09:05', ''),
(25, 'ILmu Pengetahuan Alam 2', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1OTIjZAXwDCKtJCIsdF4_4dMI49Dk2MZ6/preview', '2020-12-08 07:11:58', ''),
(26, 'ILmu Pengetahuan Alam', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1OUQA8ArGmYiquRieZs9AiR0TFx1g4D8n/preview', '2020-12-08 07:12:33', ''),
(27, 'Bahasa Inggris', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1TihgtGuHiEZ7KNhxxI7VqvUMPiyVST4X/preview', '2020-12-08 07:13:15', ''),
(28, 'Bahasa Indonesia', 'Kementerian Pendidikan dan Kebudayaan', '-', 2015, 'Pelajaran', 2, 9, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-12-08 07:15:57', ''),
(29, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'Kementerian Pendidikan dan Kebudayaan', 'Roji dan Eva Yulianti', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1fOHFLr9IiFnBG8IFYJ-bltETOaPszB7j/preview', '2020-12-08 07:19:53', ''),
(30, 'Pendidikan Agama Kristen dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Julia Suleeman Chandra, Janse Belandina  Non- Serrano.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1TCJiNQlcMJpDvfjeQMODCOV4izNzo_XU/preview', '2020-12-08 07:20:42', ''),
(31, 'Pendidikan Agama Khonghucu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Novita Sari dan Js. Yudi.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1nyHu8Cg0vm8_ldGCY83NQ9rqDW6rEtIW/preview', '2020-12-08 07:21:28', ''),
(32, 'Pendidikan Agama Katolik dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Lorensius Atrik Wibawa, Y. Sulisdwiyanta.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/10cS2dK_c52Qa-mIXXPw1P1ZxANWfvLi5/preview', '2020-12-08 07:22:16', ''),
(33, 'Pendidikan Agama Islam dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Muhammad Ahsan dan Sumiyati', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/14bL_WR2IFAohnxROgzQdkPQl7SngLxWw/preview', '2020-12-08 07:23:05', ''),
(34, 'Pendidikan Agama Hindu dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Komang Susila.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1GfZKQ_YTsJnDDmtrq5_qO3o7uk0uU3GA/preview', '2020-12-08 07:24:16', ''),
(35, 'Pendidikan Agama Buddha dan Budi Pekerti', 'Kementerian Pendidikan dan Kebudayaan', 'Karsan dan Sulan', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/17lDJ1vIAglhDs9RBqAFg96FFOTiG6z6T/preview', '2020-12-08 07:25:01', ''),
(36, 'MATEMATIKA', 'Kementerian Pendidikan dan Kebudayaan', 'Abdur Rahman As’ari, Mohammad Tohir, Erik Valentino,  Zainul Imron, Ibnu Taufq.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1G2EHfcZ4I6p3QyEha8eWQuoUU-vO9Owg/preview', '2020-12-08 07:25:51', ''),
(37, 'ILmu Pengetahuan Alam', 'Kementerian Pendidikan dan Kebudayaan', 'Siti Zubaidah, Susriyati Mahanal, Lia Yuliati, I Wayan Dasna, Ardian A. Pangestuti, Dyne R. Puspitasari, Hamim T. Mahfudhillah, Alifa Robitah, Zenia L.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1eDOqkwdMKBhSHNPMDoVmrqL38LBBSRT4/preview', '2020-12-08 07:26:45', ''),
(38, 'Ilmu Pengetahuan Alam 2', 'Kementerian Pendidikan dan Kebudayaan', 'Siti Zubaidah, Susriyati Mahanal, Lia Yuliati, I Wayan Dasna, Ardian A. Pangestuti, Dyne R. Puspitasari, Hamim T. Mahfudhillah, Alifa Robitah, Zenia L. Kurniawati, Fatia Rosyida, dan Mar’atus Sholihah.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/19Qk373zVGnIGh3gchIEqjn3PcPcrRqlI/preview', '2020-12-08 07:27:41', ''),
(39, 'Ilmu Pengetahuan Alam', 'Kementerian Pendidikan dan Kebudayaan', 'Siti Zubaidah, Susriyati Mahanal, Lia Yuliati, I Wayan Dasna, Ardian A. Pangestuti, Dyne R. Puspitasari, Hamim T. Mahfudhillah, Alifa Robitah, Zenia L. Kurniawati, Fatia Rosyida, dan Mar’atus Sholihah.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1zth2-wmUi07Iysa1xP2N5b1Bx6ZwjoHQ/preview', '2020-12-08 07:28:38', ''),
(40, 'Bahasa Inggris', 'Kementerian Pendidikan dan Kebudayaan', 'Siti Wachidah, Asep Gunawan, Diyantari, dan Yuli Rulani Khatimah.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1Hw91XA9c1CuLKp9PhAt1ujZ963ZsagEBf/preview', '2020-12-08 07:29:43', ''),
(41, 'Bahasa Indonesia', 'Kementerian Pendidikan dan Kebudayaan', 'E. Kosasih.', 2017, 'Pelajaran', 2, 8, 1, 'https://drive.google.com/file/d/1Yi-Q-jbSuJrftsD6fmJuItmoLGH40Qxo/preview', '2020-12-08 07:30:22', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_direktori_alumni`
--

CREATE TABLE `tb_direktori_alumni` (
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
-- Dumping data untuk tabel `tb_direktori_alumni`
--

INSERT INTO `tb_direktori_alumni` (`id`, `nama`, `tempat`, `tanggal_lahir`, `foto`, `tahun_lulus`, `created_at`, `updated_at`, `status`) VALUES
(2, 'Feri Pebriansah Nugraha', 'Sukabumi', '1992-02-14', 'https://smpn7merauke.sch.id/source/PENGATURAN/avatar5.png', '2010', '2020-11-07 12:02:14', '2020-12-02 04:08:57', '1'),
(3, 'alumni 2', '', '', 'https://smpn7merauke.sch.id/source/PENGATURAN/avatar5.png', '', NULL, '2020-12-02 04:09:03', '1'),
(4, 'asi', 'asu', '2020-12-28', 'https://smpn7merauke.sch.id/source/PENGATURAN/avatar5.png', '127', '2020-11-08 09:54:58', '2020-12-02 04:09:08', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_direktori_guru_staf`
--

CREATE TABLE `tb_direktori_guru_staf` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` int(20) DEFAULT NULL,
  `studi` varchar(100) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_direktori_guru_staf`
--

INSERT INTO `tb_direktori_guru_staf` (`id`, `nama`, `nip`, `studi`, `tempat`, `tanggal_lahir`, `foto`, `kategori`, `created_at`, `updated_at`, `status`) VALUES
(5, 'Feri Pebriansah Nugraha', 1111111111, 'Komputer', 'Sukabimu', '1992-02-14', 'https://smpn7merauke.sch.id/source/PENGATURAN/avatar5.png', 1, '2020-11-07 11:13:56', '2020-12-02 04:08:23', '1'),
(6, 'Abrur', 0, 'BK', 'Jakarta', '1990-01-01', 'https://smpn7merauke.sch.id/source/PENGATURAN/avatar5.png', 2, '2020-11-07 12:10:46', '2020-12-02 04:08:36', '1'),
(7, '1', 1, '1', '1', '', 'https://smpn7merauke.sch.id/source/PENGATURAN/avatar5.png', 1, '2020-11-08 09:14:46', '2020-12-02 04:08:41', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(11) NOT NULL,
  `gambar` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `kategori` int(11) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_galeri`
--

INSERT INTO `tb_galeri` (`id`, `gambar`, `keterangan`, `status`, `kategori`, `date_upload`) VALUES
(12, 'http://smpn2okaba.sch.id/source/SLIDE/1.jpg', '', 1, 1, '2020-11-20 15:12:00'),
(13, 'http://smpn2okaba.sch.id/source/WhatsApp%20Image%202020-10-26%20at%2012-55-15.jpg', '', 1, 2, '2020-11-20 15:24:03'),
(14, 'http://smpn2okaba.sch.id/source/WhatsApp%20Image%202020-10-26%20at%2015-40-49.jpg', '', 1, 3, '2020-11-20 15:24:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_galeri_kategori`
--

CREATE TABLE `tb_galeri_kategori` (
  `id` int(11) NOT NULL,
  `k_galeri` varchar(100) DEFAULT NULL,
  `slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_galeri_kategori`
--

INSERT INTO `tb_galeri_kategori` (`id`, `k_galeri`, `slug`) VALUES
(1, 'Ekstra Kulikuler', 'ekstra_kulikuler'),
(2, 'Pembelajaran', 'pembelajaran'),
(3, 'Umum', 'umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_home`
--

CREATE TABLE `tb_home` (
  `id` int(11) NOT NULL,
  `tittle` varchar(50) DEFAULT NULL,
  `nama_sekolah` varbinary(100) DEFAULT NULL,
  `kepala_sekolah` varchar(100) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `logo_login` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `selogan` text DEFAULT NULL,
  `alamat` text NOT NULL,
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

INSERT INTO `tb_home` (`id`, `tittle`, `nama_sekolah`, `kepala_sekolah`, `foto`, `logo_login`, `logo`, `banner`, `selogan`, `alamat`, `background`, `maskot`, `tentang_e_book`, `meta`, `descriptions`, `date_update`) VALUES
(1, 'Perpustakaan', 0x534d504e2032204f6b616261, 'Kepala Sekolah', 'http://smpn2okaba.sch.id/source/PENGATURAN/avatar5.png', 'http://smpn2okaba.sch.id/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', 'http://smpn2okaba.sch.id/source/PENGATURAN/LOGO%20(3).png', 'http://smpn2okaba.sch.id/source/PENGATURAN/banner.png', 'Rajin-rajinlah belajar Demi Masa Depan', 'Jln. Walewol, Kampung Es Wambi - Distrik Okaba, Kab. Merauwke, Kode Pos. 99654.', 'http://smpn2okaba.sch.id/source/PENGATURAN/banner.png', 'http://book-v3.it/source/PENGATURAN/MKT.png', '<p style=\"text-align:justify\"><strong><span style=\"font-size:18px\">Ter - Integrasi dengan Website Sekolah</span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Salom&hellip;&hellip;.</span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Dengan mengucapkan segala puji ke hadirat Tuhan Yang Maha Esa, disertai rasa syukur karena&nbsp; dengan bimbingan, rahmat, dan karunia-Nya lah akhirnya&nbsp;<em>Website&nbsp;</em>ter - Integrasi&nbsp;sekolah ini dapat kami wujutkan dengan domain&nbsp;<a href=\"http://smpn2okaba.sch.id/\" style=\"box-sizing:border-box; color:blue; text-decoration:underline\">http://smpn2okaba.sch.id/</a> </span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Selamat datang di&nbsp;<em>Website</em>&nbsp;ter - Integrasi resmi Sekolah Menengah Pertama Negeri 2 Okaba Kabupaten Merauke. Dalam perkembangan era globalisasi dan pesatnya kemajuan teknologi dan informasi ini, tidak dapat dipungkiri bahwa keberadaan sebuah&nbsp;<em>website</em>&nbsp;untuk dunia pendidikan khususnya sekolah, sangatlah penting. Media&nbsp;<em>website</em>&nbsp;dapat digunakan sebagai penyedia sarana dalam menyebarluaskan informasi dan perkembangan terkini dari sekolah, yang memang harus diketahui oleh setiap&nbsp;<em>stakeholder</em>&nbsp;secara riil. Disamping itu,&nbsp;<em>website</em>&nbsp;juga dapat menjadi ajang promosi sekolah yang cukup efektif. Berbagai kegiatan kemajuan sekolah dapat disampaikan dan di&nbsp;<em>upload</em>, disertai data maupun gambar yang relevan, sehingga masyarakat dapat mengetahui kemajuan maupun prestasi-prestasi yang telah berhasil diraih oleh SMP Negeri 2 Okaba Kabupaten Merauke.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Sebagai media pembelajaran,&nbsp;<em>website</em>&nbsp;SMP Negeri 2 Okaba Kabupaten Merauke ini di integrasikan &nbsp;dengan sarana pembelajaran lain yang kita kemas dalam bentuk Perpustakaan Digital. Sehingga dapat menunjang terwujudnya sarana kegiatan pembelajaran dengan berbasis Teknologi dan Informasi.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#222222\">Seiring dengan perkembangan zaman dan kemajuan teknologi, saat ini perpustakaan tidak hanya bisa didirikan dan dibuat dalam wujud konvensional saja tapi secara digital dan dinamakan sebagai perpustakaan digital atau digital library. Tujuan pendiriannya tetap sama, menyediakan koleksi buku, majalah, jurnal hingga berbagai jenis bacaan lainnya untuk menyebarkan ilmu pengetahuan bagi masyarakat khususnya kaum pelajar dan akademisi.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"background-color:white\"><span style=\"color:#222222\">Namun demikian perpustakaan Digital SMP Negeri 2 Okaba Kabupaten Merauke difokuskan dalam kesediaan Buku-buku serta video-video pembelajaran disekolah. Hal ini dimaksutkan agar siswa dapat belajar dengan lebih mudah baik disekolah, dirumah maupun didaerah daerah tertentu yang pastin ya telah tersedia jaringan Internet. &nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Tak lupa pula kami sampaikan terimakasih kepada Pemerintah Daerah Kabupaten Merauke melalui Dinas Kominfo Kab.Merauke yang telah memberikan Fasilitas layanan internet gratis freehospot dikampung Wambi distrik okaba yang menjadi pusat belajar mengajar SMP N 2 Okaba. </span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Dengan demikian kami selaku SMP N 2 Okaba tentunya menyabut baik teknologi tersebut dengan menyediakan pusat belajar siswa yang kami kemas secara ter-integrasi antara Website Sekolah dan Perpustakaan Digital itu sendiri.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Akhir kata&nbsp;<strong>&ldquo;</strong>&nbsp;<strong>Tak ada gading&nbsp;yang&nbsp;tak retak &rdquo;</strong>&nbsp;segala sesuatu pasti memiliki kekurangan atau kelemahan masing-masing baik dalam bentuk tulisan maupun penyajian pada&nbsp;<em>website</em>&nbsp;ter integrasi SMP N 2 Okaba. Oleh Karena itu, kami akan terus belajar dan&nbsp;<em>meng-update</em>&nbsp;diri, sehingga mutu dan kualitas dari tampilan serta isi&nbsp;<em>website</em>&nbsp;ter integrasi kami akan terus berkembang. Kepada tim pembuat dan pengelola&nbsp;<em>website</em>&nbsp;ter integrasi sekolah, kami mengharapkan agar terus senantiasa mengembangkan&nbsp;<em>website</em>&nbsp;dengan semangat dan pantang menyerah. Terima kasih atas kerjasamanya, maju terus untuk mencapai SMP N 2 Okaba yang lebih berkualitas dan sukses dalam mencerdaskan kehidupan anak Bangsa Indonesia di bagian timur ini.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">Salom&hellip;.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kepala SMP Negeri 2 Okaba</span></span></span></span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<u>Yulius Kurimanop,S.Pd</u></span></span></span></span></p>\r\n\r\n<p style=\"text-align:right\"><span style=\"font-size:11.0pt\"><span style=\"color:#333333\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NIP 19680604200003 1 006</span></span></p>\r\n', 'meta', 'description', '2020-11-20 16:19:00');

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
(1, 1, 'Novel', NULL, 0, '2020-09-17 10:03:48'),
(3, 3, 'Ensiklopedia', NULL, 0, NULL),
(4, NULL, 'Kategoris', NULL, NULL, '2020-09-21 03:13:16'),
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
(17, 17, 'SD', NULL, 0, '2020-09-17 10:04:05'),
(18, 18, 'SMP', NULL, 0, '2020-09-17 10:04:14'),
(19, 19, 'SMA', NULL, 0, '2020-09-17 10:04:25'),
(20, 20, 'Pelajaran', NULL, 1, '2020-09-17 10:03:19'),
(21, 21, 'Umum', NULL, 1, '2020-09-17 10:03:39');

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
(1, 'Profile Sekolah', '<p style=\"text-align:center\"><a href=\"http://book.it/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png\" target=\"_blank\"><img alt=\"\" src=\"https://smpn7merauke.sch.id/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png\" style=\"height:312px; width:307px\" /></a></p>\r\n\r\n<p style=\"text-align:justify\">&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '2020-12-02 04:07:49'),
(2, 'Visi dan Misi', '<p style=\"text-align:justify\">&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '2020-05-11 22:41:33'),
(3, 'Struktur Organisasi', '<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '2020-11-20 02:28:28'),
(4, 'Fasilitas', '<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '2020-11-20 02:28:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_link`
--

CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_link`
--

INSERT INTO `tb_link` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Kementrian Pendidikan dan Kebudayaan', 'http://smpn2okaba.sch.id/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', 'url', '2020-06-18 04:05:48', '2020-11-20 02:29:49', 1),
(2, 'Kementrian Pendidikan dan Kebudayaan', 'http://smpn2okaba.sch.id/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', 'url', '2020-06-18 04:06:41', '2020-11-20 02:29:57', 1);

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
(14, 123, 'Feri Pebriansah Nugraha', 'Guru', 4, 'June', 2020, '2020-06-04', '14:24:31'),
(15, 123, 'Feri Pebriansah Nugraha', 'Guru', 4, 'June', 2020, '2020-06-04', '14:26:56'),
(16, 123, 'Feri Pebriansah Nugraha', 'Guru', 4, 'June', 2020, '2020-06-04', '14:37:20'),
(17, 123, 'Feri Pebriansah Nugraha', 'Guru', 2, 'September', 2020, '2020-09-02', '03:52:35'),
(18, 123, 'Feri Pebriansah Nugraha', 'Guru', 5, 'September', 2020, '2020-09-05', '13:44:59'),
(19, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '03:36:30'),
(20, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '03:58:08'),
(21, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:34:03'),
(22, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:43:50'),
(23, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:45:17'),
(24, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:45:39'),
(25, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:45:52'),
(26, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:46:01'),
(27, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:46:15'),
(28, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:48:37'),
(29, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:51:18'),
(30, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:52:32'),
(31, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '09:53:56'),
(32, 123, 'Feri Pebriansah Nugraha', 'Guru', 17, 'September', 2020, '2020-09-17', '10:04:42'),
(33, 123, 'Feri Pebriansah Nugraha', 'Guru', 18, 'September', 2020, '2020-09-18', '03:37:26'),
(34, 123, 'Feri Pebriansah Nugraha', 'Guru', 18, 'September', 2020, '2020-09-18', '04:19:42'),
(35, 123, 'Feri Pebriansah Nugraha', 'Guru', 18, 'September', 2020, '2020-09-18', '05:18:13'),
(36, 123, 'Feri Pebriansah Nugraha', 'Guru', 19, 'September', 2020, '2020-09-19', '09:05:46'),
(37, 123, 'Feri Pebriansah Nugraha', 'Guru', 19, 'September', 2020, '2020-09-19', '09:14:15'),
(38, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'September', 2020, '2020-09-20', '04:33:54'),
(39, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'September', 2020, '2020-09-20', '05:25:32'),
(40, 123, 'Feri Pebriansah Nugraha', 'Guru', 22, 'September', 2020, '2020-09-22', '08:10:30'),
(41, 123, 'Feri Pebriansah Nugraha', 'Guru', 22, 'September', 2020, '2020-09-22', '09:02:02'),
(42, 123, 'Feri Pebriansah Nugraha', 'Guru', 23, 'September', 2020, '2020-09-23', '02:51:55'),
(43, 123, 'Feri Pebriansah Nugraha', 'Guru', 23, 'September', 2020, '2020-09-23', '04:18:40'),
(44, 123, 'Feri Pebriansah Nugraha', 'Guru', 24, 'September', 2020, '2020-09-24', '07:13:29'),
(45, 123, 'Feri Pebriansah Nugraha', 'Guru', 23, 'October', 2020, '2020-10-23', '15:08:01'),
(46, 123, 'Feri Pebriansah Nugraha', 'Guru', 7, 'November', 2020, '2020-11-07', '04:25:51'),
(47, 123, 'Feri Pebriansah Nugraha', 'Guru', 7, 'November', 2020, '2020-11-07', '06:53:22'),
(48, 123, 'Feri Pebriansah Nugraha', 'Guru', 7, 'November', 2020, '2020-11-07', '07:01:33'),
(49, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'November', 2020, '2020-11-20', '02:38:27'),
(50, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'November', 2020, '2020-11-20', '14:22:16'),
(51, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'November', 2020, '2020-11-20', '14:22:43'),
(52, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'November', 2020, '2020-11-20', '14:46:33'),
(53, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'November', 2020, '2020-11-20', '14:52:02'),
(54, 123, 'Feri Pebriansah Nugraha', 'Guru', 20, 'November', 2020, '2020-11-20', '14:55:09'),
(55, 91184, 'Joko Mtp', 'Guru', 20, 'November', 2020, '2020-11-20', '15:07:07'),
(56, 123, 'Feri Pebriansah Nugraha', 'Guru', 21, 'November', 2020, '2020-11-21', '12:50:15'),
(57, 123, 'Feri Pebriansah Nugraha', 'Guru', 21, 'November', 2020, '2020-11-21', '12:51:29'),
(58, 91184, 'Joko Mtp', 'Guru', 30, 'November', 2020, '2020-11-30', '11:40:57'),
(59, 91184, 'Joko Mtp', 'Guru', 30, 'November', 2020, '2020-11-30', '11:41:09'),
(60, 91184, 'Joko Mtp', 'Guru', 30, 'November', 2020, '2020-11-30', '12:04:12'),
(61, 123, 'Feri Pebriansah Nugraha', 'Guru', 30, 'November', 2020, '2020-11-30', '16:23:37'),
(62, 123, 'Feri Pebriansah Nugraha', 'Guru', 30, 'November', 2020, '2020-11-30', '16:31:48'),
(63, 91184, 'Joko Mtp', 'Guru', 2, 'December', 2020, '2020-12-02', '20:59:58'),
(64, 91184, 'Joko Mtp', 'Guru', 3, 'December', 2020, '2020-12-03', '12:59:39'),
(65, 91184, 'Joko Mtp', 'Guru', 3, 'December', 2020, '2020-12-03', '12:59:40'),
(66, 91184, 'Joko Mtp', 'Guru', 3, 'December', 2020, '2020-12-03', '13:50:24'),
(67, 123, 'Feri Pebriansah Nugraha', 'Guru', 4, 'December', 2020, '2020-12-04', '01:59:55'),
(68, 91184, 'Joko Mtp', 'Guru', 4, 'December', 2020, '2020-12-04', '05:53:51'),
(69, 91184, 'Joko Mtp', 'Guru', 6, 'December', 2020, '2020-12-06', '04:03:00'),
(70, 123, 'Feri Pebriansah Nugraha', 'Guru', 8, 'December', 2020, '2020-12-08', '06:39:41'),
(71, 91184, 'Joko Mtp', 'Guru', 10, 'December', 2020, '2020-12-10', '06:07:21'),
(72, 91184, 'Joko Mtp', 'Guru', 11, 'December', 2020, '2020-12-11', '00:00:28');

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
(1, 123456789, '0cc175b9c0f1b6a831c399e269772661', 'Feri Pebriansah Nugraha', 'feripebriansah@gmail.com', 'Guru', '1', NULL, '0'),
(2, 123, '202cb962ac59075b964b07152d234b70', 'Feri Pebriansah Nugraha', 'feripebriansah@gmail.com', 'Guru', '1', NULL, '0'),
(3, 123456, '98c9393a68f6a2a41c2e99973a434245', 'Joko Martopo', 'JokoMtp@yahoo.com', 'Guru', '1', NULL, '0'),
(4, 91184, '98c9393a68f6a2a41c2e99973a434245', 'Joko Mtp', 'JokoMtp84@yahoo.com', 'Guru', '1', NULL, '0');

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

--
-- Dumping data untuk tabel `tb_saran_buku`
--

INSERT INTO `tb_saran_buku` (`id`, `nama`, `judul_buku`, `penerbit`, `pengarang`, `tahun`, `date_upload`, `status`) VALUES
(1, 'feri', 'Pemrogramman Website', 'Penerbit', 'Pengarang', 2020, NULL, 2),
(2, 'nama', 'a', NULL, 'a', 1, '2020-04-27 06:33:47', 1),
(3, '1', '1', '1', '1', 1, '2020-04-27 06:34:48', 1);

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
(9, 'SMP Negeri 2 Okaba', 'https://smpn7merauke.sch.id/source/SLIDE/1.jpg', 'Kabupaten Merauke - Propinsi Papua', '2020-11-20 12:56:06', '2020-12-02 04:09:34', NULL, 1),
(10, 'SMP Negeri 2 Okaba', 'https://smpn7merauke.sch.id/source/SLIDE/2.jpg', 'Lapangan Upacara', '2020-11-20 13:10:48', '2020-12-02 04:09:54', NULL, 1),
(11, 'Jendela Ilmu', 'https://smpn7merauke.sch.id/source/SLIDE/3.jpg', 'Sarana Perpustakaan Digital Sekolah Bertujuan untuk Memfasilitasi Sarana Belajar Siswa diluar Sekolah dan dimanapun Berada', '2020-11-20 15:00:12', '2020-12-02 04:10:02', NULL, 1);

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
(8, 8, 'feri', '7815696ecbf1c96e6894b779456d330e', 'Feri Pebriansah Nugraha', 'feripebriansah@gmail.com', NULL, '1', 'http://book.it/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', '1'),
(9, 0, 'admin', '7815696ecbf1c96e6894b779456d330e', 'admin', 'admin@gmail.com', NULL, '1', 'http://book.it/source/Kepsek1.png', '1'),
(10, 0, 'Joko', '7815696ecbf1c96e6894b779456d330e', 'Martopo', 'JokoMtp@yahoo.com', NULL, '1', 'http://smpn2okaba.sch.id/source/f2399a3c-e44e-4e2a-82d0-520696ffad1b.png', '1');

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
(9, 'dasbor/member'),
(9, 'dasbor/pengaturan'),
(9, 'dasbor/galeri'),
(9, 'dasbor/video_edukasi'),
(9, 'dasbor/saran_buku'),
(9, 'dasbor/kategori_video'),
(8, 'dasbor/user'),
(8, 'dasbor/member'),
(8, 'dasbor/pengaturan'),
(8, 'dasbor/galeri'),
(8, 'dasbor/video_edukasi'),
(8, 'dasbor/saran_buku'),
(8, 'dasbor/profile_sekolah'),
(8, 'dasbor/kategori'),
(8, 'dasbor/buku'),
(8, 'dasbor/visi_dan_misi'),
(9, 'dasbor/user'),
(8, 'dasbor/kategori_video'),
(9, 'dasbor/profile_sekolah'),
(9, 'dasbor/visi_dan_misi'),
(9, 'dasbor/slide'),
(9, 'dasbor/kategori'),
(9, 'dasbor/buku'),
(8, 'dasbor/slide'),
(8, 'dasbor/struktur_organisasi'),
(8, 'dasbor/fasilitas'),
(8, 'dasbor/direktori_guru_staf'),
(8, 'dasbor/direktori_alumni'),
(8, 'dasbor/kategori_galeri'),
(8, 'dasbor/link'),
(8, 'dasbor/berita_pengumuman'),
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
(10, 'dasbor/user');

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
(9, 'Materi Pembelajaran Bahasa Inggris kelas 7 semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Jvjp_wNvJcQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Hallo, Students. Kali ini Mrs. Kiki akan mengajak kalian untuk belajar tentang materi pelajaran Bahasa Inggris untuk kelas 7 semester 1. Di bab 1 ini kita akan mempelajari tentang; greeting expression, leave taking expression, thanking expression dan apologizing expression. Greeting expression adalah ungkapan memberi salam/sapaan dalam Bahasa Inggris. Leave taking expression merupakan ungkapan berpamitan atau yang umumnya disampaikan orang saat berpisah dengan orang lain. Thanking expression adalah ungkapan berterima kasih dan apologizing expression adalah ungkapan untuk meminta maaf. Video pembelajaran ini sesuai dengan kurikulum 2013. Semoga Bermanfaat.</p>\r\n', 1, '2020-12-02 21:14:41', 1),
(10, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HMx8r-VGEB4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-02 21:16:57', 1),
(11, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HMx8r-VGEB4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>1. Part 1: Tell the time hal. 38- 39</p>\r\n', 1, '2020-12-02 21:19:03', 1),
(12, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/d2b0q9zeS1A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Part 2: Tell the time hal. 41-42:</p>\r\n', 1, '2020-12-02 21:20:09', 1),
(13, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Nx1b26goF84\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>3. Part 3: Our daily activity hal. 43-45</p>\r\n', 1, '2020-12-02 21:29:49', 1),
(14, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CqNHQNonNmc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>4. Part 4: Tell the day hal. 53-56</p>\r\n', 1, '2020-12-02 21:31:02', 1),
(15, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rjSxbSkrcEk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>5. Part 5: Tell the data hal. 50</p>\r\n', 1, '2020-12-02 21:32:07', 1),
(16, 'Bahasa Inggris Kelas 7 SMP || What time is it? || Chaper 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pu_qiUnU3Sg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>6. Part 6: Several National Days hal. 52</p>\r\n', 1, '2020-12-02 21:32:51', 1),
(17, 'Bahasa Inggris Kelas 7 SMP|| This is My World ||Bab 4 Part 1|| Artikel \'a\' dan \'an\'', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q3qvr5bveJA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Materi Bahasa Inggris Kelas 7 Buku When English Rings a Bell</p>\r\n\r\n<p>Berikut adalah Link tekait dengan - Materi Chapter 4 : &ldquo;This is My World&rdquo;</p>\r\n\r\n<p>1. Part 1: Article &lsquo;a&rsquo; dan &lsquo;an&rsquo;: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=Q3qvr5bveJA\" spellcheck=\"false\">https://youtu.be/Q3qvr5bveJA</a> video pendukung artikel &#39;a&#39; and &#39;an&#39; <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=wXB4mSEUpKc\" spellcheck=\"false\">https://youtu.be/wXB4mSEUpKc</a></p>\r\n\r\n<p>2. Part 2: Personal Pronoun: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=5BfXf68WLWM\" spellcheck=\"false\">https://youtu.be/5BfXf68WLWM</a></p>\r\n\r\n<p>3. Part 3: Demonstrative Pronoun: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=EB0qk48jMtk\" spellcheck=\"false\">https://youtu.be/EB0qk48jMtk</a></p>\r\n\r\n<p>4. Part 4: Demonstrative Adjective: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=NStUcQKtlTs\" spellcheck=\"false\">https://youtu.be/NStUcQKtlTs</a></p>\r\n\r\n<p>5. Part 5: The names of things in the living room: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=YpRYpOe_U2E\" spellcheck=\"false\">https://youtu.be/YpRYpOe_U2E</a></p>\r\n\r\n<p>6. Part 6: The names of things in the kitchen: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=E74Q98uBLN8\" spellcheck=\"false\">https://youtu.be/E74Q98uBLN8</a></p>\r\n\r\n<p>7. Part 7: The things at the dining table: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=bCI7qycDL7M\" spellcheck=\"false\">https://youtu.be/bCI7qycDL7M</a></p>\r\n\r\n<p>8. Part 8: The things in the bedroom: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=FRelJpSmZtM\" spellcheck=\"false\">https://youtu.be/FRelJpSmZtM</a> NOTE</p>\r\n\r\n<p>9. Part 9: Things in the bathroom: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=8mMkBj1aYCc\" spellcheck=\"false\">https://youtu.be/8mMkBj1aYCc</a></p>\r\n\r\n<p>10. Part 10: Things in the garage: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=Esg8qSJH6wo\" spellcheck=\"false\">https://youtu.be/Esg8qSJH6wo</a></p>\r\n\r\n<p>11. Part 11: Things in the Yard: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=Au5gtVj8j1U\" spellcheck=\"false\">https://youtu.be/Au5gtVj8j1U</a></p>\r\n\r\n<p>12. Part 12: The name of the animal in the garden: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=_BSElVLgCvI\" spellcheck=\"false\">https://youtu.be/_BSElVLgCvI</a></p>\r\n\r\n<p>13. Part 13: What people do in different place: <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=GEFriNKX3IM\" spellcheck=\"false\">https://youtu.be/GEFriNKX3IM</a></p>\r\n', 1, '2020-12-02 21:39:09', 1),
(18, 'Bahasa Inggris Kelas 7 SMP|| This is My World ||Bab 4 Part 1|| Artikel \'a\' dan \'an\'', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q3qvr5bveJA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Materi Bahasa Inggris Kelas 7 Buku When English Rings a Bell Berikut adalah Daftar Materi tekait dengan - Materi Chapter 4 : &ldquo;This is My World&rdquo;</p>\r\n\r\n<p>1. Part 1: Article &lsquo;a&rsquo; dan &lsquo;an&rsquo;</p>\r\n\r\n<p>2. Part 2: Personal Pronoun</p>\r\n\r\n<p>3. Part 3: Demonstrative Pronoun</p>\r\n\r\n<p>4. Part 4: Demonstrative Adjective&nbsp;</p>\r\n\r\n<p>5. Part 5: The names of things in the living room</p>\r\n\r\n<p>6. Part 6: The names of things in the kitchen</p>\r\n\r\n<p>7. Part 7: The things at the dining table</p>\r\n\r\n<p>8. Part 8: The things in the bedroom</p>\r\n\r\n<p>9. Part 9: Things in the bathroom</p>\r\n\r\n<p>10. Part 10: Things in the garage</p>\r\n\r\n<p>11. Part 11: Things in the Yard</p>\r\n\r\n<p>12. Part 12: The name of the animal in the garden&nbsp;</p>\r\n\r\n<p>13. Part 13: What people do in different place</p>\r\n', 1, '2020-12-02 21:48:24', 1),
(19, 'Bahasa Inggris Kelas 7 SMP|| This is My World ||Bab 4 Part 1|| Artikel \'a\' dan \'an\'', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q3qvr5bveJA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Materi Bahasa Inggris Kelas 7 Buku When English Rings a Bell</p>\r\n', 1, '2020-12-02 21:50:36', 1),
(20, 'Bahasa Inggris Kelas 7 SMP || Latihan article a and an', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wXB4mSEUpKc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-02 21:52:05', 1),
(21, 'Bahasa Inggris Kelas 7 SMP || This is My World ||Bab 4 Part 2 || Personal Pronoun', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5BfXf68WLWM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Revisi????&zwj;???? pada menit <a dir=\"auto\" href=\"https://www.youtube.com/watch?v=5BfXf68WLWM&amp;t=264s\" spellcheck=\"false\">04:24</a> -- Has dan Have merupakan kata Kerja (Verb) yang berfungsi sebagai Prediket. ????Jadi bukan kata bantu. Maaf salah ujar dalam video???????? Dihitung dengan jumlah: &#39;This - That&#39; digunakan untuk &#39;Tunggal&#39; &#39;These -Those&#39; digunakan untuk &#39;Jamak&quot; Diukur dengan jarak: &#39;This dan These&#39; digunakan untuk jarak &#39;Dekat&#39; &#39;That dan Those&#39; digunakan untuk jarak &#39;Jauh&#39;</p>\r\n', 1, '2020-12-02 21:53:53', 1),
(22, 'Bahasa Inggris Kelas 7 SMP|| This is My World || Bab 4 Part 3 || Demonstrative Pronoun', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EB0qk48jMtk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>3. Part 3: Demonstrative Pronoun</p>\r\n', 1, '2020-12-02 21:56:35', 1),
(23, 'Bahasa Inggris Kelas 7 SMP || This is My World || Bab 4 Part 4 || Demonstrative Adjective', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NStUcQKtlTs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>4. Part 4: Demonstrative Adjective</p>\r\n', 1, '2020-12-02 22:05:03', 1),
(24, 'Bahasa Inggris Kelas 7 SMP ||This is My World ||Bab 4 Part 5||The names of things in the living room', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YpRYpOe_U2E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>&nbsp;</p>\r\n\r\n<p>5. Part 5: The names of things in the living room</p>\r\n', 1, '2020-12-03 05:50:49', 1),
(25, 'Bahasa Inggris Kelas 7 SMP || This is My World ||Bab 4 Part 6|| The name of things in the kitchen', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/E74Q98uBLN8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>6. Part 6: The names of things in the kitchen</p>\r\n', 1, '2020-12-03 05:51:47', 1),
(26, 'Bahasa Inggris Kelas 7 SMP |This is My World|BAB 4 Part 7|The things at the dining table||How many?', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bCI7qycDL7M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>7. Part 7: The things at the dining table</p>\r\n', 1, '2020-12-03 05:52:59', 1),
(27, 'Bahasa Inggris Kelas 7 SMP||BAB 4 Part 8| Things in the bedroom|| Penggunaan Have - Has', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FRelJpSmZtM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>8. Part 8: The things in the bedroom</p>\r\n', 1, '2020-12-03 05:55:25', 1),
(28, 'Bahasa Inggris Kelas 7 SMP| BAB 4 Part 9| Things in the Bathroom| Pengunaan Does not - Do not', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8mMkBj1aYCc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>9. Part 9: Things in the bathroom</p>\r\n', 1, '2020-12-03 06:01:16', 1),
(29, 'Bahasa Inggris Kelas 7 SMP||Bab 4 Part 10||Things in the garage||Pronunciation', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Esg8qSJH6wo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>10. Part 10: Things in the garage</p>\r\n', 1, '2020-12-03 06:02:20', 1),
(30, 'Bahasa Inggris Kelas 7 SMP || BAB 4 Part 11||The Name of Things in the Yard', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Au5gtVj8j1U\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>11. Part 11: Things in the Yard</p>\r\n', 1, '2020-12-03 06:03:35', 1),
(31, 'Bahasa Inggris Kelas 7 SMP || BAB 4 Part 12|| The Name of Animals in the Garden', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_BSElVLgCvI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>12. Part 12: The name of the animal in the garden</p>\r\n', 1, '2020-12-03 06:04:59', 1),
(32, 'Bahasa Inggris Kelas 7 SMP||BAB 4 Part 13|The people do in different Places|Present Continuous Tense', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GEFriNKX3IM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>13. Part 13: What people do in different place</p>\r\n', 1, '2020-12-03 06:06:00', 1),
(33, 'Bahasa Inggris Kelas 8 Semester 1|| It\'s English Time || Getting Attention', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/47XWILALB5c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:19:05', 1),
(34, 'TO GET ATTENTION, MATERI BAHASA INGGRIS KELAS 8 KURIKULUM 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/699Ok5I7p2s\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>TO GET ATTENTION adalah meminta perhatian seseorang untuk diperhatikan seperti halnya ketika kita menunjukan ekspresi ingin diperhatikan oleh lawan bicara.</p>\r\n', 2, '2020-12-03 06:21:20', 1),
(35, 'Video Pembelajaran Kelas 8 K13 - Bahasa Inggris - Recount Text', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AHTNqjKJaHI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:23:09', 1),
(36, 'Bahasa Inggris Kelas 8 Materi 1 : It’s English Time', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lXbRFRjmc78\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:25:51', 1),
(37, 'DESCRIPTIVE TEXT MATERI BAHASA INGGRIS SMP KELAS 8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_wlScHaCXME\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Apa itu Descriptive Text? Descriptive text adalah sebuah teks yang menjelaskan tentang sesuatu. Misalnya, mendeskripsikan orang, binatang atau suatu benda, baik bentuknya, sifat-sifatnya, jumlahnya dan lain-lain. Descriptive text juga bertujuan untuk menjelaskan, menggambarkan atau mengungkapkan seseorang atau suatu benda.</p>\r\n\r\n<p>Generic Structure dari Descriptive Text.</p>\r\n\r\n<p>Identification Bagian identification berisi pembuka dan gambaran umum tentang suatu topik. Identification berfungsi sebagai pengenalan dari apa yang kita sedang jelaskan. supaya para pembaca atau pendengar tidak salah mengerti. Pada bagian introduction juga harus menyebutkan alasan kenapa penulis memilih tempat itu untuk di ceritakan.</p>\r\n\r\n<p>Description</p>\r\n\r\n<p>Pada bagian description berisi seluruh ciri-ciri umum sampai khusus atau sifat-sifat yang terdapat dalam benda, orang, atau binatang yang sedang kamu jelaskan. Misalnya ketika kita menceritakan tentang suatu tempat, kita bisa memulai dari keseluruhan ciri dari sebuah tempat tersebut seperti bagaimana pemandangannya, bangunannya, Cuacanya, dan lain lain, kemudian merujuk ke detail yang khusus yang melengkapi penjelasan umum sebelumnya. Sekarang coba kalian amati generic structure dari Descriptive Text di bawah ini:</p>\r\n\r\n<p>My Dog</p>\r\n\r\n<p>(Identification)</p>\r\n\r\n<p>My dad bought me a dog on my birthday. It is a male golden retriever dog. I really love him as my pet.</p>\r\n\r\n<p>(Description)</p>\r\n\r\n<p>His name is Jiji. He has brown fur. His fur is really soft and he likes to be rubbed on his belly. He has a long tail and big body. I always take him for walk around because he really like it. Jiji is already as the part of our family.</p>\r\n\r\n<p>Penjelasan:</p>\r\n\r\n<p>Paragraf pertama merupakan Identification karena menceritakan hal umum dari seluruh cerita. Seperti bahwa penulis mempunyai anjing jantan yang diberikan oleh ayahnya saat dia berulang tahun. Paragraf kedua merupakan Description atau penjelasan keseluruhan umum ke khusus. Seperti bahwa nama anjingnya pada text diatas adalah Jiji dengan bulu coklat yang halus, juga diceritakan bagaimana sifat dan kebiasaan dari anjing tersebut.</p>\r\n\r\n<p>Ciri-Ciri Descriptive Text</p>\r\n\r\n<p>Menggunakan Simple Present Tense. Tenses ini digunakan karena dalam descriptive text kita akan menjelaskan suatu fakta atau kebenaran yang terdapat dalam suatu hal atau orang. Menggunakan banyak kata Adjective . Kata Adjective digunakan karena dalam descriptive text kita akan menjelaskan sifat - sifat dari suatu benda, manusia, atau binatang. Kita akan sering menjumpai banyak kata &quot;is&quot; atau relating verb (kata kerja penghubung) dalam descriptive text. karena &#39;is&#39; itu berarti &#39;adalah&#39; yang mengarahkan pada penjelasan benda,orang atau binatang yang sedang kita jelaskan. Descriptive text hanya fokus menjelaskan pada satu objek.</p>\r\n\r\n<p>INSTGRAM : @soloenglishcenter</p>\r\n\r\n<p>Fanspage Facebook : Solo English Center</p>\r\n', 2, '2020-12-03 06:32:04', 1),
(38, 'DESCRIPTIVE TEXT - Definisi, Struktur Teks, dan Contoh Teks Deskriptif bahasa Inggris', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EDhWhFERO48\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Descriptive Text</p>\r\n\r\n<p>Salah satu jenis teks dalam bahasa Inggris adalah descriptive text atau teks deskriptif.</p>\r\n\r\n<p>Descriptive text adalah teks yang menggambarkan secara jelas tentang suatu objek, sperti manusia, hewan, tumbuhan, atau benda.</p>\r\n\r\n<p>Struktur dari descriptive text terdiri dari dua, yaitu:</p>\r\n\r\n<p>1. Identification</p>\r\n\r\n<p>2. Description</p>\r\n\r\n<p>Dalam menulis descriptive text, ada beberapa language features yang perlu diperhatikan, antara lain:</p>\r\n\r\n<p>a) Gunakan spatial signal</p>\r\n\r\n<p>b) Gunakan tenses Simple Present Tense</p>\r\n\r\n<p>c) Gunakan adjective untuk menjelaskan noun yang akan dideskripsikan</p>\r\n', 2, '2020-12-03 06:35:56', 1),
(39, 'DESCRIPTIVE TEXT - Definisi, Struktur Teks, dan Contoh Teks Deskriptif bahasa Inggris', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EDhWhFERO48\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Descriptive Text</p>\r\n\r\n<p>Salah satu jenis teks dalam bahasa Inggris adalah descriptive text atau teks deskriptif.</p>\r\n\r\n<p>Descriptive text adalah teks yang menggambarkan secara jelas tentang suatu objek, sperti manusia, hewan, tumbuhan, atau benda.</p>\r\n\r\n<p>Struktur dari descriptive text terdiri dari dua, yaitu:</p>\r\n\r\n<p>1. Identification</p>\r\n\r\n<p>2. Description</p>\r\n\r\n<p>Dalam menulis descriptive text, ada beberapa language features yang perlu diperhatikan, antara lain:</p>\r\n\r\n<p>a) Gunakan spatial signal</p>\r\n\r\n<p>b) Gunakan tenses Simple Present Tense</p>\r\n\r\n<p>c) Gunakan adjective untuk menjelaskan noun yang akan dideskripsikan</p>\r\n', 3, '2020-12-03 06:36:43', 1),
(40, 'MATERI BAHASA INGGRIS KELAS VIII SMP/MTS || Descriptive Text', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/a62rmvqEk60\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Hai semuanya, sudah siap belajar?</p>\r\n\r\n<p>Hi guys, what&rsquo;s cracking? Selamat datang di Lia Afifah Class. Channel ini di buat untuk membantu teman-teman sekalian yang ingin belajar bahasa Inggris dari awal atau pemula. Semua materi yang di publikasikan diambil dari berbagai sumber bahan ajar yang tentunya berkualitas dan dapat menambah wawasan kita bersama. Selain materi belajar, aku juga akan membagikan tips-tips penting yang harus dilakukan untuk mencapai tujuan teman-teman sekalian dalam menguasai bahasa inggris. Ajak teman-teman kalian untuk belajar bersama kita di channel ini dengan cara membagikan setiap video yang telah di upload.</p>\r\n\r\n<p>Di video kali ini, aku akan memberikan materi kelas VIII SMP/MTS tentang Descriptive text. Simak selengkapnya di atas, dan ditonton sampai habis yaaa..</p>\r\n', 2, '2020-12-03 06:40:26', 1),
(41, 'bahasa inggris kelas 8 bab 1 , Its English Time , BSE K13 revisi 2017', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TvHe5BDndOg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>bahasa inggris kelas 8 buku bse k13 revisi 2018</p>\r\n', 2, '2020-12-03 06:42:50', 1),
(42, 'CHAPTER 2 BAHASA INGGRIS KELAS 8 SMESTER 1. WE CAN DO IT and WE WILL DO IT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xVpVUQsaVFU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:45:13', 1),
(43, 'Kosa Kata Bahasa Inggris Yang Wajib Dihafal Untuk Pemula', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lQdeAJhRA3E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-03 06:46:01', 1),
(44, 'Kosa Kata Bahasa Inggris Yang Wajib Dihafal Untuk Pemula', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lQdeAJhRA3E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:46:37', 1),
(45, 'Kosa Kata Bahasa Inggris Yang Wajib Dihafal Untuk Pemula', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lQdeAJhRA3E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:47:26', 1),
(46, 'Kosa Kata Bahasa Inggris Yang Wajib Dihafal Untuk Pemula', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lQdeAJhRA3E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-03 06:47:59', 1),
(47, 'Bahasa Inggris kelas 8 /Bab 1 /To Get Attention', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RHcGjHD9oLk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 06:51:02', 1),
(48, 'Materi Bahasa Inggris Kelas 8 - Chapter 1 Asking for Attention', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dTPP3HE1jwc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Materi Bahasa Inggris Kelas 8 Kurikulum 2013</p>\r\n\r\n<p>Chapter 1 - Asking for Attention</p>\r\n', 2, '2020-12-03 06:53:26', 1),
(49, 'BAHASA INGGRIS KELAS 8: GETTING ATTENTION, UNDERSTANDING, APPRECIATION, GIVING OPINION', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Dc5mHtFsous\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:09:48', 1),
(50, 'Asking for and Giving Attention - Materi Bahasa Inggris Kelas VIII', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7ALW75xlyBc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:10:59', 1),
(51, 'ASKING FOR ATTENTION (Bahasa Inggris SMP Kelas 8)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/taOBlDJBDE8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:11:41', 1),
(52, 'BAHASA INGGRIS Kelas 8 BAB 1 - Asking and Giving Attention', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/V-8AkLM4LLA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:13:47', 1),
(53, 'Asking & Giving Opinion - Belajar Bahasa Inggris-Kelas 8 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x1XhIXkNHZ8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Asking (Menanyakan), Giving (Menjawab), Opinion (Opini) . Asking and Giving Opinion adalah suatu ungkapan (kata-kata) yang digunakan untuk menanyakan ataupun menjawab suatu pendapat. Belajar Bahasa Inggris bersama Duta Rumah Belajar Jawa Tengah - Asih Prihatin</p>\r\n', 2, '2020-12-03 07:46:33', 1),
(54, 'Asking for and Giving Attention (kelas 8 SMP)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jhlaFYjy7gs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:48:41', 1),
(55, '5 Tips Belajar Bahasa Inggris Jaman Now', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VnuUoXokyno\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-03 07:49:53', 1),
(56, '5 Tips Belajar Bahasa Inggris Jaman Now', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VnuUoXokyno\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:50:34', 1),
(57, '5 Tips Belajar Bahasa Inggris Jaman Now', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VnuUoXokyno\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-03 07:51:02', 1),
(58, 'Skill Terpenting untuk Sukses Sekolah & Kuliah', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/G7N9PXVo-FM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-03 07:52:07', 1),
(59, 'BAHASA INGGRIS Kelas 8 BAB 1 - Checking Someone\'s Understanding', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/i9sSHkq6cws?start=49\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 07:53:41', 1),
(60, 'TAHAPAN BELAJAR BAHASA INGGRIS YANG HARUS KAMU TAHU', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yUbpUEgQJhs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-03 13:02:33', 1),
(61, 'Cara Meningkatkan Kemampuan Public Speaking (Tanpa Kursus)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pYp-tkjI_t0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-03 13:09:19', 1),
(62, 'GREETING CARDS (Materi Bahasa Inggris SMP Kelas 8 Semester 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oRcsA-VKwOw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Berikut ini adalah materi Bahasa Inggris SMP Kelas 8 semester 1 tentang &quot;Greeting Cards&quot; (Kartu Ucapan)</p>\r\n', 2, '2020-12-03 13:11:58', 1),
(63, 'Kelas 08 - Bahasa Inggris - Simple Past Tense #VideoPendidikanIndonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4gwLCu5P3lk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Simple past tense merupakan bentuk kata kerja untuk menyatakan bahwa suatu kejadian terjadi di masa lalu dimana waktu atau periode kejadiannya dapat disebutkan secara spesifik.</p>\r\n', 2, '2020-12-03 13:31:02', 1),
(64, 'Belajar bahasa Inggris - Simple Past VS Present Perfect', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/B80ZhvwQltM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Belajar bahasa Inggris - Simple Past VS Present Perfect. Simple past dan present perfect tense sering membuat bingung bagi non-native speaker dalam menggunakannya. Hal ini karena keduanya sama-sama bisa digunakan untuk membicarakan sesuatu yang terjadi di masa lampau.</p>\r\n', 2, '2020-12-03 13:33:10', 1),
(65, 'Perbedaan Penggunaan Do, Does, Did, Done Dalam Kalimat Bahasa Inggris  (Kelas7,8,9)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vDdq0mYqzXM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Perbedaan Penggunaan Do/Does, Did/Done Dalam Kalimat Bahasa Inggris Kata Do/Does, Did/Done merupakan kata yang sering kita dengar ketika seseorang berbicara dalam Bahasa Inggris atau saat kita membaca teks Bahasa Inggris.</p>\r\n', 2, '2020-12-03 13:40:57', 1),
(66, 'Perbedeaan Simple Past Tense and Past Perfect Tentes | TEATU with Mr Ali - Kampung Inggris LC', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Xx3Q3ewsT48\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-03 13:42:44', 1),
(67, 'Cara Mudah Belajar Past Perfect Tense | TEATU Mr Diaz - Kampung Inggris LC', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lvL9RXmlquY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Past Perfect Tense? Apakah kalian masih bingung dengan cara penggunaannya?</p>\r\n', 2, '2020-12-03 13:53:39', 1),
(68, 'Perbedaan Penggunaan This, That, These, Dan Those Dalam Bahasa Inggris - Kampung Inggris LC', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/InS_EmtmNDY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Perbedaan Penggunaan This, That, These, Dan Those. Hai LCers..!! Di dalam bahasa Inggris, Kamu tentu sudah tidak asing dengan kata these, those, this, these, dan that. Jenis kata &ndash; kata tersebut termasuk kata petunjuk atau demonstratives determiner. Walaupun kata &ndash; kata tersebut memiliki arti yang hampir sama, tetapi ada perbedaan dalam penggunaan this, that these, those. . mau tau seperti apa perbedaannya?? . yuk langsung aja tonton videonya Ms Ervi ya..!!!</p>\r\n', 1, '2020-12-03 13:56:12', 1),
(69, 'Perbedaan Possessive Adjective Dan Possesive Pronoun - TEATU With Ms Vika | Kampung Inggris LC', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Dr0sN3RXt6Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-03 13:57:56', 1),
(70, 'Trik Mudah Memahami Object Pronoun Dalam Bahasa Inggris', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0MiidOWRMW8?start=24\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-03 14:00:45', 1),
(71, 'VIDEO PEMBELAJARAN \"LABEL\" KELAS IX SEMESTER I', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WTnVOVgGAWo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>VIDEO PEMBELAJARAN &quot;LABEL&quot; KELAS IX SEMESTER I</p>\r\n', 3, '2020-12-04 05:59:15', 1),
(72, 'ruangbelajar - Bahasa Inggris IX SMP - Congratulation and Celebration', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tXROMJlr1sQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:00:56', 1),
(73, 'ruangbelajar - Bahasa Inggris IX SMP - Expression of Wish and Hope', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-DyRJuBnH5A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:04:40', 1),
(74, 'EXPRESSION OF CONGRATULATION - LOMBA GURU ONLINE ERLANGGA', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bGML0Bw_uPw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:06:35', 1),
(75, 'PEMBAHASAN SOAL PTS BAHASA INGGRIS KELAS 9 SEMESTER 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ne2BX7ObXso\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:07:27', 1),
(76, 'Apa itu Asesmen Nasional 2021? | Ruangguru Update', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LaiY6453IOk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Halo teman-teman Ruangguru, kali ini Ruangguru Update akan membagikan informasi atau tips untuk kamu. Sudah tahu kabar Ujian Nasional yang diganti menjadi Asesmen Nasional di tahun 2021 mendatang? Mendikbud mengharapkan perubahan standar kelulusan dari Ujian Nasional menjadi Asesmen Nasional bisa mendorong perbaikan mutu pembelajaran dan hasil belajar peserta didik di Indonesia. Kamu masih bingung dengan ketentuannya? Mau tahu? yuk simak Ruangguru Update!</p>\r\n', 3, '2020-12-04 06:08:57', 1),
(77, 'MATERI BAHASA INGGRIS KELAS 9 SMP/MTS || Imperative sentence', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hIWrfsds9TA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:10:13', 1),
(78, 'Kalimat Bahasa Inggris Yang Wajib Dihafal', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7K3-XBrhJpI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Kalimat Bahasa Inggris Yang Wajib Dihafal</p>\r\n', 3, '2020-12-04 06:13:19', 1),
(79, 'Cara membuat Kalimat Perintah (Imperative Sentence) |', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fakb0a0fLLU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<h1>Belajar Bahasa Inggris Mudah</h1>\r\n', 3, '2020-12-04 06:14:43', 1),
(80, 'Kalimat Perintah dan Larangan Dalam Bahasa Inggris | ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JM-D3hS9P5I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>TEATU with Mr Diaz - Kampung Inggris LC</p>\r\n', 3, '2020-12-04 06:16:06', 1),
(81, 'Pertanyaan Yang Sering Muncul Saat Interview', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XcZDXE1uDKk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Pertanyaan yang sering muncul saat interview</p>\r\n', 3, '2020-12-04 06:17:11', 1),
(82, 'Percakapan Bahasa Inggris | ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HEH0Us5BZUM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Perkenalan Dalam Bahasa Inggris</p>\r\n', 3, '2020-12-04 06:18:02', 1),
(83, 'Kalimat Bahasa Inggris Yang Wajib Dihafal', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7K3-XBrhJpI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video ini membantu anda untuk berlatih listening bahasa inggris.</p>\r\n', 3, '2020-12-04 06:19:39', 1),
(84, 'Percakapan Bahasa Inggris | Menawarkan Sesuatu Dalam Bahasa Inggris', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oZmj9Io-a-A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Menawarkan Sesuatu Dalam Bahasa Inggris</p>\r\n\r\n<p>Video ini membantu anda untuk berlatih listening bahasa inggris.</p>\r\n\r\n<p>Berisi Percakapan bahasa inggris</p>\r\n', 3, '2020-12-04 06:21:47', 1),
(85, '100 Kalimat Bahasa Inggris yang Paling Sering Digunakan ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BTDo3XKXV0M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:24:27', 1),
(86, 'Kosa Kata Bahasa Inggris Yang Wajib Dihafal Untuk Pemula', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lQdeAJhRA3E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:26:52', 1),
(87, 'SOAL DAN PEMBAHASAN PAS BAHASA INGGRIS KELAS 9 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PFRQZBg4aRI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Latihan</p>\r\n', 3, '2020-12-04 06:34:49', 1),
(88, 'Latihan Soal Bahasa Inggris kelas 9 semester ganjil part 1 ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/M7tKCuSEtYQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<h1># Ruang Belajar Bareng BimbLine</h1>\r\n', 3, '2020-12-04 06:36:05', 1),
(89, 'PROCEDURE TEXT: BAHASA INGGRIS KELAS 9', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/U-yqoMQ3w14\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:36:57', 1),
(90, ' Bahasa Inggris Kelas 9 Bab 1 - Congratulate and Hope (Hal 2)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XNtOBqTUO7o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Pada video ini kita akan membahas tentang materi Bahasa Inggris kelas 9 kurikulum 2013 edisi revisi 2018 Bab 1. Disini menjelaskan tentang penggunaan kata Congratulation dan cara membacanya.</p>\r\n', 3, '2020-12-04 06:39:09', 1),
(91, 'Kelas 9 - Bahasa Inggris - Present, Past, and Future Continuous Tense | ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/exnzgVTchNs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video Pendidikan Indonesia</p>\r\n', 3, '2020-12-04 06:40:02', 1),
(92, 'ruangbelajar - Bahasa Inggris IX SMP - Expression of Agreement and Disagreement', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WKNFkMjbBE0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>ruang belajar</p>\r\n', 3, '2020-12-04 06:41:04', 1),
(93, 'Bahasa Inggris Kelas 9 Bab 2 - In order to and so that', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/M85G26CLONM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Pada video ini kita akan membahas tentang materi Bahasa Inggris kelas 9 kurikulum 2013 edisi revisi 2018 Bab 1. Disini menjelaskan tentang penggunaan conjunction.</p>\r\n', 3, '2020-12-04 06:42:11', 1),
(94, 'PEMBAHASAN SOAL PTS BAHASA INGGRIS KELAS 9 SEMESTER 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ne2BX7ObXso\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 06:42:44', 1),
(95, 'Materi B Ing Kelas 9 Bab 3 Be Healthy, Be Happy..', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ud3J8ngraSw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Materi Bahasa Inggris Kelas IX Bab 3 Be Healthy, Be Happy.. Kurikulum 2013.</p>\r\n', 3, '2020-12-04 06:43:36', 1),
(96, 'Pembahasan Soal Latihan PTS Bahasa Inggris Kelas 9 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7lQVmrYEoQ4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:11:11', 1),
(97, 'SOAL PTS/UTS BAHASA INGGRIS KELAS 9 DAN JAWABAN II KD.3.1 & KD. 3.2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lLe2zUv-7pE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Soal PTS/UTS Bahasa Inggris dengan materi Congratulation dan Agreement &amp; Disagreement. disertai kunci jawaban</p>\r\n', 3, '2020-12-04 07:12:20', 1),
(98, 'Soal Ujian Bahasa Inggris - KLS 9 (Kurikulum 2013) UAS - PAS', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LSUtP0vUW2U\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video Pembahasan Soal Ujian UAS - PAS Bahasa Inggris Kelas 9 Kurikulum 2013. Dilengkapi dengan Kunci Jawaban yang tersedia dalam video</p>\r\n', 3, '2020-12-04 07:18:30', 1),
(99, 'Video Pembelajaran Bahasa Inggris SMP Kelas 9 Materi Stating Purpose ( to, in order to, so that )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BSRUhmN3kHk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video Pembelajaran&nbsp;</p>\r\n', 3, '2020-12-04 07:19:35', 1),
(100, 'Kelas 9 - Bahasa Inggris - Food and Medicine Label | ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/T5gx3R_628w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video Pendidikan Indonesia</p>\r\n', 3, '2020-12-04 07:20:51', 1),
(101, 'MATERI BAHASA INGGRIS KELAS 9 SMP/MTS || Imperative sentence', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hIWrfsds9TA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Imperative sentence&nbsp;</p>\r\n', 3, '2020-12-04 07:25:10', 1),
(102, 'Bahasa Inggris Kelas 9 SMP Kurikulum 2013 Revisi 2017 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/g65M0VUJ0ZU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video Book pembelajaran siswa kali ini berisi Rangkuman Materi Pelajaran Bahasa Inggris Kurikulum 2013 Revisi 2017 Semester 1 dan 2</p>\r\n', 3, '2020-12-04 07:25:53', 1),
(103, 'Bahasa Inggris Kelas 9 Minggu Ke-11, \"Present Continuous Tense\", SMP Bina Insan Mandiri', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/r6yPIMwA2OY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:26:44', 1),
(104, 'BAHASA INGGRIS KELAS 9 - CHAPTER V |EVERYBODY IS ALWAYS IN THE MIDDLE OF SOMETHING (PART 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NTArKjet4Q0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:28:47', 1),
(105, 'Continuous Tense | Kelas 9 [Past Continuous, Present Continuous, Future Continuous]', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ndxVrFdjJyg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:29:54', 1),
(106, 'MATERI DARING KELAS IX: PROCEDURE TEXT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4Lhv9Z6nx0o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:30:46', 1),
(107, 'THIS IS HOW YOU DO IT - Bahasa Inggris kelas 9 bab IV (part 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-0w4JX93Uk0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:31:24', 1),
(108, 'Bahasa Inggris Kelas 9 Bab 2 - Conversation (Hal 18)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6g7RbLwuluI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:32:01', 1),
(109, 'Video Pembelajaran Bahasa Inggris Kelas 9 Semester 1 KD 3.2 dan 4.2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gr4LADIVDJ4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:32:57', 1),
(110, 'BAHAS SOAL PAS BAHASA INGGRIS KELAS 8 SEMESTER 1 KURIKULUM 2013 PART 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ApBxyTpohXs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Latihan Soal Kelas 8 Semester 1 K 13</p>\r\n', 3, '2020-12-04 07:33:49', 1);
INSERT INTO `tb_video` (`id`, `judul_video`, `link`, `keterangan`, `video_kategori`, `date_upload`, `status`) VALUES
(111, 'Pembahasan SOAL PAS PKN Kelas 8 Dan Kunci Jawaban Semester 1 ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oPezekxchak\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 07:35:02', 1),
(112, 'Latihan dan Pembahasan Soal PAS Bahasa Inggris SMP Kelas 7 Semester 1 Tahun 2020', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CPv0mEC5qG4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:37:29', 1),
(113, 'Belajar Soal PTS Bahasa Inggris Kelas 7 SMP Semester 1 Terbaru Kurikulum 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AUDQYyXOT74\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Latihan UTS kelas 7 smsp atau mts</p>\r\n', 1, '2020-12-04 07:38:33', 1),
(114, 'SOAL DAN PEMBAHASAN PAS BAHASA INGGRIS KELAS 9 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PFRQZBg4aRI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:39:23', 1),
(115, 'Soal UAS/ PAS B. Inggris Kelas 7 SMP MTs dan Jawaban Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vVunFXea8PY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Soal Latihan UAS/ PAS Bahasa Inggris Kelas 7 SMP/ MTs serta Kunci Jawabannya untuk Semester 1/ Ganjil sesuai dengan kurikulum 2013 edisi revisi.</p>\r\n', 1, '2020-12-04 07:40:17', 1),
(116, 'Belajar Soal UAS Bahasa Inggris Kelas 7 SMP Semester 1 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8cOf794eXug\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:41:09', 1),
(117, 'Pembahasan Soal PAS Bahasa Inggris Kelas 7 Part 1 - 16 November 2020', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4LfOAJnRH7g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:41:42', 1),
(118, 'BAHAS SOAL PAS BAHASA INGGRIS KELAS 8 SEMESTER 1 KURIKULUM 2013 PART 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ApBxyTpohXs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 07:43:36', 1),
(119, 'Soal Kelas 8 Bahasa Inggris Semester 1 Dan Kunci Jawaban ( Latihan UTS PTS Kls viii SMP )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/n-hZWDA2TCo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 07:44:13', 1),
(120, 'SOAL UAS/PAS BAHASA INGGRIS KELAS 8 DAN KUNCI JAWABAN', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gAQ3YyOj_D4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 07:44:57', 1),
(121, 'SOAL UTS/PTS & KUNCI JAWABAN BAHASA INGGRIS KELAS 8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HYEl0damEDM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Soal UTS/PTS Bahasa Inggris dan Kunci jawaban kelas 9 SMP. Soal ini berisi materi KD. 3.1 dan KD. 3.2 KD. 3.1</p>\r\n', 2, '2020-12-04 07:46:42', 1),
(122, 'Soal Ujian Bahasa Inggris - KLS 9 (Kurikulum 2013) UAS - PAS', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LSUtP0vUW2U\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video Pembahasan Soal Ujian UAS - PAS Bahasa Inggris Kelas 9 Kurikulum 2013. Dilengkapi dengan Kunci Jawaban yang tersedia dalam video.</p>\r\n', 3, '2020-12-04 07:47:34', 1),
(123, 'SOAL UAS/PAS BAHASA INGGRIS & KUNCI JAWABAN UNTUK KELAS 9', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nrH6H7IQxwU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:49:28', 1),
(124, 'Belajar Soal PAS / UAS Bahasa Inggris Kelas 9 SMP Semester 1 dan Kunci Jawaban + Pembahasan IX', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2le7XGuKvdA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 07:50:45', 1),
(125, ' Video Edukasi Bahasa Inggris kelas VII SMP Semester 2 Kurikulum 2013 Revisi 2017', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xgyApgvO6fI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:54:45', 1),
(126, 'Bahasa Inggris Kelas 7 SMP || The Member of Our Family| Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FXgx0yoHwH8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:55:55', 1),
(127, 'Bahasa inggris kelas 7 , bab 2 it\'s me introduction , bse rev 2017 |Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oDhSHEHEIOs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:57:55', 1),
(128, 'Kelas 7 - Bahasa Inggris - Pesan dalam Lagu | Video Pendidikan Indonesia|Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0veOvGXExY4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 07:58:44', 1),
(129, 'UKK bhs inggris kls 7 semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xAfOKXaXnVg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 08:01:24', 1),
(130, 'DESCRIBING PEOPLE\'S APPEARANCE (MATERI BHS INGGRIS KELAS VII SEMESTER 2)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kfLPy0fUVtg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 08:03:57', 1),
(131, 'THE MEMBERS OF OUR FAMILY, Bahasa Inggris SMP Kelas VII Semester Ganjil Kurikulum 2013.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nCTi34th-wE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 08:05:09', 1),
(132, 'Video Pembelajaran Bahasa Inggris SMP Kelas 9 Materi Stating Purpose ( to, in order to, so that )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BSRUhmN3kHk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 08:43:49', 1),
(133, 'Video Pembelajaran Bahasa Inggris SMP Kelas 9 Materi Stating Purpose ( to, in order to, so that )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BSRUhmN3kHk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 08:44:23', 1),
(134, 'Video Pembelajaran Bahasa Inggris Metode Saintifik Teks Naratif menggunakan Literasi Digital', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SV4zc2tjqJk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 08:45:16', 1),
(135, 'ruangbelajar - Bahasa Inggris IX SMP - Expression of Wish and Hope', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-DyRJuBnH5A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 08:46:06', 1),
(136, 'SIMULASI UNBK 2020 UNTUK SISWA', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gMbZQyj3gvk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 08:47:40', 1),
(137, 'Cara Mudah Mengoperasikan Program Aplikasi Ujian UNBK', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IXW-9JPOIyg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 08:50:56', 1),
(138, 'PAI SMP KELAS 7 BAB 5 II MEDIA PEMBELAJARAN PAI SMP II MATERI PAI SMP KELAS 7 BAB 5', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AI7sK5bXNnc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:12:18', 1),
(139, 'Pendidikan Agama Islam Kelas 7 Semester Ganjil Bagian Pertama SMP Bina Insan Mandiri', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sR04ZqmoH7I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Assalamu&#39;alaikum para santri dan santriwati kelas 7 Ponpes Baron dan seluruh siswa siswi dimanapun berada, selamat datang di pembelajaran daring Pendidikan Agama Islam Kelas 7. Pertemuan pertama kali ini kita akan membahas tentang &quot;Iman Kepada Allah&quot;.</p>\r\n', 1, '2020-12-04 13:13:15', 1),
(140, 'Latihan Soal UAS PAS PAI BP Kelas 7 SMP Kurikulum 2013 Semester 1 dan Kunci Jawaban | Agama Islam', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QtsNh0WoYA4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>&nbsp;</p>\r\n\r\n<p>Hai sahabat buku paket, hari ini kami bagikan video pembelajaran latihan penilaian akhir semester 1 mata pelajaran pendidikan agama islam dan budi pekerti untuk kelas 7 smp kurikulum 2013 beserta kunci jawaban. Semoga latihan soal ini dapat membantu sahabat buku paket untuk mengingat kembali materi pelajaran yang telah diajarkan sebelumnya.</p>\r\n', 1, '2020-12-04 13:14:16', 1),
(141, 'Kelas 07 - Pend. Agama Islam - Iman Kepada Allah SWT | Video Pelajaran Sekolah K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZTid_s07pC4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:15:06', 1),
(142, 'PAI kelas VII BAB 1 (part 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YRR6A7uBt_Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Belajar PAI kini lebih mudah dengan video pembelajaran Like dan subscribe agar berlangganan video pembelajaran yang lain Share agar teman teman seluruh indonesia juga berlangganan video pembelajaran yang bermanfaat.</p>\r\n', 1, '2020-12-04 13:16:04', 1),
(143, 'VIDEO DARING PAI SMP KELAS 7 BAB 3, (SEMUA BERSIH HIDUP JADI NYAMAN) KURIKULUM 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RjamFoZYFgw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:17:55', 1),
(144, 'VIDEO PEMBELAJARAN PAI SMP KELAS 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vicGmo544IQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video pembelajaran SMP kelas 7 semester 1, menggunakan media powerpoint yang dijadikan video</p>\r\n\r\n<p>BAB 2 : Hidup Tenang dengan Kejujuran, Amanah dan Istiqamah</p>\r\n', 1, '2020-12-04 13:18:50', 1),
(145, 'VIDEO DARING PAI SMP KELAS 7 BAB 4 II INDAHNYA KEBERSAMAAN DENGAN SHALAT BERJAMAAH KURIKULUM 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XfWiHmhP-QY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:19:32', 1),
(146, 'VIDEO DARING PAI SMP KELAS 7 BAB 2, (HIDUP TENANG DENGAN KEJUJURAN, AMANAH & ISTIQAMAH) KURIKULUM 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7PzjwUC1DyM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:20:09', 1),
(147, 'VIDEO PEMBELAJARAN PAI SMP KELAS VII BAB 1 (LEBIH DEKAT DENGAN ALLAH SWT) Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/z2zOe6BD2uU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:20:44', 1),
(148, 'MATERI PAI SMP KELAS 7 BAB 6 II MEDIA PEMBELAJARAN PAI SMP KELAS VII / VIDEO DARING PAI SMP K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fincUCh7rKs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:21:23', 1),
(149, 'Video Pembelajaran PAI dan Budi Pekerti Kelas 7 Semester 1 Materi Dengan Ilmu Pengetahuan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2YVbnicZszQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:22:14', 1),
(150, 'Kelas 7 SMP - Agama Islam - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/azx86hZML-g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:23:03', 1),
(151, 'Latihan Soal UAS PAS PAI BP Kelas 7 SMP Kurikulum 2013 Semester 1 dan Kunci Jawaban | Agama Islam', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QtsNh0WoYA4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:37:47', 1),
(152, 'Belajar Soal Kelas 7 PTS Agama Islam ( PAI BP ) Semester 1 K13 dan Kunci Jawaban ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/S6F0RDs7cf4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:38:53', 1),
(153, 'Latihan Soal UTS PTS PAI Kelas 8 SMP Kurikulum 2013 Semester 1 (Ganjil) dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SoKSdVJJbMU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:39:31', 1),
(154, 'Kelas 7 SMP - Agama Islam - Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/azx86hZML-g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 13:43:08', 1),
(155, 'VIDEO PEMBELAJARAN PAI SMP KELAS 8 BAB 6/MATERI PAI SMP/MEDIA PEMBELAJARAN PAI SMP KELAS VIII BAB 6', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lnCQXscEtII\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:45:52', 1),
(156, 'MATERI PAI SMP KELAS 8 BAB 7 II VIDEO PEMBELAJARAN PAI KELAS 8 BAB 7~ Rendah hati, hemat & sederhana', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Qw-Ol1az_9g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:46:28', 1),
(157, 'Pendidikan Agama Islam | Topik : Jujur & Adil (Kelas 8)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mKDrfFjR_fU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:47:46', 1),
(158, 'VIDEO DARING PAI SMP KELAS 8 BAB 3, (mengutamakan kejujuran & menegakkan keadilan) KURIKULUM 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uBveFiSqydY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:48:14', 1),
(159, 'Kelas 8 - Materi pembelajaran PAI (Pendidikan Agama Islam) SALAT SUNAH', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3p_lmzOS4w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:48:45', 1),
(160, 'VIDEO DARING PAI SMP KELAS 8 BAB 2, (MENGHINDARI MINUMAN KERAS, JUDI & PERTENGKARAN ) KURIKULUM 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QQrPRo-zMp4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:49:14', 1),
(161, 'VIDEO DARING PAI SMP KELAS 8 BAB 4 II MATERI PAI SMP KELAS 8 BAB 4 SEMESTER 1 KURIKULUM 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-dLOxoWt0lo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:50:13', 1),
(162, 'Kelas 8 - Pend. Agama Islam - Iman Kepada Kitab Allah | Video Pendidikan Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mJshE-Wdwcg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:50:44', 1),
(163, 'Kelas 8 SMP - AGAMA ISLAM - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JTc0xhxYS5o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 13:51:18', 1),
(164, 'Kelas 9 - Sejarah Kebudayaan Islam - Masuknya Islam di Nusantara | Video Pendidikan Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CUbkEhz_WYQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 13:58:51', 1),
(165, 'VIDEO DARING PAI SMP KELAS 9 BAB 4 II MATERI PAI SMP KELAS 9 BAB 4 ZAKAT FITRAH & ZAKAT MAL', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-CBMY0o3IKo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 13:59:30', 1),
(166, 'MATERI PAI SMP KELAS 9 BAB 5 / VIDEO PEMBELAJARAN PAI SMP/MEDIA PEMBELAJARAN PAI SMP KELAS 9 BAB 5', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GtC9Rj3zw5A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:01:13', 1),
(167, 'Kelas 9 - Pend. Agama Islam - Qurban | Video Pendidikan Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0W3SwXutFOI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:01:56', 1),
(168, 'MATERI PAI SMP KELAS 9 BAB 6 / MEDIA PEMBELAJARAN PAI & BUDI PEKERTI SMP KELAS 9 KURIKULUM 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lyWcxUiRIqo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:02:49', 1),
(169, 'VIDEO DARING PAI SMP KELAS 9 BAB 2 , (JUJUR DAN MENEPATI JANJI) KURIKULUM 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/052GvHhJdlU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:03:24', 1),
(170, 'VIDEO DARING PAI SMP KELAS 9 BAB 1, (MEYAKINI HARI AKHIR, MENGAKHIRI KEBIASAAN BURUK) KURIKULUM 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/orXl2LKafFA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:04:00', 1),
(171, 'Kelas 9 SMP - Agama Islam - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BVbcZdu9ZM0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:04:37', 1),
(172, 'Kelas 9 SMP - Agama Islam - Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BVbcZdu9ZM0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:07:16', 1),
(173, 'LENGKAP! RANGKUMAN MATERI PPKN KELAS 7 SEMESTER 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/idQ1LCjyysc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:12:21', 1),
(174, 'VIDEO PEMBELAJARAN PPKN SMP KELAS 7 BAB I TENTANG PERUMUSAN DASAR NEGARA (LESSON 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wrSuNfctokg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:13:32', 1),
(175, 'Video Pembelajaran PPKn Kelas 7 Bab 2 | Norma dan Keadilan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Alt2zuh5Qzk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:17:35', 1),
(176, 'PPKn Kelas 7 BAB 3 || B. Arti Penting UUD NRI Tahun 1945 bagi Bangsa dan Negara Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bed3JDz4WCo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:18:31', 1),
(177, 'Video Pembelajaran PPKn Kelas 7 Bab 4 | Keberagaman SARA dalam Bingkai Bhinneka Tunggal Ika', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4dvawM7D0hI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:19:02', 1),
(178, 'Video Pembelajaran PPKn SMP Kelas 7 Materi Perumusan dan Penetapan Pancasila Sebagai Dasar Negara', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZFBSOYTuWZw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:19:39', 1),
(179, 'Kelas 7 SMP - PPKN - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6RT9iKlFybQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:20:07', 1),
(180, 'Kelas 7 SMP - PPKN - Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6RT9iKlFybQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 14:21:32', 1),
(181, 'Kelas 8 SMP - PPKN - Kurikulum 2013 Semester 1 ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zcQioI0c4DM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:27:19', 1),
(182, 'Materi PPKn Kelas 8 Bab 1 Memahami Kedudukan dan Fungsi Pancasila (Penjelasan Singkat Bagian 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5GsNjQIWl0o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:27:56', 1),
(183, 'PPKn Kelas 8 BAB 2 || A. Kedudukan dan Makna Pembukaan UUD Negara Republik Indonesia Tahun 1945', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XvjVLeHvktM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:29:35', 1),
(184, 'Video Pembelajaran PPKn Kelas 8 Bab 3 | Memaknai Peraturan Perundang Undangan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EPoeOFRHFE0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:30:07', 1),
(185, 'Pembahasan SOAL PAS PKN Kelas 8 Dan Kunci Jawaban Semester 1 Terbaru', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oPezekxchak\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:31:13', 1),
(186, 'Kelas 8 SMP - PPKN - Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zcQioI0c4DM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:32:45', 1),
(187, 'Latihan Soal UAS PAS PKn Kelas 8 SMP Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/y9eP29aphu8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:36:09', 1),
(188, 'Latihan Soal UKK PPKN Kelas 8 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Y7gyYGPFpoQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:36:53', 1),
(189, 'Soal UAS / PAS PKN Kelas 8 Semester 1 dan Kunci Jawaban ( Pendidikan Kewarganegaraan 8 ) K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/76Ly_JVfDXk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 14:37:29', 1),
(190, 'Kelas 9 SMP - PPKN - Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RkWds7-qX_8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:56:19', 1),
(191, 'Latihan Soal UTS PTS PPKN Kelas 9 Semester 2 Kurikulum 2013 Beserta Kunci Jawabannya', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EmEBv5AE_Jo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 14:59:37', 1),
(192, 'Latihan Soal UTS PTS Bahasa Indonesia Kelas 9 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RLBMZ-uT-1M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 15:00:18', 1),
(193, 'Kelas 7 SMP Bahasa Indonesia Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AIg8TCiAXIg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:06:58', 1),
(194, 'Video Pembelajaran Bahasa Indonesia “Teks Deskripsi” untuk Siswa SMP kelas VII', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/q-quR9JXxF0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:07:44', 1),
(195, 'VIDEO PEMBELAJARAN BAHASA INDONESIA KELAS 7 SMESTER 1 BAB 1 TEKS DESKRIPSI', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8Kl_KB-JAeM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:10:11', 1),
(196, 'MATERI PEMBELAJARAN BAHASA INDONESIA KELAS 7 SEMESTER 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rEOYp-cslws\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:11:00', 1),
(197, 'Video Pembelajaran Bahasa Indonesia SMP Kelas 7 Materi Kata Umum dan Kata Khusus', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1vgVGmfw2LM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:11:40', 1),
(198, 'Latihan Soal UTS PTS Bahasa Indonesia Kelas 7 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cwX69DHE8pY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:12:20', 1),
(199, 'Bahasa Indonesia Kelas 7 BAB 1 Teks Deskripsi (Pert. 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WCTwxAN1DBk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:12:55', 1),
(200, 'TEKS DESKRIPSI, (GANDOK KREATIF) MAPEL BAHASA INDONESIA, SMP KELAS 7 K 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qoeS8kImKYg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:13:31', 1),
(201, 'Kelas 7 - Bahasa Indonesia - Laporan Hasil Observasi | Video Pendidikan Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DHzxDgP-75w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:14:34', 1),
(202, 'MATERI BAHASA INDONESIA Kelas 7 BAB III Teks Prosedur', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EF-IK2W1HA8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:15:21', 1),
(203, 'Teks Prosedur Bahasa Indonesia kelas 7 K13 : pengertian, contoh, ciri, aspek kebahasan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4vLq9yd4MhY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:16:09', 1),
(204, 'Belajar Soal PTS Kelas 7 SMP Bahasa Indonesia dan Kunci Jawaban K13 Terbaru', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LmfnYLOvXRk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:17:52', 1),
(205, 'Belajar Soal UAS Bahasa Indonesia Kelas 7 SMP Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tQ7bfgGZbEA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:18:28', 1),
(206, 'Kelas 7 SMP Bahasa Indonesia Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AIg8TCiAXIg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:20:12', 1),
(207, 'Latihan Soal UKK Bahasa Indonesia Kelas 7 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/F1NX8xRf_x0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:21:31', 1),
(208, 'Soal UTS Bahasa Indonesia Kelas 7 SMP Semester 2 dan Kunci Jawaban K13 Terbaru', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tUuZ9ZEcs7g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-04 15:21:56', 1),
(209, 'Kelas 8 SMP Bahasa Indonesia Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6J6q1vGhomM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:26:56', 1),
(210, 'BAHASA INDONESIA Kelas 8 BAB 1 (pert 1) - Teks Berita', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LxnsB3UjiUM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:28:12', 1),
(211, 'Teks Puisi / Mata Pelajaran Bahasa Indonesia Kelas 8 / Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lurCgJBiDgk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:29:25', 1),
(212, 'Video Pembelajaran Bahasa Indonesia SMP Kelas 8 Materi Teks Berita', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AJFWMcYun0M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:30:07', 1),
(213, 'video pembelajaran: Indahnya berpuisi, kls 8 smp (B. indonesia)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FuhTxV-DHoo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:30:52', 1),
(214, 'Teks Eksposisi / Mata Pelajaran Bahasa Indonesia Kelas 8 / Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GHy12U7SS2A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:32:47', 1),
(215, 'Teks Eksplanasi / Mata Pelajaran Bahasa Indonesia Kelas 8 / Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2ziyqpTd4mM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:34:49', 1),
(216, 'Materi pembelajaran Bahasa Indonesia kelas 8 \"Iklan, slogan, dan Poster\"', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Jy4m_UbcNsI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:35:25', 1),
(217, 'Contoh Soal PTS Bahasa Indonesia Kls 8 Semester 1 | Part 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MnMAyct8qZ4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:36:20', 1),
(218, 'Soal PTS / UTS Bahasa Indonesia Kelas 8 SMP Dan Kunci Jawaban Terbaru', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ern6k3Ox-_A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:38:56', 1),
(219, 'Latihan Soal UAS Bahasa Indonesia Versi Animasi Terbaru Kelas 8 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9woCnxkl3oc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:39:30', 1),
(220, 'Latihan Soal UTS PTS Bahasa Indonesia Kelas 8 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rM5Qp7oPzKk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:40:10', 1),
(221, '[Belajar Daring Bahasa Indonesia] - Teks Persuasif Kelas 8 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L6wekPft7jY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:44:11', 1),
(222, 'Kelas 8 SMP Bahasa Indonesia Kurikulum 2013 Semester  2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6J6q1vGhomM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:44:46', 1),
(223, 'Latihan Soal UKK Bahasa Indonesia Kelas 8 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RN037itxWA4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-04 15:59:03', 1),
(224, 'Kelas 9 SMP Bahasa Indonesia Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/h1vP1A7Xz0M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:01:17', 1),
(225, 'Pengertian dan Fungsi Teks Laporan Percobaan - Quipper Video - Bahasa Indonesia Kelas 9', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pcq_zoHBeGI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:01:49', 1),
(226, 'Teks Pidato Persuasif / Mata Pelajaran Bahasa Indonesia Kelas 9 / Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OmW9g-W5ejs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:02:20', 1),
(227, 'Teks Tanggapan / Mata Pelajaran Bahasa Indonesia Kelas 9 / Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1xLfRvojD-0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:02:54', 1),
(228, 'Video Pembelajaran Bahasa Indonesia SMP Kelas 9 Materi Mengidentifikasi Teks Laporan Percobaan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/r4iOf0-13O4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:03:29', 1),
(229, 'VIDEO PEMBELAJARAN KELAS 9 MATA PELAJARAN B.INDONESIA ( PENGERTIAN DAN STUKTUR CERPEN )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IzMT_ZuPXv0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:03:58', 1),
(230, 'MATERI BAHASA INDONESIA Kelas 7 BAB III Teks Prosedur', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EF-IK2W1HA8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:04:32', 1),
(231, 'Soal Bahasa Indonesia Kelas 9 dan Kunci Jawaban Semester Ganjil Teks Cerpen ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/78YCRcYB4Tg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:05:52', 1),
(232, 'Latihan Soal #2 Penilaian Akhir Semester Ganjil (PAS) Bahasa Indonesia kelas 9 SMP/MTs bagian 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MB-RC4FmdzI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:06:47', 1),
(233, 'Soal PAS Bahasa Indonesia Kelas 9 SMP / MTs Semester 1 dan Kunci Jawaban + Pembahasan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/f2VmH-ly8BM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:07:20', 1),
(234, 'Kelas 9 SMP Bahasa Indonesia Kurikulum 2013 Semester  2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/h1vP1A7Xz0M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:08:53', 1),
(235, 'Latihan Soal UTS PTS Bahasa Indonesia Kelas 9 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RLBMZ-uT-1M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:10:21', 1),
(236, 'PERSIAPAN PENILAIAN AKHIR SEMESTER (PAS) GANJIL |BAHASA INDONESIA KELAS IX', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nDkdrlcmpWU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-04 16:10:49', 1),
(237, 'Kelas 7 SMP - Penjaskes - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vajr0IOdeoA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Video pembelajaran siswa kali ini berisi Rangkuman Materi Pelajaran Penjaskes / PJOK kelas 7 smp kurikulum 2013 Semester 1 dan 2. Semoga bermanfaat</p>\r\n', 1, '2020-12-06 04:06:49', 1),
(238, 'Pembelajaran daring PJOK SMP Kelas VII Semester Ganjil, Sepakbola', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3qkqtSdxR_A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:08:07', 1),
(239, 'MATERI PEMBELAJARAN PJOK KELAS VII/7 - MATERI PEMBELAJARAN BOLA VOLI', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8_AuKIQiSlM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:08:50', 1),
(240, 'Pembelajaran PJOK Kelas 7 SMP (Atletik)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AFtSpCahd6E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Pembelajaran PJOK Kelas 7 SMP (Atletik)</p>\r\n', 1, '2020-12-06 04:11:39', 1),
(241, 'MATERI PJOK KELAS VII BAB BOLA BESAR', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/THEvJO16PL8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:12:17', 1),
(242, 'Video Pembelajaran PJOK || Atletik Jalan Cepat || Kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VuRtGRZ_1Sc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:12:45', 1),
(243, 'PEMANASAN DINAMIS - Video Pembelajaran PJOK SMP Kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/leCNgAz0Dkk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>Pemanasan dinamis yaitu pemanasan yang dilakukan dengan menggunakan gerakan yang saling berkesinambungan atau saling berkaitan. Contoh gerakan pemanasan dinamis yaitu gerakan menengokkan kepala keatas dan kebawah, gerakan menekuk pendek-pendek panjang-panjang pada tangan atau gerakang kombinasi ( bongkok jongkok bongkok tegak). Pemanasan bentuk ini dimaksudkan untuk melemaskan otot-otot yang kaku.</p>\r\n', 1, '2020-12-06 04:15:42', 1),
(244, 'PJOK KELAS 7 - Aktivitas Bela diri ( Aktivitas Pembelajaran Bela diri dengan Pencak Silat )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/exwCC5eDinY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>PJOK KELAS 7 - Aktivitas Bela diri ( Aktivitas Pembelajaran Bela diri dengan Pencak Silat ) Tematik Kurikulum 2013</p>\r\n', 1, '2020-12-06 04:17:55', 1),
(245, 'MATERI PEMBELAJARAN KEBUGARAN JASMANI', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BS2i7SKJl9I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:19:08', 1),
(246, 'Belajar Soal UAS PJOK Kelas 7 SMP Semester 1 ( Penjaskes / Penjasorkes ) dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GkXeZ9AlGJk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:20:27', 1);
INSERT INTO `tb_video` (`id`, `judul_video`, `link`, `keterangan`, `video_kategori`, `date_upload`, `status`) VALUES
(247, 'Latihan Soal UAS / PAS PJOK Kelas 7 SMP Semester 1 dan Kunci Jawaban. K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wHMuVdFvOP4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:21:09', 1),
(248, 'Latihan Soal UKK PAT PJOK Kelas 7 Semester 2 Kurikulum 2013 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1so8-XqQt04\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:21:45', 1),
(249, 'Video Pembelajaran IPS Kelas 7 Semester 1 Materi Ruang dan Interaksi Antarruang', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uBBlUbhDXus\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:27:14', 1),
(250, 'Video Pembelajaran INTERAKSI SOSIAL Materi IPS Kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/I4x1p052Tvs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:27:57', 1),
(251, 'Kelas 7 SMP - IPS - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hknoCySqYAU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:28:33', 1),
(252, 'Materi IPS kelas 7 smtr 1 K13. Kondisi Alam Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2zakOYivMHU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:29:06', 1),
(253, 'Video Pembelajaran LEMBAGA SOSIAL Materi IPS Kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pKeyxb2vmtA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:29:40', 1),
(254, 'Materi IPS kelas 7 smtr 1 K13. Flora dan Fauna Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Rl22XAlKI48\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:30:15', 1),
(255, 'Materi IPS kelas 7 smtr 1 K13. Potensi Sumber Daya Alam Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/N6Slk2VDhME\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:37:21', 1),
(256, 'Video Pembelajaran IPS Kelas 7 Semester 1 Materi Dinamika Kependudukan Indonesia', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c1JflBJ2PQ4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:38:06', 1),
(257, 'Letak dan Luas Indonesia dalam Peta', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Jo42a8hO_3w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:38:50', 1),
(258, 'Keragaman Etnik dan Budaya Indonesia || IPS K13 Kelas 7 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4IPx6JkdpUY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:39:48', 1),
(259, 'Kelas 7 SMP - IPS - Kurikulum 2013 Semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hknoCySqYAU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:41:23', 1),
(260, 'Pembahasan Soal PAS/UAS IPS Kelas 7 (LATIHAN)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rlMGA_1sls0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:44:41', 1),
(261, 'Belajar Soal Kelas 7 PTS IPS Semester 1 Dan Kunci Jawaban K13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Zu-WLJvhD_Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:45:16', 1),
(262, 'Latihan Soal UKK IPS Kelas 7 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/52XC921auxc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:45:50', 1),
(263, 'Latihan Soal UTS PTS IPS Kelas 7 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NN1ETrl8sD8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-06 04:46:21', 1),
(264, 'Kelas 8 SMP - IPS - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lChw58aGSBk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-06 04:50:56', 1),
(265, 'Video Pembelajaran Kelas 8 K13 - IPS - Perubahan Masyarakat Indonesia pada Masa Penjajahan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kdmnP7Me0xg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-06 04:51:37', 1),
(266, 'Video pembelajaran IPS kelas 8 semester 1, interaksi keruangan kehidupan di negara-negara asean', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/j9lCs0BgC8k\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-06 04:52:30', 1),
(267, 'VIDEO PEMBELAJARAN IPS KELAS 8 (RANGKUMAN MATERI BERDASARKAN K-13 REV 2018)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OvlrvkcOKuI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 04:57:46', 1),
(268, 'IPS kelas 8 semester ganjil | Pengertian dan bentuk bentuk Mobilitas Sosial part 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lhn5_Cibl1Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 04:58:26', 1),
(269, 'Video Pembelajaran Mengenal Negara-Negara ASEAN - IPS (Geografi) Kelas 8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Dx8DBGbuOZE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 04:59:01', 1),
(270, 'Latihan Soal UTS PTS IPS Kelas 8 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7tud-z3u1WA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:00:31', 1),
(271, 'Belajar Soal PTS / UTS IPS Kelas 8 SMP Semester 1 Dan Kunci Jawaban K13 Terbaru', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bos0thc9_WM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:01:07', 1),
(272, 'Kelas 8 SMP - Penjaskes - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_RmjP-ooCJY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:03:11', 1),
(273, 'Kebugaran Jasmani (Materi PJOK untuk kelas 8 tingkat SMP/MTs)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cQpJHS2CJGw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:04:21', 1),
(274, 'kelas 8 - smp - penjaskes kurikulum 2013 semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fYWabquh77U\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:05:11', 1),
(275, 'Latihan Soal UAS / PAS PJOK Kelas 8 SMP Semester 1 dan Kunci Jawaban. K13. PART I', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bmATQ2v8oAo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:05:47', 1),
(276, 'Latihan Soal UAS / PAS PJOK Kelas 7 SMP Semester 1 dan Kunci Jawaban. K13. PART II', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wHMuVdFvOP4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:09:35', 1),
(277, 'Kelas 9 SMP - Penjaskes - Kurikulum 2013 - Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1bc3AyLQKB4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-07 05:10:34', 1),
(278, 'Materi daring penjas sepak bola kelas 9/IX bab 1 semester ganjil', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/geTKhAeBArk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:11:05', 1),
(279, 'MATERI PEMBELAJARAN PJOK KELAS IX - MATERI BOLA BESAR - MATERI VARIASI PERMAINAN SEPAK BOLA', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Rv0dqMTDEWk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:12:57', 1),
(280, 'MATERI PJOK Kelas 9 || Atletik || Lompat Jauh / Long Jump', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xzN4Yv9SwOs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:13:32', 1),
(281, 'Materi pjok kelas 9 semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zXFgcvb4VM8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:14:05', 1),
(282, 'UJIAN PTS SEMESTER 1 PJOK KELAS 9 SMP/MTs Sederajat', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yQFduoPRf0M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:14:46', 1),
(283, 'Materi PJOK Kelas 9 \"Pertolongan Pertama Pada Kecelakaan (P3K)\" Part 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/y8ADv5fa7lo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:15:23', 1),
(284, 'Pembelajaran PJOK Kelas 9 Materi Atletik Jalan Cepat', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eDFv8OlYFt4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:15:54', 1),
(285, 'Kelas 9 SMP - IPS - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rr72UwNsOMs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:18:26', 1),
(286, 'IPS Kelas 9 : Interaksi Antarruang Benua Asia Dengan Benua Lainnya', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/l4UX53FlGSc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:19:18', 1),
(287, 'VIDEO PEMBELAJARAN IPS KELAS 9 (RANGKUMAN MATERI BERDASARKAN K-13 REV 2018)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gROLruq_Koc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:20:03', NULL),
(288, 'VIDEO PEMBELAJARAN IPS KELAS 9 BAB 1 B : KONDISI ALAM NEGARA-NEGARA DI DUNIA', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p7TlqYoroeM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:37:40', 1),
(289, 'RANGKUMAN MATERI IPS KELAS IX SEMESTER 1 DAN 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FkE3VJESWvI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-07 05:38:29', 1),
(290, 'Matematika Kelas 7 SMP Semester 1 dan 2 Kurikulum 2013 Revisi 2017', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZnMIvhmqPjk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:41:57', 1),
(291, 'Materi Matematika SMP Kelas 7 K 13 Sem 1/Ganjil', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MDuhg13Bq7c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:42:33', 1),
(292, 'Video Pembelajaran Mengenal Bentuk Aljabar Kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/itcTDr5-2y0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:43:31', 1),
(293, 'video pembelajaran matematika kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ohy4wepnJdQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:44:04', 1),
(294, 'Matematika Tahun Ajaran 2020-2021 || Kelas 7 SMP || Bagian 1 || Bilangan Bulat', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x7ZSlfZt8TY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:45:12', 1),
(295, 'Soal PTS Matematika Kelas 7 Semester 1 Kurikulum 2013 Terbaru + Pembahasan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5Sn-GVVIzWA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:45:43', 1),
(296, 'PECAHAN: MATEMATIKA KELAS 7 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-c-wMmAC8UE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:46:20', 1),
(297, 'Himpunan | Matematika Kelas 7 SMP Bab 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/T5E9NOcMGIk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:46:51', 1),
(298, 'Soal UAS PAS Matematika Kelas 7 Kurikulum 2013 Semester 1 dan Kunci Jawaban Plus Pembahasan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qvcGfnDsCE0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-07 05:47:36', 1),
(299, 'Video Pembelajaran Garis dan Sudut smp kelas 7 semester 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pdOvdikfT2g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 01:58:48', 1),
(300, 'Video Pembelajaran Matematika untuk Siswa Kelas 7 SMP (Segitiga)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/F6fktPyExnU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 02:52:46', 1),
(301, 'Materi MTK Kelas 7 K13 Semester Genap', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_PD7yEafhX4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:05:10', 1),
(302, 'Video Pembelajaran Matematika Materi Segiempat kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vztbx6BhkYU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:05:51', 1),
(303, 'Latihan Soal PTS Matematika Kelas 7 Semester 1 TP 2019/2020', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5sbh9Iro9_Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:07:42', 1),
(304, 'Soal UAS PAS Matematika Kelas 7 Kurikulum 2013 Semester 1 dan Kunci Jawaban Plus Pembahasan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qvcGfnDsCE0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:08:13', 1),
(305, 'Prediksi Soal PAS Matematika Kelas 7 SMP [Penilaian Akhir Semester]', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UYjzNvQXKHI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:08:42', 1),
(306, 'Latihan Soal UAS/PAS Matematika Kelas 7 Semester 1 Tahun 2020-2021', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dq350JhqfCM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:09:16', 1),
(307, 'PEMBAHASAN SOAL-SOAL PENILAIAN AKHIR SEMESTER 1 || MATEMATIKA KELAS 7|| (PART 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pLeQO17fcOc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:09:44', 1),
(308, 'Soal PTS Matematika Kelas 8 Semester 1 Kurikulum 2013 Terbaru + Pembahasannya', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KCm3Jo7jKSE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:14:18', 1),
(309, 'LATIHAN SOAL PAS MATEMATIKA SEMESTER GANJIL KELAS 8 2019', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vCl3vz7sjGo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:14:43', 1),
(310, 'Latihan Soal UAS PAS Matematika Kelas 8 SMP/MTs Kurikulum 2013 Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MsjhgqbxQhU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:15:22', 1),
(311, 'Latihan Soal PTS Semester 1 Matematika Kelas 8 Tahun 2020 #LatihanPTS1MTKKls8 #PrediksiPTS1MTKKls8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PICyaoPTHdc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:15:53', 1),
(312, 'PEMBAHASAN SOAL-SOAL PAS (PENILAIAN AKHIR SEMESTER 1) || MATEMATIKA KELAS 8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/O6AmGgxDDBA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:16:30', 1),
(313, 'Matematika Kelas 8 SMP Kurikulum 2013 Revisi 2017 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c-Qmq4PSLFc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:17:01', 1),
(314, 'Prediksi Soal PAS Matematika Kelas 8 SMP [Sesuai Kisi-kisi Penilaian Akhir Semester', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0-HbKqdJ-gc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:17:34', 1),
(315, 'PAS Matematika Kelas 8 Semester 1, Rangkuman Matematika Kelas 8 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eiH_ISaX3RE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:20:26', 1),
(316, 'PAS Matematika Kelas 8 Semester 1, Rangkuman Matematika Kelas 8 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lplnRRKnd8w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:20:58', 1),
(317, 'Matematika Kelas 8 - Pola bilangan (1) - Mencari suku suatu pola bilangan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eiH_ISaX3RE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:21:40', 1),
(318, 'Video Pembelajaran Matematika Bab 3. Relasi Dan Fungsi Part 1 Kelas 8 SMP/MT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ntgayHgd89k\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:22:19', 1),
(319, 'Video Pembelajaran Matematika Kelas 8 PoLA BILANGAN', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/onIHbruMqeE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:22:56', 1),
(320, 'Matematika Kelas 8 - Pola bilangan (1) - Mencari suku suatu pola bilangan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eiH_ISaX3RE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:27:54', 1),
(321, 'Matematika Kelas 8 - Pola bilangan (3) - Barisan Aritmatika dan Deret Aritmatika', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/53UQKASNsTc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:28:40', 1),
(322, 'Matematika Kelas 8 - Pola Bilangan (4) - Soal Cerita Barisan Aritmatika dan Deret Aritmatika', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ys65d4SDH0Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:29:15', 1),
(323, 'Matematika Kelas 8 - Pola Bilangan (5) - Barisan Geometri dan deret Geometri', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ma0nXqwVZY8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:29:54', 1),
(324, 'Matematika Kelas 8 - Pola Bilangan (6) - Soal Cerita Barisan Geometri dan Deret', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/145BvN_VVIc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:30:34', 1),
(325, 'GARIS DAN SUDUT (PART 1)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2XE_PU3fRNM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:33:24', 1),
(326, 'Matematika Kelas 9 - Kesebangunan dan Kongruensi (2) - Bangun Sebangun, Segitiga Sebangun', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tEYinbkUHN4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:33:57', 1),
(327, 'Kekongruenan dan Kesebangunan (Materi Pembelajaran Kelas 9)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3pfHBJ_Hz3Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:34:28', 1),
(328, 'GARIS SUDUT Matematika SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PByhtSkUobE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:35:04', 1),
(329, 'Matematika Kelas 9 - Transformasi (4) - Transformasi Rotasi, Rumus Tranformasi Rotasi, Soal Rotasi', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tM6RMmQ80QM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:35:41', 1),
(330, 'MATEMATIKA 9 SMP - Persamaan Kuadrat Bagian 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iFnoSGnwmus\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:40:29', 1),
(331, 'ALJABAR PART 1 (PENJUMLAHAN DAN PENGURANGAN)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/s5yk8vg01As\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:41:00', 1),
(332, '29 MENIT DIJAMIN ANDA MENGUASAI BAB HIMPUNAN', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qFGU4joTvaY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:41:34', 1),
(333, 'Latihan Soal PTS Matematika Kelas 9 Semester 1 TP 2019/2020', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NW6wlQxqceQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:47:56', 1),
(334, 'Latihan Soal UAS PAS Matematika Kelas 9 SMP/MTS Semester 1 Kurikulum 2013 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/aRIaVzDm6KE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:48:32', 1),
(335, '[HOTS] BAHAS SOAL-SOAL GARIS DAN SUDUT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7hxP9dG1Se0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:49:29', 1),
(336, 'Pembahasan Soal HOTS UN UNBK Matematika SMP 2018 Paket 1 (No.33-34)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6Z7izsNVgEs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:49:58', 1),
(337, '[HOTS] BAHAS SOAL-SOAL GARIS DAN SUDUT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7hxP9dG1Se0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 03:50:37', 1),
(338, 'Kelas 7 SMP - Prakarya - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EWfMuVgs7Zo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:53:33', 1),
(339, 'Video Pembelajaran Prakarya SMP Kelas 7 Materi Pengolahan Buah', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VRcxbeTlG-o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:54:03', 1),
(340, 'Rangkuman Materi Lengkap Kerajinan Serat Prakarya kelas 7 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0Mwd7ALJpbI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:54:34', 1),
(341, 'Soal UAS/ PAS Prakarya Kelas 7 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GKP54B6h974\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:55:17', 1),
(342, 'Teknik Pengolahan Buah - Belajar Prakarya SMP Kelas 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9_q6V3skhIE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 03:56:04', 1),
(343, 'Kelas 8 SMP - PRAKARYA - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/H1SuqzCP_30\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:58:00', 1),
(344, 'KERAJINAN BAHAN LUNAK | PRAKARYA KELAS 8 SEMESTER 1 BAGIAN 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/B9NxBXRN9-c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:58:42', 1),
(345, 'Video Pembelajaran Prakarya SMP Kelas 8 Smt 2. Aspek Pengolahan Lengkap', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/X8eP2em16OU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 03:59:32', 1),
(346, 'Video Pembelajaran Prakarya SMP Kelas 8 Materi Pengertian dan Karakteristik Bahan Lunak', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HzenWM_QKV0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:00:59', 1),
(347, 'Latihan Soal PAS Prakarya kls 8 sem 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/F6ugK6TW0sg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:01:33', 1),
(348, 'Kelas 9 SMP - PRAKARYA - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ueyR5qsBzr4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:09:30', 1),
(349, 'Kelas 9 SMP - Seni Budaya - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DlxuwxG_-q0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:11:26', 1),
(350, 'Latihan Soal USBN Prakarya SMP MTs dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eFlbCkC6kn0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:12:28', 1),
(351, 'Kelas 9 SMP - PRAKARYA - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ueyR5qsBzr4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:13:01', 1),
(352, 'Latihan Soal PTS Seni Budaya Kelas 9 Kurikulum 2013 Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2FKc33pJi78\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:13:40', 1),
(353, 'Soal Prakarya Kelas 9 Semester 1 Kerajinan Bahan Keras Prinsip Kelistrikan Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kkbsxcnYCX4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:18:19', 1),
(354, 'Kumpulan Soal Prakarya kls 9 Bab1 : Kerajinan dari Bahan Keras', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Kqht5UygpBI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:20:10', 1),
(355, 'Kelas 7 SMP - Seni Budaya - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fn0Ew_tXu2c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:32:05', 1),
(356, 'materi pembelajaran seni budaya kelas 7 SEMESTER 1 BAB I (menggambar flora, fauna dan alam benda)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wcJs3NDQBjg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:32:56', 1),
(357, 'Soal UAS / PAS Seni Budaya ( Seni Rupa ) SMP kelas 7 semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/j1JsTNatPtE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:33:40', 1),
(358, 'MATERI SENI BUDAYA kelas 7 BAB III Bernyanyi Secara Vokal Group [[ Kurikulum 13', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/djrlZeKb5ws\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:34:14', 1),
(359, 'Latihan Soal PTS Seni Budaya Kelas 7 Kurikulum 2013 Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1fiBq6q5v9M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:34:49', 1),
(360, 'Belajar Soal PTS Kelas 7 SENI BUDAYA Semester 1 Kurikulum 13 Dan Jawaban Terbaru', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/r1qVaVG1YOE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:36:30', 1),
(361, 'Belajar Soal UAS Seni Budaya Kelas 7 Semester 1 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ocjtS9yX7ak\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:37:06', 1),
(362, 'Latihan Soal UTS PTS Seni Budaya Kelas 7 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ExW6N-_SkBc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:37:34', 1),
(363, 'Kelas 8 SMP - Seni Budaya - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/O3Egv9ZMN_w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:39:34', 1),
(364, 'VIDEO PEMBELAJARAN SENI BUDAYA KELAS 8 SEMESTER 1 BAB 1 SENI RUPA', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8kOsEmg1DiY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:40:19', 1),
(365, 'Latihan Soal PTS Seni Budaya Kelas 8 Kurikulum 2013 Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C1QU5C6QmP8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:41:24', 1),
(366, 'Materi Seni Budaya Kelas 8 || Menggambar Model', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Q9LM-ItIwQg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:42:22', 1),
(367, 'Kelas 9 SMP - Seni Budaya - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DlxuwxG_-q0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:44:29', 1),
(368, 'Materi Seni Budaya Kelas 9 || Seni Patung', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8Q2L8AQzqGU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:45:03', 1),
(369, 'Soal SENI BUDAYA Kelas 8 Semester 1 Dan Kunci Jawaban ( PTS UTS SENI BUDAYA )', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LFbqNglXXTU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 04:46:12', 1),
(370, 'Pembelajaran Jarak Jauh - Seni Budaya Kelas 9 \"SENI MUSIK\"', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AObbRAO3EHg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:46:42', 1),
(371, 'Materi SENI BUDAYA, BAB Seni Lukis, Kelas IX Kurikulum 2013 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jDkoRpFH3bs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 04:47:25', 1),
(372, 'Kelas 7 SMP - IPA - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/H-EB_KocNRY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:51:56', 1),
(373, 'Kelas 7 SMP IPA Kurikulum 2013 Revisi 2017 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0ebp3gf8AX0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:52:34', 1),
(374, 'KLASIFIKASI MAHLUK HIDUP: IPA KELAS 7 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Lyiwj0_0gXE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:53:11', 1),
(375, 'Video Pembelajaran IPA SMP kelas 7 Materi Objek IPA dan Pengamatannya', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hAgqn8G_17c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:53:43', 1),
(376, 'IPA SMP KELAS 7 semester 2 BAB 1 Sistem Organisasi Mahluk Hidup bse k13 revisi 2017', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/J17WQ_ir0cI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:55:33', 1),
(377, 'Latihan Soal UAS PAS IPA (Ilmu Pengetahuan Alam) Kelas 7 SMP Semester 1 dan Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jBgy1qGPu_o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:56:46', 1),
(378, 'OBJEK IPA dan PENGAMATANNYA #BAB 1- SEMESTER 1# IPA SMP (KURTILAS) KURIKULUM 2013-KELAS 7', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p1Ea-DfMXEs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:57:28', 1),
(379, 'Latihan Soal UTS PTS IPA Kelas 7 Semester 2 Kurikulum 2013 Beserta Kunci Jawaban', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TMeqYCwiNhU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 1, '2020-12-08 04:57:58', 1),
(380, 'Kelas 8 SMP - IPA - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k7Li73GFlKw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:02:41', 1),
(381, 'Kelas 8 SMP IPA Kurikulum 2013 Revisi 2017 Semester 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nljuxHlzb7A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:03:18', 1),
(382, 'SISTEM GERAK PADA MANUSIA: IPA SMP KELAS 8', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/R0ZIbHM6u8o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:03:53', 1),
(383, 'Video Pembelajaran IPA SMP Kelas 8 Materi Struktur dan Fungsi Tumbuhan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fqCSskwHj7I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:04:21', 1),
(384, 'ipa smp kelas 8 bab 2 usaha dan pesawat sederhana , BSE K13 revisi 2017 KOMPLIT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Kw00MhQv64c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:05:14', 1),
(385, 'STRUKTUR TUMBUHAN : IPA KELAS 8 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dku20KBNkp0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:05:46', 1),
(386, 'Fisika Kelas 8 - Gaya (1) - Gaya Sentuh, gaya tak sentuh, gaya berat, berat dan massa', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CAvIVgbmS6E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:06:17', 1),
(387, 'IPA Kelas 8 bab 1 GERAK BENDA, gerak benda dan mahluk hidup di lingkungan sekitar , bse k13 revisi', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YdKfX8xUy6g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:06:45', 1),
(388, 'IPA KELAS 8 Bab 1 SISTEM GERAK MANUSIA, gerak benda dan mahluk hidup di lingkungan sekitar', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/j3_srQTE5qs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:07:12', 1),
(389, 'SOAL DAN JAWABAN PAS/UTS IPA KELAS 8 SMP SEDERAJAT SEMESTER 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/W_x5eN4hpHI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:07:41', 1),
(390, 'Soal IPA Kelas 8 Semester 1 ( Latihan PTS / UTS Kls VIII SMP ) dan jawaban Kurikulum', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tnDMblbuqx0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 2, '2020-12-08 05:08:12', 1),
(391, 'Kelas 9 SMP - IPA - Kurikulum 2013 Semester 1 dan 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yDK89JvvteM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:20:55', 1),
(392, 'SISTEM REPRODUKSI TUMBUHAN DAN HEWAN: IPA KELAS 9 SMP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ai6BXUu49Gc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:24:23', 1);
INSERT INTO `tb_video` (`id`, `judul_video`, `link`, `keterangan`, `video_kategori`, `date_upload`, `status`) VALUES
(393, 'IPA Kelas 9 : Sistem Reproduksi pada Manusia I ( Pembelahan Sel)', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-ChtP5m_VJA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:25:03', 1),
(394, 'Quipper Video - Biologi Kelas 9 - Sistem Reproduksi pada Pria - Kurikulum 2013', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CckwuBM2IF0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:26:00', 1),
(395, ' Video Pembelajaran Kelas 9 K13 - IPA - LISTRIK DINAMIS', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xzFskR6qFXU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:26:29', 1),
(396, 'MATERI IPA KELAS 9 SEMESTER 1 - Kurikulum 2013 Revisi', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/i0RpJBSLMwQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:27:08', 1),
(397, 'Pembahasan Soal IPA kelas 9 Persiapan PAS 2020', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GAq-HLirSmA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:27:35', 1),
(398, 'latihan PENILAIAN AKHIR SEMESTER PAS IPA kelas 9 semester gasal', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zV4EDdXzX9M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:28:10', 1),
(399, 'Video Pembelajaran IPA Kelas 9 SMP-Pewarisan Sifat', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TJnlErQYV9g\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 3, '2020-12-08 05:28:36', 1);

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
('114.5.220.7', '2020-11-20', 9, '1605841836', '2020-11-20 02:27:03'),
('182.1.186.146', '2020-11-20', 1, '1605839949', '2020-11-20 02:39:09'),
('182.1.184.74', '2020-11-20', 1, '1605840076', '2020-11-20 02:41:16'),
('114.125.210.59', '2020-11-20', 1, '1605849947', '2020-11-20 05:25:47'),
('114.125.210.119', '2020-11-20', 1, '1605850051', '2020-11-20 05:27:31'),
('114.125.210.68', '2020-11-20', 1, '1605850767', '2020-11-20 05:39:27'),
('69.25.58.62', '2020-11-20', 2, '1605862458', '2020-11-20 07:27:21'),
('182.1.178.117', '2020-11-20', 2, '1605876655', '2020-11-20 12:48:20'),
('182.1.160.113', '2020-11-20', 2, '1605888976', '2020-11-20 12:56:13'),
('182.1.176.241', '2020-11-20', 3, '1605880320', '2020-11-20 12:56:38'),
('125.166.226.178', '2020-11-20', 108, '1605886334', '2020-11-20 12:59:24'),
('182.1.163.33', '2020-11-20', 1, '1605877455', '2020-11-20 13:04:15'),
('182.1.178.225', '2020-11-20', 4, '1605889149', '2020-11-20 13:06:32'),
('182.1.177.225', '2020-11-20', 2, '1605878930', '2020-11-20 13:07:28'),
('182.1.176.253', '2020-11-20', 9, '1605891236', '2020-11-20 13:11:58'),
('114.125.187.93', '2020-11-20', 2, '1605888032', '2020-11-20 13:33:18'),
('114.125.171.21', '2020-11-20', 1, '1605879343', '2020-11-20 13:35:43'),
('182.1.169.249', '2020-11-20', 1, '1605879891', '2020-11-20 13:44:51'),
('182.1.170.125', '2020-11-20', 2, '1605879938', '2020-11-20 13:45:36'),
('182.1.178.105', '2020-11-20', 3, '1605890494', '2020-11-20 13:58:52'),
('114.125.165.21', '2020-11-20', 13, '1605888307', '2020-11-20 14:03:32'),
('114.125.181.1', '2020-11-20', 1, '1605881162', '2020-11-20 14:06:02'),
('114.125.186.145', '2020-11-20', 2, '1605881424', '2020-11-20 14:10:09'),
('114.125.181.125', '2020-11-20', 4, '1605888330', '2020-11-20 14:11:16'),
('54.221.27.173', '2020-11-20', 1, '1605882449', '2020-11-20 14:27:29'),
('182.1.177.117', '2020-11-20', 1, '1605882986', '2020-11-20 14:36:26'),
('114.125.181.137', '2020-11-20', 2, '1605883601', '2020-11-20 14:46:32'),
('182.1.176.229', '2020-11-20', 4, '1605890753', '2020-11-20 15:00:45'),
('182.1.178.149', '2020-11-20', 3, '1605890743', '2020-11-20 15:07:34'),
('182.1.170.113', '2020-11-20', 1, '1605885847', '2020-11-20 15:24:07'),
('182.1.186.229', '2020-11-20', 1, '1605885972', '2020-11-20 15:26:12'),
('182.1.171.121', '2020-11-20', 2, '1605886233', '2020-11-20 15:27:38'),
('182.1.169.237', '2020-11-20', 1, '1605886134', '2020-11-20 15:28:54'),
('114.125.167.149', '2020-11-20', 1, '1605887643', '2020-11-20 15:54:03'),
('114.125.171.129', '2020-11-20', 1, '1605887650', '2020-11-20 15:54:10'),
('182.1.163.57', '2020-11-20', 1, '1605888952', '2020-11-20 16:15:52'),
('114.125.183.145', '2020-11-20', 1, '1605889978', '2020-11-20 16:32:58'),
('114.125.171.141', '2020-11-20', 1, '1605890143', '2020-11-20 16:35:43'),
('191.96.41.118', '2020-11-20', 1, '1605910662', '2020-11-20 22:17:42'),
('181.214.44.78', '2020-11-21', 1, '1605925690', '2020-11-21 02:28:10'),
('101.50.1.74', '2020-11-21', 1, '1605926411', '2020-11-21 02:40:11'),
('142.93.154.114', '2020-11-21', 1, '1605948575', '2020-11-21 08:49:35'),
('159.203.36.59', '2020-11-21', 1, '1605948575', '2020-11-21 08:49:35'),
('114.125.210.74', '2020-11-21', 1, '1605949925', '2020-11-21 09:12:05'),
('114.125.210.112', '2020-11-21', 1, '1605949941', '2020-11-21 09:12:21'),
('125.166.226.178', '2020-11-21', 13, '1605963099', '2020-11-21 12:49:33'),
('185.215.227.46', '2020-11-21', 1, '1605967146', '2020-11-21 13:59:06'),
('18.159.50.239', '2020-11-21', 2, '1605989041', '2020-11-21 20:04:01'),
('85.203.48.88', '2020-11-22', 1, '1606051948', '2020-11-22 13:32:28'),
('181.215.64.184', '2020-11-23', 1, '1606100377', '2020-11-23 02:59:37'),
('54.245.194.228', '2020-11-25', 1, '1606333880', '2020-11-25 19:51:20'),
('182.1.178.7', '2020-11-30', 1, '1606716131', '2020-11-30 06:02:11'),
('114.125.210.79', '2020-11-30', 1, '1606725320', '2020-11-30 08:35:20'),
('114.125.210.100', '2020-11-30', 3, '1606737947', '2020-11-30 11:06:51'),
('114.125.210.122', '2020-11-30', 3, '1606737853', '2020-11-30 11:16:27'),
('114.125.210.105', '2020-11-30', 1, '1606735004', '2020-11-30 11:16:44'),
('114.125.210.58', '2020-11-30', 3, '1606737690', '2020-11-30 11:25:48'),
('114.125.210.98', '2020-11-30', 1, '1606735553', '2020-11-30 11:25:53'),
('114.125.210.72', '2020-11-30', 1, '1606735700', '2020-11-30 11:28:20'),
('114.125.210.59', '2020-11-30', 3, '1606737610', '2020-11-30 11:31:06'),
('114.125.210.106', '2020-11-30', 2, '1606736469', '2020-11-30 11:31:08'),
('114.125.210.91', '2020-11-30', 3, '1606735957', '2020-11-30 11:32:25'),
('114.125.210.114', '2020-11-30', 1, '1606736268', '2020-11-30 11:37:48'),
('114.125.210.93', '2020-11-30', 1, '1606736516', '2020-11-30 11:41:56'),
('114.125.210.97', '2020-11-30', 1, '1606736701', '2020-11-30 11:45:01'),
('114.125.210.111', '2020-11-30', 1, '1606736766', '2020-11-30 11:46:06'),
('114.125.210.123', '2020-11-30', 1, '1606736783', '2020-11-30 11:46:23'),
('114.125.210.99', '2020-11-30', 5, '1606737930', '2020-11-30 11:47:47'),
('114.125.210.90', '2020-11-30', 2, '1606737681', '2020-11-30 11:53:08'),
('114.125.210.76', '2020-11-30', 1, '1606737386', '2020-11-30 11:56:26'),
('114.125.210.73', '2020-11-30', 2, '1606737457', '2020-11-30 11:57:31'),
('114.125.210.119', '2020-11-30', 1, '1606737465', '2020-11-30 11:57:45'),
('114.125.210.89', '2020-11-30', 1, '1606737619', '2020-11-30 12:00:19'),
('114.125.210.126', '2020-11-30', 1, '1606737637', '2020-11-30 12:00:37'),
('114.125.210.77', '2020-11-30', 1, '1606737701', '2020-11-30 12:01:41'),
('114.125.210.60', '2020-11-30', 1, '1606737747', '2020-11-30 12:02:27'),
('202.80.216.194', '2020-11-30', 14, '1606755097', '2020-11-30 16:23:28'),
('103.27.207.18', '2020-12-01', 1, '1606810104', '2020-12-01 08:08:24'),
('103.27.207.18', '2020-12-02', 1, '1606871116', '2020-12-02 01:05:16'),
('114.5.109.38', '2020-12-02', 5, '1606882316', '2020-12-02 03:51:37'),
('182.1.179.191', '2020-12-02', 1, '1606942683', '2020-12-02 20:58:03'),
('182.1.160.79', '2020-12-02', 2, '1606942856', '2020-12-02 20:58:20'),
('182.1.176.195', '2020-12-02', 8, '1606942819', '2020-12-02 20:58:47'),
('182.1.162.87', '2020-12-02', 1, '1606942863', '2020-12-02 21:01:03'),
('182.1.178.63', '2020-12-02', 1, '1606942876', '2020-12-02 21:01:16'),
('182.1.160.173', '2020-12-02', 4, '1606944210', '2020-12-02 21:20:14'),
('182.1.160.205', '2020-12-02', 2, '1606944156', '2020-12-02 21:20:21'),
('182.1.161.45', '2020-12-02', 2, '1606944165', '2020-12-02 21:22:41'),
('182.1.178.205', '2020-12-02', 3, '1606944978', '2020-12-02 21:23:00'),
('114.125.171.181', '2020-12-02', 3, '1606946392', '2020-12-02 21:28:03'),
('114.125.171.157', '2020-12-02', 4, '1606946274', '2020-12-02 21:28:15'),
('182.1.178.145', '2020-12-02', 1, '1606945154', '2020-12-02 21:39:14'),
('182.1.176.177', '2020-12-02', 2, '1606945478', '2020-12-02 21:39:19'),
('114.125.165.217', '2020-12-02', 6, '1606946384', '2020-12-02 21:57:07'),
('114.125.183.197', '2020-12-02', 2, '1606946291', '2020-12-02 21:57:38'),
('114.125.170.21', '2020-12-02', 3, '1606946413', '2020-12-02 21:59:12'),
('114.125.181.5', '2020-12-02', 1, '1606946362', '2020-12-02 21:59:22'),
('114.125.170.77', '2020-12-02', 1, '1606946711', '2020-12-02 22:05:11'),
('114.125.210.76', '2020-12-03', 1, '1606974562', '2020-12-03 05:49:22'),
('114.125.210.69', '2020-12-03', 1, '1606974794', '2020-12-03 05:53:14'),
('114.125.210.89', '2020-12-03', 1, '1606974799', '2020-12-03 05:53:19'),
('114.125.210.107', '2020-12-03', 1, '1606975029', '2020-12-03 05:57:09'),
('114.125.210.80', '2020-12-03', 1, '1606975070', '2020-12-03 05:57:50'),
('114.125.210.88', '2020-12-03', 2, '1606975104', '2020-12-03 05:58:17'),
('114.125.210.109', '2020-12-03', 1, '1606975180', '2020-12-03 05:59:40'),
('114.125.210.108', '2020-12-03', 1, '1606977132', '2020-12-03 06:32:12'),
('114.125.210.58', '2020-12-03', 1, '1606977139', '2020-12-03 06:32:19'),
('114.125.210.103', '2020-12-03', 1, '1606978203', '2020-12-03 06:50:03'),
('114.125.210.118', '2020-12-03', 1, '1606978311', '2020-12-03 06:51:51'),
('114.125.210.106', '2020-12-03', 2, '1606981227', '2020-12-03 07:40:20'),
('114.125.210.90', '2020-12-03', 1, '1606981238', '2020-12-03 07:40:38'),
('114.125.210.74', '2020-12-03', 1, '1606981262', '2020-12-03 07:41:02'),
('72.14.199.112', '2020-12-03', 1, '1606981292', '2020-12-03 07:41:32'),
('114.125.210.86', '2020-12-03', 1, '1606981364', '2020-12-03 07:42:44'),
('114.125.210.84', '2020-12-03', 1, '1606981369', '2020-12-03 07:42:49'),
('114.125.210.77', '2020-12-03', 1, '1606981443', '2020-12-03 07:44:03'),
('114.125.183.227', '2020-12-03', 3, '1607000380', '2020-12-03 12:58:58'),
('114.125.170.191', '2020-12-03', 3, '1607000386', '2020-12-03 12:58:59'),
('114.125.186.63', '2020-12-03', 1, '1607000363', '2020-12-03 12:59:23'),
('114.125.171.63', '2020-12-03', 2, '1607000385', '2020-12-03 12:59:41'),
('182.1.162.91', '2020-12-03', 1, '1607003338', '2020-12-03 13:48:58'),
('182.1.163.223', '2020-12-03', 1, '1607003424', '2020-12-03 13:50:24'),
('182.1.179.95', '2020-12-03', 1, '1607003531', '2020-12-03 13:52:11'),
('182.1.176.199', '2020-12-03', 1, '1607003539', '2020-12-03 13:52:19'),
('138.246.253.24', '2020-12-03', 1, '1607022085', '2020-12-03 19:01:25'),
('36.72.216.236', '2020-12-04', 6, '1607050381', '2020-12-04 01:59:15'),
('114.125.210.113', '2020-12-04', 3, '1607064230', '2020-12-04 05:52:28'),
('114.125.210.62', '2020-12-04', 1, '1607061220', '2020-12-04 05:53:40'),
('114.125.210.127', '2020-12-04', 1, '1607061231', '2020-12-04 05:53:51'),
('114.125.210.94', '2020-12-04', 1, '1607061252', '2020-12-04 05:54:12'),
('114.125.210.69', '2020-12-04', 1, '1607062953', '2020-12-04 06:22:33'),
('114.125.210.114', '2020-12-04', 1, '1607062960', '2020-12-04 06:22:40'),
('114.125.210.103', '2020-12-04', 1, '1607064245', '2020-12-04 06:44:05'),
('114.125.210.87', '2020-12-04', 1, '1607066640', '2020-12-04 07:24:00'),
('114.125.210.106', '2020-12-04', 1, '1607066936', '2020-12-04 07:28:56'),
('114.125.184.165', '2020-12-04', 3, '1607090419', '2020-12-04 14:00:00'),
('114.125.169.101', '2020-12-04', 2, '1607093708', '2020-12-04 14:54:49'),
('66.249.79.17', '2020-12-05', 1, '1607166016', '2020-12-05 11:00:16'),
('138.246.253.24', '2020-12-06', 2, '1607252213', '2020-12-06 01:07:44'),
('114.125.210.103', '2020-12-06', 1, '1607227347', '2020-12-06 04:02:27'),
('114.125.210.102', '2020-12-06', 1, '1607227382', '2020-12-06 04:03:02'),
('114.125.210.119', '2020-12-06', 1, '1607229505', '2020-12-06 04:38:25'),
('104.131.186.244', '2020-12-07', 1, '1607312789', '2020-12-07 03:46:29'),
('114.125.210.91', '2020-12-07', 1, '1607317491', '2020-12-07 05:04:51'),
('114.125.210.84', '2020-12-07', 1, '1607317874', '2020-12-07 05:11:14'),
('180.243.28.102', '2020-12-07', 2, '1607319393', '2020-12-07 05:30:00'),
('114.125.210.74', '2020-12-07', 1, '1607320321', '2020-12-07 05:52:01'),
('182.1.161.89', '2020-12-08', 1, '1607392382', '2020-12-08 01:53:02'),
('180.243.28.102', '2020-12-08', 28, '1607413318', '2020-12-08 06:34:43'),
('205.169.39.13', '2020-12-08', 1, '1607417515', '2020-12-08 08:51:55'),
('205.169.39.4', '2020-12-08', 1, '1607417628', '2020-12-08 08:53:48'),
('205.169.39.22', '2020-12-08', 1, '1607417650', '2020-12-08 08:54:10'),
('205.169.39.79', '2020-12-08', 2, '1607417957', '2020-12-08 08:59:07'),
('101.50.1.74', '2020-12-09', 2, '1607492148', '2020-12-09 03:55:17'),
('114.5.221.52', '2020-12-09', 2, '1607494940', '2020-12-09 06:18:38'),
('114.125.151.76', '2020-12-10', 1, '1607579865', '2020-12-10 05:57:45'),
('114.125.157.227', '2020-12-10', 15, '1607580718', '2020-12-10 06:02:24'),
('72.14.199.64', '2020-12-10', 1, '1607580750', '2020-12-10 06:12:30'),
('114.125.210.117', '2020-12-10', 1, '1607644792', '2020-12-10 23:59:52'),
('114.125.210.87', '2020-12-11', 1, '1607644828', '2020-12-11 00:00:28'),
('114.125.210.58', '2020-12-11', 1, '1607644856', '2020-12-11 00:00:56'),
('180.243.28.102', '2020-12-11', 1, '1607650967', '2020-12-11 01:42:47'),
('138.246.253.24', '2020-12-11', 1, '1607681101', '2020-12-11 10:05:01'),
('138.246.253.24', '2020-12-12', 2, '1607812923', '2020-12-12 01:15:00'),
('54.155.141.15', '2020-12-17', 1, '1608207505', '2020-12-17 12:18:25'),
('138.246.253.24', '2020-12-18', 1, '1608311910', '2020-12-18 17:18:30'),
('138.246.253.24', '2020-12-20', 2, '1608446596', '2020-12-20 01:20:28'),
('34.82.142.44', '2020-12-20', 1, '1608477843', '2020-12-20 15:24:03'),
('34.83.246.181', '2020-12-20', 2, '1608477845', '2020-12-20 15:24:04'),
('35.227.179.184', '2020-12-20', 1, '1608477844', '2020-12-20 15:24:04'),
('191.96.241.207', '2020-12-21', 1, '1608509158', '2020-12-21 00:05:58'),
('157.90.17.134', '2020-12-23', 1, '1608752145', '2020-12-23 19:35:45'),
('138.246.253.24', '2020-12-24', 1, '1608831705', '2020-12-24 17:41:45'),
('138.246.253.24', '2020-12-25', 2, '1608886822', '2020-12-25 04:09:33'),
('209.17.96.194', '2020-12-25', 1, '1608904174', '2020-12-25 13:49:34'),
('44.242.175.72', '2020-12-25', 1, '1608937464', '2020-12-25 23:04:24'),
('213.32.83.105', '2020-12-29', 1, '1609242839', '2020-12-29 11:53:59'),
('209.17.96.210', '2020-12-31', 1, '1609411142', '2020-12-31 10:39:02'),
('138.246.253.24', '2020-12-31', 2, '1609453558', '2020-12-31 16:29:13'),
('138.246.253.24', '2021-01-01', 1, '1609493133', '2021-01-01 09:25:33'),
('103.27.207.18', '2021-01-02', 1, '1609545800', '2021-01-02 00:03:20'),
('209.17.96.234', '2021-01-02', 1, '1609562879', '2021-01-02 04:47:59'),
('64.246.165.160', '2021-01-03', 1, '1609644579', '2021-01-03 03:29:39'),
('38.131.155.154', '2021-01-03', 1, '1609713390', '2021-01-03 22:36:30'),
('54.203.73.198', '2021-01-05', 1, '1609821987', '2021-01-05 04:46:27'),
('161.35.132.19', '2021-01-06', 1, '1609923871', '2021-01-06 09:04:31'),
('209.17.96.178', '2021-01-06', 1, '1609927155', '2021-01-06 09:59:15'),
('209.17.96.210', '2021-01-06', 1, '1609947127', '2021-01-06 15:32:07'),
('209.17.97.18', '2021-01-07', 1, '1610009211', '2021-01-07 08:46:51'),
('209.17.97.122', '2021-01-07', 1, '1610010535', '2021-01-07 09:08:55'),
('138.246.253.24', '2021-01-07', 1, '1610024119', '2021-01-07 12:55:19'),
('209.17.96.50', '2021-01-08', 1, '1610110821', '2021-01-08 13:00:21'),
('209.17.96.90', '2021-01-08', 1, '1610121044', '2021-01-08 15:50:44'),
('51.158.98.24', '2021-01-08', 1, '1610131994', '2021-01-08 18:53:14'),
('51.158.66.83', '2021-01-08', 1, '1610143360', '2021-01-08 22:02:40'),
('209.17.96.2', '2021-01-09', 1, '1610190570', '2021-01-09 11:09:30'),
('209.17.96.122', '2021-01-09', 1, '1610198840', '2021-01-09 13:27:20'),
('138.246.253.24', '2021-01-09', 1, '1610206513', '2021-01-09 15:35:13'),
('51.158.127.119', '2021-01-10', 1, '1610249691', '2021-01-10 03:34:51'),
('209.17.96.154', '2021-01-10', 1, '1610271931', '2021-01-10 09:45:31'),
('209.17.96.210', '2021-01-10', 1, '1610274415', '2021-01-10 10:26:55'),
('138.246.253.24', '2021-01-10', 1, '1610300979', '2021-01-10 17:49:39'),
('23.228.109.146', '2021-01-11', 1, '1610342404', '2021-01-11 05:20:04'),
('23.228.109.146', '2021-01-11', 1, '1610342404', '2021-01-11 05:20:04'),
('209.17.96.218', '2021-01-11', 1, '1610356890', '2021-01-11 09:21:30'),
('85.203.44.36', '2021-01-11', 3, '1610380425', '2021-01-11 15:53:43'),
('209.17.96.18', '2021-01-12', 1, '1610410217', '2021-01-12 00:10:17'),
('85.203.44.36', '2021-01-12', 3, '1610412904', '2021-01-12 00:55:03'),
('206.189.150.49', '2021-01-12', 2, '1610425308', '2021-01-12 04:21:41'),
('45.87.212.56', '2021-01-12', 3, '1610438331', '2021-01-12 07:58:50'),
('51.158.127.119', '2021-01-12', 1, '1610480224', '2021-01-12 19:37:04'),
('51.15.205.3', '2021-01-14', 1, '1610590509', '2021-01-14 02:15:09'),
('51.158.109.3', '2021-01-14', 1, '1610604374', '2021-01-14 06:06:14'),
('138.246.253.24', '2021-01-14', 1, '1610610864', '2021-01-14 07:54:24'),
('209.17.96.26', '2021-01-14', 1, '1610631195', '2021-01-14 13:33:15'),
('209.17.97.42', '2021-01-14', 1, '1610631424', '2021-01-14 13:37:04'),
('209.17.96.82', '2021-01-14', 1, '1610633172', '2021-01-14 14:06:12'),
('209.17.96.146', '2021-01-14', 1, '1610637049', '2021-01-14 15:10:49'),
('84.17.52.41', '2021-01-14', 3, '1610653515', '2021-01-14 19:45:13'),
('138.246.253.24', '2021-01-15', 1, '1610694941', '2021-01-15 07:15:41'),
('209.17.97.18', '2021-01-15', 1, '1610729257', '2021-01-15 16:47:37'),
('209.17.97.90', '2021-01-16', 1, '1610783741', '2021-01-16 07:55:41'),
('138.246.253.24', '2021-01-16', 1, '1610795238', '2021-01-16 11:07:18'),
('209.17.96.170', '2021-01-16', 1, '1610799681', '2021-01-16 12:21:21'),
('167.114.252.180', '2021-01-17', 1, '1610841647', '2021-01-17 00:00:47'),
('209.17.96.26', '2021-01-19', 1, '1611055367', '2021-01-19 11:22:47'),
('209.17.96.146', '2021-01-20', 1, '1611157003', '2021-01-20 15:36:43'),
('209.17.96.106', '2021-01-20', 1, '1611160773', '2021-01-20 16:39:33'),
('209.17.96.90', '2021-01-21', 1, '1611215880', '2021-01-21 07:58:00'),
('209.17.97.58', '2021-01-21', 1, '1611234787', '2021-01-21 13:13:07'),
('209.17.97.50', '2021-01-24', 1, '1611479959', '2021-01-24 09:19:19'),
('209.17.97.122', '2021-01-24', 1, '1611484013', '2021-01-24 10:26:53'),
('54.189.8.70', '2021-01-26', 1, '1611635379', '2021-01-26 04:29:39'),
('66.220.149.39', '2021-01-26', 1, '1611686441', '2021-01-26 18:40:41'),
('216.145.5.42', '2021-01-27', 1, '1611735550', '2021-01-27 08:19:10'),
('209.17.96.178', '2021-01-28', 1, '1611818871', '2021-01-28 07:27:51'),
('129.213.31.250', '2021-01-29', 2, '1611907597', '2021-01-29 05:25:46'),
('164.90.136.0', '2021-01-29', 1, '1611920755', '2021-01-29 11:45:55'),
('202.80.219.202', '2021-01-31', 2, '1612064888', '2021-01-31 03:32:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_article`
--
ALTER TABLE `tb_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `tb_article_category`
--
ALTER TABLE `tb_article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_sekolah` (`id_sekolah`),
  ADD KEY `id_sekolah_2` (`id_sekolah`),
  ADD KEY `id_sekolah_3` (`id_sekolah`);

--
-- Indeks untuk tabel `tb_direktori_alumni`
--
ALTER TABLE `tb_direktori_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_direktori_guru_staf`
--
ALTER TABLE `tb_direktori_guru_staf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_galeri_kategori`
--
ALTER TABLE `tb_galeri_kategori`
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
-- Indeks untuk tabel `tb_link`
--
ALTER TABLE `tb_link`
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
  ADD KEY `id` (`id`);

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_article`
--
ALTER TABLE `tb_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_article_category`
--
ALTER TABLE `tb_article_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_direktori_alumni`
--
ALTER TABLE `tb_direktori_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_direktori_guru_staf`
--
ALTER TABLE `tb_direktori_guru_staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_galeri_kategori`
--
ALTER TABLE `tb_galeri_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_home`
--
ALTER TABLE `tb_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_konten`
--
ALTER TABLE `tb_konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_link`
--
ALTER TABLE `tb_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_member_kategori`
--
ALTER TABLE `tb_member_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_saran_buku`
--
ALTER TABLE `tb_saran_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_tokens`
--
ALTER TABLE `tb_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT untuk tabel `tb_video_kategori`
--
ALTER TABLE `tb_video_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`id_sekolah`) REFERENCES `tb_sekolah` (`id`);

--
-- Ketidakleluasaan untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  ADD CONSTRAINT `video_kategori` FOREIGN KEY (`video_kategori`) REFERENCES `tb_video_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
