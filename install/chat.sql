-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: chat
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.22.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lc_access_logs`
--

DROP TABLE IF EXISTS `lc_access_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_access_logs` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `ip_address` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` int unsigned NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_access_logs`
--

LOCK TABLES `lc_access_logs` WRITE;
/*!40000 ALTER TABLE `lc_access_logs` DISABLE KEYS */;
INSERT INTO `lc_access_logs` VALUES (1,1,'185.15.38.184',1792523475);
/*!40000 ALTER TABLE `lc_access_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_blocked_visitors`
--

DROP TABLE IF EXISTS `lc_blocked_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_blocked_visitors` (
  `blocked_visitor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` int unsigned NOT NULL,
  PRIMARY KEY (`blocked_visitor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_blocked_visitors`
--

LOCK TABLES `lc_blocked_visitors` WRITE;
/*!40000 ALTER TABLE `lc_blocked_visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_blocked_visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_canned_messages`
--

DROP TABLE IF EXISTS `lc_canned_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_canned_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `canned_message` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_canned_messages`
--

LOCK TABLES `lc_canned_messages` WRITE;
/*!40000 ALTER TABLE `lc_canned_messages` DISABLE KEYS */;
INSERT INTO `lc_canned_messages` VALUES (1,'Hello!'),(2,'Hello! How may I help you?');
/*!40000 ALTER TABLE `lc_canned_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_chats`
--

DROP TABLE IF EXISTS `lc_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_chats` (
  `chat_id` int unsigned NOT NULL AUTO_INCREMENT,
  `chat_status` tinyint(1) NOT NULL DEFAULT '0',
  `chat_hash` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_start` int unsigned NOT NULL,
  `time_end` int unsigned NOT NULL,
  `last_activity` int unsigned NOT NULL,
  `new_activity` tinyint(1) NOT NULL DEFAULT '0',
  `user_typing` tinyint(1) NOT NULL DEFAULT '0',
  `operator_typing` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `referer` text COLLATE utf8mb3_unicode_ci,
  `user_agent` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_id` int unsigned NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_chats`
--

