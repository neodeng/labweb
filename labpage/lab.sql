-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: labsql
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.10.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--


/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--



--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--


/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add 首页滚动图片',8,'add_slide'),(23,'Can change 首页滚动图片',8,'change_slide'),(24,'Can delete 首页滚动图片',8,'delete_slide'),(25,'Can add 已发表论文',9,'add_publications'),(26,'Can change 已发表论文',9,'change_publications'),(27,'Can delete 已发表论文',9,'delete_publications'),(43,'Can add 实验室新闻',15,'add_new'),(44,'Can change 实验室新闻',15,'change_new'),(45,'Can delete 实验室新闻',15,'delete_new'),(52,'Can add 实验设备',18,'add_facilitys'),(53,'Can change 实验设备',18,'change_facilitys'),(54,'Can delete 实验设备',18,'delete_facilitys'),(55,'Can add 研究领域',19,'add_researchs'),(56,'Can change 研究领域',19,'change_researchs'),(57,'Can delete 研究领域',19,'delete_researchs'),(58,'Can add 实验室成员',20,'add_memberss'),(59,'Can change 实验室成员',20,'change_memberss'),(60,'Can delete 实验室成员',20,'delete_memberss');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;


--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--


/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'prw','','','dyq9109@163.com','pbkdf2_sha256$10000$8DoQKwJhGFlu$tfEApN5h+LjNgPmK8RX5CDQQh3fQiHaw9/t1zn5qNmE=',1,1,1,'2015-05-13 07:29:13','2015-05-13 03:27:06');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;


--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--


/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;


--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--


/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;


--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--


/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (2,'2015-05-13 03:29:13',1,8,'1','hezhao',1,''),(3,'2015-05-13 03:29:24',1,8,'2','am',1,''),(4,'2015-05-13 03:29:36',1,8,'3','metasurface',1,''),(5,'2015-05-13 03:29:47',1,8,'4','graphe',1,''),(6,'2015-05-13 03:29:59',1,8,'5','acoustic',1,''),(7,'2015-05-13 03:30:13',1,8,'6','yucha',1,''),(8,'2015-05-13 03:30:25',1,8,'7','am',1,''),(9,'2015-05-13 07:29:40',1,8,'8','dd',1,''),(10,'2015-05-13 07:35:52',1,8,'1','hezhao',2,'Changed img.'),(11,'2015-05-13 07:36:17',1,8,'2','am',2,'Changed img.'),(12,'2015-05-13 07:36:26',1,8,'3','metasurface',2,'Changed img.'),(13,'2015-05-13 07:36:32',1,8,'4','graphe',2,'Changed img.'),(14,'2015-05-13 07:36:39',1,8,'5','acoustic',2,'Changed img.'),(15,'2015-05-13 07:36:46',1,8,'6','yucha',2,'Changed img.'),(16,'2015-05-13 07:36:52',1,8,'7','am',2,'Changed img.'),(17,'2015-05-13 07:36:58',1,8,'8','dd',3,''),(44,'2015-05-13 13:28:43',1,9,'1','Appl. Phys. Lett. 1991',1,''),(45,'2015-05-13 13:38:50',1,9,'2','Phys. Rev. B 1992',1,''),(52,'2015-05-14 03:47:34',1,15,'1','恭喜周昱和徐地虎博士顺利毕业答辩！',1,''),(53,'2015-05-14 03:48:56',1,18,'1','荧光拉曼系统',1,''),(54,'2015-05-14 03:49:23',1,18,'2','微区光谱仪',1,''),(55,'2015-05-14 03:49:42',1,18,'3','磁控溅射',1,''),(56,'2015-05-14 03:50:07',1,18,'4','太赫兹光谱仪',1,''),(57,'2015-05-14 03:51:03',1,19,'1','等离激元与光子晶体',1,''),(58,'2015-05-14 03:51:33',1,19,'2','超构材料',1,''),(59,'2015-05-14 03:52:01',1,19,'3','变换光学',1,''),(60,'2015-05-14 03:52:43',1,19,'4','声学超构材料',1,''),(61,'2015-05-14 03:57:34',1,20,'1','彭茹雯',1,''),(62,'2015-05-14 03:57:36',1,20,'1','彭茹雯',2,'No fields changed.'),(63,'2015-05-14 03:58:09',1,20,'2','范仁浩',1,''),(64,'2015-05-14 03:58:48',1,20,'3','祁冬祥',1,''),(65,'2015-05-14 03:59:17',1,20,'4','周昱',1,''),(66,'2015-05-14 03:59:49',1,20,'5','徐地虎',1,''),(67,'2015-05-14 04:01:25',1,20,'6','吴宏伟',1,''),(68,'2015-05-14 04:01:45',1,20,'6','吴宏伟',2,'Changed cls.'),(69,'2015-05-14 04:02:15',1,20,'7','张昆',1,''),(70,'2015-05-14 04:02:56',1,20,'8','史文博',1,''),(71,'2015-05-14 04:03:34',1,20,'9','任小平',1,''),(72,'2015-05-14 04:04:07',1,20,'10','孙荣荣',1,''),(73,'2015-05-14 04:04:36',1,20,'11','邓裕强',1,''),(74,'2015-05-14 04:05:28',1,20,'12','贾智勇',1,''),(75,'2015-05-14 06:00:44',1,20,'13','陈天用',1,''),(76,'2015-05-14 06:01:21',1,20,'14','束方洲',1,''),(77,'2015-05-14 06:02:05',1,20,'15','李金静',1,''),(78,'2015-05-14 06:02:13',1,20,'14','束方洲',2,'Changed address and address_en.'),(79,'2015-05-14 06:02:52',1,20,'16','朱瑛莺',1,''),(80,'2015-05-14 06:03:18',1,20,'17','刘冬',1,''),(81,'2015-05-14 06:03:48',1,20,'18','刘莲子',1,''),(82,'2015-05-14 06:04:39',1,20,'19','景灏',1,''),(83,'2015-05-14 06:05:14',1,20,'20','邱际瑞',1,''),(84,'2015-05-14 06:05:48',1,20,'21','曹之皓',1,''),(85,'2015-05-14 06:21:30',1,19,'1','等离激元与光子晶体',2,'No fields changed.'),(86,'2015-05-14 06:21:46',1,19,'1','等离激元与光子晶体',2,'No fields changed.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;


--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--


/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'首页滚动图片','home','slide'),(9,'已发表论文','home','publications'),(15,'实验室新闻','home','new'),(18,'实验设备','home','facilitys'),(19,'研究领域','home','researchs'),(20,'实验室成员','home','memberss');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;


