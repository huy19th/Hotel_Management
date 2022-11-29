-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelmanager
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `rID` int NOT NULL,
  `checkIn` datetime NOT NULL,
  `ckeckOut` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`rID`,`checkIn`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`rID`) REFERENCES `room` (`rID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,'2022-12-01 00:00:00','2022-12-02 00:00:00',7,600000),(2,'2022-12-01 00:00:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `rID` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `type` enum('0','1','2') NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  `price` int NOT NULL,
  PRIMARY KEY (`rID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'gom 1 giuong don 1 phong tam','https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/15679635.jpg?k=b30bec93d0e8f1ea5898a919d99fdb6a2d54014d1fd04b6e7f2ece22c540ccfd&o=&hp=1','0','1',600000),(2,'gom 1 giuong doi hoac 2 giuong don va 1 phong tam','https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/15679566.jpg?k=2a295bf165b679f8a04a94c3fa112e84a21f93df4f437b390dc3ac9233cb9bf7&o=&hp=1','1','1',700000),(3,'gom 1 giuong doi, view ho, 1 phong tam co bon','https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/15679623.jpg?k=1a9c7be42fb28159a5f723d9e26ce3c0a6c84f7502e1ef8d28266bc8cd30a161&o=&hp=1','2','0',1000000);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `birthday` datetime NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `telephone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Hoa','2001-10-26 00:00:00','hoa@gmail.com','abcd!@#$','0951736248','https://www.google.com/url?sa=i&url=https%3A%2F%2Ftoigingiuvedep.vn%2Fmau-anh-the-dep%2F&psig=AOvVaw35OEI_BIwVnJ9YGG7CZTk9&ust=1669734727430000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCNCt38SU0fsCFQAAAAAdAAAAABAO'),('Hung','2002-12-25 00:00:00','hung@gmail.com',' abc1234','0963852741','https://www.google.com/url?sa=i&url=https%3A%2F%2Ftoplist.vn%2Ftop-list%2Ftiem-chup-anh-the-lay-ngay-dep-nhat-nha-trang-34025.htm&psig=AOvVaw35OEI_BIwVnJ9YGG7CZTk9&ust=1669734727430000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCNCt38SU0fsCFQAAAAAdAAAAABAE'),('Minh','2003-01-23 00:00:00','minh@gmail.com','123456','0123456789','https://www.google.com/url?sa=i&url=https%3A%2F%2Fnguyenvinh360.com%2Fin-anh-the-lay-ngay&psig=AOvVaw08HeSaoYAY_dWh9aGoyiK6&ust=1669734568791000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPDGy_iT0fsCFQAAAAAdAAAAABAE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29  8:35:14
