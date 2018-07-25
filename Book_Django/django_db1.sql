# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: django_db1
# ------------------------------------------------------
# Server version 5.5.35

DROP DATABASE IF EXISTS `django_db1`;
CREATE DATABASE `django_db1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `django_db1`;

#
# Source for table auth_group
#

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_group
#

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_group_permissions
#

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_group_permissions
#

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_permission
#

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_permission
#

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` VALUES (4,'Can add permission',2,'add_permission');
INSERT INTO `auth_permission` VALUES (5,'Can change permission',2,'change_permission');
INSERT INTO `auth_permission` VALUES (6,'Can delete permission',2,'delete_permission');
INSERT INTO `auth_permission` VALUES (7,'Can add group',3,'add_group');
INSERT INTO `auth_permission` VALUES (8,'Can change group',3,'change_group');
INSERT INTO `auth_permission` VALUES (9,'Can delete group',3,'delete_group');
INSERT INTO `auth_permission` VALUES (10,'Can add user',4,'add_user');
INSERT INTO `auth_permission` VALUES (11,'Can change user',4,'change_user');
INSERT INTO `auth_permission` VALUES (12,'Can delete user',4,'delete_user');
INSERT INTO `auth_permission` VALUES (13,'Can add content type',5,'add_contenttype');
INSERT INTO `auth_permission` VALUES (14,'Can change content type',5,'change_contenttype');
INSERT INTO `auth_permission` VALUES (15,'Can delete content type',5,'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16,'Can add session',6,'add_session');
INSERT INTO `auth_permission` VALUES (17,'Can change session',6,'change_session');
INSERT INTO `auth_permission` VALUES (18,'Can delete session',6,'delete_session');
INSERT INTO `auth_permission` VALUES (19,'Can add book',7,'add_book');
INSERT INTO `auth_permission` VALUES (20,'Can change book',7,'change_book');
INSERT INTO `auth_permission` VALUES (21,'Can delete book',7,'delete_book');
INSERT INTO `auth_permission` VALUES (22,'Can add book',8,'add_book');
INSERT INTO `auth_permission` VALUES (23,'Can change book',8,'change_book');
INSERT INTO `auth_permission` VALUES (24,'Can delete book',8,'delete_book');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_user
#

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_user
#

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_user_groups
#

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_user_groups
#

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table auth_user_user_permissions
#

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table auth_user_user_permissions
#

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table book_book
#

DROP TABLE IF EXISTS `book_book`;
CREATE TABLE `book_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Dumping data for table book_book
#

LOCK TABLES `book_book` WRITE;
/*!40000 ALTER TABLE `book_book` DISABLE KEYS */;
INSERT INTO `book_book` VALUES (1,'射雕英雄传','金庸');
INSERT INTO `book_book` VALUES (4,'完美世界','辰东');
INSERT INTO `book_book` VALUES (9,'圣墟','辰东');
INSERT INTO `book_book` VALUES (11,'遮天','辰东');
/*!40000 ALTER TABLE `book_book` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_admin_log
#

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table django_admin_log
#

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_content_type
#

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Dumping data for table django_content_type
#

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'auth','permission');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (7,'front','book');
INSERT INTO `django_content_type` VALUES (8,'book','book');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_migrations
#

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Dumping data for table django_migrations
#

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-07-23 03:01:10');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2018-07-23 03:01:13');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2018-07-23 03:01:13');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2018-07-23 03:01:13');
INSERT INTO `django_migrations` VALUES (5,'contenttypes','0002_remove_content_type_name','2018-07-23 03:01:13');
INSERT INTO `django_migrations` VALUES (6,'auth','0002_alter_permission_name_max_length','2018-07-23 03:01:13');
INSERT INTO `django_migrations` VALUES (7,'auth','0003_alter_user_email_max_length','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (8,'auth','0004_alter_user_username_opts','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (9,'auth','0005_alter_user_last_login_null','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (10,'auth','0006_require_contenttypes_0002','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (11,'auth','0007_alter_validators_add_error_messages','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (12,'auth','0008_alter_user_username_max_length','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (13,'auth','0009_alter_user_last_name_max_length','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (14,'front','0001_initial','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (15,'sessions','0001_initial','2018-07-23 03:01:14');
INSERT INTO `django_migrations` VALUES (16,'book','0001_initial','2018-07-23 06:34:52');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table django_session
#

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table django_session
#

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table first
#

DROP TABLE IF EXISTS `first`;
CREATE TABLE `first` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Dumping data for table first
#

LOCK TABLES `first` WRITE;
/*!40000 ALTER TABLE `first` DISABLE KEYS */;
INSERT INTO `first` VALUES (5,'辰东','圣墟');
/*!40000 ALTER TABLE `first` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table front_book
#

DROP TABLE IF EXISTS `front_book`;
CREATE TABLE `front_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table front_book
#

LOCK TABLES `front_book` WRITE;
/*!40000 ALTER TABLE `front_book` DISABLE KEYS */;
INSERT INTO `front_book` VALUES (1,'圣墟','辰东');
INSERT INTO `front_book` VALUES (2,'遮天','辰东');
/*!40000 ALTER TABLE `front_book` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