--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--


/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5ffd3f20347b4ccd248f8bc4d61906d4','ZTdiZGEzMzhiMmNhZmU2OGYwMDBiNDFkZGRlOTM1OGM4YjBkZmJkYjqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2015-05-28 06:44:16'),('6ada53945b5351f67e73980d68c3f8c9','MTk5OWQ1MzQzMjliZGJjODE5NzJhZDE1OGI1ODg1ZDRkZjRjNTUxMTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-05-27 03:27:59');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;


--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--


/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;


--
-- Table structure for table `home_facility`
--

DROP TABLE IF EXISTS `home_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `describe` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_facility`
--


/*!40000 ALTER TABLE `home_facility` DISABLE KEYS */;
INSERT INTO `home_facility` VALUES (1,'Fluorescence and Raman System','facility/raman.jpg','Raman'),(2,'Microspectrophotometer','facility/micro.jpg','Micro'),(3,'Magnetron Sputtering Device','facility/du.jpg','Magnetron Sputtering Device'),(4,'Terahertz Real-Time Spectrometer','facility/terahertz.JPG','Terahertz Real-Time Spectrometer');
/*!40000 ALTER TABLE `home_facility` ENABLE KEYS */;


--
-- Table structure for table `home_facilitys`
--

DROP TABLE IF EXISTS `home_facilitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_facilitys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `describe` varchar(1000) NOT NULL,
  `describe_en` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_facilitys`
--


/*!40000 ALTER TABLE `home_facilitys` DISABLE KEYS */;
INSERT INTO `home_facilitys` VALUES (1,'荧光拉曼系统','Fluorescence and Raman System','facility/raman.jpg','s','s'),(2,'微区光谱仪','Microspectrophotometer','facility/micro.jpg','s','s'),(3,'磁控溅射','Magnetron Sputtering Device','facility/du.jpg','s','ss'),(4,'太赫兹光谱仪','Terahertz Real-Time Spectrometer','facility/terahertz.JPG','ss','aa');
/*!40000 ALTER TABLE `home_facilitys` ENABLE KEYS */;


