-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2023 lúc 07:51 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPassword` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPassword`, `level`) VALUES
(1, 'Nayem Howlader', 'nayem', 'nayemhowlader77@gmail.com', '850721dea834fe36b29083291509c7ad', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'NIKE'),
(7, 'ADIDAS'),
(8, 'PUMA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(3, 'u59fad0pc2dboks7okfvt3ik3l', 23, 'ADIDAS SPORT', 590.00, 1, 'uploads/2.jpg'),
(11, '38m19mak2otuahjbfmct55jbvc', 22, 'ADIDAS 0192', 700.00, 3, 'uploads/19152c5b8f.jpg'),
(12, '38m19mak2otuahjbfmct55jbvc', 27, 'LV 1980', 888.00, 1, 'uploads/5a3162df20.jpg'),
(13, 'qt19ppjvhvfkg5k2d8pjf2akf0', 27, 'LV 1980', 888.00, 1, 'uploads/5a3162df20.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(9, 'Baby Shoes'),
(10, 'Football Shoes '),
(11, 'Running Shoes'),
(12, 'Party Shoes ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(1, 3, 22, 'ADIDAS 0192', 700.00, 'uploads/19152c5b8f.jpg'),
(2, 3, 23, 'ADIDAS SPORT', 590.00, 'uploads/9050b112ed.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `contact`, `message`, `status`, `date`) VALUES
(2, 'md.alvi islam', 'customer@gmail.com', '1622425286', 'szzss', 1, '2018-08-05 23:23:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(2, 'Ph?m V?n Anh Tu?n', 'C?M XUYÊN ', 'HÀ T?NH', 'anhtuan', '2312', '0388542219', 'phamvananhtuan2004@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710'),
(3, 'Ph?m V?n Anh Tu?n', 'hn', 'hn', 'anhtuan', '134', '0388542219', 'forestchill2103@gmail.com', '65ded5353c5ee48d0b7d48c591b8f430'),
(4, 'tuan', 'C?M XUYÊN ', 'hb', 'anhtuan', '123', '0388542219', 'Tuan.BKC14513@student.bkacad.edu.vn', '698d51a19d8a121ce581499d7b701668'),
(5, 'Nguyen Thuong', '7 AA', 'Hà N?i', 'Vietnam', '777', '0912873211', 'kmr22972@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(21, 1, 15, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/d712a37947.png', '2018-08-01 20:45:34', 2),
(22, 1, 14, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/bb49c3ce4e.png', '2018-08-01 20:45:34', 0),
(23, 1, 15, 'Lorem Ipsum is simply', 3, 1515.66, 'uploads/d712a37947.png', '2018-08-01 21:23:42', 0),
(24, 1, 11, 'Lorem ipsum dolor sit amet sed do eiusmod', 3, 1501.65, 'uploads/4ebef5562f.png', '2018-08-02 00:14:55', 0),
(25, 1, 15, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/d712a37947.png', '2018-08-02 00:15:23', 0),
(26, 1, 15, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/d712a37947.png', '2018-08-02 00:19:13', 0),
(27, 1, 12, 'Lorem Ipsum is simply', 2, 856.04, 'uploads/8147397401.png', '2018-08-02 00:19:45', 0),
(28, 1, 11, 'Lorem ipsum dolor sit amet sed do eiusmod', 1, 500.55, 'uploads/4ebef5562f.png', '2018-08-02 02:39:52', 0),
(29, 1, 12, 'Lorem Ipsum is simply', 1, 428.02, 'uploads/8147397401.png', '2018-08-02 02:50:52', 0),
(30, 1, 15, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/d712a37947.png', '2018-08-02 02:50:52', 0),
(31, 1, 4, 'Lorem Ipsum is simply', 1, 220.97, 'uploads/fa56e62bef.jpg', '2018-08-02 02:50:52', 0),
(32, 1, 13, 'Lorem Ipsum is simply', 1, 505.22, 'uploads/bd293afbce.jpg', '2018-08-06 03:29:05', 0),
(33, 2, 23, 'ADIDAS SPORT', 1, 590.00, 'uploads/9050b112ed.jpg', '2023-08-19 08:59:36', 0),
(34, 5, 23, 'ADIDAS SPORT', 1, 590.00, 'uploads/1.jpg', '2023-12-22 18:11:46', 0),
(35, 5, 80, 'PD502', 1, 200.00, 'uploads/5.jpg', '2023-12-22 22:10:08', 0),
(36, 5, 28, '123445', 1, 777.00, 'uploads/aff6e306f7.jpg', '2023-12-22 22:10:08', 0),
(37, 5, 80, 'PD502', 1, 200.00, 'uploads/5.jpg', '2023-12-25 00:05:08', 0),
(38, 5, 24, 'PUMA', 2, 1554.00, 'uploads/985ca8cf61.jpg', '2023-12-25 00:05:08', 0),
(39, 5, 80, 'PD502', 1, 200.00, 'uploads/5.jpg', '2023-11-07 20:22:18', 0),
(40, 5, 28, '123445', 1, 777.00, 'uploads/aff6e306f7.jpg', '2023-11-07 20:22:18', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(22, 'ADIDAS 0192', 10, 7, '<p>OKE LA</p>', 700.00, 'uploads/19152c5b8f.jpg', 0),
(23, 'ADIDAS SPORT', 10, 7, '<p>COOL FOR GIRL</p>', 590.00, 'uploads/1.jpg', 0),
(24, 'PUMA', 11, 8, '<p>LOVE RUNER</p>', 777.00, 'uploads/985ca8cf61.jpg', 1),
(27, 'LV 1980', 12, 7, '<p>OKOKO</p>', 888.00, 'uploads/2.jpg', 0),
(28, '123445', 11, 7, '<p>OK</p>', 777.00, 'uploads/aff6e306f7.jpg', 0),
(80, 'PD502', 9, 6, '<p>Shoes for little boys and girls</p>', 200.00, 'uploads/5.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 15, 'Laundry machine ', 3200.00, 'uploads/d712a37947.png'),
(7, 3, 22, 'ADIDAS 0192', 700.00, 'uploads/19152c5b8f.jpg'),
(8, 3, 23, 'ADIDAS SPORT', 590.00, 'uploads/9050b112ed.jpg'),
(9, 5, 80, 'PD502', 200.00, 'uploads/5.jpg'),
(10, 5, 28, '123445', 777.00, 'uploads/aff6e306f7.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
