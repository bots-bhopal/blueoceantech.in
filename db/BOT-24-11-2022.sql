-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: blueolz8_bot
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `role_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,1,NULL,'Admin','admin','admin@gmail.com',0,'16688544621921771855.png','$2y$10$q7PIHP9NSRt2TUUnqdYwJeiC6aIPcr5xy1h6BqN11Ou4BGjWvZfTG',NULL,NULL,'2022-11-19 05:11:02'),(2,1,1,'Rony','rony','rony@gmail.com',0,'16137989081753336377.png','$2y$10$19NOEORKuK8qEPM13S38R.lD.tsOCQntS2rK9finxx3zNt8Ql/d2.',NULL,'2021-02-19 22:28:56','2021-02-19 23:28:28'),(3,1,2,'Sihab','sihab','sihab@gmail.com',0,'1613798862914110019.png','$2y$10$KLLAvssopCM/dr2iNW53E.VPU2Me2hG1XcrSPWt/zedsvgWEN7jzK',NULL,'2021-02-19 22:31:38','2021-02-20 03:37:24');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archives`
--

DROP TABLE IF EXISTS `archives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archives` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archives`
--

LOCK TABLES `archives` WRITE;
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
INSERT INTO `archives` VALUES (1,'01/2021','2021-02-11 05:12:54','2021-02-11 05:12:54'),(2,'09/2020','2021-02-11 05:13:12','2021-02-11 05:13:12'),(3,'02/2021','2021-02-11 05:13:24','2021-02-16 07:57:44');
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bcategories`
--

DROP TABLE IF EXISTS `bcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bcategories`
--