--
-- Table structure for table `home_member`
--

DROP TABLE IF EXISTS `home_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `cls` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_member`
--


/*!40000 ALTER TABLE `home_member` DISABLE KEYS */;
INSERT INTO `home_member` VALUES (1,'彭茹雯','members/prw.jpg','唐仲英楼A306','Professor','rwpeng@nju.edu.cn'),(2,'范仁浩','members/frh.jpg','唐仲英楼 A309','PostDoc','rhfan@nju.edu.cn'),(3,'祁冬祥','members/qdx.jpg','唐仲英楼 A309','PostDoc','dongxiang87@gmail.co'),(4,'周昱','members/zy.jpg','唐仲英楼 A309','Doctor','zy071180135@126.co'),(5,'徐地虎','members/xdh.jpg','唐仲英楼 A309','Doctor','xudihu1987@163.com'),(6,'吴宏伟','members/whw.jpg','唐仲英楼 A309','Doctor','hwwu@smail.nju.edu.c'),(7,'张昆','members/zk.jpg','唐仲英楼 A309','Doctor','kzhang@smail.nju.edu'),(8,'史文博','members/swb.jpg','唐仲英楼 A309','Doctor','wbshi@smail.nju.edu.'),(9,'任小平','members/rxp.jpg','唐仲英楼 A105','Master','xpren@smail.nju.edu.'),(10,'孙荣荣','members/srr.jpg','唐仲英楼 A105','Master','millft@126.com'),(11,'邓裕强','members/dyq.jpg','唐仲英楼 A309','Master','yqdeng@smail.nju.edu'),(12,'贾智勇','members/jzy.jpg','唐仲英楼 A309','Master','zyjia@smail.nju.edu.'),(13,'陈天用','members/cty.jpg','唐仲英楼 A309','Master','tychen@smail.nju.edu'),(14,'束方洲','members/sfz.jpg','唐仲英楼A307','Master','fzshu@smail.nju.edu.'),(15,'李金静','members/ljj.jpg','唐仲英楼A306','Master','jjli@smail.nju.edu.c'),(16,'朱瑛莺','members/zyy.jpg','唐仲英楼 A309','Bachelor','yyzhu@smail.nju.edu.'),(17,'刘冬','members/ld.jpg','唐仲英楼 A309','Bachelor','dliu@smail.nju.edu.c'),(18,'刘莲子','members/llz.jpg','唐仲英楼 A309','Bachelor','15195882325@163.com'),(19,'景灏','members/jh.jpg','唐仲英楼 A105','Bachelor','hjing@smail.nju.edu.'),(20,'邱际瑞','members/qjr.jpg','唐仲英楼 A105','Bachelor','170449730@qq.com'),(21,'曹之皓','members/czh.jpg','唐仲英楼 A105','Bachelor','812631252@qq.com');
/*!40000 ALTER TABLE `home_member` ENABLE KEYS */;


--
-- Table structure for table `home_members`
--

DROP TABLE IF EXISTS `home_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `name_en` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `address_en` varchar(30) NOT NULL,
  `cls` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_members`
--


/*!40000 ALTER TABLE `home_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_members` ENABLE KEYS */;


--
-- Table structure for table `home_memberss`
--

DROP TABLE IF EXISTS `home_memberss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_memberss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `address_en` varchar(30) NOT NULL,
  `cls` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_memberss`
--


