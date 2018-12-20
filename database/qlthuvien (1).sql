-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 03:16 PM
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
-- Database: `qlthuvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoadonmuon`
--

CREATE TABLE `hoadonmuon` (
  `id_hoadon` int(10) NOT NULL,
  `masv` int(10) DEFAULT NULL,
  `manv` int(10) DEFAULT NULL,
  `ngaymuon` date DEFAULT NULL,
  `ngaytra` date DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `thanhtien` float DEFAULT NULL,
  `id_sach` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaisach`
--

CREATE TABLE `loaisach` (
  `id_loaisach` int(10) NOT NULL,
  `tenloaisach` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisach`
--

INSERT INTO `loaisach` (`id_loaisach`, `tenloaisach`) VALUES
(1, 'công nghệ thông tin '),
(2, 'xây dự');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(10) NOT NULL,
  `hotennv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namsinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hotennv`, `namsinh`, `chucvu`) VALUES
(1, 'nguyễn văn A', '1993', 'nhân viên'),
(2, 'nguyễn văn B', '1992', 'nhân viên '),
(3, 'nguyễn văn c', '1992', 'nhân viên'),
(4, 'nguyễn văn D', '1991', 'nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `id_sach` int(10) NOT NULL,
  `tensach` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_loaisach` int(10) DEFAULT NULL,
  `id_tacgia` int(10) DEFAULT NULL,
  `urlhinh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `giamuon` float DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `soluongcon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id_sach`, `tensach`, `id_loaisach`, `id_tacgia`, `urlhinh`, `mota`, `gia`, `giamuon`, `soluong`, `soluongcon`) VALUES
(1, 'Tin đại cương123', 1, 1, 'anh1.jpg', 'nội dung chinh là các cách khai báo biến , các vong lặp và các ví dụ cơ bản ', 100, 1, 1000, 300),
(18, 'th', 1, 1, 'anh5.jpg', 'hay vaf rat hay', 2345, 0, 1234, 12),
(20, 'th', 2, 1, 'anh6.jpg', 'hay vaf rat hay', 2345, 0, 1234, 12),
(21, 'th', 2, 1, 'anh3.jpg', 'hay vaf rat hay', 2345, 0, 1234, 12),
(24, 'the', 2, 1, 'ang5.jpg', 'hay vaf rat hay', 2345, 0, 1234, 12),
(25, 'a', 2, 1, 'ang3.jpg', 'hay vaf rat hay hay vaf rat hay hay vaf rat hay hay vaf rat hay hay vaf rat hay ', 2345, 0, 1234, 12);

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masv` int(10) NOT NULL,
  `hotensv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namsinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lop` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`masv`, `hotensv`, `namsinh`, `lop`) VALUES
(101, 'nguyễn quốc thế', '1998', '58th2'),
(102, 'Tống Đức THắng', '1997', '58th2'),
(103, 'TRần kim tín ', '1995', '58th2'),
(0, 'Nguyễn Danh Tấn', '1996', '58th1'),
(104, 'Trần văn tiến ', '1998', '58th2'),
(105, 'nguyễn văn thi', '1994', '58th2');

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `id_tacgia` int(10) NOT NULL,
  `hotentg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namsinh` int(10) NOT NULL,
  `quequan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`id_tacgia`, `hotentg`, `namsinh`, `quequan`, `sdt`) VALUES
(3, 'nguyễn văn nam', 1987, 'hà nội', 0),
(4, 'kiều tuấn dũng', 1995, 'hà nội', 0),
(5, 'the', 199, '5', 12),
(6, 'th', 199, '6', 12);

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `id_thongbao` int(10) NOT NULL,
  `tieude` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlhinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`id_thongbao`, `tieude`, `mota`, `noidung`, `urlhinh`) VALUES
(1, 'Báo đóng cửa ', 'Thư viện tạm thời đóng cửa 1 tuần  ,do chirng sửa 1 số trang thiết bị , để đảm bảo an toàn , nhà trường xin đóng lại ....', 'do chirng sửa 1 số trang thiết bị , để đảm bảo an toàn , nhà trường xin đóng lại ,do chirng sửa 1 số trang thiết bị , để đảm bảo an toàn , nhà trường xin đóng lại ,do chirng sửa 1 số trang thiết bị , để đảm bảo an toàn , nhà trường xin đóng lại ', 'thongbao.jpg'),
(2, 'Cảnh báo', 'Cảnh báo các bạn vứt rác bừa bãi....', 'gần đây nhà thư viejn sẩu ra hiện tượng vứt rác bừa bãi , các bạn hãy có ý thức bảo vệ môi truowofng thư viện , nhà trường sẽ lắp camera và ai bị phát hiện sẽ bị cảnh báo ', 'thongbao.jpg'),
(3, 'Thông báo hết sách', 'Quấn sách A đang tạm hết  , nếu các bạn muốn mượn thì hãy đợi đến ngày .....', 'Quấn sách A đang tạm hết  , nếu các bạn muốn mượn thì hãy đợi đến ngày  20/11/2012 , nhà trường sẽ lấy thêm sách để phục vụ các bạn \r\nQuấn sách A đang tạm hết  , nếu các bạn muốn mượn thì hãy đợi đến ngày  20/11/2012 , nhà trường sẽ lấy thêm sách để phục vụ các bạn \r\nQuấn sách A đang tạm hết  , nếu các bạn muốn mượn thì hãy đợi đến ngày  20/11/2012 , nhà trường sẽ lấy thêm sách để phục vụ các bạn ', 'thongbao.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen_truy_cap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `quyen_truy_cap`) VALUES
(1, 'nguyenthe', '123456', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoadonmuon`
--
ALTER TABLE `hoadonmuon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Indexes for table `loaisach`
--
ALTER TABLE `loaisach`
  ADD PRIMARY KEY (`id_loaisach`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id_sach`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id_tacgia`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id_thongbao`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadonmuon`
--
ALTER TABLE `hoadonmuon`
  MODIFY `id_hoadon` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisach`
--
ALTER TABLE `loaisach`
  MODIFY `id_loaisach` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `id_sach` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id_tacgia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id_thongbao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