LOCK TABLES `bcategories` WRITE;
/*!40000 ALTER TABLE `bcategories` DISABLE KEYS */;
INSERT INTO `bcategories` VALUES (1,1,'Business','Business',1,0,'2021-02-11 00:51:53','2021-02-11 00:58:11'),(2,1,'Technology','Technology',1,1,'2021-02-11 00:52:01','2021-02-11 00:58:07'),(3,1,'Digital Marketing','Digital-Marketing',1,0,'2021-02-11 00:52:40','2021-02-11 00:52:40'),(4,1,'UI Design','UI-Design',1,0,'2021-02-11 00:52:59','2021-02-11 00:52:59');
/*!40000 ALTER TABLE `bcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `bcategory_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,1,4,'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation ullamco','Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation-ullamco','16130436341918352388.jpg','<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>',1,'html,css,js','Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',0,'2021-02-11 05:35:56','2021-02-11 05:41:33'),(2,1,2,'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.','Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et-dolore.','16130436082031699655.jpg','<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>',1,'html,css,js','Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',0,'2021-02-11 05:35:56','2021-02-11 05:41:24'),(3,1,1,'Lorem ipsum dolor sit amet, consecte cing elit, sed do eiusmod tempor.','Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do-eiusmod-tempor.','1613043644825936294.jpg','<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>',1,'html,css,js','Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',0,'2021-02-11 05:35:56','2021-02-11 05:41:18');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'1',1,'geniusdevs','16129535581894368474.png','https://themeforest.net/user/geniusdevs/portfolio',0,'2021-02-10 04:39:18','2021-02-10 05:41:14'),(2,'1',1,'geniusdevs','16129535851643753715.png','https://themeforest.net/user/geniusdevs/portfolio',0,'2021-02-10 04:39:45','2021-02-10 05:41:08'),(3,'1',1,'geniusdevs','16129536061477062131.png','https://themeforest.net/user/geniusdevs/portfolio',0,'2021-02-10 04:40:06','2021-02-10 05:41:04'),(4,'1',1,'geniusdevs','16129536221147220531.png','https://themeforest.net/user/geniusdevs/portfolio',0,'2021-02-10 04:40:22','2021-02-10 05:40:59'),(5,'1',1,'geniusdevs','1612953650268349824.png','https://themeforest.net/user/geniusdevs/portfolio',0,'2021-02-10 04:40:50','2021-02-10 05:40:55'),(6,'1',1,'geniusdevs','1612953665451385670.png','https://themeforest.net/user/geniusdevs/portfolio',0,'2021-02-10 04:41:05','2021-02-10 05:40:48');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (1,1,1,'Projct Complate',569,'fal fa-box','Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium',0,'2021-02-10 03:19:45','2021-02-12 22:02:20'),(2,1,1,'Happy Clients',356,'fal fa-users','Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium',0,'2021-02-10 03:20:34','2021-02-12 22:02:16'),(3,1,1,'Business Partners',783,'fal fa-globe','Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium',0,'2021-02-10 03:21:11','2021-02-12 22:02:12'),(4,1,1,'IT Consultant',894,'fal fa-award','Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu',0,'2021-02-10 03:21:37','2021-02-12 22:01:30');
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daynamicpages`
--

DROP TABLE IF EXISTS `daynamicpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daynamicpages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daynamicpages`
--

LOCK TABLES `daynamicpages` WRITE;
/*!40000 ALTER TABLE `daynamicpages` DISABLE KEYS */;
INSERT INTO `daynamicpages` VALUES (1,1,NULL,'Terms & Conditions','Trams','Terms-&-Conditions',_binary '<section class=\"privacy-area\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-12\">\r\n                    <div class=\"content-box mb-50\">\r\n                        <h2>Terms &amp; Conditions</h2></div><div class=\"content-box mb-50\">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div></section>',1,0,NULL,NULL,'2021-02-17 06:54:16','2022-11-19 07:01:41'),(2,1,NULL,'Privacy Policy','Policy','Privacy-Policy',_binary '<section class=\"privacy-area\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-12\">\r\n                    <div class=\"content-box mb-50\">\r\n                        <h2>Privacy Policy</h2></div><div class=\"content-box mb-50\">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div></section>',1,0,NULL,'perspiciatis unde omnis iste natus error sit voluptatem accusantium','2021-02-17 06:55:45','2022-11-19 06:27:43');
/*!40000 ALTER TABLE `daynamicpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailsettings`
--

DROP TABLE IF EXISTS `emailsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailsettings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_smtp` int DEFAULT NULL,
  `header_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailsettings`
--

LOCK TABLES `emailsettings` WRITE;
/*!40000 ALTER TABLE `emailsettings` DISABLE KEYS */;
INSERT INTO `emailsettings` VALUES (1,0,'smtp','smtp.mailtrap.io','2525','tls','8db3922982412e','123456','info@blueoceantech.in','Blueocean Tech Solutions Pvt. Ltd.',1,NULL,'2022-11-03 05:47:09');
/*!40000 ALTER TABLE `emailsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'1',1,'We Provide Professional Service','<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>',0,'2021-02-10 00:33:37','2021-02-10 00:39:16'),(2,'1',1,'Stay Up, Stay Running & Protected','<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>',1,'2021-02-10 00:34:16','2021-02-10 00:39:04'),(3,'1',1,'Our Experienced Experts','<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>',0,'2021-02-10 00:34:37','2021-02-10 00:38:55'),(4,'1',1,'Management Engineering System','<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>',0,'2021-02-10 00:34:53','2021-02-10 00:38:51');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'1',1,'fal fa-laptop-code','Design & Development','Our experienced and committed team of developers is focussed to develop cost-effective and efficient solutions.',0,'2021-02-08 21:32:48','2022-11-19 06:33:37'),(2,'1',1,'fal fa-fingerprint','Online Marketing','We design marketing strategies for your brand which improves your reach to your target customers and make them use your product or service.',0,'2021-02-08 21:36:17','2022-11-19 06:33:20'),(3,'1',1,'fal fa-chalkboard','Live Support','We provide constant support for all the products or services delivered by us for you to have an unmatched experience.',0,'2021-02-08 21:36:45','2022-11-19 06:33:06'),(4,'1',1,'fal fa-database','Database Security','Security of databases is a complicated and challenging task that requires all aspects of security practices and technologies.',0,'2021-02-08 21:37:15','2022-11-19 06:36:37');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flinks`
--

DROP TABLE IF EXISTS `flinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flinks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flinks`
--

LOCK TABLES `flinks` WRITE;
/*!40000 ALTER TABLE `flinks` DISABLE KEYS */;
INSERT INTO `flinks` VALUES (1,1,'About Us','#',0,'2021-02-14 22:55:49','2021-02-14 22:55:49'),(2,1,'Our Privacy','#',0,'2021-02-14 22:56:04','2021-02-14 22:56:04'),(3,1,'Services','#',0,'2021-02-14 22:56:19','2021-02-14 22:56:19'),(4,1,'Portfolio','#',1,'2021-02-14 22:56:27','2021-02-14 23:00:17'),(5,1,'Privacy Policy','#',0,'2021-02-19 07:45:06','2022-11-19 07:04:08');
/*!40000 ALTER TABLE `flinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (1,'1',1,'Technical content may have per suasive objectives.','portfolio_1613022814321244425.jpg','2021','Startup',0,'2021-02-10 23:45:44','2021-02-10 23:53:34'),(2,'1',1,'Technical content may have per suasive objectives.','portfolio_16130228451015952493.jpg','2021','Startup',0,'2021-02-10 23:45:58','2021-02-10 23:54:05'),(3,'1',1,'Technical content may have per suasive objectives.','portfolio_16130228551806026364.jpg','2021','Startup',0,'2021-02-10 23:46:12','2021-02-10 23:54:15'),(4,'1',1,'Technical content may have per suasive objectives.','161302242519469749.jpg','2021','Startup',0,'2021-02-10 23:47:05','2021-02-10 23:54:19');
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int NOT NULL DEFAULT '0',
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en',1,'ltr',NULL,'2022-11-05 06:23:02'),(4,'Hindi','hi',0,'ltr','2022-11-05 00:46:45','2022-11-05 06:23:02');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_05_25_122740_create_admins_table',1),(2,'2020_05_26_000000_create_users_table',1),(3,'2020_08_19_000000_create_failed_jobs_table',1),(4,'2020_10_12_100000_create_password_resets_table',1),(7,'2020_10_26_035012_create_languages_table',1),(8,'2020_10_27_024546_create_sliders_table',1),(10,'2020_10_27_025335_create_services_table',1),(12,'2020_10_27_025627_create_faqs_table',1),(13,'2020_11_17_122813_create_newsletters_table',1),(14,'2020_11_20_085050_create_emailsettings_table',1),(15,'2020_12_25_124242_create_socials_table',1),(16,'2021_01_01_123641_create_blogs_table',1),(17,'2021_01_01_123728_create_bcategories_table',1),(18,'2021_01_03_110518_create_testimonials_table',1),(22,'2021_01_24_111458_create_backups_table',1),(23,'2021_02_07_145147_create_features_table',1),(24,'2021_02_07_145631_create_why_selects_table',1),(26,'2021_02_07_151616_create_clients_table',1),(27,'2021_02_07_152047_create_counters_table',1),(28,'2021_02_08_041017_create_archives_table',1),(29,'2021_02_08_042120_create_portfolios_table',1),(30,'2021_02_08_042357_create_portfolio_images_table',1),(31,'2020_10_13_123757_create_settings_table',2),(32,'2020_10_14_103316_create_sectiontitle_table',3),(33,'2021_02_09_043348_add_video_info_to_sectiontitles_table',4),(34,'2021_02_09_050446_add_about_info_to_sectiontitles_table',5),(36,'2020_10_27_025547_create_teams_table',6),(37,'2021_02_07_151349_create_histories_table',7),(38,'2021_02_12_045400_add_opening_hours_to_settings',8),(39,'2021_02_13_041641_add_meet_text_to_sectiontitles_table',9),(40,'2021_02_15_035217_add_footer_bg_to_settings_table',10),(41,'2021_02_15_043251_create_flinks_table',11),(42,'2021_02_15_112132_add_testimonial_content_to_sectiontitles_table',12),(43,'2021_02_16_111526_add_link_to_portfolios_table',13),(44,'2020_10_27_025201_create_packages_table',14),(45,'2021_01_24_105925_create_quotes_table',15),(46,'2021_01_07_105717_create_daynamicpages_table',16),(47,'2021_02_19_140441_add_page_visibility_to_settings_table',17),(48,'2021_01_24_110045_create_roles_table',18),(50,'2021_04_23_204005_add_moretableinsettings2_to_settings_table',19);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
INSERT INTO `newsletters` VALUES (1,'devmamun8@gmail.com','2021-02-16 09:49:35','2021-02-16 09:49:35'),(2,'djrafi@gmail.com','2021-02-16 09:50:42','2021-02-16 09:50:42');
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1,'1',1,'Early Birds','9','','6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision',0,'2021-02-16 10:13:11','2021-02-16 10:13:11'),(2,'1',1,'Team','32','','6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision',0,'2021-02-16 10:13:11','2021-02-16 10:13:11'),(3,'1',1,'Personal','69','','6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision',0,'2021-02-16 10:13:11','2021-02-16 10:13:11'),(4,'1',1,'Plutinum','99',NULL,'6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision',0,'2021-02-16 10:13:11','2021-02-16 10:20:21'),(5,'1',1,'Max','120','','6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision',0,'2021-02-16 10:13:11','2021-02-16 10:13:11'),(6,'1',1,'Pro','150',NULL,'6 HTML Pages,CMS Version,Support Available,Source Code Included,50 Revision',0,'2021-02-16 10:13:11','2021-02-16 10:20:21');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_images`
--

DROP TABLE IF EXISTS `portfolio_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `portfolio_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_images`
--

LOCK TABLES `portfolio_images` WRITE;
/*!40000 ALTER TABLE `portfolio_images` DISABLE KEYS */;
INSERT INTO `portfolio_images` VALUES (1,7,'portfolio_116134162331069324685.jpg','2021-02-15 13:10:33','2021-02-15 13:10:33'),(2,7,'portfolio_216134162331517266711.jpg','2021-02-15 13:10:33','2021-02-15 13:10:33'),(3,7,'portfolio_316134162331745428499.jpg','2021-02-15 13:10:33','2021-02-15 13:10:33');
/*!40000 ALTER TABLE `portfolio_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES (7,1,'Software Landing Page HTML','Software-Landing-Page-HTML','02/08/2021','02/09/2021','Yoko Best',NULL,'16133912601093644789.jpg',3,'<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>',1,'css,js','As a result, most of us need to know how to use computers.',0,'2021-02-12 09:09:17','2021-02-21 03:41:45'),(8,1,'Product Landing Page HTML Template','Product-Landing-Page-HTML-Template','02/01/2021','02/10/2021','Aquila Wolf','https://codecanyon.net/user/geniusdevs/portfolio','16133912531466478446.jpg',1,'<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>',1,'html','with the release of Letraset sheets containing Lorem Ipsum passages',0,'2021-02-11 08:37:38','2021-02-21 03:41:32'),(9,1,'Personal Portfolio HTML Template','Personal-Portfolio-HTML-Template','02/01/2021','02/02/2021','Audrey Molina',NULL,'1613391244817360549.jpg',3,'<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>',1,'html,css,php','As a result, most of us need to know how to use computers.',0,'2021-02-12 09:08:25','2021-02-21 03:41:09'),(10,1,'Multipurpose Business & Digital Agency HTML Template','Multipurpose-Business-&-Digital-Agency-HTML-Template','02/08/2021','02/09/2021','Yoko Best','https://codecanyon.net/user/geniusdevs/portfolio','1613391236518553535.jpg',3,'<p>As a result, most of us need to know how to use computers. Our knowledge\r\n of computers will help us to tap into challenging career opportunities \r\nand enhance the quality of our lives. It is imperative that quality \r\nstudents be encouraged and motivated to study computers and become \r\ncapable and responsible IT professionals. The education model needs to \r\nalign itself with dynamically changing technology to meet the growing \r\nneed for skilled IT manpower and deliver state-of-the-art, industry \r\nrelevant and technology ready programs.​  Today, the term Information \r\nTechnology (IT) has ballooned to encompass many aspects of computing and\r\n technology and the term is more recognizable than ever before. The \r\nInformation Technology umbrella can be quite large, covering many \r\nfields. IT professionals perform a variety of duties that range from \r\ninstalling applications, managing information, to designing complex \r\napplications, managing computer networks and designing and managing \r\ndatabases. <br></p>',1,'css,js','As a result, most of us need to know how to use computers.',0,'2021-02-12 09:09:17','2021-02-21 03:40:46'),(11,1,'One Page Parallax HTML Template','One-Page-Parallax-HTML-Template','02/08/2021','02/10/2021','Audrey Molina','https://codecanyon.net/user/geniusdevs/portfolio','16133913082004583501.jpg',6,'<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>',1,'html','model text, and a s',0,'2021-02-15 06:15:08','2021-02-21 03:40:37'),(12,1,'Broadband & Internet Service Providers Laravel CMS','Broadband-&-Internet-Service-Providers-Laravel-CMS','02/08/2021','02/10/2021','Audrey Molina','https://codecanyon.net/user/geniusdevs/portfolio','16135358341098236821.jpg',6,'<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;text-align:justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>',1,'html','model text, and a s',0,'2021-02-15 06:15:08','2021-02-21 03:40:13');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skypenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (8,'Genius Mamun','gmamun2435@gmail.com','324234123','Bangladesh','345','234234234234','Web Design & Development','16135595621654910309.pdf','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',2,'2021-02-17 04:59:22','2021-02-17 05:10:00'),(9,'Mahfuj','mahfuj@gmail.com','0438263458','Bangladesh','3453','45364564','Laravel CMS Design','16135600042114205085.pdf','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',0,'2021-02-17 05:06:44','2021-02-17 05:06:44'),(10,'rony','djrafi@gmail.com','435653','Bangladesh','333','234234','WordPress CMS Design','161356005685981243.pdf','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',0,'2021-02-17 05:07:36','2021-02-17 05:07:36'),(11,'Sihab','sihab@gmail.com','4563435','Bangladesh','432','2345234535','HTML & CSS3 Website Design',NULL,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',3,'2021-02-17 05:09:37','2021-02-17 05:09:54'),(12,'Iliana Emerson','cylusadah@mailinator.com','5966503','Aut fugiat do simili','Cupiditate ipsum con','436','Cillum voluptatem si',NULL,'Dolor similique temp',0,'2021-04-23 13:02:21','2021-04-23 13:02:21'),(13,'Emma Lynch','zebezaxys@mailinator.com','3518','Provident facere nu','Molestias nostrud ex','124','Dolorum ex sed non a','1619609498606016260.pdf','Ea delectus qui mag',0,'2021-04-28 05:31:38','2021-04-28 05:31:38');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','[\"General Setting\",\"Home\",\"About\",\"Package\",\"Quote\",\"Service\",\"Contact\",\"Portfolio\",\"Blog\",\"Subscribers\",\"Footer\",\"Clear Cache\"]','2021-02-19 12:53:15','2021-02-19 23:33:57'),(2,'Moderator','[\"Package\",\"Service\",\"Blog\",\"Dynamic Page\"]','2021-02-19 13:44:23','2021-02-19 13:44:36'),(3,'Super Admin',NULL,'2021-02-19 13:47:18','2021-02-19 13:47:18');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectiontitles`
--

DROP TABLE IF EXISTS `sectiontitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectiontitles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_right` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_left` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_experince_yers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_intro_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `get_quote_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimonial_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectiontitles`
--

LOCK TABLES `sectiontitles` WRITE;
/*!40000 ALTER TABLE `sectiontitles` DISABLE KEYS */;
INSERT INTO `sectiontitles` VALUES (1,'1','WHO WE ARE','We Work Hard Play Hard Explore Creative Mmind','Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit, sed quia quuntur magni dolores eos ratione voluptatem sequi nesciunt eque porroe.','How we growth our business.','INTRO VIDEO','The introduction of cloud and mobile technologies into enterprise software.','1612877990706065974.jpg','https://www.youtube.com/watch?v=TdSA7gkVYU0','1612877965616485669.png','1612877965496788649.png','16128779901457503508.jpg','hether you are building an enterprise web portal or a state-of-the-art website, you always need the right modern tools. Well-built and maintained PHP frameworks provide those tools in abundance, allowing maintained PHP frameworks provide those tools in abundance, allowing developers to save time, re-use code, and streamline the back end. As software development tools continuously.','We Offer Better Solutions','OUR LATEST SERVICES','WHO WE ARE','Why Choose Us','16128799941528559809.jpg','16128799942058255621.jpg','MEMBERS','OUR TEAM','CONTACT US','Are you looking for digital agency for your new online business?','Don\'t Hesitate To Contact With Us, Say Hello......','16129356111909515361.jpg','16129356111047618438.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d58653.14080587047!2d77.476432!3d23.249589!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1fcbee5d8737498e!2sBlue%20Ocean%20Tech%20Solutions%20Pvt.%20Ltd.!5e0!3m2!1sen!2sus!4v1667478020026!5m2!1sen!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','FAQ','Why Choose Our Solutions','1612937982770064829.jpg','1612937982435794173.jpg','1612938123482410717.jpg','Read Our Latest News & Blog','LATEST NEWS','Promote any poduct, service or online course.','Get Every IT Services Here','Make your products with good & professionals','16674568581751219875.png','1613561714482991106.jpg','fal fa-gem','fal fa-bullseye','IT Product','IT Services','BLUE OCEAN IS A RAPIDLY EXPANDING IT SYSTEMS AND TECH SOLUTIONS COMPANY','ABOUT US','<p>Blue Ocean Tech Solutions Pvt. Ltd. was incorporated with “Blue Ocean Strategy” as the core ideology which improves the conventional methods and provides a systematic approach to achieve success. With the guiding “Blue Ocean Strategy”, we help our clients grow rapidly through our products/services to achieve lasting success.</p><p style=\"line-height: 50px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 0px;\"><span style=\"font-family: Arial Black\">Certified Company</span></p><p>Our clients can trust us to provide creative and innovative solutions for their needs which can help them get more business.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 50px; padding-left: 0px;\"><span style=\"font-family: &quot;Arial Black&quot;;\">Our Experience</span></p><p>Our team of highly qualified, experienced, dynamic, enthusiastic, and dedicated professionals constantly strives to give our clients the best product and/or service to help them grow their businesses swiftly.<br></p><p></p>',NULL,'https://www.youtube.com/watch?v=TdSA7gkVYU0','1667468366331588437.jpg',NULL,NULL,'Our History','Does any industry face a more complex audience journey and marketing sales process than B2B technology.','Plans','Our Pricing Plans','Reads Our Recent Case Studies','LATEST CASE STUDIES',NULL,'16131902461486580724.jpg','Preparing For Your Business Success','Meet With Us','https://codecanyon.net/user/geniusdevs',NULL,'2022-11-08 03:17:20','What Our Client Says','TESTIMONIAL'),(4,'4','WHO WE ARE','We Work Hard Play Hard Explore Creative Mmind','Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit, sed quia quuntur magni dolores eos ratione voluptatem sequi nesciunt eque porroe.','How we growth our business.','INTRO VIDEO','The introduction of cloud and mobile technologies into enterprise software.','6365ffcd6c118.jpg','https://www.youtube.com/watch?v=TdSA7gkVYU0','6365ffcd75aac.png','6365ffcd7a33c.png','6365ffcd8321c.jpg','hether you are building an enterprise web portal or a state-of-the-art website, you always need the right modern tools. Well-built and maintained PHP frameworks provide those tools in abundance, allowing maintained PHP frameworks provide those tools in abundance, allowing developers to save time, re-use code, and streamline the back end. As software development tools continuously.','We Offer Better Soluation','OUR LATEST SERVICES','WHO WE ARE','Why Choose Us','6365ffcd84896.jpg','6365ffcd90b4b.jpg','MEMBERS','OUR TEAM','CONTACT US','Are you looking for digital agency for your new online business?','Don\'t Hesitate To Contact With Us, Say Hello......','6365ffcda07c5.jpg','6365ffcda1eaf.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d58653.14080587047!2d77.476432!3d23.249589!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1fcbee5d8737498e!2sBlue%20Ocean%20Tech%20Solutions%20Pvt.%20Ltd.!5e0!3m2!1sen!2sus!4v1667478020026!5m2!1sen!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','FAQ','Why Choose Our Solutions','6365ffcda8e0a.jpg','6365ffcdaf02c.jpg','6365ffcdb0452.jpg','Read Our Latest News & Blog','LATEST NEWS','Promote any poduct, service or online course.','Get every it Services Here','Make your products with good & professionals','6365ffcdb1a41.png','6365ffcdb30b7.jpg','fal fa-gem','fal fa-bullseye','IT Product','IT Services','BLUE OCEAN IS A RAPIDLY EXPANDING IT SYSTEMS AND TECH SOLUTIONS COMPANY','ABOUT US','<p>Blue Ocean Tech Solutions Pvt. Ltd. was incorporated with “Blue Ocean Strategy” as the core ideology which improves the conventional methods and provides a systematic approach to achieve success. With the guiding “Blue Ocean Strategy”, we help our clients grow rapidly through our products/services to achieve lasting success.</p><p style=\"line-height: 50px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 0px;\"><span style=\"font-family: Arial Black\">Certified Company</span></p><p>Our clients can trust us to provide creative and innovative solutions for their needs which can help them get more business.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 50px; padding-left: 0px;\"><span style=\"font-family: &quot;Arial Black&quot;;\">Our Experience</span></p><p>Our team of highly qualified, experienced, dynamic, enthusiastic, and dedicated professionals constantly strives to give our clients the best product and/or service to help them grow their businesses swiftly.<br></p><p></p>',NULL,'https://www.youtube.com/watch?v=TdSA7gkVYU0','6365ffcdba540.jpg',NULL,NULL,'Our History','Does any industry face a more complex audience journey and marketing sales process than B2B technology.','Plans','Our Pricing Plans','Reads Our Recent Case Studies','LATEST CASE STUDIES','6365ffcdbcb48.jpg','6365ffcdbf2dd.jpg','Preparing For Your Business Success','Meet With Us','https://codecanyon.net/user/geniusdevs',NULL,'2022-11-03 06:50:55','What Our Client Says','TESTIMONIAL');
/*!40000 ALTER TABLE `sectiontitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'1',1,'BRAND IDENDITY','BRAND-IDENDITY','fab fa-bootstrap','1613397069283872525.jpg','<p style=\"text-align: justify; \">We help you create an appropriate Brand Identity for your business that helps your customer to develop an everlasting relationship with you<br></p>',0,'2021-02-11 07:10:50','2022-11-03 04:48:18'),(2,'1',1,'WEB DEVELOPMENT','WEB-DEVELOPMENT','far fa-laptop-code','16133970622043779736.jpg','<p style=\"text-align: justify; \">We have an expert team which is committed for creating brilliant responsive, Dynamic or Static Websites whichever is best suitable as per the needs of our client<br></p>',0,'2021-02-11 07:15:31','2022-11-03 04:51:05'),(3,'1',1,'APP DEVELOPMENT','APP-DEVELOPMENT','fas fa-mobile-android-alt','16133970542027137282.jpg','<p style=\"text-align: justify; \">We develop comprehensive mobile solutions which are tailored as per the needs of our clients and which can cater to the unique requirements of each brand and business.<br></p>',0,'2021-02-11 07:16:06','2022-11-03 04:53:35'),(5,'1',1,'VIDEO PRODUCTION','VIDEO-PRODUCTION','far fa-video','16133970471491364505.jpg','<p style=\"text-align: justify; \">We collaborate with highly acclaimed video production team to help our clients for their videography based requirements.<br></p>',0,'2021-02-11 07:22:50','2022-11-03 04:54:55'),(6,'1',1,'DIGITAL ADVERTISING','DIGITAL-ADVERTISING','far fa-ad','16133970351881484414.jpg','<p>Our digital advertising team articulates creative and innovative marketing strategies that help our clients to reach out to their intended customers with the exact communication at exact time through a proper channel.<br></p>',0,'2021-02-11 07:23:18','2022-11-03 04:56:25'),(7,'1',1,'SEO & SMM SERVICES','SEO-&-SMM-SERVICES','far fa-file-chart-line','16133970281893173429.jpg','<p>Our Search Engine Optimization strategies enhances the visibility of your website of various online search platforms there by giving your business a much-desired boost and trust of your customers.<br></p>',0,'2021-02-11 07:24:00','2022-11-03 05:06:54');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_hours` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_bg_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `disqus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_this_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_pexel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `announcement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT '0.00',
  `maintainance_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tawk_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cookie_alert_text` blob,
  `google_recaptcha_site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_messenger` tinyint NOT NULL DEFAULT '1',
  `is_disqus` tinyint NOT NULL DEFAULT '1',
  `is_google_analytics` tinyint NOT NULL DEFAULT '1',
  `is_add_this_status` tinyint NOT NULL DEFAULT '1',
  `is_facebook_pexel` tinyint NOT NULL DEFAULT '1',
  `is_announcement` tinyint NOT NULL DEFAULT '1',
  `is_maintainance_mode` tinyint NOT NULL DEFAULT '1',
  `is_blog_share_links` tinyint NOT NULL DEFAULT '1',
  `is_tawk_to` tinyint NOT NULL DEFAULT '1',
  `is_recaptcha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooki_alert` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_slider_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_who_we_are_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_intro_video_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_service_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_why_choose_us_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_portfolio_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_testimonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_team_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_contact_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_faq_counter_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_meet_us_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_blog_section` tinyint NOT NULL DEFAULT '1',
  `is_t1_clint_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_hero_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_about_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_service_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_intro_video_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_team_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_counter_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_testimonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_contact_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_faq_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_quote_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_news_section` tinyint NOT NULL DEFAULT '1',
  `is_t2_client_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_hero_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_service_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_portfolio_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_testimonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_faq_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_team_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_meet_us_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_news_section` tinyint NOT NULL DEFAULT '1',
  `is_t3_client_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_hero_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_client_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_about_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_feature_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_who_we_are_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_intro_video_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_portfolio_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_counter_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_testmonial_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_faq_section` tinyint NOT NULL DEFAULT '1',
  `is_t4_contact_section` tinyint NOT NULL DEFAULT '1',
  `about_page` tinyint NOT NULL DEFAULT '1',
  `service_page` tinyint NOT NULL DEFAULT '1',
  `poerfolio_page` tinyint NOT NULL DEFAULT '1',
  `package_page` tinyint NOT NULL DEFAULT '1',
  `team_page` tinyint NOT NULL DEFAULT '1',
  `faq_page` tinyint NOT NULL DEFAULT '1',
  `blog_page` tinyint NOT NULL DEFAULT '1',
  `contact_page` tinyint NOT NULL DEFAULT '1',
  `quote_page` tinyint NOT NULL DEFAULT '1',
  `about_about` tinyint NOT NULL DEFAULT '1',
  `about_w_w_a` tinyint NOT NULL DEFAULT '1',
  `about_choose_us` tinyint NOT NULL DEFAULT '1',
  `about_history` tinyint NOT NULL DEFAULT '1',
  `is_video_hero` tinyint NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint NOT NULL DEFAULT '1',
  `is_call_button` tinyint NOT NULL DEFAULT '1',
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'1','theme2','Blueocean Tech Solutions Pvt. Ltd.','006DBB','header_logo_16674750551690423737.png','footer_logo16674751351121801267.png','fav_icon_16674738711684736204.png','breadcrumb_image_.jpg','0755 - 492 8128,+91 - 9922951184','info@blueoceantech.in','info@blueoceantech.in','Shop no 63-64, Sahkari Parisar, Near Piplani Petrol Pump, Kalpana Nagar, Bhopal, Madhya Pradesh 462021','Mon - Sat / 10:00AM - 6:30PM','Our team of highly qualified, experienced, dynamic, enthusiastic and dedicated professionals constantly strives to give our clients the best product and/or service to help them grow their business swiftly.','footer_bg_image_1613361435502004358.jpg','business,agency,it,company,nextit,corporate,service,degital service,creative service','Nextit - Multipurpose Website  and Business  Management System CMS','<p>Copyright By Blueocean Tech Solutions Pvt. Ltd. - 2022</p>',NULL,'nextit-1',NULL,NULL,'6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606','1667627111365542633.jpg',2.00,'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.','<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->',_binary '<p><span class=\"cookie-consent__message\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Poppins, sans-serif;\">Your experience on this site will be improved by allowing cookies.</span><br></p>','6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk','6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606',1,1,0,1,1,1,0,0,1,'1',0,NULL,'2022-11-05 00:15:11',1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,'.','1619241714761747856.jpg','https://www.youtube.com/watch?v=BAVfUvByStY&t=2s'),(4,'4','theme2','Blueocean Tech Solutions Pvt. Ltd.','006DBB','6365ffcd3ab28.png','6365ffcd4c75a.png','6365ffcd54ff2.png','6365ffcd56538.jpg','0755 - 492 8128,+91 - 9922951184','info@blueoceantech.in','info@blueoceantech.in','Shop no 63-64, Sahkari Parisar, Near Piplani Petrol Pump, Kalpana Nagar, Bhopal, Madhya Pradesh 462021','Mon - Sat / 10:00AM - 6:30PM','Our team of highly qualified, experienced, dynamic, enthusiastic and dedicated professionals constantly strives to give our clients the best product and/or service to help them grow their business swiftly.','6365ffcd57365.jpg','business,agency,it,company,nextit,corporate,service,degital service,creative service','Nextit - Multipurpose Website  and Business  Management System CMS','<p>Copyright By Blueocean Tech Solutions Pvt. Ltd. - 2022</p>',NULL,'nextit-1',NULL,NULL,'6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606','1667627111365542633.jpg',2.00,'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.','<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->',_binary '<p><span class=\"cookie-consent__message\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Poppins, sans-serif;\">Your experience on this site will be improved by allowing cookies.</span><br></p>','6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk','6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606',1,1,0,1,1,1,0,0,1,'1',0,NULL,'2022-11-05 00:15:11',1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,'.','1619241714761747856.jpg','https://www.youtube.com/watch?v=BAVfUvByStY&t=2s');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'1','1','16127970561434260582.jpg','IT Business Consulting','Best IT Soluations Provider Agency','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremda tium totam rem aperiam eaque ipsa quae ab illo inventore veritatis','Our Services','#',0,'2021-02-08 08:27:37','2021-02-21 04:43:30'),(3,'1','1','1612795438968642221.jpg','IT Business Consulting','Best IT Soluations Provider Agency','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremda tium totam rem aperiam eaque ipsa quae ab illo inventore veritatis','Our Services','#',1,'2021-02-08 08:27:37','2021-02-21 04:42:52'),(4,'1','1','1613904115990305225.jpg','IT Business Consulting','Best IT Soluations Provider Agency','Sed ut perspiciatis unde omnis iste natus error si...\r\n','Our Services','#',0,'2021-02-08 08:27:37','2021-02-21 04:41:55');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (2,'fab fa-linkedin-in','https://linkedin.com/company/blue-ocean-tech-solutions','_blank',0,'2021-02-14 03:18:04','2022-11-03 06:44:06'),(4,'fab fa-facebook-f','https://www.facebook.com/BlueOceanTechSolutions/','_blank',0,'2021-02-14 03:18:24','2022-11-03 06:21:19');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `status` tinyint DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dagenation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `icon1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (4,1,1,'1612933803370198115.jpg','Sankalp Kishnani','CEO, BOTS','<p><br></p>',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-09 22:50:20','2022-11-03 05:18:18'),(5,1,1,'16129337911260741882.jpg','Sunil Choudhary','CTO, BOTS','<p><br></p>',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-09 22:50:20','2022-11-03 05:18:50'),(6,1,1,'16129337752084136888.jpg','Rafi Khan','BDM, BOTS','<p><br></p>',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-09 22:50:20','2022-11-03 05:19:13'),(7,1,1,'16129337621309526882.jpg','Vaibhav Gupta','Web Developer','<p><br></p>',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-09 22:50:20','2022-11-03 05:18:27'),(34,1,1,'16674728601343301206.jpg','Vishal Singh','Designer','<p>.</p>',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-03 05:24:20','2022-11-03 05:24:33');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,1,NULL,'mamun','CEO of Apple','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','16133882602016629985.png','5',0,'2021-02-15 05:24:20','2021-02-15 05:24:20'),(2,1,NULL,'Genius Mamun','CEO of Apple','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','16133882721147818251.png','5',0,'2021-02-15 05:24:32','2021-02-15 05:24:32'),(3,1,NULL,'Lisa','CEO of Apple','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','1613388285721028944.png','5',1,'2021-02-15 05:24:45','2021-02-15 05:29:28');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verify_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `why_selects`
--

DROP TABLE IF EXISTS `why_selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `why_selects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `why_selects`
--

LOCK TABLES `why_selects` WRITE;
/*!40000 ALTER TABLE `why_selects` DISABLE KEYS */;
INSERT INTO `why_selects` VALUES (2,'1',1,'Beneficial Strategies','fal fa-server','Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.',0,'2021-02-09 08:27:19','2021-02-17 06:14:34'),(3,'1',1,'Automated Software','fal fa-tools','Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.',0,'2021-02-09 08:27:45','2021-02-17 06:14:29'),(4,'1',1,'Modify Whole System','fal fa-laptop-code','Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudan-tium totam.',0,'2021-02-09 08:51:00','2021-02-17 06:14:25');
/*!40000 ALTER TABLE `why_selects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-24 15:26:49