/*!40000 ALTER TABLE `home_memberss` DISABLE KEYS */;
INSERT INTO `home_memberss` VALUES (1,'彭茹雯','Ru-Wen Peng','members/彭老师_3.jpg','唐仲英楼A306','Tang Zhongying Building A306','Professor','rwpeng@nju.edu.cn'),(2,'范仁浩','Ren-Hao Fan','members/frh.jpg','唐仲英楼 A309','Tang Zhongying Building A309','PostDoc','rhfan@nju.edu.cn'),(3,'祁冬祥','Dong-Xiang Qi','members/qdx.jpg','唐仲英楼 A309','Tang Zhongying Building A309','PostDoc','dongxiang87@gmail.co'),(4,'周昱','Yu Zhou','members/zy.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Doctor','zy071180135@126.co'),(5,'徐地虎','Di-Hu Xu','members/xdh.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Doctor','xudihu1987@163.com'),(6,'吴宏伟','Hong-Wei Wu','members/whw.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Doctor','wuhongwei-12@163.com'),(7,'张昆','Kun Zhang','members/zk.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Doctor','kzhang@smail.nju.edu'),(8,'史文博','Wen-Bo Shi','members/swb.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Doctor','wbshi@smail.nju.edu.'),(9,'任小平','Xiao-Ping Ren','members/rxp.jpg','唐仲英楼 A105','Tang Zhongying Building A105','Master','xpren@smail.nju.edu.'),(10,'孙荣荣','Rong-rong Sun','members/srr.jpg','唐仲英楼 A105','Tang Zhongying Building A105','Master','millft@126.com'),(11,'邓裕强','Yu-Qiang Deng','members/dyq.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Master','yqdeng@smail.nju.edu'),(12,'贾智勇','Zhi-Yong Jia','members/jzy.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Master','zyjia@smail.nju.edu.'),(13,'陈天用','Tian-Yong Chen','members/cty.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Master','tychen@smail.nju.edu'),(14,'束方洲','Fang-Zhou Shu','members/sfz.jpg','唐仲英楼A306','Tang Zhongying Building A306','Master','fzshu@smail.nju.edu.'),(15,'李金静','Jin-Jing Li','members/ljj.jpg','唐仲英楼A306','Tang Zhongying Building A306','Master','jjli@smail.nju.edu.c'),(16,'朱瑛莺','Ying-Ying Zhu','members/zyy.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Bachelor','yyzhu@smail.nju.edu.'),(17,'刘冬','Dong Liu','members/ld.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Bachelor','dliu@smail.nju.edu.c'),(18,'刘莲子','Lian-Zi Liu','members/llz.jpg','唐仲英楼 A309','Tang Zhongying Building A309','Bachelor','15195882325@163.com'),(19,'景灏','Hao Jing','members/jh.jpg','唐仲英楼 A105','Tang Zhongying Building A105','Bachelor','hjing@smail.nju.edu.'),(20,'邱际瑞','Ji-Rui Qiu','members/qjr.jpg','唐仲英楼 A105','Tang Zhongying Building A105','Bachelor','170449730@qq.com'),(21,'曹之皓','Zhi-Hao Cao','members/czh.jpg','唐仲英楼 A105','Tang Zhongying Building A105','Bachelor','812631252@qq.com');
/*!40000 ALTER TABLE `home_memberss` ENABLE KEYS */;


--
-- Table structure for table `home_new`
--

DROP TABLE IF EXISTS `home_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` date NOT NULL,
  `content` varchar(500) NOT NULL,
  `content_en` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_new`
--


/*!40000 ALTER TABLE `home_new` DISABLE KEYS */;
INSERT INTO `home_new` VALUES (1,'2015-05-14','恭喜周昱和徐地虎博士顺利毕业答辩！','Cheers! Doc. Yu Zhou and Di-Hu Xu graduate!');
/*!40000 ALTER TABLE `home_new` ENABLE KEYS */;


--
-- Table structure for table `home_news`
--

DROP TABLE IF EXISTS `home_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` date NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_news`
--


/*!40000 ALTER TABLE `home_news` DISABLE KEYS */;
INSERT INTO `home_news` VALUES (1,'2015-05-13','恭喜周昱和徐地虎博士顺利毕业答辩！'),(2,'2015-05-13','今天开组会');
/*!40000 ALTER TABLE `home_news` ENABLE KEYS */;


--
-- Table structure for table `home_publications`
--

DROP TABLE IF EXISTS `home_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pdf` varchar(100) NOT NULL,
  `pubtitle` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `jounal` varchar(50) NOT NULL,
  `vol` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_publications`
--


/*!40000 ALTER TABLE `home_publications` DISABLE KEYS */;
INSERT INTO `home_publications` VALUES (1,'pdf/1.pdf','Study on quasiperiodic Ta/Al multilayer films by x-ray diffraction','R. W. Peng, A. Hu and S. S. Jiang','Appl. Phys. Lett.',59,2512,1991),(2,'pdf/2.pdf','Structural characterization of 3-component Fibonacci Ta/Al multilayer films','R. W. Peng, A. Hu, S. S. Jiang, C. S. Zhang and D. Feng','Phys. Rev. B',46,7816,1992);
/*!40000 ALTER TABLE `home_publications` ENABLE KEYS */;


--
-- Table structure for table `home_research`
--

DROP TABLE IF EXISTS `home_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_research` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `describe` varchar(500) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_research`
--



