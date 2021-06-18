-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int unsigned NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_price` decimal(10,2) NOT NULL,
  `book_category` varchar(100) NOT NULL,
  `book_quantity` int NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'lập kế hoạch kinh doanh hiệu quả','brian finch',200000.00,'sach kinh te',120,'lapkehoachkinhdoanhhieuqua.jpg','2021-06-01 02:36:45','2021-06-01 02:36:45'),(2,'lập kế hoạch kinh doanh hiệu quả','brian finch',200000.00,'sach kinh te',120,'lapkehoachkinhdoanhhieuqua.jpg','2021-06-01 02:36:45','2021-06-01 02:36:45'),(3,'lập kế hoạch kinh doanh hiệu quả','brian finch',200000.00,'sach kinh te',120,'lapkehoachkinhdoanhhieuqua.jpg','2021-06-01 02:36:45','2021-06-01 02:36:45'),(4,'lập kế hoạch kinh doanh hiệu quả','brian finch',200000.00,'sach kinh te',120,'lapkehoachkinhdoanhhieuqua.jpg','2021-06-01 02:36:45','2021-06-01 02:36:45'),(5,'lập kế hoạch kinh doanh hiệu quả','brian finch',200000.00,'sach kinh te',120,'lapkehoachkinhdoanhhieuqua.jpg','2021-06-01 02:36:45','2021-06-01 02:36:45'),(6,'lập kế hoạch kinh doanh hiệu quả','brian finch',200000.00,'sach kinh te',120,'lapkehoachkinhdoanhhieuqua.jpg','2021-06-01 02:36:45','2021-06-01 02:36:45');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `address` varchar(100) NOT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Dinh Queng','03551113423','dinhqueng@gmail.com','dinhqueng123','Ha Noi','2021-06-01 02:26:17','2021-06-01 02:26:17'),(2,'Van Ten','03551111223','vanten@gmail.com','vanten123','Thai Binh','2021-06-01 02:26:17','2021-06-01 02:26:17'),(3,'Nhat Menh','03555513423','nhatmenh@gmail.com','nhatmenh123','Nghe An','2021-06-01 02:26:17','2021-06-01 02:26:17'),(4,'Quách Đình Quang','0355764662','dinhquang149999@gmail.com','dinhquang123','Vinh Hung','2021-06-15 04:54:11','2021-06-15 04:54:11');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 18:30:47
