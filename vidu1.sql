-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 28, 2018 lúc 01:40 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vidu1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `idUser`, `idTinTuc`, `NoiDung`, `created_at`, `updated_at`) VALUES
(1, 10, 93, 'Bài viết này được', '2016-06-09 10:20:45', NULL),
(2, 8, 19, 'Hay quá trời', '2016-06-09 10:20:45', NULL),
(3, 2, 22, 'Tôi rất thích bài viết này', '2016-06-09 10:20:45', NULL),
(4, 2, 41, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:45', NULL),
(5, 6, 50, 'Tôi rất thích bài viết này', '2016-06-09 10:20:45', NULL),
(6, 9, 79, 'Bài viết này được', '2016-06-09 10:20:45', NULL),
(7, 5, 94, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(8, 8, 99, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(9, 7, 22, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(10, 5, 48, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:46', NULL),
(11, 4, 69, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:46', NULL),
(12, 5, 87, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(13, 6, 72, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:46', NULL),
(14, 5, 6, 'Tôi rất thích bài viết này', '2016-06-09 10:20:46', NULL),
(15, 7, 88, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(16, 9, 58, 'Bài viết này được', '2016-06-09 10:20:46', NULL),
(17, 1, 19, 'Không thích bài viết này', '2016-06-09 10:20:46', NULL),
(18, 4, 80, 'Tôi rất thích bài viết này', '2016-06-09 10:20:46', NULL),
(19, 10, 40, 'Bài viết này tạm ổn', '2016-06-09 10:20:46', NULL),
(20, 2, 17, 'Bài viết rất hay', '2016-06-09 10:20:46', NULL),
(21, 5, 25, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:46', NULL),
(22, 1, 48, 'Không thích bài viết này', '2016-06-09 10:20:46', NULL),
(23, 4, 68, 'Hay quá trời', '2016-06-09 10:20:46', NULL),
(24, 10, 14, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:46', NULL),
(25, 4, 8, 'Bài viết này tạm ổn', '2016-06-09 10:20:46', NULL),
(26, 10, 39, 'Tôi rất thích bài viết này', '2016-06-09 10:20:46', NULL),
(27, 4, 61, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(28, 6, 55, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:47', NULL),
(29, 3, 34, 'Hay quá trời', '2016-06-09 10:20:47', NULL),
(30, 10, 30, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:47', NULL),
(31, 10, 59, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(32, 5, 91, 'Hay quá trời', '2016-06-09 10:20:47', NULL),
(33, 9, 16, 'Bài viết này tạm ổn', '2016-06-09 10:20:47', NULL),
(34, 5, 50, 'Tôi rất thích bài viết này', '2016-06-09 10:20:47', NULL),
(35, 8, 55, 'Bài viết rất hay', '2016-06-09 10:20:47', NULL),
(36, 9, 27, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:47', NULL),
(37, 4, 22, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:47', NULL),
(38, 4, 77, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(39, 7, 88, 'Bài viết rất hay', '2016-06-09 10:20:47', NULL),
(40, 5, 14, 'Hay quá trời', '2016-06-09 10:20:47', NULL),
(41, 7, 67, 'Tôi rất thích bài viết này', '2016-06-09 10:20:47', NULL),
(42, 10, 38, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:47', NULL),
(43, 3, 49, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:47', NULL),
(44, 4, 57, 'Bài viết rất hay', '2016-06-09 10:20:47', NULL),
(45, 1, 17, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:47', NULL),
(46, 5, 13, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:47', NULL),
(47, 7, 78, 'Bài viết này được', '2016-06-09 10:20:47', NULL),
(48, 3, 9, 'Không thích bài viết này', '2016-06-09 10:20:48', NULL),
(49, 2, 86, 'Bài viết rất hay', '2016-06-09 10:20:48', NULL),
(50, 10, 29, 'Hay quá trời', '2016-06-09 10:20:48', NULL),
(51, 3, 67, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:48', NULL),
(52, 3, 71, 'Bài viết này tạm ổn', '2016-06-09 10:20:48', NULL),
(53, 5, 41, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:48', NULL),
(54, 5, 65, 'Hay quá trời', '2016-06-09 10:20:48', NULL),
(55, 3, 55, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:48', NULL),
(56, 1, 99, 'Tôi rất thích bài viết này', '2016-06-09 10:20:48', NULL),
(57, 6, 98, 'Hay quá trời', '2016-06-09 10:20:48', NULL),
(58, 5, 47, 'Bài viết rất hay', '2016-06-09 10:20:48', NULL),
(59, 10, 34, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:48', NULL),
(60, 9, 94, 'Không thích bài viết này', '2016-06-09 10:20:48', NULL),
(61, 9, 22, 'Bài viết này được', '2016-06-09 10:20:48', NULL),
(62, 9, 56, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:48', NULL),
(63, 7, 44, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(64, 3, 10, 'Hay quá trời', '2016-06-09 10:20:49', NULL),
(65, 2, 28, 'Bài viết này tạm ổn', '2016-06-09 10:20:49', NULL),
(66, 10, 18, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(67, 7, 75, 'Hay quá trời', '2016-06-09 10:20:49', NULL),
(68, 4, 50, 'Bài viết rất hay', '2016-06-09 10:20:49', NULL),
(69, 6, 82, 'Bài viết này tạm ổn', '2016-06-09 10:20:49', NULL),
(70, 7, 12, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:49', NULL),
(71, 2, 69, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(72, 10, 68, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(73, 1, 1, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:49', NULL),
(74, 5, 66, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(75, 6, 16, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:49', NULL),
(76, 1, 65, 'Tôi rất thích bài viết này', '2016-06-09 10:20:49', NULL),
(77, 9, 48, 'Bài viết này được', '2016-06-09 10:20:49', NULL),
(78, 3, 58, 'Ý kiến của tôi khác so với bài này', '2016-06-09 10:20:49', NULL),
(79, 10, 56, 'Bài viết rất hay', '2016-06-09 10:20:49', NULL),
(80, 5, 96, 'Không thích bài viết này', '2016-06-09 10:20:49', NULL),
(81, 7, 41, 'Bài viết này được', '2016-06-09 10:20:49', NULL),
(82, 4, 16, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:49', NULL),
(83, 10, 80, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:49', NULL),
(84, 2, 64, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(85, 9, 45, 'Tôi sẽ học thèo bài viết này', '2016-06-09 10:20:50', NULL),
(86, 8, 19, 'Bài viết này được', '2016-06-09 10:20:50', NULL),
(87, 5, 30, 'Không thích bài viết này', '2016-06-09 10:20:50', NULL),
(88, 1, 21, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(89, 2, 75, 'Không thích bài viết này', '2016-06-09 10:20:50', NULL),
(90, 9, 94, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:50', NULL),
(91, 10, 94, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(92, 1, 71, 'Tôi chưa có ý kiến gì', '2016-06-09 10:20:50', NULL),
(93, 9, 97, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(94, 6, 19, 'Bài viết này tạm ổn', '2016-06-09 10:20:50', NULL),
(95, 7, 15, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(96, 9, 66, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(97, 8, 27, 'Bài viết này chưa được hay lắm', '2016-06-09 10:20:50', NULL),
(98, 3, 24, 'Hay quá trời', '2016-06-09 10:20:50', NULL),
(99, 1, 83, 'Bài viết rất hay', '2016-06-09 10:20:50', NULL),
(100, 8, 11, 'Tôi rất thích bài viết này', '2016-06-09 10:20:50', NULL),
(101, 1, 1, 'Được', '2016-06-16 07:25:59', '2016-06-16 07:25:59'),
(102, 1, 1, 'Chán muốn chết', '2016-06-16 07:32:43', '2016-06-16 07:32:43'),
(103, 1, 403, 'a', '2016-06-18 07:02:59', '2016-06-18 07:02:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 8, 'Giáo Dục', 'giao-duc', NULL, '2018-03-23 18:13:40'),
(2, 9, 'Nhịp Điệu Trẻ', 'nhip-dieu-tre', NULL, '2018-03-23 18:13:55'),
(9, 3, 'Chứng Khoán', 'Chung-Khoan', NULL, NULL),
(12, 3, 'Quốc Tế', 'Quoc-Te', NULL, NULL),
(13, 3, 'Mua Sắm', 'Mua-Sam', NULL, NULL),
(14, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', NULL, NULL),
(17, 6, 'Âm Nhạc', 'am-nhac', NULL, '2018-03-23 18:14:12'),
(18, 9, 'Thời Trang', 'thoi-trang', NULL, '2018-03-23 18:15:04'),
(19, 6, 'Điện Ảnh', 'dien-anh', NULL, '2018-03-23 18:16:26'),
(20, 8, 'Mỹ Thuật', 'my-thuat', NULL, '2018-03-23 18:16:34'),
(21, 5, 'Bóng Đá', 'Bong-Da', NULL, NULL),
(22, 7, 'Tennis', 'tennis', NULL, '2018-03-23 18:17:06'),
(23, 5, 'Chân Dung', 'Chan-Dung', NULL, NULL),
(24, 6, 'Ảnh', 'anh', NULL, '2018-03-23 18:16:48'),
(25, 6, 'Hình Sự', 'Hinh-Su', NULL, NULL),
(27, 1, 'Sennehi 12', '', '2016-06-11 01:43:27', '2016-06-11 01:43:27'),
(28, 3, 'Cộng Đồng', 'cong-dong', '2018-03-19 18:14:18', '2018-03-19 18:14:18'),
(29, 2, '525', '525', '2018-03-19 18:14:59', '2018-03-19 18:14:59'),
(30, 2, 'Văn Kinh', 'van-kinh', '2018-03-19 19:35:21', '2018-03-19 19:35:21'),
(31, 5, 'Truyện Khá', 'truyen-kha', '2018-03-19 19:39:19', '2018-03-19 19:39:19'),
(32, 2, 'Âm Khí', 'am-khi', '2018-03-19 19:41:08', '2018-03-19 19:41:08'),
(34, 7, 'hghfhg', 'hghfhg', '2018-03-19 19:45:31', '2018-03-23 18:16:56'),
(35, 2, 'gfdgfdg', 'gfdgfdg', '2018-03-19 19:49:15', '2018-03-19 19:49:15'),
(36, 2, 'fgdfgfdg', 'fgdfgfdg', '2018-03-19 19:50:07', '2018-03-19 19:50:07'),
(37, 7, 'Kinh nghệ', 'kinh-nghe', '2018-03-20 13:56:23', '2018-03-20 13:56:23'),
(38, 3, 'hihihi', 'hihihi', '2018-03-22 11:23:46', '2018-03-22 11:23:46'),
(39, 3, 'Kinh Tế', 'kinh-te', '2018-03-22 11:29:46', '2018-03-22 11:29:46'),
(40, 7, 'Kinh Ta', 'kinh-ta', '2018-03-22 11:30:23', '2018-03-22 11:30:23'),
(41, 3, 'LapTop HP', 'laptop-hp', '2018-03-23 17:55:02', '2018-03-23 17:55:02'),
(42, 9, 'LapTop HPf', 'laptop-hpf', '2018-03-23 17:55:55', '2018-03-23 17:55:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ma` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `ten`, `soluong`, `created_at`, `updated_at`, `ma`) VALUES
(1, 'huy', 10, NULL, NULL, ''),
(2, 'huyluu', 50, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_09_021546_Tao_TheLoai', 2),
(4, '2016_06_09_021610_Tao_LoaiTin', 3),
(5, '2016_06_09_021813_Tao_TinTuc', 4),
(6, '2016_06_09_022526_Tao_Slide', 5),
(7, '2016_06_09_022904_Tao_Comment', 6),
(8, '2018_03_19_161834_lop', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `Ten`, `Hinh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(1, 'ggdgfgf', '1.jpg', 'dfdf', 'google.com', NULL, NULL),
(2, 'huy', '2.jpg', 'huy duc', 'facebook.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(3, 'Kinh Doanh', 'Kinh-Doanh', NULL, NULL),
(6, 'Pháp Luật', 'Phap-Luat', NULL, NULL),
(7, 'Đời Sống', 'Doi-Song', NULL, NULL),
(8, 'Khoa Học', 'Khoa-Hoc', NULL, NULL),
(9, 'Vi Tính', 'Vi-Tinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `SoLuotXem` int(11) NOT NULL DEFAULT '0',
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(2, '300 tỷ đồng phát triển giáo dục mầm', '300-ty-dong-phat-trien-giao-duc-mam', '<p><em>hjhjh</em></p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'w53h_01_2.jpg', 0, 0, 1, NULL, '2018-03-27 08:20:56'),
(3, 'Nợ giáo viên tiền tỷ chi phí phổ cập giáo dục u', 'no-giao-vien-tien-ty-chi-phi-pho-cap-giao-duc-u', '<p>Ba năm qua, nhiều giáo viên ở Khánh Hòa bỏ công sức, kể cả tiền bạc để thực hiện phổ cập giáo dục cho học sinh trên địa bàn tỉnh, song đến nay vẫn chưa nhận được tiền chính quyền chi trả.</p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'VhIb_01_1.jpg', 1, 0, 40, NULL, '2018-03-23 17:54:21'),
(4, 'Đón và chăm sóc trẻ sau giờ tan trường qua dịch vụ', 'don-va-cham-soc-tre-sau-gio-tan-truong-qua-dich-vu', '<p style=\"text-align: justify;\"><span><em>Các bé sẽ được chăm sóc bữa ăn, tắm rửa sạch sẽ, vui chơi và học tập cùng cô giáo theo các nội dung trong sổ báo bài, mở rộng hoặc đào sâu kiến thức theo yêu cầu của phụ huynh.</em></span></p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'DSPI_01 (1).jpg', 1, 0, 2, NULL, '2018-03-27 08:21:23'),
(5, '7 học sinh rơi từ tầng hai xuống đấtv', '7-hoc-sinh-roi-tu-tang-hai-xuong-datv', '<p>Đang giờ ra chơi, bất ngờ toàn bộ lan can tầng hai của Trường THCS thị trấn Chợ Rã (Bắc Kạn) gãy đổ ra ngoài, kéo theo 7 học sinh lớp 6A rơi xuống đất.</p>', 'Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<strong>Hotline kỹ thuật <strong>: 0967 908 907\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>\r\n                            <script type=\"text/javascript\">CKEDITOR.replace(\'demo\')</script>', 'vdQE_01_2.jpg', 1, 0, 42, NULL, '2018-03-23 19:55:17'),
(6, 'Giáo viên TP HCM được thưởng tết tối thiểu 700.000 đồng', 'giao-vien-tp-hcm-duoc-thuong-tet-toi-thieu-700-000-dong', '<p>Sở GD&amp;ĐT TP HCM vừa có thông báo về việc UBND thành phố chấp thuận đề nghị hỗ trợ mức quà tết cho cán bộ công chức trong ngành tối thiểu là 700.000 đồng. Mức thưởng này cao hơn năm ngoái 100.000 đồng.</p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'GpHE_laptrinh.jpg', 1, 0, 1, NULL, '2018-03-21 15:48:04'),
(7, 'Mức sinh hoạt phí tối đa cho lưu học sinh là 1.200 USD f', 'muc-sinh-hoat-phi-toi-da-cho-luu-hoc-sinh-la-1-200-usd-f', '<p>Đối với lưu học sinh tại Ba Lan, Bungary, Nga..., mức sinh hoạt phí sẽ tăng từ 400 USD lên 480 USD; tại Australia, New Zealand tăng từ 860 USD lên 1.032 USD và tại Mỹ, Canada, Anh, Nhật Bản tăng từ 1.000 lên 1.200 USD một người một tháng...</p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'du_hoc_sinh_set_sub.jpg', 1, 0, 1, NULL, '2018-03-23 19:24:21'),
(8, 'Những nụ hôn ngọt ngào trong đêm tình nhânfh', 'nhung-nu-hon-ngot-ngao-trong-dem-tinh-nhanfh', '<p>kTối 13/2, hàng nghìn bạn trẻ có mặt tại cầu Ánh Sao (quận 7, TP HCM) chứng kiến những lời tỏ tình cùng những nụ hôn ngọt ngào của 100 cặp tình nhân trong \"Đêm Valentine thế kỷ\".</p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'YQY6_000T_TRPar3678305.jpg', 1, 0, 2, NULL, '2018-03-23 19:20:31'),
(9, 'Nên duyên chồng vợ từ mạng mai mối ', 'Nen-Duyen-Chong-Vo-Tu-Mang-Mai-Moi', 'Quen nhau qua trang web kết bạn, để chiếm được tình cảm của cô nàng cao tới 1,71 m, chàng trai cao 1,58 m kiên trì tỏ tình tới 10 lần và hạnh phúc đã mỉm cười với họ. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'cap_doi_hoan_hao_set_sub.jpg', 1, 0, 2, NULL, NULL),
(10, '100 cặp tình nhân hôn nhau trên khinh khí cầu ', '100-Cap-Tinh-Nhan-Hon-Nhau-Tren-Khinh-Khi-Cau', '100 cặp tình nhân sẽ trao nhau nụ hôn trên khinh khí cầu và được tặng một bó hoa với 999 nụ hồng xanh, nhận \"lời cầu hôn của thần Cupid\"... trong lễ hội Valentine sẽ được tổ chức tại cầu Ánh Sao (quận 7, TP HCM) tối 13/2. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'valentine22.jpg', 1, 0, 2, NULL, NULL),
(11, 'Nhà thám hiểm 9 tuổi đặt chân tới Nam Cực ', 'Nha-Tham-Hiem-9-Tuoi-Dat-Chan-Toi-Nam-Cuc', 'Vượt qua hành trình dài nhiều ngày, Phạm Vũ Thiều Quang, cậu bé 9 tuổi đã cùng bố đặt chân tới Nam Cực vào chiều mùng 1 Tết. Cậu bé đã trở thành người châu Á trẻ tuổi nhất đặt chân tới vùng đất này. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'top-2.jpg', 1, 0, 2, NULL, NULL),
(12, 'Giới trẻ nô nức xin chữ đầu năm ', 'Gioi-Tre-No-Nuc-Xin-Chu-Dau-Nam', '9h sáng mùng 4 Tết dòng người kéo đến Văn miếu Quốc Tử Giám đông nghẹt. Nhiều bạn trẻ đứng chen chân hàng tiếng đồng hồ để xin được chữ: Trạng nguyên, Đỗ đạt, Trí, Nhân... khi xuân về. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'tre-1.jpg', 1, 0, 2, NULL, NULL),
(13, 'Giám đốc tuổi mèo và thành tích đáng nể ', 'Giam-Doc-Tuoi-Meo-Va-Thanh-Tich-Dang-Ne', 'Học hết lớp 9, Nguyễn Hữu Năm phải nghỉ học vì nhà nghèo lại đông con, nhưng chàng trai đất Chương Mỹ (Hà Nội) đã xuất sắc giành nhiều giải thưởng sáng tạo trẻ và hiện là chủ công ty chuyên về chế tạo máy. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'Nguyen_Huu_Nam_set_sub.jpg', 1, 0, 2, NULL, NULL),
(14, 'Học sinh vùng cao nghỉ Tết kéo dài vì giá rét', 'Hoc-Sinh-Vung-Cao-Nghi-Tet-Keo-Dai-Vi-Gia-Ret', 'Học sinh Hà Giang có thể nghỉ Tết Tân Mão gần 20 ngày còn học sinh Lào Cai được nghỉ Tết hơn các vùng khác 3 ngày để tránh giá rét. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'sapa9.jpg', 1, 0, 1, NULL, NULL),
(15, 'Không để thí sinh đăng ký đại học như chơi xổ số', 'Khong-De-Thi-Sinh', '\"Chúng ta không thể để học sinh đăng ký nguyện vọng như chơi sổ xố, đến cuối cùng mới biết kết quả. Hãy để các em thấy rõ cơ hội của mình\", Bộ trưởng GD&ĐT Phạm Vũ Luận phát biểu tại Hội nghị tuyển sinh sáng 18/2. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'Pham_Vu_Luan.jpg', 1, 0, 1, NULL, NULL),
(16, 'Chụp ảnh cưới tại Flamingo Đại Lải Resort ', 'Chup-Anh-Cuoi-Tai-Flamingo-Dai-Lai-Resort', 'Với hệ sinh thái độc đáo gồm đảo với đàn chim hàng nghìn con cùng nhiều hồ, suối, bán đảo… Flamingo Đại Lải Resort là điểm đến cho các đôi uyên ương muốn tìm nơi lưu giữ khoảnh khắc trăm năm và nghỉ dưỡng cuối tuần. ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'New_Imagesp2.jpg', 1, 0, 1, NULL, NULL),
(17, 'Hỗ trợ gần 3.000 vé xe tết cho sinh viên', 'Ho-Tro-Gan-3.000-Ve-Xe-Tet-Cho-Sinh-Vien', 'Mỗi khi máy bay sắp hạ cánh xuống sân bay Suvarnabhumi, tôi đều có cảm giác mình sắp được trở về nhà, về quê hương thân thương thứ hai của mình. Bạn Đặng Quốc Chí chia sẻ.Khoảng 2.700 sinh viên ngoại tỉnh có hoàn cảnh khó khăn, đang học tập tại TP HCM sẽ được tặng vé xe miễn phí về quê trong dịp tết Tân Mão.', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', 'sinhvien[1]_1.jpg', 1, 0, 1, NULL, NULL),
(18, 'Một mình ở Thái Lan bb', 'mot-minh-o-thai-lan-bb', '<p>Không quá ồn ã tấp nập như Hong Kong, hay quá yên bình như Hội An, Bangkok khiến cho tôi cảm thấy vô cùng phấn khích, tựa hồ như vừa thức giấc sau một cơn ngủ say. Bạn Nguyễn Anh Ngọc viết.</p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'rHDC_01_3.jpg', 1, 0, 17, NULL, '2018-03-23 18:17:46'),
(19, 'Trai Hà thành trổ tài vật cầu đầu xuân', 'Trai-Ha-Thanh-Tro-Tai-Vat-Cau-Dau-Xuan', 'Những pha tranh cướp quyết liệt cùng những tiếng cười vui là hình ảnh về lễ hội vật cầu đầu xuân của các thanh niên làng Thúy Lĩnh, quận Hoàng Mai (Hà Nội), diễn ra chiều 8/2 (6 Tết). ', '</h3>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</h3>\r\n    	<p>\r\n    	<b>Hotline kỹ thuật <b>: 0967 908 907<br>\r\n    	<b>Hotline tư vấn kháo học <b>: 094 276 4080<br>\r\n    	<b>Địa chỉ </b>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br>\r\n    	<b>Website</b>: khoapham.vn<br>\r\n    	<b>Học Online tại :</b>online.khoapham.vn<br>\r\n    	</p>', '130.jpg', 1, 0, 3, NULL, NULL),
(20, 'Các bãi biển Đà Nẵng đồng loạt thả chim bồ c', 'cac-bai-bien-da-nang-dong-loat-tha-chim-bo-c', '<p>Sáng nay, Ban quản lý bán đảo Sơn Trà và các bãi biển du lịch thành phố Đà Nẵng đã tổ chức thả chim bồ câu, phát động xây dựng vườn chim hòa bình tại công viên biển Đông.</p>', '<p>Nội dung tin tức: Khoá học Lập trình PHP tại trung tâm đào tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kháo học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 Lê Thị Riêng, P.Bến Thành, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'mi8Y_01.jpg', 1, 0, 37, NULL, '2018-03-23 17:57:46'),
(1005, 'bai ca viet namb', 'bai-ca-viet-namb', '<p>ggg</p>', '<p>gggg</p>', 'Tftz_oTOG_24134-2560x1440.jpg', 0, 0, 9, '2018-03-23 19:41:27', '2018-03-23 19:41:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `quyen`) VALUES
(1, 'luuhuy', 'nhathaibinh2010@gmail.com', '$2y$10$ZTaPVJRuujBAiwj.PEREEe12uXSlD5F2FkewU7RcULd311pbJsN12', 'x3cufJ9NHuVw7ooADnntgqrmQxWMcGIsWaQr8pc3ceH16ur7tOrmzdZHhjgN', NULL, NULL, 1),
(2, 'luuduc=huy', 'nhathaibinh2012@gmail.com', '$2y$10$mjrAGxazif2sxoHEbxr.HuD1ETEmo7Co44r8d9fhR/IlomhjFn.Ca', 'mB18Ia36xDChkwLzyCdagdoY1HkGh6cI83enSGDEWl0xRABKEIqRTYJ2QQos', NULL, NULL, 2),
(3, 'luuhuy', 'nhathaibinh2010@gmail.com', '$2y$10$IJQNoGP4hnP.nawmCtAgz.lYf25IkpmFoDHk52k7DfHexAeH/bmCO', NULL, NULL, NULL, 2),
(4, 'luuduc=huy', 'nhathaibinh2012@gmail.com', '$2y$10$U91gXzPmBwf/pHwpU2vjuOgzJbpGEhiNERuIKBlAUORlplFDVRNj6', NULL, NULL, NULL, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_iduser_foreign` (`idUser`),
  ADD KEY `comment_idtintuc_foreign` (`idTinTuc`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaitin_idtheloai_foreign` (`idTheLoai`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_idloaitin_foreign` (`idLoaiTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