--
-- Table structure for table `home_researches`
--

DROP TABLE IF EXISTS `home_researches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_researches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `describe` varchar(1000) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_researches`
--


/*!40000 ALTER TABLE `home_researches` DISABLE KEYS */;
INSERT INTO `home_researches` VALUES (1,'Plasmonics and Photonics','Making metals transparent, which could lead to fascinating applications, has long been pursued. Here we demonstrate that with narrow slit arrays metallic plates become transparent for extremely broad bandwidths; the high transmission efficiency is insensitive to the metal thickness. This work provides a guideline to develop novel devices, including transparent conducting panels, broadband metamaterials, and antireflective solar cells.','research/plasmonic.gif'),(2,'Metamaterial','In this Letter, we construct a metamaterial with dual-mode electromagnetically induced transparency (EIT)-like behavior by introducing “bright atoms,” “quasi-dark atoms,” and “dark atoms” simultaneously. The dual-mode EIT-like behavior has been demonstrated both experimentally and theoretically in terahertz (THz) regime. At two EIT-like modes, slow light is also observed as two time-delayed wave packets, and the effective group refractive index can reach 102. Furthermore, stable dual-mode EIT-like behavior is verified in this metamaterial for a wide range of oblique incident angles.','research/metamaterial.jpg'),(3,'Transformation Optics','We demonstrate in this work a unique approach for watching outside while hiding in a carpet cloaking based on transformation optics. Unlike conventional carpet cloaking, which screens all the incident electromagnetic waves, we break the cloak and allow incident light get into the carpet. Hence outside information is detected inside the cloak. To recover the invisible cloaking, complementary techniques are applied in the broken space. Consequently, a hiding-inside and watching-outside (HIWO) carpet cloak is sewed, which works as an invisible cloaking and allows surveillance of the outside at the same time. Our work provides a strategy for an ideal cloak with “hiding” and “watching” functions simultaneously.','research/transformation.png'),(4,'Acoustic Metamaterial','In this work, we demonstrate that acoustic waves can achieve extremely flat transmission through a metallic grating under oblique incidence within multiple frequency bands separated by Wood’s anomalies. At the low-frequency band, the transmission of acoustic wave is independent of the frequency and presents a flat curve with the transmission efficiency reaching about 100%; while at high-frequency bands, the transmission decreases to be lower flat curves due to the diffraction effect. The transmission efficiency is insensitive to the thickness of the grating. This phenomenon is verified by experiments, numerical simulations, and an analytical model. The broadband high transmission is attributed to the acoustic impedance matching between the air and the grating. This research may open up a field for various potential applications of acoustic gratings, including broadband sonic imaging and screening, grating interferometry, and antireflection cloaking.','research/acoustic.gif');
/*!40000 ALTER TABLE `home_researches` ENABLE KEYS */;


--
-- Table structure for table `home_researchs`
--

DROP TABLE IF EXISTS `home_researchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_researchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `describe` varchar(1000) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `describe_en` varchar(1000) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_researchs`
--


/*!40000 ALTER TABLE `home_researchs` DISABLE KEYS */;
INSERT INTO `home_researchs` VALUES (1,'等离激元与光子晶体','ss','Plasmonics and Photonics','aa','research/plasmonic.gif'),(2,'超构材料','ssa','Metamaterial','aaa','research/metamaterial.jpg'),(3,'变换光学','aaa','Transformation Optics','aaaa','research/transformation.png'),(4,'声学超构材料','qqq','Acoustic Metamaterial','tytyty','research/acoustic.gif');
/*!40000 ALTER TABLE `home_researchs` ENABLE KEYS */;


--
-- Table structure for table `home_slide`
--

DROP TABLE IF EXISTS `home_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `caption` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_slide`
--


/*!40000 ALTER TABLE `home_slide` DISABLE KEYS */;
INSERT INTO `home_slide` VALUES (1,'slide/sld0.png','hezhao'),(2,'slide/sld1.png','am'),(3,'slide/sld2.png','metasurface'),(4,'slide/sld3.png','graphe'),(5,'slide/sld4.png','acoustic'),(6,'slide/sld5.png','yucha'),(7,'slide/sld6.png','am');
/*!40000 ALTER TABLE `home_slide` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-14 15:13:49