LOCK TABLES `lc_chats` WRITE;
/*!40000 ALTER TABLE `lc_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_department_operators`
--

DROP TABLE IF EXISTS `lc_department_operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_department_operators` (
  `department_id` int unsigned NOT NULL,
  `operator_id` int unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_department_operators`
--

LOCK TABLES `lc_department_operators` WRITE;
/*!40000 ALTER TABLE `lc_department_operators` DISABLE KEYS */;
INSERT INTO `lc_department_operators` VALUES (1,1);
/*!40000 ALTER TABLE `lc_department_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_departments`
--

DROP TABLE IF EXISTS `lc_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_departments` (
  `department_id` int unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_departments`
--

LOCK TABLES `lc_departments` WRITE;
/*!40000 ALTER TABLE `lc_departments` DISABLE KEYS */;
INSERT INTO `lc_departments` VALUES (1,'Support','email@example.com');
/*!40000 ALTER TABLE `lc_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_messages`
--

DROP TABLE IF EXISTS `lc_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `chat_id` int unsigned NOT NULL,
  `message` text COLLATE utf8mb3_unicode_ci,
  `operator_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `operator_email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` int unsigned NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_messages`
--

LOCK TABLES `lc_messages` WRITE;
/*!40000 ALTER TABLE `lc_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_online_visitors`
--

DROP TABLE IF EXISTS `lc_online_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_online_visitors` (
  `visitor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `referer` text COLLATE utf8mb3_unicode_ci,
  `user_agent` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `invitation_message` text COLLATE utf8mb3_unicode_ci,
  `time` int unsigned NOT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_online_visitors`
--

LOCK TABLES `lc_online_visitors` WRITE;
/*!40000 ALTER TABLE `lc_online_visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_online_visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_operator_sessions`
--

DROP TABLE IF EXISTS `lc_operator_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_operator_sessions` (
  `operator_id` int unsigned NOT NULL,
  `chat_id` int unsigned NOT NULL,
  `chat_active` tinyint unsigned NOT NULL,
  `last_chat_id` int unsigned NOT NULL,
  `last_message_id` int unsigned NOT NULL,
  `last_activity` int unsigned NOT NULL,
  `operator_key` char(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`operator_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_operator_sessions`
--

LOCK TABLES `lc_operator_sessions` WRITE;
/*!40000 ALTER TABLE `lc_operator_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_operator_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_operators`
--

DROP TABLE IF EXISTS `lc_operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_operators` (
  `operator_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_activity` int unsigned NOT NULL,
  `hide_online` tinyint(1) NOT NULL,
  PRIMARY KEY (`operator_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_operators`
--

LOCK TABLES `lc_operators` WRITE;
/*!40000 ALTER TABLE `lc_operators` DISABLE KEYS */;
INSERT INTO `lc_operators` VALUES (1,1,'Виктор','Маков',0,0);
/*!40000 ALTER TABLE `lc_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_options`
--

DROP TABLE IF EXISTS `lc_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_options` (
  `option_id` int unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_options`
--

LOCK TABLES `lc_options` WRITE;
/*!40000 ALTER TABLE `lc_options` DISABLE KEYS */;
INSERT INTO `lc_options` VALUES (1,'site_title','OpenCart чат On-Line Help'),(2,'absolute_url','http://demo.opencart-help.net/chat/'),(3,'absolute_path','/var/www/vitekot/data/www/demo.opencart-help.net/chat/'),(4,'admin_email','admin@opencart-help.net'),(5,'operator_timeout','1800'),(6,'ip_tracker_url',''),(7,'date_format','F d, Y'),(8,'time_format','H:i:s'),(9,'timezone','UTC'),(10,'max_connections','2'),(11,'background_color_1','#5BB75B'),(12,'background_color_2','#FFFFFF'),(22,'background_color_3','#5C84C9'),(13,'color_1','#FFFFFF'),(14,'color_2','#000000'),(23,'color_3','#FCFCFC'),(15,'records_per_page','10'),(16,'access_logs','1'),(17,'user_timeout','864000'),(18,'chat_timeout','600'),(19,'charset','UTF-8'),(20,'max_visitors','2'),(21,'chat_position','right');
/*!40000 ALTER TABLE `lc_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_user_groups`
--

DROP TABLE IF EXISTS `lc_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_user_groups` (
  `group_id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_permissions` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_user_groups`
--

LOCK TABLES `lc_user_groups` WRITE;
/*!40000 ALTER TABLE `lc_user_groups` DISABLE KEYS */;
INSERT INTO `lc_user_groups` VALUES (1,'Administrator','a:10:{i:0;s:5:\"index\";i:1;s:12:\"chat_history\";i:2;s:15:\"canned_messages\";i:3;s:11:\"departments\";i:4;s:9:\"operators\";i:5;s:6:\"groups\";i:6;s:16:\"blocked_visitors\";i:7;s:11:\"access_logs\";i:8;s:8:\"settings\";i:9;s:7:\"profile\";}'),(2,'Operator','a:4:{i:0;s:5:\"index\";i:1;s:12:\"chat_history\";i:2;s:15:\"canned_messages\";i:3;s:7:\"profile\";}');
/*!40000 ALTER TABLE `lc_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_user_profiles`
--

DROP TABLE IF EXISTS `lc_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_user_profiles` (
  `profile_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_user_profiles`
--

LOCK TABLES `lc_user_profiles` WRITE;
/*!40000 ALTER TABLE `lc_user_profiles` DISABLE KEYS */;
INSERT INTO `lc_user_profiles` VALUES (1,1,'Виктор','Маков');
/*!40000 ALTER TABLE `lc_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_users`
--

DROP TABLE IF EXISTS `lc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_users` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int unsigned NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_password` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_status` tinyint unsigned NOT NULL DEFAULT '0',
  `user_approved` tinyint unsigned NOT NULL DEFAULT '0',
  `user_created` int unsigned NOT NULL,
  `last_login` int unsigned NOT NULL,
  `last_ip` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_code` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_users`
--

LOCK TABLES `lc_users` WRITE;
/*!40000 ALTER TABLE `lc_users` DISABLE KEYS */;
INSERT INTO `lc_users` VALUES (1,1,'admin@opencart-help.net','$2y$12$w4hOioNcPvWxok1fzOfG9eTo4odIcMZEYy.MsxPMCB4v4rYQTMZEW',1,1,1792523450,1792523475,'185.15.38.184','3373194c4fda21e3a95b046c8f1fc4cb799831c0',NULL);
/*!40000 ALTER TABLE `lc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc_visitor_sessions`
--

DROP TABLE IF EXISTS `lc_visitor_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lc_visitor_sessions` (
  `chat_hash` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_message_id` int unsigned NOT NULL,
  `last_activity` int unsigned NOT NULL,
  `visitor_key` char(128) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc_visitor_sessions`
--

LOCK TABLES `lc_visitor_sessions` WRITE;
/*!40000 ALTER TABLE `lc_visitor_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc_visitor_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-20 19:39:10
