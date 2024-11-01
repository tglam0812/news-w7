-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 25, 2024 at 03:55 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'CHÍNH TRỊ', 'CHINH-TRI', 0),
(2, 'THỜI SỰ', 'THOI-SU', 0),
(3, 'KINH DOANH', 'KINH-DOANH', 0),
(4, 'THỂ THAO', 'THE-THAO', 0),
(5, 'THẾ GIỚI ', 'THE-GIOI', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int NOT NULL,
  `featured` int NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `author` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Tham nhũng lấy một nhưng lãng phí có khi \'phá trăm, phá nghìn\'', 'Nếu như tham nhũng là “lấy” thì lãng phí là “phá”, mà trong nhiều trường hợp hậu quả của chuyện “phá” còn nặng nề hơn rất nhiều và có khi ăn một mà phá mười, phá một trăm, một nghìn.', 'Nếu như tham nhũng là “lấy” thì lãng phí là “phá”, mà trong nhiều trường hợp hậu quả của chuyện “phá” còn nặng nề hơn rất nhiều và có khi ăn một mà phá mười, phá một trăm, một nghìn.\r\nMột trong những thông điệp đáng chú ý trong bài viết mới đây của Tổng Bí thư, Chủ tịch nước Tô Lâm về \"Chống lãng phí\" là: Cần thống nhất nhận thức đấu tranh phòng, chống lãng phí là cuộc chiến chống “giặc nội xâm” đầy cam go, phức tạp; là một phần của cuộc đấu tranh giai cấp; có vị trí tương đương với phòng, chống tham nhũng, tiêu cực để xây dựng Đảng ta vững mạnh, “là đạo đức, là văn minh”.\r\n\r\nĐây thực sự là chỉ đạo quan trọng và kịp thời của Tổng Bí thư, Chủ tịch nước trong cuộc đấu tranh chống tệ lãng phí, kẻ đồng hành với tham nhũng cùng nhau phá hoại những thành tựu phát triển kinh tế - xã hội của đất nước đổi mới và cũng là một trở lực ghê gớm trong kỷ nguyên vươn mình của dân tộc.\r\n\r\n“Cặp song sinh” với tham nhũng\r\n\r\nTừ trước đến nay tham nhũng và lãng phí luôn bị coi là những bệnh tật đã được Đảng và Nhà nước nhận diện và kiên quyết đấu tranh với nhiều biện pháp, giải pháp thích hợp trong từng thời kỳ cách mạng.\r\n\r\nTrong bài viết của mình, Tổng Bí thư, Chủ tịch nước Tô Lâm đã nhắc lại những quan điểm tư tưởng của Bác Hồ cũng như các Nghị quyết, Chỉ thị của Đảng, trong đó đều coi phòng, chống tham nhũng lãng phí là những nhiệm vụ hết sức quan trọng, cần phải tiến hành thường xuyên, liên tục.\r\n\r\nNhìn về phương diện thể chế, các văn bản về phòng, chống tham nhũng và thực hành tiết kiệm chống lãng phí giống như một “cặp song sinh” bởi tính chất, mức độ, hậu quả và cả những biện pháp để đấu tranh phòng, chống những căn bệnh này cũng có nhiều điểm tương đồng, thậm chí trong một số trường hợp khó có thể bóc tách.\r\n\r\n<img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/16/khu-do-thi-hoang-vietnamnet-19335-24282.jpg?width=0&s=kUGK1OX24Y7pgUB9X-OsKQ\">\r\nNăm 1998, khi Pháp lệnh Chống tham nhũng được ban hành thì cũng là lúc Pháp lệnh Thực hành, tiết kiệm chống lãng phí ra đời. Đến năm 2005 cả hai pháp lệnh này đều được nâng lên thành luật.\r\n\r\nNgay sau đó, một nghị quyết chuyên biệt đầu tiên của Đảng về vấn đề này đã được ban hành. Đó là Nghị quyết số 04 ngày 21/8/2006 về tăng cường sự lãnh đạo của Đảng đối với công tác phòng, chống tham nhũng, lãng phí.\r\n\r\nĐiều này thể hiện quyết tâm chính trị mạnh mẽ của Đảng và Nhà nước trong cuộc đấu tranh chống tệ nạn tham nhũng, lãng phí.\r\n\r\nTham nhũng hay lãng phí cũng đều dẫn đến hậu quả mất tiền bạc, của cải, công sức của Nhà nước và nhân dân, phá hoại sự nghiệp đổi mới và cản trở sự phát triển đi lên của đất nước. Nếu như tham nhũng là “lấy” thì lãng phí là “phá”, mà trong nhiều trường hợp hậu quả của chuyện “phá” còn nặng nề hơn rất nhiều.\r\n\r\nThực tế vẫn còn đó những công trình nghìn tỷ hàng chục năm trời không được đưa vào sử dụng; các dự án treo ở những nơi đất vàng, đất bạc; những khoản vốn ngân sách bị sử dụng một cách bừa bãi. Và có cả những cuốn sách giáo khoa dùng một lần rồi bỏ bởi nó được “cải tiến, đổi mới” liên tục qua từng năm khiến cô trò và phụ huynh khốn khổ.\r\n\r\nRồi hội nghị, hội thảo phô trương, hình thức của những người chỉ thích “khai hội” như cách nói của Hồ Chủ tịch và những công trình, đề án nghiên cứu khoa học ngốn tiền tỷ mà kết quả chỉ để trên giá sách hay đưa vào lưu trữ... \r\n\r\nTệ hơn nữa là tình trạng “phá” để mà “lấy”. Có khi chỉ vì để được hưởng lợi “phần trăm, lại quả” cho cá nhân hoặc một nhóm người mà các công trình dù biết không hiệu quả vẫn cứ được phê duyệt thông qua. Chỉ vì những gục ngã trước cám dỗ của đồng tiền bẩn mà bỏ qua, thậm chí tiếp tay cho kẻ phạm pháp trốn hàng tỷ, hàng trăm hàng tỷ đồng tiền thuế… Đó chính là \"ăn một mà phá mười, phá một trăm, một nghìn\".\r\n\r\nNhiều, nhiều lắm, đâu đâu cũng thấy lãng phí. Chủ tịch Hồ Chí Minh từng nhắc nhở: “Tham ô có hại nhưng lãng phí có khi còn hại nhiều hơn: Nó tai hại hơn tham ô vì lãng phí rất phổ biến”. \r\n\r\nChiến lược quốc gia về phòng, chống lãng phí\r\n\r\nThời gian vừa qua, chúng ta đã hành động mạnh mẽ và kiên quyết đối với tệ tham nhũng và đã đạt được những kết quả rất tích cực, mang lại niềm tin của người dân vào sự lãnh đạo của Đảng, sự nghiêm minh và công bằng của luật pháp.\r\n\r\nCông tác thực hành tiết kiệm, chống lãng phí cũng được thực hiện thường xuyên ở các ngành, các cấp. Tuy nhiên, cũng phải thấy dường như trong nhận thức của không ít người chưa thực sự thấy hết những tác hại ghê gớm của lãng phí để từ đó có thái độ và hành động kiên quyết nhằm ngăn chặn và từng bước đẩy lùi tệ nạn này.\r\n\r\nTrong bài viết của mình, Tổng Bí thư, Chủ tịch nước đã chỉ rõ: “Lãng phí còn diễn ra khá phổ biến, dưới nhiều dạng thức khác nhau, đã và đang gây ra nhiều hệ lụy nghiêm trọng cho phát triển. Trong đó, gây suy giảm nguồn lực con người, nguồn lực tài chính, giảm hiệu quả sản xuất, tăng gánh nặng chi phí, gây cạn kiệt tài nguyên, gia tăng khoảng cách giàu nghèo”.\r\n\r\nTổng Bí thư, Chủ tịch nước Tô Lâm cũng nhấn mạnh đến việc xây dựng và tổ chức thực hiện chiến lược quốc gia về phòng, chống lãng phí.\r\n\r\nĐất nước đang bước vào kỷ nguyên mới, kỷ nguyên vươn mình của dân tộc để trở thành nước phát triển, thu nhập cao, sánh vai cùng các cường quốc năm châu như di nguyện của Chủ tịch Hồ Chí Minh thì hơn lúc nào hết cần đẩy mạnh hơn nữa, có hiệu quả hơn nữa công tác thực hành tiết kiệm, chống lãng phí.\r\n\r\nCó như thế mới bảo vệ và phát huy mọi tiềm năng, nguồn lực của đất nước, bảo đảm cho sự phát triển bền vững vì sự nghiệp dân giàu nước mạnh, xã hội công bằng, dân chủ, văn minh. ', 'khu-do-thi-hoang-vietnamnet-19335-24282.jpg', 1, 0, 10000, '2024-10-25 01:58:49', '2024-10-25 02:04:56', 1),
