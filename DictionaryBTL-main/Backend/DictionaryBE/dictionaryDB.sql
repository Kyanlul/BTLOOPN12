-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dictionary
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `id` int NOT NULL AUTO_INCREMENT,
  `english_word` varchar(255) DEFAULT NULL,
  `spell_word` varchar(255) DEFAULT NULL,
  `type_word` varchar(255) DEFAULT NULL,
  `viet_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (120,'hello','/hello/',',v','xin chào, chào'),(121,'one','/on3/','adj.',' 1, đơn'),(122,'abandon','/ə`bændən/','v.','bỏ, từ bỏ'),(123,'abandoned','/ə`bændənd/','adj.','bị bỏ rơi, bị ruồng bỏ'),(124,'ability','/ə`biliti/','n.','khả năng, năng lực'),(125,'able','/`eibl/','adj.','có năng lực, có tài'),(126,'unable','/`ʌn`eibl/','adj','không có năng lực, không có tài'),(127,'about','/ə`baut/ ','adv; prep.','khoảng, về'),(128,'above','/ə`bʌv/ ','prep; adv.','ở trên, lên trên'),(129,'abroad','/ə`brɔ:d/','adv.','ở, ra nước ngoài, ngoài trời'),(130,'absence','/`æbsəns/','n.','sự vắng mặt'),(131,'accident','/`æksidənt/','n.','tai nạn, rủi ro'),(132,'accidental','/,æksi`dentl/','adj.','tình cờ, bất ngờ'),(133,'accidentally','/,æksi`dentəli/','adv.','tình cờ, ngẫu nhiên'),(134,'accommodation','/ə,kɔmə`deiʃn/','n.','sự thích nghi, điều tiết'),(135,'accompany','/ə`kʌmpəni/','v.','đi theo, đi cùng, kèm theo'),(136,'according','prep.','to','/ə`kɔ:diɳ/ theo, y theo'),(137,'account','/ə`kaunt/','n.,v.','tài khoản, kế toán; tính toán, tính đến'),(138,'accurate','/`ækjurit/','adj.','đúng đắn, chính xác, xác đáng'),(139,'accurately','/`ækjuritli/','adv.','đúng đắn, chính xác'),(140,'accuse','/ə`kju:z/','v.','tố cáo, buộc tội, kết tội'),(141,'achieve','/ə`tʃi:v/','v.','đạt được, dành được'),(142,'achievement','/ə`tʃi:vmənt/','n.','thành tích, thành tựu'),(143,'acid','/`æsid/','n.','axit'),(144,'acknowledge','/ək`nɔlidʤ/','v.','công nhận, thừa nhận'),(145,'acquire','/ə`kwaiə/','v.','dành được, đạt được, kiếm được'),(146,'across','/ə`krɔs/ ','adv.,prep.','qua, ngang qua'),(147,'action','/`ækʃn/','n.','hành động, hành vi, tác động'),(148,'active','/`æktiv/','adj.','tích cực hoạt động, nhanh nhẹn'),(149,'actual','/`æktjuəl/','adj.','thực tế, có thật'),(150,'actually','/`æktjuəli/','adv.','hiện nay, hiện tại'),(151,'adapt','/ə`dæpt/','v.','tra, lắp vào'),(152,'add','/æd/','v.','cộng, thêm vào'),(153,'addition','/ə`diʃn/','n.','tính cộng, phép cộng'),(154,'additional','/ə`diʃənl/','adj.','thêm vào, tăng thêm'),(155,'address','/ə`dres/','n.v.','địa chỉ, đề địa chỉ'),(156,'adequate','/`ædikwit/','adj.','đầy, đầy đủ'),(157,'adequately','/`ædikwitli/','adv.','tương xứng, thỏa đáng'),(158,'admit','/əd`mit/','v.','nhận vào, cho vào, kết hợp'),(159,'adopt','/ə`dɔpt/','v.','nhận làm con nuôi, bố mẹ nuôi'),(160,'adventure','/əd`ventʃə/','n.','sự phiêu lưu, mạo hiểm'),(161,'advertise','/`ædvətaiz/','v.','báo cho biết, báo cho biết trước'),(162,'affair','/ə`feə/','n.','việc'),(163,'altogether','/,ɔ:ltə`geðə/','adv.','hoàn toàn, hầu như; nói chung'),(164,'bet','/bet/','v.,n.','đánh cuộc, cá cược; sự đánh cuộc'),(165,'book','/buk/','n.,v.',' sách; ghi chép'),(166,'broad','/broutʃ/','adj.','rộng'),(167,'dear','/diə/','adj.','thân, thân yêu, thân mến; kính thưa, thưa'),(168,'else','/els/','adv.','khác, nữa; nếu không'),(169,'estate','/ɪˈsteɪt/','n.','tài sản, di sản, bất động sản'),(170,'estimate','/`estimit - `estimeit/','n.,v.','sự ước lượng, đánh giá; ước lượng, đánh giá'),(171,'euro','/´ju:rou/','n.','đơn vị tiền tệ của liên minh châu Âu'),(172,'even','/`i:vn/','adv.,adj.','ngay cả, ngay, lại còn; bằng phẳng, điềm đạm, ngang bằng'),(173,'evening','/`i:vniɳ/','n.','buổi chiều, tối'),(174,'event','/i`vent/','n.','sự việc, sự kiện'),(175,'evil','/`i:vl/','adj.,n.','xấu, ác; điều xấu, điều ác, điều tai hại'),(176,'expected','/iks´pektid/','adj.','được chờ đợi, được hy vọng'),(177,'expense','/ɪkˈspɛns/','n.','chi phí'),(178,'further','/`fə:ðə/','adj.','xa hơn nữa; thêm nữa'),(179,'farm','/fa:m/','n.','trang trại'),(180,'farming','/`fɑ:miɳ/','n.','công việc trồng trọt, đồng áng'),(181,'future','/`fju:tʃə/','n.,adj.','tương lai'),(182,'gain','/geɪn/','v.,n.','lợi, lợi ích; giành được, kiếm được, đạt tới'),(183,'gallon','/`gælən/','n.','Galông 1gl =  4, 54 lít ở Anh, 3, 78 lít ở Mỹ'),(184,'network','/`netwə:k/','n.','mạng lưới, hệ thống'),(185,'paper','/´peipə/','n.','giấy'),(186,'parallel','/`pærəlel/','adj.','song song, tương đương'),(187,'parent','/`peərənt/','n.','cha, mẹ'),(188,'park','/pa:k/','n.,v.',' công viên, vườn hoa; khoanh vùng thành công viên'),(189,'parliament','/`pɑ:ləmənt/','n.','nghi viện, quốc hội'),(190,'part','/pa:t/','n.','phần, bộ phận'),(191,'pollution','/pəˈluʃən/','n.','sự ô nhiễm'),(192,'pool','/pu:l/','n.','vũng nước; bể bơi, hồ bơi'),(193,'role','/roul/','n.','vai (diễn), vai trò'),(194,'roll','/`roul/','n.,v.','cuốn, cuộn, sự lăn tròn; lăn, cuốn, quấn, cuộn sản'),(195,'ruined','/ru:ind/','adj.','bị hỏng, bị đổ nát, bị phá sản'),(196,'rule','/ru:l/','n.,v.','quy tắc, điều lệ, luật lệ; cai trị, chỉ huy, điều khiển'),(197,'ruler','/´ru:lə/','n.','người cai trị, người trị vì; thước kẻ'),(198,'substantial','/səb´stænʃəl/','adj.','thực tế, đáng kể, quan trọng'),(199,'sugar','/`ʃugə/','n.','đường'),(200,'suggest','/sə`dʤest/','v.','đề nghị, đề xuất; gợi'),(201,'surprised','/sə:´praizd/','adj.','ngạc nhiên (+ at)'),(202,'swell','/swel/','v.','phồng, sưng lên'),(203,'swelling','/´sweliη/','n.','sự sưng lên, sự phồng ra'),(204,'swollen','/´swoulən/','adj.','sưng phồng, phình căng'),(205,'swim','/swim/','v.','bơi lội'),(206,'swimming','/´swimiη/','n.','sự bơi lội'),(207,'swing','/swiŋ/','n.,v.','sự đu đưa, lúc lắc; đánh đu, đu đưa, lúc lắc'),(208,'switch','/switʃ/','n.,v.','công tắc, roi; tắt, bật, đánh bằng gậy, roi'),(209,'sympathetic','/¸simpə´θetik/','adj.','đồng cảm, đáng mến, dễ thương'),(210,'talk','/tɔ:k/','v.,n.','nói chuyện, trò chuyện; cuộc trò chuyện, cuộc thảo luận'),(211,'tall','/tɔ:l/','adj.','cao'),(212,'tank','/tæŋk/','n.','thùng, két, bể'),(213,'tap','/tæp/','v.,n..','mở vòi, đóng vồi; vòi, khóa'),(214,'tape','/teip/','n.','băng, băng ghi âm; dải, dây'),(215,'tough','/tʌf/','adj.','chắc,bền, dai'),(216,'tour','/tuə/','n.v.','cuộc đo du lịch, cuộc đi dạo, chuyến du lịch; đi du lịch'),(217,'translate','/træns´leit/','v.','dịch, biên dịch, phiên dịch'),(218,'translation','/træns`leiʃn/','n.','sự dịch'),(219,'trip','/trip/','n.,v.','cuộc dạo chơi, cuộc du ngoạn; đi dạo, du ngoạn'),(220,'tropical','/´trɔpikəl/','adj.','nhiệt đới'),(221,'ultimately','/´ʌltimətli/','adv.','cuối cùng, sau cùng'),(222,'umbrella','/ʌm`brelə/','n.','ô, dù'),(223,'upper','/´ʌpə/','adj.','cao hơn'),(224,'use','/ju:s/','v.,n.','sử dụng, dùng; sự dùng, sự sử dụng'),(225,'unusually','/ʌn´ju:ʒuəlli/','adv.','cực kỳ, khác thường'),(226,'vacation','/və`kei∫n/','n.','kỳ nghỉ hè, kỳ nghỉ lễ; ngày nghỉ, ngày lễ'),(227,'valid','/`vælɪd/','adj.','chắc chắn, hiệu quả, hợp lý'),(228,'valley','/`væli/','n.','thung lũng'),(229,'valuable','/`væljuəbl/','adj.','có giá trị lớn, đáng giá'),(230,'value','/`vælju:/','n.,v.','giá trị, ước tính, định giá'),(231,'van','/væn/','n.','tiền đội, quân tiên phong, xe tải'),(232,'variation','/¸veəri´eiʃən/','n.','sự biến đổi, sự thay đổi mức độ, sự khác nhau'),(233,'video','/`vidiou/','n.','video'),(234,'view','/vju:/','n.,v.','sự nhìn, tầm nhìn; nhìn thấy, xem, quan sát'),(235,'village','/ˈvɪlɪdʒ/','n.','làng, xã'),(236,'violence','/ˈvaɪələns/','n.','sự ác liệt, sự dữ dội; bạo lực'),(237,'world','/wɜ:ld/','n.','thế giới'),(238,'worry','/`wʌri/','v.,n.','lo lắng, suy nghĩ; sự lo lắng, suy nghĩ'),(239,'wrist','/rist/','n.','cổ tay'),(240,'write','/rait/','v.','viết'),(241,'writing','/´raitiη/','n.','sự viết'),(242,'yes','/jes/','n.','vâng, phải, có chứ');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dictionary'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-13  0:37:51
