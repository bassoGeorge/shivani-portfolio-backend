-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: shivani_portfolio
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `directus_activity`
--

DROP TABLE IF EXISTS `directus_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `row_id` int(11) unsigned DEFAULT '0',
  `user` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `delta` text,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_table` varchar(100) DEFAULT NULL,
  `parent_changed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the top-level record in the change set alter (scalar values/many-to-one relationships)? Or only the data within its related foreign collection records? (*toMany)',
  `datetime` datetime DEFAULT NULL,
  `logged_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_activity`
--

LOCK TABLES `directus_activity` WRITE;
/*!40000 ALTER TABLE `directus_activity` DISABLE KEYS */;
INSERT INTO `directus_activity` VALUES (1,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-24 06:38:08','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(2,'ENTRY','UPDATE',NULL,'directus_columns',8,1,'{\"id\":\"8\",\"table_name\":\"test_projects\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"3\",\"comment\":\"Primary name of the project\",\"options\":null}','{\"required\":true,\"id\":\"8\"}',NULL,NULL,1,'2018-03-24 06:44:29','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(3,'FILES','ADD','1','directus_files',2,1,'{\"id\":\"2\",\"status\":\"1\",\"name\":\"00000000002.png\",\"title\":\"trial1\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1922\",\"height\":\"1080\",\"size\":\"75592\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-24 07:03:39\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-03-24 07:03:39','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(4,'ENTRY','ADD','1','test_projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Triphobo\",\"sub_title\":\"Trip Plans\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000002.png\"}','[]',NULL,NULL,1,'2018-03-24 07:08:05','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(5,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-24 10:43:56','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(6,'ENTRY','ADD',NULL,'directus_privileges',14,1,'{\"id\":\"14\",\"table_name\":\"test_projects\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-03-24 10:44:58','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(7,'ENTRY','UPDATE',NULL,'directus_privileges',14,1,'{\"id\":\"14\",\"table_name\":\"test_projects\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"14\"}',NULL,NULL,1,'2018-03-24 10:45:02','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(8,'ENTRY','UPDATE',NULL,'directus_privileges',14,1,'{\"id\":\"14\",\"table_name\":\"test_projects\",\"allow_view\":\"0\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":0,\"id\":\"14\"}',NULL,NULL,1,'2018-03-24 10:45:03','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(9,'ENTRY','UPDATE',NULL,'directus_privileges',14,1,'{\"id\":\"14\",\"table_name\":\"test_projects\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":1,\"id\":\"14\"}',NULL,NULL,1,'2018-03-24 10:45:04','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(10,'ENTRY','UPDATE',NULL,'directus_privileges',14,1,'{\"id\":\"14\",\"table_name\":\"test_projects\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"14\"}',NULL,NULL,1,'2018-03-24 10:45:04','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(11,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-25 13:24:26','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(12,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-25 14:49:08','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(13,'ENTRY','ADD','1','project_types',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"name\":\"Graphics\"}','[]',NULL,NULL,1,'2018-03-25 14:50:06','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(14,'ENTRY','ADD','2','project_types',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"name\":\"Web\"}','[]',NULL,NULL,1,'2018-03-25 14:50:13','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(15,'ENTRY','ADD','3','project_types',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"name\":\"Mobile\"}','[]',NULL,NULL,1,'2018-03-25 14:50:20','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(16,'ENTRY','ADD',NULL,'directus_privileges',16,1,'{\"id\":\"16\",\"table_name\":\"project_types\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-03-25 14:56:14','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(17,'ENTRY','UPDATE',NULL,'directus_privileges',16,1,'{\"id\":\"16\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"16\"}',NULL,NULL,1,'2018-03-25 14:56:15','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(18,'ENTRY','UPDATE','2','project_types',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"name\":\"Web and\"}','{\"name\":\"Web and\",\"id\":\"2\"}',NULL,NULL,1,'2018-03-25 14:58:35','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(19,'ENTRY','UPDATE','2','project_types',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"name\":\"Web\"}','{\"name\":\"Web\",\"id\":\"2\"}',NULL,NULL,1,'2018-03-25 14:58:44','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(20,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-03-27 16:10:50','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(21,'ENTRY','UPDATE',NULL,'directus_columns',18,1,'{\"id\":\"18\",\"table_name\":\"projects\",\"column_name\":\"project_type_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"project_types\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"project_type_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"project_types\",\"junction_table\":null,\"junction_key_right\":\"project_type_id\",\"junction_key_left\":null,\"id\":\"18\"}',NULL,NULL,1,'2018-03-27 16:13:20','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(22,'ENTRY','UPDATE',NULL,'directus_columns',18,1,'{\"id\":\"18\",\"table_name\":\"projects\",\"column_name\":\"project_type_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"project_types\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"project_type_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"placeholder\\\":\\\"Please select the project type\\\"}\"}','{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"placeholder\\\":\\\"Please select the project type\\\"}\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"related_table\":\"project_types\",\"junction_table\":null,\"junction_key_right\":\"project_type_id\",\"junction_key_left\":null,\"id\":\"18\"}',NULL,NULL,1,'2018-03-27 16:13:50','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(23,'ENTRY','UPDATE',NULL,'directus_columns',19,1,'{\"id\":\"19\",\"table_name\":\"projects\",\"column_name\":\"title\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"4\",\"comment\":\"\",\"options\":null}','{\"required\":true,\"id\":\"19\"}',NULL,NULL,1,'2018-03-27 16:15:28','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(24,'ENTRY','UPDATE',NULL,'directus_columns',21,1,'{\"id\":\"21\",\"table_name\":\"projects\",\"column_name\":\"thumbnail\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"6\",\"comment\":\"\",\"options\":null}','{\"required\":true,\"id\":\"21\"}',NULL,NULL,1,'2018-03-27 16:15:31','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(25,'ENTRY','UPDATE',NULL,'directus_columns',18,1,'{\"id\":\"18\",\"table_name\":\"projects\",\"column_name\":\"project_type_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"project_types\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"project_type_id\",\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"name\\\",\\\"visible_column_template\\\":\\\"{{name}}\\\",\\\"placeholder\\\":\\\"Please select the project type\\\"}\"}','{\"required\":true,\"id\":\"18\"}',NULL,NULL,1,'2018-03-27 16:15:34','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(26,'FILES','ADD','1','directus_files',3,1,'{\"id\":\"3\",\"status\":\"1\",\"name\":\"00000000003.png\",\"title\":\"sqaurish\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"450\",\"height\":\"420\",\"size\":\"1309\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-27 16:18:52\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-03-27 16:18:52','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(27,'FILES','ADD','1','directus_files',4,1,'{\"id\":\"4\",\"status\":\"1\",\"name\":\"00000000004.png\",\"title\":\"wide\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"450\",\"height\":\"300\",\"size\":\"1273\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-27 16:19:34\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-03-27 16:19:34','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(28,'FILES','ADD','1','directus_files',5,1,'{\"id\":\"5\",\"status\":\"1\",\"name\":\"00000000005.png\",\"title\":\"long\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"450\",\"height\":\"600\",\"size\":\"1362\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-27 16:19:53\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-03-27 16:19:53','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(29,'ENTRY','ADD','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"TripHobo\",\"subtitle\":\"Trip Plans\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000005.png\"}','[]',NULL,NULL,1,'2018-03-27 16:20:56','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(30,'ENTRY','ADD','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"Exclusive\",\"subtitle\":\"Social Gathering\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000003.png\"}','[]',NULL,NULL,1,'2018-03-27 16:21:51','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(31,'ENTRY','ADD','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"Nap26\",\"subtitle\":\"Rest and Rejuvination\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000005.png\"}','[]',NULL,NULL,1,'2018-03-27 16:22:36','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(32,'ENTRY','ADD',NULL,'directus_privileges',18,1,'{\"id\":\"18\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-03-27 16:45:37','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(33,'ENTRY','UPDATE',NULL,'directus_privileges',18,1,'{\"id\":\"18\",\"table_name\":\"projects\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"18\"}',NULL,NULL,1,'2018-03-27 16:45:38','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(34,'ENTRY','ADD','4','projects',4,1,'{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"1\",\"title\":\"Random\",\"subtitle\":\"Just for fun\",\"thumbnail\":\"blasted\"}','[]',NULL,NULL,1,'2018-03-27 17:21:41','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(35,'ENTRY','UPDATE','4','projects',4,1,'{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"1\",\"title\":\"Random\",\"subtitle\":\"Just for fun\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000005.png\"}','{\"thumbnail\":\"\\/storage\\/uploads\\/00000000005.png\",\"id\":\"4\"}',NULL,NULL,1,'2018-03-27 17:21:51','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(36,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-04-04 15:12:22','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(37,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"TripHobo\",\"subtitle\":\"Trip Plans\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000005.png\",\"details\":\"<h3>This is TripHobo<\\/h3>\\n<p>A small company involved in stuff we do<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000005.png\\\" alt=\\\"long\\\" width=\\\"450\\\" height=\\\"600\\\" \\/><\\/p>\\n<p>Some more stuff to go with this<\\/p>\"}','{\"details\":\"<h3>This is TripHobo<\\/h3>\\n<p>A small company involved in stuff we do<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000005.png\\\" alt=\\\"long\\\" width=\\\"450\\\" height=\\\"600\\\" \\/><\\/p>\\n<p>Some more stuff to go with this<\\/p>\",\"id\":\"1\"}',NULL,NULL,1,'2018-04-04 15:29:33','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(38,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-04-08 13:12:57','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(39,'ENTRY','ADD','1','directus_files',6,1,'{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.png\",\"title\":\"wall soiaf\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1920\",\"height\":\"1080\",\"size\":\"6232113\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-04-08 13:15:07\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-08 13:15:07','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(40,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"TripHobo\",\"subtitle\":\"Trip Plans\",\"thumbnail\":\"\\/storage\\/uploads\\/00000000005.png\",\"details\":\"<h3>This is TripHobo<\\/h3>\\n<p>A small company involved in stuff we do<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000005.png\\\" alt=\\\"long\\\" width=\\\"450\\\" height=\\\"600\\\" \\/><\\/p>\\n<p>Some more stuff to go with this<\\/p>\",\"banner_image\":\"6\"}','{\"banner_image\":6,\"id\":\"1\"}',NULL,NULL,1,'2018-04-08 13:15:07','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(41,'ENTRY','UPDATE','1','directus_files',5,1,'{\"id\":\"5\",\"status\":\"1\",\"name\":\"00000000005.png\",\"title\":\"long\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"450\",\"height\":\"600\",\"size\":\"1362\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-27 16:19:53\",\"storage_adapter\":\"local\"}','{\"id\":5,\"status\":1,\"name\":\"00000000005.png\",\"title\":\"long\",\"type\":\"image\\/png\",\"width\":450,\"height\":600,\"size\":1362,\"user\":1,\"date_uploaded\":\"2018-03-27T12:19:53-04:00\",\"storage_adapter\":\"local\"}',NULL,NULL,1,'2018-04-08 13:18:47','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(42,'ENTRY','UPDATE','1','projects',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"TripHobo\",\"subtitle\":\"Trip Plans\",\"details\":\"<h3>This is TripHobo<\\/h3>\\n<p>A small company involved in stuff we do<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000005.png\\\" alt=\\\"long\\\" width=\\\"450\\\" height=\\\"600\\\" \\/><\\/p>\\n<p>Some more stuff to go with this<\\/p>\",\"banner_image\":\"6\",\"thumbnail\":\"5\"}','{\"thumbnail\":5,\"id\":\"1\"}',NULL,NULL,1,'2018-04-08 13:18:47','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(43,'ENTRY','UPDATE','1','directus_files',4,1,'{\"id\":\"4\",\"status\":\"1\",\"name\":\"00000000004.png\",\"title\":\"wide\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"450\",\"height\":\"300\",\"size\":\"1273\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-27 16:19:34\",\"storage_adapter\":\"local\"}','{\"id\":4,\"status\":1,\"name\":\"00000000004.png\",\"title\":\"wide\",\"type\":\"image\\/png\",\"width\":450,\"height\":300,\"size\":1273,\"user\":1,\"date_uploaded\":\"2018-03-27T12:19:34-04:00\",\"storage_adapter\":\"local\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"charset\":\"binary\",\"tags\":\"\"}',NULL,NULL,1,'2018-04-08 13:18:54','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(44,'ENTRY','UPDATE','2','projects',2,1,'{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"Exclusive\",\"subtitle\":\"Social Gathering\",\"details\":null,\"banner_image\":null,\"thumbnail\":\"4\"}','{\"details\":null,\"thumbnail\":4,\"id\":\"2\"}',NULL,NULL,1,'2018-04-08 13:18:54','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(45,'ENTRY','UPDATE','1','directus_files',3,1,'{\"id\":\"3\",\"status\":\"1\",\"name\":\"00000000003.png\",\"title\":\"sqaurish\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"450\",\"height\":\"420\",\"size\":\"1309\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-03-27 16:18:52\",\"storage_adapter\":\"local\"}','{\"id\":3,\"status\":1,\"name\":\"00000000003.png\",\"title\":\"sqaurish\",\"type\":\"image\\/png\",\"width\":450,\"height\":420,\"size\":1309,\"user\":1,\"date_uploaded\":\"2018-03-27T12:18:52-04:00\",\"storage_adapter\":\"local\",\"location\":\"thumbnail_placeholder\",\"caption\":\"\",\"charset\":\"binary\",\"tags\":\"\"}',NULL,NULL,1,'2018-04-08 13:19:01','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(46,'ENTRY','UPDATE','3','projects',3,1,'{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"3\",\"title\":\"Nap26\",\"subtitle\":\"Rest and Rejuvination\",\"details\":null,\"banner_image\":null,\"thumbnail\":\"3\"}','{\"details\":null,\"thumbnail\":3,\"id\":\"3\"}',NULL,NULL,1,'2018-04-08 13:19:02','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(47,'ENTRY','ADD','1','directus_files',7,1,'{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.png\",\"title\":\"Digital Locker\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"526\",\"height\":\"776\",\"size\":\"40945\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-04-08 13:19:18\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-08 13:19:18','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(48,'ENTRY','UPDATE','4','projects',4,1,'{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"1\",\"title\":\"Random\",\"subtitle\":\"Just for fun\",\"details\":null,\"banner_image\":null,\"thumbnail\":\"7\"}','{\"details\":null,\"thumbnail\":7,\"id\":\"4\"}',NULL,NULL,1,'2018-04-08 13:19:18','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(49,'ENTRY','UPDATE',NULL,'directus_columns',23,1,'{\"id\":\"23\",\"table_name\":\"projects\",\"column_name\":\"banner_image\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"banner_image\",\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"4\",\"comment\":\"\",\"options\":null}','{\"required\":true,\"id\":\"23\"}',NULL,NULL,1,'2018-04-08 13:19:36','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(50,'ENTRY','UPDATE',NULL,'directus_columns',23,1,'{\"id\":\"23\",\"table_name\":\"projects\",\"column_name\":\"banner_image\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"banner_image\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":null}','{\"required\":false,\"id\":\"23\"}',NULL,NULL,1,'2018-04-08 13:19:39','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(51,'ENTRY','UPDATE',NULL,'directus_columns',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"column_name\":\"thumbnail\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"thumbnail\",\"hidden_input\":\"0\",\"required\":\"1\",\"sort\":\"8\",\"comment\":\"The image to show up on the work page cards\",\"options\":null}','{\"required\":true,\"id\":\"24\"}',NULL,NULL,1,'2018-04-08 13:19:43','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(52,'ENTRY','ADD',NULL,'directus_privileges',19,1,'{\"id\":\"19\",\"table_name\":\"directus_files\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-04-08 13:33:06','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(53,'ENTRY','UPDATE',NULL,'directus_privileges',19,1,'{\"id\":\"19\",\"table_name\":\"directus_files\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"19\"}',NULL,NULL,1,'2018-04-08 13:33:11','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(54,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-04-12 17:25:44','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(55,'ENTRY','ADD','1','info',1,1,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"about_me\":\"<h3>Brief<\\/h3>\\n<p>This is the about me section... Just testing things out you know<\\/p>\"}','[]',NULL,NULL,1,'2018-04-12 17:29:05','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(56,'ENTRY','ADD',NULL,'directus_privileges',21,1,'{\"id\":\"21\",\"table_name\":\"info\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-04-12 17:29:16','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(57,'ENTRY','UPDATE',NULL,'directus_privileges',21,1,'{\"id\":\"21\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"2\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"21\"}',NULL,NULL,1,'2018-04-12 17:29:17','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(58,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-04-14 14:04:07','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(59,'ENTRY','UPDATE','1','directus_users',1,1,'{\"id\":\"1\",\"status\":\"1\",\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"anishgeorgehb@gmail.com\",\"password\":\"$2y$12$W1tXy.8sgjrn\\/43c4Jj1.uyobAhlA73p5aWV6LEjM2e4DHuuR7L12\",\"salt\":\"iUU7dO1oEMr1mF8k\",\"token\":\"x99KpYg1EIeBBkzeXBGPbxekFVKUK0L0\",\"access_token\":\"96fc850661f3b017bf27fecc09ee4f6c0b3a97f7\",\"reset_token\":\"\",\"reset_expiration\":null,\"position\":\"\",\"email_messages\":\"1\",\"last_login\":\"2018-04-14 14:04:07\",\"last_access\":\"2018-04-14 14:34:42\",\"last_page\":\"{\\\"path\\\":\\\"users\\/1\\\",\\\"route\\\":\\\"user\\\"}\",\"ip\":\"192.168.0.1\",\"group\":\"1\",\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/93978ac0d7b26b1901415537dd6d0246?s=200&d=identicon&r=g\",\"avatar_file_id\":null,\"location\":null,\"phone\":null,\"address\":null,\"city\":null,\"state\":null,\"country\":null,\"zip\":null,\"language\":\"en\",\"timezone\":\"America\\/New_York\",\"invite_token\":null,\"invite_date\":null,\"invite_sender\":null,\"invite_accepted\":null}','{\"email\":\"anishgeorgehb@gmail.com\",\"password\":\"ShivAnish@2018\",\"id\":\"1\",\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/93978ac0d7b26b1901415537dd6d0246?s=200&d=identicon&r=g\"}',NULL,NULL,1,'2018-04-14 14:35:39','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(60,'ENTRY','ADD',NULL,'directus_groups',3,1,'{\"id\":\"3\",\"name\":\"Content Writer\",\"description\":null,\"restrict_to_ip_whitelist\":null,\"nav_override\":null}','[]',NULL,NULL,1,'2018-04-14 14:37:28','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(61,'ENTRY','ADD',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-04-14 14:37:43','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(62,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:46','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(63,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":1,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:48','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(64,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":0,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:48','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(65,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":1,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:49','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(66,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":1,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:50','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(67,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":2,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:51','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(68,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":1,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:52','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(69,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":2,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:52','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(70,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":0,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:53','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(71,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":1,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:54','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(72,'ENTRY','UPDATE',NULL,'directus_privileges',23,1,'{\"id\":\"23\",\"table_name\":\"info\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":2,\"id\":\"23\"}',NULL,NULL,1,'2018-04-14 14:37:54','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(73,'ENTRY','ADD',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-04-14 14:37:59','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(74,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:37:59','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(75,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"0\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":0,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:38:01','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(76,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":1,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:38:02','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(77,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":1,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:38:05','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(78,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":1,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:38:07','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(79,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":1,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:38:09','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(80,'ENTRY','ADD',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-04-14 14:38:12','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(81,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:13','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(82,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:14','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(83,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":0,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:15','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(84,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:16','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(85,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:17','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(86,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":2,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:18','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(87,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:19','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(88,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":2,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:19','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(89,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"0\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":0,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:23','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(90,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:24','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(91,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:25','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(92,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":0,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:27','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(93,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:27','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(94,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":0,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:29','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(95,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":1,\"id\":\"25\"}',NULL,NULL,1,'2018-04-14 14:38:30','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(96,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_view\":2,\"id\":\"24\"}',NULL,NULL,1,'2018-04-14 14:38:32','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(97,'ENTRY','UPDATE',NULL,'directus_groups',3,1,'{\"id\":\"3\",\"name\":\"Content Writer\",\"description\":\"Manage the content of this site\",\"restrict_to_ip_whitelist\":null,\"nav_override\":null}','{\"description\":\"Manage the content of this site\",\"id\":\"3\"}',NULL,NULL,1,'2018-04-14 14:39:26','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(98,'ENTRY','ADD','1','directus_users',2,1,'{\"id\":\"2\",\"status\":\"1\",\"first_name\":\"Shivani\",\"last_name\":\"Arvikar\",\"email\":\"shiviarvk@gmail.com\",\"password\":\"$2y$12$fAW7Qzydm9M4YimoK679FuJdBTkUD81.GjOLk\\/uzUlM0CEK0ZZ5gS\",\"salt\":\"WU6epuAUufNjXtF8\",\"token\":null,\"access_token\":\"\",\"reset_token\":\"\",\"reset_expiration\":null,\"position\":\"\",\"email_messages\":\"1\",\"last_login\":null,\"last_access\":null,\"last_page\":\"\",\"ip\":\"\",\"group\":\"3\",\"avatar\":null,\"avatar_file_id\":null,\"location\":null,\"phone\":null,\"address\":null,\"city\":null,\"state\":null,\"country\":null,\"zip\":null,\"language\":\"en\",\"timezone\":\"America\\/New_York\",\"invite_token\":null,\"invite_date\":null,\"invite_sender\":null,\"invite_accepted\":null}','[]',3,'directus_groups',1,'2018-04-14 14:39:26','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(99,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-17 12:49:25','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1 Safari/605.1.15'),(100,'ENTRY','UPDATE','1','directus_users',2,2,'{\"id\":\"2\",\"status\":\"1\",\"first_name\":\"Shivani\",\"last_name\":\"Arvikar\",\"email\":\"shiviarvk@gmail.com\",\"password\":\"$2y$12$fAW7Qzydm9M4YimoK679FuJdBTkUD81.GjOLk\\/uzUlM0CEK0ZZ5gS\",\"salt\":\"WU6epuAUufNjXtF8\",\"access_token\":\"14e8f44923ef57046f5c862772f7be0b35f5d247\",\"reset_token\":\"\",\"reset_expiration\":null,\"position\":\"\",\"email_messages\":\"1\",\"last_login\":\"2018-04-17 12:49:25\",\"last_access\":null,\"last_page\":\"\",\"ip\":\"192.168.0.1\",\"group\":\"3\",\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/50cac49b68455fa84c3cfc1ff965bed6?s=200&d=identicon&r=g\",\"avatar_file_id\":null,\"location\":null,\"phone\":null,\"address\":null,\"city\":null,\"state\":null,\"country\":null,\"zip\":null,\"language\":\"en\",\"timezone\":\"America\\/New_York\",\"invite_token\":null,\"invite_date\":null,\"invite_sender\":null,\"invite_accepted\":null}','{\"id\":2,\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/50cac49b68455fa84c3cfc1ff965bed6?s=200&d=identicon&r=g\"}',NULL,NULL,1,'2018-04-17 12:49:28','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1 Safari/605.1.15'),(101,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-21 10:08:18','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),(102,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-04-22 10:15:34','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(103,'ENTRY','UPDATE','1','directus_users',1,1,'{\"id\":\"1\",\"status\":\"1\",\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"anishgeorgehb@gmail.com\",\"password\":\"$2y$12$wrIbUygOTzklJcSbE2Qa0OcoONsyPU.ui2e\\/K2fwD19hBinWNTiM2\",\"salt\":\"Xc4LniSf4omjLgQk\",\"token\":\"x99KpYg1EIeBBkzeXBGPbxekFVKUK0L0\",\"access_token\":\"a74fc4ed57b3e4872b4fe5d0d2c0dca252489b7c\",\"reset_token\":\"C8N5ZTkn4Egg1dFBJOFkWtibSwExf5\",\"reset_expiration\":\"2018-04-23 10:06:16\",\"position\":\"\",\"email_messages\":\"1\",\"last_login\":\"2018-04-22 10:15:34\",\"last_access\":\"2018-04-22 10:15:48\",\"last_page\":\"{\\\"path\\\":\\\"users\\/1\\\",\\\"route\\\":\\\"user\\\"}\",\"ip\":\"192.168.0.1\",\"group\":\"1\",\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/93978ac0d7b26b1901415537dd6d0246?s=200&d=identicon&r=g\",\"avatar_file_id\":null,\"location\":null,\"phone\":null,\"address\":null,\"city\":null,\"state\":null,\"country\":null,\"zip\":null,\"language\":\"en\",\"timezone\":\"America\\/New_York\",\"invite_token\":null,\"invite_date\":null,\"invite_sender\":null,\"invite_accepted\":null}','{\"password\":\"ShivAnish_admin@123\",\"id\":\"1\"}',NULL,NULL,1,'2018-04-22 10:16:49','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(104,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-24 16:42:03','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(105,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-24 16:46:13','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(106,'ENTRY','UPDATE','1','info',1,2,'{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"about_me\":\"<p class=\\\"p1\\\">My background is in Computer Science, in which I hold a Bachelor of Science degree.<\\/p>\\n<p class=\\\"p1\\\">If you are looking for a &ldquo;UX unicorn&rdquo; who knows not only where to put the submit button but exactly what it should look like, look no further! I have a keen sense of what users are looking for.<\\/p>\\n<p class=\\\"p1\\\">I can create a wireframe, but I can also turn it into something elegant &ndash; or maybe give it a touch of whimsy. I am comfortable exploring the needs of differing audiences, from children to adults, and students to librarians and teachers. I know how to take a user-centered approach without losing sight of business goals.<\\/p>\\n<p class=\\\"p1\\\">My developer colleagues call me \\\"Shadyantrakari\\\" (hindi for Designer).<\\/p>\\n<p class=\\\"p1\\\">An UX designer has to be able to design and redesign portals from the ground up. I am fluent in:<\\/p>\\n<ul class=\\\"pv-skill-categories-section__top-skills pv-profile-section__section-info section-info pb4\\\">\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\"><span class=\\\"s1\\\">Sketch<\\/span><\\/li>\\n<li id=\\\"ember3143\\\" class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Adobe Illustrator CC<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Adobe Photoshop CC<\\/span>&nbsp;<\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Flinto<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">InVision Studio<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Axure<\\/span>&nbsp;<\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Zeplin<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">WordPress<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\">&nbsp;<span class=\\\"s1\\\">Understanding of HTML\\/CSS<\\/span><\\/p>\\n<\\/li>\\n<\\/ul>\\n<p class=\\\"p1\\\">I work efficiently, and am comfortable with the concept of Lean UX.<\\/p>\\n<p class=\\\"p1\\\">Apart from Designing, my interests include Dancing and Painting.&nbsp;<\\/p>\"}','{\"about_me\":\"<p class=\\\"p1\\\">My background is in Computer Science, in which I hold a Bachelor of Science degree.<\\/p>\\n<p class=\\\"p1\\\">If you are looking for a &ldquo;UX unicorn&rdquo; who knows not only where to put the submit button but exactly what it should look like, look no further! I have a keen sense of what users are looking for.<\\/p>\\n<p class=\\\"p1\\\">I can create a wireframe, but I can also turn it into something elegant &ndash; or maybe give it a touch of whimsy. I am comfortable exploring the needs of differing audiences, from children to adults, and students to librarians and teachers. I know how to take a user-centered approach without losing sight of business goals.<\\/p>\\n<p class=\\\"p1\\\">My developer colleagues call me \\\"Shadyantrakari\\\" (hindi for Designer).<\\/p>\\n<p class=\\\"p1\\\">An UX designer has to be able to design and redesign portals from the ground up. I am fluent in:<\\/p>\\n<ul class=\\\"pv-skill-categories-section__top-skills pv-profile-section__section-info section-info pb4\\\">\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\"><span class=\\\"s1\\\">Sketch<\\/span><\\/li>\\n<li id=\\\"ember3143\\\" class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Adobe Illustrator CC<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Adobe Photoshop CC<\\/span>&nbsp;<\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Flinto<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">InVision Studio<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Axure<\\/span>&nbsp;<\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">Zeplin<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\"><span class=\\\"s1\\\">WordPress<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\\\">\\n<p class=\\\"p1\\\">&nbsp;<span class=\\\"s1\\\">Understanding of HTML\\/CSS<\\/span><\\/p>\\n<\\/li>\\n<\\/ul>\\n<p class=\\\"p1\\\">I work efficiently, and am comfortable with the concept of Lean UX.<\\/p>\\n<p class=\\\"p1\\\">Apart from Designing, my interests include Dancing and Painting.&nbsp;<\\/p>\",\"id\":\"1\"}',NULL,NULL,1,'2018-04-24 16:59:45','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(107,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-04-24 17:26:58','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(108,'ENTRY','ADD',NULL,'directus_privileges',26,1,'{\"id\":\"26\",\"table_name\":\"directus_files\",\"allow_view\":\"1\",\"allow_add\":\"0\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','[]',NULL,NULL,1,'2018-04-24 17:27:29','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(109,'ENTRY','UPDATE',NULL,'directus_privileges',26,1,'{\"id\":\"26\",\"table_name\":\"directus_files\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"0\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_add\":1,\"id\":\"26\"}',NULL,NULL,1,'2018-04-24 17:27:33','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(110,'ENTRY','UPDATE',NULL,'directus_privileges',26,1,'{\"id\":\"26\",\"table_name\":\"directus_files\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"0\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":1,\"id\":\"26\"}',NULL,NULL,1,'2018-04-24 17:27:34','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(111,'ENTRY','UPDATE',NULL,'directus_privileges',26,1,'{\"id\":\"26\",\"table_name\":\"directus_files\",\"allow_view\":\"1\",\"allow_add\":\"1\",\"allow_edit\":\"1\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":1,\"id\":\"26\"}',NULL,NULL,1,'2018-04-24 17:27:35','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(112,'ENTRY','ADD','1','directus_files',9,2,'{\"id\":\"9\",\"status\":\"1\",\"name\":\"00000000009.jpg\",\"title\":\"enfold c\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1920\",\"height\":\"350\",\"size\":\"66763\",\"embed_id\":null,\"user\":\"2\",\"date_uploaded\":\"2018-04-24 17:28:22\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-24 17:28:22','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(113,'ENTRY','ADD','1','directus_files',10,2,'{\"id\":\"10\",\"status\":\"1\",\"name\":\"00000000010.jpg\",\"title\":\"enfold grid tile 640x640\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"640\",\"height\":\"640\",\"size\":\"51670\",\"embed_id\":null,\"user\":\"2\",\"date_uploaded\":\"2018-04-24 17:28:22\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-24 17:28:22','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(114,'ENTRY','ADD','5','projects',5,2,'{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"2\",\"title\":\"enfold Digital Locker\",\"subtitle\":null,\"details\":\"<p>Enfold provides digital lockers that keep your documents safe, secure and always available. Enfold&rsquo;s digital lockers automatically obtain documents worth storing from your email accounts and web portals.<\\/p>\\n<p>The locker automatically fetches documents from email accounts and web portals, and allows documents to be emailed to the locker from trusted email accounts.<\\/p>\\n<p>With a global strategy, the portal supports multiple languages and locales, in terms of the content on the pages, the content in any communications and incoming content. In addition, technically, it works on multiple cloud platforms and integrates with multiple email providers, SMS providers, and payment processors.<\\/p>\",\"banner_image\":\"9\",\"thumbnail\":\"10\"}','[]',NULL,NULL,1,'2018-04-24 17:28:22','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(115,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":2,\"id\":\"24\"}',NULL,NULL,1,'2018-04-24 17:30:21','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(116,'ENTRY','UPDATE',NULL,'directus_privileges',24,1,'{\"id\":\"24\",\"table_name\":\"projects\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":2,\"id\":\"24\"}',NULL,NULL,1,'2018-04-24 17:30:22','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(117,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"1\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_edit\":2,\"id\":\"25\"}',NULL,NULL,1,'2018-04-24 17:30:23','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(118,'ENTRY','UPDATE',NULL,'directus_privileges',25,1,'{\"id\":\"25\",\"table_name\":\"project_types\",\"allow_view\":\"2\",\"allow_add\":\"1\",\"allow_edit\":\"2\",\"allow_delete\":\"2\",\"allow_alter\":\"0\",\"group_id\":\"3\",\"read_field_blacklist\":null,\"write_field_blacklist\":null,\"nav_listed\":\"1\",\"status_id\":null}','{\"allow_delete\":2,\"id\":\"25\"}',NULL,NULL,1,'2018-04-24 17:30:24','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(119,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-24 17:31:49','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(120,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-24 17:31:53','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(121,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-24 17:33:11','192.168.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36'),(122,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-04-24 17:33:30','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(123,'FILES','ADD','1','directus_files',11,2,'{\"id\":\"11\",\"status\":\"1\",\"name\":\"00000000011.jpg\",\"title\":\"img3 multi lang\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1309\",\"height\":\"745\",\"size\":\"122662\",\"embed_id\":null,\"user\":\"2\",\"date_uploaded\":\"2018-04-24 17:34:29\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-24 17:34:29','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(124,'FILES','ADD','1','directus_files',12,2,'{\"id\":\"12\",\"status\":\"1\",\"name\":\"00000000012.jpg\",\"title\":\"img4 market pay\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1295\",\"height\":\"708\",\"size\":\"87865\",\"embed_id\":null,\"user\":\"2\",\"date_uploaded\":\"2018-04-24 17:34:39\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-24 17:34:40','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(125,'FILES','ADD','1','directus_files',13,2,'{\"id\":\"13\",\"status\":\"1\",\"name\":\"00000000013.jpg\",\"title\":\"img21 autofetch sweep\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1408\",\"height\":\"838\",\"size\":\"104044\",\"embed_id\":null,\"user\":\"2\",\"date_uploaded\":\"2018-04-24 17:34:52\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-24 17:34:52','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(126,'FILES','ADD','1','directus_files',14,2,'{\"id\":\"14\",\"status\":\"1\",\"name\":\"00000000014.jpg\",\"title\":\"img111 portal\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1280\",\"height\":\"720\",\"size\":\"81734\",\"embed_id\":null,\"user\":\"2\",\"date_uploaded\":\"2018-04-24 17:35:00\",\"storage_adapter\":\"local\"}','[]',NULL,NULL,1,'2018-04-24 17:35:00','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(127,'ENTRY','UPDATE','5','projects',5,2,'{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"2\",\"title\":\"enfold Digital Locker\",\"subtitle\":null,\"details\":\"<p>Enfold provides digital lockers that keep your documents safe, secure and always available. Enfold&rsquo;s digital lockers automatically obtain documents worth storing from your email accounts and web portals.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000014.jpg\\\" alt=\\\"\\\" width=\\\"1280\\\" height=\\\"720\\\" \\/><\\/p>\\n<p>The locker automatically fetches documents from email accounts and web portals, and allows documents to be emailed to the locker from trusted email accounts.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000013.jpg\\\" alt=\\\"\\\" width=\\\"1408\\\" height=\\\"838\\\" \\/><\\/p>\\n<p>With a global strategy, the portal supports multiple languages and locales, in terms of the content on the pages, the content in any communications and incoming content. In addition, technically, it works on multiple cloud platforms and integrates with multiple email providers, SMS providers, and payment processors.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000011.jpg\\\" alt=\\\"\\\" width=\\\"1309\\\" height=\\\"745\\\" \\/><\\/p>\",\"banner_image\":\"9\",\"thumbnail\":\"10\"}','{\"details\":\"<p>Enfold provides digital lockers that keep your documents safe, secure and always available. Enfold&rsquo;s digital lockers automatically obtain documents worth storing from your email accounts and web portals.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000014.jpg\\\" alt=\\\"\\\" width=\\\"1280\\\" height=\\\"720\\\" \\/><\\/p>\\n<p>The locker automatically fetches documents from email accounts and web portals, and allows documents to be emailed to the locker from trusted email accounts.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000013.jpg\\\" alt=\\\"\\\" width=\\\"1408\\\" height=\\\"838\\\" \\/><\\/p>\\n<p>With a global strategy, the portal supports multiple languages and locales, in terms of the content on the pages, the content in any communications and incoming content. In addition, technically, it works on multiple cloud platforms and integrates with multiple email providers, SMS providers, and payment processors.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000011.jpg\\\" alt=\\\"\\\" width=\\\"1309\\\" height=\\\"745\\\" \\/><\\/p>\",\"id\":\"5\"}',NULL,NULL,1,'2018-04-24 17:37:09','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(128,'ENTRY','UPDATE','5','projects',5,2,'{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"project_type_id\":\"2\",\"title\":\"enfold Digital Locker\",\"subtitle\":null,\"details\":\"<p>Enfold provides digital lockers that keep your documents safe, secure and always available. Enfold&rsquo;s digital lockers automatically obtain documents worth storing from your email accounts and web portals.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000014.jpg\\\" width=\\\"1000\\\" height=\\\"563\\\" \\/><\\/p>\\n<p>The locker automatically fetches documents from email accounts and web portals, and allows documents to be emailed to the locker from trusted email accounts.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000013.jpg\\\" width=\\\"1000\\\" height=\\\"595\\\" \\/><\\/p>\\n<p>With a global strategy, the portal supports multiple languages and locales, in terms of the content on the pages, the content in any communications and incoming content. In addition, technically, it works on multiple cloud platforms and integrates with multiple email providers, SMS providers, and payment processors.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000011.jpg\\\" width=\\\"1000\\\" height=\\\"569\\\" \\/><\\/p>\",\"banner_image\":\"9\",\"thumbnail\":\"10\"}','{\"details\":\"<p>Enfold provides digital lockers that keep your documents safe, secure and always available. Enfold&rsquo;s digital lockers automatically obtain documents worth storing from your email accounts and web portals.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000014.jpg\\\" width=\\\"1000\\\" height=\\\"563\\\" \\/><\\/p>\\n<p>The locker automatically fetches documents from email accounts and web portals, and allows documents to be emailed to the locker from trusted email accounts.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000013.jpg\\\" width=\\\"1000\\\" height=\\\"595\\\" \\/><\\/p>\\n<p>With a global strategy, the portal supports multiple languages and locales, in terms of the content on the pages, the content in any communications and incoming content. In addition, technically, it works on multiple cloud platforms and integrates with multiple email providers, SMS providers, and payment processors.<\\/p>\\n<p><img src=\\\"\\/storage\\/uploads\\/00000000011.jpg\\\" width=\\\"1000\\\" height=\\\"569\\\" \\/><\\/p>\",\"id\":\"5\"}',NULL,NULL,1,'2018-04-24 17:40:25','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'),(129,'LOGIN','LOGIN',NULL,'directus_users',0,2,NULL,NULL,NULL,NULL,0,'2018-07-10 16:07:56','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),(130,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2018-07-10 16:09:44','192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');
/*!40000 ALTER TABLE `directus_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_bookmarks`
--

DROP TABLE IF EXISTS `directus_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_bookmarks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_bookmarks`
--

LOCK TABLES `directus_bookmarks` WRITE;
/*!40000 ALTER TABLE `directus_bookmarks` DISABLE KEYS */;
INSERT INTO `directus_bookmarks` VALUES (1,1,'Activity','activity','other'),(2,1,'Files','files','other'),(3,1,'Messages','messages','other'),(4,1,'Users','users','other'),(5,2,'Activity','activity','other'),(6,2,'Files','files','other'),(7,2,'Messages','messages','other'),(8,2,'Users','users','other');
/*!40000 ALTER TABLE `directus_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_columns`
--

DROP TABLE IF EXISTS `directus_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_columns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `data_type` varchar(64) DEFAULT NULL,
  `ui` varchar(64) DEFAULT NULL,
  `relationship_type` enum('MANYTOONE','MANYTOMANY','ONETOMANY') DEFAULT NULL,
  `related_table` varchar(64) DEFAULT NULL,
  `junction_table` varchar(64) DEFAULT NULL,
  `junction_key_left` varchar(64) DEFAULT NULL,
  `junction_key_right` varchar(64) DEFAULT NULL,
  `hidden_input` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table-column` (`table_name`,`column_name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_columns`
--

LOCK TABLES `directus_columns` WRITE;
/*!40000 ALTER TABLE `directus_columns` DISABLE KEYS */;
INSERT INTO `directus_columns` VALUES (1,'directus_users','group',NULL,'many_to_one','MANYTOONE','directus_groups',NULL,NULL,'group_id',0,0,NULL,'',NULL),(2,'directus_users','avatar_file_id','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'avatar_file_id',0,0,NULL,'',NULL),(3,'directus_groups','users','ALIAS','directus_users','ONETOMANY','directus_users',NULL,NULL,'group',0,0,NULL,NULL,NULL),(4,'directus_groups','permissions','ALIAS','directus_permissions','ONETOMANY','directus_privileges',NULL,NULL,'group_id',0,0,NULL,NULL,NULL),(5,'test_projects','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(6,'test_projects','sort','INT','sort',NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL),(7,'test_projects','status','INT','status',NULL,NULL,NULL,NULL,NULL,1,0,2,NULL,NULL),(8,'test_projects','title','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,1,3,'Primary name of the project',NULL),(9,'test_projects','sub_title','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,0,4,'',NULL),(10,'test_projects','thumbnail','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,0,5,'thumbnail image',NULL),(11,'project_types','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(12,'project_types','sort','INT','sort',NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL),(13,'project_types','status','INT','status',NULL,NULL,NULL,NULL,NULL,1,0,2,NULL,NULL),(14,'project_types','name','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL),(15,'projects','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(16,'projects','sort','INT','sort',NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL),(17,'projects','status','INT','status',NULL,NULL,NULL,NULL,NULL,1,0,2,NULL,NULL),(18,'projects','project_type_id','INT','many_to_one','MANYTOONE','project_types',NULL,NULL,'project_type_id',0,1,3,'','{\"id\":\"many_to_one\",\"visible_column\":\"name\",\"visible_column_template\":\"{{name}}\",\"placeholder\":\"Please select the project type\"}'),(19,'projects','title','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,1,5,'',NULL),(20,'projects','subtitle','VARCHAR','text_input',NULL,NULL,NULL,NULL,NULL,0,0,6,'',NULL),(22,'projects','details','TEXT','wysiwyg_full',NULL,NULL,NULL,NULL,NULL,0,0,8,'Full on details in html',NULL),(23,'projects','banner_image','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'banner_image',0,0,7,'',NULL),(24,'projects','thumbnail','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'thumbnail',0,1,4,'The image to show up on the work page cards',NULL),(25,'info','id','INT','primary_key',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL),(26,'info','sort','INT','sort',NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL),(27,'info','status','INT','status',NULL,NULL,NULL,NULL,NULL,1,0,2,NULL,NULL),(28,'info','about_me','TEXT','wysiwyg_full',NULL,NULL,NULL,NULL,NULL,0,0,3,'',NULL);
/*!40000 ALTER TABLE `directus_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_files`
--

DROP TABLE IF EXISTS `directus_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `location` varchar(200) DEFAULT NULL,
  `caption` text,
  `type` varchar(255) DEFAULT '',
  `charset` varchar(50) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `width` int(11) unsigned DEFAULT '0',
  `height` int(11) unsigned DEFAULT '0',
  `size` int(11) unsigned DEFAULT '0',
  `embed_id` varchar(200) DEFAULT NULL,
  `user` int(11) unsigned NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `storage_adapter` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_files`
--

LOCK TABLES `directus_files` WRITE;
/*!40000 ALTER TABLE `directus_files` DISABLE KEYS */;
INSERT INTO `directus_files` VALUES (3,1,'00000000003.png','sqaurish','thumbnail_placeholder','','image/png','binary','',450,420,1309,NULL,1,'2018-03-27 16:18:52','local'),(4,1,'00000000004.png','wide','thumbnail_placeholder','','image/png','binary','',450,300,1273,NULL,1,'2018-03-27 16:19:34','local'),(5,1,'00000000005.png','long','thumbnail_placeholder','','image/png','binary','',450,600,1362,NULL,1,'2018-03-27 16:19:53','local'),(6,1,'00000000006.png','wall soiaf','','','image/png','binary','',1920,1080,6232113,NULL,1,'2018-04-08 13:15:07','local'),(7,1,'00000000007.png','Digital Locker','','','image/png','binary','',526,776,40945,NULL,1,'2018-04-08 13:19:18','local'),(8,1,'enfold_c.jpg','enfold c','','','image/jpeg','binary','',1920,350,66763,NULL,2,'2018-04-24 17:27:45','local'),(9,1,'00000000009.jpg','enfold c','','','image/jpeg','binary','',1920,350,66763,NULL,2,'2018-04-24 17:28:22','local'),(10,1,'00000000010.jpg','enfold grid tile 640x640','','','image/jpeg','binary','',640,640,51670,NULL,2,'2018-04-24 17:28:22','local'),(11,1,'00000000011.jpg','img3 multi lang','','','image/jpeg','binary','',1309,745,122662,NULL,2,'2018-04-24 17:34:29','local'),(12,1,'00000000012.jpg','img4 market pay','','','image/jpeg','binary','',1295,708,87865,NULL,2,'2018-04-24 17:34:39','local'),(13,1,'00000000013.jpg','img21 autofetch sweep','','','image/jpeg','binary','',1408,838,104044,NULL,2,'2018-04-24 17:34:52','local'),(14,1,'00000000014.jpg','img111 portal','','','image/jpeg','binary','',1280,720,81734,NULL,2,'2018-04-24 17:35:00','local');
/*!40000 ALTER TABLE `directus_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_groups`
--

DROP TABLE IF EXISTS `directus_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_override` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_groups`
--

