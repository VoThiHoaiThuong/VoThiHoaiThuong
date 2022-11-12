-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2022 lúc 05:38 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_vieclam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `admin_status`) VALUES
(1, 'thuongadmin', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baivietuv`
--

CREATE TABLE `baivietuv` (
  `id_baiviet` int(11) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `tenungvien` varchar(255) NOT NULL,
  `luong` varchar(255) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietuv`
--

INSERT INTO `baivietuv` (`id_baiviet`, `id_nganhnghe`, `tenungvien`, `luong`, `id_diadiem`, `tenbaiviet`, `mota`, `hinhanh`, `ngaydang`, `tinhtrang`) VALUES
(2, 1, 'Nguyễn Thấp Vân Anh', '10.000.000 đ', 1, 'Đơn xin ứng tuyển', '<p>GOOD</p>\r\n', 'asus.png', '1/11/2022', 1),
(3, 1, 'Võ Thị Hoài Thương', '10.000.000 đ', 1, 'Bài đăng ứng tuyển', '<p>Good JOB</p>\r\n', 'meta.png', '6/11/2021', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baivietvl`
--

CREATE TABLE `baivietvl` (
  `id_baiviet` int(11) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `tenvieclam` varchar(255) NOT NULL,
  `luong` varchar(255) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietvl`
--

INSERT INTO `baivietvl` (`id_baiviet`, `id_nganhnghe`, `tenvieclam`, `luong`, `id_diadiem`, `tenbaiviet`, `mota`, `hinhanh`, `ngaydang`, `tinhtrang`) VALUES
(1, 1, 'Lập trình Java', '20.000.000 đ', 3, 'Bài đăng việc làm', '<p>GOOD</p>\r\n', 'asus.png', '1/11/2022', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_dk` int(11) NOT NULL,
  `tenungvien` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`id_dk`, `tenungvien`, `email`, `matkhau`) VALUES
(13, '', 'vanh@gmai.com', '202cb962ac59075b964b07152d234b70'),
(14, '', 'vanh@gmai.com', '202cb962ac59075b964b07152d234b70'),
(15, 'Nguyễn Thấp Vân Anh', 'vanh@gmai.com', '202cb962ac59075b964b07152d234b70'),
(16, 'Nguyễn Thấp Vân Anh', 'thuong@gmail.com', '202cb962ac59075b964b07152d234b70'),
(17, 'Nguyễn Thấp Vân Anh', 'thuong@gmail.com', '202cb962ac59075b964b07152d234b70'),
(18, 'Nguyễn Thấp Vân Anh', 'vanh@gmai.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(19, 'Nguyễn Thấp Vân Anh', 'vanh@gmai.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(20, '', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(21, '', '', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem`
--

CREATE TABLE `diadiem` (
  `id_diadiem` int(11) NOT NULL,
  `tendiadiem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diadiem`
--

INSERT INTO `diadiem` (`id_diadiem`, `tendiadiem`) VALUES
(1, 'Gia Lai'),
(2, 'Bình Định'),
(3, 'Hòa Bình'),
(4, 'Nghệ An'),
(5, 'Quảng Ninh'),
(6, 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dknhatuyendung`
--

CREATE TABLE `dknhatuyendung` (
  `id_dk` int(11) NOT NULL,
  `tennhatuyendung` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhnghe`
--

CREATE TABLE `nganhnghe` (
  `id_nganhnghe` int(11) NOT NULL,
  `tennganhnghe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nganhnghe`
--

INSERT INTO `nganhnghe` (`id_nganhnghe`, `tennganhnghe`) VALUES
(1, 'Lập trình '),
(2, 'Bán hàng'),
(3, 'Maketing'),
(4, 'Trợ lý');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baivietuv`
--
ALTER TABLE `baivietuv`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `baivietvl`
--
ALTER TABLE `baivietvl`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_dk`);

--
-- Chỉ mục cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`id_diadiem`);

--
-- Chỉ mục cho bảng `dknhatuyendung`
--
ALTER TABLE `dknhatuyendung`
  ADD PRIMARY KEY (`id_dk`);

--
-- Chỉ mục cho bảng `nganhnghe`
--
ALTER TABLE `nganhnghe`
  ADD PRIMARY KEY (`id_nganhnghe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `baivietuv`
--
ALTER TABLE `baivietuv`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `baivietvl`
--
ALTER TABLE `baivietvl`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `id_diadiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dknhatuyendung`
--
ALTER TABLE `dknhatuyendung`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nganhnghe`
--
ALTER TABLE `nganhnghe`
  MODIFY `id_nganhnghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
