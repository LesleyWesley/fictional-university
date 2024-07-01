-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-04-05 21:48:06','2024-04-05 21:48:06','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just a pretty cool university.','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','lesleywesleycodes@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:140:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','41','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','39','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1727905686','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','57155','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:8:{i:1719866887;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1719870487;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1719870581;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1719870582;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1720299314;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1720302487;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1720387793;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"6.5\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.5-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.5\";s:7:\"version\";s:5:\"6.5.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:3:\"6.5\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.5-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.5-rollback-0.zip\";}s:7:\"current\";s:5:\"6.5.5\";s:7:\"version\";s:5:\"6.5.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:3:\"6.5\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1719862680;s:15:\"version_checked\";s:3:\"6.5\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1712436034;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1719862681;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (133,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (146,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (150,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (165,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (166,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (167,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (172,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (173,'new_admin_email','lesleywesleycodes@gmail.com','yes');
INSERT INTO `wp_options` VALUES (183,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":2,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (192,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (287,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (351,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (445,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (449,'acf_first_activated_version','6.3.0','yes');
INSERT INTO `wp_options` VALUES (450,'acf_site_health','{\"version\":\"6.3.0\",\"plugin_type\":\"Free\",\"wp_version\":\"6.5\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Fictional University\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"2\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"date_picker\":1,\"relationship\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"5\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1716758993,\"event_first_created_field_group\":1716759476,\"last_updated\":1719862681}','no');
INSERT INTO `wp_options` VALUES (452,'acf_version','6.3.0','yes');
INSERT INTO `wp_options` VALUES (584,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1719862681;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3096880\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3096880\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.5.5\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (588,'_site_transient_timeout_theme_roots','1719864481','no');
INSERT INTO `wp_options` VALUES (589,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1712520607:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1716748630:1');
INSERT INTO `wp_postmeta` VALUES (13,12,'_edit_lock','1712521247:1');
INSERT INTO `wp_postmeta` VALUES (14,15,'_edit_lock','1713650291:1');
INSERT INTO `wp_postmeta` VALUES (16,3,'_edit_lock','1713049869:1');
INSERT INTO `wp_postmeta` VALUES (17,20,'_edit_lock','1713649001:1');
INSERT INTO `wp_postmeta` VALUES (18,22,'_edit_lock','1713648990:1');
INSERT INTO `wp_postmeta` VALUES (19,24,'_edit_lock','1713134283:1');
INSERT INTO `wp_postmeta` VALUES (20,26,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (21,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (22,26,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (23,26,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (24,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (25,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (26,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (27,26,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (28,26,'_menu_item_orphaned','1713648491');
INSERT INTO `wp_postmeta` VALUES (29,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (30,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (31,27,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (32,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (33,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (34,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (35,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (36,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (38,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (39,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (40,28,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (41,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (42,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (43,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (44,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (45,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (46,28,'_menu_item_orphaned','1713648491');
INSERT INTO `wp_postmeta` VALUES (47,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (48,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (49,29,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (50,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (51,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (52,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (53,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (54,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (65,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (66,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (67,31,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (68,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (69,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (70,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (71,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (72,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (73,31,'_menu_item_orphaned','1713648491');
INSERT INTO `wp_postmeta` VALUES (74,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (75,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (76,32,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (77,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (78,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (79,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (80,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (81,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (82,32,'_menu_item_orphaned','1713648491');
INSERT INTO `wp_postmeta` VALUES (83,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (84,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (85,33,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (86,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (87,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (88,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (89,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (90,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (91,33,'_menu_item_orphaned','1713648491');
INSERT INTO `wp_postmeta` VALUES (92,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (93,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (94,34,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (95,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (96,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (97,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (98,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (99,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (100,34,'_menu_item_orphaned','1713648491');
INSERT INTO `wp_postmeta` VALUES (104,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (105,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (106,37,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (107,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (108,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (109,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (110,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (111,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (113,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (114,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (115,38,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (116,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (117,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (118,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (119,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (120,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (122,39,'_edit_lock','1713726624:1');
INSERT INTO `wp_postmeta` VALUES (123,41,'_edit_lock','1713726645:1');
INSERT INTO `wp_postmeta` VALUES (124,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (125,45,'_edit_lock','1716760232:1');
INSERT INTO `wp_postmeta` VALUES (126,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (127,46,'_edit_lock','1719173156:1');
INSERT INTO `wp_postmeta` VALUES (128,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (129,47,'_edit_lock','1717353547:1');
INSERT INTO `wp_postmeta` VALUES (130,52,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (133,47,'event-date','July 1st, 2017');
INSERT INTO `wp_postmeta` VALUES (134,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (135,54,'_edit_lock','1716759364:1');
INSERT INTO `wp_postmeta` VALUES (136,47,'event_date','20220708');
INSERT INTO `wp_postmeta` VALUES (137,47,'_event_date','field_6653aa505ee57');
INSERT INTO `wp_postmeta` VALUES (138,46,'event_date','20240724');
INSERT INTO `wp_postmeta` VALUES (139,46,'_event_date','field_6653aa505ee57');
INSERT INTO `wp_postmeta` VALUES (140,45,'event_date','20240801');
INSERT INTO `wp_postmeta` VALUES (141,45,'_event_date','field_6653aa505ee57');
INSERT INTO `wp_postmeta` VALUES (142,56,'_edit_lock','1717278927:1');
INSERT INTO `wp_postmeta` VALUES (143,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,56,'event_date','20241215');
INSERT INTO `wp_postmeta` VALUES (145,56,'_event_date','field_6653aa505ee57');
INSERT INTO `wp_postmeta` VALUES (146,57,'_edit_lock','1717352824:1');
INSERT INTO `wp_postmeta` VALUES (147,59,'_edit_lock','1717356810:1');
INSERT INTO `wp_postmeta` VALUES (148,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (149,59,'event_date','20161231');
INSERT INTO `wp_postmeta` VALUES (150,59,'_event_date','field_6653aa505ee57');
INSERT INTO `wp_postmeta` VALUES (153,63,'_edit_lock','1717961178:1');
INSERT INTO `wp_postmeta` VALUES (154,64,'_edit_lock','1717961192:1');
INSERT INTO `wp_postmeta` VALUES (155,65,'_edit_lock','1717961217:1');
INSERT INTO `wp_postmeta` VALUES (156,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (157,66,'_edit_lock','1718142450:1');
INSERT INTO `wp_postmeta` VALUES (159,46,'related_programs','a:2:{i:0;s:2:\"64\";i:1;s:2:\"63\";}');
INSERT INTO `wp_postmeta` VALUES (160,46,'_related_programs','field_6668c5bc3de47');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-04-05 21:48:06','2024-04-05 21:48:06','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-04-05 21:48:06','2024-04-05 21:48:06','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-04-05 21:48:06','2024-04-05 21:48:06','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-04-05 21:48:06','2024-04-05 21:48:06','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-04-05 21:48:06','2024-04-05 21:48:06','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>This is the Privacy Policy content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-04-13 23:13:14','2024-04-13 23:13:14','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-04-05 21:49:27','2024-04-05 21:49:27','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-04-05 21:49:27','2024-04-05 21:49:27','',0,'http://fictional-university.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-04-07 20:09:54','2024-04-07 20:09:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2024-04-07 20:12:29','2024-04-07 20:12:29','',0,'http://fictional-university.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-04-07 20:09:54','2024-04-07 20:09:54','<!-- wp:paragraph -->\n<p>jifjels jeisljsifj a;sliejfas;lefjisl</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','6-revision-v1','','','2024-04-07 20:09:54','2024-04-07 20:09:54','',6,'http://fictional-university.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-04-07 20:10:34','2024-04-07 20:10:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','We won an award!','Check out this award we won!','publish','open','open','','second-test-post','','','2024-05-26 18:37:30','2024-05-26 18:37:30','',0,'http://fictional-university.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-04-07 20:10:34','2024-04-07 20:10:34','<!-- wp:paragraph -->\n<p>jilfjijesljeifjei jiljseijfa;seifj; jlisjef jfljesla;slejwoj </p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','8-revision-v1','','','2024-04-07 20:10:34','2024-04-07 20:10:34','',8,'http://fictional-university.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-04-07 20:12:16','2024-04-07 20:12:16','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','8-revision-v1','','','2024-04-07 20:12:16','2024-04-07 20:12:16','',8,'http://fictional-university.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-04-07 20:12:29','2024-04-07 20:12:29','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','6-revision-v1','','','2024-04-07 20:12:29','2024-04-07 20:12:29','',6,'http://fictional-university.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-04-07 20:22:59','2024-04-07 20:22:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2024-04-07 20:22:59','2024-04-07 20:22:59','',0,'http://fictional-university.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-04-07 20:22:59','2024-04-07 20:22:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','12-revision-v1','','','2024-04-07 20:22:59','2024-04-07 20:22:59','',12,'http://fictional-university.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-04-13 23:06:43','2024-04-13 23:06:43','<!-- wp:paragraph -->\n<p>This is the About Page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2024-04-13 23:06:43','2024-04-13 23:06:43','',0,'http://fictional-university.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-04-13 23:08:03','2024-04-13 23:08:03','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-04-13 23:08:03','2024-04-13 23:08:03','',3,'http://fictional-university.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-04-13 23:13:14','2024-04-13 23:13:14','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>This is the Privacy Policy content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-04-13 23:13:14','2024-04-13 23:13:14','',3,'http://fictional-university.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-04-14 22:18:44','2024-04-14 22:18:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu, ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-04-20 21:39:05','2024-04-20 21:39:05','',15,'http://fictional-university.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-04-14 22:18:44','2024-04-14 22:18:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','20-revision-v1','','','2024-04-14 22:18:44','2024-04-14 22:18:44','',20,'http://fictional-university.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-04-14 22:19:12','2024-04-14 22:19:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget ar,cu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2024-04-20 21:38:53','2024-04-20 21:38:53','',15,'http://fictional-university.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-04-14 22:19:12','2024-04-14 22:19:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','22-revision-v1','','','2024-04-14 22:19:12','2024-04-14 22:19:12','',22,'http://fictional-university.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-04-14 22:38:00','2024-04-14 22:38:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2024-04-14 22:38:00','2024-04-14 22:38:00','',3,'http://fictional-university.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-04-14 22:38:00','2024-04-14 22:38:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','24-revision-v1','','','2024-04-14 22:38:00','2024-04-14 22:38:00','',24,'http://fictional-university.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-04-20 21:28:11','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-04-20 21:28:11','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-04-20 21:30:21','2024-04-20 21:29:48',' ','','','publish','closed','closed','','27','','','2024-04-20 21:30:21','2024-04-20 21:30:21','',0,'http://fictional-university.local/?p=27',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-04-20 21:28:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-20 21:28:11','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-04-20 21:30:21','2024-04-20 21:29:48',' ','','','publish','closed','closed','','29','','','2024-04-20 21:30:21','2024-04-20 21:30:21','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-04-20 21:28:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-20 21:28:11','0000-00-00 00:00:00','',16,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-04-20 21:28:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-20 21:28:11','0000-00-00 00:00:00','',16,'http://fictional-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-04-20 21:28:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-20 21:28:11','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-04-20 21:28:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-04-20 21:28:11','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-04-20 21:37:26','2024-04-20 21:37:26','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget ar,cu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','22-revision-v1','','','2024-04-20 21:37:26','2024-04-20 21:37:26','',22,'http://fictional-university.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-04-20 21:37:43','2024-04-20 21:37:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu non diam phasellus vestibulum lorem sed risus ultricies tristique. Sodales ut etiam sit amet nisl purus in mollis nunc. Duis ut diam quam nulla porttitor massa id neque aliquam. Sed risus ultricies tristique nulla. Aenean euismod elementum nisi quis. Congue nisi vitae suscipit tellus. Donec pretium vulputate sapien nec. Id interdum velit laoreet id donec. Neque ornare aenean euismod elementum. In ante metus dictum at. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Lorem sed risus ultricies tristique nulla. Vestibulum morbi blandit cursus risus at ultrices. Sociis natoque penatibus et magnis dis parturient. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu, ac tortor dignissim convallis aenean et. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vulputate odio ut enim blandit volutpat maecenas. Fermentum posuere urna nec tincidunt praesent semper feugiat. Feugiat nibh sed pulvinar proin gravida hendrerit. Vel risus commodo viverra maecenas accumsan lacus. Amet consectetur adipiscing elit ut. Id aliquet risus feugiat in ante metus dictum at tempor. Id diam vel quam elementum pulvinar etiam non quam lacus. Nunc eget lorem dolor sed viverra ipsum. Posuere ac ut consequat semper. Non sodales neque sodales ut etiam sit amet nisl purus. Leo duis ut diam quam nulla porttitor. Semper quis lectus nulla at volutpat diam ut venenatis. Blandit aliquam etiam erat velit scelerisque in dictum. Amet risus nullam eget felis. Lorem dolor sed viverra ipsum.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','20-revision-v1','','','2024-04-20 21:37:43','2024-04-20 21:37:43','',20,'http://fictional-university.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-04-20 21:50:00','2024-04-20 21:50:00',' ','','','publish','closed','closed','','37','','','2024-04-20 21:50:00','2024-04-20 21:50:00','',0,'http://fictional-university.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-04-20 21:50:00','2024-04-20 21:50:00',' ','','','publish','closed','closed','','38','','','2024-04-20 21:50:00','2024-04-20 21:50:00','',0,'http://fictional-university.local/?p=38',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-04-21 19:12:34','2024-04-21 19:12:34','','Home','','publish','closed','closed','','home','','','2024-04-21 19:12:34','2024-04-21 19:12:34','',0,'http://fictional-university.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-04-21 19:12:34','2024-04-21 19:12:34','','Home','','inherit','closed','closed','','39-revision-v1','','','2024-04-21 19:12:34','2024-04-21 19:12:34','',39,'http://fictional-university.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-04-21 19:12:57','2024-04-21 19:12:57','','Blog','','publish','closed','closed','','blog','','','2024-04-21 19:12:57','2024-04-21 19:12:57','',0,'http://fictional-university.local/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-04-21 19:12:57','2024-04-21 19:12:57','','Blog','','inherit','closed','closed','','41-revision-v1','','','2024-04-21 19:12:57','2024-04-21 19:12:57','',41,'http://fictional-university.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-05-12 23:10:19','2024-05-12 23:10:19','This is some dummy text.  I don\'t feel like googling lorem ipsum.','Math Meetup','','publish','closed','closed','','math-meetup','','','2024-05-26 21:50:32','2024-05-26 21:50:32','',0,'http://fictional-university.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-05-12 23:11:15','2024-05-12 23:11:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed. Morbi tristique senectus et netus. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Sed risus pretium quam vulputate. Placerat vestibulum lectus mauris ultrices eros in cursus. Ultrices eros in cursus turpis massa. Urna neque viverra justo nec ultrices dui sapien eget. Pharetra convallis posuere morbi leo urna molestie at elementum. Dui id ornare arcu odio','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2024-06-23 20:03:19','2024-06-23 20:03:19','',0,'http://fictional-university.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-05-12 23:11:34','2024-05-12 23:11:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed. Morbi tristique senectus et netus. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Sed risus pretium quam vulputate. Placerat vestibulum lectus mauris ultrices eros in cursus. Ultrices eros in cursus turpis massa. Urna neque viverra justo nec ultrices dui sapien eget. Pharetra convallis posuere morbi leo urna molestie at elementum. Dui id ornare arcu odio','Poetry Day','Poetry Day is going to be amazing!','publish','closed','closed','','poetry-day','','','2024-05-27 18:17:53','2024-05-27 18:17:53','',0,'http://fictional-university.local/?post_type=event&#038;p=47',0,'event','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-05-26 18:37:10','2024-05-26 18:37:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','Second Test Post','This is t','inherit','closed','closed','','8-autosave-v1','','','2024-05-26 18:37:10','2024-05-26 18:37:10','',8,'http://fictional-university.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-05-26 18:37:30','2024-05-26 18:37:30','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu ac tortor dignissim convallis aenean et. Imperdiet proin fermentum leo vel orci porta non pulvinar. Sit amet commodo nulla facilisi nullam vehicula ipsum a arcu. Et tortor at risus viverra adipiscing at in tellus integer. Pellentesque nec nam aliquam sem et tortor. Aliquam malesuada bibendum arcu vitae. Sodales ut etiam sit amet nisl purus in mollis. Amet massa vitae tortor condimentum lacinia quis vel. Dictumst quisque sagittis purus sit amet volutpat consequat. Sed arcu non odio euismod lacinia. Velit euismod in pellentesque massa. Faucibus turpis in eu mi. Augue ut lectus arcu bibendum at varius vel. Feugiat nisl pretium fusce id velit ut tortor pretium viverra. Tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus. Ut tellus elementum sagittis vitae et leo duis ut diam. Quis vel eros donec ac odio.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tincidunt eget nullam non nisi. Massa eget egestas purus viverra accumsan in. Nisl condimentum id venenatis a condimentum vitae. Dictum sit amet justo donec enim diam vulputate ut pharetra. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Mauris cursus mattis molestie a iaculis at. Sit amet tellus cras adipiscing enim eu. Amet luctus venenatis lectus magna fringilla urna porttitor. Purus semper eget duis at tellus at. Nunc pulvinar sapien et ligula ullamcorper.</p>\n<!-- /wp:paragraph -->','We won an award!','Check out this award we won!','inherit','closed','closed','','8-revision-v1','','','2024-05-26 18:37:30','2024-05-26 18:37:30','',8,'http://fictional-university.local/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-05-26 21:37:56','2024-05-26 21:37:56','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_6653aa4f7fff2','','','2024-05-26 21:37:56','2024-05-26 21:37:56','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=54',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-05-26 21:37:56','2024-05-26 21:37:56','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_6653aa505ee57','','','2024-05-26 21:37:56','2024-05-26 21:37:56','',54,'http://fictional-university.local/?post_type=acf-field&p=55',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-06-01 21:55:17','2024-06-01 21:55:17','<!-- wp:paragraph -->\n<p>Don\'t miss out on our finals studying extravaganza!</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2024-06-01 21:55:17','2024-06-01 21:55:17','',0,'http://fictional-university.local/?post_type=event&#038;p=56',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-06-02 18:29:15','2024-06-02 18:29:15','','Past Events','','publish','closed','closed','','past-events','','','2024-06-02 18:29:15','2024-06-02 18:29:15','',0,'http://fictional-university.local/?page_id=57',0,'page','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-06-02 18:29:15','2024-06-02 18:29:15','','Past Events','','inherit','closed','closed','','57-revision-v1','','','2024-06-02 18:29:15','2024-06-02 18:29:15','',57,'http://fictional-university.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-06-02 18:42:30','2024-06-02 18:42:30','<!-- wp:paragraph -->\n<p>Happy new year!</p>\n<!-- /wp:paragraph -->','New Year 2016','','publish','closed','closed','','new-year-2016','','','2024-06-02 19:33:30','2024-06-02 19:33:30','',0,'http://fictional-university.local/?post_type=event&#038;p=59',0,'event','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2024-06-09 19:28:38','2024-06-09 19:28:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi enim nunc faucibus a pellentesque. Odio facilisis mauris sit amet massa vitae tortor condimentum. Quam viverra orci sagittis eu volutpat odio facilisis. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. Nisl nunc mi ipsum faucibus vitae. Mattis nunc sed blandit libero volutpat sed cras. At consectetur lorem donec massa sapien faucibus et molestie. Sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Quam viverra orci sagittis eu volutpat odio. Sollicitudin ac orci phasellus egestas tellus rutrum.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2024-06-09 19:28:38','2024-06-09 19:28:38','',0,'http://fictional-university.local/?post_type=program&#038;p=63',0,'program','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-06-09 19:28:55','2024-06-09 19:28:55','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi enim nunc faucibus a pellentesque. Odio facilisis mauris sit amet massa vitae tortor condimentum. Quam viverra orci sagittis eu volutpat odio facilisis. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. Nisl nunc mi ipsum faucibus vitae. Mattis nunc sed blandit libero volutpat sed cras. At consectetur lorem donec massa sapien faucibus et molestie. Sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Quam viverra orci sagittis eu volutpat odio. Sollicitudin ac orci phasellus egestas tellus rutrum.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2024-06-09 19:28:55','2024-06-09 19:28:55','',0,'http://fictional-university.local/?post_type=program&#038;p=64',0,'program','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-06-09 19:29:08','2024-06-09 19:29:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi enim nunc faucibus a pellentesque. Odio facilisis mauris sit amet massa vitae tortor condimentum. Quam viverra orci sagittis eu volutpat odio facilisis. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. Nisl nunc mi ipsum faucibus vitae. Mattis nunc sed blandit libero volutpat sed cras. At consectetur lorem donec massa sapien faucibus et molestie. Sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Quam viverra orci sagittis eu volutpat odio. Sollicitudin ac orci phasellus egestas tellus rutrum.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2024-06-09 19:29:08','2024-06-09 19:29:08','',0,'http://fictional-university.local/?post_type=program&#038;p=65',0,'program','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-06-11 21:49:49','2024-06-11 21:49:49','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_6668c5bc1dc7e','','','2024-06-11 21:49:49','2024-06-11 21:49:49','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=66',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-06-11 21:49:48','2024-06-11 21:49:48','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Program(s)','related_programs','publish','closed','closed','','field_6668c5bc3de47','','','2024-06-11 21:49:48','2024-06-11 21:49:48','',66,'http://fictional-university.local/?post_type=acf-field&p=67',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,3,0);
INSERT INTO `wp_term_relationships` VALUES (38,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Header Menu','main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Super Amazing Menu','super-amazing-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Lesley');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','This is my biography.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"895edd97feb52e2a12e2c5c9cccc30054bc8144cefde47dd9c55a7da105a83fd\";a:4:{s:10:\"expiration\";i:1719345533;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36\";s:5:\"login\";i:1719172733;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','60');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-26T18:36:27.902Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:12:\"post-excerpt\";}}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'LWesley','$P$BDgdUBmXNixntq1OU5XwqprBZKyaGC0','lwesley','lesleywesleycodes@gmail.com','http://fictional-university.local','2024-04-05 21:48:06','',0,'Lesley');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-01 15:04:31
