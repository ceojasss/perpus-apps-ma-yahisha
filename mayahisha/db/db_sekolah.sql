-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 08:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_agama`
--

CREATE TABLE `tb_agama` (
  `id_agama` int(11) NOT NULL,
  `nama_agama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_agama`
--

INSERT INTO `tb_agama` (`id_agama`, `nama_agama`) VALUES
(6, 'ISLAM'),
(7, 'KRISTEN'),
(8, 'HINDU'),
(9, 'BUDHA'),
(10, 'KONGHUCU');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alumni`
--

CREATE TABLE `tb_alumni` (
  `id_alumni` int(11) NOT NULL,
  `nis_alumni` varchar(50) NOT NULL,
  `nama_alumni` varchar(50) NOT NULL,
  `jk_alumni` enum('L','P') NOT NULL,
  `agama_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alumni`
--

INSERT INTO `tb_alumni` (`id_alumni`, `nis_alumni`, `nama_alumni`, `jk_alumni`, `agama_id`) VALUES
(1, '10116040', 'asdasd', 'L', 10),
(2, '10116041', 'barbar code lah', 'P', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id_banner` int(11) NOT NULL,
  `nama_banner` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id_banner`, `nama_banner`, `foto`) VALUES
(1, 'MA YAHISHA', '2019-08-20-13-Foto-Kepala-Komite.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `lihatberita_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_direksiswa`
--

CREATE TABLE `tb_direksiswa` (
  `id_direksiswa` int(11) NOT NULL,
  `nis_direksiswa` varchar(50) NOT NULL,
  `nama_direksiswa` varchar(50) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `jk_direksiswa` enum('L','P') NOT NULL,
  `agama_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_direksiswa`
--

INSERT INTO `tb_direksiswa` (`id_direksiswa`, `nis_direksiswa`, `nama_direksiswa`, `kelas_id`, `jk_direksiswa`, `agama_id`) VALUES
(4, '123', 'asd', 2, 'P', 7),
(5, '21312312', 'asd', 3, 'L', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ekskul`
--

CREATE TABLE `tb_ekskul` (
  `id_ekskul` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ekskul`
--

INSERT INTO `tb_ekskul` (`id_ekskul`, `foto`) VALUES
(1, '2019-08-01-971-Foto-Ekskul.jpg'),
(3, '2019-08-01-726-Foto-Ekskul.jpg'),
(4, '2019-08-01-670-Foto-Ekskul.jpg'),
(5, '2019-08-23-652-Foto-Ekskul.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `foto`) VALUES
(1, '2019-08-01-595-Foto-Galeri.jpg'),
(2, '2019-08-01-279-Foto-Galeri.jpg'),
(3, '2019-08-01-933-Foto-Galeri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_tugasguru` int(11) NOT NULL,
  `jk` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `id_mapel`, `id_tugasguru`, `jk`) VALUES
(1, '121312312', 'njos', 4, 1, 'L'),
(2, '4234234', 'Njos', 3, 2, 'L'),
(4, '1313123123', 'anjas gans', 4, 2, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kalender`
--

CREATE TABLE `tb_kalender` (
  `id_kalender` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kalender`
--

INSERT INTO `tb_kalender` (`id_kalender`, `gambar`, `last_update`) VALUES
(1, '2019-07-30-20-gambar-kalender.jpg', '2019-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
(1, 'XI IPA 1'),
(2, 'XI IPA 2'),
(3, 'XI IPA 3'),
(4, 'X IPA 1'),
(5, 'X IPA 2'),
(6, 'X IPA 3'),
(7, 'XII IPA 1'),
(8, 'XII IPA 2'),
(9, 'XII IPA 3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepalakomite`
--

CREATE TABLE `tb_kepalakomite` (
  `id_kepalakomite` int(11) NOT NULL,
  `nama_kepalakomite` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kepalakomite`
--

INSERT INTO `tb_kepalakomite` (`id_kepalakomite`, `nama_kepalakomite`, `foto`, `keterangan`) VALUES
(5, 'Drs. Anjas Kurnia Sandy', '2019-08-23-629-Foto-Kepala-Komite.jpg', 'NIP : 19611224 198203 1 008,\r\nTTL	: Tanjung Karang, 24 Desember 1961,\r\nUmur	: 54 tahun,\r\nJabatan	: Kepala SMA Negeri 2 Bandung,\r\nPangkat	: IV/A'),
(6, 'Drs. Fifi', '2019-08-09-130-Foto-Kepala-Komite.jpg', 'NIP Lama	: -\r\nNIP Baru	: 19611224 198203 1 008\r\nNUPTK	: -\r\nTTL	: Tanjung Karang, 24 Desember 1961\r\nUmur	: 33 tahun\r\nJabatan	: Kepala SMA Negeri 2 Kerawang\r\nPangkat	: IV/A');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lihatberita`
--

CREATE TABLE `tb_lihatberita` (
  `id_lihatberita` int(11) NOT NULL,
  `nama_lihatberita` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `keterangan_lihatberita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_lihatberita`
--

INSERT INTO `tb_lihatberita` (`id_lihatberita`, `nama_lihatberita`, `foto`, `keterangan_lihatberita`) VALUES
(4, 'Pekan Seni Pelajar', '2019-08-07-769-Foto-Lihat-Berita.jpg', 'Seni adalah keahlian membuat karya yang bermutu, seperti tari, lukisan, ukiran. Seni meliputi banyak kegiatan dalam menciptakan karya visual, audio, atau pertunjukan yang mengungkapkan imajinasi atau gagasan untuk dihargai keindahan atau kekuatan emosinya. Pada zaman sekarang, remaja sudah sering terlibat bahkan turun langsung dalam kegiatan-kegiatan seni seperti pentas seni dan lomba-lomba seni. Seperti yang dilakukan SMAN 2 Bandung dalam kegiatan rutin tahunan yaitu Pekan Seni Pelajar.\r\nKegiatan PSP atau Pekan Seni Pelajar tahun ini diadakan di Dago Tea House pada Hari Sabtu, tanggal 6 April 2019.\r\nKegiatan Pekan Seni Pelajar ini, merupakan salah satu wadah untuk menyalurkan kreativitas dan bakat para siswa di bidang seni karena dalam PSP ini mencakup seni drama, seni musik, dan seni tari. Kegiatan PSP sekaligus menjadi ujian untuk mata pelajaran Seni Budaya bagi siswa-siswi SMAN 2 Bandung kelas 11. Di Pekan Seni Pelajar ini, mereka menampilkan pertunjukan teater perkelas. Mereka mempersiapkan kegiatan ini dengan sangat baik, mulai dari akting, koreografi, ide cerita, dekorasi, tata rias, kostum, lighting, dan musik. Disamping penampilan teater dari para peserta kelas 11, ada juga penampilan dari band SMAN 2 Bandung dan Vocal Group 2.\r\nSelain itu, kegiatan positif ini sangat didukung oleh para siswa dan guru sehingga acara PSP ini semakin meriah hingga akhir acara. Terbukti dari banyaknya guru yang menyaksikan murid-muridnya tampil dalam kegiatan ini, begitu juga banyaknya siswa-siswi kelas 10 dan kelas 12 yang menyaksikan kegiatan ini, bahkan tak sedikit orangtua siswa yang menyaksikan anak mereka tampil dalam kegiatan PSP ini. Lalu bagaimana harapan peserta untuk kegiatan PSP kedepannya ? “Saya berharap PSP akan terus berlanjut lebih baik lagi, terutama dalam pelaksanaannya dan dalam mengapresiasi para pelaksana yang telah berjuang membangun timnya masing-masing. semoga PSP ini bisa menjadi arena untuk berkreasi dan bereksperimen, guna menciptakan pribadi yang lebih kreatif, inovatif, dan produktif.” Ucap Bintang Naufal sebagai peserta PSP dari kelas XI IPA 7.\r\nBegitulah kira-kira suasana pada kegiatan PSP XXIV. Sampai jumpa di PSP tahun depan !'),
(5, 'Pekan Seni Pelajar XXIII', '2019-08-07-958-Foto-Lihat-Berita.jpg', 'Seni adalah segala sesuatu yang diciptakan oleh manusia yang mengandung unsur keindahan dan mampu membangkitkan perasaan orang lain. Pada zaman sekarang, remaja sudah sering terlihat bahkan turun langsung dalam kegiatan-kegiatan seni seperti pentas seni dan lomba-lomba seni. Selain merupakan kegiatan yang positif, mereka juga dapat menyalurkan bakat dan minat mereka. Pada Sabtu, 14 April 2018, SMA Negeri 2 Bandung kembali mengadakan acara rutin tahunan mereka yaitu Pekan Seni Pelajar (PSP) yang bertempat di Dago Tea House.\r\n\r\nKegiatan Pekan Seni Pelajar ini merupakan ajang bagi para siswa-siswi SMA Negeri 2 Bandung, tepatnya siswa-siswi tahun kedua menyalurkan kreativitas dan juga bakat mereka. Di Pekan Seni Pelajar ini, mereka menampilkan pertunjukan teater perkelas dengan persiapan yang matang, bagaimana tidak? Mereka benar-benar mempersiapkan acara satu hari ini dengan sangat baik, mulai dari akting, koreografi, ide cerita, musik, dekorasi, tata rias, kostum, hingga lighting. Akting yang mereka tampilkan pula tidak kalah dengan drama di teater-teater terkenal, mereka cukup terampil dalam menghayati karakter-karakter yang mereka perankan.\r\n\r\nAcara Pekan Seni Pelajar ini, cukup ramai didatangi. Tak sedikit guru-guru menyaksikan murid-muridnya tampil di teater kelas mereka masing-masing. Juga, orang tua dan bahkan siswa- siswi kelas 10 dan kelas 12 pun turut menyaksikan acara ini, “Soalnya rame banget, terus ditunggu-tunggu banget, deh. Pokoknya kreativitasnya tinggi banget lah ini, mah.”, ucap Dimas Daffa, siswa kelas X IPA 1.'),
(6, 'Rapat Persiapan Akreditasi Tahap II', '2019-08-07-166-Foto-Lihat-Berita.jpg', 'Pada Hari Rabu Tanggal 13 November 2013, Kepala SMA Negeri 2 Bandung Dr. Hj. Sundari, M.Pd mengadakan Rapat Persiapan Akreditasi Tahap 2 bersama Tenaga Pendidik dan Tenaga Kependidikan yang bertempat di Ruang Guru SMA Negeri 2 Bandung. Rapat tersebut membahas persiapan akhir dalam melengkapi dokumen penilaian.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(11) NOT NULL,
  `mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `mapel`) VALUES
(3, 'Matematika'),
(4, 'Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `tb_osis`
--

CREATE TABLE `tb_osis` (
  `id_osis` int(11) NOT NULL,
  `nama_osis` varchar(50) NOT NULL,
  `jabatan_osis` varchar(50) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_osis`
--

INSERT INTO `tb_osis` (`id_osis`, `nama_osis`, `jabatan_osis`, `kelas_id`) VALUES
(3, 'njos', 'ketua osis', 4),
(4, 'vanadia', 'wakil ketua osis', 7),
(5, 'anjas', 'presiden', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi`
--

CREATE TABLE `tb_prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `nama_prestasi` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prestasi`
--

INSERT INTO `tb_prestasi` (`id_prestasi`, `nama_prestasi`, `foto`) VALUES
(1, 'Juara I LCC 4 Pilar Kebangsaan Tk. Kota Bandung 2013', '2019-08-01-299-Foto-Kepala-Komite.jpg'),
(2, 'Juara Favorit I Bandung Lautan Api 2013', '2019-08-01-301-Foto-Prestasi.jpg'),
(3, 'Juara I Kejuaran Honda DBL West java 2013', '2019-08-01-28-Foto-Prestasi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi_sekolah`
--

CREATE TABLE `tb_prestasi_sekolah` (
  `id_prestasi_sekolah` int(11) NOT NULL,
  `penjelasan_prestasi_sekolah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prestasi_sekolah`
--

INSERT INTO `tb_prestasi_sekolah` (`id_prestasi_sekolah`, `penjelasan_prestasi_sekolah`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fuga eius quis suscipit odit ut ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sapraprofil`
--

CREATE TABLE `tb_sapraprofil` (
  `id_sapraprofil` int(11) NOT NULL,
  `nama_sapraprofil` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sapraprofil`
--

INSERT INTO `tb_sapraprofil` (`id_sapraprofil`, `nama_sapraprofil`, `foto`) VALUES
(1, 'lab yahisya aja', '2019-08-09-253-Foto-Kepala-Komite.jpg'),
(2, 'Lapangan sekolah', '2019-07-28-509-Foto-Kepala-Komite.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sarana_prasana`
--

CREATE TABLE `tb_sarana_prasana` (
  `id_sarana_prasana` int(11) NOT NULL,
  `penjelasan_sarana_prasana` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sarana_prasana`
--

INSERT INTO `tb_sarana_prasana` (`id_sarana_prasana`, `penjelasan_sarana_prasana`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ea necessitatibus explicabo dolorem, minima quibusdam, laboriosam culpa inventore, eius sunt dolor ad vitae similique asperiores dicta. Iure ullam ducimus quam temporibus, culpa quos laudantium, soluta itaque minus ab omnis unde. Rem quia nam ipsam consectetur recusandae minima corporis quasi praesentium quaerat repellendus eos, expedita tenetur? Voluptatibus vero facilis cumque quia, dolor eum est ea minus expedita in, possimus quasi, excepturi veritatis corrupti consequuntur at veniam maiores. Voluptatem fugiat ipsa libero molestiae? Odio, placeat. Doloremque incidunt iusto id temporibus magnam? Suscipit inventore porro officiis molestias consequuntur, amet neque iure dolore fuga.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah`
--

CREATE TABLE `tb_sejarah` (
  `id_sejarah` int(11) NOT NULL,
  `penjelasan_sejarah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sejarah`
--

INSERT INTO `tb_sejarah` (`id_sejarah`, `penjelasan_sejarah`) VALUES
(1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cumque voluptates ad ipsa voluptatibus explicabo quas debitis autem sunt natus vitae sed modi dolor in minima commodi, eligendi tempore magni architecto ab perferendis quod repudiandae quos. Nostrum libero quia sed?`');

-- --------------------------------------------------------

--
-- Table structure for table `tb_strukturorganisasi`
--

CREATE TABLE `tb_strukturorganisasi` (
  `id_strukturorganisasi` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_strukturorganisasi`
--

INSERT INTO `tb_strukturorganisasi` (`id_strukturorganisasi`, `gambar`, `last_update`) VALUES
(1, '2019-08-23-54-gambar-struktur-organisasi.jpg', '2019-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tugasguru`
--

CREATE TABLE `tb_tugasguru` (
  `id_tugasguru` int(11) NOT NULL,
  `tugasguru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tugasguru`
--

INSERT INTO `tb_tugasguru` (`id_tugasguru`, `tugasguru`) VALUES
(1, 'Guru'),
(2, 'Satpam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visimisi`
--

CREATE TABLE `tb_visimisi` (
  `id_visimisi` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_visimisi`
--

INSERT INTO `tb_visimisi` (`id_visimisi`, `visi`, `misi`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Id, excepturi! Nihil dolorum voluptates iure adipisci debitis, nobis natus non! Esse.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus officia eum delectus suscipit nihil debitis atque reiciendis quisquam architecto aperiam illum similique earum velit sint, saepe repellendus, reprehenderit ad nam!');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto_admin` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `foto_admin`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(10, 'admin', 'admin@gmail.com', 'default.jpg', '0192023a7bbd73250516f069df18b500', 1, 1, 1565927968),
(11, 'njos', 'njoskuykuy123@gmail.com', '2019-08-16-718-Profil.jpg', '7d345a4bbd851c78d170856496fb907b', 2, 1, 1565928073),
(20, 'surya', 'sur@gmail.com', 'default.jpg', '0d343ce8aead1a732593829368fdde61', 2, 1, 1565957318),
(21, 'bagas', 'bagas123@gmail.com', 'default.jpg', '5ffd9bb73b00bce4feeb77e2d12722da', 2, 1, 1565957786);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agama`
--
ALTER TABLE `tb_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD KEY `tb_alumni_ibfk_1` (`agama_id`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `tb_berita_ibfk_1` (`lihatberita_id`);

--
-- Indexes for table `tb_direksiswa`
--
ALTER TABLE `tb_direksiswa`
  ADD PRIMARY KEY (`id_direksiswa`),
  ADD KEY `tb_direksiswa_ibfk_1` (`agama_id`),
  ADD KEY `tb_direksiswa_ibfk_2` (`kelas_id`);

--
-- Indexes for table `tb_ekskul`
--
ALTER TABLE `tb_ekskul`
  ADD PRIMARY KEY (`id_ekskul`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `tb_guru_ibfk_1` (`id_mapel`),
  ADD KEY `tb_guru_ibfk_2` (`id_tugasguru`);

--
-- Indexes for table `tb_kalender`
--
ALTER TABLE `tb_kalender`
  ADD PRIMARY KEY (`id_kalender`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kepalakomite`
--
ALTER TABLE `tb_kepalakomite`
  ADD PRIMARY KEY (`id_kepalakomite`);

--
-- Indexes for table `tb_lihatberita`
--
ALTER TABLE `tb_lihatberita`
  ADD PRIMARY KEY (`id_lihatberita`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_osis`
--
ALTER TABLE `tb_osis`
  ADD PRIMARY KEY (`id_osis`),
  ADD KEY `tb_osis_ibfk_1` (`kelas_id`);

--
-- Indexes for table `tb_prestasi`
--
ALTER TABLE `tb_prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `tb_prestasi_sekolah`
--
ALTER TABLE `tb_prestasi_sekolah`
  ADD PRIMARY KEY (`id_prestasi_sekolah`);

--
-- Indexes for table `tb_sapraprofil`
--
ALTER TABLE `tb_sapraprofil`
  ADD PRIMARY KEY (`id_sapraprofil`);

--
-- Indexes for table `tb_sarana_prasana`
--
ALTER TABLE `tb_sarana_prasana`
  ADD PRIMARY KEY (`id_sarana_prasana`);

--
-- Indexes for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

--
-- Indexes for table `tb_strukturorganisasi`
--
ALTER TABLE `tb_strukturorganisasi`
  ADD PRIMARY KEY (`id_strukturorganisasi`);

--
-- Indexes for table `tb_tugasguru`
--
ALTER TABLE `tb_tugasguru`
  ADD PRIMARY KEY (`id_tugasguru`);

--
-- Indexes for table `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  ADD PRIMARY KEY (`id_visimisi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agama`
--
ALTER TABLE `tb_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_direksiswa`
--
ALTER TABLE `tb_direksiswa`
  MODIFY `id_direksiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_ekskul`
--
ALTER TABLE `tb_ekskul`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_kalender`
--
ALTER TABLE `tb_kalender`
  MODIFY `id_kalender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_kepalakomite`
--
ALTER TABLE `tb_kepalakomite`
  MODIFY `id_kepalakomite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_lihatberita`
--
ALTER TABLE `tb_lihatberita`
  MODIFY `id_lihatberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_osis`
--
ALTER TABLE `tb_osis`
  MODIFY `id_osis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_prestasi`
--
ALTER TABLE `tb_prestasi`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_prestasi_sekolah`
--
ALTER TABLE `tb_prestasi_sekolah`
  MODIFY `id_prestasi_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sapraprofil`
--
ALTER TABLE `tb_sapraprofil`
  MODIFY `id_sapraprofil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_sarana_prasana`
--
ALTER TABLE `tb_sarana_prasana`
  MODIFY `id_sarana_prasana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  MODIFY `id_sejarah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_strukturorganisasi`
--
ALTER TABLE `tb_strukturorganisasi`
  MODIFY `id_strukturorganisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_tugasguru`
--
ALTER TABLE `tb_tugasguru`
  MODIFY `id_tugasguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  MODIFY `id_visimisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  ADD CONSTRAINT `tb_alumni_ibfk_1` FOREIGN KEY (`agama_id`) REFERENCES `tb_agama` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD CONSTRAINT `tb_berita_ibfk_1` FOREIGN KEY (`lihatberita_id`) REFERENCES `tb_lihatberita` (`id_lihatberita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_direksiswa`
--
ALTER TABLE `tb_direksiswa`
  ADD CONSTRAINT `tb_direksiswa_ibfk_1` FOREIGN KEY (`agama_id`) REFERENCES `tb_agama` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_direksiswa_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD CONSTRAINT `tb_guru_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `tb_mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_guru_ibfk_2` FOREIGN KEY (`id_tugasguru`) REFERENCES `tb_tugasguru` (`id_tugasguru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_osis`
--
ALTER TABLE `tb_osis`
  ADD CONSTRAINT `tb_osis_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
