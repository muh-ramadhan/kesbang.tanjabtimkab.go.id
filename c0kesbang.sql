-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2019 at 07:15 PM
-- Server version: 5.5.55
-- PHP Version: 5.6.39-1~dotdeb+7.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c0kesbang`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `keterangan`, `gbr_album`, `dibaca`, `tanggal`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(1, 'Audiensi DPD PDI-P Provinsi Jambi ke KPU Provinsi Jambi', '<p>Audiensi DPD PDI-P Provinsi Jambi ke KPU Provinsi Jambi</p>', '', 505, '2015-06-02', 'Y', 1, '2015-06-02', '23:08:37', 'Selasa', ''),
(2, 'Kunjungan Kerja Komisi I DPRD Bungo ke KPU Provinsi Jambi  ', '<p>Kunjungan Kerja Komisi I DPRD Bungo ke KPU Provinsi Jambi &nbsp;</p>', '', 544, '2015-06-02', 'Y', 1, '2015-06-02', '23:08:55', 'Selasa', ''),
(3, 'KPU Provinsi Jambi Gelar Doa Bersama Launching Pilkada Serentak', '<p>KPU Provinsi Jambi Gelar Doa Bersama Launching Pilkada Serentak</p>', '', 827, '2015-06-06', 'Y', 1, '2015-06-10', '13:48:46', 'Rabu', ''),
(4, 'KPU Provinsi Jambi Launching Pilkada Serentak Tahun 2015', '<p>KPU Provinsi Jambi Launching Pilkada Serentak Tahun 2015</p>', '', 1183, '2015-06-08', 'Y', 1, '2015-06-10', '13:49:45', 'Rabu', ''),
(5, 'Maskot Pemilihan Serentak Provinsi Jambi Tahun 2015', '<p>Maskot yang digunakan KPU Provinsi Jambi dan KPU Kab/Kota dalam Provinsi Jambi dalam pelaksanaan Pemilihan Serentak Provinsi Jambi Tahun 2015.</p>', '18mang KORO.png', 1501, '2015-06-08', 'Y', 1, '2015-06-16', '14:55:05', 'Selasa', 'admin'),
(6, 'Kunjungan Kapolda ke KPU Provinsi Jambi', '<p>Kunjungan Kapolda ke KPU Provinsi Jambi</p>', '', 1262, '2015-06-26', 'Y', 1, '2015-06-30', '11:53:23', 'Selasa', ''),
(7, 'Pendaftaran Pasangan Calon Gubernur Zumi Zola dan Wakil Gubernur Fachrori Umar', '', '', 507, '2015-07-27', 'N', 1, '2015-07-27', '13:09:06', 'Senin', ''),
(13, 'Rapat Pleno Terbuka Pengundian Nomor Urut Pasangan Calon', '<p style="text-align: justify;" align="center">Rapat Pleno Terbuka Pengundian Nomor Urut Pasangan Calon</p>', '57peserta-yang-hadir-dalam-Pengundian-Nomor-Urut-Pasangan-Calon.jpg', 1171, '2015-08-25', 'Y', 1, '2015-09-14', '11:51:12', 'Senin', ''),
(14, 'Deklarasi Kampanye Damai peserta Pemilihan Gubernur dan Wakil Gubernur Jambi Tahun 2015 ', '<p style="text-align: justify;" align="center">Deklarasi Kampanye Damai peserta Pemilihan Gubernur dan Wakil Gubernur Jambi Pemilihan Serentak Tahun 2015&nbsp;</p>', '42Deklarasi-Kampanye-Damai-peserta-Pemilihan-Gubernur-dan-Wakil-Gubernur-Jambi.jpg', 1082, '2015-08-27', 'Y', 1, '2015-09-14', '12:42:19', 'Senin', ''),
(15, 'Rekor Persiapan Debat Publik', '<p>Rapat&nbsp;Rekor Persiapan Debat Publik</p>', '691.jpg', 1147, '0015-09-22', 'Y', 1, '2015-10-07', '11:39:06', 'Rabu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE IF NOT EXISTS `aplikasi` (
  `id_aplikasi` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_aplikasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id_aplikasi`, `nama`, `keterangan`, `aktif`, `css`, `tanggal`, `tanggal_modif`, `icon`, `gambar`, `username`) VALUES
(1, 'Sistem Informasi Penduduk Miskin', 'Sistem Informasi Penduduk Miskin Kab. Tanjung Jabung Timur', 'Y', 'phone', '2017-08-06', '2017-08-06', 'email.png', 'email.jpg', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `id_subkategori` int(2) NOT NULL,
  `id_subdomain` int(2) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kutipan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `headline_utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `pilihan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kredit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `isi_artikel` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_kategori`, `id_subkategori`, `id_subdomain`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_artikel`) VALUES