(2, 'Đường rộng 30m nối vào sân bay Tân Sơn Nhất lỡ hẹn thông xe tháng 10', 'Dự án nâng cấp, mở rộng đường Tân Kỳ - Tân Quý lên 30m nối vào sân bay Tân Sơn Nhất không kịp kế hoạch thông xe. Lý do là nhiều hạng mục thi công bị chậm tiến độ.', 'Dự án nâng cấp, mở rộng đường Tân Kỳ - Tân Quý lên 30m nối vào sân bay Tân Sơn Nhất không kịp kế hoạch thông xe. Lý do là nhiều hạng mục thi công bị chậm tiến độ.\r\nHôm nay (25/10), một lãnh đạo Ban Quản lý dự án đầu tư xây dựng các công trình giao thông TPHCM (chủ đầu tư) nhìn nhận công trình không thể thông xe trong tháng 10 như dự kiến.\r\n\r\n<img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/25/w-dji-0377jpg-18136.jpg?width=0&s=guuciNl09I-5Ltq1byn6Hg\">\r\nĐường Tân Kỳ - Tân Quý. Ảnh: Tuấn Kiệt\r\nTrước đó, hồi tháng 6, lãnh đạo Ban Giao thông TPHCM cho biết đã tiếp nhận đầy đủ mặt bằng từ quận Bình Tân và đang phối hợp với Tổng công ty điện lực TPHCM để ngầm hóa mạng lưới điện.\r\n\r\nKhi đó, đơn vị dự kiến công tác ngầm hóa và hoàn thiện mặt đường sẽ hoàn tất để thông xe trong tháng 10.\r\n\r\nW-DJI_0417.JPG.jpg\r\nGhi nhận thực tế sáng ngày 25/10, công trường dự án mở rộng đường Tân Kỳ - Tân Quý vẫn còn ngổn ngang, khối lượng thi công ước đạt trên 90%.\r\n\r\nTrong đó, hạng mục di dời hạ tầng lưới điện so với các phần việc khác mới chỉ được thực hiện rất \"khiêm tốn\". \r\n\r\nz5963834976346_3129dc5d64e811aa8da9a416a7f651d7.jpg\r\nHàng trăm trụ điện vẫn chưa được di dời. Ảnh: Tuấn Kiệt\r\nTrong khi hệ thống lưới điện hướng từ Mã Lò đi Bình Long đã được di dời và mặt đường được thảm nhựa thì ở phía ngược lại, hàng trăm trụ điện vẫn đứng nguyên giữa đường.\r\n\r\nNhiều đoạn, mặt đường từ vị trí hàng cột điện vào bên trong vỉa hè mới chỉ được thảm đá để chờ. \r\n\r\nW-z5931641334181_f83bb9dd8e15a6a23c1daf5bddd965cb.jpg\r\nCác công nhân làm việc tại công trường sáng 25/10. Ảnh: Tuấn Kiệt\r\nĐược khởi công từ tháng 3/2023 với tổng mức đầu tư hơn 237 tỷ đồng, công trình có chiều dài 2km, với điểm đầu giao với đường Bình Long và điểm cuối giao với Mã Lò. Dự án còn bao gồm việc mở rộng mặt đường từ 6-8m lên 30m; xây dựng hệ thống thoát nước mưa và nước thải, cây xanh, chiếu sáng, hào kỹ thuật; tổ chức giao thông hoàn chỉnh.\r\n\r\nĐường Tân Kỳ - Tân Quý trong tương lai sẽ là trục giao thông huyết mạch nối quốc lộ 1 vào thẳng sân bay Tân Sơn Nhất.', 'w-dji-0377jpg-18136.jpg', 2, 1, 40000, '2024-10-25 02:10:45', '2024-10-25 02:12:38', 2),
(3, 'Ngân hàng nào quán quân chi trả thu nhập?', 'Theo báo cáo tài chính quý III/2024, thu nhập bình quân mỗi nhân viên Techcombank lên đến 48 triệu đồng/tháng. Với con số này, liệu Techcombank có giữ được ngôi vị là ngân hàng có chế độ đãi ngộ cho nhân viên tốt nhất hệ thốn', 'Theo báo cáo tài chính quý III/2024, thu nhập bình quân mỗi nhân viên Techcombank lên đến 48 triệu đồng/tháng. Với con số này, liệu Techcombank có giữ được ngôi vị là ngân hàng có chế độ đãi ngộ cho nhân viên tốt nhất hệ thống?\r\nBáo cáo tài chính quý III của Techcombank cho thấy, thu nhập bình quân của nhân viên tiếp tục tăng. Trung bình tổng thu nhập (lương, thưởng, phụ cấp khác) nhân viên 9 tháng đầu năm lên đến 48 triệu đồng/người, tăng 3 triệu đồng so cùng kỳ năm ngoái.\r\n\r\nTrong đó, tiền lương bình quân nhân viên là 41 triệu đồng/người/tháng, cao hơn 3 triệu đồng/người/tháng so với cùng kỳ năm 2023.\r\n\r\nTechcombank cho biết, tổng số cán bộ nhân viên (CBNV) 9 tháng đầu năm là 10.762 người (cùng kỳ năm ngoái là 11.242 người). Techcombank chi tới hơn 4.676 tỷ đồng trong 9 tháng đầu năm trả lương và phụ cấp (cùng kỳ năm ngoái là 4.535 tỷ đồng).\r\n\r\n<img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/25/w-techcombank-11540.jpg?width=0&s=S7uAcRfIqE7ox0b6qtHe7Q\">\r\nNhân viên Techcombank thu nhập bình quân 48 triệu đồng/tháng. Ảnh: Hoàng Hà\r\nHiện chưa có nhiều ngân hàng công bố báo cáo tài chính quý 3 nhưng nhiều khả năng Techcombank vẫn sẽ tiếp tục giữ vững ngôi vị quán quân về thu nhập nhân viên. Đây là vị trí quen thuộc của nhà băng này từ khi \"soán ngôi\" của Vietcombank trong vài năm trở lại đây. \r\n\r\nTheo cập nhật của VietNamNet hồi cuối quý 2/2024, thu nhập của nhân viên Techcombank vẫn đứng vị trí số 1, với 53 triệu đồng/người/tháng, tăng 9 triệu đồng so với cùng kỳ năm ngoái.\r\n\r\nTrong khi đó, 3 ngân hàng \"bám đuổi\" phía sau là Vietcombank, HDBank và TPBank đều có mức thu nhập bình quân nhân viên hơn 37 triệu đồng/người/tháng. Như vậy, khoảng cách giữa Techcombank với nhóm sau còn khá lớn.\r\n\r\nNgoài Techcombank, Ngân hàng TMCP Thịnh Vượng và Phát triển (PGBank) cũng đã công bố  báo cáo tài chính quý 3, qua đó hé lộ tiền lương và thu nhập bình quân của nhân viên tăng so với cùng kỳ năm ngoái.\r\n\r\nTrong 9 tháng đầu năm nay, tiền lương bình quân mỗi tháng của nhân viên PGBank là 21 triệu đồng/người, tăng 3 triệu đồng/người/tháng so với cùng kỳ năm trước. Thu nhập bình quân mỗi tháng lên đến 24 triệu đồng/người, tăng 2 triệu đồng so với cùng kỳ năm 2023.\r\n\r\nPGBank hiện chỉ có 1.841 CBNV (cùng kỳ năm ngoái 1.723 người). Tổng quỹ lương của ngân hàng 9 tháng qua là 347 tỷ đồng (cùng kỳ năm ngoái là 276 tỷ đồng).\r\n\r\nCòn tại Ngân hàng TMCP Kiên Long (KienlongBank), tình hình thu nhập của CBNV không có gì thay đổi so với cùng kỳ năm ngoái, tức 20 triệu đồng/người/tháng. Mức thu nhập này bao gồm tiền lương và thưởng. Tuy nhiên, tiền lương bình quân lại giảm 1 triệu đồng xuống còn 17 triệu đồng/người/tháng trong 9 tháng qua. \r\n\r\nKienlongBank hiện có 3.630 CBNV (cùng kỳ 3.459 người). Tổng mức chi cho thu nhập nhân viên của ngân hàng trong 3 quý đầu năm nay là 648,318 tỷ đồng (cùng kỳ 611 tỷ đồng).\r\n\r\nTrong khi hầu hết ngân hàng đều tăng chi cho nhân viên, Ngân hàng TMCP Lộc Phát Việt Nam (LPBank) lại giảm chi so với cùng kỳ năm ngoái. Theo báo cáo tài chính quý III, thu nhập bình quân đầu người của nhân viên LPBank trong 9 tháng đầu năm là 22,25 triệu đồng/người/tháng, giảm 1,85 triệu đồng/người/tháng so với mức bình quân của năm 2023.\r\n\r\nTrong đó, tiền lương bình quân mỗi tháng của nhân viên LPBank là 19,31 triệu đồng, giảm 1,51 triệu đồng so với mức bình quân của năm 2023.\r\n\r\nSố lượng CBNV của LPBank trong 9 tháng đầu năm là 11.563 người (năm 2023 là 11.180 người). 9 tháng đầu năm, LPBank chi tới 2.300 tỷ đồng chi trả lương và phụ cấp cho CBNV, trong khi cả năm 2023 là 3.200 tỷ đồng.', 'w-techcombank-11540.jpg', 3, 0, 2000, '2024-10-25 02:12:40', '2024-10-25 02:14:23', 3),
(4, 'Tuyển Việt Nam: Điều kiện cần và đủ cho ông Kim Sang Sik trổ tài', 'HLV Kim Sang Sik có thể sẽ nhận sự phục vụ từ các cầu thủ nhập tịch trong thời gian tới, nhưng đây mới chỉ là điều kiện cần, còn đủ để tuyển Việt Nam bay cao thì khác.', 'HLV Kim Sang Sik có thể sẽ nhận sự phục vụ từ các cầu thủ nhập tịch trong thời gian tới, nhưng đây mới chỉ là điều kiện cần, còn đủ để tuyển Việt Nam bay cao thì khác.\r\nĐiều kiện cần của ông Kim Sang Sik\r\n\r\nÍt ngày sau khi đội bóng của HLV Kim Sang Sik nhận thất bại trong trận giao hữu với Thái Lan ở kỳ FIFA Days tháng 9, chân sút xuất sắc nhất V-Legue trong vài mùa gần đây là Rafaelson chính thức trở thành công dân Việt Nam với tên gọi Nguyễn Xuân Son.\r\n\r\nViệc cầu thủ người Brazil nhập tịch thành công khiến người hâm mộ quên đi thất bại trước đối thủ số 1 Đông Nam Á và hào hứng khi nghĩ đến tương lai với việc Rafaelson khoác áo tuyển Việt Nam chinh phục những giải đấu trong thời gian tới.\r\n\r\n<img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/24/rafaelson-52261.jpg?width=0&s=ClgGcS6BTrOBqmhUcC-ofA\">\r\nNguyễn Xuân Son sẽ là sự bổ sung quan trọng cho tuyển Việt Nam. Ảnh: SN\r\nTrước đó, khi gia nhập CLB CAHN, một cầu thủ nổi tiếng khác là Jason Quang Vinh cũng tiến hành các bước thủ tục pháp lý để có quốc tịch cũng như khoác áo tuyển Việt Nam - quê mẹ của hậu vệ trái này.\r\n\r\nViệc tiến hành và trở thành công dân Việt Nam mở cơ hội nâng chất cho tuyển Việt Nam giống như trước đây khi sử dụng Văn Lâm, Nguyễn Filip… Và đây có thể nói là điều kiện cần cho HLV Kim Sang Sik trong việc giúp đội nhà trở lại quỹ đạo chiến thắng sau thời gian đầy thất vọng.\r\n\r\n... nhưng đủ để bay cao phải khác\r\n\r\nNếu như thuận lợi, vào tháng 3/2025 khi tuyển Việt Nam tham dự vòng loạt Asian Cup 2027 rất có thể người hâm mộ sẽ chứng kiến sự góp mặt của 2 cầu thủ nói trên.\r\n\r\nNhưng, như đã nói việc có Quang Vinh hay Xuân Son mới chỉ là điều kiện cần, còn để đủ cho tuyển Việt Nam bay cao một cách ổn định hơn lại khác.', 'rafaelson-52261.jpg', 4, 1, 300, '2024-10-25 02:14:35', '2024-10-25 02:15:54', 4),
(5, 'Nhật Bản tích cực hỗ trợ công cuộc phát triển kinh tế của Việt Nam', 'Nhật Bản tích cực hỗ trợ công cuộc phát triển kinh tế của Việt Nam', 'Những chương trình và dự án triển khai đã kịp thời hỗ trợ Việt Nam phục hồi kinh tế sau đại dịch Covid-19 và đóng góp cả về hạ tầng kinh tế, phát triển nguồn nhân lực…\r\nTrong năm tài khoá của Nhật Bản, từ tháng 4/2023 - 3/2024, JICA (Cơ quan Hợp tác quốc tế Nhật Bản) đã ký kết các khoản vốn vay tổng giá trị lên tới 102,2 tỷ Yên (tương đương 678 triệu USD) (chưa bao gồm “Tài trợ đầu tư cho khu vực tư nhân”), mức cao nhất trong 6 năm qua kể từ năm 2017.\r\n\r\nHợp tác kỹ thuật đạt 5,2 tỷ Yên (tương đương 35 triệu USD), quy mô lớn nhất thế giới trong cùng năm tài khoá. Viện trợ không hoàn lại đạt 1,1 tỷ Yên (tương đương 7,5 triệu USD) vốn cam kết. \r\n\r\n1.Ông Sugano phát bieur tại họp báo.jpg\r\nTrưởng đại diện Văn phòng JICA Việt Nam, ông Sugano Yuichi phát biểu tại họp báo. <img src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/10/17/1ong-sugano-phat-bieur-tai-hop-bao-22212.jpg?width=0&s=JvwxWDUf-ArZcm4ly7Bzww\">\r\nTrong buổi họp báo giữa kỳ năm tài khóa 2024 hôm nay (17/10), Trưởng đại diện Văn phòng JICA Việt Nam Sugano Yuichi nhấn mạnh, Việt Nam là nước đứng đầu trong số các nước mà JICA đang triển khai hợp tác với việc cử 45 Tình nguyện viên Hợp tác hải ngoại Nhật Bản, 36 dự án đầu tư kinh doanh của doanh nghiệp vừa và nhỏ của Nhật Bản trong lĩnh vực phát triển bền vững (SDGs), 24 dự án hợp tác kỹ thuật cấp cơ sở (Chương trình đối tác phát triển).\r\n\r\nNgoài ra, Việt Nam là nước đứng thứ 2 thế giới với 9 dự án thuộc chương trình “Tài trợ đầu tư cho khu vực tư nhân” của JICA.\r\n\r\nBa trụ cột hợp tác \r\n\r\nTheo ông Sugano Yuichi, tại Việt Nam hiện JICA đang ưu tiên 3 trụ cột hợp tác gồm:\r\n\r\nVề “tăng trưởng chất lượng cao”, nhà máy xử lý nước thải Bình Hưng ở TP Hồ Chí Minh là dự án sử dụng nguồn vốn vay đã tổ chức lễ khánh thành nhà máy vào tháng 8. JICA cũng đang triển khai xây dựng nhà máy xử lý nước thải Yên Xá có quy mô lớn nhất tại Hà Nội, dự kiến sẽ hoàn thành trong thời gian tới. Dự án tuyến Metro số 1 tại TP Hồ Chí Minh được nhiều người quan tâm cũng đã bắt đầu chạy thử.\r\n\r\nVề “hỗ trợ đối tượng dễ bị tổn thương”, JICA đã kịp thời cung cấp hàng hóa viện trợ khẩn cấp bao gồm máy lọc nước và tấm trải nhựa cho quy mô 2.000 hộ ở tỉnh Yên Bái. Ngoài ra, trong khuôn khổ dự án hợp tác kỹ thuật nâng cao năng lực giảm thiểu rủi ro lũ quét, sạt lở đất ở khu vực phía Bắc, đập Sabo giúp giảm thiểu rủi ro sạt lở đất đang được xây dựng từ tháng 9 tại tỉnh Sơn La. \r\n\r\nTrong lĩnh vực nông nghiệp, lễ khánh thành Dự án Khôi phục, Nâng cấp hệ thống thủy lợi Bắc Nghệ An - dự án sử dụng vốn vay, đã được tổ chức vào tháng 3/2024. Việc tăng diện tích tưới tiêu sẽ giúp cải thiện sinh kế của người dân nông thôn.\r\n\r\nTrong lĩnh vực y tế và chăm sóc sức khoẻ, JICA cũng chuẩn bị triển khai dự án hợp tác kỹ thuật mới nhằm tăng cường phòng chống viêm gan virus - một căn bệnh truyền nhiễm thường gặp ở Việt Nam và đang triển khai thực hiện Dự án “Nâng cấp trang thiết bị y tế tại Bệnh viện K” nhằm góp phần đáp ứng nhu cầu ngày càng tăng về chẩn đoán và điều trị ung thư.\r\n\r\nVới trụ cột “Phát triển nguồn nhân lực”, năm 2024 đánh dấu 10 năm thành lập Đại học Việt Nhật. Trường hiện có 1.110 sinh viên đang theo học, bao gồm sinh viên hệ cao học. Ngoài ra, trong Chương trình JICA Chair nhằm thúc đẩy nghiên cứu Nhật Bản, JICA đang phối hợp với Viện Hàn lâm Khoa học Xã hội Việt Nam (VASS) để biên soạn sách chuyên khảo cho sinh viên nhằm cung cấp một cách tổng quan về lịch sử quan hệ Nhật Bản - Việt Nam, dự kiến, sách sẽ sớm được xuất bản.', '1ong-sugano-phat-bieur-tai-hop-bao-22212.jpg', 5, 1, 50, '2024-10-25 02:16:07', '2024-10-25 02:17:30', 5),
(10, 'Cứ thu 20 đồng lãi 13 đồng, DN của ông Johnathan Hạnh Nguyễn kiếm hơn buôn vàng', '', 'Doanh nghiệp nhà chồng cựu nữ diễn viên Tăng Thanh Hà báo lãi cao chưa từng có cho dù nền kinh tế nhìn chung còn nhiều khó khăn, giá cả hàng hóa leo thang.\r\nCTCP Dịch vụ Hàng không Sân bay Tân Sơn Nhất - Sasco (SAS) do ông Johnathan Hạnh Nguyễn làm Chủ tịch, vừa công bố báo cáo tài chính quý III/2024 với doanh thu và lợi nhuận gộp đạt tương ứng hơn 782 tỷ đồng và 498 tỷ đồng.\r\n\r\nĐây đều là những con số kỷ lục mà ông lớn dịch vụ hàng không ghi nhận trong một quý. Với mức lợi nhuận nói trên, biên lợi nhuận gộp đạt gần 64%. \r\n\r\nĐiều này đồng nghĩa với việc, thu về 20 đồng sau khi trừ đi giá vốn hàng bán, Sasco lãi gộp gần 13 đồng - một tỷ lệ rất cao, hơn cả lãi ôm vàng trong một năm có thể coi là tưng bừng nhất - 2024. Từ đầu năm tới nay, vàng thế giới tăng hơn 30%, vàng miếng SJC tăng 20%, còn vàng nhẫn tăng khoảng 38%.\r\n\r\nSau khi trừ chi phí tài chính, chi phí bán hàng, quản lý doanh nghiệp…, Sasco lãi gần 216 tỷ đồng lợi nhuận trước thuế và lãi gần 181 tỷ đồng sau thuế trong quý III/2024.\r\n\r\nLũy kế 9 tháng, Sasco ghi nhận tổng doanh thu hơn 2.117 tỷ đồng và lãi sau thuế hơn 294 tỷ đồng, tăng 12% và 22% so với cùng kỳ năm trước. Đây cũng là những con số ấn tượng nếu so với quy mô vốn hơn 1.330 tỷ đồng của Sasco.', '', 0, 0, 0, '2024-10-25 03:35:10', '2024-10-25 03:52:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Nguyễn Chí Lộc'),
(2, 'Tuấn Khoa'),
(3, 'Minh Trí'),
(4, 'Gia Lâm'),
(5, 'Văn Tùng');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
