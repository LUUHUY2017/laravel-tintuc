-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2018 lúc 09:29 AM
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
(12, 3, 'Quốc Tế', 'quoc-te', NULL, '2018-04-22 07:02:44'),
(13, 7, 'Mua Sắm', 'mua-sam', NULL, '2018-04-22 06:44:38'),
(14, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', NULL, NULL),
(17, 6, 'Âm Nhạc', 'am-nhac', NULL, '2018-03-23 18:14:12'),
(18, 9, 'Thời Trangdh', 'thoi-trangdh', NULL, '2018-04-21 18:51:16'),
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
(36, 3, 'Bài Ca', 'bai-ca', '2018-03-19 19:50:07', '2018-04-21 19:40:00'),
(37, 7, 'Kinh nghệ', 'kinh-nghe', '2018-03-20 13:56:23', '2018-03-20 13:56:23'),
(38, 3, 'hihihi', 'hihihi', '2018-03-22 11:23:46', '2018-03-22 11:23:46'),
(39, 3, 'Kinh Tế', 'kinh-te', '2018-03-22 11:29:46', '2018-03-22 11:29:46'),
(40, 7, 'Kinh Ta', 'kinh-ta', '2018-03-22 11:30:23', '2018-03-22 11:30:23'),
(41, 3, 'LapTop HP', 'laptop-hp', '2018-03-23 17:55:02', '2018-03-23 17:55:02'),
(42, 9, 'LapTop HPf', 'laptop-hpf', '2018-03-23 17:55:55', '2018-03-23 17:55:55'),
(43, 6, 'An Ninh', 'an-ninh', '2018-04-14 16:07:18', '2018-04-14 16:07:18');

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
  `Ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
(9, 'Vi Tính', 'Vi-Tinh', NULL, NULL),
(10, 'fgfg', 'fgfg', '2018-05-21 08:16:15', '2018-05-21 08:16:15');

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
(12, 'Giới trẻ nô nức xin chữ đầu nămfm', 'gioi-tre-no-nuc-xin-chu-dau-namfm', '<p>9h s&aacute;ng m&ugrave;ng 4 Tết d&ograve;ng người k&eacute;o đến Văn miếu Quốc Tử Gi&aacute;m đ&ocirc;ng nghẹt. Nhiều bạn trẻ đứng chen ch&acirc;n h&agrave;ng tiếng đồng hồ để xin được chữ: Trạng nguy&ecirc;n, Đỗ đạt, Tr&iacute;, Nh&acirc;n... khi xu&acirc;n về.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'mlGq_1 (2).jpg', 0, 0, 2, NULL, '2018-05-10 18:04:58'),
(13, 'Giám đốc tuổi mèo và thành tích đáng nể m', 'giam-doc-tuoi-meo-va-thanh-tich-dang-ne-m', '<p>Học hết lớp 9, Nguyễn Hữu Năm phải nghỉ học v&igrave; nh&agrave; ngh&egrave;o lại đ&ocirc;ng con, nhưng ch&agrave;ng trai đất Chương Mỹ (H&agrave; Nội) đ&atilde; xuất sắc gi&agrave;nh nhiều giải thưởng s&aacute;ng tạo trẻ v&agrave; hiện l&agrave; chủ c&ocirc;ng ty chuy&ecirc;n về chế tạo m&aacute;y.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'RJOC_BRdA_tmb_131311_7910.jpg', 1, 0, 2, NULL, '2018-05-10 18:05:24'),
(15, 'Không để thí sinh đăng ký đại học như chơi xổ sốm', 'khong-de-thi-sinh-dang-ky-dai-hoc-nhu-choi-xo-som', '<p>&quot;Ch&uacute;ng ta kh&ocirc;ng thể để học sinh đăng k&yacute; nguyện vọng như chơi sổ xố, đến cuối c&ugrave;ng mới biết kết quả. H&atilde;y để c&aacute;c em thấy r&otilde; cơ hội của m&igrave;nh&quot;, Bộ trưởng GD&amp;ĐT Phạm Vũ Luận ph&aacute;t biểu tại Hội nghị tuyển sinh s&aacute;ng 18/2.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'sqwn_01_3.jpg', 1, 0, 1, NULL, '2018-05-10 18:06:01'),
(16, 'Chụp ảnh cưới tại Flamingo Đại Lải Resort m', 'chup-anh-cuoi-tai-flamingo-dai-lai-resort-m', '<p>Với hệ sinh th&aacute;i độc đ&aacute;o gồm đảo với đ&agrave;n chim h&agrave;ng ngh&igrave;n con c&ugrave;ng nhiều hồ, suối, b&aacute;n đảo&hellip; Flamingo Đại Lải Resort l&agrave; điểm đến cho c&aacute;c đ&ocirc;i uy&ecirc;n ương muốn t&igrave;m nơi lưu giữ khoảnh khắc trăm năm v&agrave; nghỉ dưỡng cuối tuần.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'rT4m_1 (1).jpg', 1, 0, 1, NULL, '2018-05-10 18:06:37'),
(17, 'Hỗ trợ gần 3.000 vé xe tết cho sinh viênm', 'ho-tro-gan-3-000-ve-xe-tet-cho-sinh-vienm', '<p>Mỗi khi m&aacute;y bay sắp hạ c&aacute;nh xuống s&acirc;n bay Suvarnabhumi, t&ocirc;i đều c&oacute; cảm gi&aacute;c m&igrave;nh sắp được trở về nh&agrave;, về qu&ecirc; hương th&acirc;n thương thứ hai của m&igrave;nh. Bạn Đặng Quốc Ch&iacute; chia sẻ.Khoảng 2.700 sinh vi&ecirc;n ngoại tỉnh c&oacute; ho&agrave;n cảnh kh&oacute; khăn, đang học tập tại TP HCM sẽ được tặng v&eacute; xe miễn ph&iacute; về qu&ecirc; trong dịp tết T&acirc;n M&atilde;o.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', '04XF_1 (1)_2.jpg', 1, 0, 1, NULL, '2018-05-10 18:06:54'),
(18, 'Một mình ở Thái Lan', 'mot-minh-o-thai-lan', '<p>Kh&ocirc;ng qu&aacute; ồn &atilde; tấp nập như Hong Kong, hay qu&aacute; y&ecirc;n b&igrave;nh như Hội An, Bangkok khiến cho t&ocirc;i cảm thấy v&ocirc; c&ugrave;ng phấn kh&iacute;ch, tựa hồ như vừa thức giấc sau một cơn ngủ say. Bạn Nguyễn Anh Ngọc viết.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'eTwn_laptrinh.jpg', 1, 0, 17, NULL, '2018-05-17 17:02:11'),
(19, 'Trai Hà thành trổ tài vật cầu đầu xuânm', 'trai-ha-thanh-tro-tai-vat-cau-dau-xuanm', '<p>Những pha tranh cướp quyết liệt c&ugrave;ng những tiếng cười vui l&agrave; h&igrave;nh ảnh về lễ hội vật cầu đầu xu&acirc;n của c&aacute;c thanh ni&ecirc;n l&agrave;ng Th&uacute;y Lĩnh, quận Ho&agrave;ng Mai (H&agrave; Nội), diễn ra chiều 8/2 (6 Tết).</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'Fp3B_01 (1).jpg', 1, 0, 1, NULL, '2018-05-10 18:04:46'),
(20, 'Các bãi biển Đà Nẵng đồng loạt thả chim bồj', 'cac-bai-bien-da-nang-dong-loat-tha-chim-boj', '<p>S&aacute;ng nay, Ban quản l&yacute; b&aacute;n đảo Sơn Tr&agrave; v&agrave; c&aacute;c b&atilde;i biển du lịch th&agrave;nh phố Đ&agrave; Nẵng đ&atilde; tổ chức thả chim bồ c&acirc;u, ph&aacute;t động x&acirc;y dựng vườn chim h&ograve;a b&igrave;nh tại c&ocirc;ng vi&ecirc;n biển Đ&ocirc;ng.</p>', '<p>Nội dung tin tức: Kho&aacute; học Lập tr&igrave;nh PHP tại trung t&acirc;m đ&agrave;o tạo tin học khoa phạm</p>\r\n\r\n<p><strong>Hotline kỹ thuật <strong>: 0967 908 907<br />\r\n<strong>Hotline tư vấn kh&aacute;o học <strong>: 094 276 4080<br />\r\n<strong>Địa chỉ </strong>: 90 L&ecirc; Thị Ri&ecirc;ng, P.Bến Th&agrave;nh, Q1, TPHCM<br />\r\n<strong>Website</strong>: khoapham.vn<br />\r\n<strong>Học Online tại :</strong>online.khoapham.vn</strong></strong></strong></strong></p>', 'XxSI_w53h_01_2.jpg', 1, 0, 37, NULL, '2018-05-11 14:22:57'),
(22, 'kkkk', 'kkkk', '<p>kkkk</p>', '<p>kkkk</p>', '4QAC_[123doc] - lap-trinh-quan-ly-he-thong-de-tai-nghien-cuu-khoa-hoc.docx', 0, 0, 1, '2018-05-13 12:57:26', '2018-05-13 12:57:26'),
(23, 'ffffffffff', 'ffffffffff', '<p>f</p>', '<p>f</p>', '5lD9_19052-2.-Mau_De-cuong-chi-tiet.doc', 0, 0, 1, '2018-05-13 13:42:56', '2018-05-13 13:42:56'),
(24, 'ffffffffffffffffffffffffff', 'ffffffffffffffffffffffffff', '<p>f</p>', '<p>f</p>', 'C:\\xampp\\tmp\\php993.tmp', 0, 0, 1, '2018-05-13 13:46:08', '2018-05-13 13:46:08'),
(25, 'hhhh', 'hhhh', '<p>hhhh</p>', '<p>hhhh</p>', 'C:\\xampp\\tmp\\php4B35.tmp', 0, 0, 1, '2018-05-13 13:46:25', '2018-05-13 13:46:25'),
(26, 'gfgfgffgdfgfd', 'gfgfgffgdfgfd', '<p>gfgfgffgdfgfd</p>', '<p>gfgfgffgdfgfd</p>', '', 0, 0, 1, '2018-05-17 17:03:23', '2018-05-17 17:03:23'),
(27, 'jhgjhgjhgjhgjhg', 'jhgjhgjhgjhgjhg', '<p>Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?</p>', '<p>Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?Chiến lược kinh doanh (CLKD) l&agrave; kim chỉ nam cho c&aacute;c nh&agrave; quản l&yacute;, l&agrave; cơ sở cho việc ra c&aacute;c ch&iacute;nh s&aacute;ch kinh doanh v&agrave; l&agrave; th&ocirc;ng tin ra quyết định của c&aacute;c bộ phận trong doanh nghiệp. Vậy c&acirc;u hỏi đặt ra, quy tr&igrave;nh x&acirc;y dựng chiến lược kinh doanh cho doanh nghiệp như thế n&agrave;o để c&oacute; được một chiến lược b&agrave;i bản v&agrave; mang t&iacute;nh khả thi cao, dẫn hướng cho sự ph&aacute;t triển của doanh nghiệp?</p>', '', 0, 0, 1, '2018-05-20 08:39:12', '2018-05-20 08:39:12');

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
(1, 'luuhuy', 'nhathaibinh2010@gmail.com', '$2y$10$ZTaPVJRuujBAiwj.PEREEe12uXSlD5F2FkewU7RcULd311pbJsN12', 'vNdBhHmuixIRoWRQ3FmT60Bn6GKMk2LD7D4VTUlyCib9cC0XWr457mBbDEet', NULL, NULL, 1),
(2, 'luuduc=huy', 'nhathaibinh2012@gmail.com', '$2y$10$mjrAGxazif2sxoHEbxr.HuD1ETEmo7Co44r8d9fhR/IlomhjFn.Ca', 'T5FOWG1uxF86fCF29ZMRada7kcR3N1ZWJ6cdEXH67HaHrj6ppMKOwxHTTvhb', NULL, NULL, 2),
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
  ADD UNIQUE KEY `Ten` (`Ten`,`idTheLoai`) USING BTREE,
  ADD KEY `TenKhongDau` (`TenKhongDau`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
