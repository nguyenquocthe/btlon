-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 04:16 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qltv`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieumuon`
--

CREATE TABLE `chitietphieumuon` (
  `mapm` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sach` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaymuon` date DEFAULT NULL,
  `ngaytra` date DEFAULT NULL,
  `trangthailm` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docgia`
--

CREATE TABLE `docgia` (
  `madg` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotendg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hansudung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docgia`
--

INSERT INTO `docgia` (`madg`, `hotendg`, `diachi`, `ngaysinh`, `gioitinh`, `hansudung`) VALUES
('dg1', 'nguyễn văn thuyên', 'thanh hóa', '2018-12-18', 'nam', '2018-12-27'),
('dg2', 'trương thanh thiện', 'hà nooij', '2018-12-11', 'nam', '2018-12-25'),
('dg3', 'trần văn tiến', 'nghệ an', '2018-12-18', 'nam', '2018-12-27'),
('dg4', 'nguyên văn thi', 'nam định', '2018-12-19', 'nam', '2018-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `loaisach`
--

CREATE TABLE `loaisach` (
  `id_loaisach` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenloaisach` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisach`
--

INSERT INTO `loaisach` (`id_loaisach`, `tenloaisach`) VALUES
('ls2', 'đời sống'),
('ls3', 'công nghệ thông tin'),
('ls4', 'khoa học');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id_user` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quyen_try_cap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id_user`, `username`, `password`, `quyen_try_cap`) VALUES
('nd1', 'nguyenthe', '123456', 1),
('nd2', 'nguyenthoi', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotennv` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `urlhinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `id_user`, `hotennv`, `diachi`, `ngaysinh`, `gioitinh`, `sdt`, `urlhinh`, `chucvu`, `gmail`) VALUES
('', 'nd1', 'the', 'hà nội', '0000-00-00', 'nam', 182828282, 'nv8.jpg', 'nhân viên', 'nguyenthe@gmail.com'),
('nv1', 'nd1', 'nguyễn thanh ', 'hà nọi', '2018-12-10', 'nam', 917383, 'nv1.jpg', 'nhân viên', 'thanhtung@gmail.com'),
('nv10', 'nd2', 'đời sốn', 'hà nội', '0000-00-00', 'nam', 182828282, 'nv8.jpg', 'nhân viên', 'nguyenthe@gmail.com'),
('nv11', 'nd1', 'đời sốn', 'ha noi', '0000-00-00', 'nam', 182828282, 'nv8.jpg', 'nhân viên', 'nguyenthe@gmail.com'),
('nv12', 'nd1', 'nguyễn thị hoài', 'ha noi', '0000-00-00', 'nam', 182828282, 'nv9.jpg', 'nhân viên', 'nguyenthe@gmail.com'),
('nv13', 'nd1', 'đời sốn', 'ha noi', '0000-00-00', 'nam', 182828282, 'nv8.jpg', 'nhân viên', 'nguyenthe@gmail.com'),
('nv14', 'nd2', 'Nguyễn Văn A', 'ha noi', '0000-00-00', 'nam', 182828282, 'nv2.jpg', 'trưởng phòng', 'nguyenthe@gmail.com'),
('nv2', 'nd2', 'nguyễn văn tôn', 'hà nội', '2018-12-12', 'nam', 3232535, 'nv2.jpg', 'Kế Toán', 'thanhton@gmail.com'),
('nv3', 'nd1', 'nguyễn văn thời', 'nam định', '2018-12-17', 'nam', 3232535, 'nv3.jpg', 'nhân viên', 'vanthoi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuon`
--

CREATE TABLE `phieumuon` (
  `mapm` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `madg` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manv` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieutra`
--

CREATE TABLE `phieutra` (
  `mapc` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapm` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaytra` date DEFAULT NULL,
  `tinhtrangsc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `id_sach` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensach` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_loaisach` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tacgia` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlhinh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci,
  `gia` float DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `soluongcon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id_sach`, `tensach`, `id_loaisach`, `id_tacgia`, `urlhinh`, `mota`, `gia`, `soluong`, `soluongcon`) VALUES
('s1', 'Văn Học Cổ Điển', 'ls3', 'tg3', 'anh5.jpg', 'Trẻ ăn mặc tự do, nhốn nháo, bố mẹ đứng lẫn với con\", chị Sơn kể về khai giảng chớp nhoáng của con trai tại một trường Mỹ.', 2345, 1234, 12),
('s11', 'đời sốn', 'ls3', 'tg3', 'anh2.jpg', 'Trẻ ăn mặc tự do, nhốn nháo, bố mẹ đứng lẫn với con\", chị Sơn kể về khai giảng chớp nhoáng của con trai tại một trường Mỹ.', 2345, 1234, 12),
('s2', 'khoa học', 'ls3', 'tg4', 'anh6.jpg', 'Trẻ ăn mặc tự do, nhốn nháo, bố mẹ đứng lẫn với con\", chị Sơn kể về khai giảng chớp nhoáng của con trai tại một trường Mỹ.', 2345, 1234, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `id_tacgia` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotentg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namsinh` date DEFAULT NULL,
  `quequan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`id_tacgia`, `hotentg`, `namsinh`, `quequan`, `sdt`) VALUES
('tg1', 'nguyễn quốc ', '2018-12-11', 'tg1', 12222),
('tg3', 'tống dức thắng ', '2018-12-10', 'hà nội', 91939),
('tg4', 'nguyễn danh tấn', '2018-12-18', 'hà nội', 18913),
('tg5', 'đời sốn', '2018-12-28', 'haha', 121313),
('tg6', 'thế', '2018-12-22', '2018_2019', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  ADD PRIMARY KEY (`mapm`,`id_sach`),
  ADD KEY `id_sach` (`id_sach`);

--
-- Indexes for table `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`madg`);

--
-- Indexes for table `loaisach`
--
ALTER TABLE `loaisach`
  ADD PRIMARY KEY (`id_loaisach`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD PRIMARY KEY (`mapm`),
  ADD KEY `madg` (`madg`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `phieutra`
--
ALTER TABLE `phieutra`
  ADD PRIMARY KEY (`mapc`),
  ADD KEY `mapm` (`mapm`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id_sach`),
  ADD KEY `id_loaisach` (`id_loaisach`),
  ADD KEY `id_tacgia` (`id_tacgia`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id_tacgia`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  ADD CONSTRAINT `chitietphieumuon_ibfk_1` FOREIGN KEY (`mapm`) REFERENCES `phieumuon` (`mapm`),
  ADD CONSTRAINT `chitietphieumuon_ibfk_2` FOREIGN KEY (`id_sach`) REFERENCES `sach` (`id_sach`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `nguoidung` (`id_user`);

--
-- Constraints for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD CONSTRAINT `phieumuon_ibfk_1` FOREIGN KEY (`madg`) REFERENCES `docgia` (`madg`),
  ADD CONSTRAINT `phieumuon_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `phieutra`
--
ALTER TABLE `phieutra`
  ADD CONSTRAINT `phieutra_ibfk_1` FOREIGN KEY (`mapm`) REFERENCES `phieumuon` (`mapm`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`id_loaisach`) REFERENCES `loaisach` (`id_loaisach`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`id_tacgia`) REFERENCES `tacgia` (`id_tacgia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
