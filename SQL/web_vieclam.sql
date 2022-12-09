-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2022 lúc 10:29 PM
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
-- Cấu trúc bảng cho bảng `baivietct`
--

CREATE TABLE `baivietct` (
  `id_baiviet` int(11) NOT NULL,
  `tencongty` varchar(255) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `quymo` varchar(255) NOT NULL,
  `thanhlap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` int(4) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietct`
--

INSERT INTO `baivietct` (`id_baiviet`, `tencongty`, `id_nganhnghe`, `id_diadiem`, `tenbaiviet`, `mota`, `noidung`, `hinhanh`, `quymo`, `thanhlap`, `email`, `sdt`, `tinhtrang`) VALUES
(19, 'Công ty cổ phần thương mại dịch vụ Hương Thủy', 10, 3, 'BÀI ĐĂNG', '<p>C&ocirc;ng Ty Cổ Phần TM-DV-SX Hương Thủy c&oacute; trụ sở ch&iacute;nh đặt tạiC10, 39 Khu nh&agrave; ở tại Ph&acirc;n Khu 18A, đường Nguyễn Hữu Thọ, X&atilde; Phước Kiển, Huyện Nh&agrave;...</p>\r\n', '<p>C&ocirc;ng Ty Cổ Phần TM-DV-SX Hương Thủy c&oacute; trụ sở ch&iacute;nh đặt tạiC10, 39 Khu nh&agrave; ở tại Ph&acirc;n Khu 18A, đường Nguyễn Hữu Thọ, X&atilde; Phước Kiển, Huyện Nh&agrave; B&egrave;, Th&agrave;nh Phố Hồ Ch&iacute; Minh, l&agrave; c&ocirc;ng ty hoạt động tr&ecirc;n l&atilde;nh vực nhập khẩu v&agrave; ph&acirc;n phối h&agrave;ng ti&ecirc;u d&ugrave;ng.<br />\r\n<br />\r\n- Th&aacute;ng 6/1994 C&ocirc;ng ty TNHH TM Hương Thủy được th&agrave;nh lập với vốn điều lệ ban đầu 600.000.000 VND v&agrave; 10 nh&acirc;n vi&ecirc;n, do gia đ&igrave;nh &ocirc;ng, b&agrave; Đ&agrave;o L&yacute; v&agrave; Ho&agrave;ng Thu Hường sở hữu 100% vốn.<br />\r\n- Năm 1998 Th&agrave;nh lập c&ocirc;ng ty TNHH Hương B&igrave;nh, vốn điều lệ 200.000.000 VND tại Đ&agrave; Nẵng, với chức năng ph&acirc;n phối trực tiếp c&aacute;c sản phẩm nhập khẩu của Hương Thủy tại Đ&agrave; Nẵng v&agrave; thị trường miền Trung.Năm 2003 tăng vốn điều lệ l&ecirc;n 1 800 000 000 VND<br />\r\n- Năm 2002 Mở chi nh&aacute;nh c&ocirc;ng ty Hương Thủy tại H&agrave; Nội- với mục đ&iacute;ch mở rộng hệ thống ph&acirc;n phối trực tiếp tại H&agrave; Nội v&agrave; c&aacute;c tỉnh ph&iacute;a Bắc.<br />\r\n- Năm 2004 Th&agrave;nh lập C&ocirc;ng ty TNHH Đất Mới, vốn điều lệ 18.000.000.000 VND tại KCN S&oacute;ng Thần, B&igrave;nh Dương: với hệ thống kho hiện đại, sức chứa 4000 pallets đ&aacute;p ứng nhu cầu nhập , bảo quản tốt h&agrave;ng h&oacute;a của Hương Thủy v&agrave; l&agrave;m dịch vụ hậu cần cho kh&aacute;ch h&agrave;ng.Th&aacute;ng 1/2007 do nhu cầu mở rộng đầu tư, c&ocirc;ng ty đ&atilde; tăng vốn điều lệ l&ecirc;n 27.000.000.000 VND.<br />\r\n- Năm 2007 : 13 năm sau ng&agrave;y th&agrave;nh lập, c&ocirc;ng ty TNHH Hương Thủy đ&atilde; l&agrave; một trong những nh&agrave; nhập khẩu h&agrave;ng thực phẩm ti&ecirc;u d&ugrave;ng lớn v&agrave; uy t&iacute;n tại thị trường Việt Nam.<br />\r\n- Với mục ti&ecirc;u ph&aacute;t triển kinh doanh bền vững trong bối cảnh h&ograve;a nhập quốc tế th&aacute;ng 6/2007 C&ocirc;ng ty TNHH Hương Thủy đ&atilde; chuyển th&agrave;nh C&ocirc;ng ty Cổ Phần TM-DV-SX Hương Thủy, vốn điều lệ 18.000.000.000VND, với đội ngũ nh&acirc;n vi&ecirc;n gần 500 người,c&oacute; trụ sở,hệ thống kho v&agrave; hệ thống ph&acirc;n phối ho&agrave;n chỉnh tại 3 th&agrave;nh phố lớn l&agrave; H&agrave; Nội, Đ&agrave; Nẳng v&agrave; th&agrave;nh phố Hồ Ch&iacute; Minh, sẵn s&agrave;ng đ&aacute;p ứng mọi nhu cầu về nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c mặt h&agrave;ng thực phẩm ti&ecirc;u d&ugrave;ng của c&aacute;c c&ocirc;ng ty quốc tế tại thị trường Việt Nam.<br />\r\n- Năm 2008 : Tập đo&agrave;n Sojitz hợp t&aacute;c c&ugrave;ng Hương Thủy. Cũng trong năm n&agrave;y, hai chi nh&aacute;nh của Hương Thủy tại Cần Thơ v&agrave; Đồng Nai được th&agrave;nh lập nhằm mở rộng mạng lưới ph&acirc;n phối<br />\r\n- Năm 2012 : Tập đo&agrave;n Sojitz tăng cổ phần l&ecirc;n 51% v&agrave; c&ocirc;ng ty Kokubu - Nhật Bản gia nhập Hương Thủy với 19% cổ phần.</p>\r\n', '9cc3c6dedc097feebd8103808a9c5f53.png', '14.000 nhân viên', '2000', 'huongthuy@gmail.com', 1274982901, 1),
(21, 'CÔNG TY NHÂN KIỆT', 8, 4, 'BÀI ĐĂNG', '<p>C&ocirc;ng ty TNHH Cung ứng Nh&acirc;n lực Nh&acirc;n Kiệt&nbsp;&nbsp;&nbsp;được th&agrave;nh lập v&agrave; hoạt động&nbsp;từ th&aacute;ng 4/2009, với lĩnh vực hoạt động ch&iacute;nh l&agrave;: Dịch vụ cung ứng lao động (Outsourcing...</p>\r\n', '<p>Về c&ocirc;ng ty</p>\r\n\r\n<p><strong><a href=\"https://nhankiet.vn/\">C&ocirc;ng ty TNHH Cung ứng Nh&acirc;n lực Nh&acirc;n Kiệt</a><strong>&nbsp;&nbsp;&nbsp;</strong>được th&agrave;nh lập v&agrave; hoạt động&nbsp;từ th&aacute;ng 4/2009, với lĩnh vực hoạt động ch&iacute;nh l&agrave;: Dịch vụ cung ứng lao động (Outsourcing Services); Dịch vụ Hợp thực h&oacute;a lao động (Staffing services); Dịch vụ T&iacute;nh lương (Payroll services); Dịch vụ Hỗ trợ b&aacute;n h&agrave;ng (Fieldforce services); Dịch vụ Bảo hiểm x&atilde; hội (Insurance services); Dịch vụ hỗ trợ h&agrave;nh ch&iacute;nh (Back office Services); Dịch vụ thuế thu nhập c&aacute; nh&acirc;n (Personal income tax Services)</strong></p>\r\n\r\n<p><strong><a href=\"https://nhankiet.vn/\">C&ocirc;ng ty TNHH Cung ứng Nh&acirc;n lực Nh&acirc;n Kiệt</a><strong>&nbsp;&nbsp;&nbsp;</strong>được cấp ph&eacute;p hoạt động cho thu&ecirc; lại lao động th&aacute;ng 1/2015; hiện nay giấy ph&eacute;p đ&atilde; được gia hạn v&agrave; vẫn đang c&ograve;n hiệu lực;</strong></p>\r\n\r\n<p><strong><a href=\"https://nhankiet.vn/\">C&ocirc;ng ty TNHH Cung ứng Nh&acirc;n lực Nh&acirc;n Kiệt</a><strong>&nbsp;&nbsp;&nbsp;</strong>được cấp ph&eacute;p hoạt động lĩnh vực giới thiệu việc l&agrave;m từ th&aacute;ng 10/2020&nbsp;&nbsp;</strong></p>\r\n', 'cong-ty-nhan-kiet.jpeg', '200-300 nhân viên', '1998', 'hanhle@nhankiet.vn', 893828902, 1),
(22, 'CÔNG TY TNHH BẢO HIỂM NHÂN THỌ BIDV METLIFE', 7, 3, 'BÀI ĐĂNG', '<p>BIDV MetLife l&agrave; li&ecirc;n doanh giữa C&ocirc;ng ty TNHH MetLife (thuộc Tập đo&agrave;n MetLife) v&agrave; Ng&acirc;n h&agrave;ng Đầu tư &amp; Ph&aacute;t triển Việt Nam (BIDV). BIDV MetLife mang đến cho...</p>\r\n', '<p>Về c&ocirc;ng ty</p>\r\n\r\n<p>BIDV MetLife l&agrave; li&ecirc;n doanh giữa C&ocirc;ng ty TNHH MetLife (thuộc Tập đo&agrave;n MetLife) v&agrave; Ng&acirc;n h&agrave;ng Đầu tư &amp; Ph&aacute;t triển Việt Nam (BIDV). BIDV MetLife mang đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p t&agrave;i ch&iacute;nh, bảo hiểm v&agrave; ph&uacute;c lợi to&agrave;n diện, ti&ecirc;n tiến nhất th&ocirc;ng qua mạng lưới hơn 1.000 điểm giao dịch của ng&acirc;n h&agrave;ng BIDV tr&ecirc;n to&agrave;n quốc.<br />\r\n<br />\r\nMối quan hệ hợp t&aacute;c n&agrave;y sẽ kết hợp v&agrave; ph&aacute;t huy thế mạnh của c&aacute;c b&ecirc;n &ndash; sự am hiểu thị trường nội địa của BIDV v&agrave; sự vững chắc về t&agrave;i ch&iacute;nh c&ugrave;ng kinh nghiệm to&agrave;n cầu của MetLife - để BIDV MetLife trở th&agrave;nh đơn vị cung cấp bảo hiểm hiện đại v&agrave; đ&aacute;ng tin cậy tại Việt Nam.</p>\r\n', 'bidv-metlife.png', '12.000 nhân viên', '1995', 'wecare@bidvmetlife.com.vn', 1900545499, 1),
(23, 'Công ty Cổ phần Dịch vụ Di Động Trực tuyến (MoMo)', 11, 6, 'BÀI ĐĂNG', '<p>C&ocirc;ng ty Cổ phần dịch vụ Di Động Trực Tuyến (M_Service) th&agrave;nh lập từ năm 2007 l&agrave; c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực thanh to&aacute;n tr&ecirc;n di động với...</p>\r\n', '<p>Về c&ocirc;ng ty</p>\r\n\r\n<p>C&ocirc;ng ty Cổ phần dịch vụ Di Động Trực Tuyến (M_Service) th&agrave;nh lập từ năm 2007 l&agrave; c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực thanh to&aacute;n tr&ecirc;n di động với thương hiệu MoMo.<br />\r\nTh&ocirc;ng qua việc hợp t&aacute;c chiến lược với c&aacute;c ng&acirc;n h&agrave;ng v&agrave; tổ chức t&agrave;i ch&iacute;nh, MoMo hoạt động như một c&aacute;nh tay nối d&agrave;i mang dịch vụ t&agrave;i ch&iacute;nh, thanh to&aacute;n đến cho người d&acirc;n Việt Nam, đặc biệt tại c&aacute;c khu vực v&ugrave;ng s&acirc;u, v&ugrave;ng xa. MoMo l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam về cung cấp dịch vụ ứng dụng V&iacute; điện tử tr&ecirc;n thiết bị di động, dịch vụ chuyển tiền mặt tại điểm giao dịch (OTC) v&agrave; nền tảng thanh to&aacute;n.<br />\r\nThu h&uacute;t hơn 20 triệu người d&ugrave;ng, V&iacute; điện tử MoMo mang đến kh&aacute;ch h&agrave;ng trải nghiệm thanh to&aacute;n một chạm với h&agrave;ng trăm dịch vụ tiện &iacute;ch: chuyển tiền, thanh to&aacute;n h&oacute;a đơn v&agrave; c&aacute;c tiện &iacute;ch đa dạng, thu v&agrave; thanh to&aacute;n c&aacute;c giao dịch thương mại tr&ecirc;n thiết bị di động.<br />\r\nB&ecirc;n cạnh hoạt động kinh doanh, MoMo lu&ocirc;n ưu ti&ecirc;n cho c&aacute;c hoạt động v&igrave; cộng đồng.<br />\r\nĐến với c&ocirc;ng ty, bạn sẽ được:<br />\r\n- L&agrave;m việc tại c&ocirc;ng ty Fintech Việt Nam duy nhất lọt &ldquo;Top 50 c&ocirc;ng ty dẫn đầu&rdquo; Fintech 100 to&agrave;n cầu 2019, &ldquo;Nơi l&agrave;m việc tốt nhất ch&acirc;u &Aacute; 2020&rdquo;, ứng dụng đứng đầu &ldquo;Top 10 ứng dụng t&agrave;i ch&iacute;nh h&agrave;ng đầu Việt Nam 2020 theo lượng Người d&ugrave;ng hoạt động hằng th&aacute;ng&rdquo; từ App Annie.<br />\r\n- Lương, thưởng v&agrave; chế độ ph&uacute;c lợi hấp dẫn.<br />\r\n- Bảo hiểm sức khỏe to&agrave;n diện cho bạn v&agrave; người th&acirc;n trong gia đ&igrave;nh.<br />\r\n- Team-building hằng năm.<br />\r\nEnglish version<br />\r\nAbout MoMo<br />\r\nMobile Service Joint Stock Company (M_Service) was established in 2007, is a number one e-Wallet service provider &not;&not;&not;under the brand name MoMo in Vietnam.<br />\r\nThrough strategic cooperation with banks and financial institutions, MoMo acts as an extended arm to bring financial and payment services to the people of Vietnam, especially in remote areas. MoMo is the leading company in Vietnam in providing e-wallet applications on mobile phones, Over-The-Counter (OTC) and payment platforms.<br />\r\nWith nearly 20 million e-Wallet users, as a pioneering mobile payment platform in Vietnam, MoMo e-Wallet promotes a cashless economy and provides customers with one-touch payment experience, along with more than hundreds of service utilities, including money transfer, bills payment, airline tickets payment, train tickets payments, movie tickets, donation, collection and mobile commerce payment.<br />\r\nIn addition to business activities, MoMo always gives priority to CSR activities.<br />\r\nThe benefits we offer you:<br />\r\n- Work at the only Vietnamese Fintech company in &quot;Top 50 leading companies&quot; 2019 Fintech 100 - Leading Global Fintech Innovators, &ldquo;Best companies to work for in Asia 2020&rdquo; and Top 1 of &ldquo;Top 10 leading financial applications in Vietnam 2020&rdquo; according to number of monthly Active users from App Annie.<br />\r\n- Attractive salary, bonus and benefits.<br />\r\n- Get comprehensive health insurance packages for you and your family members.<br />\r\n- Yearly team-building at famous resorts/ tourist destinations.</p>\r\n', 'momo-logo.png', '14.000 nhân viên', '2007', 'hotro@momo.vn', 1274567893, 1),
(25, 'Công ty cổ phần thương mại dịch vụ Hương Thủy', 10, 1, 'BÀI ĐĂNG', '<p>C&ocirc;ng ty CASABLANCA VIETNAM c&oacute; hai ng&agrave;nh nghề kinh doanh l&agrave; sản xuất c&aacute;c loại t&uacute;i x&aacute;ch d&ugrave;ng trong si&ecirc;u thị v&agrave; mặt h&agrave;ng đ&aacute; nh&acirc;n tạo cao cấp. Ch&uacute;ng...</p>\r\n', '<p>Về c&ocirc;ng ty</p>\r\n\r\n<p>C&ocirc;ng ty CASABLANCA VIETNAM c&oacute; hai ng&agrave;nh nghề kinh doanh l&agrave; sản&nbsp;xuất c&aacute;c loại t&uacute;i x&aacute;ch d&ugrave;ng trong si&ecirc;u thị v&agrave; mặt h&agrave;ng đ&aacute; nh&acirc;n tạo cao cấp. Ch&uacute;ng t&ocirc;i c&oacute; c&aacute;c đơn vị th&agrave;nh vi&ecirc;n&nbsp;v&agrave; c&aacute;c nh&agrave; m&aacute;y lớn đặt tại c&aacute;c tỉnh H&agrave; Nam v&agrave; Bắc Giang. C&aacute;c sản phẩm t&uacute;i x&aacute;ch&nbsp;si&ecirc;u thị của CASABLANCA VIETNAM đ&atilde; được c&ocirc;ng nhận chất lượng đạt chuẩn ISO&nbsp;9001:2008 v&agrave; được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao. Sản phẩm đ&aacute; nh&acirc;n tạo của c&ocirc;ng ty được đầu tư d&acirc;y chuyền trang thiết bị hiện đại bậc nhất thế giới. Với hệ thống thiết bị, m&aacute;y m&oacute;c được<br />\r\nđầu tư theo phương thức chuyển giao c&ocirc;ng nghệ từ c&aacute;c nước đi đầu tr&ecirc;n Thế&nbsp;giới, được vận h&agrave;nh với đội ngũ c&aacute;n bộ, c&ocirc;ng nh&acirc;n vi&ecirc;n, kỹ thuật gi&agrave;u kinh&nbsp;nghiệm v&agrave; được đ&agrave;o tạo b&agrave;i bản. Tất cả c&aacute;c sản phẩm của C&ocirc;ng ty đều được xuất&nbsp;khẩu sang c&aacute;c thị trường lớn như&nbsp; Mỹ,&nbsp;Ch&acirc;u &Acirc;u, &hellip;. v&agrave; một số nước Ch&acirc;u &Aacute; như Nhật Bản, H&agrave;n Quốc. Nhiều tập đo&agrave;n si&ecirc;u&nbsp;thị lớn tr&ecirc;n thế giới đ&atilde; chọn CASABLANCA VIETNAM l&agrave;m đối t&aacute;c để đầu tư v&agrave; ph&aacute;t&nbsp;tiển v&agrave; sự hợp t&aacute;c n&agrave;y nằm trong chiến lược ph&aacute;t triển CASABLANCA VIETNAM.</p>\r\n', 'c21vu8e6nfh1uah6qiwto8bebqsmc5yzivzhhnor.png', '12.000 nhân viên', '1998', 'mih@mih.vn', 2043856583, 1);

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
  `mota` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietuv`
--

INSERT INTO `baivietuv` (`id_baiviet`, `id_nganhnghe`, `tenungvien`, `luong`, `id_diadiem`, `tenbaiviet`, `mota`, `hinhanh`, `ngaydang`, `tinhtrang`) VALUES
(8, 3, ' Floyd Robert', '8.000.000 ₫ / tháng', 6, 'BÀI ĐĂNG', '<p>Giới thiệu</p>\r\n\r\n<p>T&ocirc;i tự hỏi rằng n&oacute; sẽ dẫn đến đ&acirc;u, c&aacute;i con đường ấy? &Yacute; nghĩ về con đường n&agrave;y sẽ kết th&uacute;c ở đ&acirc;u??</p>\r\n\r\n<p>Học vấn</p>\r\n\r\n<h3>MBA from Harvard Business School</h3>\r\n\r\n<p>Harvard University</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>Bachlors in Fine Arts</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<p>Kinh nghiệm l&agrave;m việc</p>\r\n\r\n<p>G</p>\r\n\r\n<h3>Web Designer</h3>\r\n\r\n<p>Google</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Facebook</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n', 'candidate-5.png', '4/12/2022', 1),
(9, 9, 'Bell Alexander', '15.000.000 ₫ / tháng', 4, 'BÀI ĐĂNG', '<p>Giới thiệu</p>\r\n\r\n<p>We&#39;re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.</p>\r\n\r\n<p>Học vấn</p>\r\n\r\n<h3>MBA from Harvard Business School</h3>\r\n\r\n<p>Harvard University</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<p>T</p>\r\n\r\n<h3>Bachlors in Fine Arts</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<p>Kinh nghiệm l&agrave;m việc</p>\r\n\r\n<h3>Web Designer</h3>\r\n\r\n<p>Google</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Facebook</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n', 'candidate-4.png', '20/12/2022', 1),
(10, 1, 'Esther Victoria', '14.000.000 ₫ / tháng', 1, 'BÀI ĐĂNG', '<p>Giới thiệu</p>\r\n\r\n<p>We&#39;re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.</p>\r\n\r\n<p>Học vấn</p>\r\n\r\n<h3>MBA from Harvard Business School</h3>\r\n\r\n<p>Harvard University</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<p>T</p>\r\n\r\n<h3>Bachlors in Fine Arts</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<p>Kinh nghiệm l&agrave;m việc</p>\r\n\r\n<h3>Web Designer</h3>\r\n\r\n<p>Google</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Facebook</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n', 'candidate-3.png', '13/11/2022', 1),
(11, 9, ' Jerome Leslie', '7000000 ₫ / tháng', 2, 'BÀI ĐĂNG', '<p>Giới thiệu</p>\r\n\r\n<p>We&#39;re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.</p>\r\n\r\n<p>Học vấn</p>\r\n\r\n<h3>MBA from Harvard Business School</h3>\r\n\r\n<p>Harvard University</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>Bachlors in Fine Arts</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<p>Kinh nghiệm l&agrave;m việc</p>\r\n\r\n<h3>Web Designer</h3>\r\n\r\n<p>Google</p>\r\n\r\n<p>2015 - 2019</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Facebook</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n\r\n<h3>CEO Founder</h3>\r\n\r\n<p>Tomms College</p>\r\n\r\n<p>2011 - 2015</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac anteipsum primis in faucibus.</p>\r\n', 'candidate-6.png', '12/12/2022', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baivietvl`
--

CREATE TABLE `baivietvl` (
  `id_baiviet` int(11) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `tenvieclam` varchar(255) NOT NULL,
  `luong` varchar(300) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietvl`
--

INSERT INTO `baivietvl` (`id_baiviet`, `id_nganhnghe`, `tenvieclam`, `luong`, `id_diadiem`, `tenbaiviet`, `mota`, `hinhanh`, `ngaydang`, `tinhtrang`) VALUES
(11, 6, 'Giám Sát An Toàn Lao Động', '12.000.000 ₫ -18.000.000 ₫ / tháng', 1, 'Tuyển nhân viên', '<p>M&ocirc; tả c&ocirc;ng việc</p>\r\n\r\n<ul>\r\n	<li>Thực hiện theo c&aacute;c quy tr&igrave;nh, quy định về ATLĐ, VSLĐ, PCCC của C&ocirc;ng ty.</li>\r\n	<li>Thường xuy&ecirc;n kiểm tra, đ&ocirc;n đốc, nhắc nhở việc thực hiện c&ocirc;ng t&aacute;c ATLĐ &ndash; VSMT tại c&aacute;c bộ phận theo biện ph&aacute;p ATLĐ đ&atilde; được triển khai v&agrave; phổ biển.</li>\r\n	<li>Phụ tr&aacute;ch c&aacute;c vấn đề li&ecirc;n quan đến an to&agrave;n, bảo hộ lao động, PCCC của c&ocirc;ng ty v&agrave; tại c&aacute;c c&ocirc;ng tr&igrave;nh.</li>\r\n	<li>Triển khai c&aacute;c biện ph&aacute;p đảm bảo ATLĐ cho con người, m&aacute;y m&oacute;c, thiết bị thi c&ocirc;ng trong suốt qu&aacute; tr&igrave;nh thi c&ocirc;ng. Theo d&otilde;i việc thực hiện c&aacute;c biện ph&aacute;p an to&agrave;n vệ sinh lao động tại c&ocirc;ng trường.</li>\r\n	<li>Triển khai c&aacute;c biện ph&aacute;p xử l&yacute;, tho&aacute;t hiểm khi gặp sự cố về ATLĐ. Xử l&yacute; kịp thời c&aacute;c tai nạn, sự cố về an to&agrave;n lao động, t&igrave;nh huống khẩn cấp.</li>\r\n	<li>Tổ chức c&aacute;c lớp huấn luyện, đ&agrave;o tạo về c&ocirc;ng t&aacute;c an to&agrave;n lao động, vệ sinh m&ocirc;i trường cho Ban chỉ huy c&ocirc;ng trường, người lao động theo định kỳ.</li>\r\n	<li>Phối hợp c&ugrave;ng gi&aacute;m s&aacute;t c&ocirc;ng trường, thường xuy&ecirc;n kiểm tra c&aacute;c đơn vị thi c&ocirc;ng mục đ&iacute;ch đảm bảo tu&acirc;n thủ c&aacute;c quy định về an to&agrave;n lao động, vệ sinh m&ocirc;i trường, ph&ograve;ng chống ch&aacute;y nổ,an to&agrave;n v&agrave; tiết kiệm trong sự dụng điện..., c&aacute;c biển hiệu, biển cảnh b&aacute;o tại những nơi nguy hiểm.</li>\r\n</ul>\r\n\r\n<p>Y&ecirc;u cầu c&ocirc;ng việc</p>\r\n\r\n<ul>\r\n	<li>Nam tuổi&nbsp;từ 25-40, tốt nghiệp c&aacute;c trường CĐ,&nbsp;Đại học chuy&ecirc;n ng&agrave;nh an to&agrave;n lao động, x&acirc;y dựng,.. , c&oacute; chứng chỉ an to&agrave;n lao động.</li>\r\n	<li>C&oacute; &iacute;t nhất 2 năm kinh nghiệm ở lĩnh vực li&ecirc;n quan;</li>\r\n	<li>Đọc hiểu v&agrave; nắm r&otilde; luật lao động, c&aacute;c văn bản ph&aacute;p luật, nghị quyết, nghị định,...quy định về an to&agrave;n lao động, ph&ograve;ng chống ch&aacute;y nổ do c&aacute;c cơ quan c&oacute; thẩm quyền ban h&agrave;nh</li>\r\n	<li>C&oacute; kiến thức về an to&agrave;n trong thi c&ocirc;ng x&acirc;y dựng.</li>\r\n</ul>\r\n\r\n<p>Quyền lợi được hưởng</p>\r\n\r\n<ul>\r\n	<li>Mức lương: 12 -17 triệu/th&aacute;ng, t&ugrave;y theo năng lực.</li>\r\n	<li>Thưởng th&aacute;ng thứ 13, thưởng lễ, Tết theo quy định chung của C&ocirc;ng ty.</li>\r\n	<li>Được hưởng đầy đủ c&aacute;c chế độ về BHXH, BHYT, BHTN sau khi hết thời gian thử việc</li>\r\n	<li>Hỗ trợ nơi ở tại c&aacute;c dự &aacute;n.</li>\r\n	<li>Lương: Mức tối đa như tr&ecirc;n c&oacute; thể thương lương theo năng lực&nbsp;</li>\r\n</ul>\r\n\r\n<p>Y&ecirc;u cầu hồ sơ</p>\r\n\r\n<ul>\r\n	<li>Bằng cấp: Đại học</li>\r\n	<li>Giới t&iacute;nh: Nam</li>\r\n	<li>Độ tuổi: 25 - 40</li>\r\n</ul>\r\n', 'cong-ty-nhan-kiet.jpeg', '13/11/2022', 1),
(12, 1, 'Software Engineer (Android), Libraries', '6.000.000₫ - 9.000.000₫ /tháng', 1, 'Bài đăng ứng tuyển', '<p>Job Description</p>\r\n\r\n<p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\r\n\r\n<p>Key Responsibilities</p>\r\n\r\n<ul>\r\n	<li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\r\n	<li>Work with BAs, product managers and tech teams to lead the Product Design</li>\r\n	<li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\r\n	<li>Accurately estimate design tickets during planning sessions.</li>\r\n	<li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\r\n	<li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\r\n	<li>Design pixel perfect responsive UI&rsquo;s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\r\n	<li>Present your work to the wider business at Show &amp; Tell sessions.</li>\r\n</ul>\r\n\r\n<p>Skill &amp; Experience</p>\r\n\r\n<ul>\r\n	<li>You have at least 3 years&rsquo; experience working as a Product Designer.</li>\r\n	<li>You have experience using Sketch and InVision or Framer X</li>\r\n	<li>You have some previous experience working in an agile environment &ndash; Think two-week sprints.</li>\r\n	<li>You are familiar using Jira and Confluence in your workflow</li>\r\n</ul>\r\n', 'bc_company-4.png', '20/12/2002', 1),
(13, 7, 'Restaurant Team Member', '4.500.000₫ - 6.000.000₫ /tháng', 3, 'Bài đăng ứng tuyển', '<p>Job Description</p>\r\n\r\n<p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\r\n\r\n<p>Key Responsibilities</p>\r\n\r\n<ul>\r\n	<li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\r\n	<li>Work with BAs, product managers and tech teams to lead the Product Design</li>\r\n	<li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\r\n	<li>Accurately estimate design tickets during planning sessions.</li>\r\n	<li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\r\n	<li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\r\n	<li>Design pixel perfect responsive UI&rsquo;s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\r\n	<li>Present your work to the wider business at Show &amp; Tell sessions.</li>\r\n</ul>\r\n\r\n<p>Skill &amp; Experience</p>\r\n\r\n<ul>\r\n	<li>You have at least 3 years&rsquo; experience working as a Product Designer.</li>\r\n	<li>You have experience using Sketch and InVision or Framer X</li>\r\n	<li>You have some previous experience working in an agile environment &ndash; Think two-week sprints.</li>\r\n	<li>You are familiar using Jira and Confluence in your workflow</li>\r\n</ul>\r\n', 'bc_company-3.png', '13/11/2022', 1),
(14, 8, 'Assistant / Store Keeper', '8.000.000₫ - 18.000.000₫ /tháng', 5, 'Bài đăng ứng tuyển', '<p>Job Description</p>\r\n\r\n<p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\r\n\r\n<p>Key Responsibilities</p>\r\n\r\n<ul>\r\n	<li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\r\n	<li>Work with BAs, product managers and tech teams to lead the Product Design</li>\r\n	<li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\r\n	<li>Accurately estimate design tickets during planning sessions.</li>\r\n	<li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\r\n	<li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\r\n	<li>Design pixel perfect responsive UI&rsquo;s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\r\n	<li>Present your work to the wider business at Show &amp; Tell sessions.</li>\r\n</ul>\r\n\r\n<p>Skill &amp; Experience</p>\r\n\r\n<ul>\r\n	<li>You have at least 3 years&rsquo; experience working as a Product Designer.</li>\r\n	<li>You have experience using Sketch and InVision or Framer X</li>\r\n	<li>You have some previous experience working in an agile environment &ndash; Think two-week sprints.</li>\r\n	<li>You are familiar using Jira and Confluence in your workflow</li>\r\n</ul>\r\n', 'bc_company-1.png', '5/12/2002', 1),
(15, 9, 'Senior Full Stack Engineer, Creator Success', '4.000.000₫ - 7.000.000₫ /tháng', 2, 'Bài đăng ứng tuyển', '<p>Job Description</p>\r\n\r\n<p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\r\n\r\n<p>Key Responsibilities</p>\r\n\r\n<ul>\r\n	<li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\r\n	<li>Work with BAs, product managers and tech teams to lead the Product Design</li>\r\n	<li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\r\n	<li>Accurately estimate design tickets during planning sessions.</li>\r\n	<li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\r\n	<li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\r\n	<li>Design pixel perfect responsive UI&rsquo;s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\r\n	<li>Present your work to the wider business at Show &amp; Tell sessions.</li>\r\n</ul>\r\n\r\n<p>Skill &amp; Experience</p>\r\n\r\n<ul>\r\n	<li>You have at least 3 years&rsquo; experience working as a Product Designer.</li>\r\n	<li>You have experience using Sketch and InVision or Framer X</li>\r\n	<li>You have some previous experience working in an agile environment &ndash; Think two-week sprints.</li>\r\n	<li>You are familiar using Jira and Confluence in your workflow</li>\r\n</ul>\r\n', 'bc_company-3.png', '20/11/2022', 1);

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
(331, 'Võ Thị Hoài Thương', 'thuong@gmail.com', '202cb962ac59075b964b07152d234b70'),
(332, 'Vân anh', 'vothuong@gmail.com', '202cb962ac59075b964b07152d234b70'),
(333, 'Võ Thị Hoài Thương', 'sua@gmail.com', '202cb962ac59075b964b07152d234b70');

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
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dknhatuyendung`
--

INSERT INTO `dknhatuyendung` (`id_dk`, `ten`, `email`, `matkhau`) VALUES
(65, 'Công ty trách nhiệm HH', 'sua@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `sdt` int(15) NOT NULL
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
(4, 'Trợ lý'),
(6, 'Thẩm định'),
(7, 'Chăm sóc '),
(8, 'Nhân sự'),
(9, 'Thiết kế '),
(10, 'Sản xuất'),
(11, 'Đầu tư');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baivietct`
--
ALTER TABLE `baivietct`
  ADD PRIMARY KEY (`id_baiviet`);

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
-- AUTO_INCREMENT cho bảng `baivietct`
--
ALTER TABLE `baivietct`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `baivietuv`
--
ALTER TABLE `baivietuv`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `baivietvl`
--
ALTER TABLE `baivietvl`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `id_diadiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dknhatuyendung`
--
ALTER TABLE `dknhatuyendung`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `nganhnghe`
--
ALTER TABLE `nganhnghe`
  MODIFY `id_nganhnghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