(10, 0, 0, 0, 'operator', 'Kegiatan Jumat Bersih di Kantor Badan Kesbangpol Tanjabtim', '', '', '', 'kegiatan-jumat-bersih-di-kantor-badan-kesbangpol-tanjabtim', 'Y', 'Y', 'Y', '', '', '', 'Restika', '', '', '', 'Kamis', '2019-07-08', '2019-07-08', '14:14:54', '3420190705_085859.jpg', 1, '', 0, '<p>Pada hari Jumat (5/7) Para Pegawai beserta PHTT melaksanakan kegiatan jumat bersih atau gotong royong, yang bertujuan untuk menjaga kebersihan lingkungan kantor. Hal ini merupakan kebijakan yang dibuat Kepala Badan Kesbangpol, Abdul Rasid. Selain menjaga kebersihan, tujuan dari gotong royong ini adalah untuk menjalin kebersamaan, kekompakan, sukarela serta kekeluargaan di Badan Kesbangpol Tanjabtim.</p>\r\n<p>Biasanya kegiatan ini dihimbau saat satu hari sebelum kegiatan dilaksanakan yaitu pada hari kamis (4/7), dengan tujuan agar para Pegawai dan PHTT dapat mempersiapkan kebutuhan untuk gotong royong, seperti alat yang akan digunakan gotong royong dan bahkan pakaian yang nyaman agar tidak menganggu aktivitas saat gotong royong.</p>\r\n<p>Apalagi hal ini dilakukan untuk mempersiapkan Lomba Perilaku Hidup Bersih dan Sehat (PHBS) 2019, sebelumnya Badan Kesatuan Bangsa dan Politik (Kesbangpol) telah mendapatkan juara umum Lomba (PHBS) Tahun 2018. </p>\r\n<p>Mungkin mudah untuk meraih kemenangan, tetapi cukup sulit untuk mempertahankan apa yang sudah diraih.</p>\r\n<p> </p>'),
(11, 0, 0, 0, 'operator', 'Negara Pancasilais', '', '', '', 'negara-pancasilais', 'Y', 'Y', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-07-08', '2019-07-08', '14:53:28', '57perludibuatkerangkaacuandesaberkarakterpancasila.jpg', 1, '', 0, '<p>Kita sering mendengar istilah Indonesia sebagai “Negara Pancasila”, yaitu negara yang berdasarkan Pancasila. <br>Selanjutnya, istilah pancasilais digunakan untuk menandai tokoh yang perilaku dan kinerjanya sesuai dengan Pancasila. Dengan demikian, apakah istilah negara pancasilais lalu tidak tepat?<br>Menurut saya, istilah itu tidak salah. Yang pancasilais bukan hanya perseorangan, melainkan juga organisasi, termasuk negara.<br>Negara pancasilais adalah negara yang menunjukkan prinsip Pancasila dalam kebijakannya.</p>\r\n<p><br>Negara berketuhanan<br>Sila pertama adalah perpaduan antara keislaman dan keindonesiaan. Banyak negara di Timur Tengah belum bisa menyelesaikan hubungan keislaman dengan kebangsaan.<br>Berdirinya Kementerian Agama (Januari 1946) adalah proses memadukan keindonesiaan dan keislaman itu.<br>UUD dan UU terkait sila pertama, boleh dibilang mendekati predikat negara pancasilais. Itu tercapai melalui proses panjang dan sulit.<br>Banyak dari kita sudah lupa akan proses terwujudnya UU No 1/1974 tentang perkawinan, UU pertama yang memberi akomodasi terhadap hukum Islam yang khusus (partikular). Proses persidangan membahas RUU Perkawinan terhenti karena pemuda dari banyak ormas Islam menyerbu ke dalam Ruang Sidang DPR. Mereka meminta hukum Islam diakomodasi dalam UU Perkawinan. <br>Sebaliknya kalangan non-Islam mendukung RUU tersebut karena khawatir RI akan menjadi negara Islam kalau hukum Islam yang bersifat khusus masuk UU.<br>RUU akhirnya bisa diubah dan menjadi UU pertama yang memberi akomodasi terhadap hukum Islam yang khusus, bukan yang bersifat universal. Ternyata UU Perkawinan menjamin berjalannya pernikahan sesuai hukum agama masing-masing  dan sesuai hukum negara.<br>Memang masih ada masalah terkait UU itu, yaitu adanya praktik nikah siri yang merugikan pihak perempuan dan pernikahan antaragama.<br>Selanjutnya muncul masalah serupa saat pembahasan RUU Peradilan Agama sebagai penerapan UU Pokok Kehakiman. <br>Mereka yang menolak menginginkan sistem hukum nasional yang berlaku untuk semua warga negara tanpa melihat suku, etnis, dan agama. Akhirnya UU itu disahkan DPR pada 1989. Selanjutnya disahkan sejumlah UU bernuansa Islam, seperti UU Perbankan Syariah, UU Wakaf, UU Haji, dan UU Zakat.<br>Euforia era Reformasi memunculkan perda syariah yang memicu masalah. Sejumlah peraturan bersama menteri terkait keagamaan juga bermasalah. Kalau dalam UUD, UU dan peraturan di bawahnya sudah tidak banyak masalah lagi, dalam pelaksanaan di lapangan  tidak demikian. Di banyak tempat, pembangunan rumah ibadah masih sering menghadapi kesulitan. </p>\r\n<p><br>Negara berkemanusiaan<br>HAM warga negara dijamin dalam Pasal 28 UUD hasil amandemen, antara lain hak untuk hidup, hak untuk memperoleh layanan kesehatan dan pendidikan, hak untuk berserikat dan menyatakan pendapat, hak untuk memeluk agama dan beribadat menurut agama dan kepercayaannya, hak untuk hidup sejahtera, hak untuk perlakuan yang sama di hadapan hukum, serta hak memperoleh perlindungan.<br>Hak yang dijamin UUD sebagian sudah dipenuhi tetapi sebagian lagi belum. Hak untuk memperoleh pelayanan kesehatan dimulai pada 2014. Wajar kalau masih banyak keluhan tentang kekurangan dalam pelayanan kesehatan itu. Menurut World Nutrition Report 2014, banyak rakyat yang bergizi buruk.<br>Hak untuk memperoleh pelayanan pendidikan dasar dan menengah yang bermutu belum sepenuhnya bisa dipenuhi.<br>Lama masa belajar nasional, jumlah sekolah dasar yang belum memadai, dan guru yang belum mendapat pelatihan dan belum sejahtera menjadi faktornya. Hak untuk memperoleh perlakuan yang sama di hadapan hukum belum bisa dinikmati rakyat secara umum.<br>Hukum kalah oleh kekuasaan, kalah oleh uang dan kalah oleh tekanan massa. Hukum tajam ke bawah dan tumpul ke atas.<br>Rakyat belum memperoleh perlindungan terhadap obat-obatan palsu dan jamu palsu. Para seniman tidak mendapat perlindungan bagi hak cipta atas karya mereka.</p>\r\n<p><br>Persatuan Indonesia<br>Kita mengalami banyak tantangan dan gangguan terhadap persatuan Indonesia. Dari PRRI dan Permesta, DI/TII, PKI, hingga GAM dan OPM.<br>Pemerintah Orde Baru lebih mengutamakan pendekatan keamanan dalam upaya menjaga persatuan Indonesia sehingga banyak terjadi pelanggaran HAM. Kelompok separatis yang muncul pasca Orde Baru adalah kelompok Islam yang sebagian menggunakan strategi terorisme, menjadikan warga sipil dan polisi sebagai sasaran. Mereka adalah Muslimin yang tidak memahami ajaran Islam ataupun sejarah Indonesia dengan benar.<br>Kelompok Islam lain adalah mereka yang memperjuangkan negara berdasar Islam dan khilafah Islamiyah. <br>Menurut mereka, Pancasila gagal mewujudkan cita-cita proklamasi. Pemahaman yang salah ini diikuti banyak orang, termasuk dosen universitas negeri non-IAIN/UIN.</p>\r\n<p>Hikmat kebijaksanaan<br>Rumusan di atas ideal, tetapi sering disalahgunakan. Sejarah menunjukkan bahwa Bung Karno pernah membubarkan DPR dan mengangkat anggota DPRGR dan MPRS,  yang membuat lembaga itu tunduk kepada BK.<br>Pada era Soeharto, DPR juga dikendalikan Soeharto melalui Fraksi ABRI dan FKP.<br>Demokrasi yang kita jalankan saat ini menurut saya tidak dipimpin oleh hikmat kebijaksanaan permusyawaratan dalam perwakilan.<br>Demokrasi kita saat ini lebih ditentukan oleh kekuatan dana, dari memilih ketua umum partai hingga ketua tingkat provinsi/kabupaten.<br>Sistem pemilihan langsung untuk pilpres dan pilkada membawa banyak masalah ke dalam kehidupan politik kita dan banyak yang menafsirkan sistem itu tidak sesuai dengan sila keempat dari Pancasila.<br>Walau demikian, sistem itu bisa memunculkan para pemimpin daerah yang berprestasi amat baik. Pilpres secara langsung sejauh ini belum menghasilkan presiden yang berkinerja amat baik, tetapi juga bukan presiden yang buruk.</p>\r\n<p><br>Keadilan sosial<br>Walau urutan terakhir, sila keadilan sosial adalah sila terpenting karena akan membantu terwujudnya sila lainnya. Namun, keadilan sosial selama ini terabaikan. Gini ratio kita yang pada tahun 2000 masih pada angka 30-an, kini sudah 41.<br>Standar angka kemiskinan rakyat yang dipakai BPS bukan standar Bank Dunia. Apabila menggunakan standar Bank Dunia, jumlah angka kemiskinan kita mendekati 50 persen, bukan 12 persen seperti kata pemerintah.<br>Kemiskinan yang diderita begitu banyak penduduk Indonesia itu disebut kemiskinan struktural.<br>Ini istilah dari Sritua Arief dan Adi Sasono tahun 1980-an, yang timbul akibat kebijakan negara yang salah arah. Setelah 30 tahun kemiskinan struktural ternyata masih bertahan. Kebijakan ekonomi kita perlu transformasi struktural, berupa kebijakan negara dalam perekonomian yang bisa mewujudkan keadilan. Program reformasi agraria yang digaungkan sejak 2007 belum menjadi kenyataan.<br>Penutup.</p>\r\n<p><br>Untuk sila pertama, menurut saya, sudah cukup baik. Untuk sila kedua, yang sudah cukup baik adalah dalam pelayanan kesehatan walaupun dengan catatan perlu kerja keras untuk memperbaiki yang dikritik.<br>Untuk sila ketiga, sudah cukup baik walau dibandingkan beberapa puluh tahun lalu terjadi penurunan.<br>Untuk sila keempat belum bisa dikatakan baik. Sila kelima bisa dikatakan yang paling jelek.<br>Jadi, RI sudah pancasilais atau belum? Saya teringat pada hasil penelitian Rehman dan Askari dari The George Washington University (2010) yang menilai sejauh mana keislaman negara  Islam atau negara yang mayoritas penduduknya Muslim.<br>Ternyata dari 208 negara, peringkat pertama adalah Selandia Baru, lalu Luksemburg dan Irlandia.<br>Negara bernuansa Islam yang tertinggi peringkatnya adalah Malaysia (38), lalu Kuwait (48), dan Bahrain (64). Turki pada urutan ke-103,  Arab Saudi (131) dan Indonesia (140).<br>Sejalan dengan kesimpulan penelitian di atas, negara Pancasila belum tentu paling pancasilais. Artinya, banyak negara yang lebih sesuai nilai-nilai Pancasila walaupun negara itu tidak berdasarkan Pancasila.</p>\r\n<p> </p>\r\n<p><em><sub>Dikutip: polpum.kemendagri.go.id</sub></em></p>\r\n<p><em><sub>Sumber: kompas.com</sub></em></p>'),
(12, 0, 0, 0, 'operator', 'Badan Kesbangpol Melakukan Persiapan Lomba PHBS 2019', '', '', '', 'badan-kesbangpol-melakukan-persiapan-lomba-phbs-2019', 'Y', 'Y', 'N', '', '', '', '', '', '', '', 'Rabu', '2019-07-24', '2019-07-24', '11:14:10', '', 1, '', 0, ''),
(17, 0, 0, 0, 'operator', 'Pergaulan dan Penerapan Kata Terima Kasih, Tolong, dan Maaf', '', '', '', 'pergaulan-dan-penerapan-kata-terima-kasih-tolong-dan-maaf', 'Y', 'Y', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-09-10', '2019-09-10', '16:33:49', '26cartoonbusinessmenshakinghandsvector1743577.jpg', 1, '', 0, '<p>Sebagai makhluk sosial yang membutuhkan hubungan timbal balik dari sesama manusia lainnya, kita tentunya tak bisa lepas dari yang namanya pergaulan. Namun yang menjadi persoalan ialah bagaimana pergaulan itu berjalan dengan gerakan-gerakan positif. Bukan hanya sekadar kumpul-kumpul mencari kesenangan dan menghabiskan waktu secara percuma tanpa ada hal baik yang dihasilkan.</p>\r\n<p>Tentu amat disayangkan jika waktu terbuang sia-sia, padahal di situ kita dapat memanfaatkannya dengan melakukan hal-hal lain yang dapat mengembangkan potensi diri. Jika kumpul-kumpul di sini hanya sekadarnya saja bukanlah menjadi masalah, namun apabila sudah menjadi kebiasaan dan bahkan ada sesuatu yang negatif disisipkan di dalamnya tentu sangat merugikan.</p>\r\n<p>Sering kita dengar banyak permasalahan yang muncul karena berawal dari salahnya pergaulan, misalnya; aborsi, peredaran narkoba, seks bebas, dan lain sebagainya. Dan yang menjadikan kita miris sekaligus prihatin adalah banyaknya para kawula muda yang terlibat dalam kasus-kasus tersebut. </p>\r\n<p>Jika hal ini tidak mendapatkan perhatian yang serius dan pergaulan yang salah ini berkembang secara terus-menerus, maka bagaimana keadaan kemajuan bangsa ini akan tercapai. Dari sini kita bisa pahami bahwa peran para orang tua, guru, dan siapa saja yang bertanggung jawab pada perkembangan dunia anak sangat vital dan dibutuhkan.</p>\r\n<p>Adab dan akhlak hendaknya sedini mungkin kita ajarkan pada anak-anak kita, kita bisa memulai dengan menanamkan penerapan tiga kata berikut ini:</p>\r\n<p>1. Kata <em>terima kasih</em> jika ada orang yang berbuat baik padanya</p>\r\n<p>2. Kata <em>tolong</em> apabila ia ingin meminta bantuan kepada orang lain, dan</p>\r\n<p>3. Kata <em>maaf</em> apabila ia melakukan kesalahan</p>\r\n<p>Jika ketiga kata tersebut sudah mulai dipraktikkan sejak kecil, maka si anak akan lebih terbiasa menerapkannya di kehidupan sehari-hari, sehingga si anak dapat bersikap lebih menghargai orang lain, lebih sopan, dan bisa jadi lebih peka dengan keadaan sekitarnya dibandingkan dengan anak-anak lain yang tidak diajarkan adab dan akhlak dengan baik.</p>\r\n<p><sub><em>Opini: Jihan Syehrar // Sumber: idntimes.com</em></sub></p>'),
(14, 0, 0, 0, 'operator', 'RASISME DAN RASIALISME ITU BEDANYA APA SIH?', '', '', '', 'rasisme-dan-rasialisme-itu-bedanya-apa-sih', 'Y', 'Y', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-09-10', '2019-09-10', '15:24:10', '', 1, '', 0, '<p><em>Rasisme adalah sesuatu yang tidak rasional, sedangkan rasialisme merupakan sesuatu yang rasional dan netral. Baru tahu, kan?</em></p>\r\n<p>Wikipedia membuat dua halaman berbeda untuk dua buah kata yang terdengar mirip: <em>rasialisme </em>dan <em>rasisme. </em>Seorang teman bertanya, apakah keduanya memang punya makna yang sama karena, kalau iya, kenapa harus dibuat dalam dua halaman berbeda?</p>\r\n<p>Rasialisme dijelaskan sebagai suatu penekanan pada ras atau pertimbangan rasial, sedangkan rasisme adalah suatu sistem kepercayaan atau doktrin yang menyatakan bahwa perbedaan biologis yang melekat pada ras manusia menentukan pencapaian budaya atau individu; bahwa suatu ras tertentu lebih superior dan memiliki hak untuk mengatur ras yang lainnya.</p>\r\n<p>Masih nggak bisa melihat beda keduanya? Tenang saja, Wikipedia juga menulis kalimat ini di bawah keterangan soal rasialisme, kok:</p>\r\n<p><em>“Walaupun istilah ini kadang digunakan sebagai kontras dari rasisme, istilah ini dapat juga digunakan sebagai sinonim rasisme.”</em></p>\r\n<p>Pernyataan ini mengingatkan saya pada sebuah artikel yang diterbitkan di <em>Huffpost.co </em>perihal dua fenomena unik. Sebuah jajak pendapat di The Wall Street Journal (WSJ) yang pernah dilakukan setelah kasus pembunuhan oleh polisi terhadap seorang pria kulit hitam tak bersenjata menunjukkan angka 35% orang kulit hitam dan 40% orang kulit putih yang meyakini bahwa hubungan antarras masih terbilang cukup baik. Angka ini sudah mengalami penurunan dari <em>polling </em>sebelumnya (66% orang kulit hitam merasa hubungan antarras di sana tergolong baik).</p>\r\n<p>Meski dalam jajak pendapat WSJ tadi terdapat 60% orang kulit putih lainnya yang tidak sepakat pada hubungan antarras yang baik (<em>dan sering kita nilai sebagai “rasis”</em>), sebuah survei menunjukkan bahwa mereka menyukai kesetaraan ras, bahkan dalam bidang yang intim sekalipun. Faktanya, 85% orang kulit putih mendukung pernikahan campuran, yaitu antar orang kulit hitam dan putih.</p>\r\n<p>Fenomena di atas sebenarnya melibatkan dua istilah yang sedang kita bahas sejak awal: rasisme dan rasialisme. Kedua kata ini, harus diakui, memiliki perbedaan, tapi sering kali menimbulkan kebingungan.</p>\r\n<p><strong>Apa Sebenarnya Rasisme Itu, Apa Sebenarnya Rasialisme Itu</strong></p>\r\n<section class="cb-entry-content clearfix">\r\n<p>Dalam contoh kasus di atas, apa yang disebut sebagai <em>rasisme </em>adalah wujud permusuhan terhadap orang kulit hitam, yang mengakibatkan golongannya kerap diserang tanpa alasan hanya semata-mata dengan anggapan inferioritas. Sementara itu, apa yang disebut sebagai <em>rasialisme </em>adalah kesadaran tinggi terhadap ras orang lain yang berbeda.</p>\r\n<p>Rasisme adalah sesuatu yang tidak rasional dan sering kali bersifat <em><a href="https://mojok.co/auk/ulasan/pojokan/toxic-relationship-awas-terjebak-manipulasi-pacar/">toxic</a>, </em>sedangkan rasialisme merupakan sesuatu yang rasional, netral secara moral, dan menjadi bagian tak terhindarkan dalam masyarakat, mengingat adanya sejarah perbudakan, diskriminasi, ataupun status sosial—dalam hal ini misalnya pada hubungan orang kulit putih dan hitam.</p>\r\n<p>Beda? Tentu saja. Tapi, meski tak sama, kedua istilah ini memang sering dikacaukan dan disebut sebagai sesuatu yang bisa saling menggantikan, sebagaimana yang ditulis oleh banyak kamus. Pada KBBI, misalnya, kalau kamu mengetikkan kata <em>rasialisme </em>di kolom pencarian, definisi yang keluar adalah:</p>\r\n<p><em>1) prasangka berdasarkan keturunan bangsa; perlakuan yang berat sebelah terhadap (suku) bangsa yang berbeda-beda</em></p>\r\n<p><em>2) paham bahwa ras diri sendiri adalah ras yang paling unggul; rasisme</em></p>\r\n<p>Perhatikan definisi kedua: Kamu bahkan menemukan kata <em>rasisme </em>di sana. Lalu, apakah kata <em>rasisme </em>punya definisi khusus? Jawabannya: tidak. Di KBBI, kalau kamu mencari kata <em>rasisme, </em>hasil yang keluar hanya sebuah kata lainnya: <em>rasialisme.</em></p>\r\n<p>Hal yang sama juga bakal kamu temukan di Cambridge Dictionary. Kata <em>racism </em>ditulis dengan definisi:</p>\r\n<p><em>“The belief that people’s qualities are influenced by their race and that the members of other races are not as good as the members of your own, or the resulting unfair treatment of members of other races.”</em></p>\r\n<p>Sementara itu, tidak ada keterangan khusus untuk kata <em>racialism. </em>Malah, dalam entri kata <em>racism </em>tadi, disebutkan bahwa kata <em>racism </em>adalah serupa kata <em>racialism, </em>sebuah istilah “old-fashioned” dalam bahasa Inggris di UK.</p>\r\n<h4>Rasisme dan Eufemisme Rasial</h4>\r\n<p>Apa yang mendasari “persamaan” antara kata <em>rasisme </em>dan <em>rasialisme </em>ini, saya juga nggak tahu. Saya tempe. Hehe. Namun, agaknya, seperti dilansir dari CNN, hal ini ada hubungannya dengan “cara ngata-ngatain rasis dengan cara lebih sopan” atau “eufemisme rasial”.</p>\r\n<p>Menurut KBBI, eufemisme memiliki makna sebagai ungkapan yang lebih halus sebagai pengganti ungkapan yang dirasakan kasar, merugikan, atau tidak menyenangkan.</p>\r\n<p>Gimana maksudnya?</p>\r\n<p>Beberapa orang tidak menyebut Donald Trump sebagai orang yang rasis, melainkan memberinya julukan “orang dengan kecemasan rasial” atau “orang dengan kebencian rasial”. Jika ada seorang politikus menjatuhkan lawannya yang berbeda ras dengannya (misalnya orang kulit putih terhadap orang kulit hitam), ia mungkin tidak akan secara langsung disebut rasis, melainkan “orang yang memberikan tuduhan rasial”.</p>\r\n<p>Lama-kelamaan, eufemisme rasial ini kian membantu mengaburkan makna kata <em>rasisme </em>dan <em>rasialisme</em>. John Simpson, editor Oxford English Dictionary Online juga mendukung pernyataan ini: “They didn’t start out that way, but they are now considered one in the same.”</p>\r\n<p><sub>Oleh: Aprilia Kumala // Sumber: Mojok.co</sub></p>\r\n<p> </p>\r\n</section>');

-- --------------------------------------------------------

--
-- Table structure for table `aspirasi`
--

CREATE TABLE IF NOT EXISTS `aspirasi` (
  `id_aspirasi` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaadu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembaga` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_aspirasi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY (`id_aspirasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `aspirasi`
--

INSERT INTO `aspirasi` (`id_aspirasi`, `nama`, `email`, `alamat`, `namaadu`, `lembaga`, `judul_aspirasi`, `pesan`, `ip`, `tanggal`, `jam`) VALUES
(6, 'Angga Pratama', 'jangkrik@gmail.com', 'Pemayung RT. 12', 'Pedagang', 'Mohon Perbaiki Akses Jalan', '', 'Kepada Anggota Dewan yang terhormat mohon anggarkan untuk perbaikan jalan di tempat kami, sangat susah untuk akses keluar, karena jalan berlumpur, sebagai pedangan kami sangat dirugikan. terima kasih', '202.67.42.8', '2013-12-18', '15:26:42'),
(5, 'Joni Trimulya', 'joni.trumanbe@gmail.com', 'Kec. Muara Bulian', 'Buruh', 'Jalan Rusak', '', 'Mohon Pak Dewan Sidak jalan-jalan yang rusak akibat kegiatan truk batu bara sangat-sangat mengganggu aktivitas warga. Terima Kasih', '202.67.42.8', '2013-12-18', '15:19:29'),
(7, 'Novan Suseno', 'novan.suseno@yahoo.com', 'Jembatan Mas, Rt.02', 'Pelajar', 'Jangan Asal Janji', '', 'Mohon kepada anggota dewan Kab. Batanghari yang terhormat untuk memperhatikan sekolah2 tempat kami, karena kurang diperhatikan, jangan asal janji, setelah ''jadi'' malah lupa. terima kasih', '202.67.42.8', '2013-12-18', '15:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `id_subkategori` int(2) NOT NULL,
  `id_subdomain` int(2) NOT NULL,
  `id_daerah` int(2) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kutipan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `headline_utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `pilihan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kredit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `isi_berita` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=117 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(83, 1, 0, 0, 5, 'asiap', 'MUI Tanjab Timur Hentikan Aktivitas Perguruan Tapak Wali', '', '', '', 'mui-tanjab-timur-hentikan-aktivitas-perguruan-tapak-wali', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-02-12', '2019-06-24', '15:25:22', '1512022019_perguruantapakwali.jpg', 1, '', 0, '<p>Muara Sabak - Dari hasil pertemuan yang berlangsung selama empat jam, disepakati kegiatan perguruan Tapak Wali dihentikan hingga guru besar mereka bisa memberikan keterangan.</p>\r\n<p>Pertemuan yang berlangsung di aula kantor Kesbangpol Tanjab Timur tersebut berakhir sekira pukul 13.45 WIB. Tim pengawasan aliran kepercayaan dan keagamaan Tanjab Timur, bersama Forum Kerukunan Antar Umat Beragama melalui MUI langsung melakukan konferensi pers dari hasil pertemuan mereka.</p>\r\n<p>Dari hasil pertemuan yang melibatkan beberapa kepala cabang dari perguruan Tapak Wali, diduga aktivitas mereka mengadung faham menyimpang. Meski demikian pihak MUI belum berani mengeluarkan fatwa terkait ajaran perguruan tersebut menyimpang atau tidak.</p>\r\n<p>"Kita MUI sendiri belum bisa mengeluarkan fatwa atau keputusan apakah sesat atau menyimpang terkait ajaran perguruan tersebut. Karena kita masih akan menunggu penjelasan lebih dalam dari guru besar paguyuban tersebut," jelas Ketua MUI Tanjung Jabung Timur Asad Arsyad kepada tribunjambi.com dalam konferensi persnya.</p>\r\n<p>Dari hasil pertemuan tadi disepakati untuk menghentikan sementara aktivitas di paguyuban pencak silat Tapak Wali. </p>\r\n<p>"Untuk sementara paguyuban tersebut dihentikan segala kegiatannya hingga tanggal 25 Februari mendatang, dimana ditanggal tersebut guru besar Tapak Wali akan datang ke sini untuk memberikan penjelasan," ujarnya.</p>\r\n<p>Dikatakannya pula, paguyuban tersebut bukan asli dari Kabupaten Tanjung Jabung Timur, melainkan cabang dari perguruan silat yang berada di Sulawesi Tenggara.</p>\r\n<p>Paguyuban seni bela diri, seni tenaga dalam pernapasan Tapak Wali tersebut didirikan oleh seorang tuan guru bernama Abdull Aziz berasal dari Sulawesi Tenggara. Yang telah merambah beberapa wilayah di Provinsi Jambi diantaranya di Kabupaten Tanjab Timur dan Tanjab Barat.</p>\r\n<p>Dimana dari hasil rapat sehari sebelumnya disepakati pada hari ini dilakukan rapat kembali dengan menghadirkan para kepala koordinator perguruan tersebut yang tersebar di beberapa Kecamatan.</p>\r\n<p>Dalam rapat tersebut, tim menemukan sebuah buku kajian yang mereka sebut ilmu toriqat. Yang belum diketahui pasti penggunaannya dan ajaran yang disampaikan.</p>\r\n<p>"Ketika kita meminta mereka untuk menjelaskan terkait buku tersebut tidak satupun dari perwakilan paguyuban tersebut mau menjelaskan, dan sepakat menunggu guru besarnya yang menjelaskan," pungkasnya.</p>\r\n<p> </p>\r\n<p><sub><em>Sumber: jambi.tribunnews.com</em></sub></p>'),
(85, 1, 0, 0, 5, 'asiap', 'Sosialisasi FKUB oleh Badan Kesbangpol agar Mewujudkan Pemilu Damai', '', '', '', 'sosialisasi-fkub-oleh-badan-kesbangpol-agar-mewujudkan-pemilu-damai', 'Y', '', 'Y', '', '', '', '', '', 'Resti', '', 'Kamis', '2019-03-11', '2019-03-11', '15:19:11', '54fkub-mar-2019.jpg', 1, 'agama', 0, '<p xss=removed><span xss=removed>MUARASABAK - Badan Kesatuan Bangsa dan Politik (Kesbangpol) Kabupaten Tanjung Jabung Timur (Tanjabtim) menggelar sosialisasi Forum Kerukunan Umat Beragama (FKUB), menciptakan dan menyamakan persepsi dalam rangka memperkuat toleransi dan keharmonisan kerukunan antar umat beragama, diaula Kantor Camat Dendang.</span></p>\r\n<p xss=removed><span xss=removed>Kaban Kesbangpol Tanjabtim, Abdul Rasid menyampaikan pemerintah daerah dan FKUB melaksanakan acara ini berdasarkan Peraturan bersama Menteri Agama dan Menteri Dalam Negeri, Nomor 8 dan 9 Tahun 2006 tentang pedoman pelaksanaan tugas Kepala daerah dalam memelihara kerukunan umat Beragama dan pendirian rumah ibadah, peraturan Bupati Tanjabtim Nomor 46 Tahun 2008 tentang perubahan atas peraturan Bupati Nomor 18 Tahun 2007 tentang pedoman dalam pemeliharaan kerukunan umat beragama dan pendirian rumah ibadah dalam Kabupaten Tanjabtim serta surat keputusan bupati Tanjabtim Nomor 228 Tahun 2018 tentang pembentukan tim kerukunan umat Beragama Kabupaten Tanjabtim.</span></p>\r\n<div class="google-auto-placed ap_container" xss=removed><span xss=removed>Dikata Rasid untuk menyamakan visi, misi dan persepsi dalam upaya peningkatan dan program kerja FKUB dan terwujudnya kerukunan umat beragama yang ada di Kabupaten Tanjabtim serta tercapainya Tanjabtim Merakyat 2016-2021.</span></div>\r\n<p xss=removed><span xss=removed>Tujuan acara ini guna meningkatkan peran dan fungsi FKUB didaerah dalam menjaga keharmonisan hidup kerukunan umat beragama, memberdayakan dan membina FKUB Kabupaten Tanjabtim dalam menjalan tugas dan fungsinya serta dengan sosialisasi FKUB kita wujudkan proses demokrasi pemilihan umun 2019 yang sejuk, Aman dan damai di Kabupaten Tanjabtim, Ungkap Abdul Rasid. </span></p>\r\n<p> </p>\r\n<p><sub>Sumber: rakyatjambi.co</sub></p>'),
(87, 1, 0, 0, 5, 'asiap', 'Quick Count Sementara Kesbangpol Tanjabtim', '', '', '', 'quick-count-sementara-kesbangpol-tanjabtim', 'Y', '', 'Y', '', '', 'suasana quickcount', '', '', 'Resti', '', 'Selasa', '2019-06-25', '2019-06-28', '15:44:04', '43whatsapp-image-20190628-at-09.32.49.jpeg', 1, 'binpoltram', 0, '<p><strong>MUARASABAK</strong> - Hasil penghitungan suara Quick Qount Pemilihan Presiden dan Wakil Presiden di Badan Kesatuan Bangsa dan Politik (Kesbangpol) Kabupaten Tanjung Jabung Timur (Tanjabtim), pasangan nomor urut 02 Prabowo-Sandi kalah telak atas pasangan nomor urut 01 Jokowi-Ma ruf Amin.</p>\r\n<p>Perolehan suara nomor urut 02 selisih 15 ribuan dibandingkan dengan suara nomor urut 01. Prabowo-Sandi hanya mendapatkan suara sebanyak 51.461 suara atau 43,61 persen, sedangkan Jokowi-Ma ruf Amin memperoleh sebanyak 67.144 suara atau 56,61 persen.</p>\r\n<p>Di Kecamatan Rantau Rasau suara tertingi yang didapatkan oleh pasangan Jokowi-Ma ruf Amin dengan perolehan suara, disusul Muarasabak Timur dan Mendahara.</p>\r\n<p>Hasil Quick Count tersebut masih sementara, sebab suara yang masuk di Kesbangpol Tanjabtim baru sebanyak 118.605 suara dengan persentase 70,35 persen</p>'),
(88, 1, 0, 0, 5, 'asiap', 'Pembukaan Festival Sumbun oleh Bupati Romi Haryanto', '', '', '', 'pembukaan-festival-sumbun-oleh-bupati-romi-haryanto', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-06-24', '2019-06-28', '15:01:05', '9566sumbun10.jpg', 1, '', 0, '<p>MUARASABAK- Bupati Tanjung Jabung Timur Romi Hariyanto secara resmi membuka Festival Sumbun Tahun 2019 di Kampung Laut Kecamatan Kuala Jambi, Senin (24/6) kemarin. Event ini diselenggarakan selama dua hari, yakni dimulai dari tanggal 23 sampai 24 Juni 2019. Hadir pada acara tersebut Wakil Bupati Kabupaten Tanjung Jabung Timur Robby Nahliyansyah, Kapolres Tanjung Jabung Timur AKBP. Agus Desri Sandi, S. IK, MM, Staf Ahli Provinsi Jambi Asraf, Danramil Muara Sabak merangkap Pabung 049 / Tanjab Letkol Kapt. Inf. Soeharwo, Ketua TP PKK Kabupaten Tanjung Jabung Timur Wirdayanti Romi, Ketua Bhayangkari Cabang Kabupaten Tanjung Jabung Timur Mona Agus Desri Sandi, kepala OPD serta ratusan masyarakat.</p>\r\n<p>Dalam sambutannya, Bupati berharap event ini sebagai momentum dalam peningkatan dan pengembangan destinasi wisata Kabupaten Tanjung Jabung Timur.</p>\r\n<p>‘’Kegiatan ini merupakan untuk mempromosikan kearifan lokal budaya di kabupaten kita ke masyarakat luas,’’ kata Bupati.</p>\r\n<p>Bupati juga berharap kepada seluruh warganya agar bersikap ramah dalam menerima wisatwan baik lokal maupun luar yang masuk ke Kabupaten Tanjung Jabung Timur. Ia ingin tamu yang datang ke <em>Bumi Sepucuk Nipah Serumpun Nibung </em>dapat betah dan membawa pesan yang positif selama berkunjung.</p>\r\n<p> ‘’Kita ingin tamu yang dating memiliki kesan yang baik tentang daerah kita,’’ harapnya.</p>\r\n<p>Kegiatan panen sumbun ini  tidak semua kabupaten yang memiliki potensi tersebut, oleh karena itu Bupati menghimbau masyarakat patut bersyukur dan menjaga dengan kekayaan serta potensi yang dimiliki.</p>\r\n<p>Sementara itu, Kepala Dinas Kebudayaan Pariwisata Pemuda dan Olahraga Kabupaten Tanjung Jabung Timur Dedi Armadi mengatakan, adapun tujuan dari event Festival Sumbun Kampung laut adalah untuk menjaga kultur budaya dan tradisi agar terus terjaga dan tidak tergerus oleh perkembangan jaman. </p>\r\n<p> ‘’Kita ingin meningkatkan kunjungan wisatawan baik domestik maupun mancanegara dan tentunya peran serta masyarakat dalam pengembangan pariwisata di kabupaten kita,’’ katanya.</p>\r\n<p>Setelah acara seremoni dilakukan, Bupati bersama rombongan langsung menyantap makan siang dan melanjutkan ke Beting pantai Kuala Jambi untuk memanen sumbun sumbun dengan mengendarai speed boat dan diikuti oleh seluruh pengunjung yang menaiki pompong.</p>'),
(89, 1, 0, 0, 5, 'operator', 'Rakor Penanganan Konflik Sosial, Kesbangpol Kabupaten Tanjab Timur Harapkan Suasana Damai', '', '', '', 'rakor-penanganan-konflik-sosial-kesbangpol-kabupaten-tanjab-timur-harapkan-suasana-damai', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-05-01', '2019-05-01', '08:51:31', '67penanganan-konflik.jpg', 1, '', 0, '<p>MUARASABAK - Pemerintah Kabupaten Tanjung Jabung Timur melalui Badan Kesatuan Bangsa dan Politik ( Bakesbangpol ) Kabupaten Tanjung Jabung Timur membuka Rakor Penanganan Konflik Sosial Kabupaten Tanjung Jabung Timur Tahun 2019 dengan tema " Dengan Penanganan Konflik Sosial Yang Komprehensip, Kita Ciptakan Kondisi Masyarakat Yang Aman Dan Kondusif Menuju Kabupaten Tanjung Jabung Timur Merakyat Tahun 2016 – 2021", diruang aula gedung Kesbangpol Kabupaten Tanjung Jabung Timur ( Selasa 30 April 2019 ).</p>\r\n<p> Rakor ini bertujuan untuk menangani dan mengantisipasi terjadi konflik sosial di masyarakat pasca Pemilu 2019. Apa lagi disaat suhu politik yang belum menentu usai pemilu serentak 209, maka dipandang sangat tepat Pemkab Tanjung Jabung Timur mengadakan rakor tersebut, agar tercipta masyarakat yang aman, tenteram, dan kondusif.</p>\r\n<p>Dalam sambutan Bupati Kabupaten Tanjung Jabung Timur H. Romi Hariyanto, SE yang dibacakan Kepala Badan Kesbangpol Kabupaten Tanjung Jabung Timur Abdul Rasyid, MH mengatakan, bahwa Bupati Kabupaten Tanjung Jabung Timur H. Romi Hariyanto, SE sangat respon dan memberikan apresiasi  atas kegiatan ini karena melalui rapat koordinasi penangan konflik sosial bisa terselesaikan.</p>\r\n<p> " Saya menyambut baik dan memberikan aspresiasi dengan diselenggarakan rapat kerja penanganan konflik nasional. Dimana dalam hal ini Pemerintah Daerah menyusun rencana aksi penanganan konflik nasional dengan Terbentuknya Tim Terpadu yang terdiri dari Kepolisian, TNI, BIN, Kejaksaan dan instansi terkait ". Ungkapnya.</p>\r\n<p>" Hal demikian berdasarkan Permendagri nomor 42 tahun 2015 tentang pelaksanaan koordinasi penanganan konflik sosial dalam pasal 16 telah diatur perlu dibentuk Tim terpadu penanganan konflik sosial tingkat kabupaten maupun kota. Jadi kita harus berupaya untuk mencegah terjadinya pertentangan dan perbedaan konflik sosial ini dan itu bisa saja terjadi baik itu konflik yang bersifat horizontal maupun konflik yang bersifat vertikal karena konflik ini bisa terjadi disebabkan adanya perbedaan maupun keragaman. Kemudian konflik yang terjadi antara masyarakat dengan pemerintah. Kita harus menciptakan suasana yang tenteram, aman, damai, dan sejuk pasca dilaksanakannya pemilu serentak pada 17 April 2019 yang lalu dalam rangka pemilihan Presiden dan Wakil Presiden, DPR RI, DPD, DPRD Provinsi, dan DPRD Kabupaten / Kota ". Harapnya. </p>\r\n<p>Rakor Penanganan Konflik Sosial Kabupaten Tanjung Jabung Timur Tahun 2019 dihadiri Bupati Kabupaten Tanjung Jabung Timur H. Romi Hariyanto, SE yang diwakili Kepala Badan Kesbangpol Kabupaten Tanjung Jabung Timur Abdul Rasyid, MH, Kapolres Tanjung Jabung Timur AKBP. Agus Desri Sandi, S. IK, MM yang diwakili Kasat Reskrim AKP. Indar Wahyu Dwi S, S. IK, Kajari Tanjung Jabung Timur DR. M. Irfan Jaya, SH, MH yang diwakili Kasi Intel Khaerul Hisam, SH, MH, utusan dari Kesbangpol Provinsi Jambi, para Camat beserta Kepala Desa / Lurah se Kabupaten Tanjung Jabung Timur, Perwakilan dari OPD Kabupaten Tanjung Jabung Timur.</p>\r\n<p><sub><sup><em>Sumber: beritajambi.co</em></sup></sub></p>'),
(90, 1, 0, 0, 5, 'operator', 'Kesbangpol Tanjab Timur laksanakan Pembinaan dan Pemberdayaan Organisasi kemasyarakatan', '', '', '', 'kesbangpol-tanjab-timur-laksanakan-pembinaan-dan-pemberdayaan-organisasi-kemasyarakatan', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2019-05-28', '2019-07-01', '09:00:21', '75sosialisasi-ormas.jpeg', 1, '', 0, '<p><strong>Tanjab Timur<em> </em></strong>– Sosialisasi Pembinaan dan Pemberdayaan Organisasi Kemasyarakatan (ORMAS) Kabupaten Tanjung Jabung Timur 2019 dengan tema membangun karakter ormas yang berintegritas santun dan beretika menuju Tanjung Jabung Timur merakyat.</p>\r\n<p>Sosialisasi tersebut dilaksanakan di Aula Kesbangpol Tanjab Timur Selasa (28/05) yang dihadiri Kepala kesbangpol Tanjab Timur, Bapak kasad intel kapolres Tanjung Jabung Timur, kasi intel Kejari Tanjab Timur, Ormas, LSM, dan OKP se Tanjung Jabung Timur.</p>\r\n<p>Kepala kesbangpol Tanjab Timur Abdul Rasyid SP, MH. menyampaikan dalam sambutannya berkaitan dengan langkah-langkah yang harus disikapi dan diambil keberadaan Ormas dan OKP tentang Pentingnya Administrasi Kelembagaan.</p>\r\n<div class="td-g-rec td-g-rec-id-content_inlineleft td_uid_2_5d1967b44f94d_rand td_block_template_1 "> </div>\r\n<p>Sebagai Ormas, LSM, dan OKP perlu adanya kegiatan-kegiatan yang mengarah kepada hal2 positif, dalam membangun ormas yang berintrgritas yang santun dan beretika ujaran jangan sampai menebarkan ujaran kebencian terkait sara, selain itu Ormas, LSM, dan OKP tidak boleh mengggunakan atribut lambang negara.</p>\r\n<p>Dalam melakukan perannya Ormas , LSM, dan OKP berperan serta bersama masyarakat mencegah dari tindak pidana Kolusi korupsidan Nepotisme (KKN).</p>\r\n<p><sub>Sumber: <em>Investigasi.today</em></sub></p>'),
(91, 1, 0, 0, 5, 'operator', 'Kesbangpol Tanjab Timur Analisa Potensi Konflik 2019', '', '', '', 'kesbangpol-tanjab-timur-analisa-potensi-konflik-2019', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2018-09-05', '2018-09-05', '09:58:06', '43whatsapp-image-20190311-at-9.39.29-am.jpeg', 1, '', 0, '<p>TANJABTIMUR – Kegiatan Pemetaan Daerah Konflik Tahun 2019 yang dilaksanakan oleh Badan Kesbangpol Kabupaten Tanjung Jabung Timue Prrovinsi Jambi pada Rabu (5/09) kegiatan tersebut bertemakan Dengan Pemetaan Potensi Konflik Tahun 2019 Agar Terciptanya Kondisi Aman dan Tertib Menuju Tanjung Jabung Timur Merakyat.</p>\r\n<p>Kegiatan tersebut dihadiri oleh seluruh Camat, Kepala Desa dan Lurah se Kabupaten Tanjung Jabung Timur. Acara dibuka oleh Kepala Badan Kesbangpol Tanjab Timur, Abdul Rasyid, SP, MH, bertempat di ruangan Aula Kesbangpol Tanjab Timur.</p>\r\n<p>Sejumlah Lurah dan Kepala Desa ketika dikofimasi mengatakan bahwa ada sejumlah titik di Kabpaten Tanjung Jabung Jabung Timur. Yunus, Lurah Simpang Kampung Kecamatan Berbak, mengatakan bahwa ada konflik tapal batas antar masyarakat, dalam hal ini kelompok tani yang memiliki lahan yang berbatasan dengan hutam.<br>“Masalah ini sudah lama tapi sampai hari ini masalah itu belum selesai. Kita sudah upayakan penyelesaian tapi sampai hari ini masyarakat belum setuju” jelasnya.</p>\r\n<p>Lurah Rantau Indah Kecamatan Dendang, Abdul Kolik, mengungkapkan,<br>“Untuk Kelurahan Rantau Indah permasahan yang ada hanya ketertiban lingkungan, yang dampak, sebagai contoh di tahun yang lalu permasalahannya kekompakan tentang kebersihan, keindahan lingkungan dan persatuan dan kesatuan para pemuda” jelasnya.</p>\r\n<p>“Namun hal itu untuk di tahun ini sudah bisa teratasi denganbaik, kerapian lingkungan sudah terlihat kekompakan, baik pemasangan lampu iyas yang di pasang setiap depan rumah, baik kerapian tiang bendera mengadapi Hut ke 73” ungkap Lurah. </p>\r\n<p><em><sub>Sumber: investigasi.today</sub></em></p>'),
(92, 1, 0, 0, 5, 'operator', 'Bupati Romi Lantik Pejabat Tinggi Pratama Eselon II, Eselon III Eselon IV Kabupaten Tanjab Timur', '', '', '', 'bupati-romi-lantik-pejabat-tinggi-pratama-eselon-ii-eselon-iii-eselon-iv-kabupaten-tanjab-timur', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-06-24', '2019-06-24', '11:09:48', '46tempojambi_com_22_img20190625wa0005.jpg', 1, '', 0, '<p>MUARASABAK - Pemkab Kabupaten Tanjung Jabung Timur kembali melakukan penyegaran dan rotasi dilingkup kemerintahannya, dengan melaksanakan pelantikkan sebanyak 159 pejabat yang terdiri dari 1 orang pejabat Tinggi Pratama Eselon II, 24 orang pejabat Eselon III, dan 134 orang pejabat dan Eselon IV.</p>\r\n<p>Pelantikkan pejabat tersebut dilakukan langsung oleh Bupati Kabupaten Tanjung Jabung Timur H. Romi Hariyanto, SE dengan didampingi Wakil Bupati Kabupaten Tanjung Jabung Timur H. Robby Nahliansyah pada hari senin pagi ( 24 Juni 2019 pukul 09.00 WIB ) di lapangan kantor Bupati Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Adapun 1 orang pejabat Pratama Tinggi eselon II yang dilantik yaitu, Aruji, SH yang sebelumnya menjabat sebagai Sekretaris Kantor Satpol PP dan Damkar Kabupaten Tanjung Jabung Timur setelah mengikuti kompetisi lelang jabatan yang dilaksanakan beberapa waktu lalu, dilantik menjadi Kadis Dinas Dukcapil Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Sementara Pejabat eselon III terdiri dari Camat terjadi rotasi diantaranya Camat Sadu yang sebelumnya dijabat oleh Helmi Agustinus digantikan oleh Frans Apriyanto, S. STP. Camat Nipah Panjang sebelumnya yang dijabat oleh Kamaruddin, S. STP digantikan oleh Helmi Agustinus. Camat Rantau Rasau yang sebelumnya dijabat oleh Sularto digantikan oleh Budiwahyu, S. STP. Camat Berbak yang sebelumnya dijabat oleh Budi Wahyu, S. STP digantikan Ahmad Yani yang sebelumnya menjabat sebagai Sekcam Nipah Panjang. Camat Mendahara yang sebelumnya dijabat oleh Abdul Rojak digantikan oleh Amri Juhardy yang sebelumnya menjabat sebagai Kabid Pembangunan Desa Dinas PMD Kabupaten Tanjung Jabung Timur. Sementara untuk Camat Dendang yang dijabat oleh Sanusi digantikan oleh Amiruddin yang sebelumnya menjabat sebagai Kabid Kebudayaan Disbudparpora Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Dalam sambutanya, Bupati Kabupaten Tanjung Jabung Timur H. Romi Hariyanto, SE mengatakan, bahwa pelantikan ini jangan disalah artikan ke politik atau hal-hal lain sebab menurutnya, pelantikan yang dilakukan hanya semata-mata untuk penyegaran pemerintahan di lingkup Pemkab Tanjabtim.</p>\r\n<p>Selain itu, ia juga berpesan kepada para pejabat yang dilantik untuk selalu bersinergi dengan program-program yang sudah ada dan selalu bersikap bijak ketika dalam memberikan pelayanan kepada masyarakat.</p>\r\n<p>" Saya berharap terutama Camat agar bersikap bijak kepada masyarakat sebab kalian merupakan cerminan bagi kami ". Kata Bupati Romi.</p>\r\n<p>" Apalagi yang menjadi isyu yang berkembang dimasyarakat saat ini terkait kerusakkan jalan. Masyarakat tidak tahu menahu apakah jalan itu kewenangan Provinsi Jambi, kewenangan Pusat, atau kewenangan Kabupaten Tanjab Timur. Yang mereka tuntut hak mereka untuk mendapatkan infrastruktur jalan yang bagus, memadai, dan nyaman dilalui. Tidak masalah mereka menyalahi Bupati atau Pemerintah Daerah. Namun kalian lah selaku Camat yang harus memberikan pengertian kepada masyarakat dengan pendekatan persuasif dan penuh kesabaran ". Ungkap Bupati Romi.</p>\r\n<p>" Kalian yang dilantik bukan sekedar ajang gengsi atau main - main. Jaga komitmen dan dedikasi untuk Kabupaten Tanjung Jabung Timur. Apabila kalian tidak komitmen dengam sumpah kalian, maka saya tidak segan - segan akan mencabut SK kalian ". Tegas Bupati Romi.</p>\r\n<p><em><sub>Sumber: beritajambi.co</sub></em></p>'),
(93, 2, 0, 0, 0, 'operator', 'Presiden Jokowi: Hadapi Tantangan Bangsa dengan Optimisme dan Kebanggaan', '', '', '', 'presiden-jokowi-hadapi-tantangan-bangsa-dengan-optimisme-dan-kebanggaan', 'N', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2019-07-01', '2019-07-01', '11:20:13', '18683779_720.jpg', 1, '', 0, '<p>Sebagai bangsa dan negara besar, Indonesia memiliki sejumlah keunggulan dan kekuatan yang patut kita banggakan. Namun demikian, di balik sebuah bangsa yang besar, terdapat tantangan yang juga besar yang harus dihadapi dengan optimisme, kebanggaan, dan produktivitas.</p>\r\n<p>"Jangan sampai ada yang mengecilkan arti negara ini, apalagi pesimistis. Enggak, kita harus optimistis. Negara ini memerlukan perjalanan besar lewat tahapan-tahapan besar untuk menjadi negara maju. Negara besar pasti tantangannya juga besar," ujar Presiden Joko Widodo.</p>\r\n<p>Dalam acara silaturahmi dengan para peserta Konferensi Gereja dan Masyarakat (KGM) X dan Persekutuan Gereja-Gereja di Indonesia (PGI) yang berlangsung di Hotel Sutan Raja, Minahasa Utara, pada Minggu, 31 Maret 2019, tersebut Presiden Jokowi kembali mengingatkan bahwa negara kita sesungguhnya memiliki banyak kekuatan yang menjadikan Indonesia sebagai sebuah negara besar.</p>\r\n<p>"Bangsa ini bangsa besar. Penduduk kita juga besar. Ekonomi kita, PDB kita, juga besar. GDP kita itu 45 persen dari GDP seluruh 10 negara ASEAN. Ini negara besar. Jangan kita lupa. Kita harus bangga terhadap negara ini," tutur Presiden.</p>\r\n<p>Dijelaskan oleh Kepala Negara, saat ini Indonesia dan juga banyak negara lain bersiap menghadapi perubahan global seiring revolusi industri baru yang sudah di depan mata. Inilah salah satu tantangan besar yang menjadi tugas besar bersama untuk dapat merespons dan memenangkan persaingan di tengah perubahan itu.</p>\r\n<p>"Hati-hati dengan perubahan-perubahan ini. Bagaimana kita cepat menyikapi tanpa kehilangan karakter, kepribadian, dan jati diri kita sebagai bangsa Indonesia. Kita tidak bisa lagi mencegah. Tidak bisa lagi kita menghambat," ucap Presiden.</p>\r\n<p>Manado, 31 Maret 2019<br>Deputi Bidang Protokol, Pers, dan Media Sekretariat Presiden</p>\r\n<p>Bey Machmudin</p>\r\n<p> </p>\r\n<p><em><sub>Sumber: kemendagri.go.id</sub></em></p>'),
(94, 1, 0, 0, 5, 'operator', '22 Ormas terdata di Tanjabtim, Rasid : Belum Ada Kegiatan Positif', '', '', '', '22-ormas-terdata-di-tanjabtim-rasid--belum-ada-kegiatan-positif', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Rabu', '2019-05-28', '2019-05-28', '13:55:26', '77img20190528wa0061.jpg', 1, '', 0, '<p>MUARASABAK – Bertempat di Aula Badan Kesatuan Bangsa dan Politik (Kesbangpol) Kabupaten Tanjung Jabung Timur (Tanjabtim) pada Selasa (28/5/2019).</p>\r\n<p>Dipimpin Kaban Kesbangpol Abdul Rasid laksanakan Sosialisasi Pembinaan dan pemberdayaan organisasi kemasyarakatan (Ormas) di Kabupaten Tanjabtim Bertema Membangun Karakter ormas yang berintegritas santun dan beretika menuju Tanjabtim Merakyat.</p>\r\n<p>Sebanyak 22 Ormas, OKP dan LSM terdaftar di Badan Kesatuan Bangsa dan Politik Kabupaten Tanjabtim, terang Rasid.</p>\r\n<p>Lanjut Rasid, Dimana Bagi  Ormas, OKP dan LSM yang belum terdaftar, untuk mendaftarkan dan didata supaya tertib administrasi sesuai peraturan Menteri Dalam negeri RI Nomor 57 Tahun 2017 tentang pendaftaran dan pengelolaan sistem informasi OKP.</p>\r\n<p>Belum ada kegiatan Positif yang dilakukan oleh lembaga yang ada di Tanjabtim, karena tidak ada data dan pakta serta keabsahan Lembaganya tidak terdaftar di Kesbangpol, ungkap Abdul Rasid.</p>\r\n<p>Sosialisasi menghadirkan nara sumber dari Kasi intel Kejari Tanjabtim dan Kasat intel Polres Tanjabtim. </p>\r\n<p><em><sub>Sumber: rakyatjambi.co</sub></em></p>'),
(95, 3, 0, 0, 0, 'operator', 'Waspada! Pengedar Narkoba Targetkan Pengguna Medsos', '', '', '', 'waspada-pengedar-narkoba-targetkan-pengguna-medsos', 'N', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2019-07-01', '2019-07-01', '15:08:42', '33adanarkobajenisbarupoldalampungawasiperedaranpilmxe.jpg', 1, '', 0, '<p>JAKARTA – Masyarakat mordern yang kerap mengunggah segala aktivitasnya di media sosial secara tidak langsung memberikan ruang menjadi target pengedar narkoba. “Ketika kita terbiasa berkomunikasi di dunia digital di mana semua tentang diri kita diungkapkan di dunia digital, para pebisnis (narkoba) dengan mudah melakukan profiling orang-orang yang akan menjadi targetnya,” kata pengamat sosial Universitas Indonesia Devie Rahmawati, Kamis (27/6). Dikatakannya, para pebisnis narkoba menyasar orang-orang yang lagi sedih, galau dan membutuhkan teman sebagai target empuknya. Media sosial memudahkan pengedar untuk mengenal kepribadian dan karakter targetnya. “Ini berbahaya, pedagang (narkoba) ini baca, ini orang yang lagi suntuk, galau, karena pengguna medsos itu menampilkannya,” kata Devie. Devie mengingatkan bahwa penyebaran narkoba bukanlah orang asing, tetapi justru orang terdekat dari si pengguna. Narkoba menyasar semua kalangan tidak hanya artis, ibu rumah tangga, dosen, aparatur sipil negara bahkan pelajar. Dan yang lebih mengkhawatirkan lagi, sasaran utamanya adalah mereka yang masih dalam usia produktif. “Kenapa? Karena mereka punya uang, mereka bekerja, untuk mengonsumsi narkoba butuh biaya,” katanya. Untuk mencegah itu semua, lanjut Devie, yang perlu dilakukan oleh masyarakat adalah melakukan ‘diet gadget’. Hasil penelitian mengungkapkan waktu paling lama bagi seseorang untuk tidak melihat gadgetnya adalah tujuh menit, lebih dari itu sudah gelisah. Ada tidak ada pesan yang masuk ke ponsel, seseorang akan selalu melihat ke layar telepon pintarnya. “Kayak diet makanan, bukan berarti tidak boleh makan. Pilihnya apa yang mau di makan, berapa jumlahnya. Artinya, kamu pilih apa yang kamu baca, dan berapa lama waktunya,” kata Devie. World Drugs Report tahun 2018, yang diterbitkan United Nations Office on Drugs and Crime (UNDC), melaporkan sebanyak 275 juta penduduk dunia pernah mengonsumsi narkoba. Di Indonesia, BNN mencatat kasus penyalahgunaan narkoba di 2017 menjerat 3.376.115 orang dengan rentan usia 10-59 tahun. Sementara di 2018, jumlah remaja pengguna narkoba di 13 ribu ibu kota provinsi mencapai 2,29 juta orang. Sumber: jambi-independent.co.id</p>'),
(96, 1, 0, 0, 5, 'operator', 'Wabup : Kita Perang Terhadap Kejahatan Narkotika', '', '', '', 'wabup--kita-perang-terhadap-kejahatan-narkotika', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Rabu', '2019-06-26', '2019-07-03', '11:30:51', '873pelepasanbalon.jpg', 1, '', 0, '<p>MUARASABAK- Wakil Bupati Tanjung Jabung Timur Robby Nahliansyah menghimbau kepada seluruh elemen masyarakat untuk bersama-sama memerangi bahaya kejahatan Narkotika. Hal ini disampaikan Wabup pada saat Upacara Hari Anti Narkotika Internasional di Lapangan Kantor Bupati Tanjung Jabung Timur, Rabu (26/6).</p>\r\n<p>‘’Karena apabila tidak ditangani secara bersama-sama oleh semua elemen masyarakat maka akan mengancam eksistensi bangsa yang berdampak pada rusaknya tatanan social serta mengancam ketahanan nasional suatu negara,’’ kata Wabup saat membacakan sambutan Wakil Presiden RI.</p>\r\n<p>Mewujudkan sumber daya manusia yang unggul dan tangguh harus dilaksanakan sedini mungkin yaitu dengan melindungi dan menjaga anak-anak kita agar tidak terjerumus dengan penyalahgunaan dan peredaran gelap Narkotika. Hal ini, lanjut Wabup, dilakukan dalam rangka mempersiapkan generasi muda menjadi kader bangsa yang tangguh dalam menghadapi tantangan pembangunan, serta bertanggungjawab terhadap masa depan kehidupan bangsa dan negara.</p>\r\n<p>‘’Apabila hal ini dilakukan secara konsisten, berkesinambungan dan bersinergi dengan pemangku kepentingan serta masyarakat maka potensi jasmani dan rohani sumber daya manusia akan mewujudkan Indonesia yang maju, berdaulat, mandiri dan berkepribadian serta berlandaskan gotongroyong,’’ katanya.</p>\r\n<p> </p>\r\n<p><sub><em>Sumber: tanjabtimkab.go.id</em></sub></p>'),
(97, 1, 0, 0, 5, 'operator', 'Bupati Penuhi Undangan Kepala Staf Kepresidenan RI', '', '', '', 'bupati-penuhi-undangan-kepala-staf-kepresidenan-ri', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Rabu', '2019-07-02', '2019-07-02', '14:41:46', '5128img20190702wa0067.jpg', 1, '', 0, '<p><strong>MUARASABAK- </strong>Bupati Tanjung Jabung Timur Romi Hariyanto bersama Kapolres AKBP Agus Desri Sandi, Dandim 0419 Tanjab Letkol Inf Muhammad Arry Yudhistira dan Kajari Tanjabtim Muhammad Irfan Jaya memenuhi undangan Kepala Staf Kepresidenan Jendral TNI (Purn) Muldoko di Jakarta. Pertemuan yang merupakan silaturrahmi biasa tersebut bertempat kediaman mantan Panglima TNI pada Tahun 2013 itu di Jalan Lembang No 54 Menteng Jakarta Pusat.</p>\r\n<p>Banyak hal-hal penting yang dibicarakan disela-sela silaturrahmi tersebut, diantaranya persoalan pembangunan di <em>Bumi Sepucuk Nipah Serumpun Nibung. </em>Bupati menyampaikan, sangat butuh dukungan pemerintah pusat dalam rangka upaya percepatan pembangunan khususnya terkait infrastruktur di daerahnya. Selain itu, Bupati juga menyampaikan bahwa Kabupaten Tanjung Jabung Timur saat ini telah memiliki Gardu Induk PLN yang terletak di Kelurahan Parit Culum II Kecamatan Muara Sabak Barat, berdirinya gardu induk ini tentu membutuhkan dukungan pada upaya realisasi pengelolaan gas guna menyuplai gardu induk. Yang mana hingga saat ini pengelolaan gas sebesar 5 MMBTU yang diperoleh sejak 2011 belum berjalan optimal, dikarenakan masih ada persoalan harga jual ke PLN yang belum klop.</p>\r\n<p>‘’Karena itu kami mohon dukungan pak Muldoko selaku kepala staf kepresidenan. Hal ini juga karena berkaitan dengan program Pak Presiden soal listrik nasional, dan alhamdulilah beliau berjanji membantu mencarikan solusinya,’’ kata Bupati diakhir pertemuan tersebut.</p>\r\n<p>Pertemuan ini bukan tanpa alasan, hal ini lantaran hubungan bupati yang pernah menjadi Ketua DPRD Tanjung Jabung Timur ini dengan Muldoko cukup dekat. Bahkan, melalui Keala Staf Kepresidenan tersebut sejumlah program mengalir ke Kabupaten Tanjung Jabung Timur. Diantaranya, penguatan sektor pertanian dan program penggemukan sapi.</p>\r\n<p>Bahkan, Muldoko yang juga merupakan Ketua Himpunan Keluarga Tani Indonesia (HKTI) juga pernah melakukan kunjungan kerja ke Kabupaten Tanjung Jabung Timur pada Tahun 2018 lalu. Saat itu dilaksanakan saat panen raya di Kecamatan Berbak. Muldoko pula yang menyarankan pentingnya membangun sinergi antar daerah berbatasan, seperti Kabupaten Tanjung Jabung Timur dengan Kabupaten Lingga dan Kabupaten Tanjung Jabung Timur dengan Banyu Asin.</p>\r\n<p>‘’Silaturrahmi ini juga sekaligus melaporkan kondisi terkini Tanjabtim khususnya pasca pemilu legislatif dan presiden April lalu, yang secara umum kami sampaikan sangat kondusif. Beliau mengapresiasi hal itu sebagai jerih payah jajaran Forkopimda Tanjabtim dan tingginya kesadaran masyarakat kita,’’ tandasnya.</p>\r\n<p> </p>\r\n<p><sub><em>Sumber: Tanjabtimkab.go.id</em></sub></p>'),
(98, 1, 0, 0, 5, 'operator', 'Camat Harus Tanggap Persoalan Warga', '', '', '', 'camat-harus-tanggap-persoalan-warga', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Sabtu', '2019-07-03', '2019-07-04', '09:07:17', '2374whatsappimage20190703at11.06.16.jpeg', 1, '', 0, '<p>MUARASABAK- Wakil Bupati Tanjung Jabung Timu meminta kepada Camat untuk tanggap terhadap berbagai persoalan yang dihadapi warga. Hal ini disampaikan Wabup saat menghadiri Serah Terima Jabatan (Sertijab) Camat Dendang, Rabu (3/7) di Kantor Camat Dendang. Dalam sambutannya, Wabup menekankan agar kualitas pelayanan kepada masyarakat harus terus ditingkatkan.</p>\r\n<p>‘’Camat harus turun tangan dan tanggap terhadap masalah yang ada di masyarakat,’’ kata Wabup.</p>\r\n<p>Pada otonomi daerah saat ini, aparatur pemerintahan dan Aparatur Sipil Negara (ASN) harus mampu memberikan pelayanan yang optimal. Karena pada hakekatnya, otonomi dilakukan agar pelayanan lebih dekat kepada masyarakat. Camat harus mampu melihat apa yang terjadi dilapangan, dan harus mampu mengantisipasi setiap permasalahan yang ada.</p>\r\n<p>Apalagi, saat ini masyarakat sudah kritis. Makanya, Camat harus mampu menjalin komunikasi dan koordinasi yang baik. Jika pelayanan ditingkat Kecamatan tidak baik, maka dampaknya juga tidak akan baik hingga ditingkat Kabupaten. Karena memang Camat adalah ujung tombak ditingkat Kecamatan.</p>\r\n<p>“Begitu juga Kades, tetntu ujung tombak ditingkat Desa. Masyarakat lebih kritis, lebih pingin dilayani lakukan pendekatan. Agar optimalisasi pelayanan dapat berjalan lebih baik,”pintanya.</p>\r\n<p>Maju ada atau mundurnya suatu Kecamatan kata Wabup, tergantung bagaimana peran Camat itu sendiri. Camat perlu menjalin koordinasi dengan semua istansi, baik itu vertikal ataupun Pemerintah Kabupaten. Sebab, persoalan pembangunan akan dapat diatasi jika koordinasi berjalan dengan baik.</p>\r\n<p>‘’Disamping itu, dukungan masyarakat juga sangat penting. Sebab, Camat tidak akan mampu berbuat banyak tanpa dukungan dari masyarakat,” lanjutnya.</p>\r\n<p>Wabup juga mengingatkan Camat soal pertanahan dan tata ruang. Camat diminta agar melakukan penertiban administrasi pertanahan melalui pengalihan hak dan mendayagunakan tanah secara produktif dan harus sesuai dengan ketentuan yang berlaku.</p>\r\n<p>“Begitu juga soal ADD dan DD. Dalam pelaksanaannya harus dimamfaatkan sesuai dengan ketentuan dan petunjuk program agar tujuan dan sasarannya tepat. PBB juga harus menjadi perhatian Pak Camat, karena PBB sangat menunjang pembangunan melalui pendapatan daerah,” tambahnya.</p>\r\n<p>Kepada Camat yang lama, Wabup mengucapakan terimakasih atas dedikasinya selama ini. Dan harus difahami rotasi jabatan seperti ini merupakan hal yang biasa dan lumrah. Wabup juga berharap agar Camat yang terus memberikan sumbang saran untuk kemajuan Kecamatan Dendang. Apalagi, Camat yang juga merupakan bagian dari masyarakat Dendang.Sementara itu, Camat yang baru juga diminta untuk tidak meninggalkan wilayah.</p>\r\n<p>Sertijab Camat Dendang dilakukan anatara Camat Dendang sebelumnya Sanusi kepada Camat Dendang yang baru yakni Amirudin yang juga sebelumnya menjabat sebagai Kepala Bidang Kebudyaan Dinas Pariwisata, Kebudayaan, Pemuda dan Olahraga Tanjab Timur.</p>\r\n<p><em><sub>Sumber: tanjabtimkab.go.id</sub></em></p>'),
(99, 1, 0, 0, 5, 'operator2', 'Ketemu Heru Santoso, Robby Minta Imigrasi Buka Unit Layanan Paspor di Muara Sabak ', '', '', '', 'ketemu-heru-santoso-robby-minta-imigrasi-buka-unit-layanan-paspor-di-muara-sabak-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-07-08', '2019-07-08', '10:43:46', '6905072019_wabubrobby.jpg', 1, '', 0, '<p><strong>MUARA SABAK</strong> -  Wakil Bupati Tanjung Jabung Timur mengharapkan Imigrasi Kelas I TPI Jambi segera membuka unit layanan paspor di muara sabak. Tingginya antusias warga Tanjabtim yang mengurus paspor menjadi alasan.</p>\r\n<p>Hal tersebut disampaikan langsung Wabup Robby kepada kepala imigrasi Kelas I Tempat Pemeriksaan imigrasi (TPI) Jambi, Heru Santoso Ananta Yudha, di kantor imigrasiMenurut Robby tingginya minat pembuatan paspor menjadi alasan mengapa imigrasi perlu membuka cabang di Tanjab Timur. Selain itu tingginya minat warga Tanjab Timur untuk berhaji dan umrah juga menjadi alasan.</p>\r\n<p>Dijelaskan Robby, sebagian pelaku usaha, khususnya usaha perikanan dan perdagangan, punya relasi bisnis antar negara seperti Malaysia dan Singapura yang relatif dekat dengan Tanjab Timur.</p>\r\n<p>“Bahkan cukup banyak juga warga kita yang punya kekerabatan dengan negara-negara tetangga itu. Karena itu, kita berharap betul imigrasi berkenan hadir di Tanjabtim, minimal UKK (unit kerja keimigrasian) atau ULP (unit layanan paspor) cukup," harap Robby.</p>\r\n<p>Menanggapi hal tersebut, kepala Imigrasi Kelas I Tempat Pemeriksaan Imigrasi (TPI) Jambi Heru Santoso menyambut baik keinginan wabup tersebut, selain itu dirinya memastikan upaya itu segera akan direalisasikan mengingat Tanjab Timur cukup strategis.</p>\r\n<p><em><sub>Sumber: tribunnews.com</sub></em></p>'),
(100, 2, 0, 0, 0, 'operator', 'Kemendagri Dorong Ormas Amalkan Nilai-Nilai Pancasila', '', '', '', 'kemendagri-dorong-ormas-amalkan-nilainilai-pancasila', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-07-08', '2019-07-08', '14:55:32', '54polpum_image.jpg', 1, '', 0, '<p>Kementerian Dalam Negeri (Kemendagri) mendorong organisasi masyarakat (ormas) mengamalkan nilai-nilai Pancasila.  </p>\r\n<p>Direktur Organisasi Kemasyarakatan Kemendagri, Lutfi TMA, mengatakan apalagi dalam menghadapi revolusi 4.0 sekarang ini, ormas perlu melakukan inovasi tanpa harus kehilangan jati diri dan ideologi bangsa yaitu Pancasila. </p>\r\n<p>Dia mengingatkan beberapa waktu lalu, sempat eksis ormas yang memiliki Iieologi selain Pancasila. Pemerintah pun mencabut status badan hukum Ormas tersebut, karena ideologi memang bukan sesuatu yang bisa ditawar-tawar lagi.</p>\r\n<p>“Pancasila telah ada sebelum Indonesia ada karena nilai-nilai Pancasila digali dari berbagai kultur dan budaya di Indonesia. Pancasila tidak untuk diperjuangkan, tapi harus dilaksanakan,” katanya dalam keterangannya kepada <strong><em>Republika.co.id</em> </strong>di Jakarta, Selasa (18/6).  </p>\r\n<p>Dia mengatakan ormas menjadi sahabat atau mitra pemerintah dalam melaksanakan pembangunan. Dalam sejarah kebangsaan, kelahiran ormas pun semata-mata bertujuan untuk kepentingan bangsa. “Kelahiran ormas mendahului munculnya partai-partai politik di Indonesia,” kata dia. </p>\r\n<p>Dia menyebutkan ormaslah melalui Budi Utomo yang mengagas kebangkitan nasional pada 1908, di tengah anggapan umum bahwa bangsa yang terjajah adalah bangsa yang inferior. </p>\r\n<p>Lalu, kata dia, pada 1912 Sarekat Dagang Islam (SDI) adalah Ormas yang memperjuangkan bangkitnya ekonomi bangsa mempelopori kemandirian ekonomi pada masa itu. Setelahnya, beberapa ormas pra Kemerdekaan, seperti Nahdlatul Ulama dan Muhammadiyah yang turut berperan dalam bidangnya masing-masing untuk memperjuangkan kemerdekaan bangsa Indonesia. “Inilah semangat yang harus menjadi inspirasi bagi Ormas di masa sekarang,” kata dia.  </p>\r\n<p>Kementerian Dalam Negeri RI melalui Dirjen Politik dan Pemerintahan Umum mengadakan kegiatan Forum Kemitraan Ormas dalam rangka penguatan ideologi, karakter, wawasan kebangsaan, dan revolusi mental di Manado, Selasa (18/6).  </p>\r\n<p>Kegiatan ini dihadiri 150 ormas di Provinsi Sulawesi Utara. Hadir dalam kegiatan ini Kepala Badan Kesbangpol Sulawesi Utara, Meiki M Onibala dan Asisten Deputi Koordinasi Wawasan Kebangsaan Kedeputian VI Kemenko Polhukam, Cecep Agus Supriyanta.</p>\r\n<p><sub><em>Dikutip: polpum.kemendagri.go.id</em></sub></p>'),
(101, 3, 0, 0, 0, 'operator', 'Polisi Waspadai Modus Cairan Rokok Elektrik Dicampur Narkoba', '', '', '', 'polisi-waspadai-modus-cairan-rokok-elektrik-dicampur-narkoba', 'N', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-07-08', '2019-07-08', '15:09:11', '38029848400_1470827656vape7.jpg', 4, '', 0, '<p><strong>Bandung - </strong>Kepala Badan Narkotika Nasional (BNN) Provinsi Jawa Barat Sufyan Syarif mengatakan, perlu ada pengawasan khusus untuk peredaran cairan rokok elektrik. Pasalnya, cairan rokok elektrik berpotensi disalahgunakan sebagai campuran saat menggunakan narkotika.</p>\r\n<p>"Disinyalir dan sudah banyak terbukti bahwa vape (rokok elektrik) itu bahan cairannya sudah dicampur dengan narkotika. Baik narkotika jenis gorila, ganja maupun sabu-sabu," kata Sufyan di Bandung, Rabu, 26 Juni 2019.</p>\r\n<p>Dalam beberapa kesempatan, BNN telah menangkap sejumlah agen penjual cairan rokok elektrik yang mengandung narkotika.</p>\r\n<p>"Di Kabupaten Bandung pernah, kami tangkap yang mengandung gorila tadi. Dijualnya <em>online</em>," katanya.</p>\r\n<p>Menurut Sufyan, cairan rokok elektrik berpotensi disalahgunakan dengan mencampur bahan narkotika. Mengingat bentuknya yang cair atau mudah larut, rokok elektrik menjadi pintu napza.</p>\r\n<p>"Masyarakat harus mengawasi anak-anaknya yang pake vape, jangan sampai isinya cairan narkoba," katanya.</p>\r\n<p>Sebelumnya, Kepala Pusat Laboratorium Narkotika BNN pusat, Mufti Djusnir mengatakan rokok elektrik sangat berpeluang disalahgunakan untuk penggunaan narkoba atau obat-obatan berbahaya. Itu sebabnya, BNN menolak peredaran rokok elektronik.</p>\r\n<p>Mufti mengatakan BNN sudah menemukan beberapa narkoba yang menggunakan rokok elektronik sejak 2013, antara lain sabu dan ganja. Menurutnya, rokok elektronik sangat mungkin menjadi kamuflase bagi para penyalahguna dalam menggunakan narkoba.</p>\r\n<p>"Beberapa jenis narkoba yang disalahgunakan dengan cara dihisap, bisa jadi menggunakan rokok elektronik," tuturnya di Jakarta, Selasa 26 Juni 2019.</p>\r\n<p><sub><em>Sumber: liputan6.com</em></sub></p>'),
(102, 1, 0, 0, 5, 'operator2', 'Atasi Masalah Moral Remaja, Sekda Tanjab Timur Dukung Program Bebas Buta Aksara Alquran', '', '', '', 'atasi-masalah-moral-remaja-sekda-tanjab-timur-dukung-program-bebas-buta-aksara-alquran', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Sabtu', '2019-07-10', '2019-07-10', '14:13:37', '9317062019_dprdtanjabbarat.jpg', 1, '', 0, '<p><strong>MUARA SABAK</strong> - DPRD Kabupaten Tanjung Jabung Timur menggelar rapat Paripurna dalam rangka mendengar pandangan umum fraksi-fraksi terhadap Ranperda inisiatif DPRD tahun 2019.</p>\r\n<p>Pandangan umum diawali dari fraksi PAN mengapresiasi Pemerintah Tanjab Timur yang memperoleh opini WTP dari BPK RI. Untuk 3 Ranperda tahun 2019, para OPD diminta mempersiapkan dokumen agar pembahasan berjalan lancar dan memperoleh hasil maksimal.</p>\r\n<p>Fraksi PDI Perjuangan tidak henti -hentinya mengingatkan kepada OPD untuk menyiapkan dokumen dan data secara matang pada saat pembahasan sehingga proses pembahasan dapat berjalan tepat waktu. Dan meminta penjelasan sumber pendapatan daerah sebesar Rp1,093 triliun.</p>\r\n<p>Dilanjutkan Fraksi Hanura meminta pihak eksekutif dan DPRD untuk lebih fokus dan lebih serius bagaimana efisien dan efektivitas penggunaan APBD untuk pencapaian visi dan misi Kabupaten Tanjabtim.</p>\r\n<p>Hanura juga meminta pemda juga mengoptimalkan pengelolaan dan pengawasan aset -aset sampai dengan terwujudnya kepentingan rakyat.</p>\r\n<p>Sementara fraksi BBI menyoroti masalah dana silpa yang begitu besar. Kepala daerah diminta untuk mengevaluasi kerja dinas dan instansi agar lebih maksimal.</p>\r\n<p>Pada paripurna sebelumnya, anggota DPRD Tanjab Timur mewacanakan untuk membentuk program bebas buta aksara Alquran. Saat ini wacana tersebut masih menunggu pembahasan perda.</p>\r\n<p>Menanggapi hal tersebut,Sekda Tanjab Timur Sapril mengatakan, Ranperda tentang buta aksara Alquran sangat strategis dalam menanamkan nilai-nilai agama khususnya generasi muda.</p>\r\n<p>"Karena membebaskan dari buta aksara Alquran sangat penting dan merupakan pintu masuk untuk memahami isinya, untuk mengatasi degradasi moral saat ini, khusus terjadi di kalangan remaja, maka pentingnya sosialisasi Alquran adalah solusinya. Kami sependapat mengatasi buta aksara Alquran perlu dituangkan dalam perda Kabupaten Tanjabtim," ungkap Sapril.</p>\r\n<p><em><sub>Sumber:  Tribunnews.com</sub></em></p>\r\n<p><br><br><br></p>'),
(103, 1, 0, 0, 5, 'operator2', 'Peringati HUT Bhayangkara ke-73, Polres Tanjab Timur Gotong-royong Bersihkan Rumah Ibadah .', '', 'jambi.tribunnews.com', '', 'peringati-hut-bhayangkara-ke73-polres-tanjab-timur-gotongroyong-bersihkan-rumah-ibadah-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Minggu', '2019-07-10', '2019-07-11', '08:55:39', '2510072019_polrestanjabtimur.jpg', 1, '', 0, '<p><strong>MUARA SABAK</strong> - Polres Tanjung Jabung Timur memperingati HUT Bhayangkara ke - 73, dengan melaksanakan upacara yang dilaksanakan di Kecamatan Dendang tepatnya di Lapangan Kantor Camat Dendang, Rabu (10/07/19) pagi.</p>\r\n<p>Dalam memperingati HUT Bhayangkara Ke-73 Polres Tanjab Timur melaksanakan berbagai kegiatan di antaranya Bakti Religi, yakni gotong royong membersihkan rumah-rumah ibadah yang ada di wilayah Muara Sabak dan juga menyerahkan bantuan alat kebersihan di beberapa rumah-rumah ibadah.</p>\r\n<p> Selain itu Polres Tanjab timur juga melaksanakan berbagai kegiatan sosial lainnya, dengan melakukan gotong royong bersama, olahraga bersama dan</p>\r\n<p>donor darah. Dalam rangkaian yang sama pula polres mengunjungi para sesepuh Polri, tokoh masyarakat dan tokoh agama.</p>\r\n<p> "Memang perayaan Hari Bhayangkara tahun ini berbeda dengan tahun-tahun sebelumnya, yang selalu diperingati dengan upacara saja. Dimana dalam HUT kali kegembiraan Polri dapat dirasakan bersama oleh warga Tanjab Timur," ujar kapolres.</p>\r\n<p>Lebih lanjut dikatakannya pula, pada HUT tahun ini kepolisian mengambil tema Dengan Semangat Promoter, pengabdian Polri untuk Masyarakat Bangsa dan Negara.</p>\r\n<p>“Harapannya Polri khususnya Polres Tanjab Timur, makin dicintai oleh masyarakat, dan semakin profesional dalam melaksanakan tugas untuk melindungi, melayani dan mengayomi masyarakat,” pungkasnya.</p>\r\n<p><sub><em>Sumber: tribunnews.com</em></sub></p>'),
(105, 1, 0, 0, 5, 'operator2', 'Antisipasi Karhutla, Daops Bukit Tempurung Mulai Gencar Patroli Ketat Minimalisir Kebakaran   ', '', 'TRIBUNJAMBI.COM', '', 'antisipasi-karhutla-daops-bukit-tempurung-mulai-gencar-patroli-ketat-minimalisir-kebakaran---', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-07-15', '2019-07-15', '12:47:18', '126yretyrtytrytr.jpg', 2, '', 0, '<p xss=removed>Memasuki musim kemarau, rawan kebakaran hutan lahan sangat berpotensi khususnya di Provinsi Jambi.</p>\r\n<p xss=removed>Persiapan memasuki musim kemarau wajib dilakukan oleh Pemerintah Provinsi Jambi agar tidak kembali terjadi kebakaran hebat seperti Tahun 2015.</p>\r\n<p xss=removed>Cukup banyak potensi kebakaran hutan di Provinsi Jambi termasuk Kabupaten, Tanjung Jabung Timur.</p>\r\n<p xss=removed>Saat ini memasuki fase musim kemarau di wilayah kerja Daops Bukit Tempurung, Sinergitas dalam mencegah kebakaran hutan dan lahan terus dilakukan.</p>\r\n<p xss=removed>Kamis (11/7/2019)  Manggala Agni KLHK Daops Bukit Tempurung laksanakan Apel Gabungan bersama pihak TNI dan Polri Kabupten Tanjung Jabung Timur</p>\r\n<p xss=removed>Disela-sela apel bersama, juga dilaksanakan launching kegiatan Patroli terpadu.</p>\r\n<p xss=removed> </p>\r\n<p xss=removed>kepala Daops Bukit Tempurung, Nufit Hari Rachmat menjelaskan kegiatan ini dilakukan guna menekan angka kebakaran hutan danlahan disekitar wilayah tersebut.</p>\r\n<p xss=removed>"Semoga kegiatan ini lancar bisa terlaksanak, dan masyakarat juga sadar akan bahanya kebakaran hutan dan lahan," jelasnya.</p>\r\n<p xss=removed>Gelar Apel Gabungan ini diselenggarakan dilapangan Markas Manggala Agni KLHK Daops Bukit Tempurung, yang di hadiri langsung oleh kepala Daops Bukit Tempurung Bapak, Nufit Hari Rachmat, Kapolsek Mendahara Ulu IPTU, Abdul jalil sidabutar, SE serta Serma, Liandri Lubis selaku Danpos Ramil Mendahara Ulu.</p>\r\n<p xss=removed>Sementara itu, kegiatan Patroli terpadu ini dilaksanakan oleh Manggala Agni, TNI, polri serta Masyarakat Peduli Api (Mpa) di 3 Posko yang berbeda yaitu Desa. Catur Rahayu Kec. Dendang Kab. Tanjung Jabung Timur, Desa. Serdang Jaya Kec. Betara Kab. Tanjung Jabung Barat dan Desa. Suban Kec. Batang Asam Kab. Tanjung Jabung Barat.</p>\r\n<p xss=removed>"Semoga kegiatan ini dapat terlaksana dengan lancar, yang bertujuan untuk melakukan pencegahan karhutla di tingkat tapak dan terus melakukan pemantauan wilayah yang rawan terjadinya karhutla," Ujar Nufit Hari Rachmat.</p>\r\n<p xss=removed>"Serta terus menghimbau dan memberi penyadartahuan kepada seluruh masyarakat untuk berhati hati dengan tidak membuka lahan secara membakar dimusim kemarau.Semua bertujuan untuk lingkungan yang damai dan lestari, agar langit selalu biru bebas asap dan bumi selalu hijau sejuk dan asri," pungkasnya</p>\r\n<p xss=removed><br><em>TRIBUNJAMBI.COM</em></p>\r\n<p> </p>'),
(104, 2, 0, 0, 0, 'operator', 'Jelang Pemilu, Ditjen Polpum Kemendagri Gelar Seminar Kesbangpol   Artikel ini telah tayang di Tribu', '', '', '', 'jelang-pemilu-ditjen-polpum-kemendagri-gelar-seminar-kesbangpol---artikel-ini-telah-tayang-di-tribu', 'N', '', 'Y', '', '', '', '', '', '', '', 'Sabtu', '2019-03-18', '2019-07-11', '09:51:05', '54kegiatanarahkebijakanpenguatankelembagaanperangkatdaerahkesbangpol.jpg', 2, '', 0, '<p>Ditjen Politik dan Pemerintahan Umum menggelar kegiatan Arah Kebijakan Penguatan Kelembagaan Perangkat Daerah Kesbangpol Dalam Memelihara Stabilitas Politik Dalam Negeri dan Kesatuan Bangsa Menjelang Pemilu Serentak Tahun 2019 di Merlyn Park Hotel, Jakarta pada Senin (18/3/2019).</p>\r\n<p>"Dalam rangka penguatan dari sisi kelembagaan serta menunjang tugas dan fungsi Perangkat Daerah yang membidangi urusan Kesatuan Bangsa dan Politik maka dibuatlah suatu aturan khusus yang mengatur," ujar Dirjen Politik dan Pemerintahan Umum Sodarmo dalam sambutannya di hadapan ratusan peserta yang hadir.</p>\r\n<p>"Aturan itu dituangkan dalam Peraturan Menteri Dalam Negeri Nomor 11 Tahun 2019 tentang Perangkat Daerah Yang Melaksanakan Urusan Pemerintahan Di Bidang Kesatuan Bangsa Dan Politik," kata Soedarmo.</p>\r\n<p>Soedarmo menegaskan bahwa dengan adanya Peraturan Menteri Dalam Negeri Nomor 11 Tahun 2019 ini mampu menjawab dinamika dan mengatur point-point penting terkait perangkat daerah yang membidangi urusan kesatuan bangsa dan politik.</p>\r\n<p>Soedarmo berharap dengan hadirnya Kesbangpol, Bapeda dan Ortala Provinsi maupun Kabupaten/Kota dapat bersinergi dalam penguatan kelembagaan Kesbangpol baik dalam aspek kelembagaan maupun aspek penganggaran.</p>\r\n<p><sub><em>Sumber: tribunnews.com</em></sub></p>\r\n<p> </p>');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(106, 1, 0, 0, 5, 'operator2', 'Serangan Ulat Bulu di Nipah Panjang, Tanjab Timur, Tim Terpadu Lakukan Penyemperotan Racun Serangga ', '', 'TRIBUNJAMBI.COM', '', 'serangan-ulat-bulu-di-nipah-panjang-tanjab-timur-tim-terpadu-lakukan-penyemperotan-racun-serangga-', '', '', 'Y', '', '', '', '', '', '', 'TRIBUNJAMBI.COM', 'Jumat', '2019-07-15', '2019-07-15', '14:13:43', '97timterpadudarikecamatannipahpanjangmelakukanupayamengatasiseranganulatbulu1.jpg', 13, '', 0, '<p xss=removed>Tim terpadu bersama Camat Nipah Panjang melakukan pembasmian ulat bulu yang meresahkan warga, dengan cara menyemprotkan racun serangga (regen).</p>\r\n<p xss=removed>Selama Tiga bulan lamanya masyarakat Kecamatan Nipah Panjang tepatnya Kelurahan Nipah Panjang I dan II resah dengan adanya serangan hama ulat bulu di Kecamatannya tersebut.</p>\r\n<p xss=removed>Dari hasil diskusi dan rapat bersama Pemerintah Daerah yang telah dilakukan sebelumnya, akhirnya pada Sabtu pagi (13/7/2019) Camat Nipah Panjang bersama tim gabungan, Damkar, Polpp, Manggala Agni, TNI, Polri, Dinas Kesehatan dan Masyarakat sekitar melakukan pembasmian di lokasi yang menjadi hama ulat bulu tinggal.</p>\r\n<p xss=removed>Dengan menggunakan alat semprot air milik Dinas Pemadaman Kebakaran Kabupaten, tim gabungan melakukan penyemprotan tidak hanya pada bagian pohon yang menjadi sarang utama hama ulat tersebut saja, melainkan juga pada pohon disekitarnya.</p>\r\n<p xss=removed>Dikatakan Camat Nipah Panjang Helmi Agustinus, terkait keluhan masyarakat selama ini pemerintah dan dipimpin Wakil Bupati M Robby langsung menggelar rapat guna penanganan permasalahan tersebut.</p>\r\n<p xss=removed>" Dari hasil rapat yang kita lakukan kemarin, akhirnya kita sepakati dalam pembasmian hama tersebut dengan cara penyemprotan racun (regen) ke pohon atau lokasi sekitar yang menjadi hunian ulat bulu tadi," ujarnya Minggu (14/7/2019).</p>\r\n<p xss=removed>Ada beberapa pertimbangan yang dilakukan sebelum penyemprotan tersebut dilakukan, sebelum nya ada usulan pembasmian dengan cara dibakar.</p>\r\n<p xss=removed>Namun ada pertimbangan dan alasan pembasmian dengan dibakar dianggap kurang tepat dan akan menimbulkan permasalahan dikemudian hari.</p>\r\n<p xss=removed>" Pertimbangannya, lokasi yang menjadi habitat ulat tersebut merupakan kawasan pulau yang sebenarnya menjadi penghadang serangan angin kencang dan penyangga ombak laut agar tidak abrasi. Jika pohon tadi dibakar tentu akan menimbulkan masalah nantinya," jelasnya. </p>\r\n<p><em>TRIBUNJAMBI.COM</em></p>\r\n<p> </p>\r\n<p> </p>'),
(107, 2, 0, 0, 0, 'operator', 'Sesditjen Polpum: Ormas Harus Berperan Dalam Segala Bidang Kehidupan di Masyarakat', '', '', '', 'sesditjen-polpum-ormas-harus-berperan-dalam-segala-bidang-kehidupan-di-masyarakat', '', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-07-18', '2019-07-25', '11:54:10', '84polpum_18juli.jpg', 1, '', 0, '<p>Ormas senantiasa hadir dan memberikan kontribusi besar dalam pembangunan dan menjaga kedaulatan bangsa dan negara. Dinamika perkembangan ormas dalam wujud, jenis dan bentuknya mengalami metamorfosis sejalan dengan perkembangan peradaban manusia, ilmu pengetahuan dan teknologi, hukum dan tata kelola negara. Maka dari itu perlu adanya pembinaan dari stake holder dalam hal ini pemerintah.</p>\r\n<p>Direktorat Jenderal Politik dan Pemerintah Umum melalui Direktorat Organisasi Kemasyarakatan menggelar acara Forum Komunikasi dan Koordinasi Nasional dan Regional antara Pemerintah Pusat, Pemerintah Daerah dan Ormas Regional Tengah di Hotel Royal Darmo Yogyakarta, Rabu (17/7).</p>\r\n<p>“Sebagai salah satu pelaksanaan dari amanat Pasal 40 ayat (1) Undang-Undang Nomor 17 Tahun 2013 tentang Organisasi Kemasyarakatan bahwa Pemerintah dan Pemerintah Daerah melakukan pemberdayaan Ormas untuk meningkatkan kinerja dan menjaga keberlangsungan hidup Ormas,” kata Sesditjen Polpum, Didi Sudiana dalam sambutannya.</p>\r\n<p>“Saya memandang forum ini sangat tepat dan strategis. Ormas dapat di dorong untuk dapat membantu dalam tegaknya kedaulatan bangsa ini, di mana saat ini banyak ancaman bagi Bangsa Indonesia. Saya ingin banyaknya ormas yang ada bisa bersatu. Bahu membahu menjadi satu kesatuan dalam bingkai NKRI. Jangan sampai kehadiran ormas ini malah menjadi potensi timbulnya konflik,” lanjutnya.</p>\r\n<p>Di tempat yang sama, dalam sesi pemaparan, Direktur Ormas Kementerian Dalam Negeri Lutfi TMA, berbicara tentang pentingnya peran ormas dalam pembangunan. Jika dilihat, ormas pada masa perjuangan bisa mandiri dan membantu usaha kemerdekaan. Lutfi berharap ormas masa kini eksistensinya tidak tergantung dari anggaran pemerintah.</p>\r\n<p>“Kami berharap Ormas bisa membantu usaha pembangunan. Namun harus diingat, agar dalam membantu usaha pembangunan tersebut Ormas tidak mengambil peran aparat penegak hukum, karena perbuatan ini dilarang dalam Undang-Undang,” tegas Lutfi.</p>\r\n<p>Hadir juga sebagai narasumber dalam acara ini Kepala Badan Kesbangpol Provinsi DIY Agung Supriyanto, Asisten Deputi Koordinasi Demokrasi dan Ormas Kedeputian I Kemenko Polhukam, Brigjen Pol Budi Susanto serta Asisten Deputi Organisasi Kemasyarakatan dan Organisasi Politik M. Ari Setiawan</p>\r\n<p> </p>\r\n<p><sub><em>Sumber: polpum.kemendagri.go.id</em></sub></p>\r\n<p><sub><em>Dikutip dari: merdeka.com</em></sub></p>'),
(108, 2, 0, 0, 0, 'operator', 'Mendagri: Menjaga Empat Pilar Berbangsa dan Bernegara Jadi Tugas Bersama', '', '', '', 'mendagri-menjaga-empat-pilar-berbangsa-dan-bernegara-jadi-tugas-bersama', '', '', 'Y', '', '', '', '', '', '', '', 'Kamis', '2019-07-16', '2019-07-25', '11:55:46', '53whatsapp_image_20190716_at_10.00_.27_121024x682.jpeg', 2, '', 0, '<p>Jakarta- Menteri Dalam Negeri Tjahjo Kumolo mengatakan, menjaga Empat Pilar Berbangsa dan Bernegara menjadi tugas bersama dan bukan tugas individu atau golongan. Hal itu diungkapkannya saat membuka acara Rapat Kerja Nasional Pembinaan Wawasan Kebangsaan dan Ketahanan Nasional di Hotel Aryaduta, Tugu Tani, Jakarta, Selasa (16/07/2019).</p>\r\n<p>“Urusan ideologi, bukan urusan TNI/Polri saja, atau bukan urusan Presiden saja,  kita semua ikut menjaga dan mengamalkan empat pilar berbangsa dan bernegara, itu harga mati,” kata Tjahjo.</p>\r\n<p>Empat pilar kehidupan berbangsa dan bernegara  yang dimaksud adalah  Pancasila, Negara Kesatuan Republik Indonesia (NKRI), Undang-Undang 1945, dan Bhineka Tunggal Ika. Dengan adanya keempat pilar tersebut dikatakan Tjahjo, sudah saatnya seluruh elemen masyarakat mampu menentukan siapa kawan dan siapa lawan.</p>\r\n<p>“Sudah saatnya kita mampu menentukan sikap, mana yang lawan dan mana yang kawan. Lawan kita ya siapapun yang ingin memporakporandakan Pancasila, UUD 1945 NKRI, Bhineka Tunggal Ika dan ideologi yang bertentangan dengan ideologi Pancasila,” tegasnya.</p>\r\n<p>Untuk itulah, Tjahjo meminta para Kepala Daerah maupun Sekretaris Daerah untuk mampu membangun konektivitas dan membangun sinergi hingga ke tingkat satuan terkecil dalam pemerintahan untuk menjaga empat pilar tersebut. Tak hanya itu, ia juga meminta kepala daerah dan Sekda untuk menyisipkan naskah sambutan maupun Peraturan Daerah (Perda)  dengan butir Pancasila.</p>\r\n<p>“Ini permasalahan yang masih menjadi pikiran saya, Sekda kalau buat sambutan untuk Gubernur atau kepala daerahnya coba selipkan menganai Pancasila, UUD 1945, NKRI, dan Bhinneka Tunggal Ika. Membuat Perda juga masukan sila dari Pancasila, dijabarkan dalam program. Kalau begitu negara kita akan aman,” ungkapnya.</p>\r\n<p>Tjahjo menilai, penguatan terhadap karakter dan wawasan kebangsaan harus diberikan porsi lebih seiring dengan tantangan bangsa yang semakin beragam.</p>\r\n<p>“Penguatan Karakter dan wawasan kebangsaan ini harus diberikan porsi yang lebih utuh supaya seluruh masyarakat memahami secara komprehensif dan integral sehingga mampu mengamalkannya,” imbuhnya.</p>\r\n<p>Rakernas Pembinaan Wawasan Kebangsaan dan Ketahanan Nasional dibuka langsung oleh Menteri Dalam Negeri Tjahjo Kumolo. Acara dilanjutkan dengan sesi panel diskusi dengan menghadirkan berbagai narasumber dari Lemhanas, TNI Angkatan Darat, Kemendagri, hingga kalangan praktisi media.</p>\r\n<p>Puspen Kemendagri</p>\r\n<p> </p>\r\n<p><sub><em>Sumber: polpum.kemendagri.go.id</em></sub></p>'),
(109, 2, 0, 0, 0, 'operator', 'Kemendagri Ingatkan Kepala Daerah Tak Lepas Tanggungjawab Soal Wawasan Kebangsaan', '', '', '', 'kemendagri-ingatkan-kepala-daerah-tak-lepas-tanggungjawab-soal-wawasan-kebangsaan', '', '', 'Y', '', '', '', '', '', '', '', 'Minggu', '2019-07-16', '2019-07-16', '11:57:05', '763360658c72d31161d13a20ed750d16a411024x683.jpg', 2, '', 0, '<p><strong>Jakarta</strong> – Dirjen Politik dan Pemerintahan Umum Kemendagri, Soedarmo mengingatkan kepala daerah memiliki tanggung jawab dalam masalah pembinaan wawasan kebangsaan dan ketahanan nasional.</p>\r\n<p>“Kepala daerah jangan melepas tanggung jawab  dan menyerahkan masalah wawasan kebangsaan dan ketahanan nasional menjadi urusan TNI,” kata Soedarmo saat menjadi pembicara dalam sesi diskusi pada Rapat Kerja Nasional Pembinaan Wawasan Kebangsaan dan Ketahanan Nasional di Jakarta, Selasa (15/07/2019).Soedarmo mengingatkan UU Nomor 23 Tahun 2014 tentang Pemerintah Daerah sudah menyebutkan bahwa kepala daerah ikut bertanggung jawab untuk menjaga wawasan kebangsaan dan ketahanan nasional.Ia kemudian menampilkan sebuah hasil survei yang menunjukkan masih banyak provinsi yang warganya tidak hafal dengan sila- sila Pancasila.</p>\r\n<p>Soedarmo mencontohkan Provinsi Jawa Tengah 28 persen warganya tidak hafal dengan sila Pancasila. Provinsi Kaltim sebanyak 50 persen warganya tidak hafal Pancasila.”Bayangkan saja bagaimana warga mau mengamalkan sila-sila Pancasila kalau mereka sendiri tidak hafal Pancasila,” ujar Soedarmo.Dirjen Polpum Kemendagri juga mengingatkan sudah diterbitkan Permendagri Nomor 71 Tahun 2012 tentang Pembentukan Pusat Pendidikan Wawasan Kebangsaan (PPWK).Ia mengatakan meski permendagri ini sudah terbit tujuh tahun lalu, namun dari 514 kabupaten dan kota baru 134 kabupaten dan kota yang membentuk PPWK.”PPWK ini penting agar Pemda dan warganya bisa menguatkan wawasan kebangsaan melalui lembaga ini,” tuturnya.Soedarmo berharap pemerintah daerah menjalin kerja sama dengan TNI dan Polri serta Aparatur Sipil Negara (ASN) dalam menjaga dan melakukan penguatan nilai-nilai Pancasila dan wawasan kebangsaan nasional di daerah. Untuk itu, ia berharap ada dukungan anggaran dari pemda dalam kerja sama ini”Upaya penguatan ideologi karakter dan wawasan kebangsaan nasional ini ini juga sejalan dengan Perpres tentang Revolusi Mental,” ujar Soedarmo.Sementara itu, Staf Ahli KSAD Arief Susilo berharap ada landasan hukum berupa MOU antara kepala daerah dengan Pangdam, Dandim, Danrem hingga Babinsa dalam kerja sama penguatan wawasan kebangsaan nasional dan ketahanan nasional.”Kalau sekarang baru dalam tahap tatap muka saja antara pemda dan TNI AD karena didasari  kesamaan semangat dalam menjaga NKRI,” ujarnya.Arief juga mengatakan di tingkat desa warga tidak lagi mempedulikan keberadaan Babinsa dan sebaliknya aparat Babinsa kurang berkomunikasi dengan warga masyarakat.”Warga di desa sekarang menganggap masalah terorisme atau Narkoba itu urusan TNI dan Polri,” ujarnya.</p>\r\n<p><sub><em>Sumber: polpum.kemendagri.go.id</em></sub></p>'),
(110, 4, 0, 0, 0, 'operator', 'Gubernur Fachrori Ajak Semua Pihak Cegah dan Berantas Narkotika', '', '', '', 'gubernur-fachrori-ajak-semua-pihak-cegah-dan-berantas-narkotika', '', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-07-15', '2019-07-15', '16:08:31', '335dsc_3598.jpg', 6, '', 0, '<p>Jambi (Humas Pemprov Jambi) - Gubernur Jambi Dr.Drs.H.Fachrori Umar M.Hum mengajak semua pihak untuk bersama-sama mencegah dan memberantas narkotika. Hal itu dikemukakannya dalam Pembukaan Sosialisasi dan Rakor Penyusunan Rencana Aksi Daerah Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika dan Prekusor Narkotika (P4GN) Provinsi Jambi Tahun 2019, Senin (15/7), di Ruang Pola Kantor Gubernur Jambi. Hadir pada kesempatan ini Kepala Badan Kesbangpol Provinsi Jambi Drs.H.M.Asnawi,AB,MM, para kepala OPD lingkup Pemerintah Provinsi Jambi, dan perwakilan  dari BNN Provinsi Jambi.<br><br>Gubernur menyatakan, kegiatan ini sangat strategis untuk menyiapkan langkah dan rencana aksi untuk melakukan pencegahan dan pemberantasan penyalahgunaan narkotika di Provinsi Jambi dengan melibatkan seluruh stakeholder termasuk unsur kemasyarakatan.<br><br>"Pemerintah terus melakukan upaya untuk mencegah dan memberantas narkotika dan prekusor narkotika di Provinsi Jambi, beberapa hal telah dilakukan, diantaranya dengan melakukan upaya preventif dan promotif. Upaya preventif adalah program pencegahan, upaya ini sangat efektif dilakukan apabila dibantu oleh sebuah instansi dan institusi lain. Upaya promotif adalah program pembinaan dengan meningkatkan peranan masyarakat. Upaya lain juga dilakukan dengan mengkampanyekan hidup sehat dan juga mendukung tindakan represif yang ditujukan untuk menindak para produsen,cbandar, pengedar, dan pemakai narkoba," jelas Fachrori.<br><br>Kepala Badan Kesatuan Bangsa dan Politik (Kesbangpol) Provinsi Jambi, Drs.H.M.Asnawi,AB,MM. juga menyampaikan bahwa pemerintah telah membentuk tim terpadu pencegahan dan pemberantasan penyalahgunaan dan peredaran gelap  narkotika dan prekusor narkotika.  <br><br>"Tim terpadu akan bekerja  menyusun rencana aksi daerah pencegahan dan pemberantasan penyalahgunaan dan peredaran gelap narkotika dan prekursor narkotika di Provinsi Jambi. Tim ini juga akan mengkoordinasikan, mengarahkan, mengendalikan, dan mengawasi pelaksanaan pencegahan dan pemberantasan penyalahgunaan dan peredaran gelap narkotika dan prekursor narkotika di Provinsi Jambi, serta menyusun laporan pelaksanaan fasilitasi pencegahan dan pemberantasan penyalahgunaan dan peredaran gelap narkotika dan prekursor narkotika di Provinsi Jambi," terang Asnawi.<br><br>Asnawi mengemukakan bahwa melalui kegiatan ini seluruh stakeholder diajak agar bisa bekerja sama dengan baik supaya pelaksanaan rencana aksi berjalan dengan baik. Dalam konteks monitoring, rencana aksi P4GN ini diharapkan bisa masuk dalam rencana kerja di dinas atau lembaga terkait. “Agar kerja sama ini berjalan dengan baik, tentunya dibutuhkan komitmen dalam pelaksanaannya, maka kegiatan Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika (P4GN harus jadi perhatian dan tentunya ditingkatkan,” ujar Asnawi. </p>\r\n<p><sub><em>Sumber: jambiprov.go.id</em></sub></p>'),
(111, 1, 0, 0, 5, 'operator', 'Gerak Cepat Hilangkan Stunting', '', '', '', 'gerak-cepat-hilangkan-stunting', '', '', 'Y', '', '', '', '', '', '', '', 'Sabtu', '2019-08-13', '2019-08-13', '11:35:53', '606whatsappimage20190813at09.21.10.jpeg', 1, '', 0, '<div class="editor-content">\r\n<p>MUARASABAK- Kabupaten Tanjung Jabung Timur termasuk salah satu kabupaten yang sejumlah desanya ditetapkan sebagai locus stunting pada Tahun 2018. Penetapan itu hasil Riskesdes tahun 2013 yang ditindaklanjuti dengan pendataan pada Agustus 2018. Hasil pemeriksaan bayi dan balita oleh bidan desa bersama petugas puskesmas setempat, dari EPPGBM pada 14.777 balita, ditemukan 1.843 balita stunting.</p>\r\n<p>Menyikapi hasil Rakornas di Jakarta bulan lalu, Pemerintah Kabupaten Tanjung Jabung Timur bergerak cepat. Pada Senin (12/8) kemarin, Pemkab langsung menggelar Rembug penanganan dan pencegahan stunting yang langsung dipimpin oleh Wakil Bupati Robby Nahliyansyah. Keseriusan itu terlihat dari keterlibatan peserta rembug, mulai Bappeda, Dinas Kesehatan, Dinas Pendidikan, Dinas PPKB, Dinas Sosial, Dinas Ketahanan Pangan, Dinas Perikanan, Dinas Kominfo, Perwakilan Bapedda Propinsi Jambi, Perwakilan Dinas Kesehatan Propinsi Jambi, Camat se Kabupaten Tanjung Jabung Timur, 10 Kepala Desa lokus stunting dan 6 Kepala Puskesmas desa lokus. Juga hadir dalam rembug tersebut perwakilan petrocina, Tim Inovasi Desa, Himpaudi, dan Pamsimas.</p>\r\n<p>Dalam sambutannya, Wabup mengatakan dalam penanganan dan pencegahan stunting bukan hanya tanggung jawab Dinas Kesehatan saja akan tetapi merupakan tanggungjawab semua pihak.</p>\r\n<p>‘’Ini tanggungjawab kita semua,’’ kata Wabup.</p>\r\n<p>Pada kesempatan ini juga di tandatangani komitmen bersama dalam pencegahan dan penanganan stunting.</p>\r\n</div>\r\n<div class="wrapper-box box-post-comment"><sub><em>Sumber: Tanjabtimkab.go.id</em></sub></div>'),
(112, 2, 0, 0, 0, 'operator', 'Kemendagri Dorong Penegakkan Hukum Bagi Kepala Daerah dan ASN yang Melakukan Tindak Pidana Korupsi ', '', '', '', 'kemendagri-dorong-penegakkan-hukum-bagi-kepala-daerah-dan-asn-yang-melakukan-tindak-pidana-korupsi-', '', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-08-15', '2019-08-15', '11:38:03', '98whatsapp_image_20190815_at_11.06_.07_.jpeg', 1, '', 0, '<p>Jakarta- Kementerian Dalam Negeri hingga kini terus mendorong Penegakkan Hukum Bagi Kepala Daerah dan ASN yang melakukan Tindak Pidana Korupsi (Tipikor). Pelaksana Tugas (Plt.) Dirjen Otonomi Daerah Kementerian Dalam Negeri, Akmal Malik mengatakan, penegakkan hukum dilakukan sebagai upaya melaksanakan Peraturan Presiden tentang Reformasi Birokrasi yang membutuhkan koordinasi dan komunikasi dengan sejumlah pihak. Hal itu dikatakannya dalam Pertemuan Penyelesaian Sengketa Hukum Bidang Otonomi Daerah Dalam Rangka Penegakan Hukuman Bagi Kepala Daerah dan ASN yang Melakukan Tindak Pidana Korupsi (Tipikor) di Grand Mercure Harmoni, Jakarta, Kamis (15/08/2019).</p>\r\n<p>“Kami sudah berupaya semaksimal mungkin, kami sudah melakukan koordinasi yang intensif bersama teman-teman MenPAN-RB, KPK, BKN, dan sebagainya untuk mencoba mendorong agar upaya kita untuk penegakkan hukum bagi ASN ini bisa dilaksanakan, memang fakta real yang ditemukan perbedaan data antara kami dengan BKN terus terang ada beberapa perbedaan data, itu kita luruskan, tapi komunikasi yang sangat intens kita satukan, kita tetap progres secara paralel supaya penegakkan hukum tetap kita dorong,” kata Akmal.</p>\r\n<p>Akmal menambahkan, dari total sebanyak 2.357 ASN yang harus dilakukan Pemberhentian dengan tidak hormat (PTDH), sebanyak 2.259 ASN berada di lingkup Pemerintah Daerah dan 98 orang berada di Instansi Pusat. Tercatat hingga 5 Agustus 2019, berdasarkan data penyesuaian, masih ada 168 ASN di tingkat Instansi di Daerah yang belum diproses oleh PPK. </p>\r\n<p>“Memang ada banyak faktor yang menyebabkan kurang lebih 168 orang kalau saya tidak salah angkanya yang masih belum dilakukan pemberhentian tidak hormat Pejabat Pembina Kepegawai (PPK) daerah. Rinciannya ada 10 PNS di lingkup provinsi, PNS pemerintah kabupaten/kota 139 orang, PNS di kota 19 orang, total semua kurang lebih 168 orang," kata Akmal.</p>\r\n<p>Angka itu menurut Akmal sudah mencapai progres yang cukup bagus, dari jumlah 2.345 ASN yang melakukan tindak pidana korupsi. Akmal mengungkap ada beberapa kesulitan dalam memberhentikan ASN yang korupsi.</p>\r\n<p>“Angka ini sudah progres yang cukup bagus pertama angka kota jumlah pegawai kurang lebih 2.345 dan memang kami memahami tidak mudah melakukan ini karena kejadiannya sudah cukup lama, ada beberapa diantarnya kepala daerahnya sudah tidak ada lagi, ada beberapa ASN yang sudah meninggal dunia, ada yang sudah pensiun, mutasi, dan sebagainya,” jelas Akmal.</p>\r\n<p>Ditambahkannya, penegakan hukum terhadap ASN yang melakukan pelanggaran seharusnya dilakukan oleh Pejabat Pembina Kepegawaian (PPK) di tingkat masing-masing. Sehingga kewenangannya berada pada PPK. Namun, persoalan yang dihadapi, tak mudahnya untuk mendorong PPK melakukan kewenangannya. </p>\r\n<p>“Kita mengetahui bersama UU Nomor 5 Tahun 2014 tentang ASN itu mengatakan yang diberi otoritas memberikan sanksi kepada ASN yang telah terbukti melanggar adlaah PPK. Untuk di tingkat Nasional, PPK nya ada Menteri masing-masing atau Kepala Badan, untuk Provinsi yang menjadi PPK nya Gubernur, Kota/Kabupaten PPK nya di Walikota/Bupati, kewenangan itu ada PPK. Permasalahannya yang mendorong PPK ini tidak mudah, upaya itu yang terus kita lakukan,” ungkapnya.</p>\r\n<p>Sebelumnya Mahkamah Konstitusi (MK) telah membuat Putusan yang memperkuat Surat Keputusan Bersama (SKB) untuk percepatan pemberhentian Pegawai Negeri Sipil (PNS) yang sudah Inkrach kasus Tindak Pidana Korupsi (Tipikor). Sebagaimana putusan MK Nomor 87/PUU-XVI/2018 tersebut pemberhentian PNS tidak dengan hormat, adalah bagi mereka berdasarkan putusan pengadilan yang telah berkekuatan hukum tetap  (Inkracht) karena melakukan perbuatan yang ada kaitannya dengan jabatan seperti korupsi, suap, dan lain-lain.</p>\r\n<p><sub>Puspen Kemendagri</sub></p>'),
(113, 1, 0, 0, 5, 'operator', 'Kesbangpol Gelar Bimtek Partai Politik, Ini Pesan Bupati Tanjab Timur', '', '', '', 'kesbangpol-gelar-bimtek-partai-politik-ini-pesan-bupati-tanjab-timur', '', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-08-18', '2019-08-18', '11:59:30', '97img20190718wa0034696x330.jpg', 1, '', 0, '<p><strong>Muara Sabak </strong> –  Badan Kesbangpol Kabupaten Tanjung Jabung Timur melaksanakan Bimbingan Teknis Peningkatan dan Pengembangan Kualitas Proses Politik Bagi Pengurus Partai Politik Kabupaten Tanjung Jabung Timur Tahun 2019,  Rabu, 17 Juli 2019.</p>\r\n<p>Kegiatan tersebut bertempat Aula Badan Kesbangpol dan dihadiri oleh Ketua dan Sekretaris Partai Politik Kabupaten Tanjab Timur. Bertidak sebagai pemateri yaitu Kepala Kesbangpol Provinsi Jambi, Badan Keuangan Daerah Tanjab Timur serta Kepala Inspektorat Tanjab Timur.</p>\r\n<p>Acara dibuka langsung oleh Bupati Tanjung Jabung Timur, H. Romi Hariyanto, yang diwakili oleh Kepala Badan Kesbangpol Tanjab Timur, Abdul Rasid, MH. Dalam sambutannya, Bupati menyampaikan bahwa Bimbingan teknis bantuan keuangan partai politik bagi pengurus partai politik, kita ciptakan laporan pertanggungjawaban keuangan partai politik yang tertib, transparan dan akuntabrl menuju tanjung jabung timur merakyat.</p>\r\n<p>” Tujuan agar perngelolaan keuangan partai politik mrmperoleh informasi tentang peraturan administrasi keuangan dan membuat laporan pertanggungjawaban penggunaan keuangan yang transparan, efektif, efesien, dan akuntabel. Sesuai dengan peraturan pemerintah nomor 83 Tahun 2012″ ujar Rasid saat membacakan sambutan Bupati.</p>\r\n<p>“Kegiatan bimbingan teknis ini merupakan wujud kerja sama antar pemerintah dengan partai politik dalam rangka membangun kabupaten Tanjung Jabung Timur, serta upaya dam tekad prmerintah untuk meningkatkan kualitas dalam membuat laporan keuangan yang transparan, efektif, efesien, dan akuntabel” tambahnya.</p>\r\n<p>Pemerintah memiliki kewajiaban yang salah satunya adalah melaksanakan kehidupan demokrasi yang baik, karena demokrasi adalah merupakan alat yang hasil akhirnya adalah kesejahteraan umum, serta dalam demokrasi ada tiga hal yang perlu diperhatikan yaitu keadilan, perlindungan hukum, dan kesejahteraan umum.</p>\r\n<p><em><sub>Sumber: fakta.co</sub></em></p>'),
(114, 1, 0, 0, 5, 'operator', 'Selesaikan Perkara Jalan Angkutan Sawit, Polres tanjab Timur Gelar FGD', '', '', '', 'selesaikan-perkara-jalan-angkutan-sawit-polres-tanjab-timur-gelar-fgd', '', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-08-07', '2019-08-15', '12:07:54', '307da3c5eafd0f4a68bbc0c7d761511e25.jpg', 1, '', 0, '<p><strong>Muarasabak-</strong> Guna mewujudkan terciptanya Keamanan, ketertiban dan kelancaran lalu lintas (Kamtibcarlantas), Polres Tanjung Jabung Timur (Tanjabtim( menggelar Focus Group Discussion (FGD), Rabu (7/8/2019).</p>\r\n<p>Mewakili Kapolres Tanjab Timur, Wakapolres Tanjab Timur Kompol Abilio Dos Santos didampingi Kasad Lantas Tanjab Timur, AKP Tesmirizal, Kepala Kesbangpol, Rasyid. Kabid Lalin Dishub, Rizaldi dan LSM Gaung Demokrasi, dan para undangan lainnya.</p>\r\n<p>Dalam sambutannya Wakapolres Tanjab Timur, Kompol Abilio Dos Santos menyampaikan, pada FGD ini untuk meyelesaikan permasalahan angkutan jalan transportasi sawit di Tanjab Timur.</p>\r\n<p>“FGD ini menjadi momen bersama untuk mencari solusi bersama guna meyelesaikan permasalahan angkutan jalan transportasi sawit di Kab. Tanjab Timur” katanya.</p>\r\n<p>Kasat Lantas Tanjab Timur, AKP Tesmirizal mengatakan FGD ini dilaksanakan menindak lanjuti somasi yang di lakukan oleh pihak LSM Gaung Demokrasi kepada 2 perusahaan.</p>\r\n<p>“Adanya somasi dari LSM dari Kepada 2 perusahan PT. EWF dan PT. Sungai Bahar Pasific Utama yang di sinyalir kerusakan jalan di Tanjab Timur disebabkan karena kendaraan yang di gunakaan melibihi tonase,” ungkapnya.</p>\r\n<p>“Akan tetapi jalan dari Muara Sabak menuju Jambi yang merupakan jalan Nasional sehingga tidak ada pembatasan yang mengatur kendaraan sawit harus di bawah 10 ton, oleh karena itu kami dari pihak Lantas belum bisa melakukan tindakan. Namun berdasarkan hasil FGD tadi, bahwa pihak perusahaan akan bisa membantu untuk penimbunan jalan berlubang” tambahnya.</p>\r\n<p>Sementara itu, Perwakilan LSM Gaung Demokrasi, M. Hidayatullah Dachi mengatakan terkait somasi 18 Juli 2019, pihaknya mengharapkan tanggung jawab perusahaan, kepada kerusakan jalan dan dampak lingkungan debu yang di akibatkan oleh kendaraan pengangkut sawit, yang melebihi tonase.</p>\r\n<p>Dirinya percaya sama pihak polres dan dinas perhubungan, yang mana setelah adanya diskusi ini akan ada nilai baik untuk angkutan yang mengunakan baik itu jalan Nasional, provinsi atau kabupaten.</p>\r\n<p>“Sebenarnya ini rasa kepedulian kami dengan pihak pemerintah.” tandasnya.</p>\r\n<p><sub><em>Sumber: Unggahnews.com </em></sub></p>'),
(115, 1, 0, 0, 5, 'operator', 'Pemkab Gelar Pelarungan Bunga', '', '', '', 'pemkab-gelar-pelarungan-bunga', '', '', 'Y', '', '', '', '', '', '', '', 'Rabu', '2019-08-16', '2019-08-16', '14:42:09', '5061fb_img_1566003713968.jpg', 2, '', 0, '<p>MUARASABAK- Pemerintah Kabupaten Tanjung Jabung Timur Bersama Forum Komunikasi Pimpinan Daerah (Forkompimda) melakukan Upacara Pelarungan Bunga yang bertempat di Dermaga PT Petrochina Ltd. Kegiatan ini dilaksanakan tepat sebelum Pidato Kenegaraan Presiden Republik Indonesia, pada Jumat 16/8 sekitar pukul 07.45 Wib.</p>\r\n<p>Pelarungan bunga ini disetiap tahun dilakukan yang bertujuan untuk mengenang jasa dan menghormati para Pahlawan kemerdekaan Republik Indonesia. Bertindak sebagai Pemimpin Upacara Kapolres Tanjung Jabung Timur AKBP. Agus Desri Sandi, S. IK, MM dan dihadiri oleh Bupati Kabupaten Tanjung Jabung Timur Romi Hariyanto, Wakil Bupati Kabupaten Tanjung Jabung Timur Robby Nahliyansyah, Forkopimda, para OPD, Veteran RI, serta personil TNI, Polri, dan anggota Pramuka. Setelah upacara dilanjutkan dengan pelarungan bunga diatas kapal CB. INA SELA milik PT Petrochina di perairan Sungai Batanghari. </p>\r\n<p><sub><em>Sumber: tanjabtimkab.go.id</em></sub></p>'),
(116, 1, 0, 0, 5, 'operator', 'Kesbangpol Tanjabtim Adakan Bimbingan Teknis Partai Politik', '', '', '', 'kesbangpol-tanjabtim-adakan-bimbingan-teknis-partai-politik', '', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-07-17', '2019-09-03', '11:22:45', '60whatsapp-image-20190724-at-09.17.50-1.jpeg', 4, '', 0, '<p>Badan Kesbangpol Kabupaten Tanjung Jabung Timur melaksanakan Bimbingan Teknis Peningkatan dan Pengembangan Kualitas Proses Politik Bagi Pengurus Partai Politik Kabupaten Tanjung Jabung Timur Tahun 2019 pada Rabu (17/7) kemarin. Kegiatan tersebut bertempat di Aula Badan Kesbangpol dan dihadiri oleh Ketua dan Sekretaris Partai Politik Kabupaten Tanjab Timur. Bertidak sebagai pemateri yaitu Kepala Kesbangpol Provinsi Jambi, Badan Keuangan Daerah Tanjab Timur serta Kepala Inspektorat Tanjab Timur atau yang mewakili.</p>\r\n<p>Acara dibuka langsung oleh Bupati Tanjung Jabung Timur, H. Romi Hariyanto, yang diwakili oleh Kepala Badan Kesbangpol Tanjab Timur, Abdul Rasid, MH. Dalam sambutannya, Bupati menyapaikan bahwa Bimbingan teknis bantuan keuangan partai politik bagi pengurus partai politik, kita ciptakan laporan pertanggungjawaban keuangan partai politik yang tertib, transparan dan akuntabrl menuju tanjung jabung timur merakyat.</p>\r\n<p>“Tujuan agar prngelolaan keuangan partai politik mrmperoleh informasi tentang peraturan administrasi keuangan dan membuat laporan pertanggungjawaban penggunaan keuangan yang transparan, efektif, efesien, dan akuntabel. Sesuai dengan peraturan pemerintah nomor 83 Tahun 2012″ ujar Rasid saat membacakan sambutan Bupati.</p>\r\n<div class="td-g-rec td-g-rec-id-content_inlineleft td_uid_2_5d6de9c1c427c_rand td_block_template_1 "> </div>\r\n<p>“Kegiatan bimbingan teknis ini merupakan wujud kerja sama antar pemerintah dengan partai politik dalam rangka membangun kabupaten Tanjung Jabung Timur, serta upaya dam tekad prmerintah untuk meningkatkan kualitas dalam membuat laporan keuangan yang transparan, efektif, efesien, dan akuntabel”, tambahnya.</p>\r\n<p>Pemerintah memiliki kewajiaban yang salah satunya adalah melaksanakan kehidupan demokrasi yang baik, karena demokrasi adalah merupakan alat yang hasil akhirnya adalah kesejahteraan umum, serta dalam demokrasi ada tiga hal yang perlu diperhatikan yaitu keadilan, perlindungan hukum, dan kesejahteraan umum.</p>\r\n<p> </p>\r\n<p><sub><em>sumber: investigasi.co</em></sub></p>');

-- --------------------------------------------------------

--
-- Table structure for table `daerah`
--

CREATE TABLE IF NOT EXISTS `daerah` (
  `id_daerah` int(3) NOT NULL AUTO_INCREMENT,
  `nama_daerah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_daerah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_daerah`),
  FULLTEXT KEY `seo_subdomain` (`seo_daerah`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `nama_daerah`, `seo_daerah`, `username`, `tgl_upload`) VALUES
(1, 'Kota Jambi', 'kotajambi', 'ngadmin', '2013-09-05'),
(2, 'Muarojambi', 'muarojambi', 'ngadmin', '2013-09-05'),
(3, 'Batanghari', 'batanghari', 'ngadmin', '2013-09-05'),
(4, 'Tanjab Barat', 'tanjabbar', 'ngadmin', '2013-09-05'),
(5, 'Tanjab Timur', 'tanjabtim', 'ngadmin', '2013-09-05'),
(6, 'Sarolangun', 'sarolangun', 'ngadmin', '2013-09-05'),
(7, 'Merangin', 'merangin', 'ngadmin', '2013-09-05'),
(8, 'Bungo', 'bungo', 'ngadmin', '2013-09-05'),
(9, 'Tebo', 'tebo', 'ngadmin', '2013-09-05'),
(10, 'Sungaipenuh', 'sungaipenuh', 'ngadmin', '2013-09-05'),
(11, 'Kerinci', 'kerinci', 'ngadmin', '2013-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `id_dokumen` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katdokumen` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dokumen`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `judul`, `tahun`, `keterangan`, `metode_link`, `id_katdokumen`, `nama_file`, `link_file`, `tgl_upload`, `tanggal_modif`, `username`, `sumber`, `dibaca`, `aktif`, `dl`) VALUES
(5, 'REKAPITULASI DATA ORGANISASI KEMASYARAKATAN KABUPATEN TANJUNG JABUNG TIMUR PER- JANUARI S/D JULI 2019', 2019, '', 1, 6, '41rekap-data-ormas-per-januarimei-2019.pdf', '', '2019-07-09', '2019-07-09', 'operator', '', '', 'Y', ''),
(4, 'DATA ORGANISASI KEMASYARAKATAN (ORMAS) AKTIF BADAN KESBANGPOL KABUPATEN TANJUNG JABUNG TIMUR PER- JANUARI S/D JULI 2019', 2019, '', 1, 6, '96ormas-aktif-2019.pdf', '', '2019-07-09', '2019-09-06', 'operator', '', '', 'Y', ''),
(6, 'DATA ORGANISASI KEMASYARAKATAN (ORMAS) HABIS MASA BERLAKU PADA BADAN KESBANGPOL TANJABTIM', 2019, '', 1, 6, '56ormastidakaktif2019.pdf', '', '2019-07-09', '2019-07-09', 'operator', '', '', 'Y', ''),
(8, 'KEPUTUSAN KEPALA BADAN PEMBENTUKAN SATGAS ANTI NARKOBA BADAN KESBANGPOL KABUPATEN TANJUNG JABUNG TIMUR', 2019, '', 1, 8, '78sk-badan-kesbangpol-tjt-satgas-anti-narkoba.pdf', '', '2019-09-06', '2019-09-09', 'operator', '', '', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `keterangan`, `metode_link`, `nama_file`, `link_file`, `aktif`, `username`, `tgl_posting`, `tanggal_modif`, `jam`) VALUES
(18, 'DATA ORGANISASI KEMASYARAKATAN (ORMAS) AKTIF BADAN KESBANGPOL KABUPATEN TANJUNG JABUNG TIMUR PER- JANUARI S/D JULI 2019', '', 1, '65ormas-aktif-2019.pdf', '', 'Y', 'operator', '2019-07-09', '2019-07-09', '00:00:00'),
(19, 'DATA ORGANISASI KEMASYARAKATAN (ORMAS) HABIS MASA BERLAKU PADA BADAN KESBANGPOL KABUPATEN TANJUNG JABUNG TIMUR PER- JANUARI S/D JULI 2019', '', 1, '64ormas-tidak-aktif-2019.pdf', '', 'Y', 'operator', '2019-07-09', '2019-07-09', '00:00:00'),
(20, 'REKAPITULASI DATA ORGANISASI KEMASYARAKATAN KABUPATEN TANJUNG JABUNG TIMUR PER- JANUARI S/D JULI 2019', '', 1, '18rekap-data-ormas-per-januarimei-2019.pdf', '', 'Y', 'operator', '2019-07-09', '2019-07-09', '00:00:00'),
(21, 'PEMBENTUKAN SATGAS ANTI NARKOBA BADAN KESBANGPOL KABUPATEN TANJUNG JABUNG TIMUR', '', 1, '12sk-badan-kesbangpol-tjt-satgas-anti-narkoba.pdf', '', 'Y', 'operator', '2019-09-06', '2019-09-06', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fotoberita`
--

CREATE TABLE IF NOT EXISTS `fotoberita` (
  `id_fotoberita` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_fotoberita` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_fotoberita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_fotoberita`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fotoberita`
--

INSERT INTO `fotoberita` (`id_fotoberita`, `judul_fotoberita`, `keterangan`, `gambar_fotoberita`, `dibaca`, `tanggal`, `aktif`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
('01072019197', 'Rapat Koordinasi Penanganan Konflik Sosial', '', '', 2, '2018-12-18', 'Y', '2018-12-18', '14:06:21', 'Minggu', 'operator'),
('01072019156', 'Konflik Lahan di Kecamatan Mendahara Ulu', '', '', 8, '2018-09-19', 'Y', '2019-07-01', '14:01:32', 'Selasa', 'operator'),
('28062019299', 'Kesbangpol Tanjabtim Menang Lomba PHBS Tingkat Kabupaten Tanjung Jabung Timur Tahun 2018', '', '', 26, '2018-08-30', 'Y', '2019-06-28', '13:26:25', 'Sabtu', 'operator'),
('02072019433', 'Rakor dan Sosialisasi Penguatan Rasa Solidaritas dan Ikatan Sosial di Kalangan Masyarakat', '', '', 11, '2019-06-27', 'Y', '2019-07-02', '11:57:22', 'Rabu', 'operator'),
('03072019471', 'Sosialisasi FKUB oleh Badan Kesbangpol agar Mewujudkan Pemilu Damai di Kec. Nipah Panjang Tahun 2019', '', '', 10, '2019-03-18', 'Y', '2019-07-03', '09:01:24', 'Kamis', 'operator'),
('03072019128', 'Sosialisasi FKUB oleh Badan Kesbangpol agar Mewujudkan Pemilu Damai Kec. Dendang Tahun 2019', '', '', 3, '2019-03-05', 'Y', '2019-07-03', '13:48:53', 'Kamis', 'operator'),
('03072019382', 'Sosialisasi FKUB oleh Badan Kesbangpol agar Mewujudkan Pemilu Damai di Kec. Geragai Tahun 2019', '', '', 3, '2019-03-08', 'Y', '2019-03-08', '09:09:31', 'Senin', 'operator'),
('08072019253', 'Kegiatan Jumat Bersih di Kantor kesbangpol', '<p>Kegiatan dilakukan pada Jumat, 5 Juli 2019</p>', '', 30, '2019-07-05', 'Y', '2019-07-08', '14:27:35', 'Kamis', 'operator'),
('18072019492', 'Rapat Mediasi Konflik Lahan di Kecamatan Mendahara Ulu', '', '', 3, '2019-07-16', 'Y', '2019-07-16', '10:43:38', 'Minggu', 'operator'),
('2907201939', 'Rapat Penyelesaian Sengketa Lahan', '', '', 4, '2019-07-23', 'Y', '2019-07-23', '15:25:24', 'Senin', 'operator'),
('30072019453', 'Badan Kesbangpol Melakukan Persiapan Lomba PHBS antar OPD', '', '', 9, '2019-07-30', 'Y', '2019-07-30', '10:06:44', 'Rabu', 'operator'),
('06082019418', 'Tim Juri PHBS  bersama Ibu Bupati, Ibu Wakil Bupati Serta Ibu Setda Mengunjungi Badan Kesbangpol Tahun 2019', '', '', 23, '2019-08-06', 'Y', '2019-08-06', '13:07:29', 'Kamis', 'operator'),
('1908201950', 'Badan Kesbangpol Memenangkan Lomba PHBS 2019 di Lingkup OPD Untuk Kedua Kalinya', '', '', 17, '2019-08-17', 'Y', '2019-08-17', '14:58:42', 'Kamis', 'operator'),
('03092019405', 'Kesbangpol Adakan Bimbingan Teknis Partai Politik', '', '', 5, '2019-07-17', 'Y', '2019-09-03', '11:26:49', 'Rabu', 'operator'),
('01072019209', 'Study Banding tentang Administrasi Bantuan Keuangan Bagi Partai Politik di Kota Bogor', '', '', 23, '2019-06-20', 'Y', '2019-06-20', '08:42:26', 'Rabu', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_fotoberita` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=880 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_fotoberita`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`, `tanggal`, `tanggal_modif`, `aktif`) VALUES
(757, '01072019156', 'operator', '', '', '', '25-6.jpeg', '2019-07-01', '2019-07-01', 'Y'),
(755, '01072019156', 'operator', '', '', '', '28-4.jpeg', '2019-07-01', '2019-07-01', 'Y'),
(756, '01072019156', 'operator', '', '', '', '2-5.jpeg', '2019-07-01', '2019-07-01', 'Y'),
(752, '01072019156', 'operator', '', '', '', '48-1.jpeg', '2019-07-01', '2019-07-01', 'Y'),
(753, '01072019156', 'operator', '', '', '', '54-2.jpeg', '2019-07-01', '2019-07-01', 'Y'),
(754, '01072019156', 'operator', '', '', '', '35-3.jpeg', '2019-07-01', '2019-07-01', 'Y'),
(760, '01072019197', 'operator', '', '', '', '21-sos2.jpg', '2018-12-18', '2018-12-18', 'Y'),
(761, '01072019197', 'operator', '', '', '', '63-sos4.jpeg', '2018-12-18', '2018-12-18', 'Y'),
(758, '01072019197', 'operator', '', '', '', '28-sos1.jpeg', '2018-12-18', '2018-12-18', 'Y'),
(759, '01072019197', 'operator', '', '', '', '99-sos3.jpeg', '2018-12-18', '2018-12-18', 'Y'),
(764, '28062019299', 'operator', '', '', '', '41-IMG-20180815-WA0013-ok.jpg', '2018-08-30', '2019-07-02', 'Y'),
(765, '02072019433', 'operator', '', '', '', '53-1.jpeg', '2019-07-02', '2019-07-02', 'Y'),
(766, '02072019433', 'operator', '', '', '', '10-2.jpeg', '2019-07-02', '2019-07-02', 'Y'),
(767, '02072019433', 'operator', '', '', '', '30-3.jpeg', '2019-07-02', '2019-07-02', 'Y'),
(768, '02072019433', 'operator', '', '', '', '55-4.jpeg', '2019-07-02', '2019-07-02', 'Y'),
(769, '02072019433', 'operator', '', '', '', '20-5.jpeg', '2019-07-02', '2019-07-02', 'Y'),
(770, '03072019471', 'operator', '', '', 'Sosialisasi FKUB', '4-20190318_104747.jpg', '2019-07-03', '2019-07-03', 'Y'),
(774, '03072019471', 'operator', '', '', 'Sosialisasi FKUB', '73-20190318_110603.jpg', '2019-03-18', '2019-07-03', 'Y'),
(772, '03072019471', 'operator', '', '', 'Sosialisasi FKUB', '89-20190318_110325.jpg', '2019-07-03', '2019-07-03', 'Y'),
(773, '03072019471', 'operator', '', '', 'Sosialisasi FKUB', '94-20190318_104847.jpg', '2019-07-03', '2019-07-03', 'Y'),
(775, '03072019471', 'operator', '', '', 'Sosialisasi FKUB', '39-20190318_112401.jpg', '2019-03-18', '2019-07-03', 'Y'),
(790, '03072019128', 'operator', '', '', '', '63-20190305_095301.jpg', '2019-07-03', '2019-07-03', 'Y'),
(791, '08072019253', 'operator', '', '', '', '72-20190705_085859.jpg', '2019-07-08', '2019-07-08', 'Y'),
(789, '03072019128', 'operator', '', '', '', '61-20190305_100723.jpg', '2019-07-03', '2019-07-03', 'Y'),
(788, '03072019128', 'operator', '', '', '', '69-20190305_111108.jpg', '2019-07-03', '2019-07-03', 'Y'),
(786, '03072019128', 'operator', '', '', '', '54-20190305_104414.jpg', '2019-07-03', '2019-07-03', 'Y'),
(787, '03072019128', 'operator', '', '', '', '60-20190305_100418.jpg', '2019-07-03', '2019-07-03', 'Y'),
(780, '03072019382', 'operator', '', '', 'Sosialisasi FKUB di Kec. Geragai', '74-20190308_094040.jpg', '2019-03-08', '2019-03-08', 'Y'),
(781, '03072019382', 'operator', '', '', 'Sosialisasi FKUB di Kec. Geragai', '6-20190308_093754.jpg', '2019-03-08', '2019-03-08', 'Y'),
(782, '03072019382', 'operator', '', '', 'Sosialisasi FKUB di Kec. Geragai', '22-20190308_095158.jpg', '2019-03-08', '2019-03-08', 'Y'),
(783, '03072019382', 'operator', '', '', 'Sosialisasi FKUB di Kec. Geragai', '41-20190308_104650.jpg', '2019-03-08', '2019-03-08', 'Y'),
(784, '03072019382', 'operator', '', '', 'Sosialisasi FKUB di Kec. Geragai', '18-20190308_094300.jpg', '2019-03-08', '2019-03-08', 'Y'),
(785, '03072019382', 'operator', '', '', 'Sosialisasi FKUB di Kec. Geragai', '96-20190308_094057.jpg', '2019-03-08', '2019-03-08', 'Y'),
(792, '08072019253', 'operator', '', '', '', '13-20190705_090324.jpg', '2019-07-08', '2019-07-08', 'Y'),
(821, '08072019253', 'operator', '', '', '', '23-20190705_095040.jpg', '2019-07-05', '2019-07-30', 'Y'),
(822, '08072019253', 'operator', '', '', '', '37-20190705_091535.jpg', '2019-07-05', '2019-07-30', 'Y'),
(818, '08072019253', 'operator', '', '', '', '39-20190705_101511.jpg', '2019-07-05', '2019-07-30', 'Y'),
(823, '08072019253', 'operator', '', '', '', '88-20190705_090208.jpg', '2019-07-05', '2019-07-30', 'Y'),
(817, '08072019253', 'operator', '', '', '', '71-20190705_094355.jpg', '2019-07-05', '2019-07-30', 'Y'),
(803, '18072019492', 'operator', '', '', '', '73-WhatsAppImage2019-07-17.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(815, '08072019253', 'operator', '', '', '', '59-20190705_093441.jpg', '2019-07-05', '2019-07-30', 'Y'),
(816, '08072019253', 'operator', '', '', '', '20-20190705_094406.jpg', '2019-07-05', '2019-07-30', 'Y'),
(804, '18072019492', 'operator', '', '', '', '5-WhatsAppImage2019-07-17at14.54.10.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(805, '18072019492', 'operator', '', '', '', '92-WhatsAppImage2019-07-17at14.54.14.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(806, '18072019492', 'operator', '', '', '', '39-WhatsAppImage2019-07-17at14.54.08.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(807, '18072019492', 'operator', '', '', '', '26-WhatsAppImage2019-07-17at14.54.04.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(808, '18072019492', 'operator', '', '', '', '54-WhatsAppImage2019-0717at14.54.13.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(809, '18072019492', 'operator', '', '', '', '74-WhatsAppImage2019-07-17at14.54.15.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(810, '18072019492', 'operator', '', '', '', '20-WhatsAppImager2019-07-17at14.54.10.jpeg', '2019-07-16', '2019-07-16', 'Y'),
(811, '2907201939', 'operator', '', '', '', '66-1.jpeg', '2019-07-23', '2019-07-23', 'Y'),
(812, '2907201939', 'operator', '', '', '', '93-2.jpeg', '2019-07-23', '2019-07-23', 'Y'),
(813, '2907201939', 'operator', '', '', '', '67-3.jpeg', '2019-07-23', '2019-07-23', 'Y'),
(814, '2907201939', 'operator', '', '', '', '53-4.jpeg', '2019-07-23', '2019-07-23', 'Y'),
(828, '30072019453', 'operator', '', '', '', '61-1.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(829, '30072019453', 'operator', '', '', '', '49-2.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(830, '30072019453', 'operator', '', '', '', '53-3.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(831, '30072019453', 'operator', '', '', '', '65-4.jpg', '2019-07-30', '2019-07-30', 'Y'),
(832, '30072019453', 'operator', '', '', '', '19-5.jpg', '2019-07-30', '2019-07-30', 'Y'),
(833, '30072019453', 'operator', '', '', '', '43-6.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(834, '30072019453', 'operator', '', '', '', '43-7.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(835, '30072019453', 'operator', '', '', '', '7-8.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(836, '30072019453', 'operator', '', '', '', '81-9.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(837, '30072019453', 'operator', '', '', '', '37-10.jpeg', '2019-07-30', '2019-07-30', 'Y'),
(838, '08072019253', 'operator', '', '', '', '9-a.jpg', '2019-07-05', '2019-07-30', 'Y'),
(839, '06082019418', 'operator', '', '', '', '72-IMG20190806105014.jpg', '2019-08-06', '2019-08-06', 'Y'),
(853, '06082019418', 'operator', '', '', '', '12-WhatsApp1.jpeg', '2019-08-06', '2019-08-06', 'Y'),
(841, '06082019418', 'operator', '', '', '', '15-IMG20190806110648.jpg', '2019-08-06', '2019-08-06', 'Y'),
(842, '06082019418', 'operator', '', '', '', '95-IMG20190806105951.jpg', '2019-08-06', '2019-08-06', 'Y'),
(843, '06082019418', 'operator', '', '', '', '13-IMG20190806105103.jpg', '2019-08-06', '2019-08-06', 'Y'),
(844, '06082019418', 'operator', '', '', '', '48-IMG20190806105452.jpg', '2019-08-06', '2019-08-06', 'Y'),
(845, '06082019418', 'operator', '', '', '', '2-IMG20190806105046.jpg', '2019-08-06', '2019-08-06', 'Y'),
(846, '06082019418', 'operator', '', '', '', '38-IMG20190806111207.jpg', '2019-08-06', '2019-08-06', 'Y'),
(847, '06082019418', 'operator', '', '', '', '99-IMG20190806110120.jpg', '2019-08-06', '2019-08-06', 'Y'),
(848, '06082019418', 'operator', '', '', 'Tim Juri PHBS  bersama Ibu Bupati, Ibu Wakil Bupati Serta Ibu Setda', '67-IMG20190806110350.jpg', '2019-08-06', '2019-08-06', 'Y'),
(849, '06082019418', 'operator', '', '', '', '29-IMG20190806110722.jpg', '2019-08-06', '2019-08-06', 'Y'),
(850, '06082019418', 'operator', '', '', '', '27-IMG20190806110536.jpg', '2019-08-06', '2019-08-06', 'Y'),
(854, '06082019418', 'operator', '', '', '', '20-WhatsApp2.jpeg', '2019-08-06', '2019-08-06', 'Y'),
(855, '06082019418', 'operator', '', '', '', '93-WhatsApp3.jpeg', '2019-08-06', '2019-08-06', 'Y'),
(856, '06082019418', 'operator', '', '', '', '73-WhatsApp4.jpg', '2019-08-06', '2019-08-06', 'Y'),
(857, '06082019418', 'operator', '', '', '', '9-IMG20190806105849.jpg', '2019-08-06', '2019-08-06', 'Y'),
(858, '06082019418', 'operator', '', '', '', '38-IMG20190806105857.jpg', '2019-08-06', '2019-08-06', 'Y'),
(859, '1908201950', 'operator', '', '', '', '4-IMG-20190819-WA0003.jpg', '2019-08-17', '2019-08-17', 'Y'),
(860, '1908201950', 'operator', '', '', '', '77-IMG-20190819-WA0004.jpg', '2019-08-17', '2019-08-17', 'Y'),
(861, '1908201950', 'operator', '', '', '', '38-IMG-20190819-WA0007.jpg', '2019-08-17', '2019-08-17', 'Y'),
(862, '1908201950', 'operator', '', '', '', '30-IMG-20190819-WA0010.jpg', '2019-08-17', '2019-08-17', 'Y'),
(863, '1908201950', 'operator', '', '', '', '36-IMG-20190819-WA0005.jpg', '2019-08-17', '2019-08-17', 'Y'),
(864, '1908201950', 'operator', '', '', '', '82-IMG-20190819-WA0011.jpg', '2019-08-17', '2019-08-17', 'Y'),
(865, '28062019299', 'operator', '', '', '', '56-IMG-20180817-WA0009.jpg', '2018-08-30', '2019-08-20', 'Y'),
(866, '28062019299', 'operator', '', '', '', '16-IMG-20180817-WA0016.jpg', '2018-08-30', '2019-08-20', 'Y'),
(867, '28062019299', 'operator', '', '', '', '67-IMG-20180817-WA0017.jpg', '2018-08-30', '2019-08-20', 'Y'),
(874, '03092019405', 'operator', '', '', '', '56-1.jpeg', '2019-07-17', '2019-09-03', 'Y'),
(875, '03092019405', 'operator', '', '', '', '70-2.jpeg', '2019-07-17', '2019-09-03', 'Y'),
(876, '03092019405', 'operator', '', '', '', '68-3.jpeg', '2019-07-17', '2019-09-03', 'Y'),
(877, '03092019405', 'operator', '', '', '', '53-4.jpeg', '2019-07-17', '2019-09-03', 'Y'),
(878, '03092019405', 'operator', '', '', '', '15-5.jpeg', '2019-07-17', '2019-09-03', 'Y'),
(879, '03092019405', 'operator', '', '', '', '86-6.jpeg', '2019-07-17', '2019-09-03', 'Y'),
(762, '28062019299', 'operator', '', '', 'Foto Bersama Pegawai, Staff dan PHTT dan Piala Lomba PHBS 2018', '41-IMG-20180828-WA0001-ok.jpg', '2018-08-30', '2019-07-01', 'Y'),
(751, '01072019209', 'operator', '', '', 'Foto Bersama Kepala Seksi Pembinaan Politik Kantor Kesbangpol Kota Bogor', '50-study_banding_bogor_4.jpeg', '2019-06-20', '2019-07-01', 'Y'),
(749, '01072019209', 'operator', '', '', 'Study Banding tentang Administrasi Bantuan Keuangan Bagi Partai Politik', '21-study_banding_bogor_2.jpeg', '2019-06-20', '2019-07-01', 'Y'),
(750, '01072019209', 'operator', '', '', 'Pemberian Cinderamata Kepada Kepala Seksi Pembinaan Politik Kantor Kesbangpol Kota Bogor', '58-study_banding_bogor_1.jpeg', '2019-06-20', '2019-07-01', 'Y'),
(748, '01072019209', 'operator', '', '', 'Study Banding tentang Administrasi Bantuan Keuangan Bagi Partai Politik', '77-study_banding_bogor_6.jpeg', '2019-06-20', '2019-07-01', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE IF NOT EXISTS `golongan` (
  `id_pangkat` int(2) NOT NULL AUTO_INCREMENT,
  `pangkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gol_ruang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pangkat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_pangkat`, `pangkat`, `gol_ruang`) VALUES
(1, 'JURU MUDA ', 'I/a'),
(2, 'JURU MUDA TK.I', 'I/b'),
(3, 'JURU', 'I/c'),
(4, 'JURU TK.I', 'I/d'),
(5, 'PENGATUR MUDA', 'II/a'),
(6, 'PENGATUR MUDA TK.I', 'II/b'),
(7, 'PENGATUR', 'II/c'),
(8, 'PENGATUR TK.I', 'II/d'),
(9, 'PENATA MUDA', 'III/a'),
(10, 'PENATA MUDA TK.I', 'III/b'),
(11, 'PENATA', 'III/c'),
(12, 'PENATA TK.I ', 'III/d'),
(13, 'PEMBINA', 'IV/a'),
(14, 'PEMBINA TK.I', 'IV/b'),
(15, 'PEMBINA UTAMA MUDA', 'IV/c'),
(16, 'PEMBINA UTAMA MADYA', 'IV/d'),
(17, 'PEMBINA UTAMA', 'IV/e');

-- --------------------------------------------------------

--
-- Table structure for table `halamaniklan`
--

CREATE TABLE IF NOT EXISTS `halamaniklan` (
  `id_halamaniklan` int(2) NOT NULL AUTO_INCREMENT,
  `nama_halamaniklan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_halamaniklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `halamaniklan`
--

INSERT INTO `halamaniklan` (`id_halamaniklan`, `nama_halamaniklan`) VALUES
(1, 'Halaman Home');

-- --------------------------------------------------------

--
-- Table structure for table `halamanprofil`
--

CREATE TABLE IF NOT EXISTS `halamanprofil` (
  `id_halamanprofil` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_halaman` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_halamanprofil`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `halamanprofil`
--

INSERT INTO `halamanprofil` (`id_halamanprofil`, `judul`, `judul_seo`, `isi_halaman`, `tanggal`, `tanggal_modif`, `gambar`, `text_foto`, `username`, `dibaca`, `jam`, `hari`, `aktif`) VALUES
(2, 'Visi & Misi Badan Kesatuan Bangsa dan Politik Kab. Tanjung Jabung Timur', 'visi--misi-badan-kesatuan-bangsa-dan-politik-kab-tanjung-jabung-timur', '<p><strong>VISI </strong></p>\r\n<p><strong>”Terciptanya Stabilitas Politik dan Keamanan Daerah yang Kondusif serta Tegaknya Persatuan dan Kesatuan Bangsa Menuju Tanjung Jabung Timur yang MERAKYAT”.</strong></p>\r\n<p><strong>MISI </strong></p>\r\n<ol>\r\n<li>Menciptakan Stabillitas Politik dan Tata Kehidupan Masyarakat yang Demokratis dan Harmonis;</li>\r\n<li>Menciptakan Situasi Keamanan dan Ketertiban Daerah yang Kondusif;</li>\r\n<li>Meningkatkan Kesadaran Masyarakat akan Nilai-Nilai Luhur Budaya Bangsa agar Tegaknya Persatuan dan Kesatuan Bangsa; dan</li>\r\n<li>Meningkatkan Kerukunan Antar Umat Beragama, Antar Suku dan Antar Lembaga.</li>\r\n</ol>', '2015-06-03', '2017-05-09', '', '', 'ngadmin', 12, '11:20:08', 'Rabu', 'Y'),
(10, 'Tugas Pokok & Fungsi', 'tugas-pokok--fungsi', '<p><strong>Tugas dan Fungsi Badan Kesatuan Bangsa dan Politik</strong></p>\r\n<p>Untuk melaksanakan tugas dan fungsi organisasi Badan Kesatuan Bangasa dan Politik telah diatur dengan peraturan yang ada yaitu Peraturan Daerah Kabupaten Tanjung Jabung Timur Nomor 6 Tahun 2016 tentang Pembentukkan dan Susunan Perangkat Daerah dan Peraturan Bupati Tanjung Jabung Timur Nomor 31 Tahun 2016 tentang Kedudukan, Susunan Organisasi, tugas dan Fungsi serta Tata Kerja Perangkat Daerah.</p>\r\n<p><strong>Tugas </strong></p>\r\n<p>Secara umum Institusi Badan Kesatuan Bangsa dan Politik mempunyai tugas melaksanakan urusan pemerintahan Daerah di bidang pembinaan kesatuan bangsa dan politik yang berada dibawah dan bertanggung jawab kepada Bupati. Badan Kesatuan Bangsa dan Politik dipimpin oleh Kepala Badan. Dalam melaksanakan tugas tersebut, Badan Kesatuan Bangsa dan Politik Kab. Tanjung Jabung Timur menyelenggarakan fungsi :</p>\r\n<ol>\r\n<li>Penyusunan kebijakan teknis, rencana dan program pembinaan kesatuan bangsa dan politik;</li>\r\n<li>Penyelenggaraan pembinaan ideologi pancasila dan pengembangan wawasan kebangsaan;</li>\r\n<li>Penyelenggaraan fasilitasi pengembangan hubungan antar organisasi kemasyarakatan dan antar lembaga swadaya masyarakat;</li>\r\n<li>Penyelenggaraan fasilitasi pengembangan demokrasi dan hubungan antar partai politik;</li>\r\n<li>Penyelenggaraan fasilitasi pemeliharaan stabilitas politik serta kerukunan umat beragama dan masyarakat</li>\r\n<li>Penyelenggaraan penyelesaian perselisihan masyarakat yang berpengaruh terhadap persatuan dan kesatuan bangsa;</li>\r\n<li>Pemantauan, evaluasi dan pelaporan pelaksanaan pembinaan Kesatuan Bangsa dan Politik;</li>\r\n<li>Pelaksanaan administrasi Badan Kesatuan Bangsa dan Politik; dan</li>\r\n<li>Pelaksanaan fungsi lain yang diberikan oleh Bupati sesuai dengan tugas dan fungsinya. </li>\r\n</ol>', '2017-11-21', '2019-07-03', '95img20180625wa0005-ok.jpg', '', 'ngadmin', 3, '13:20:17', 'Senin', 'Y'),
(25, 'Tupoksi Bidang Pembinaan Masyarakat dan Kesatuan Bangsa  Badan Kesbangpol Kab. Tanjabtim', 'tupoksi-bidang-pembinaan-masyarakat-dan-kesatuan-bangsa--badan-kesbangpol-kab-tanjabtim', '<p>Bidang Pembinaan Masyarakat dan Kesatuan Bangsa mempunyai tugas melaksanakan  penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan  pembinaan ideologi pancasila dan pengembangan wawasan kebangsaan serta fasilitasi pengembangan hubungan antar organisasi kemasyarakatan dan antar lembaga swadaya masyarakat.</p>\r\n<p>Bidang Pembinaan Masyarakat dan Kesatuan Bangsa dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>Pelaksanaan pembinaan organisasi kemasyarakatan serta pengamalan ideologi pancasila dan pengembangan wawasan kebangsaaan;</li>\r\n<li>Pelaksanaan program peresepan ideologi pancasila dan nilai-nilai luhur budaya bangsa bagi aparatur pemerintah dan masyarakat;</li>\r\n<li>Pelaksanaan kegiatan yang berhubungan dengan kependudukan, kewarganegaraan, pembauran sesama warga negara dalam rangka pengembangan kepribadian bangsa sesuai dengan moral pancasila;</li>\r\n<li>Pelaksanaan komunikasi, konsultasi dan kerjasama dengan organisasi kemasyarakatan, instansi pemerintah dan lembaga sosial politik dalam rangka pembinaan dan pemeliharaan stabilitas politik;</li>\r\n<li>Pelaksanaan fasilitasi komunikasi dan hubungan dengan lembaga kemasyarakatan dan keagamaan dalam menjaga kesatuan bangsa; dan</li>\r\n<li>Pelaksanaan kegiatan bela negara serta fasilitasi kegiatan ketahanan bangsa yang dilaksanakan oleh organisasi kemasyarakatan atau yang lainnya.</li>\r\n</ol>', '2019-07-04', '2019-07-04', '', '', 'operator', 1, '08:44:14', 'Sabtu', 'Y'),
(26, 'Tupoksi Bidang Pembinaan Politik dan Ketentraman Badan Kesbangpol Kab. Tanjabtim', 'tupoksi-bidang-pembinaan-politik-dan-ketentraman-badan-kesbangpol-kab-tanjabtim', '<p>Bidang Pembinaan Politik dan Ketentraman mempunyai tugas melaksanakan  penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan fasilitasi pengembangan demokrasi dan hubungan antar partai politik, fasilitasi              pemeliharaan stabilitas politik dan pemantapan ketentraman.</p>\r\n<p>Bidang Pembinaan Politik dan Ketentraman dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>Pelaksanaan fasilitasi kegiatan yang berhubungan dengan penyelenggaraan pemilihan umum;</li>\r\n<li>Pelaksanaan fasilitasi partai politik dan pembinaan hubungan antar lembaga;</li>\r\n<li>Pelaksanaan pembinaan dan pendidikan politik bagi masyarakat;</li>\r\n<li>Pelaksanaan komunikasi, konsultasi dan kerjasama dengan seluruh stakeholder dalam rangka pemeliharaan stabilitas politik serta kerukunan                umat beragama dan masyarakat;</li>\r\n<li>Pelaksanaan kegiatan pembinaan dan pengamatan dalam rangka memelihara stabilitas politik serta kerukunan umat beragama dan masyarakat;</li>\r\n<li>Pelaksanaan fasilitasi kegiatan forum kerukuman umat beragama; dan</li>\r\n<li>Pelaksanaan fasilitasi penyelesaian perselisihan masyarakat yang berpengaruh terhadap persatuan dan kesatuan bangsa.</li>\r\n</ol>', '2019-07-04', '2019-07-04', '', '', 'operator', 1, '08:52:55', 'Sabtu', 'Y'),
(27, 'Program dan Kegiatan', 'program-dan-kegiatan', '<p><strong>PROGRAM DAN KEGIATAN </strong><strong>BIDANG BINMAS</strong></p>\r\n<hr>\r\n<ul>\r\n<li><strong>PROGRAM PENGEMBANGAN WAWASAN KEBANGSAAN</strong></li>\r\n</ul>\r\n<ol>\r\n<li>KEGIATAN KESADARAN MASYARAKAT AKAN NILAI – NILAI LUHUR BUDAYA BANGSA</li>\r\n<li>KEGIATAN LOMBA CIPTA KARYA TULIS ILMIAH</li>\r\n<li>KEGIATAN PENDIDIKAN WAWASAN KEBANGSAAN</li>\r\n<li>KEGIATAN PENGUATAN DAN PEMBINAAN REVOLUSI MENTAL</li>\r\n<li>KEGIATAN PENERBITAN/MONITORING/EVALUASI DAN PELAPORAN REKOMENDASI PENELITIAN</li>\r\n</ol>\r\n<ul>\r\n<li><strong>PROGRAM KEMITRAAN PENGEMBANGAN WAWASAN KEBANGSAAN</strong></li>\r\n</ul>\r\n<ol>\r\n<li>KEGIATAN PEMBINAAN FORUM KERUKUNAN UMAT BERAGAMA (FKUB)</li>\r\n<li>KEGIATAN PENDATAAN ORMAS DAN RUMAH IBADAH</li>\r\n<li>KEGIATAN PENINGKATAN PENGAWASAN ALIRAN KEPERCAYAAN MASAYARAKAT (PAKEM)</li>\r\n<li>KEGIATAN PENINGKATAN RASA SOLIDARITAS DAN IKATAN SOSIAL DIKALANGANAN MASYARAKAT</li>\r\n<li>KEGIATAN PEMBINAAN DAN PEMBERDAYAAN ORGANISASI KEMASYARAKATAN</li>\r\n</ol>\r\n<ul>\r\n<li><strong>PROGRAM PENINGKATAN PEMBERANTASAN PENYAKIT MASYARAKAT (PEKAT)</strong></li>\r\n</ul>\r\n<ol>\r\n<li>KEGIATAN PENYULUHAN BAHAYA NARKOBA, MINUMAN KERAS, PROSTITUSI, PREMANISME, DAN PERJUDIAN</li>\r\n</ol>\r\n<p> </p>\r\n<p><strong>PROGRAM DAN KEGIATAN </strong><strong>BIDANG BINPOLTRAM</strong></p>\r\n<hr>\r\n<ul>\r\n<li> <strong>PROGRAM PEMBERDAYAAN MASYARAKAT UNTUK MENJAGA KETERTIBAN DAN KEAMANAN</strong></li>\r\n</ul>\r\n<ol>\r\n<li>KEGIATAN PEMBINAAN DAN PEMANTAPAN KOMINDA</li>\r\n<li>KEGIATAN PEMBINAAN DAN PEMANTAPAN FORUM KEWASPADAAN DINI MASYARAKAT (FKDM)</li>\r\n<li>KEGIATAN PEMANTAUAN DAN PENGAWASAN ORANG ASING, LSM ASING & TENAGA KERJA ASING</li>\r\n<li>KEGIATAN PENANGAN KONFLIK SOSIAL</li>\r\n</ol>\r\n<ul>\r\n<li><strong>PROGRAM PENDIDIKAN POLITIK MASYARAKAT</strong></li>\r\n</ul>\r\n<ol>\r\n<li>KEGIATAN SOSIALISASI PERATURAN PERUNDANG-UNDANGAN TENTANG UNDANG-UNDANG BIDANG POLITIK </li>\r\n<li>KEGIATAN PENINGKATAN DAN PENGEMBANGAN KUALITAS PROSES POLITIK BAGI PENGURUS PARPOL</li>\r\n<li>KEGIATAN PENGUATAN FOCUS GROUF DECISION (FGD)</li>\r\n</ol>\r\n<ul>\r\n<li><strong>PROGRAM PERWUJUDAN PENGUATAN DEMOKRASI YANG MAKIN KOKOH</strong></li>\r\n</ul>\r\n<ol>\r\n<li>KEGIATAN SOSIALISASI UNDANG-UNDANG PEMILU NO. 7 TAHUN 2017</li>\r\n</ol>\r\n<p> </p>', '2019-07-08', '2019-07-08', '', '', 'operator', 5, '11:01:01', 'Kamis', 'Y'),
(28, 'Sambutan Kepala Badan Kesatuan Bangsa dan Politik', 'sambutan-kepala-badan-kesatuan-bangsa-dan-politik', '<p>Assalamu’alaikum Wr. Wb.</p>\r\n<p>Puji syukur kami panjatkan kehadirat Allah SWT yang telah melimpahkan Rahmat Taufiq dan Hidayah-Nya, sehingga Website Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur dapat terselesaikan dan tersajikan. Website ini berisi gambaran secara umum tentang profil dan kegiatan-kegiatan yang telah dilakukan oleh Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Pembuatan website ini disamping sejalan dengan perkembangan teknologi informasi dan komunikasi, juga bertujuan untuk memenuhi tingginya tuntutan masyarakat akan informasi.</p>\r\n<p>Diharapkan Website Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur dapat memberikan informasi yang bermanfaat bagi kebutuhan Informasi pembaca dan mampu menjadi sarana komunikasi yang positif.</p>\r\n<p>Semoga dengan diluncurkannya Website Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur ini akan dapat mendukung peningkatan efisiensi, efektifitas, transparansi dan akuntabilitas penyelenggaraan pemerintahan.</p>\r\n<p>Tidak lupa kami mengucapkan terima kasih kepada semua pihak yang telah membantu dan berkontribusi dalam pembangunan website.</p>\r\n<p>Kami menyadari bahwa Website Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur ini masih jauh dari sempurna, maka dengan kerendahan hati kami berterima kasih atas kritik dan saran yang membangun terhadap perbaikan isi Website Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur ini</p>\r\n<p> Wassalamu’alaikum Wr. Wb</p>', '2019-07-24', '2019-07-24', '', '', 'muh.ramadhan', 31, '18:55:38', 'Rabu', 'Y'),
(9, 'Struktur Organisasi', 'struktur-organisasi', '<p>Struktur Organisasi Dinas Badan Kesatuan Bangsa dan Politik Kab. Tanjung Jabung Timur</p>', '2017-10-12', '2019-07-16', '94strukturkesbangpolnew.jpg', 'Struktur Organisasi Dinas Badan Kesatuan Bangsa dan Politik Kab. Tanjung Jabung Timur', 'ngadmin', 6, '11:44:58', 'Senin', 'Y'),
(23, 'Tugas dan Wewenang Sekretariat Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur', 'tugas-dan-wewenang-sekretariat-badan-kesatuan-bangsa-dan-politik-kabupaten-tanjung-jabung-timur', '<p>Sekretariat mempunyai tugas memberikan pelayanan teknis dan administratif kepada seluruh satuan organisasi di lingkungan Badan Kesatuan Bangsa dan Politik.</p>\r\n<p>Sekretariat dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>Pelaksanaan koordinasi dan penyusunan rencana anggaran;</li>\r\n<li>Pengelolaan urusan kepegawaian;</li>\r\n<li>Pengelolaan urusan keuangan;</li>\r\n<li>Pelaksanaan urusan tata usaha; dan</li>\r\n<li>Pengelolaan urusan umum.</li>\r\n</ol>', '2019-06-28', '2019-06-28', '', '', 'operator', 4, '11:50:49', 'Sabtu', 'Y'),
(15, 'Alamat E-mail OPD', 'alamat-email-opd', '<table width="744">\r\n<tbody>\r\n<tr>\r\n<td width="28">NO</td>\r\n<td width="287">OPD</td>\r\n<td width="136">NAMA OPERATOR/  CONTACT PERSON</td>\r\n<td colspan="3" width="191">EMAIL KANTOR</td>\r\n<td width="102">KETERANGAN</td>\r\n</tr>\r\n<tr>\r\n<td width="28">1</td>\r\n<td width="287">SEKRETARIAT DAERAH </td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:setda@tanjabtimkab.go.id">setda@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">2</td>\r\n<td width="287">SEKRETARIAT DEWAN PERWAKILAN RAKYAT DAERAH </td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:sekwan@tanjabtimkab.go.id">sekwan@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">3</td>\r\n<td width="287">BADAN PENANGULANGAN BENCANA DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bpbd@tanjabtimkab.go.id">bpbd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">4</td>\r\n<td width="287">BADAN KESATUAN BANGSA DAN POLITIK</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:kesbangpol@tanjabtimkab.go.id">kesbangpol@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">5</td>\r\n<td width="287">BADAN KEUANGAN DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bkd@tanjabtimkab.go.id">bkd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">6</td>\r\n<td width="287">BADAN PERENCANAAN PEMBANGUNAN DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bappeda@tanjabtimkab.go.id">bappeda@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">7</td>\r\n<td width="287">BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bkpsdmd@tanjabtimkab.go.id">bkpsdmd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">8</td>\r\n<td width="287">BADAN PENELITIAN DAN PENGEMBANGAN DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:litbang@tanjabtimkab.go.id">litbang@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">9</td>\r\n<td width="287">INSPEKTORAT</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:inspektorat@tanjabtimkab.go.id">inspektorat@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">10</td>\r\n<td width="287">DINAS PERPUSTAKAAN DAN KEARSIPAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:perpus@tanjabtimkab.go.id">perpus@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">11</td>\r\n<td width="287">DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dpmptsp@tanjabtimkab.go.id">dpmptsp@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">12</td>\r\n<td width="287">SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAKARAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:polpp@tanjabtimkab.go.id">polpp@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">13</td>\r\n<td width="287">DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dinsos@tanjabtimkab.go.id">dinsos@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">14</td>\r\n<td width="287">DINAS PARIWISATA, KEBUDAYAAN, PEMUDA DAN OLAH RAGA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disbudparpora@tanjabtimkab.go.id">disbudparpora@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">15</td>\r\n<td width="287">DINAS PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:ppkb@tanjabtimkab.go.id">ppkb@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">16</td>\r\n<td width="287">DINAS KOMUNIKASI DAN INFORMATIKA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:diskominfo@tanjabtimkab.go.id">diskominfo@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">17</td>\r\n<td width="287">DINAS PERUMAHAN DAN KAWASAN PERMUKIMAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:perkim@tanjabtimkab.go.id">perkim@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">18</td>\r\n<td width="287">DINAS PERHUBUNGAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dishub@tanjabtimkab.go.id">dishub@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">19</td>\r\n<td width="287">DINAS TENAGA KERJA DAN TRANSMIGRASI</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:nakertrans@tanjabtimkab.go.id">nakertrans@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">20</td>\r\n<td width="287">DINAS PERKEBUNAN DAN PETERNAKAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disbunak@tanjabtimkab.go.id">disbunak@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">21</td>\r\n<td width="287">DINAS TANAMAN PANGAN DAN HORTIKULTURA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dtph@tanjabtimkab.go.id">dtph@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">22</td>\r\n<td width="287">DINAS PEKERJAAN UMUM DAN PENATAAN RUANG</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:pupr@tanjabtimkab.go.id">pupr@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">23</td>\r\n<td width="287">DINAS PENDIDIKAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disdik@tanjabtimkab.go.id">disdik@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">24</td>\r\n<td width="287">DINAS KESEHATAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dinkes@tanjabtimkab.go.id">dinkes@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">25</td>\r\n<td width="287">DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dukcapil@tanjabtimkab.go.id">dukcapil@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">26</td>\r\n<td width="287">DINAS PEMBERDAYAAN MASYARAKAT DAN DESA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:pmd@tanjabtimkab.go.id">pmd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">27</td>\r\n<td width="287">DINAS PERINDUSTRIAN DAN PERDAGANGAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disperindag@tanjabtimkab.go.id">disperindag@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">28</td>\r\n<td width="287">DINAS KOPERASI DAN USAHA KECIL DAN MENENGAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:koperasi@tanjabtimkab.go.id">koperasi@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">29</td>\r\n<td width="287">DINAS KETAHANAN PANGAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dkp@tanjabtimkab.go.id">dkp@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">30</td>\r\n<td width="287">DINAS LINGKUNGAN HIDUP</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dlh@tanjabtimkab.go.id">dlh@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">31</td>\r\n<td width="287">DINAS PERIKANAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:perikanan@tanjabtimkab.go.id">perikanan@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">32</td>\r\n<td width="287">RUMAH SAKIT UMUM NURDIN HAMZAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:rsudnh@tanjabtimkab.go.id">rsudnh@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n</tbody>\r\n</table>', '2018-11-27', '2018-11-27', '', '', 'ngadmin', 4, '15:06:17', 'Selasa', 'Y'),
(24, 'Tupoksi Bidang Bina Program Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur', 'tupoksi-bidang-bina-program-badan-kesatuan-bangsa-dan-politik-kabupaten-tanjung-jabung-timur', '<p>Bidang Bina Program mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan penyusunan rencana program serta evaluasi dan pelaporan pelaksanaan program pembinaan kesatuan bangsa dan politik.</p>\r\n<p>Bidang Bina Program dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan koordinasi dan penyusunan rencana program pembinaan kesatuan bangsa dan politik;</li>\r\n<li>pelaksanaan pengumpulan, pengolahan, penyajian data dan informasi yang berkaitan dengan pelaksanaan program pembinaan kesatuan bangsa dan politik; dan</li>\r\n<li>pelaksanaan monitoring, evaluasi serta penyusunan laporan penyelenggaraan program pembinaan kesatuan bangsa dan politik.</li>\r\n</ol>', '2019-07-04', '2019-07-04', '', '', 'operator', 7, '08:23:37', 'Sabtu', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE IF NOT EXISTS `halamanstatis` (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_halaman` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `text_foto`, `username`, `dibaca`, `jam`, `hari`) VALUES
(1, 'Sekretariat KPU Provinsi Jambi', 'sekretariat-kpu-provinsi-jambi', '<p><strong>Sekretaris</strong>&nbsp;: Drs. H. HERI MUJONO</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Kepala Bagian Keuangan, Umum &amp; Logistik : </strong>KHOIRUL BAHRI LUBIS, S.Sos<strong><br /></strong></p>\r\n<p><strong>Kepala Bagian Hukum, Teknis &amp; Hupmas : </strong>NASUHAIDI, S.Pd., S.Sos., M.Si<strong><br /></strong></p>\r\n<p><strong>Kepala Bagian SDM, Program &amp; Data : </strong>ARMEN SIREGAR, SE<strong><br /></strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Kabag Keuangan: </strong>H. KAZIM, S.Sos</p>\r\n<p><strong>Kasubbag Umum &amp; Logistik :</strong> THAMRIN</p>\r\n<p><strong>Kasubbag Hukum : </strong>INDARTO PRIYADI, SH<strong><br /></strong></p>\r\n<p><strong>Kasubbag Teknis &amp; Hupmas : </strong>MUHAMMAD ASFIHANI, SE., ME.<strong><br /></strong></p>\r\n<p><strong>Kasubbag SDM : </strong>SRI ASTUTI, SE<strong><br /></strong></p>\r\n<p><strong>Kasubbag Program Dan Data&nbsp;</strong>: SAYUTI, SE</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Staf Keuangan </strong>:</p>\r\n<ul>\r\n<li>Garmien Melia, S.IP</li>\r\n<li>Prenadia Paramita, SE</li>\r\n<li>Paisul Amdani Lubis, A.Md</li>\r\n</ul>\r\n<p><strong>Staf Umum &amp; Logistik </strong>:</p>\r\n<ul>\r\n<li>Ningsihati, S.Pd.I</li>\r\n<li>Ryen Arisandi, SH</li>\r\n<li>Adi Susanto, A.Md</li>\r\n<li>Kiki Maryatul Qibtiyah</li>\r\n<li>Edi Sanjaya</li>\r\n</ul>\r\n<p><strong>Staf Hukum&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Nina Sopia, SE</li>\r\n<li>Ratna Juwita, S.IP</li>\r\n<li>Jifrimon, S.IP</li>\r\n</ul>\r\n<p><strong>Staf Teknis dan Hupmas</strong>&nbsp;:</p>\r\n<ul>\r\n<li>Abdul Aziz, SE</li>\r\n<li>Arnawati</li>\r\n</ul>\r\n<p><strong>Staf SDM </strong>:</p>\r\n<ul>\r\n<li>Dedy Herawan, S.Kom</li>\r\n</ul>\r\n<p><strong>Staf Program &amp; Data</strong> :</p>\r\n<ul>\r\n<li>Zainah, SE</li>\r\n<li>Agung Nugroho, S.IP</li>\r\n</ul>', '2015-06-02', '', '', 'admin', 2960, '23:46:44', 'Selasa'),
(2, 'VISI & MISI KPU PROVINSI JAMBI', 'visi--misi-kpu-provinsi-jambi', '<p style="text-align: left;"><strong>VISI</strong></p>\r\n<p style="text-align: left;" align="justify">Terwujudnya Komisi Pemilihan Umum sebagai penyelenggara Pemilihan Umum yang memiliki integritas, profesional, mandiri, transparan dan akuntabel, demi terciptanya demokrasi Indonesia yang berkualitas berdasarkan Pancasila dan UUD 1945 dalam wadah Negara Kesatuan Republik Indonesia.<br /><br /><strong>MISI</strong></p>\r\n<ol>\r\n<li style="text-align: left;">\r\n<p align="justify">Membangun lembaga penyelenggara Pemilihan Umum yang memiliki kompetensi, kredibilitas dan kapabilitas dalam menyelenggarakan Pemilihan Umum;</p>\r\n</li>\r\n<li style="text-align: left;">\r\n<p align="justify">Menyelenggarakan Pemilihan Umum untuk memilih Anggota Dewan Perwakilan Rakyat, Dewan Perwakilan Daerah, Dewan Perwakilan Rakyat Daerah, Presiden dan Wakil Presiden serta Kepala Daerah dan Wakil Kepala Daerah secara langsung, umum, bebas, rahasia, jujur, adil, akuntabel, edukatif dan beradab;</p>\r\n</li>\r\n<li style="text-align: left;">\r\n<p align="justify">Meningkatkan kualitas penyelenggaraan Pemilihan Umum yang bersih, efisien dan efektif;</p>\r\n</li>\r\n<li style="text-align: left;">\r\n<p align="justify">Melayani dan memperlakukan setiap peserta Pemilihan Umum secara adil dan setara, serta menegakkan peraturan Pemilihan Umum secara konsisten sesuai dengan peraturan perundang-undangan yang berlaku;</p>\r\n</li>\r\n<li>\r\n<p style="text-align: left;" align="justify">Meningkatkan kesadaran politik rakyat untuk berpartisipasi aktif dalam Pemilihan Umum demi terwujudnya cita-cita masyarakat Indonesia yang demokratis.</p>\r\n</li>\r\n</ol>', '2015-06-03', '', '', 'admin', 2452, '11:20:08', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE IF NOT EXISTS `identitas` (
  `id_identitas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kantor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foursquare` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bottom` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmap` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `kantor`, `twiter`, `youtube`, `foursquare`, `instagram`, `googleplus`, `email`, `alamat`, `title_bottom`, `copyright`, `url`, `facebook`, `no_telp`, `fax`, `gmap`, `meta_deskripsi`, `meta_keyword`, `favicon`, `logo`) VALUES
(1, 'Badan Kesatuan Bangsa dan Politik', 'Badan Kesatuan Bangsa dan Politik Kabupaten Tanjung Jabung Timur', 'kesbangtanjabtimkab', 'kesbangtanjabtimkab', 'kesbangtanjabtimkab', 'kesbangtanjabtimkab', 'kesbangtanjabtimkab', 'kesbangpol@tanjabtimkab.go.id kesbangpolkabtjt@gmail.com', 'Jl. Komplek Perkantoran Tanjung Jabung Timur Kelurahan Rano', '', '', 'kesbang.tanjabtimkab.go.id', 'kesbangtanjabtimkab', '(0740) 7370055', '', '', 'KESBANG.TANJABTIMKAB.GO.ID merupakan Official Website Badan Kesatuan Bangsa dan Politik Kab. Tanjung Jabung Timur.', 'kesbang tanjabtim, zumi zola, tanjabtim, tanjab timur, tanjung jabung timur, politik, FKUB, ideologi, kesbangpol, ', '', '49kesbang-web234.png');

-- --------------------------------------------------------

--
-- Table structure for table `ijazah`
--

CREATE TABLE IF NOT EXISTS `ijazah` (
  `id_ijazah` int(2) NOT NULL AUTO_INCREMENT,
  `nama_ijazah` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ijazah`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ijazah`
--

INSERT INTO `ijazah` (`id_ijazah`, `nama_ijazah`) VALUES
(1, 'SD / MI / Sederajat'),
(2, 'SMP / MTs / Sederajat'),
(3, 'SMA / SMK / Sederajat'),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE IF NOT EXISTS `iklan` (
  `id_iklan` int(4) NOT NULL AUTO_INCREMENT,
  `id_mode` int(2) NOT NULL,
  `mobile` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan_mobile` int(3) NOT NULL,
  `id_halamaniklan` int(2) NOT NULL,
  `id_posisiiklan` int(2) NOT NULL,
  `urutan` int(2) NOT NULL,
  `nama_iklan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `tanggal_modif` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_iklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `imageslide`
--

CREATE TABLE IF NOT EXISTS `imageslide` (
  `id_imageslide` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_imageslide`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `imageslide`
--

INSERT INTO `imageslide` (`id_imageslide`, `judul`, `aktif`, `keterangan`, `gambar`, `urutan`, `tgl_upload`, `tgl_modif`, `username`) VALUES
(2, 'Foto Bersama Pegawai, Staff dan PHTT Kesbangpol Tanjabtim', 'Y', ' ', '27img20180625wa0005-ok.jpg', 0, '2019-06-28', '2019-06-28', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `jabatankomisioner`
--

CREATE TABLE IF NOT EXISTS `jabatankomisioner` (
  `id_jabatankomisioner` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jabatankomisioner` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatankomisioner_seo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_jabatankomisioner`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jabatankomisioner`
--

INSERT INTO `jabatankomisioner` (`id_jabatankomisioner`, `nama_jabatankomisioner`, `jabatankomisioner_seo`) VALUES
(1, 'Ketua KPU', 'ketua-kpu'),
(2, 'Anggota KPU', 'anggota-kpu');

-- --------------------------------------------------------

--
-- Table structure for table `jabatanpegawai`
--

CREATE TABLE IF NOT EXISTS `jabatanpegawai` (
  `id_jabatan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jabatanpegawai` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_seo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `jabatanpegawai`
--

INSERT INTO `jabatanpegawai` (`id_jabatan`, `nama_jabatanpegawai`, `jabatan_seo`, `aktif`, `username`) VALUES
(1, 'Kepala Badan', '', 'Y', 'ngadmin'),
(2, 'Sekretaris Badan', '', 'Y', 'ngadmin'),
(3, 'Kabid Binpoltram', ' ', 'Y', 'ngadmin'),
(4, 'Kabid Bina Program', ' ', 'Y', 'ngadmin'),
(5, 'Kabid Binmas & Kesbang', ' ', 'Y', 'ngadmin'),
(6, 'Kasubbid Pembinaan Ideologi & Kesatuan Bangsa', ' ', 'Y', 'ngadmin'),
(7, 'Kasubbid Lembaga Kemasyarakatan & Keagamaan', ' ', 'Y', 'ngadmin'),
(8, 'Kasubbid Perencanaan & Penyusunan Program', ' ', 'Y', 'ngadmin'),
(9, 'Kasubbid Evaluasi & Pelaporan', ' ', 'Y', 'ngadmin'),
(10, 'Kasubbid Pemilu & Hubungan Antar Lembaga', ' ', 'Y', 'ngadmin'),
(11, 'Kasubbid Pengamanan Politik & Ketentraman', ' ', 'Y', 'ngadmin'),
(12, 'Kasubbag Perencanaan', ' ', 'Y', 'ngadmin'),
(13, 'Kasubbag Umum', ' ', 'Y', 'ngadmin'),
(14, 'Kasubbag Keuangan', ' ', 'Y', 'ngadmin'),
(15, 'Staf Pelaksana', ' ', 'Y', 'ngadmin'),
(22, 'PHTT', '', 'Y', 'ngadmin'),
(23, 'Operator Komputer', '', 'Y', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `katdokumen`
--

CREATE TABLE IF NOT EXISTS `katdokumen` (
  `id_katdokumen` int(3) NOT NULL AUTO_INCREMENT,
  `nama_katdokumen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_katdokumen`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `katdokumen`
--

INSERT INTO `katdokumen` (`id_katdokumen`, `nama_katdokumen`, `aktif`, `username`, `keterangan`) VALUES
(1, 'RPJMD', 'N', '', 'Statistik'),
(5, 'Daftar Website Lingkup Organisasi Perangkat Daerah Tahun 2018 Dinas KOMINFO Kab. Tanjung Jabung Timu', 'N', 'ngadmin', ''),
(6, 'DATA ORGANISASI KEMASYARAKATAN (ORMAS) ', 'Y', 'operator', ''),
(7, 'asdsadasdasd', 'N', 'operator', ''),
(8, 'KEPUTUSAN KEPALA BADAN', 'Y', 'operator', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`) VALUES
(1, 'Berita Tanjabtim', '', 'berita-tanjabtim', 'Y'),
(2, 'Berita Kementrian', '', 'berita-kementrian', 'Y'),
(3, 'Berita Umum', '', 'berita-umum', 'Y'),
(4, 'Berita Provinsi', 'operator', 'berita-provinsi', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `katlaporan`
--

CREATE TABLE IF NOT EXISTS `katlaporan` (
  `id_katlaporan` int(3) NOT NULL AUTO_INCREMENT,
  `nama_katlaporan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_katlaporan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `katlaporan`
--

INSERT INTO `katlaporan` (`id_katlaporan`, `nama_katlaporan`) VALUES
(1, 'SP2HP RESKRIM'),
(2, ' SP2HP LANTAS');

-- --------------------------------------------------------

--
-- Table structure for table `katprodukhukum`
--

CREATE TABLE IF NOT EXISTS `katprodukhukum` (
  `id_katprodukhukum` int(3) NOT NULL AUTO_INCREMENT,
  `nama_katprodukhukum` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_katprodukhukum`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `katprodukhukum`
--

INSERT INTO `katprodukhukum` (`id_katprodukhukum`, `nama_katprodukhukum`, `keterangan`, `aktif`, `username`) VALUES
(1, 'Undang Undang', 'undang-undang', 'Y', 'ngadmin'),
(2, 'Peraturan Pemerintah', 'peraturan-presiden', 'Y', 'ngadmin'),
(10, 'Keputusan Bupati', '', 'Y', 'ngadmin'),
(12, 'Peraturan Kemendagri', '', 'Y', 'operator'),
(14, 'Keputusan Kepala Badan', '', 'N', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE IF NOT EXISTS `kegiatan` (
  `id_kegiatan` int(3) NOT NULL AUTO_INCREMENT,
  `namakegiatan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `pengisi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwalkegiatan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_kegiatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=95 ;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `namakegiatan`, `tgl_kegiatan`, `pengisi`, `waktu`, `tempat`, `perihal`, `jadwalkegiatan`, `gambar`, `aktif`, `username`, `tgl_upload`) VALUES
(82, 'Rapat Paripurna ke-20', '2019-08-01', '', '10.00 WIB', 'Gedung DPRD Kab. Tanjab Timur', 'Undangan', ' Rapat Paripurna ke-20 Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Pendapat Akhir Fraksi-Fraksi DPRD Terhadap Rancangan KUA dan PPAS TA. 2020', '', 'Y', 'operator', '2019-08-01'),
(78, 'Evaluasi Progres Pelaksanaan Asistensi SAKIP Perangkat Daerah di Lingkup Kab. Tanjabtim', '2019-07-30', '', '08.30 WIB', 'Ruang Aula Kantor Bupati', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-29'),
(79, 'Rapat Tim Status Hukum PNS', '2019-07-29', '', '14.00 WIB', 'Ruang Kerja Asisten Administrasi Umum Setda Kab. Tanjabtim', 'Undangan ', ' Rapat Tim Status Hukum PNS, dengan agenda pembahasan dan penetapan (pemberian atau penolakan) ijin untuk melaksanakan perceraian PNS', '', 'Y', 'operator', '2019-07-29'),
(80, 'Sosialisasi Kegiatan Wawasan kebangsaan', '2019-07-31', '', '08.00 WIB', 'Aula Badan Kesbangpol Tanjabtim', 'Sosialisasi', ' ', '', 'Y', 'operator', '2019-07-31'),
(81, 'Rapat Paripurna ke-19', '2019-07-31', '', '14.00 WIB', 'Gedung DPRD Kab. Tanjab Timur', 'Undangan', ' Rapat Paripurna ke-19 Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Laporan Banggar Terhadap Rancangan KUA dan PPAS T.A. 2020 Sekaligus Penyampaian Nota Rancangan KUPA dan PPAS Perubahan T.A. 2019', '', 'Y', 'operator', '2019-08-01'),
(83, 'Rapat Paripurna ke-21', '2019-08-01', '', '14.00 WIB', 'Gedung DPRD Kab. Tanjab Timur', 'Undangan', 'Rapat Paripurna ke-21 Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Pandangan Umum Fraksi-Fraksi DPRD Terhadap Rancangan KUPA dan PPAS Perubahan Tahun Anggaran 2019', '', 'Y', 'operator', '2019-08-01'),
(84, 'Rapat Paripurna ke-22', '2019-08-02', '', '10.00 WIB', 'Gedung DPRD Kab. Tanjab Timur', 'Undangan', ' Rapat Paripurna ke-22 Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Tanggapan Bupati atas Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Tanggapan Bupati atas PandanganUmum Fraksi-Fraksi DPRD Terhadap Rancangan KUPA dan PPAS Perubahan TA. 2019', '', 'Y', 'operator', '2019-08-01'),
(85, 'Rapat Pemantapan dalam Rangka mensukseskan penyelenggaraan peringatan HUT ke-74 Kemerdekaan RI Tahun 2019 di Kabupaten Tanjung Jabung Timur', '2019-08-13', '', '09.00 WIB', 'Ruang Aula Kantor Bupati Tanjung Jabung Timur', 'Undangan', 'Rapat Pemantapan dalam Rangka mensukseskan penyelenggaraan peringatan HUT ke-74 Kemerdekaan RI Tahun 2019 di Kabupaten Tanjung Jabung Timur', '', 'Y', 'operator', '2019-08-16'),
(86, 'Pelantikan dan Pelatihan Tingkat Dasar (PELTIDAS) ', '2019-08-14', '', '09.00 WIB', 'Aula Badan Kesbangpol Provinsi Jambi', 'Undangan', 'Pelantikan dan Pelatihan Tingkat Dasar (PELTIDAS) yang akan diikuti oleh Satu Komisi Daerah (KOMDA) dan Tiga Komisi Cabang (KOMCAB) LP-KPK Kabupaten dan Kota di Provinsi Jambi', '', 'Y', 'operator', '2019-08-16'),
(91, 'Pembinaan dan Penyuluhan ORSOSMAS oleh SUBTDITBIN POLMAS DIT BINMAS POLDA JAMBI', '2019-08-15', '', '08.30 WIB', 'Kantor LCKI Tanjab Timur', 'Undangan', ' ', '', 'Y', 'operator', '2019-08-16'),
(88, 'Upacara Pengibaran Bendera HUT RI ke-74', '2019-08-17', '', '08.00 WIB', 'Lapangan Kantor Bupati Tanjung Jabung Timur', 'Upacara', ' ', '', 'Y', 'operator', '2019-08-16'),
(89, 'Upacara Penurunan Bendera HUT RI ke-74', '2019-08-17', '', '08.00 WIB', 'Lapangan Kantor Bupati Tanjung Jabung Timur', 'Upacara', ' ', '', 'Y', 'operator', '2019-08-16'),
(90, 'Verifikasi Kabupaten Sehat', '2019-08-14', '', '08.00 WIB', '', 'Undangan', ' ', '', 'Y', 'operator', '2019-08-16'),
(92, 'Malam Resepsi Kenegaraan', '2019-08-17', '', '19.00 WIB', 'Gedung DPRD Kabupaten Tanjung Jabung Timur', 'Undangan', ' ', '', 'Y', 'operator', '2019-08-16'),
(93, 'Pengukuhan Anggota Paskibraka', '2019-08-16', '', '15.00 s/d Selesai', 'Rumah Dinas Bupati Tanjabtim', 'Undangan', ' ', '', 'Y', 'operator', '2019-08-29'),
(94, 'Shalat Sunnah Istisqa Berjamaah', '2019-08-22', '', '07.30 WIB s/d selesai', 'Halaman Kantor Bupati', 'Shalat Berjamaah', ' ', '', 'Y', 'operator', '2019-08-29'),
(54, 'Rapat Tim Status Hukum PNS', '2019-07-03', '', '14.30 WIB', 'Ruang Kerja Asisten Administrasi Umum Setda Kab. Tanjabtim', 'Undangan', 'Agenda pembahasan dan penetapan (pemberian atau penolakan) ijin untuk melaksanakan perceraian PNS yang berasal dari Unit Kerja Saudara/i', '', 'Y', 'operator', '2019-07-03'),
(55, 'Pembukaan Kejuaraan Provinsi Panjat Dinding FPTI Provinsi Jambi Tahun 2019', '2019-07-03', '', '15.00 WIB', 'Venue Dinding panjat GOR Paduka Berhala', 'Undangan', ' Kejuaraan Provinsi Panjat Dinding Federasi Panjat Tebing Indonesia (FPTI) Jambi pada tanggal 3  Juli s/d 6 Juli 2019 di Kabupaten Tanjung Jabung Timur', '', 'Y', 'operator', '2019-07-03'),
(53, 'Acara Pisah Sambut ', '2019-07-01', '', '08.00 WIB', 'Polres Tanjab Timur', 'Acara Pisah Sambut Kabbag Ops Polres Tanjab Timur', 'Acara Pisah Sambut Kabbag Ops Polres Tanjab Timur', '', 'Y', 'operator', '2019-07-02'),
(56, 'Asistensi SAKIP untuk Eselon III dan Eselon IV', '2019-07-15', '', '08.00 WIB', 'Biro Organisasi Setda Provinsi Jambi', 'Undangan', 'Asistensi SAKIP untuk Eselon III dan Eselon IV', '', 'Y', 'operator', '2019-07-03'),
(57, 'Rapat Persiapan Dalam Rangka HUT ke-74 Kemerdekaan RI Tahun 2019 DI Kabupaten Tanjung Jabung Timur', '2019-07-05', '', '09.00 WIB', 'Ruang Aula Kantor Bupati Tanjung Jabung Timur', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-03'),
(58, 'Rapat Paripurna Keenambelas ', '2019-07-08', '', '10.00 WIB', 'Gedung DPRD Kab. Tanjabtim', 'Undangan', ' Rapat Paripurna Keenambelas Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Nota Pengantar Rancangan KUA dan PPAS TA 2020', '', 'Y', 'operator', '2019-07-08'),
(59, 'Rapat Paripurna Ketujuhbelas', '2019-07-09', '', '10.00 WIB', 'Gedung DPRD Kab. Tanjabtim', 'Undangan', ' Rapat Paripurna Ketujuhbelas Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Pandangan Umum Fraksi-Fraksi DPRD terhadap Rancangan KUA dan PPAS TA. 2020', '', 'Y', 'operator', '2019-07-08'),
(60, 'Rapat Paripurna Kedelapanbelas', '2019-07-10', '', '10.00 WIB', 'Gedung DPRD Kab. Tanjabtim', 'Undangan', ' Rapat Paripurna Kedelapanbelas Masa Persidangan Ketiga Tahun 2019 Dalam Rangka Penyampaian Tanggapan Bupati Tanjung Jabung Timur atas Pandangan Umum Fraksi-Fraksi DPRD terhadap Rancangan KUA dan PPAS TA. 2020', '', 'Y', 'operator', '2019-07-08'),
(61, 'Upacara HUT Bhayangkara Ke-73 Tahun 2019', '2019-07-10', '', '07.30 WIB', 'Lapangan Kantor Camat dendang', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-09'),
(62, 'Syukuran HUT Bhayangkara Ke-73 Tahun 2019', '2019-07-10', '', '10.30 WIB', 'Kantor Polsek Dendang', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-09'),
(63, 'Sosialisasi Manfaat Program BPJS Ketenagakerjaan dan Penyerahan Kartu Kepesertaan BPJS PHTT', '2019-07-16', '', '09.00 WIB', 'Ruang Rapat Bupati', 'Undangan', 'Sosialisasi Manfaat Program BPJS Ketenagakerjaan Bagi Seluruh Pemangku Kepentingan di Kabupatrn Tanjung Jabung Timur dan Penyerahan Secara Simbolis Kartu Kepesertaan BPJS Ketenagakerjaan Kepada PHTT', '', 'Y', 'operator', '2019-07-16'),
(64, 'Jadwal Rekonsiliasi I (Pertama) OPD dan BUD T.A. 2019', '2019-07-18', '', '13.00 WIB - 16.00 WIB', 'Bakeuda (Badan Keuangan Daerah)', 'Permintaan Laporan Semester I (Pertama) OPD T.A. 2019', ' ', '', 'Y', 'operator', '2019-07-16'),
(65, 'Bimtek Peningkatan & Pengembangan Kualitas Proses Politik Bagi Pengurus Partai Politik', '2019-07-17', '', '08.30 WIB', 'Aula Badan Kesbangpol Tanjabtim', 'Undangan', ' Dengan Bimbingan Tekhnis Bantuan Keuangan Partai Politik bagi Pengurus Partai Politik Bagi Pengurus Papol Kita Ciptakan Laporan Pertanggungjawaban Keuangan Partai Politik yang Tertib, Transparan & Akuntabel Menuju Tanjung jabung Timur MERAKYAT', '', 'Y', 'operator', '2019-07-17'),
(66, 'Kegiatan Sosialisasi Penguatan dan Pembinaan Revolusi Mental di Kabupaten Tanjung Jabung Timur Tahun 2019', '2019-07-18', '', '08.00 WIB', 'Aula SMPN 22 Kec. Berbak', 'Kegiatan Sosialisasi', ' ', '', 'Y', 'operator', '2019-07-18'),
(67, 'Rapat Pemantapan Pelaksanaan BBRGM ke XVI, HKG-PKK ke XLVII dan Harganas ke XXVI Tingkat Kab. Tanjabtim', '2019-07-12', '', '09.00 WIB', 'Ruang Rapat Kantor Bupati Tanjabtim', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-18'),
(68, 'Kampanye Stop Narkoba dan Pentas Seni', '2019-07-23', '', '08.00 WIB', 'Lapangan Kantor BNNK Tanjung Jabung Timur', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-18'),
(69, 'Rapat Koordinasi Komunitas Intelijen Daerah (KOMINDA)', '2019-07-24', '', '09.00  WIB', 'Aula Badan Kesbangpol', 'Rapat Koordinasi', ' Rakor Kominda dengan Tema "Sinergitas dan Kesiapan KOMINDA di Daerah dalam Pencegahan Konflik Sosial dan Terorisme Menjelang Pelaksanaan Pilkada Tahun 2020 di Kabupaten Tanjung Jabung TImur"', '', 'Y', 'operator', '2019-07-24'),
(70, 'Rapat Penyelesaian Sengketa Lahan', '2019-07-23', '', '13.30 WIB', 'Aula Polres Tanjung Jabung Timur', 'Undangan', ' Penyelesaian Sengketa Lahan Antara PT. Kaswari Unggul dengan Masyarakat Kel. Teluk Dawan, PT. BBIP, dan KUD. Harapan Baru dengan Kelompok Tani Anita CS Kel. Simpang Tuan Kec. Mendahara Ulu, serta PT. Indonusa Agro Mulya dengan Masyarakat Transmigrasi Desa Pandan Sejahtera Kec. Geragai', '', 'Y', 'operator', '2019-07-24'),
(71, 'Turnamen Futsal Kapolres Cup 2019', '2019-07-27', '', '08.00 WIB', 'GOS Paduka Berhala Kab. Tanjab Timur', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-24'),
(72, 'Technical Meeting Turnamen Futsal Kapolres Cup 2019', '2019-07-25', '', '08.00 WIB', 'GOS Paduka Berhala Kab. Tanjab Timur', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-24'),
(73, 'FGD Pengembangan Agroeduwisata Kebun Buah Mendukung Prukades di KPB Geragai', '2019-07-25', '', '08.00 WIB', '', 'Undangan', ' Forum Group Discussion Pengembangan Agroeduwisata Kebun Buah Mendukung Prukades di KPB Geragai', '', 'Y', 'operator', '2019-07-25'),
(74, 'Sosialisasi Manfaat Program BPJS Ketenagakerjaan dan Penyerahan Kartu Kepersertaan BPJS', '2019-07-24', '', '08.00 WIB', 'Ruang Rapat Kantor Bupati Tanjabtim', 'Undangan Sosialisasi', ' ', '', 'Y', 'operator', '2019-07-25'),
(75, 'Rapat Persiapan Lanjutan dalam Rangka HUT ke-74 Kemerdekaan RI Tahun 2019 di Kab. Tanjabtim', '2019-07-22', '', '13.30 WIB', 'Ruang Rapat Utama Kantor Bupati Tanjabtim', 'Rapat', ' ', '', 'Y', 'operator', '2019-07-25'),
(76, 'Rapat Persiapan Koordinator I Dalam Rangka HUT ke-74 Kemerdekaan RI Tahun 2019 di Kab. Tanjabtim', '2019-07-29', '', '09.00 WIB', 'Ruang Rapat Utama Kantor Bupati Tanjabtim', 'Rapat', ' ', '', 'Y', 'operator', '2019-07-25'),
(77, 'Proses Pemberangkatan Jamaah Haji asal Kabupaten Tanjung Jabung Timur', '2019-07-30', '', '05.15 WIB', 'Masjid Agung Nur Addarajat', 'Undangan', ' ', '', 'Y', 'operator', '2019-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `idlevel` int(2) NOT NULL AUTO_INCREMENT,
  `namalevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idlevel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`idlevel`, `namalevel`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `id_link` int(3) NOT NULL AUTO_INCREMENT,
  `nama_link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_link`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `nama_link`, `aktif`) VALUES
(1, 'dari Kategori Berita', 'Y'),
(2, 'dari Item Berita', 'Y'),
(3, 'dari Kategori Produk Hukum/Peraturan', 'Y'),
(4, 'dari Item Produk Hukum/Peraturan', 'Y'),
(5, 'dari Kategori Dokumen', 'Y'),
(6, 'dari Item Dokumen', 'Y'),
(7, 'dari Artikel', 'Y'),
(8, 'dari Album Photo', 'Y'),
(9, 'dari Pengumuman', 'Y'),
(10, 'dari Halaman Profil', 'Y'),
(12, 'Custom Link', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(5) NOT NULL AUTO_INCREMENT,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `id_position` int(3) NOT NULL,
  `nama_menu` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `id_position`, `nama_menu`, `link`, `aktif`, `urutan`, `tgl_posting`, `username`, `keterangan`, `css`) VALUES
(3, 0, 2, 'PROFIL', '', 'Y', 0, '0000-00-00', '', '', ''),
(6, 0, 2, 'BERITA', 'berita', 'Y', 0, '0000-00-00', '', '', ''),
(7, 0, 2, 'BIDANG', '', 'Y', 0, '0000-00-00', '', '', ''),
(8, 0, 2, 'REGULASI', 'peraturan', 'Y', 0, '0000-00-00', '', '', ''),
(11, 0, 2, 'BASIS DATA', '', 'Y', 0, '0000-00-00', '', '', ''),
(12, 0, 2, 'GALERI', '', 'Y', 0, '0000-00-00', '', '', ''),
(21, 0, 2, 'AGENDA', '', 'Y', 0, '2019-07-04', 'operator', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `menuadmin`
--

CREATE TABLE IF NOT EXISTS `menuadmin` (
  `idmenu` int(5) NOT NULL AUTO_INCREMENT,
  `namamenu` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `level` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bagian` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `menuadmin`
--

INSERT INTO `menuadmin` (`idmenu`, `namamenu`, `link`, `aktif`, `level`, `bagian`, `urutan`) VALUES
(1, 'Home', 'media.php?module=home', 'N', 'admin,user,view', '', 1),
(2, 'Menu Backend', '#', 'Y', 'admin', '', 3),
(5, 'Manajemen', '#', 'Y', 'admin,user', '', 2),
(6, 'Report/Laporan', '#', 'N', 'admin,user,view', '', 14),
(30, 'Database Kepegawaian', '?module=pegawai', 'Y', 'admin,user,view', '', 6),
(36, 'Peraturan/Produk Hukum', '#', 'Y', 'admin,user', '', 10),
(37, 'Menu Frontend', '', 'Y', 'admin', '', 4),
(38, 'Content Frontend', '', 'Y', 'admin,user', '', 5),
(39, 'Database Umum', '', 'N', 'admin,user', '', 8),
(40, 'Peraturan/Produk Hukum', '', 'N', 'admin,user', '', 15),
(41, 'Anggota Dewan', '', 'Y', 'admin,user', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `menu_position`
--

CREATE TABLE IF NOT EXISTS `menu_position` (
  `id_posisi` int(4) NOT NULL AUTO_INCREMENT,
  `nama_posisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_posisi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menu_position`
--

INSERT INTO `menu_position` (`id_posisi`, `nama_posisi`, `keterangan`, `username`, `tgl_upload`) VALUES
(2, 'Top Menu Main Menu', 'Top Menu warna biru', 'ngadmin', '2013-09-05'),
(4, 'Bottom Menu', 'Menu Bawah', 'ngadmin', '2013-09-05'),
(5, 'Left Menu (Menu Kiri)', 'Pilih Menu Kiri', 'admin', '2014-02-25'),
(6, 'Right Menu (Menu Kanan)', 'Pilih Menu Kanan', 'admin', '2014-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `tgl_posting` date NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `publish`, `status`, `aktif`, `urutan`, `tgl_posting`, `keterangan`, `username`) VALUES
(1, 'Modul Berita', 'berita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(2, 'Modul Kategori Berita', 'kategori', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(3, 'Modul Tagging', 'tag', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(4, 'Modul Polling', 'polling', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(5, 'Modul Iklan', 'iklan', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(6, 'Modul Filter Berita', 'filterberita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(7, 'Modul File Download', 'download', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(8, 'Modul Berita Foto', 'fotoberita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(9, 'Modul Users', 'users', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(10, 'Modul Identitas Website', 'identitas', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(11, 'Modul Menu Front-End', 'menu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(12, 'Modul Sub Menu Front-End', 'submenu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(13, 'Modul Sub Submenu Front-End', 'subsubmenu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(14, 'Modul Halaman Profil', 'halamanprofil', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(15, 'Modul Pegawai', 'pegawai', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(16, 'Modul Video Kegiatan', 'video', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(3) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pangkat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmtpangkat` date NOT NULL,
  `id_jabatan` int(5) NOT NULL,
  `tmtjabatan` date NOT NULL,
  `masa_bulan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_tahun` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namalatihan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulanlatihan` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunlatihan` year(4) NOT NULL,
  `jamlatihan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_lulus` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tingkat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutasi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tgl_lahir` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tmtpangkat` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tmtjabatan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_latihan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=74 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `tempat`, `tgl_lahir`, `alamat`, `id_pangkat`, `tmtpangkat`, `id_jabatan`, `tmtjabatan`, `masa_bulan`, `masa_tahun`, `namalatihan`, `bulanlatihan`, `tahunlatihan`, `jamlatihan`, `pendidikan`, `tahun_lulus`, `id_tingkat`, `kelamin`, `mutasi`, `gambar`, `keterangan`, `username`, `no_tgl_lahir`, `no_tmtpangkat`, `no_tmtjabatan`, `no_latihan`, `aktif`, `tgl_upload`, `tgl_modif`) VALUES
(71, 'M. Yunus, SE', '19750504 200803 1 001', '', '1949-01-01', '', '12', '0000-00-00', 13, '1949-01-01', '', '', '', '00', 0000, '', '', '', '7', 'L', '', '69whatsapp-image-20190716-at-16.02.42.jpeg', '', '', 'N', 'Y', 'N', 'Y', 'Y', '2019-07-08', '2019-07-17'),
(72, 'Diki Iskandar, SE', '19730518 200012 1 004', '', '1949-01-01', '', '13', '0000-00-00', 8, '1949-01-01', '', '', '', '00', 0000, '', '', '', '7', 'L', '', '99dikiiskandar.jpeg', '', '', 'N', 'Y', 'N', 'Y', 'Y', '2019-07-08', '2019-07-23'),
(73, 'Ikrar Dinata, S.Pd', '19761214 200903 1 003', '', '0000-00-00', '', '10', '0000-00-00', 9, '0000-00-00', '', '', '', '00', 0000, '', '', '', '7', 'L', '', '', '', '', 'Y', 'Y', 'Y', 'Y', 'Y', '2019-07-08', '2019-07-08'),
(55, 'Abdul Rasid, SP, MH', '19690914 200012 1 002', 'Jambi', '1969-09-14', '', '15', '2016-10-01', 1, '1949-01-01', '1', '17', '', '00', 0000, '', 'STIE MUHAMMADIYAH JAMBI', '2011', '8', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(58, 'Effendi', '19650122 198603 1 003', 'Muara Sabak', '0000-00-00', '', '13', '2016-10-20', 2, '1949-01-01', '10', '26', '', '00', 0000, '', '', '1985', '3', 'L', '', '38effendi.jpg', '', '', 'Y', 'N', 'N', 'Y', 'Y', '2019-06-24', '2019-07-15'),
(59, 'Ir. Ridwan', '19630323 199203 1 005', 'Kerinci', '1963-03-23', '', '14', '2010-04-01', 3, '0000-00-00', '25', '9', '', '00', 0000, '', '', '1988', '7', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(60, 'Nurmaidi', '19640114 198503 1 004', 'Limau Sundai', '1964-01-14', '', '13', '2013-10-01', 5, '0000-00-00', '33', '10', '', '00', 0000, '', '', '1983', '3', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(61, 'Amzi', '19660828 198812 1 001', 'Tanjung Jabung Timur', '1966-08-28', '', '13', '0000-00-00', 4, '0000-00-00', '24', '0', '', '00', 0000, '', '', '', '3', 'L', '', '', '', '', 'N', 'Y', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(62, 'Muhammad Isya, S. Ag', '19761111 200701 1 021', 'Teluk Majelis', '1976-11-11', '', '12', '2016-10-01', 6, '0000-00-00', '14', '11', '', '00', 0000, '', '', '2000', '7', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(63, 'Rasyidah, S. Ag', '19760407 201001 2 001', 'Talang Pendowo', '1976-04-07', '', '11', '2017-04-01', 7, '0000-00-00', '13', '0', '', '00', 0000, '', 'IAIN Sultan Thaha Sya ifuddin Jambi', '2001', '7', 'P', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(64, 'Andy Mursalin, SE', '19790416 200801 1 016', '', '0000-00-00', '', '11', '2016-10-01', 12, '1949-01-01', '', '', '', '00', 0000, '', 'STIE-SAN Lampung Selatan', '2014', '7', 'L', '', '1andymursalin.jpeg', '', '', 'Y', 'N', 'N', 'Y', 'Y', '2019-06-24', '2019-07-23'),
(65, 'Lina Marry Susilawaty Hutagaol, A. Md', '1976710 201001 2 014', 'Jambi', '1949-01-01', '', '9', '2014-04-01', 15, '0000-00-00', '12', '0', '', '00', 0000, '', 'Universitas Sumatera Utara', '1998', '6', 'P', '', '30lina-marry.jpeg', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-07-01'),
(66, 'Desi Mardiyanti', '19801130 200701 2 002', 'Kampung Laut', '1980-11-30', '', '7', '2015-04-01', 15, '0000-00-00', '18', '0', '', '00', 0000, '', '', '1999', '3', 'P', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(67, 'Junaidi', '19690601 200701 1 011', 'Parit Culum', '1969-06-01', '', '7', '0000-00-00', 15, '0000-00-00', '18', '8', '', '00', 0000, '', '', '', '3', 'L', '', '', '', '', 'N', 'Y', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(68, 'Ali Jasril', '19740317 200801 1 002', 'Padang', '1974-03-17', '', '7', '1994-04-01', 15, '0000-00-00', '14', '10', '', '00', 0000, '', '', '1993', '3', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(69, 'Fatimah', '19810312 201001 2 002', 'Lagan Ulu', '1981-03-12', '', '7', '0000-00-00', 15, '0000-00-00', '14', '0', '', '00', 0000, '', '', '1999', '3', 'P', '', '', '', '', 'N', 'Y', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24'),
(70, 'Isnaini', '19720715 201212 2 001', 'Tanjung Jabung Timur', '1972-07-15', '', '5', '2014-12-01', 15, '0000-00-00', '7', '3', '', '00', 0000, '', '', '', '3', 'P', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-24', '2019-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `id_pend` int(2) NOT NULL AUTO_INCREMENT,
  `nama_pend` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pend`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pend`, `nama_pend`) VALUES
(1, 'Belum Sekolah/Tidak Sekolah'),
(2, 'SD / SDLB / MI / Paket A'),
(3, 'SMP / SMPLB / MTs / Paket B'),
(4, 'SMA / SMK / MA / Paket C'),
(5, 'D1'),
(6, 'D2'),
(7, 'D3'),
(8, 'S1'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE IF NOT EXISTS `pengaduan` (
  `id_pengaduan` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulpengaduan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembaga` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pengaduan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `nama`, `email`, `alamat`, `judulpengaduan`, `lembaga`, `pesan`, `jawaban`, `ip`, `tanggal`, `aktif`, `jam`, `keterangan`) VALUES
(8, '1111111111111111', '11111111111', '1111111111111111111111 I located it to be fascinating and loaded with exclusive points of interest. I like to read material that makes me believe. Thank you for writing this fantastic content. cadfgkedebdc', '11111111111', 'teuewroo', '11111111111 es me believe. Thank you for writing this fantastic content. cadfgkedebdc', '11111 sdsdsd', '191.37.33.78', '2016-10-26', 'Y', '23:41:56', 'adasdasd'),
(9, 'Johnk155', 'johnk184@gmail.com', 'Hello my family member! I want to say that this article is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', 'yrrtitor', 'teuewroo', 'Hello my family member! I want to say that this article is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '191.37.33.78', '2016-10-26', 'Y', '23:42:04', ''),
(11, 'Johnk713', 'johnk38@gmail.com', '1 Program you&#039;r planting of crops to coincide whenever you can log onto your farm to reap them. dfebegeeedag', 'iuworewy', 'oiwropee', '1 Program you&#039;r planting of crops to coincide whenever you can log onto your farm to reap them. dfebegeeedag', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '88.198.151.153', '2016-12-15', 'Y', '03:36:27', ''),
(12, 'Johnd997', 'johnd836@gmail.com', ' time to make some plans for the long run and it is time to be happy. I have learn this publish and if I may I want to suggest you few attentiongrabbing things or advice. Maybe you could write next articles regarding this article. I desire to read even more things about it! bbfedaebfcfd', 'iuworewysdfsdf', 'oiwropeedfdf', ' make some plans for the long run and it is time to be happy. I have learn this publish and if I may I want to suggest you few attentiongrabbing things or advice. Maybe you could write next articles regarding this article. I desire to read even more things about it! bbfedaebfcfd', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '88.198.151.153', '2016-12-15', 'N', '03:36:29', 'sadasd');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pengumuman` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file1` int(3) NOT NULL,
  `file2` int(3) NOT NULL,
  `file3` int(3) NOT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `username`, `judul`, `isi_pengumuman`, `hari`, `tanggal`, `tanggal_pengumuman`, `jam`, `gambar`, `sumber`, `keterangan`, `dibaca`, `aktif`, `file1`, `file2`, `file3`) VALUES
(20, 'operator', 'DATA ORGANISASI KEMASYARAKATAN (ORMAS) HABIS MASA BERLAKU PADA BADAN KESBANGPOL TANJABTIM', '', '', '2019-07-09', '2019-07-09', '11:14:41', '', '', '', 116, 'Y', 19, 0, 0),
(21, 'operator', 'REKAPITULASI DATA ORMAS KABUPATEN TANJUNG JABUNG TIMUR PER- JANUARI S/D JULI 2019', '', '', '2019-09-06', '2019-09-06', '13:22:06', '', '', '', 5, 'Y', 20, 0, 0),
(22, 'operator', 'ORMAS AKTIF BADAN KESBANGPOL TANJABTIM PER- JANUARI S/D JULI 2019', '', '', '2019-09-06', '2019-09-06', '13:24:27', '', '', '', 10, 'Y', 18, 0, 0),
(23, 'operator', 'Pembentukan SATGAS Anti Narkoba Badan Kesbangpol Tanjabtim', '', '', '0019-09-06', '0019-09-06', '15:08:27', '', '', '', 13, 'Y', 21, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE IF NOT EXISTS `polling` (
  `id_polling` int(5) NOT NULL,
  `pertanyaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY (`id_polling`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `pertanyaan`, `tgl_posting`, `aktif`, `username`, `jam`) VALUES
(413, 'Bagaimana Menurut Anda Informasi Yang kami Sediakan?', '2014-03-02', 'Y', 'ngadmin', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pollingpilihan`
--

CREATE TABLE IF NOT EXISTS `pollingpilihan` (
  `id_pollingpilihan` int(5) NOT NULL AUTO_INCREMENT,
  `id_polling` int(3) NOT NULL,
  `pilihan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pollingpilihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pollingpilihan`
--

INSERT INTO `pollingpilihan` (`id_pollingpilihan`, `id_polling`, `pilihan`, `rating`, `aktif`) VALUES
(1, 413, 'Sangat Lengkap', 1463, 'Y'),
(2, 413, 'Lengkap', 142, 'Y'),
(3, 413, 'Tidak lengkap', 190, 'Y'),
(4, 413, 'Sangat Tidak Lengkap', 188, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `polsek`
--

CREATE TABLE IF NOT EXISTS `polsek` (
  `id_polsek` int(3) NOT NULL AUTO_INCREMENT,
  `kode_pos` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_polsek` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kapolsek` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_polsek`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `polsek`
--

INSERT INTO `polsek` (`id_polsek`, `kode_pos`, `nama_polsek`, `alamat`, `website`, `telp`, `hp`, `nama_kapolsek`, `gambar`, `keterangan`, `username`, `tgl_upload`) VALUES
(1, '', 'Polsek Wolo', 'Jl. Desa Pembengis, Kelurahan Bram Itam Kiri, Kecamatan Bram Itam, Kab Tanjung Jabung Barat', 'polreskolaka.com', '0741 - 668844', '0821 7525 6464', 'AKP BENNY  PORNIKA', 'Paal Lima.jpg', '<div align="center"><span><strong>TUGAS POKOK<br />KAPOLSEK TUNGKAL ILIR</strong></span></div>\r\n<p><br /><br /></p>\r\n<div align="center"><span><strong>DASAR</strong></span></div>\r\n<ol>\r\n<li><span>Peraturan Kepala Kepolisian Negara Republik Indonesia Nomor : PERKAP/23/IX/2010 tentang Susunan Organisasi dan Tata Kerja Pada Tingkat Kepolisian Resort dan Kepolisian Sektor;</span></li>\r\n<li><span>Kapolsek Tungkal Ilir merupakan Pimpinan Polsek Tungkal Ilir yang berada di bawah dan bertanggung jawab kepada Kapolres Tanjung jabung Barat.</span></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<div align="center"><strong>TUGAS POKOK</strong></div>\r\n<div align="center"><br />&nbsp;</div>\r\n<div><span>Dalam melaksanakan tugas sebagaimana dimaksud dalam rujukan tersebut diatas, Kapolsek Tungkal Ilir bertugas :</span></div>\r\n<ol>\r\n<li><span>Memimpin satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Membina satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Mengawasi satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Mengatur satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Mengendalikan satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya termasuk kegiatan pengamanan markas; dan</span></li>\r\n<li><span>Memberikan saran Pertimbangan kepada Kapolres yang terkait dengan pelaksanaan tugasnya.</span></li>\r\n</ol>', 'ngadmin', '2016-04-04'),
(2, '', 'Polsek Samataru', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-04'),
(3, '', 'Polsek Lambandia', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(4, '', 'Polsek Uluiwoi', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(5, '', 'Polsek Mowewe', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(6, '', 'Polsek Rate-rate', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(7, '', 'Polsek Watubangga', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(8, '', 'Polsek Pomalaa', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(9, '', 'Polsek Kolaka', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(10, '', 'Polsek Ladongi', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `posisiiklan`
--

CREATE TABLE IF NOT EXISTS `posisiiklan` (
  `id_posisiiklan` int(2) NOT NULL AUTO_INCREMENT,
  `id_halamaniklan` int(3) NOT NULL,
  `nama_posisiiklan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_posisiiklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `posisiiklan`
--

INSERT INTO `posisiiklan` (`id_posisiiklan`, `id_halamaniklan`, `nama_posisiiklan`, `aktif`) VALUES
(1, 1, 'IKLAN KD[1]', 'Y'),
(2, 1, 'IKLAN KD[2]', 'Y'),
(3, 1, 'IKLAN KD[3]', 'Y'),
(4, 1, 'IKLAN KD[4]', 'Y'),
(5, 1, 'IKLAN KD[5]', 'Y'),
(6, 2, 'KAT-DETAIL KD[1]', 'Y'),
(7, 2, 'KAT-DETAIL KD[2]', 'Y'),
(8, 2, 'KAT-DETAIL KD[3]', 'Y'),
(9, 2, 'KAT-DETAIL KD[4]', 'Y'),
(10, 2, 'KAT-DETAIL KD[5]', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produkhukum`
--

CREATE TABLE IF NOT EXISTS `produkhukum` (
  `id_produkhukum` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katprodukhukum` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_produkhukum`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `produkhukum`
--

INSERT INTO `produkhukum` (`id_produkhukum`, `judul`, `tahun`, `keterangan`, `metode_link`, `id_katprodukhukum`, `nama_file`, `link_file`, `tgl_upload`, `tanggal_modif`, `sumber`, `dibaca`, `username`, `aktif`, `dl`) VALUES
(25, 'PERUBAHAN KEDUA ATAS PERATURAN GUBERNUR NOMOR 28 TAHUN 2012 TENTANG PETUNJUK TEKNIS PENEGAKAN DISIPLIN PEGAWAI NEGERI SIPIL DI LINGKUNGAN PEMERINTAH PROVINSI JAMBI ', '2018', 'Sumber : http://jdih.jambiprov.go.id/', 1, 2, '65petunjuk-teknis-penegakan-disiplin-pegawai-negeri-sipil-prov-jambi.pdf', '', '2019-07-02', '2019-07-02', '', '', 'operator', 'Y', ''),
(32, 'PENYUSUTAN BARANG MILIK DAERAH ', '2019', '', 2, 12, '', 'http://peraturan.go.id/common/dokumen/bn/2019/bn164-2019.pdf', '2019-07-03', '2019-07-03', '', '', 'operator', 'Y', ''),
(34, 'PEDOMAN PENYUSUNAN RENCANA KERJA PEMERINTAH DAERAH TAHUN 2020', '2019', '', 2, 12, '', 'https://www.kemendagri.go.id/media/documents/2019/06/3c8aae87a525188fd3e13df44c19af76.pdf', '2019-07-03', '2019-07-03', '', '', 'operator', 'Y', ''),
(35, 'PERATURAN PEMERINTAH NO. 30 TAHUN 2019 TENTANG PENILAIAN KINERJA PEGAWAI NEGERI SIPIL', '2019', 'Sumber : https://www.kemendagri.go.id', 2, 2, '', 'https://www.kemendagri.go.id/media/documents/2019/07/3d2c52dd5c508d63adf3652d2dd1dcb4.pdf', '2019-08-15', '2019-08-15', '', '', 'operator', 'Y', ''),
(33, 'PERUBAHAN ATAS PERATURAN BUPATI TANJUNG JABUNG TIMUR NOMOR 31 TAHUN 2016 TENTANG KEDUDUKAN, SUSUNAN ORGANISASI, TUGAS DAN FUNGSI SERTA TATA KERJA PERANGKAT DAERAH', '2019', '', 2, 10, '', 'http://jdih.tanjabtimkab.go.id/file/2019/07/02/68perbup-no-1-tahun-2019-tentang-perubahan-perbup-31.pdf', '2019-07-03', '2019-07-03', '', '', 'operator', 'Y', ''),
(30, 'PERUBAHAN ATAS PERATURAN DAERAH NOMOR 16 TAHUN 2008 TENTANG TATA CARA PENYUSUNAN RENCANA PEMBANGUNAN DAERAH', '2018', '', 1, 2, '63perubahan-atas-peraturan-daerah-nomor-16-tahun-2008.pdf', '', '2019-07-02', '2019-07-02', '', '', 'operator', 'Y', ''),
(31, 'UU NOMOR 30 TAHUN 1999 ARBITRASE DAN ALTERNATIF PENYELESAIAN SENGKETA', '2019', '', 2, 1, '', 'http://peraturan.go.id/common/dokumen/ln/1999/uu30-1999.pdf', '2019-07-03', '2019-07-03', '', '', 'operator', 'Y', ''),
(26, 'PERUBAHAN KEDUA ATAS PERATURAN DAERAH PROVINSI JAMBI NOMOR 9 TAHUN 2009 TENTANG ORGANISASI DAN TATA KERJA LEMBAGA LAIN PROVINSI JAMBI', '2013', '', 1, 2, '12pergub-tentang-organisasi-dan-tata-kerja-lembaga-lain.pdf', '', '2019-07-02', '2019-07-02', '', '', 'operator', 'Y', ''),
(28, 'PERJALANAN DINAS DALAM NEGERI DI LINGKUNGAN PEMERINTAH PROVINSI JAMBI', '2016', '', 1, 2, '70pergub-perjalanan-dinas-dalam-negeri.pdf', '', '2019-07-02', '2019-07-02', '', '', 'operator', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `produkhukum--`
--

CREATE TABLE IF NOT EXISTS `produkhukum--` (
  `id_produkhukum` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katprodukhukum` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_produkhukum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE IF NOT EXISTS `subkategori` (
  `id_subkategori` int(4) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(4) NOT NULL,
  `nama_subkategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_subkategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_subkategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=74 ;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `nama_subkategori`, `seo_subkategori`, `username`, `aktif`, `tgl_upload`) VALUES
(1, 2, 'Industri & Perdagangan', 'industri-perdagangan', 'ngadmin', 'Y', '2013-09-15'),
(2, 2, 'Perbankan', 'perbankan', 'ngadmin', 'Y', '2013-09-15'),
(3, 2, 'Makro', 'makro', 'ngadmin', 'Y', '2013-09-15'),
(4, 2, 'Asuransi', 'asuransi', 'ngadmin', 'Y', '2013-09-15'),
(5, 2, 'Karier', 'karier', 'ngadmin', 'Y', '2013-09-15'),
(6, 1, 'Gema Pendidikan', 'gema-pendidikan', 'ngadmin', 'Y', '2013-09-15'),
(7, 1, 'Beasiswa', 'beasiswa', 'ngadmin', 'Y', '2013-09-15'),
(8, 3, 'Politik', 'politik', 'ngadmin', 'Y', '2013-09-15'),
(9, 3, 'Pilkada', 'pilkada', 'ngadmin', 'Y', '2013-09-15'),
(10, 3, 'Pemilu 2014', 'pemilu-2014', 'ngadmin', 'Y', '2013-09-15'),
(11, 5, 'Politik Nasional', 'politik-nasional', 'ngadmin', 'Y', '2013-09-15'),
(12, 5, 'Hukum', 'hukum', 'ngadmin', 'Y', '2013-09-15'),
(13, 5, 'Nusantara', 'nusantara', 'ngadmin', 'Y', '2013-09-15'),
(14, 26, 'Asia', 'asia', 'ngadmin', 'Y', '2013-09-15'),
(15, 26, 'Eropa', 'eropa', 'ngadmin', 'Y', '2013-09-15'),
(16, 26, 'Amerika', 'amerika', 'ngadmin', 'Y', '2013-09-15'),
(17, 26, 'Afrika', 'afrika', 'ngadmin', 'Y', '2013-09-15'),
(18, 26, 'Timur Tengah', 'timur-tengah', 'ngadmin', 'Y', '2013-09-15'),
(20, 6, 'Jambi', 'jambi', 'ngadmin', 'Y', '2013-09-15'),
(21, 6, 'Indonesia', 'indonesia', 'ngadmin', 'Y', '2013-09-15'),
(22, 6, 'Internasional', 'internasional', 'ngadmin', 'Y', '2013-09-15'),
(23, 6, 'UEFA', 'uefa', 'ngadmin', 'Y', '2013-09-15'),
(24, 6, 'Inggris', 'inggris', 'ngadmin', 'Y', '2013-09-15'),
(25, 6, 'Spanyol', 'spanyol', 'ngadmin', 'Y', '2013-09-15'),
(26, 6, 'Italia', 'italia', 'ngadmin', 'Y', '2013-09-15'),
(27, 7, 'Bulu Tangkis', 'bulu-tangkis', 'ngadmin', 'Y', '2013-09-15'),
(28, 7, 'Basket', 'basket', 'ngadmin', 'Y', '2013-09-15'),
(29, 7, 'Tenis', 'tenis', 'ngadmin', 'Y', '2013-09-15'),
(30, 7, 'Moto GP', 'moto-gp', 'ngadmin', 'Y', '2013-09-15'),
(31, 7, 'F1', 'f1', 'ngadmin', 'Y', '2013-09-15'),
(32, 7, 'Tinju', 'tinju', 'ngadmin', 'Y', '2013-09-15'),
(33, 7, 'Lainnya', 'lainnya', 'ngadmin', 'Y', '2013-09-15'),
(34, 8, 'Jambi Selebriti', 'jambi-selebriti', 'ngadmin', 'Y', '2013-09-15'),
(35, 8, 'Nasional', 'nasional', 'ngadmin', 'Y', '2013-09-15'),
(36, 8, 'Luar Negeri', 'luar-negeri', 'ngadmin', 'Y', '2013-09-15'),
(39, 9, 'Visit Jambi 2014', 'visit-jambi-2014', 'ngadmin', 'Y', '2013-09-15'),
(40, 9, 'Backpacker', 'backpaker', 'ngadmin', 'Y', '2013-09-15'),
(41, 9, 'Wisata Jambi', 'wisata-jambi', 'ngadmin', 'Y', '2013-09-15'),
(42, 2, 'Bisnis', 'bisnis', 'ngadmin', '', '2013-09-17'),
(44, 2, 'Pertambangan', 'pertambangan', '', 'Y', '0000-00-00'),
(45, 12, 'Srikandi', 'srikandi', '', 'Y', '0000-00-00'),
(46, 12, 'Buah Bibir', 'buah-bibir', '', 'Y', '0000-00-00'),
(47, 7, 'Sepak Bola', 'sepak-bola', '', '', '0000-00-00'),
(48, 19, 'Seremonial', 'seremonial', '', 'Y', '0000-00-00'),
(49, 19, 'Insight', 'insight', '', 'Y', '0000-00-00'),
(50, 17, 'Selamat Sore | Editorial Harian Jambi', 'selamat-sore--editorial-harian-jambi', '', 'Y', '0000-00-00'),
(51, 17, 'Perspektif', 'perspektif', '', 'Y', '0000-00-00'),
(52, 3, 'Wajah Baru', 'wajah-baru', '', 'Y', '0000-00-00'),
(54, 12, 'Gaya', 'gaya', '', 'Y', '0000-00-00'),
(55, 12, 'Mom & Kids', 'mom--kids', '', 'Y', '0000-00-00'),
(56, 34, 'Humaniora', 'humaniora', '', 'Y', '0000-00-00'),
(57, 34, 'Sekitar Kita', 'sekitar-kita', '', 'Y', '0000-00-00'),
(58, 8, 'Ada-Ada Saja', 'adaada-saja', '', 'Y', '0000-00-00'),
(59, 34, 'Tak Biasa', 'tak-biasa', '', 'Y', '0000-00-00'),
(60, 17, 'Gagasan', 'gagasan', '', 'Y', '0000-00-00'),
(61, 2, 'Kiat', 'kiat', '', 'Y', '0000-00-00'),
(62, 16, 'Hari Ini Dalam Sejarah', 'hari-ini-dalam-sejarah', '', 'Y', '0000-00-00'),
(63, 12, 'Teen', 'teen', '', 'Y', '0000-00-00'),
(64, 34, 'Horison', 'horison', '', 'Y', '0000-00-00'),
(65, 39, 'Khazanah', 'khazanah', '', 'Y', '0000-00-00'),
(66, 39, 'Tadabbur', 'tadabbur', '', 'Y', '0000-00-00'),
(67, 39, 'Hikmah', 'hikmah', '', 'Y', '0000-00-00'),
(68, 37, 'Health', 'health', '', 'Y', '0000-00-00'),
(69, 37, 'Think Smart', 'think-smart', '', 'Y', '0000-00-00'),
(70, 37, 'Sex Sehat', 'sex-sehat', '', 'Y', '0000-00-00'),
(72, 37, 'Aneh', 'aneh', '', 'Y', '0000-00-00'),
(73, 8, 'HOT!', 'hot', '', 'Y', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_submenu` int(5) NOT NULL AUTO_INCREMENT,
  `nama_submenu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_submenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menu` int(5) NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_submenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_submenu`, `nama_submenu`, `link_submenu`, `id_menu`, `urutan`, `tgl_posting`, `username`, `keterangan`, `css`, `aktif`) VALUES
(51, 'SEKRETARIAT', 'profil/detail/23/tugas-dan-wewenang-sekretariat-badan-kesatuan-bangsa-dan-politik-kabupaten-tanjung-', 7, 1, '2019-06-24', 'asiap', '', '', 'Y'),
(52, 'BINA PROGRAM', 'profil/detail/24/tupoksi-bidang-bina-program-badan-kesatuan-bangsa-dan-politik-kabupaten-tanjung-jab', 7, 2, '2019-06-24', 'asiap', '', '', 'Y'),
(53, 'BINPOLTRAM', 'profil/detail/26/tupoksi-bidang-pembinaan-politik-dan-ketentraman-badan-kesbangpol-kab-tanjabtim', 7, 3, '2019-06-24', 'asiap', '', '', 'Y'),
(6, 'Sejarah ', 'profil/detail/4/sejarah', 3, 0, '0000-00-00', '', 'Dinas komunikasi dan informatika kabupaten tanjung jabung timur merupakan Organisasi Perangkat Daerah yang terbentuk sejak januari 2017.\r\nDinas Komunikasi dan Informatika telah diatur dengan peraturan yang ada yaitu Peraturan Daerah Kabupaten Tanjung Jabung Timur Nomor 6 Tahun 2016 tentang Pembentukkan dan Susunan Perangkat Daerah dan Peraturan Bupati Tanjung Jabung Timur Nomor 31 Tahun 2016 tentang Kedudukan, Susunan Organisasi, tugas dan Fungsi serta Tata Kerja Perangkat Daerah.\r\nDinas Kominfo merupakan penggabungan urusan komunikasi dan informatika (yang sebelumya digabung di Dinas Perhubungan, Komunikasi dan Informatika).\r\n', '', 'N'),
(14, 'Undang-undang', 'peraturan/kategori/1/undang-undang', 8, 1, '0000-00-00', '', '', '', 'Y'),
(15, 'Peraturan Daerah', 'peraturan/kategori/2/peraturan-daerah', 8, 0, '0000-00-00', '', '', '', 'N'),
(16, 'Peraturan Pemerintah', 'peraturan/kategori/2/peraturan-pemerintah', 8, 3, '0000-00-00', '', '', '', 'Y'),
(17, 'Berita Tanjabtim', 'kategori/berita-tanjabtim', 6, 3, '0000-00-00', '', '', '', 'Y'),
(18, 'Berita Pusat', 'kategori/berita-kementrian', 6, 1, '0000-00-00', '', '', '', 'Y'),
(19, 'Galeri Foto', 'galeri', 12, 0, '0000-00-00', '', '', '', 'Y'),
(20, 'Galeri Video', 'video', 12, 0, '0000-00-00', '', '', '', 'N'),
(21, 'Agenda Kegiatan', 'kegiatan', 18, 0, '0000-00-00', '', '', '', 'Y'),
(22, 'Pengumuman', 'pengumuman', 18, 0, '0000-00-00', '', '', '', 'Y'),
(23, 'Data Pegawai/Staff', 'pegawai', 9, 0, '0000-00-00', '', '', '', 'Y'),
(25, 'Link Terkait', 'weblinks', 18, 0, '0000-00-00', '', '', '', 'Y'),
(26, 'Pengaduan Masyarakat', 'pengaduan/data', 18, 0, '0000-00-00', '', '', '', 'Y'),
(27, 'e-Polling', 'polling', 18, 0, '0000-00-00', '', '', '', 'Y'),
(28, 'Berita Umum', 'kategori/berita-umum', 6, 4, '0000-00-00', '', '', '', 'N'),
(29, 'Struktur Organisasi', 'profil/detail/9/struktur-organisasi', 3, 2, '0000-00-00', '', '', '', 'Y'),
(30, 'Visi & Misi', 'profil/detail/2/visimisidinasperhubunganprovinsijambi', 3, 1, '0000-00-00', '', '', '', 'Y'),
(31, 'Tugas Pokok & Fungsi', 'profil/detail/10/tugas-pokok--fungsi', 3, 3, '0000-00-00', '', '', '', 'Y'),
(32, 'Program Kegiatan', 'profil/detail/27/program-dan-kegiatan', 3, 4, '0000-00-00', '', '', '', 'Y'),
(34, 'Alamat Email OPD', 'profil/detail/15/alamat-email-opd', 11, 1, '0000-00-00', '', '', '', 'Y'),
(58, 'ARTIKEL', '/artikel', 6, 5, '2019-07-04', 'operator', '', '', 'Y'),
(59, 'Berita Provinsi', 'kategori/berita-provinsi', 6, 2, '2019-07-29', 'operator', '', '', 'Y'),
(40, 'Daftar Website Tanjabtim', 'dokumen/detail/3/daftar-weside-lingkup-organisasi-perangkat-daerah-tahun-2018', 11, 2, '0000-00-00', '', '', '', 'N'),
(43, 'Data Pegawai/Staff', 'pegawai', 3, 5, '2017-08-05', 'ngadmin', '', '', 'Y'),
(44, 'Keputusan Bupati', 'peraturan/kategori/10/keputusan-bupati', 8, 4, '2018-01-11', 'ngadmin', '', '', 'Y'),
(56, 'Kegiatan', '/kegiatan', 21, 0, '2019-07-04', 'operator', '', '', 'Y'),
(57, 'PENGUMUMAN', '/pengumuman', 11, 0, '2019-07-04', 'operator', '', '', 'Y'),
(47, 'Peraturan Kemendagri', 'peraturan/kategori/12/peraturan-kemendagri/', 8, 2, '2018-01-11', 'ngadmin', '', '', 'Y'),
(55, 'Data Rumah Ibadah', '', 11, 0, '2019-06-25', 'asiap', '', '', 'N'),
(54, 'BINMAS & KESBANG', 'profil/detail/24/tupoksi-bidang-bina-program-badan-kesatuan-bangsa-dan-politik-kabupaten-tanjung-jab', 7, 4, '2019-06-24', 'asiap', '', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `submenuadmin`
--

CREATE TABLE IF NOT EXISTS `submenuadmin` (
  `idsubmenu` int(5) NOT NULL AUTO_INCREMENT,
  `menuutama` int(5) NOT NULL,
  `namasubmenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linksubmenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan2` int(5) NOT NULL,
  PRIMARY KEY (`idsubmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=226 ;

--
-- Dumping data for table `submenuadmin`
--

INSERT INTO `submenuadmin` (`idsubmenu`, `menuutama`, `namasubmenu`, `linksubmenu`, `level`, `publish`, `urutan2`) VALUES
(1, 2, 'Menu Utama Admin', '?module=menuadmin', 'admin', 'Y', 1),
(2, 2, 'Sub Menu Administrator', '?module=submenuadmin', 'admin', 'Y', 2),
(219, 30, 'Jabatan Pegawai', '?module=jabatanpegawai', 'admin', 'Y', 93),
(121, 5, 'Backup Database', '?module=backup', 'admin', 'Y', 16),
(207, 38, 'Pengaduan Online', '?module=pengaduan', 'admin', 'Y', 82),
(148, 5, 'Manejemen User', '?module=user', 'admin,user', 'Y', 25),
(136, 5, 'Profil Institusi', '?module=identitas', 'admin', 'Y', 20),
(161, 5, 'Manajemen Modul', '?module=modul', 'admin', 'Y', 38),
(162, 30, 'Data Pegawai', '?module=pegawai', 'admin,user', 'Y', 39),
(215, 38, 'Banner Web', '?module=iklan', 'admin', 'Y', 89),
(212, 36, 'Data Produk Hukum', '?module=produkhukum', 'admin,user', 'Y', 86),
(213, 36, 'Kategori Produk Hukum', '?module=katprodukhukum', 'admin', 'Y', 87),
(214, 38, 'Telp Penting', '?module=telppenting', 'admin', 'Y', 88),
(180, 37, 'Menu Frontend (Lvl 1)', '?module=menu', 'admin', 'Y', 57),
(181, 37, 'Sub Menu Frontend (Lvl 2)', '?module=submenu', 'admin', 'Y', 58),
(182, 37, 'Sub Sub Menu Frontend (Lvl 3)', '?module=subsubmenu', 'admin', 'Y', 59),
(183, 38, 'Berita', '?module=berita', 'admin,user', 'Y', 60),
(184, 38, 'Kategori Berita', '?module=kategori', 'admin', 'Y', 61),
(186, 38, 'File Download', '?module=download', 'admin,user', 'Y', 63),
(187, 38, 'Image Slide', '?module=slideimage', 'admin', 'Y', 64),
(188, 38, 'Polling', '?module=polling', 'admin', 'Y', 65),
(189, 38, 'Jadwal Kegiatan', '?module=kegiatan', 'admin,user', 'Y', 66),
(190, 38, 'Weblink', '?module=weblink', 'admin,user', 'Y', 67),
(191, 38, 'Halaman Profil', '?module=halamanstatis', 'admin,user', 'Y', 68),
(192, 38, 'Album Photo', '?module=album', 'admin,user', 'Y', 69),
(193, 38, 'Gallery Photo', '?module=galerifoto', 'admin,user', 'Y', 70),
(217, 38, 'Video Youtube', '?module=video', 'admin,user', 'Y', 91),
(218, 38, 'Pengumuman', '?module=pengumuman', 'admin,user', 'Y', 92),
(220, 40, 'Kategori Produk Hukum', '?module=katprodukhukum', 'admin,user', 'Y', 95),
(221, 40, 'Data Peraturan/Produk Hukum', '?module=produkhukum', 'admin,user', 'Y', 96),
(222, 41, 'Data Anggota Dewan', '?module=dewan', 'admin,user', 'Y', 97),
(225, 41, 'Dapil', '?module=dapil', 'admin,user', 'Y', 100),
(224, 41, 'Data Fraksi', '?module=fraksi', 'admin,user', 'Y', 99);

-- --------------------------------------------------------

--
-- Table structure for table `subsubmenu`
--

CREATE TABLE IF NOT EXISTS `subsubmenu` (
  `id_subsubmenu` int(5) NOT NULL AUTO_INCREMENT,
  `nama_subsubmenu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_subsubmenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menu` int(5) NOT NULL,
  `id_submenu` int(11) NOT NULL,
  `urutan` int(2) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_subsubmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subsubmenu`
--

INSERT INTO `subsubmenu` (`id_subsubmenu`, `nama_subsubmenu`, `link_subsubmenu`, `id_menu`, `id_submenu`, `urutan`, `tgl_posting`, `username`, `keterangan`, `css`, `aktif`) VALUES
(1, 'TUPOKSI SEKRETARIAT', 'profil/detail/10/tugas-pokok--wewenang', 7, 51, 0, '2019-06-24', 'asiap', 'Sekretariat mempunyai tugas memberikan pelayanan teknis dan administratif kepada seluruh satuan organisasi di lingkungan Badan Kesatuan Bangsa dan Politik\r\n\r\nSekretariat dalam melaksanakan tugas sebagai berikut:\r\na. pelaksanaan koordinasi dan penyusunan rencana anggaran;\r\nb. pengelolaan urusan kepegawaian;\r\nc. pengelolaan urusan keuangan;  \r\nd. pelaksanaan urusan tata usaha; dan\r\ne. pengelolaan urusan umum. \r\n', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `subsubmenuadmin`
--

CREATE TABLE IF NOT EXISTS `subsubmenuadmin` (
  `id_subsubmenuadmin` int(5) NOT NULL AUTO_INCREMENT,
  `nama_subsubmenu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_subsubmenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menuadmin` int(3) NOT NULL,
  `id_submenuadmin` int(3) NOT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_subsubmenuadmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `id_support` int(2) NOT NULL,
  `id_yahoo1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_yahoo2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id_support`, `id_yahoo1`, `id_yahoo2`) VALUES
(1, 'i_walkbesideyou@yahoo.com', 'fff');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(5) NOT NULL,
  `trending` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`, `trending`, `jam`, `tgl_upload`, `tgl_modif`, `aktif`) VALUES
(10, 'Agama', 'asiap', 'agama', 0, 'Y', '16:33:59', '2019-06-24', '2019-07-29', 'N'),
(11, 'Binmas & Kesbang', 'asiap', 'binmas--kesbang', 0, 'Y', '16:34:06', '2019-06-24', '2019-07-29', 'N'),
(9, 'Aliran Kepercayaan', 'asiap', 'aliran-kepercayaan', 0, 'Y', '16:34:02', '2019-06-24', '2019-07-29', 'N'),
(14, 'Pemilu', 'asiap', 'pemilu', 0, 'Y', '16:33:50', '2019-06-25', '2019-07-29', 'N'),
(12, 'Binpoltram', 'asiap', 'binpoltram', 0, 'Y', '16:33:56', '2019-06-25', '2019-07-29', 'N'),
(13, 'Poliitik', 'asiap', 'poliitik', 0, 'Y', '16:33:52', '2019-06-25', '2019-07-29', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `telpon`
--

CREATE TABLE IF NOT EXISTS `telpon` (
  `id_telpon` int(3) NOT NULL AUTO_INCREMENT,
  `nama_telpon` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telpon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_upload` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_telpon`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `telpon`
--

INSERT INTO `telpon` (`id_telpon`, `nama_telpon`, `no_telpon`, `alamat`, `website`, `email`, `keterangan`, `aktif`, `urutan`, `tgl_upload`, `username`) VALUES
(1, 'Pemadam Kebakaran', '0741 - 0000000', '', '', '', '', 'Y', 0, '2016-04-04', 'ngadmin'),
(2, 'PLN', '0741 - 0000000', '', '', '', '', 'Y', 0, '2016-04-04', 'ngadmin'),
(3, 'RSUD Raden Mataher', '0741 - 0000000', '', '', '', '', 'Y', 0, '2016-04-04', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `desktop` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `desktop`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(16, 'N', 'Mobile Templates', 'admin', 'bermultimedia.com', 'templates/jambinews-mobile', 'N'),
(17, 'Y', 'Jambi News', 'admin', 'Johny Truman', 'templates/jambinews', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tingkatpendidikan`
--

CREATE TABLE IF NOT EXISTS `tingkatpendidikan` (
  `id_pend` int(2) NOT NULL AUTO_INCREMENT,
  `nama_pend` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pend`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tingkatpendidikan`
--

INSERT INTO `tingkatpendidikan` (`id_pend`, `nama_pend`) VALUES
(1, 'SD / SDLB / MI '),
(2, 'SMP / SMPLB / MTs '),
(3, 'SMA / SMK / MA '),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(3) NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blokir` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `id`, `nama_lengkap`, `email`, `kontak`, `alamat`, `jabatan`, `level`, `blokir`, `id_session`, `tanggal`, `jam`, `keterangan`) VALUES
('admin_kesbang', '202cb962ac59075b964b07152d234b70', 0, 'Lina Marry Susilawaty Hutagaol', 'linamshspt2018@gmail.com', '', 'Badan Kesbangpol Kab. TJT', 'Admin', 'admin', 'N', '202cb962ac59075b964b07152d234b70asiap', '2019-05-17', '20:26:41', ''),
('operator', 'caf1a3dfb505ffed0d024130f58c5cfa', 0, 'Restika', 'operator.kesbang@gmail.com', '0000', 'Ma Sabak', 'Operator', 'admin', 'N', '202cb962ac59075b964b07152d234b70operator', '2019-06-24', '15:48:30', ''),
('muh.ramadhan', '098f1a0a40052bfa7d146c0b7a4b76d6', 0, 'Muh. Ramadhan', 'muh.ramadhan@email.com', '082191272636', '', 'Programmer', 'admin', 'N', '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', '0000-00-00', '00:00:00', ''),
('operator2', '250cf8b51c773f3f8dc8b4be867a9a02', 0, 'Ahmad Muttaqin', 'operator2.kesbang@gmail.com', '0000', '', 'Operator', 'user', 'N', 'ab233b682ec355648e7891e66c54191boperator2', '2019-07-08', '08:29:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE IF NOT EXISTS `users_modul` (
  `id_umod` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_modul` int(11) NOT NULL,
  PRIMARY KEY (`id_umod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=136 ;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(11, '202cb962ac59075b964b07152d234b70joni', 5),
(10, '202cb962ac59075b964b07152d234b70joni', 3),
(3, '202cb962ac59075b964b07152d234b70joni', 4),
(4, '202cb962ac59075b964b07152d234b70joni', 14),
(5, '', 2),
(6, '', 5),
(7, '202cb962ac59075b964b07152d234b70joni', 2),
(9, '202cb962ac59075b964b07152d234b70joni', 1),
(13, '202cb962ac59075b964b07152d234b70nurti', 2),
(14, '75d896e2fbcf22f509615ba98451b005suryaaa', 1),
(15, '75d896e2fbcf22f509615ba98451b005suryaaa', 7),
(16, '75d896e2fbcf22f509615ba98451b005suryaaa', 8),
(17, '75d896e2fbcf22f509615ba98451b005suryaaa', 14),
(18, '75d896e2fbcf22f509615ba98451b005suryaaa', 9),
(19, '75d896e2fbcf22f509615ba98451b005suryaaa', 15),
(20, '75d896e2fbcf22f509615ba98451b005suryaaa', 16),
(88, '202cb962ac59075b964b07152d234b70asiap', 1),
(22, '202cb962ac59075b964b07152d234b70asiap', 2),
(23, '202cb962ac59075b964b07152d234b70asiap', 3),
(24, '202cb962ac59075b964b07152d234b70asiap', 4),
(25, '202cb962ac59075b964b07152d234b70asiap', 5),
(26, '202cb962ac59075b964b07152d234b70asiap', 6),
(27, '202cb962ac59075b964b07152d234b70asiap', 7),
(28, '202cb962ac59075b964b07152d234b70asiap', 8),
(29, '202cb962ac59075b964b07152d234b70asiap', 9),
(30, '202cb962ac59075b964b07152d234b70asiap', 10),
(31, '202cb962ac59075b964b07152d234b70asiap', 11),
(32, '202cb962ac59075b964b07152d234b70asiap', 12),
(33, '202cb962ac59075b964b07152d234b70asiap', 13),
(34, '202cb962ac59075b964b07152d234b70asiap', 14),
(35, '202cb962ac59075b964b07152d234b70asiap', 15),
(36, '202cb962ac59075b964b07152d234b70asiap', 16),
(37, '202cb962ac59075b964b07152d234b70ngadmin', 1),
(38, '202cb962ac59075b964b07152d234b70ngadmin', 2),
(39, '202cb962ac59075b964b07152d234b70ngadmin', 3),
(40, '202cb962ac59075b964b07152d234b70ngadmin', 4),
(41, '202cb962ac59075b964b07152d234b70ngadmin', 5),
(42, '202cb962ac59075b964b07152d234b70ngadmin', 6),
(43, '202cb962ac59075b964b07152d234b70ngadmin', 7),
(44, '202cb962ac59075b964b07152d234b70ngadmin', 8),
(45, '202cb962ac59075b964b07152d234b70ngadmin', 9),
(46, '202cb962ac59075b964b07152d234b70ngadmin', 10),
(47, '202cb962ac59075b964b07152d234b70ngadmin', 11),
(48, '202cb962ac59075b964b07152d234b70ngadmin', 12),
(49, '202cb962ac59075b964b07152d234b70ngadmin', 13),
(50, '202cb962ac59075b964b07152d234b70ngadmin', 14),
(51, '202cb962ac59075b964b07152d234b70ngadmin', 15),
(52, '202cb962ac59075b964b07152d234b70ngadmin', 16),
(53, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 1),
(54, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 2),
(55, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 3),
(56, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 4),
(57, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 5),
(58, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 6),
(59, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 7),
(60, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 8),
(61, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 9),
(62, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 10),
(63, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 11),
(64, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 12),
(65, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 13),
(66, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 14),
(67, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 15),
(69, '1bde5db14048a5797610ee63dbb91d91qweqweqwe', 1),
(70, '202cb962ac59075b964b07152d234b70admin', 1),
(71, '202cb962ac59075b964b07152d234b70admin', 2),
(72, '202cb962ac59075b964b07152d234b70admin', 3),
(73, '202cb962ac59075b964b07152d234b70admin', 4),
(74, '202cb962ac59075b964b07152d234b70admin', 5),
(75, '202cb962ac59075b964b07152d234b70admin', 6),
(76, '202cb962ac59075b964b07152d234b70admin', 7),
(77, '202cb962ac59075b964b07152d234b70admin', 8),
(78, '202cb962ac59075b964b07152d234b70admin', 9),
(79, '202cb962ac59075b964b07152d234b70admin', 10),
(80, '202cb962ac59075b964b07152d234b70admin', 11),
(81, '202cb962ac59075b964b07152d234b70admin', 12),
(82, '202cb962ac59075b964b07152d234b70admin', 13),
(83, '202cb962ac59075b964b07152d234b70admin', 14),
(84, '202cb962ac59075b964b07152d234b70admin', 15),
(85, '202cb962ac59075b964b07152d234b70admin', 16),
(86, '202cb962ac59075b964b07152d234b70operator', 1),
(87, '202cb962ac59075b964b07152d234b70operator', 2),
(89, '202cb962ac59075b964b07152d234b70operator', 3),
(90, '202cb962ac59075b964b07152d234b70operator', 4),
(91, '202cb962ac59075b964b07152d234b70operator', 5),
(92, '202cb962ac59075b964b07152d234b70operator', 6),
(93, '202cb962ac59075b964b07152d234b70operator', 7),
(94, '202cb962ac59075b964b07152d234b70operator', 8),
(95, '202cb962ac59075b964b07152d234b70operator', 9),
(96, '202cb962ac59075b964b07152d234b70operator', 10),
(97, '202cb962ac59075b964b07152d234b70operator', 11),
(98, '202cb962ac59075b964b07152d234b70operator', 12),
(99, '202cb962ac59075b964b07152d234b70operator', 13),
(100, '202cb962ac59075b964b07152d234b70operator', 14),
(101, '202cb962ac59075b964b07152d234b70operator', 15),
(102, '202cb962ac59075b964b07152d234b70operator', 16),
(103, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 1),
(104, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 2),
(105, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 3),
(106, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 4),
(107, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 5),
(108, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 6),
(109, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 7),
(110, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 8),
(111, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 9),
(112, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 10),
(113, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 11),
(114, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 12),
(115, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 13),
(116, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 14),
(117, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 15),
(118, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 16),
(119, 'ab233b682ec355648e7891e66c54191boperator2', 1),
(121, 'ab233b682ec355648e7891e66c54191boperator2', 3),
(125, 'ab233b682ec355648e7891e66c54191boperator2', 7),
(126, 'ab233b682ec355648e7891e66c54191boperator2', 8),
(132, 'ab233b682ec355648e7891e66c54191boperator2', 14),
(133, 'ab233b682ec355648e7891e66c54191boperator2', 15),
(134, 'ab233b682ec355648e7891e66c54191boperator2', 16);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `link`, `aktif`, `tanggal`, `username`) VALUES
(32, 'DISKOMINTO KAB. TANJUNG JABUNG TIMUR GANDENG KEMENTRIAN, BADAN SIBER DAN SANDI NEGARA ', 'https://www.youtube.com/watch?v=3dbfrSenmIE', 'Y', '2017-06-22', 'ngadmin'),
(34, 'Marhaban Ya Ramadan 1439 H Selamat Menunaikan Ibadah Puasa Kab. Tanjung Jabung Timur', 'https://www.youtube.com/watch?v=V1eABsqOaRE', 'Y', '0000-00-00', 'ngadmin'),
(35, 'Penampilan Goup Band Buterrfly dalam acara pencanangan Kampung Bersih Narkoba', 'https://www.youtube.com/watch?v=OFzuvGGalo4&feature=youtu.be', 'Y', '0000-00-00', 'ngadmin'),
(36, 'Talenta Bermusik Bupati Tanjung Jabung Timur H. Romi Hariyanto', 'https://www.youtube.com/watch?v=MexXHdWpLgM', 'Y', '0000-00-00', 'ngadmin'),
(37, 'tes', 'https://www.youtube.com/watch?v=jukhJtIhsik', 'N', '0000-00-00', 'operator'),
(38, 'ttteeesssss', 'https://www.youtube.com/watch?v=ZL27rL1vJMk', 'Y', '0000-00-00', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `weblink`
--

CREATE TABLE IF NOT EXISTS `weblink` (
  `id_weblink` int(2) NOT NULL AUTO_INCREMENT,
  `nama_weblink` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(2) NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_weblink`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `weblink`
--

INSERT INTO `weblink` (`id_weblink`, `nama_weblink`, `link`, `gambar`, `keterangan`, `urutan`, `aktif`, `tgl_upload`, `tgl_modif`, `username`) VALUES
(1, 'Dewan Perwakilan Rakyat RI', 'http://dpr.go.id', '', '', 0, 'N', '2014-11-14', '0000-00-00', 'ngadmin'),
(30, 'Pemerintah Provinsi Jambi', 'http://jambiprov.go.id', '', '', 0, 'Y', '2019-07-08', '2019-07-08', 'operator'),
(28, 'Dirjen Politik & Pemerintahan Umum', 'http://polpum.kemendagri.go.id/', '', '', 0, 'Y', '2019-07-08', '2019-07-08', 'operator'),
(31, 'Pemerintah Tanjung Jabung Timur', 'https://tanjabtimkab.go.id/', '', '', 0, 'Y', '2019-07-08', '2019-07-08', 'operator'),
(27, 'Kementerian Dalam Negeri', 'https://www.kemendagri.go.id/', '', '', 0, 'Y', '2019-07-08', '2019-07-08', 'operator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
