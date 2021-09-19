-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Mobile Apps','mobile-apps','Mobile Development Courses','2021-09-17 21:24:51',1,NULL,NULL,0,NULL,NULL,'2021-09-17 21:24:51'),(2,'Data Science','data-science','Data Science Courses','2021-09-17 21:24:51',1,NULL,NULL,0,NULL,NULL,'2021-09-17 21:24:51'),(3,'Programming Languages','programming-languages','Programming Languages Courses','2021-09-17 21:24:51',1,NULL,NULL,0,NULL,NULL,'2021-09-17 21:24:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `category` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'iOS & Swift - The Complete iOS App Development Bootcamp','From Beginner to iOS App Developer with Just One Course! Fully Updated with a Comprehensive Module Dedicated to SwiftUI!',799000.00,4.30,1,'2021-09-17 21:24:58',1,'2021-09-18 16:35:43',1,0,NULL,NULL,'2021-09-17 21:24:58',NULL,2),(2,'The Complete Android N Developer Course','Learn Android App Development with Android 7 Nougat by building real apps including Uber, Whatsapp and Instagram!',599000.00,4.50,1,'2021-09-17 21:24:58',1,'2021-09-18 17:28:26',1,0,NULL,NULL,'2021-09-17 21:24:58',NULL,1),(3,'The Complete React Native + Hooks Course','Understand React Native with Hooks, Context, and React Navigation.',499000.00,4.00,1,'2021-09-17 21:24:58',1,'2021-09-18 17:29:27',1,0,NULL,NULL,'2021-09-17 21:24:58',NULL,2),(4,'Machine Learning A-Z™: Hands-On Python & R In Data Science','Learn to create Machine Learning Algorithms in Python and R from two Data Science experts. Code templates included.',799000.00,4.50,2,'2021-09-17 23:24:32',1,'2021-09-18 17:30:13',1,0,NULL,NULL,'2021-09-17 23:24:32',NULL,1),(5,'Python for Data Science and Machine Learning Bootcamp','Learn how to use NumPy, Pandas, Seaborn , Matplotlib , Plotly , Scikit-Learn , Machine Learning, Tensorflow , and more!',499000.00,4.00,2,'2021-09-17 23:24:36',1,'2021-09-18 17:31:26',1,0,NULL,NULL,'2021-09-17 23:24:36',NULL,2);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20210915024341-create-user.js'),('20210917115547-create-category.js'),('20210917120319-create-course.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'047l7lS9i8mIMvZ6Z2rwXI5-1.1569492807.fit_lim.size_1600x900.jpg','','',810,456,'{\"thumbnail\":{\"name\":\"thumbnail_047l7lS9i8mIMvZ6Z2rwXI5-1.1569492807.fit_lim.size_1600x900.jpg\",\"hash\":\"thumbnail_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":138,\"size\":8,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631941038/thumbnail_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_047l7lS9i8mIMvZ6Z2rwXI5-1.1569492807.fit_lim.size_1600x900.jpg\",\"hash\":\"medium_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":422,\"size\":52.55,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631941041/medium_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767.jpg\",\"provider_metadata\":{\"public_id\":\"medium_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_047l7lS9i8mIMvZ6Z2rwXI5-1.1569492807.fit_lim.size_1600x900.jpg\",\"hash\":\"small_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":281,\"size\":25.77,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631941043/small_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767.jpg\",\"provider_metadata\":{\"public_id\":\"small_047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"resource_type\":\"image\"}}}','047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767','.jpg','image/jpeg',60.04,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631941037/047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767.jpg',NULL,'cloudinary','{\"public_id\":\"047l7l_S9i8m_I_Mv_Z6_Z2rw_XI_5_1_1569492807_fit_lim_size_1600x900_4c19772767\",\"resource_type\":\"image\"}',1,1,'2021-09-17 21:57:21','2021-09-17 21:57:21'),(2,'12335829625_125737c6d5_k.jpg','','',2048,1365,'{\"thumbnail\":{\"name\":\"thumbnail_12335829625_125737c6d5_k.jpg\",\"hash\":\"thumbnail_12335829625_125737c6d5_k_33dea0ce9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":13.9,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631962202/thumbnail_12335829625_125737c6d5_k_33dea0ce9f.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_12335829625_125737c6d5_k_33dea0ce9f\",\"resource_type\":\"image\"}},\"large\":{\"name\":\"large_12335829625_125737c6d5_k.jpg\",\"hash\":\"large_12335829625_125737c6d5_k_33dea0ce9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":264.83,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631962205/large_12335829625_125737c6d5_k_33dea0ce9f.jpg\",\"provider_metadata\":{\"public_id\":\"large_12335829625_125737c6d5_k_33dea0ce9f\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_12335829625_125737c6d5_k.jpg\",\"hash\":\"medium_12335829625_125737c6d5_k_33dea0ce9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":149.53,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631962208/medium_12335829625_125737c6d5_k_33dea0ce9f.jpg\",\"provider_metadata\":{\"public_id\":\"medium_12335829625_125737c6d5_k_33dea0ce9f\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_12335829625_125737c6d5_k.jpg\",\"hash\":\"small_12335829625_125737c6d5_k_33dea0ce9f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":64.26,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631962211/small_12335829625_125737c6d5_k_33dea0ce9f.jpg\",\"provider_metadata\":{\"public_id\":\"small_12335829625_125737c6d5_k_33dea0ce9f\",\"resource_type\":\"image\"}}}','12335829625_125737c6d5_k_33dea0ce9f','.jpg','image/jpeg',1111.57,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631962199/12335829625_125737c6d5_k_33dea0ce9f.jpg',NULL,'cloudinary','{\"public_id\":\"12335829625_125737c6d5_k_33dea0ce9f\",\"resource_type\":\"image\"}',1,1,'2021-09-18 03:50:11','2021-09-18 03:50:11'),(3,'1778502_f4b9_12.jpg','','',480,270,'{\"thumbnail\":{\"name\":\"thumbnail_1778502_f4b9_12.jpg\",\"hash\":\"thumbnail_1778502_f4b9_12_5aa9c85a41\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":138,\"size\":7.84,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631969220/thumbnail_1778502_f4b9_12_5aa9c85a41.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_1778502_f4b9_12_5aa9c85a41\",\"resource_type\":\"image\"}}}','1778502_f4b9_12_5aa9c85a41','.jpg','image/jpeg',19.56,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631969219/1778502_f4b9_12_5aa9c85a41.jpg',NULL,'cloudinary','{\"public_id\":\"1778502_f4b9_12_5aa9c85a41\",\"resource_type\":\"image\"}',1,1,'2021-09-18 05:47:00','2021-09-18 05:47:00'),(4,'iOS-Development-Online-Courses-Training-with-Certification.png','','',1024,588,'{\"thumbnail\":{\"name\":\"thumbnail_iOS-Development-Online-Courses-Training-with-Certification.png\",\"hash\":\"thumbnail_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":141,\"size\":16.28,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631981254/thumbnail_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e.png\",\"provider_metadata\":{\"public_id\":\"thumbnail_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"resource_type\":\"image\"}},\"large\":{\"name\":\"large_iOS-Development-Online-Courses-Training-with-Certification.png\",\"hash\":\"large_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":574,\"size\":114.41,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631981257/large_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e.png\",\"provider_metadata\":{\"public_id\":\"large_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_iOS-Development-Online-Courses-Training-with-Certification.png\",\"hash\":\"medium_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":431,\"size\":78.39,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631981259/medium_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e.png\",\"provider_metadata\":{\"public_id\":\"medium_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_iOS-Development-Online-Courses-Training-with-Certification.png\",\"hash\":\"small_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":287,\"size\":43.46,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631981261/small_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e.png\",\"provider_metadata\":{\"public_id\":\"small_i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"resource_type\":\"image\"}}}','i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e','.png','image/png',29.44,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631981252/i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e.png',NULL,'cloudinary','{\"public_id\":\"i_OS_Development_Online_Courses_Training_with_Certification_f33fdafc1e\",\"resource_type\":\"image\"}',1,1,'2021-09-18 09:07:41','2021-09-18 09:07:41'),(5,'1_8VzYFpyCZEcmuAP-qK6vtA.jpeg','','',1000,500,'{\"thumbnail\":{\"name\":\"thumbnail_1_8VzYFpyCZEcmuAP-qK6vtA.jpeg\",\"hash\":\"thumbnail_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":123,\"size\":7.16,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986095/thumbnail_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_1_8VzYFpyCZEcmuAP-qK6vtA.jpeg\",\"hash\":\"medium_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":375,\"size\":33.2,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986097/medium_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc.jpg\",\"provider_metadata\":{\"public_id\":\"medium_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_1_8VzYFpyCZEcmuAP-qK6vtA.jpeg\",\"hash\":\"small_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":250,\"size\":19.36,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986099/small_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc.jpg\",\"provider_metadata\":{\"public_id\":\"small_1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"resource_type\":\"image\"}}}','1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc','.jpeg','image/jpeg',49.46,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631986093/1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc.jpg',NULL,'cloudinary','{\"public_id\":\"1_8_Vz_Y_Fpy_CZ_Ecmu_AP_q_K6vt_A_f900d75ebc\",\"resource_type\":\"image\"}',1,1,'2021-09-18 10:28:18','2021-09-18 10:28:18'),(6,'b_Top-React-Native-Mobile-Apps-.png','','',1251,586,'{\"thumbnail\":{\"name\":\"thumbnail_b_Top-React-Native-Mobile-Apps-.png\",\"hash\":\"thumbnail_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":115,\"size\":19.44,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986144/thumbnail_b_Top_React_Native_Mobile_Apps_f07f7585ac.png\",\"provider_metadata\":{\"public_id\":\"thumbnail_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"resource_type\":\"image\"}},\"large\":{\"name\":\"large_b_Top-React-Native-Mobile-Apps-.png\",\"hash\":\"large_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":468,\"size\":129.6,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986146/large_b_Top_React_Native_Mobile_Apps_f07f7585ac.png\",\"provider_metadata\":{\"public_id\":\"large_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_b_Top-React-Native-Mobile-Apps-.png\",\"hash\":\"medium_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":351,\"size\":82.34,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986148/medium_b_Top_React_Native_Mobile_Apps_f07f7585ac.png\",\"provider_metadata\":{\"public_id\":\"medium_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_b_Top-React-Native-Mobile-Apps-.png\",\"hash\":\"small_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":234,\"size\":46.14,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986150/small_b_Top_React_Native_Mobile_Apps_f07f7585ac.png\",\"provider_metadata\":{\"public_id\":\"small_b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"resource_type\":\"image\"}}}','b_Top_React_Native_Mobile_Apps_f07f7585ac','.png','image/png',75.45,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631986142/b_Top_React_Native_Mobile_Apps_f07f7585ac.png',NULL,'cloudinary','{\"public_id\":\"b_Top_React_Native_Mobile_Apps_f07f7585ac\",\"resource_type\":\"image\"}',1,1,'2021-09-18 10:29:10','2021-09-18 10:29:10'),(7,'Perbedaan-Data-Analytics-dan-Data-Science.jpeg','','',1280,692,'{\"thumbnail\":{\"name\":\"thumbnail_Perbedaan-Data-Analytics-dan-Data-Science.jpeg\",\"hash\":\"thumbnail_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":132,\"size\":6.53,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986199/thumbnail_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"resource_type\":\"image\"}},\"large\":{\"name\":\"large_Perbedaan-Data-Analytics-dan-Data-Science.jpeg\",\"hash\":\"large_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":541,\"size\":46.01,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986202/large_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e.jpg\",\"provider_metadata\":{\"public_id\":\"large_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_Perbedaan-Data-Analytics-dan-Data-Science.jpeg\",\"hash\":\"medium_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":405,\"size\":32.12,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986204/medium_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e.jpg\",\"provider_metadata\":{\"public_id\":\"medium_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_Perbedaan-Data-Analytics-dan-Data-Science.jpeg\",\"hash\":\"small_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":270,\"size\":17.47,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986206/small_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e.jpg\",\"provider_metadata\":{\"public_id\":\"small_Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"resource_type\":\"image\"}}}','Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e','.jpeg','image/jpeg',62.36,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631986198/Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e.jpg',NULL,'cloudinary','{\"public_id\":\"Perbedaan_Data_Analytics_dan_Data_Science_f8f2dd876e\",\"resource_type\":\"image\"}',1,1,'2021-09-18 10:30:06','2021-09-18 10:30:06'),(8,'9uy14.jpg','','',1280,720,'{\"thumbnail\":{\"name\":\"thumbnail_9uy14.jpg\",\"hash\":\"thumbnail_9uy14_c239f4e94c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":138,\"size\":4.68,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986273/thumbnail_9uy14_c239f4e94c.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_9uy14_c239f4e94c\",\"resource_type\":\"image\"}},\"large\":{\"name\":\"large_9uy14.jpg\",\"hash\":\"large_9uy14_c239f4e94c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":563,\"size\":39.15,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986275/large_9uy14_c239f4e94c.jpg\",\"provider_metadata\":{\"public_id\":\"large_9uy14_c239f4e94c\",\"resource_type\":\"image\"}},\"medium\":{\"name\":\"medium_9uy14.jpg\",\"hash\":\"medium_9uy14_c239f4e94c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":422,\"size\":25.73,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986276/medium_9uy14_c239f4e94c.jpg\",\"provider_metadata\":{\"public_id\":\"medium_9uy14_c239f4e94c\",\"resource_type\":\"image\"}},\"small\":{\"name\":\"small_9uy14.jpg\",\"hash\":\"small_9uy14_c239f4e94c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":281,\"size\":13.96,\"path\":null,\"url\":\"https://res.cloudinary.com/df0aptqsm/image/upload/v1631986278/small_9uy14_c239f4e94c.jpg\",\"provider_metadata\":{\"public_id\":\"small_9uy14_c239f4e94c\",\"resource_type\":\"image\"}}}','9uy14_c239f4e94c','.jpg','image/jpeg',53.07,'https://res.cloudinary.com/df0aptqsm/image/upload/v1631986271/9uy14_c239f4e94c.jpg',NULL,'cloudinary','{\"public_id\":\"9uy14_c239f4e94c\",\"resource_type\":\"image\"}',1,1,'2021-09-18 10:31:18','2021-09-18 10:31:18');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (3,4,1,'courses','image',1),(4,5,2,'courses','image',1),(5,6,3,'courses','image',1),(6,7,4,'courses','image',1),(7,8,5,'courses','image',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'achmadnf17','achmad17nov@gmail.com','$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC','2021-09-18 16:20:47',1,'2021-09-18 16:57:10',1,0,NULL,NULL,'2021-09-18 16:20:59','Achmad Nur Fajri'),(2,'angela.yu','angela.yu@gmail.com','$2b$10$zn2AvRWKflZ9Ifk8om6xEOVHoaodc3uP2GkNCusVBLQRPOV1zzDQC','2021-09-18 16:24:35',1,'2021-09-18 16:57:22',1,0,NULL,NULL,'2021-09-18 16:24:37','Dr. Angela Yu'),(4,'achmadnf28','achmad28nov@gmail.com','$2b$10$/vRe9.mZtUV0xY0WuoGZWu2TWQxuc720rimVNLccVOHfbcf08TvxC','2021-09-18 19:12:04',NULL,'2021-09-18 19:12:04',NULL,NULL,NULL,NULL,NULL,'Achmad NF');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 18:59:02
