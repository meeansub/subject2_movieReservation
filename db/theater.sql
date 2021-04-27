-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: theater
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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '영화 제목',
  `price` varchar(30) NOT NULL COMMENT '영화 가격',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'클레멘타인','10000'),(2,'영웅','8000'),(3,'성냥팔이 소녀의 재림','9000');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seat_number` varchar(45) NOT NULL,
  `total_price` int NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `schedule_id` int NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `screenroom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`,`schedule_id`),
  KEY `fk_reservation_schedule1_idx` (`schedule_id`,`movie_title`,`screenroom`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'A-1',10000,'01027460339',1,'클레멘타인','1관'),(3,'D-6',8000,'01027460339',5,'영웅','2관'),(4,'F-5',9000,'01027460339',8,'성냥팔이 소녀의 재림','3관'),(5,'E-5',9000,'01027460339',9,'성냥팔이 소녀의 재림','3관'),(6,'A-8',10000,'01027460339',1,'클레멘타인','1관');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` varchar(30) DEFAULT NULL,
  `movie_id` int NOT NULL,
  `screenroom_id` int NOT NULL,
  PRIMARY KEY (`id`,`movie_id`,`screenroom_id`),
  KEY `fk_schedule_movie_idx` (`movie_id`),
  KEY `fk_schedule_screenroom1_idx` (`screenroom_id`),
  CONSTRAINT `fk_schedule_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `fk_schedule_screenroom1` FOREIGN KEY (`screenroom_id`) REFERENCES `screenroom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'09:00:00',1,1),(2,'15:00:00',1,1),(3,'21:00:00',1,1),(4,'08:30:00',2,2),(5,'13:30:00',2,2),(6,'18:30:00',2,2),(7,'10:00:00',3,3),(8,'14:00:00',3,3),(9,'18:00:00',3,3),(10,'22:00:00',3,3);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenroom`
--

DROP TABLE IF EXISTS `screenroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenroom` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'pk 식별자',
  `name` varchar(30) NOT NULL COMMENT '상영관 이름',
  `seats` int NOT NULL COMMENT '총 좌석수',
  `seat_matrix` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenroom`
--

LOCK TABLES `screenroom` WRITE;
/*!40000 ALTER TABLE `screenroom` DISABLE KEYS */;
INSERT INTO `screenroom` VALUES (1,'1관',156,'12x13'),(2,'2관',100,'10x10'),(3,'3관',144,'12x12');
/*!40000 ALTER TABLE `screenroom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 19:44:04