LOCK TABLES `directus_groups` WRITE;
/*!40000 ALTER TABLE `directus_groups` DISABLE KEYS */;
INSERT INTO `directus_groups` VALUES (1,'Administrator','Admins have access to all managed data within the system by default',NULL,NULL),(2,'Public','This sets the data that is publicly available through the API without a token',NULL,NULL),(3,'Content Writer','Manage the content of this site',NULL,NULL);
/*!40000 ALTER TABLE `directus_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_messages`
--

DROP TABLE IF EXISTS `directus_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) unsigned DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` varchar(512) DEFAULT NULL,
  `response_to` int(11) unsigned DEFAULT NULL,
  `comment_metadata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_messages`
--

LOCK TABLES `directus_messages` WRITE;
/*!40000 ALTER TABLE `directus_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_messages_recipients`
--

DROP TABLE IF EXISTS `directus_messages_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_messages_recipients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `recipient` int(11) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `group` int(11) unsigned DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_messages_recipients`
--

LOCK TABLES `directus_messages_recipients` WRITE;
/*!40000 ALTER TABLE `directus_messages_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_messages_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_preferences`
--

DROP TABLE IF EXISTS `directus_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_preferences` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `columns_visible` varchar(300) DEFAULT NULL,
  `sort` varchar(64) DEFAULT 'id',
  `sort_order` varchar(5) DEFAULT 'ASC',
  `status` varchar(64) DEFAULT '3',
  `search_string` text,
  `list_view_options` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`,`table_name`,`title`),
  UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_preferences`
--

LOCK TABLES `directus_preferences` WRITE;
/*!40000 ALTER TABLE `directus_preferences` DISABLE KEYS */;
INSERT INTO `directus_preferences` VALUES (1,1,'directus_activity',NULL,'type,action,identifier,table_name,row_id,user,data','id','ASC','1,2',NULL,NULL),(2,1,'directus_bookmarks',NULL,'user,title,url,section','id','ASC','1,2',NULL,NULL),(3,1,'directus_files',NULL,'name,title,location,caption,type,charset,tags','date_uploaded','DESC','1,2',NULL,NULL),(4,1,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist,nav_override,users,permissions','id','ASC','1,2',NULL,NULL),(5,1,'directus_messages',NULL,'from,subject,message,datetime,attachment,response_to,comment_metadata','id','ASC','1,2',NULL,NULL),(6,1,'directus_messages_recipients',NULL,'message_id,recipient,read,group,archived','id','ASC','1,2',NULL,NULL),(7,1,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL,NULL),(8,1,'directus_users',NULL,'first_name,last_name,email,password,salt,token,access_token','id','ASC','1,2',NULL,NULL),(9,1,'test_projects',NULL,'title,sub_title','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(10,1,'project_types',NULL,'name','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(11,1,'projects',NULL,'project_type_id,title,subtitle','id','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\",\"table\":{\"spacing\":\"cozy\"}}'),(12,1,'info',NULL,'about_me','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(13,2,'directus_users',NULL,'first_name,last_name,email,password,salt,access_token,reset_token','id','ASC','1,2',NULL,NULL),(14,2,'info',NULL,'about_me','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(15,2,'project_types',NULL,'name','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(16,2,'projects',NULL,'project_type_id,title,subtitle,details,banner_image,thumbnail','sort','ASC','1,2',NULL,'{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),(17,2,'directus_files',NULL,'name,title,location,caption,type,charset,tags','date_uploaded','DESC','1,2',NULL,NULL);
/*!40000 ALTER TABLE `directus_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_privileges`
--

DROP TABLE IF EXISTS `directus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_privileges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `allow_view` tinyint(1) NOT NULL DEFAULT '0',
  `allow_add` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0',
  `allow_alter` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL,
  `read_field_blacklist` varchar(1000) DEFAULT NULL,
  `write_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `nav_listed` tinyint(1) NOT NULL DEFAULT '1',
  `status_id` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_privileges`
--

LOCK TABLES `directus_privileges` WRITE;
/*!40000 ALTER TABLE `directus_privileges` DISABLE KEYS */;
INSERT INTO `directus_privileges` VALUES (1,'directus_activity',2,1,2,2,1,1,NULL,NULL,1,NULL),(2,'directus_columns',2,1,2,2,1,1,NULL,NULL,1,NULL),(3,'directus_groups',2,1,2,2,1,1,NULL,NULL,1,NULL),(4,'directus_files',2,1,2,2,1,1,NULL,NULL,1,NULL),(5,'directus_messages',2,1,2,2,1,1,NULL,NULL,1,NULL),(6,'directus_preferences',2,1,2,2,1,1,NULL,NULL,1,NULL),(7,'directus_privileges',2,1,2,2,1,1,NULL,NULL,1,NULL),(8,'directus_settings',2,1,2,2,1,1,NULL,NULL,1,NULL),(9,'directus_tables',2,1,2,2,1,1,NULL,NULL,1,NULL),(10,'directus_users',2,1,2,2,1,1,NULL,NULL,1,NULL),(11,'directus_messages_recipients',2,1,2,2,1,1,NULL,NULL,1,NULL),(12,'directus_bookmarks',2,1,2,2,1,1,NULL,NULL,1,NULL),(13,'test_projects',2,1,2,2,1,1,NULL,NULL,1,NULL),(14,'test_projects',2,0,0,0,0,2,NULL,NULL,1,NULL),(15,'project_types',2,1,2,2,1,1,NULL,NULL,1,NULL),(16,'project_types',2,0,0,0,0,2,NULL,NULL,1,NULL),(17,'projects',2,1,2,2,1,1,NULL,NULL,1,NULL),(18,'projects',2,0,0,0,0,2,NULL,NULL,1,NULL),(19,'directus_files',2,0,0,0,0,2,NULL,NULL,1,NULL),(20,'info',2,1,2,2,1,1,NULL,NULL,1,NULL),(21,'info',2,0,0,0,0,2,NULL,NULL,1,NULL),(22,'directus_users',1,0,1,0,1,3,'token','group,token',1,NULL),(23,'info',2,1,2,2,0,3,NULL,NULL,1,NULL),(24,'projects',2,1,2,2,0,3,NULL,NULL,1,NULL),(25,'project_types',2,1,2,2,0,3,NULL,NULL,1,NULL),(26,'directus_files',1,1,1,1,0,3,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `directus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_schema_migrations`
--

DROP TABLE IF EXISTS `directus_schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL,
  UNIQUE KEY `idx_directus_schema_migrations_version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_schema_migrations`
--

LOCK TABLES `directus_schema_migrations` WRITE;
/*!40000 ALTER TABLE `directus_schema_migrations` DISABLE KEYS */;
INSERT INTO `directus_schema_migrations` VALUES ('20150203221946'),('20150203235646'),('20150204002341'),('20150204003426'),('20150204015251'),('20150204021255'),('20150204022237'),('20150204023325'),('20150204024327'),('20150204031412'),('20150204041007'),('20150204042725');
/*!40000 ALTER TABLE `directus_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_settings`
--

DROP TABLE IF EXISTS `directus_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique Collection and Name` (`collection`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_settings`
--

LOCK TABLES `directus_settings` WRITE;
/*!40000 ALTER TABLE `directus_settings` DISABLE KEYS */;
INSERT INTO `directus_settings` VALUES (1,'global','cms_user_auto_sign_out','60'),(2,'global','project_name','directus'),(3,'global','project_url','http://localhost/'),(4,'global','rows_per_page','200'),(5,'files','thumbnail_quality','100'),(6,'files','thumbnail_size','200'),(7,'global','cms_thumbnail_url',''),(8,'files','file_naming','file_id'),(9,'files','thumbnail_crop_enabled','1'),(10,'files','youtube_api_key','');
/*!40000 ALTER TABLE `directus_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_tables`
--

DROP TABLE IF EXISTS `directus_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_tables` (
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_template` varchar(255) DEFAULT '',
  `preview_url` varchar(255) DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '1',
  `footer` tinyint(1) DEFAULT '0',
  `column_groupings` varchar(255) DEFAULT NULL,
  `primary_column` varchar(64) DEFAULT NULL,
  `sort_column` varchar(64) DEFAULT NULL,
  `status_column` varchar(64) DEFAULT NULL,
  `status_mapping` text,
  `user_create_column` varchar(64) DEFAULT NULL,
  `user_update_column` varchar(64) DEFAULT NULL,
  `date_create_column` varchar(64) DEFAULT NULL,
  `date_update_column` varchar(64) DEFAULT NULL,
  `filter_column_blacklist` text,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_tables`
--

LOCK TABLES `directus_tables` WRITE;
/*!40000 ALTER TABLE `directus_tables` DISABLE KEYS */;
INSERT INTO `directus_tables` VALUES ('directus_bookmarks','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_files','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_messages_recipients','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'recipient',NULL,NULL,NULL,NULL),('directus_preferences','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_users','','',1,0,1,0,NULL,NULL,NULL,NULL,NULL,'id',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_users`
--

DROP TABLE IF EXISTS `directus_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT '1',
  `first_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `reset_token` varchar(255) DEFAULT '',
  `reset_expiration` datetime DEFAULT NULL,
  `position` varchar(500) DEFAULT '',
  `email_messages` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `last_page` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `group` int(11) unsigned DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_file_id` int(11) unsigned DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en',
  `timezone` varchar(32) DEFAULT 'America/New_York',
  `invite_token` varchar(255) DEFAULT NULL,
  `invite_date` datetime DEFAULT NULL,
  `invite_sender` int(11) unsigned DEFAULT NULL,
  `invite_accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_email_unique` (`email`),
  UNIQUE KEY `directus_users_token_unique` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_users`
--

LOCK TABLES `directus_users` WRITE;
/*!40000 ALTER TABLE `directus_users` DISABLE KEYS */;
INSERT INTO `directus_users` VALUES (1,1,'Admin','User','anishgeorgehb@gmail.com','$2y$12$wrIbUygOTzklJcSbE2Qa0OcoONsyPU.ui2e/K2fwD19hBinWNTiM2','Xc4LniSf4omjLgQk','x99KpYg1EIeBBkzeXBGPbxekFVKUK0L0','05bda99d07feb5583cc7f3f2be6cf30161f912e7','C8N5ZTkn4Egg1dFBJOFkWtibSwExf5','2018-04-23 10:06:16','',1,'2018-07-10 16:09:44','2018-07-10 16:20:17','{\"path\":\"tables/projects\",\"route\":\"entries\"}','192.168.0.1',1,'//www.gravatar.com/avatar/93978ac0d7b26b1901415537dd6d0246?s=200&d=identicon&r=g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','America/New_York',NULL,NULL,NULL,NULL),(2,1,'Shivani','Arvikar','shiviarvk@gmail.com','$2y$12$fAW7Qzydm9M4YimoK679FuJdBTkUD81.GjOLk/uzUlM0CEK0ZZ5gS','WU6epuAUufNjXtF8',NULL,NULL,'',NULL,'',1,'2018-07-10 16:07:56','2018-07-10 16:08:01','{\"path\":\"tables\",\"route\":\"notFound\"}','192.168.0.1',3,'//www.gravatar.com/avatar/50cac49b68455fa84c3cfc1ff965bed6?s=200&d=identicon&r=g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en','America/New_York',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) unsigned DEFAULT NULL,
  `about_me` text COMMENT '''''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,1,NULL,'<p class=\"p1\">My background is in Computer Science, in which I hold a Bachelor of Science degree.</p>\n<p class=\"p1\">If you are looking for a &ldquo;UX unicorn&rdquo; who knows not only where to put the submit button but exactly what it should look like, look no further! I have a keen sense of what users are looking for.</p>\n<p class=\"p1\">I can create a wireframe, but I can also turn it into something elegant &ndash; or maybe give it a touch of whimsy. I am comfortable exploring the needs of differing audiences, from children to adults, and students to librarians and teachers. I know how to take a user-centered approach without losing sight of business goals.</p>\n<p class=\"p1\">My developer colleagues call me \"Shadyantrakari\" (hindi for Designer).</p>\n<p class=\"p1\">An UX designer has to be able to design and redesign portals from the ground up. I am fluent in:</p>\n<ul class=\"pv-skill-categories-section__top-skills pv-profile-section__section-info section-info pb4\">\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\"><span class=\"s1\">Sketch</span></li>\n<li id=\"ember3143\" class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">Adobe Illustrator CC</span></p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">Adobe Photoshop CC</span>&nbsp;</p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">Flinto</span></p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">InVision Studio</span></p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">Axure</span>&nbsp;</p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">Zeplin</span></p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\"><span class=\"s1\">WordPress</span></p>\n</li>\n<li class=\"pv-skill-category-entity__top-skill pv-skill-category-entity pb3 pt4 pv-skill-endorsedSkill-entity relative ember-view\">\n<p class=\"p1\">&nbsp;<span class=\"s1\">Understanding of HTML/CSS</span></p>\n</li>\n</ul>\n<p class=\"p1\">I work efficiently, and am comfortable with the concept of Lean UX.</p>\n<p class=\"p1\">Apart from Designing, my interests include Dancing and Painting.&nbsp;</p>');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_types`
--

DROP TABLE IF EXISTS `project_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '''''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_types`
--

LOCK TABLES `project_types` WRITE;
/*!40000 ALTER TABLE `project_types` DISABLE KEYS */;
INSERT INTO `project_types` VALUES (1,1,NULL,'Graphics'),(2,1,NULL,'Web'),(3,1,NULL,'Mobile');
/*!40000 ALTER TABLE `project_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) unsigned DEFAULT NULL,
  `project_type_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `subtitle` varchar(100) DEFAULT NULL COMMENT '''''',
  `details` text COMMENT '''Full on details in html''',
  `banner_image` int(11) DEFAULT NULL COMMENT '''''',
  `thumbnail` int(11) DEFAULT NULL COMMENT '''The image to show up on the work page cards''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,1,NULL,3,'TripHobo','Trip Plans','<h3>This is TripHobo</h3>\n<p>A small company involved in stuff we do</p>\n<p><img src=\"/storage/uploads/00000000005.png\" alt=\"long\" width=\"450\" height=\"600\" /></p>\n<p>Some more stuff to go with this</p>',6,5),(2,1,NULL,3,'Exclusive','Social Gathering',NULL,NULL,4),(3,1,NULL,3,'Nap26','Rest and Rejuvination',NULL,NULL,3),(4,1,NULL,1,'Random','Just for fun',NULL,NULL,7),(5,1,NULL,2,'enfold Digital Locker',NULL,'<p>Enfold provides digital lockers that keep your documents safe, secure and always available. Enfold&rsquo;s digital lockers automatically obtain documents worth storing from your email accounts and web portals.</p>\n<p><img src=\"/storage/uploads/00000000014.jpg\" width=\"1000\" height=\"563\" /></p>\n<p>The locker automatically fetches documents from email accounts and web portals, and allows documents to be emailed to the locker from trusted email accounts.</p>\n<p><img src=\"/storage/uploads/00000000013.jpg\" width=\"1000\" height=\"595\" /></p>\n<p>With a global strategy, the portal supports multiple languages and locales, in terms of the content on the pages, the content in any communications and incoming content. In addition, technically, it works on multiple cloud platforms and integrates with multiple email providers, SMS providers, and payment processors.</p>\n<p><img src=\"/storage/uploads/00000000011.jpg\" width=\"1000\" height=\"569\" /></p>',9,10);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_projects`
--

DROP TABLE IF EXISTS `test_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''Primary name of the project''',
  `sub_title` varchar(100) DEFAULT NULL COMMENT '''''',
  `thumbnail` varchar(250) DEFAULT NULL COMMENT '''thumbnail image''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_projects`
--

LOCK TABLES `test_projects` WRITE;
/*!40000 ALTER TABLE `test_projects` DISABLE KEYS */;
INSERT INTO `test_projects` VALUES (1,1,NULL,'Triphobo','Trip Plans','/storage/uploads/00000000002.png');
/*!40000 ALTER TABLE `test_projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-10 16:26:36
