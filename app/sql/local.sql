-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-06-16 03:21:27','2021-06-16 03:21:27','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://gymfitness.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://gymfitness.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','GymFitness','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:20:\"gymfitness_clases/?$\";s:37:\"index.php?post_type=gymfitness_clases\";s:50:\"gymfitness_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:45:\"gymfitness_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:37:\"gymfitness_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=gymfitness_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"gymfitness_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"gymfitness_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"gymfitness_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"gymfitness_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"gymfitness_clases/(.+?)/embed/?$\";s:50:\"index.php?gymfitness_clases=$matches[1]&embed=true\";s:36:\"gymfitness_clases/(.+?)/trackback/?$\";s:44:\"index.php?gymfitness_clases=$matches[1]&tb=1\";s:56:\"gymfitness_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:44:\"gymfitness_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&paged=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&cpage=$matches[2]\";s:40:\"gymfitness_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:7:{i:0;s:33:\"acf-openstreetmap-field/index.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:47:\"gymfitness_post_types/gymfitness_post_types.php\";i:5;s:41:\"gymfitness_widgets/gymfitness_widgets.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','gymfitness','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','gymfitness','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
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
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:11:\"Categorías\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:33:\"acf-openstreetmap-field/index.php\";a:2:{i:0;s:33:\"ACFFieldOpenstreetmap\\Core\\Plugin\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','29','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','15','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1639365685','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:17:\"Últimas entradas\";s:6:\"number\";i:4;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar_1\";a:2:{i:0;s:14:\"recent-posts-3\";i:1;s:12:\"categories-3\";}s:9:\"sidebar_2\";a:1:{i:0;s:12:\"foo_widget-3\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:6:{i:1625030490;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625066490;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625109689;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625114454;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625114455;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','0k+i%%+K2=D@6}M(>y!z8%c=]x5:uZJ7C5jsfGX6 CuJl<1)guKIKFe(j3.*Xeyw','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','f9k- lf8whx7^didfkvzW,bRNc,^vfj!yv7/2w]:*30u]BBPADh=9Y77zTR(qCv;','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623864831;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}}','yes');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (148,'recently_activated','a:1:{s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";i:1624679822;}','yes');
INSERT INTO `wp_options` VALUES (153,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'WPLANG','es_CO','yes');
INSERT INTO `wp_options` VALUES (157,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (183,'current_theme','GymFitnessHealth','yes');
INSERT INTO `wp_options` VALUES (185,'theme_mods_gymfitness','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (187,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (198,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (210,'_transient_health-check-site-status-result','{\"good\":\"17\",\"recommended\":\"3\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (254,'recovery_mode_email_last_sent','1624501324','yes');
INSERT INTO `wp_options` VALUES (326,'acf_version','5.9.7','yes');
INSERT INTO `wp_options` VALUES (378,'widget_my_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (381,'widget_gymfitness_clases','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (382,'widget_foo_widget','a:2:{i:3;a:1:{s:8:\"cantidad\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (388,'_site_transient_timeout_browser_d57bf7af33bc5b7923c68ca46271944f','1625101488','no');
INSERT INTO `wp_options` VALUES (389,'_site_transient_browser_d57bf7af33bc5b7923c68ca46271944f','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (390,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1625101489','no');
INSERT INTO `wp_options` VALUES (391,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (436,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (493,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1624665630;s:7:\"version\";s:5:\"5.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (495,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625024807;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (497,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625029191;s:7:\"checked\";a:1:{s:10:\"gymfitness\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:10:\"gymfitness\";a:6:{s:5:\"theme\";s:10:\"gymfitness\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/gymfitness/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/gymfitness.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (498,'secret_key','1k4W/wo0ZK_h[GpvnA,]5:KO^SV0RB z11=ejuMCUBD3u#D15.hv!lj}=7C;O)>!','no');
INSERT INTO `wp_options` VALUES (514,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625024808;s:7:\"checked\";a:7:{s:33:\"acf-openstreetmap-field/index.php\";s:5:\"1.3.2\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:47:\"gymfitness_post_types/gymfitness_post_types.php\";s:5:\"1.0.0\";s:41:\"gymfitness_widgets/gymfitness_widgets.php\";s:5:\"1.0.0\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"acf-openstreetmap-field/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/acf-openstreetmap-field\";s:4:\"slug\";s:23:\"acf-openstreetmap-field\";s:6:\"plugin\";s:33:\"acf-openstreetmap-field/index.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/acf-openstreetmap-field/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/acf-openstreetmap-field.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/acf-openstreetmap-field/assets/icon-256x256.png?rev=2117994\";s:2:\"1x\";s:76:\"https://ps.w.org/acf-openstreetmap-field/assets/icon-128x128.png?rev=2117994\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/acf-openstreetmap-field/assets/banner-1544x500.png?rev=2118002\";s:2:\"1x\";s:78:\"https://ps.w.org/acf-openstreetmap-field/assets/banner-772x250.png?rev=2118002\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (515,'acf_osm_provider_tokens','a:0:{}','no');
INSERT INTO `wp_options` VALUES (516,'acf_osm_providers','a:9:{s:13:\"OpenStreetMap\";a:1:{s:8:\"variants\";a:2:{s:2:\"CH\";s:1:\"0\";s:3:\"BZH\";s:1:\"0\";}}s:9:\"FreeMapSK\";s:1:\"0\";s:9:\"BasemapAT\";s:1:\"0\";s:6:\"nlmaps\";s:1:\"0\";s:8:\"NASAGIBS\";s:1:\"0\";s:3:\"NLS\";s:1:\"0\";s:10:\"JusticeMap\";s:1:\"0\";s:16:\"GeoportailFrance\";s:1:\"0\";s:8:\"OneMapSG\";s:1:\"0\";}','no');
INSERT INTO `wp_options` VALUES (517,'acf-openstreetmap-field_version','1.3.2','no');
INSERT INTO `wp_options` VALUES (593,'_site_transient_timeout_theme_roots','1625030990','no');
INSERT INTO `wp_options` VALUES (594,'_site_transient_theme_roots','a:1:{s:10:\"gymfitness\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (4,3,'_wp_trash_meta_time','1623864560');
INSERT INTO `wp_postmeta` VALUES (5,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_time','1623864566');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (10,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (11,1,'_wp_trash_meta_time','1623864723');
INSERT INTO `wp_postmeta` VALUES (12,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (13,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (14,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,9,'_edit_lock','1623866806:1');
INSERT INTO `wp_postmeta` VALUES (18,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (19,9,'_wp_trash_meta_time','1623867000');
INSERT INTO `wp_postmeta` VALUES (20,9,'_wp_desired_post_slug','nosotros');
INSERT INTO `wp_postmeta` VALUES (21,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (22,11,'_edit_lock','1624126400:1');
INSERT INTO `wp_postmeta` VALUES (23,13,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (24,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (25,13,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (26,13,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (27,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (28,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (29,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (30,13,'_menu_item_url','http://gymfitness.local/');
INSERT INTO `wp_postmeta` VALUES (31,13,'_menu_item_orphaned','1623876040');
INSERT INTO `wp_postmeta` VALUES (32,14,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (33,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (34,14,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (35,14,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (36,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (37,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (38,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (39,14,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (40,14,'_menu_item_orphaned','1623876040');
INSERT INTO `wp_postmeta` VALUES (41,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (42,15,'_edit_lock','1624852910:1');
INSERT INTO `wp_postmeta` VALUES (43,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (44,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (45,17,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (46,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (47,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (48,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (49,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (50,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (51,17,'_menu_item_orphaned','1623877643');
INSERT INTO `wp_postmeta` VALUES (52,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (53,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (54,18,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (55,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (56,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (57,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (58,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (59,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (60,18,'_menu_item_orphaned','1623877643');
INSERT INTO `wp_postmeta` VALUES (61,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (62,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (63,19,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (64,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (65,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (66,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (67,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (68,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (69,19,'_menu_item_orphaned','1623877656');
INSERT INTO `wp_postmeta` VALUES (70,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (71,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (72,20,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (73,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (74,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (75,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (76,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (77,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (78,20,'_menu_item_orphaned','1623877656');
INSERT INTO `wp_postmeta` VALUES (79,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (80,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (81,21,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (82,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (83,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (84,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (85,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (88,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (89,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (90,22,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (91,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (92,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (93,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (94,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (95,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (97,21,'_wp_old_date','2021-06-16');
INSERT INTO `wp_postmeta` VALUES (98,22,'_wp_old_date','2021-06-16');
INSERT INTO `wp_postmeta` VALUES (99,26,'_wp_attached_file','2021/06/nosotros.jpg');
INSERT INTO `wp_postmeta` VALUES (100,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:20:\"2021/06/nosotros.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"nosotros-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"nosotros-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"nosotros-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"nosotros-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"nosotros-350x640.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"nosotros-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"nosotros-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (101,11,'_thumbnail_id','26');
INSERT INTO `wp_postmeta` VALUES (102,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (103,27,'_wp_page_template','page-no-sidebar.php');
INSERT INTO `wp_postmeta` VALUES (104,27,'_edit_lock','1624747028:1');
INSERT INTO `wp_postmeta` VALUES (105,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (106,29,'_edit_lock','1624470948:1');
INSERT INTO `wp_postmeta` VALUES (107,29,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (108,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (109,31,'_wp_page_template','page-galerias.php');
INSERT INTO `wp_postmeta` VALUES (110,31,'_edit_lock','1624574925:1');
INSERT INTO `wp_postmeta` VALUES (111,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (112,33,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (113,33,'_edit_lock','1624136219:1');
INSERT INTO `wp_postmeta` VALUES (114,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (115,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (124,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (125,36,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (126,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (127,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (128,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (130,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,37,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (135,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (142,39,'_edit_lock','1624679663:1');
INSERT INTO `wp_postmeta` VALUES (143,44,'_wp_attached_file','2021/06/clase1.jpg');
INSERT INTO `wp_postmeta` VALUES (144,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:18:\"2021/06/clase1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase1-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase1-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (145,45,'_wp_attached_file','2021/06/clase2.jpg');
INSERT INTO `wp_postmeta` VALUES (146,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:18:\"2021/06/clase2.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase2-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase2-350x666.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:666;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase2-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase2-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (147,46,'_wp_attached_file','2021/06/clase3.jpg');
INSERT INTO `wp_postmeta` VALUES (148,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:760;s:4:\"file\";s:18:\"2021/06/clase3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase3-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase3-1024x707.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase3-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase3-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase3-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase3-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (149,47,'_wp_attached_file','2021/06/clase4.jpg');
INSERT INTO `wp_postmeta` VALUES (150,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:663;s:4:\"file\";s:18:\"2021/06/clase4.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase4-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase4-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase4-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase4-350x663.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:663;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase4-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase4-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase4-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (151,48,'_wp_attached_file','2021/06/clase5.jpg');
INSERT INTO `wp_postmeta` VALUES (152,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:18:\"2021/06/clase5.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase5-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase5-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase5-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase5-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase5-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (153,49,'_wp_attached_file','2021/06/clase6.jpg');
INSERT INTO `wp_postmeta` VALUES (154,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:18:\"2021/06/clase6.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase6-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase6-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase6-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase6-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase6-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (155,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,43,'_edit_lock','1624300230:1');
INSERT INTO `wp_postmeta` VALUES (157,43,'_thumbnail_id','49');
INSERT INTO `wp_postmeta` VALUES (158,43,'hora_inicio','07:00:00');
INSERT INTO `wp_postmeta` VALUES (159,43,'_hora_inicio','field_60d0d83101bb0');
INSERT INTO `wp_postmeta` VALUES (160,43,'hora_fin','08:00:00');
INSERT INTO `wp_postmeta` VALUES (161,43,'_hora_fin','field_60d0d8d485a41');
INSERT INTO `wp_postmeta` VALUES (162,43,'dias_clase','Todos los días');
INSERT INTO `wp_postmeta` VALUES (163,43,'_dias_clase','field_60d0d8ec85a42');
INSERT INTO `wp_postmeta` VALUES (164,49,'_wp_attachment_image_alt','Máquinas de Spinning');
INSERT INTO `wp_postmeta` VALUES (165,48,'_wp_attachment_image_alt','Pesas rusas en gimnasio');
INSERT INTO `wp_postmeta` VALUES (166,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (167,51,'_edit_lock','1624300542:1');
INSERT INTO `wp_postmeta` VALUES (168,51,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (169,51,'hora_inicio','18:00:00');
INSERT INTO `wp_postmeta` VALUES (170,51,'_hora_inicio','field_60d0d83101bb0');
INSERT INTO `wp_postmeta` VALUES (171,51,'hora_fin','19:30:00');
INSERT INTO `wp_postmeta` VALUES (172,51,'_hora_fin','field_60d0d8d485a41');
INSERT INTO `wp_postmeta` VALUES (173,51,'dias_clase','Martes y Jueves');
INSERT INTO `wp_postmeta` VALUES (174,51,'_dias_clase','field_60d0d8ec85a42');
INSERT INTO `wp_postmeta` VALUES (175,47,'_wp_attachment_image_alt','Personas practicando kickboxing');
INSERT INTO `wp_postmeta` VALUES (176,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (177,52,'_edit_lock','1624300679:1');
INSERT INTO `wp_postmeta` VALUES (178,52,'_thumbnail_id','47');
INSERT INTO `wp_postmeta` VALUES (179,52,'hora_inicio','18:00:00');
INSERT INTO `wp_postmeta` VALUES (180,52,'_hora_inicio','field_60d0d83101bb0');
INSERT INTO `wp_postmeta` VALUES (181,52,'hora_fin','20:00:00');
INSERT INTO `wp_postmeta` VALUES (182,52,'_hora_fin','field_60d0d8d485a41');
INSERT INTO `wp_postmeta` VALUES (183,52,'dias_clase','Jueves y Viernes');
INSERT INTO `wp_postmeta` VALUES (184,52,'_dias_clase','field_60d0d8ec85a42');
INSERT INTO `wp_postmeta` VALUES (185,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (186,53,'_edit_lock','1624300760:1');
INSERT INTO `wp_postmeta` VALUES (187,45,'_wp_attachment_image_alt','Barra de pesas');
INSERT INTO `wp_postmeta` VALUES (188,53,'_thumbnail_id','45');
INSERT INTO `wp_postmeta` VALUES (189,53,'hora_inicio','08:00:00');
INSERT INTO `wp_postmeta` VALUES (190,53,'_hora_inicio','field_60d0d83101bb0');
INSERT INTO `wp_postmeta` VALUES (191,53,'hora_fin','09:30:00');
INSERT INTO `wp_postmeta` VALUES (192,53,'_hora_fin','field_60d0d8d485a41');
INSERT INTO `wp_postmeta` VALUES (193,53,'dias_clase','Lunes y Martes');
INSERT INTO `wp_postmeta` VALUES (194,53,'_dias_clase','field_60d0d8ec85a42');
INSERT INTO `wp_postmeta` VALUES (195,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (196,54,'_edit_lock','1624317151:1');
INSERT INTO `wp_postmeta` VALUES (197,46,'_wp_attachment_image_alt','Eliptica');
INSERT INTO `wp_postmeta` VALUES (198,54,'_thumbnail_id','46');
INSERT INTO `wp_postmeta` VALUES (199,54,'hora_inicio','19:00:00');
INSERT INTO `wp_postmeta` VALUES (200,54,'_hora_inicio','field_60d0d83101bb0');
INSERT INTO `wp_postmeta` VALUES (201,54,'hora_fin','20:00:00');
INSERT INTO `wp_postmeta` VALUES (202,54,'_hora_fin','field_60d0d8d485a41');
INSERT INTO `wp_postmeta` VALUES (203,54,'dias_clase','Todos los días');
INSERT INTO `wp_postmeta` VALUES (204,54,'_dias_clase','field_60d0d8ec85a42');
INSERT INTO `wp_postmeta` VALUES (205,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (206,55,'_edit_lock','1624406316:1');
INSERT INTO `wp_postmeta` VALUES (207,55,'hora_inicio','06:00:00');
INSERT INTO `wp_postmeta` VALUES (208,55,'_hora_inicio','field_60d0d83101bb0');
INSERT INTO `wp_postmeta` VALUES (209,55,'hora_fin','07:00:00');
INSERT INTO `wp_postmeta` VALUES (210,55,'_hora_fin','field_60d0d8d485a41');
INSERT INTO `wp_postmeta` VALUES (211,55,'dias_clase','Lunes y Jueves');
INSERT INTO `wp_postmeta` VALUES (212,55,'_dias_clase','field_60d0d8ec85a42');
INSERT INTO `wp_postmeta` VALUES (219,44,'_wp_attachment_image_alt','Balón y yoga mats');
INSERT INTO `wp_postmeta` VALUES (220,55,'_thumbnail_id','44');
INSERT INTO `wp_postmeta` VALUES (221,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (222,57,'_edit_lock','1624410457:1');
INSERT INTO `wp_postmeta` VALUES (225,59,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (226,59,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (227,59,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (228,59,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (229,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (230,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (231,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (232,59,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (234,21,'_wp_old_date','2021-06-19');
INSERT INTO `wp_postmeta` VALUES (235,22,'_wp_old_date','2021-06-19');
INSERT INTO `wp_postmeta` VALUES (236,35,'_wp_old_date','2021-06-19');
INSERT INTO `wp_postmeta` VALUES (237,36,'_wp_old_date','2021-06-19');
INSERT INTO `wp_postmeta` VALUES (238,37,'_wp_old_date','2021-06-19');
INSERT INTO `wp_postmeta` VALUES (239,61,'_wp_attached_file','2021/06/cross-fit-1126999_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (240,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1283;s:4:\"file\";s:34:\"2021/06/cross-fit-1126999_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"cross-fit-1126999_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"cross-fit-1126999_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (241,62,'_wp_attached_file','2021/06/fitness-375472_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (242,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1276;s:4:\"file\";s:31:\"2021/06/fitness-375472_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"fitness-375472_1920-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"fitness-375472_1920-1536x1021.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,63,'_wp_attached_file','2021/06/fitness-1677212_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (244,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2021/06/fitness-1677212_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"fitness-1677212_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"fitness-1677212_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"48\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (245,64,'_wp_attached_file','2021/06/fitness-3767884_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (246,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:32:\"2021/06/fitness-3767884_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"fitness-3767884_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"fitness-3767884_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5500\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (247,65,'_wp_attached_file','2021/06/gym-455164_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (248,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1327;s:4:\"file\";s:27:\"2021/06/gym-455164_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"gym-455164_1920-1024x708.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:708;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"gym-455164_1920-1536x1062.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1062;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (249,66,'_wp_attached_file','2021/06/home-fitness-equipment-1840858_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (250,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:47:\"2021/06/home-fitness-equipment-1840858_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"home-fitness-equipment-1840858_1920-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"home-fitness-equipment-1840858_1920-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (251,67,'_wp_attached_file','2021/06/kettle-bell-592905_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (252,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:35:\"2021/06/kettle-bell-592905_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"kettle-bell-592905_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"kettle-bell-592905_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (253,68,'_wp_attached_file','2021/06/kettlebells-1677217_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (254,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:36:\"2021/06/kettlebells-1677217_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"kettlebells-1677217_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"kettlebells-1677217_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"40\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (255,69,'_wp_attached_file','2021/06/sports-1962574_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (256,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:31:\"2021/06/sports-1962574_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"sports-1962574_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"sports-1962574_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"560\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (257,70,'_wp_attached_file','2021/06/weight-lifting-1284616_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (258,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:39:\"2021/06/weight-lifting-1284616_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"weight-lifting-1284616_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (259,71,'_wp_attached_file','2021/06/weights-652486_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (260,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:31:\"2021/06/weights-652486_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"weights-652486_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"weights-652486_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (261,72,'_wp_attached_file','2021/06/weights-652488_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (262,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:31:\"2021/06/weights-652488_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"weights-652488_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"weights-652488_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (263,73,'_wp_attached_file','2021/06/weights-817635_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (264,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1184;s:4:\"file\";s:31:\"2021/06/weights-817635_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"weights-817635_1920-1024x631.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:631;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-768x474.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"weights-817635_1920-1536x947.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:947;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (265,74,'_wp_attached_file','2021/06/yoga-1994667_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (266,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:29:\"2021/06/yoga-1994667_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"yoga-1994667_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"yoga-1994667_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"62\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (267,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (268,57,'_wp_trash_meta_time','1624575078');
INSERT INTO `wp_postmeta` VALUES (269,57,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (270,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (271,77,'_edit_lock','1624575516:1');
INSERT INTO `wp_postmeta` VALUES (272,74,'_wp_attachment_image_alt','Mujeres estirando');
INSERT INTO `wp_postmeta` VALUES (273,77,'_thumbnail_id','74');
INSERT INTO `wp_postmeta` VALUES (278,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (279,79,'_edit_lock','1624575456:1');
INSERT INTO `wp_postmeta` VALUES (280,72,'_wp_attachment_image_alt','Mujer levantando mancuernas');
INSERT INTO `wp_postmeta` VALUES (281,79,'_thumbnail_id','72');
INSERT INTO `wp_postmeta` VALUES (284,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (285,82,'_edit_lock','1624575416:1');
INSERT INTO `wp_postmeta` VALUES (286,71,'_wp_attachment_image_alt','Mujer levantando barra');
INSERT INTO `wp_postmeta` VALUES (287,82,'_thumbnail_id','71');
INSERT INTO `wp_postmeta` VALUES (290,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (291,84,'_edit_lock','1624653168:1');
INSERT INTO `wp_postmeta` VALUES (292,68,'_wp_attachment_image_alt','3 pesas rusas de colores');
INSERT INTO `wp_postmeta` VALUES (293,84,'_thumbnail_id','68');
INSERT INTO `wp_postmeta` VALUES (308,88,'_form','<label> Tu Nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu Email\n    [email* your-email] </label>\n\n<label> Asunto\n    [text* your-subject] </label>\n\n<label> Tu Mensaje (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]');
INSERT INTO `wp_postmeta` VALUES (309,88,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <wordpress@gymfitness.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (310,88,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <wordpress@gymfitness.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (311,88,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}');
INSERT INTO `wp_postmeta` VALUES (312,88,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (313,88,'_locale','es_CO');
INSERT INTO `wp_postmeta` VALUES (314,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (315,90,'_edit_lock','1624679622:1');
INSERT INTO `wp_postmeta` VALUES (316,27,'ubicacion','a:7:{s:3:\"lat\";d:2.4289672000000002;s:3:\"lng\";d:-76.602264000000005;s:4:\"zoom\";i:17;s:7:\"markers\";a:1:{i:0;a:4:{s:5:\"label\";s:41:\"Calle 18, 190003 Popayán, Cauca Colombia\";s:13:\"default_label\";s:41:\"Calle 18, 190003 Popayán, Cauca Colombia\";s:3:\"lat\";d:2.4289196999999998;s:3:\"lng\";d:-76.603170599999999;}}s:7:\"address\";s:41:\"Calle 18, 190003 Popayán, Cauca Colombia\";s:6:\"layers\";a:1:{i:0;s:16:\"OpenStreetMap.CH\";}s:7:\"version\";s:5:\"1.3.2\";}');
INSERT INTO `wp_postmeta` VALUES (317,27,'_ubicacion','field_60d6a8e279091');
INSERT INTO `wp_postmeta` VALUES (318,92,'ubicacion','a:4:{s:7:\"address\";s:25:\"Popayán, Cauca, Colombia\";s:3:\"lat\";s:5:\"2.442\";s:3:\"lng\";s:8:\"-76.6063\";s:4:\"zoom\";s:2:\"17\";}');
INSERT INTO `wp_postmeta` VALUES (319,92,'_ubicacion','field_60d68efe94ca8');
INSERT INTO `wp_postmeta` VALUES (320,93,'ubicacion','a:4:{s:7:\"address\";s:25:\"Popayán, Cauca, Colombia\";s:3:\"lat\";s:5:\"2.442\";s:3:\"lng\";s:8:\"-76.6063\";s:4:\"zoom\";s:2:\"17\";}');
INSERT INTO `wp_postmeta` VALUES (321,93,'_ubicacion','field_60d68efe94ca8');
INSERT INTO `wp_postmeta` VALUES (322,94,'ubicacion','a:4:{s:7:\"address\";s:25:\"Popayán, Cauca, Colombia\";s:3:\"lat\";s:5:\"2.442\";s:3:\"lng\";s:8:\"-76.6063\";s:4:\"zoom\";s:2:\"17\";}');
INSERT INTO `wp_postmeta` VALUES (323,94,'_ubicacion','field_60d68efe94ca8');
INSERT INTO `wp_postmeta` VALUES (324,95,'ubicacion','a:4:{s:7:\"address\";s:25:\"Popayán, Cauca, Colombia\";s:3:\"lat\";s:5:\"2.442\";s:3:\"lng\";s:8:\"-76.6063\";s:4:\"zoom\";s:2:\"17\";}');
INSERT INTO `wp_postmeta` VALUES (325,95,'_ubicacion','field_60d68efe94ca8');
INSERT INTO `wp_postmeta` VALUES (326,97,'ubicacion','');
INSERT INTO `wp_postmeta` VALUES (327,97,'_ubicacion','field_60d6a09d1030c');
INSERT INTO `wp_postmeta` VALUES (328,98,'ubicacion','');
INSERT INTO `wp_postmeta` VALUES (329,98,'_ubicacion','field_60d6a09d1030c');
INSERT INTO `wp_postmeta` VALUES (330,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (331,90,'_wp_trash_meta_time','1624679770');
INSERT INTO `wp_postmeta` VALUES (332,90,'_wp_desired_post_slug','group_60d68ec830ffd');
INSERT INTO `wp_postmeta` VALUES (333,96,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (334,96,'_wp_trash_meta_time','1624679770');
INSERT INTO `wp_postmeta` VALUES (335,96,'_wp_desired_post_slug','field_60d6a09d1030c');
INSERT INTO `wp_postmeta` VALUES (336,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (337,99,'_edit_lock','1624746473:1');
INSERT INTO `wp_postmeta` VALUES (338,101,'ubicacion','a:7:{s:3:\"lat\";d:2.4289672000000002;s:3:\"lng\";d:-76.602264000000005;s:4:\"zoom\";i:17;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:16:\"OpenStreetMap.CH\";}s:7:\"version\";s:5:\"1.3.2\";}');
INSERT INTO `wp_postmeta` VALUES (339,101,'_ubicacion','field_60d6a8e279091');
INSERT INTO `wp_postmeta` VALUES (340,102,'ubicacion','a:7:{s:3:\"lat\";d:2.4289672000000002;s:3:\"lng\";d:-76.602264000000005;s:4:\"zoom\";i:17;s:7:\"markers\";a:0:{}s:7:\"address\";s:0:\"\";s:6:\"layers\";a:1:{i:0;s:16:\"OpenStreetMap.CH\";}s:7:\"version\";s:5:\"1.3.2\";}');
INSERT INTO `wp_postmeta` VALUES (341,102,'_ubicacion','field_60d6a8e279091');
INSERT INTO `wp_postmeta` VALUES (342,103,'ubicacion','a:7:{s:3:\"lat\";d:2.4289672000000002;s:3:\"lng\";d:-76.602264000000005;s:4:\"zoom\";i:17;s:7:\"markers\";a:1:{i:0;a:4:{s:5:\"label\";s:41:\"Calle 18, 190003 Popayán, Cauca Colombia\";s:13:\"default_label\";s:41:\"Calle 18, 190003 Popayán, Cauca Colombia\";s:3:\"lat\";d:2.4289196999999998;s:3:\"lng\";d:-76.603170599999999;}}s:7:\"address\";s:41:\"Calle 18, 190003 Popayán, Cauca Colombia\";s:6:\"layers\";a:1:{i:0;s:16:\"OpenStreetMap.CH\";}s:7:\"version\";s:5:\"1.3.2\";}');
INSERT INTO `wp_postmeta` VALUES (343,103,'_ubicacion','field_60d6a8e279091');
INSERT INTO `wp_postmeta` VALUES (344,104,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (345,104,'_edit_lock','1624902706:1');
INSERT INTO `wp_postmeta` VALUES (346,109,'_wp_attached_file','2021/06/hero-index.jpg');
INSERT INTO `wp_postmeta` VALUES (347,109,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1596;s:6:\"height\";i:922;s:4:\"file\";s:22:\"2021/06/hero-index.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"hero-index-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"hero-index-1024x592.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:592;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hero-index-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"hero-index-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"hero-index-1536x887.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:887;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"hero-index-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"hero-index-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"hero-index-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"hero-index-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:22:\"hero-index-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (348,15,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (349,15,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (350,15,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (351,15,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (352,15,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (353,15,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (354,15,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (355,110,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (356,110,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (357,110,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (358,110,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (359,110,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. Numquam reprehenderit, aperiam maiores nemo exercitationem impedit perspiciatis corporis, amet ad neque, nobis! A.\r\n');
INSERT INTO `wp_postmeta` VALUES (360,110,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (361,111,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (362,111,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (363,111,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (364,111,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (365,111,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (366,111,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (367,15,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (368,15,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (369,15,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (370,15,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (371,115,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (372,115,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (373,115,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (374,115,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (375,115,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (376,115,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (377,115,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (378,115,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (379,115,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad. Suscipit?');
INSERT INTO `wp_postmeta` VALUES (380,115,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (381,116,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (382,116,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (383,116,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (384,116,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (385,116,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (386,116,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (387,116,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (388,116,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (389,116,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (390,116,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (391,133,'_wp_attached_file','2021/06/area-aparatos.jpg');
INSERT INTO `wp_postmeta` VALUES (392,133,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:699;s:4:\"file\";s:25:\"2021/06/area-aparatos.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"area-aparatos-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"area-aparatos-1024x651.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:651;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"area-aparatos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"area-aparatos-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:25:\"area-aparatos-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:25:\"area-aparatos-350x699.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:25:\"area-aparatos-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:25:\"area-aparatos-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:25:\"area-aparatos-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (393,134,'_wp_attached_file','2021/06/area-cardio.jpg');
INSERT INTO `wp_postmeta` VALUES (394,134,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:23:\"2021/06/area-cardio.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"area-cardio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"area-cardio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"area-cardio-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"area-cardio-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"area-cardio-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"area-cardio-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"area-cardio-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:23:\"area-cardio-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (395,135,'_wp_attached_file','2021/06/area-pesas.jpg');
INSERT INTO `wp_postmeta` VALUES (396,135,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:731;s:4:\"file\";s:22:\"2021/06/area-pesas.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"area-pesas-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"area-pesas-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"area-pesas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"area-pesas-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"area-pesas-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"area-pesas-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"area-pesas-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"area-pesas-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:22:\"area-pesas-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (397,136,'_wp_attached_file','2021/06/area-yoga.jpg');
INSERT INTO `wp_postmeta` VALUES (398,136,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:21:\"2021/06/area-yoga.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"area-yoga-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"area-yoga-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"area-yoga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"area-yoga-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"area-yoga-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"area-yoga-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:21:\"area-yoga-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:21:\"area-yoga-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:21:\"area-yoga-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (399,15,'area_1_area_imagen','136');
INSERT INTO `wp_postmeta` VALUES (400,15,'_area_1_area_imagen','field_60d93f8fb55bc');
INSERT INTO `wp_postmeta` VALUES (401,15,'area_1_area_texto','Área de Yoga');
INSERT INTO `wp_postmeta` VALUES (402,15,'_area_1_area_texto','field_60d94014b55bd');
INSERT INTO `wp_postmeta` VALUES (403,15,'area_1','');
INSERT INTO `wp_postmeta` VALUES (404,15,'_area_1','field_60d93f7ab55bb');
INSERT INTO `wp_postmeta` VALUES (405,15,'area_2_area_imagen','135');
INSERT INTO `wp_postmeta` VALUES (406,15,'_area_2_area_imagen','field_60d94025b55bf');
INSERT INTO `wp_postmeta` VALUES (407,15,'area_2_area_texto','Área de Pesas');
INSERT INTO `wp_postmeta` VALUES (408,15,'_area_2_area_texto','field_60d94025b55c0');
INSERT INTO `wp_postmeta` VALUES (409,15,'area_2','');
INSERT INTO `wp_postmeta` VALUES (410,15,'_area_2','field_60d94025b55be');
INSERT INTO `wp_postmeta` VALUES (411,15,'area_3_area_imagen','134');
INSERT INTO `wp_postmeta` VALUES (412,15,'_area_3_area_imagen','field_60d9402eb55c2');
INSERT INTO `wp_postmeta` VALUES (413,15,'area_3_area_texto','Área de Cardio');
INSERT INTO `wp_postmeta` VALUES (414,15,'_area_3_area_texto','field_60d9402eb55c3');
INSERT INTO `wp_postmeta` VALUES (415,15,'area_3','');
INSERT INTO `wp_postmeta` VALUES (416,15,'_area_3','field_60d9402eb55c1');
INSERT INTO `wp_postmeta` VALUES (417,15,'area_4_area_imagen','133');
INSERT INTO `wp_postmeta` VALUES (418,15,'_area_4_area_imagen','field_60d94034b55c5');
INSERT INTO `wp_postmeta` VALUES (419,15,'area_4_area_texto','Área de Aparatos');
INSERT INTO `wp_postmeta` VALUES (420,15,'_area_4_area_texto','field_60d94034b55c6');
INSERT INTO `wp_postmeta` VALUES (421,15,'area_4','');
INSERT INTO `wp_postmeta` VALUES (422,15,'_area_4','field_60d94034b55c4');
INSERT INTO `wp_postmeta` VALUES (423,137,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (424,137,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (425,137,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (426,137,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (427,137,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (428,137,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (429,137,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (430,137,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (431,137,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (432,137,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (433,137,'area_1_area_imagen','136');
INSERT INTO `wp_postmeta` VALUES (434,137,'_area_1_area_imagen','field_60d9378c5469a');
INSERT INTO `wp_postmeta` VALUES (435,137,'area_1_area_texto','Área de Yoga');
INSERT INTO `wp_postmeta` VALUES (436,137,'_area_1_area_texto','field_60d93a0b5469b');
INSERT INTO `wp_postmeta` VALUES (437,137,'area_1','');
INSERT INTO `wp_postmeta` VALUES (438,137,'_area_1','field_60d936ee54699');
INSERT INTO `wp_postmeta` VALUES (439,137,'area_2_area_imagen','135');
INSERT INTO `wp_postmeta` VALUES (440,137,'_area_2_area_imagen','field_60d93b9f5469d');
INSERT INTO `wp_postmeta` VALUES (441,137,'area_2_area_texto','Área de Pesas');
INSERT INTO `wp_postmeta` VALUES (442,137,'_area_2_area_texto','field_60d93b9f5469e');
INSERT INTO `wp_postmeta` VALUES (443,137,'area_2','');
INSERT INTO `wp_postmeta` VALUES (444,137,'_area_2','field_60d93b9f5469c');
INSERT INTO `wp_postmeta` VALUES (445,137,'area_3_area_imagen','');
INSERT INTO `wp_postmeta` VALUES (446,137,'_area_3_area_imagen','field_60d93bbb546a0');
INSERT INTO `wp_postmeta` VALUES (447,137,'area_3_area_texto','');
INSERT INTO `wp_postmeta` VALUES (448,137,'_area_3_area_texto','field_60d93bbb546a1');
INSERT INTO `wp_postmeta` VALUES (449,137,'area_3','');
INSERT INTO `wp_postmeta` VALUES (450,137,'_area_3','field_60d93bbb5469f');
INSERT INTO `wp_postmeta` VALUES (451,137,'area_4_area_imagen','133');
INSERT INTO `wp_postmeta` VALUES (452,137,'_area_4_area_imagen','field_60d93bbd546a6');
INSERT INTO `wp_postmeta` VALUES (453,137,'area_4_area_texto','Área de Aparatos');
INSERT INTO `wp_postmeta` VALUES (454,137,'_area_4_area_texto','field_60d93bbd546a7');
INSERT INTO `wp_postmeta` VALUES (455,137,'area_4','');
INSERT INTO `wp_postmeta` VALUES (456,137,'_area_4','field_60d93bbd546a5');
INSERT INTO `wp_postmeta` VALUES (457,138,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (458,138,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (459,138,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (460,138,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (461,138,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (462,138,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (463,138,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (464,138,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (465,138,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (466,138,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (467,138,'area_1_area_imagen','136');
INSERT INTO `wp_postmeta` VALUES (468,138,'_area_1_area_imagen','field_60d9378c5469a');
INSERT INTO `wp_postmeta` VALUES (469,138,'area_1_area_texto','Área de Yoga');
INSERT INTO `wp_postmeta` VALUES (470,138,'_area_1_area_texto','field_60d93a0b5469b');
INSERT INTO `wp_postmeta` VALUES (471,138,'area_1','');
INSERT INTO `wp_postmeta` VALUES (472,138,'_area_1','field_60d936ee54699');
INSERT INTO `wp_postmeta` VALUES (473,138,'area_2_area_imagen','135');
INSERT INTO `wp_postmeta` VALUES (474,138,'_area_2_area_imagen','field_60d93b9f5469d');
INSERT INTO `wp_postmeta` VALUES (475,138,'area_2_area_texto','Área de Pesas');
INSERT INTO `wp_postmeta` VALUES (476,138,'_area_2_area_texto','field_60d93b9f5469e');
INSERT INTO `wp_postmeta` VALUES (477,138,'area_2','');
INSERT INTO `wp_postmeta` VALUES (478,138,'_area_2','field_60d93b9f5469c');
INSERT INTO `wp_postmeta` VALUES (479,138,'area_3_area_imagen','');
INSERT INTO `wp_postmeta` VALUES (480,138,'_area_3_area_imagen','field_60d93bbb546a0');
INSERT INTO `wp_postmeta` VALUES (481,138,'area_3_area_texto','');
INSERT INTO `wp_postmeta` VALUES (482,138,'_area_3_area_texto','field_60d93bbb546a1');
INSERT INTO `wp_postmeta` VALUES (483,138,'area_3','');
INSERT INTO `wp_postmeta` VALUES (484,138,'_area_3','field_60d93bbb5469f');
INSERT INTO `wp_postmeta` VALUES (485,138,'area_4_area_imagen','133');
INSERT INTO `wp_postmeta` VALUES (486,138,'_area_4_area_imagen','field_60d93bbd546a6');
INSERT INTO `wp_postmeta` VALUES (487,138,'area_4_area_texto','Área de Aparatos');
INSERT INTO `wp_postmeta` VALUES (488,138,'_area_4_area_texto','field_60d93bbd546a7');
INSERT INTO `wp_postmeta` VALUES (489,138,'area_4','');
INSERT INTO `wp_postmeta` VALUES (490,138,'_area_4','field_60d93bbd546a5');
INSERT INTO `wp_postmeta` VALUES (491,139,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (492,139,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (493,139,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (494,139,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (495,139,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (496,139,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (497,139,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (498,139,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (499,139,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (500,139,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (501,139,'area_1_area_imagen','136');
INSERT INTO `wp_postmeta` VALUES (502,139,'_area_1_area_imagen','field_60d9378c5469a');
INSERT INTO `wp_postmeta` VALUES (503,139,'area_1_area_texto','Área de Yoga');
INSERT INTO `wp_postmeta` VALUES (504,139,'_area_1_area_texto','field_60d93a0b5469b');
INSERT INTO `wp_postmeta` VALUES (505,139,'area_1','');
INSERT INTO `wp_postmeta` VALUES (506,139,'_area_1','field_60d936ee54699');
INSERT INTO `wp_postmeta` VALUES (507,139,'area_2_area_imagen','135');
INSERT INTO `wp_postmeta` VALUES (508,139,'_area_2_area_imagen','field_60d93b9f5469d');
INSERT INTO `wp_postmeta` VALUES (509,139,'area_2_area_texto','Área de Pesas');
INSERT INTO `wp_postmeta` VALUES (510,139,'_area_2_area_texto','field_60d93b9f5469e');
INSERT INTO `wp_postmeta` VALUES (511,139,'area_2','');
INSERT INTO `wp_postmeta` VALUES (512,139,'_area_2','field_60d93b9f5469c');
INSERT INTO `wp_postmeta` VALUES (513,139,'area_3_area_imagen','');
INSERT INTO `wp_postmeta` VALUES (514,139,'_area_3_area_imagen','field_60d93bbb546a0');
INSERT INTO `wp_postmeta` VALUES (515,139,'area_3_area_texto','');
INSERT INTO `wp_postmeta` VALUES (516,139,'_area_3_area_texto','field_60d93bbb546a1');
INSERT INTO `wp_postmeta` VALUES (517,139,'area_3','');
INSERT INTO `wp_postmeta` VALUES (518,139,'_area_3','field_60d93bbb5469f');
INSERT INTO `wp_postmeta` VALUES (519,139,'area_4_area_imagen','133');
INSERT INTO `wp_postmeta` VALUES (520,139,'_area_4_area_imagen','field_60d93bbd546a6');
INSERT INTO `wp_postmeta` VALUES (521,139,'area_4_area_texto','Área de Aparatos');
INSERT INTO `wp_postmeta` VALUES (522,139,'_area_4_area_texto','field_60d93bbd546a7');
INSERT INTO `wp_postmeta` VALUES (523,139,'area_4','');
INSERT INTO `wp_postmeta` VALUES (524,139,'_area_4','field_60d93bbd546a5');
INSERT INTO `wp_postmeta` VALUES (525,153,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (526,153,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (527,153,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (528,153,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (529,153,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (530,153,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (531,153,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (532,153,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (533,153,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (534,153,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (535,153,'area_1_area_imagen','136');
INSERT INTO `wp_postmeta` VALUES (536,153,'_area_1_area_imagen','field_60d93f8fb55bc');
INSERT INTO `wp_postmeta` VALUES (537,153,'area_1_area_texto','Área de Yoga');
INSERT INTO `wp_postmeta` VALUES (538,153,'_area_1_area_texto','field_60d94014b55bd');
INSERT INTO `wp_postmeta` VALUES (539,153,'area_1','');
INSERT INTO `wp_postmeta` VALUES (540,153,'_area_1','field_60d93f7ab55bb');
INSERT INTO `wp_postmeta` VALUES (541,153,'area_2_area_imagen','135');
INSERT INTO `wp_postmeta` VALUES (542,153,'_area_2_area_imagen','field_60d94025b55bf');
INSERT INTO `wp_postmeta` VALUES (543,153,'area_2_area_texto','Área de Pesas');
INSERT INTO `wp_postmeta` VALUES (544,153,'_area_2_area_texto','field_60d94025b55c0');
INSERT INTO `wp_postmeta` VALUES (545,153,'area_2','');
INSERT INTO `wp_postmeta` VALUES (546,153,'_area_2','field_60d94025b55be');
INSERT INTO `wp_postmeta` VALUES (547,153,'area_3_area_imagen','134');
INSERT INTO `wp_postmeta` VALUES (548,153,'_area_3_area_imagen','field_60d9402eb55c2');
INSERT INTO `wp_postmeta` VALUES (549,153,'area_3_area_texto','');
INSERT INTO `wp_postmeta` VALUES (550,153,'_area_3_area_texto','field_60d9402eb55c3');
INSERT INTO `wp_postmeta` VALUES (551,153,'area_3','');
INSERT INTO `wp_postmeta` VALUES (552,153,'_area_3','field_60d9402eb55c1');
INSERT INTO `wp_postmeta` VALUES (553,153,'area_4_area_imagen','133');
INSERT INTO `wp_postmeta` VALUES (554,153,'_area_4_area_imagen','field_60d94034b55c5');
INSERT INTO `wp_postmeta` VALUES (555,153,'area_4_area_texto','Área de Aparatos');
INSERT INTO `wp_postmeta` VALUES (556,153,'_area_4_area_texto','field_60d94034b55c6');
INSERT INTO `wp_postmeta` VALUES (557,153,'area_4','');
INSERT INTO `wp_postmeta` VALUES (558,153,'_area_4','field_60d94034b55c4');
INSERT INTO `wp_postmeta` VALUES (559,154,'imagen_hero','109');
INSERT INTO `wp_postmeta` VALUES (560,154,'_imagen_hero','field_60d7f89b8d3c1');
INSERT INTO `wp_postmeta` VALUES (561,154,'encabezado_hero','Logra tus metas');
INSERT INTO `wp_postmeta` VALUES (562,154,'_encabezado_hero','field_60d7f8c98d3c2');
INSERT INTO `wp_postmeta` VALUES (563,154,'contenido_hero','Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Fuga nemo, et inventore sed est ratione, maiores. \r\n');
INSERT INTO `wp_postmeta` VALUES (564,154,'_contenido_hero','field_60d7f9138d3c3');
INSERT INTO `wp_postmeta` VALUES (565,154,'encabezado_bienvenida','Bienvenidos a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (566,154,'_encabezado_bienvenida','field_60d90d72e57f8');
INSERT INTO `wp_postmeta` VALUES (567,154,'texto_bienvenida','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.');
INSERT INTO `wp_postmeta` VALUES (568,154,'_texto_bienvenida','field_60d90dd7e57f9');
INSERT INTO `wp_postmeta` VALUES (569,154,'area_1_area_imagen','136');
INSERT INTO `wp_postmeta` VALUES (570,154,'_area_1_area_imagen','field_60d93f8fb55bc');
INSERT INTO `wp_postmeta` VALUES (571,154,'area_1_area_texto','Área de Yoga');
INSERT INTO `wp_postmeta` VALUES (572,154,'_area_1_area_texto','field_60d94014b55bd');
INSERT INTO `wp_postmeta` VALUES (573,154,'area_1','');
INSERT INTO `wp_postmeta` VALUES (574,154,'_area_1','field_60d93f7ab55bb');
INSERT INTO `wp_postmeta` VALUES (575,154,'area_2_area_imagen','135');
INSERT INTO `wp_postmeta` VALUES (576,154,'_area_2_area_imagen','field_60d94025b55bf');
INSERT INTO `wp_postmeta` VALUES (577,154,'area_2_area_texto','Área de Pesas');
INSERT INTO `wp_postmeta` VALUES (578,154,'_area_2_area_texto','field_60d94025b55c0');
INSERT INTO `wp_postmeta` VALUES (579,154,'area_2','');
INSERT INTO `wp_postmeta` VALUES (580,154,'_area_2','field_60d94025b55be');
INSERT INTO `wp_postmeta` VALUES (581,154,'area_3_area_imagen','134');
INSERT INTO `wp_postmeta` VALUES (582,154,'_area_3_area_imagen','field_60d9402eb55c2');
INSERT INTO `wp_postmeta` VALUES (583,154,'area_3_area_texto','Área de Cardio');
INSERT INTO `wp_postmeta` VALUES (584,154,'_area_3_area_texto','field_60d9402eb55c3');
INSERT INTO `wp_postmeta` VALUES (585,154,'area_3','');
INSERT INTO `wp_postmeta` VALUES (586,154,'_area_3','field_60d9402eb55c1');
INSERT INTO `wp_postmeta` VALUES (587,154,'area_4_area_imagen','133');
INSERT INTO `wp_postmeta` VALUES (588,154,'_area_4_area_imagen','field_60d94034b55c5');
INSERT INTO `wp_postmeta` VALUES (589,154,'area_4_area_texto','Área de Aparatos');
INSERT INTO `wp_postmeta` VALUES (590,154,'_area_4_area_texto','field_60d94034b55c6');
INSERT INTO `wp_postmeta` VALUES (591,154,'area_4','');
INSERT INTO `wp_postmeta` VALUES (592,154,'_area_4','field_60d94034b55c4');
INSERT INTO `wp_postmeta` VALUES (593,155,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (594,155,'_edit_lock','1624922678:1');
INSERT INTO `wp_postmeta` VALUES (595,158,'_wp_attached_file','2021/06/instructor3.jpg');
INSERT INTO `wp_postmeta` VALUES (596,158,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/06/instructor3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor3-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"instructor3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"instructor3-350x515.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"instructor3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"instructor3-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (597,159,'_wp_attached_file','2021/06/instructor4.jpg');
INSERT INTO `wp_postmeta` VALUES (598,159,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/06/instructor4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor4-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"instructor4-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"instructor4-350x515.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"instructor4-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"instructor4-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (599,160,'_wp_attached_file','2021/06/instructor1.jpg');
INSERT INTO `wp_postmeta` VALUES (600,160,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/06/instructor1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor1-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"instructor1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"instructor1-350x515.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"instructor1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"instructor1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (601,161,'_wp_attached_file','2021/06/instructor2.jpg');
INSERT INTO `wp_postmeta` VALUES (602,161,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:515;s:4:\"file\";s:23:\"2021/06/instructor2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instructor2-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instructor2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"instructor2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"instructor2-350x515.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"instructor2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"instructor2-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (603,157,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (604,157,'_edit_lock','1624922677:1');
INSERT INTO `wp_postmeta` VALUES (605,157,'_thumbnail_id','160');
INSERT INTO `wp_postmeta` VALUES (606,157,'especialidad','a:3:{i:0;s:5:\"pesas\";i:1;s:8:\"spinning\";i:2;s:5:\"boxeo\";}');
INSERT INTO `wp_postmeta` VALUES (607,157,'_especialidad','field_60da0cdad41c3');
INSERT INTO `wp_postmeta` VALUES (608,162,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (609,162,'_edit_lock','1624921454:1');
INSERT INTO `wp_postmeta` VALUES (610,162,'_thumbnail_id','161');
INSERT INTO `wp_postmeta` VALUES (611,162,'especialidad','a:2:{i:0;s:17:\"acondicionamiento\";i:1;s:4:\"yoga\";}');
INSERT INTO `wp_postmeta` VALUES (612,162,'_especialidad','field_60da0cdad41c3');
INSERT INTO `wp_postmeta` VALUES (613,163,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (614,163,'_edit_lock','1624928825:1');
INSERT INTO `wp_postmeta` VALUES (615,163,'_thumbnail_id','159');
INSERT INTO `wp_postmeta` VALUES (616,163,'especialidad','a:2:{i:0;s:6:\"cardio\";i:1;s:5:\"boxeo\";}');
INSERT INTO `wp_postmeta` VALUES (617,163,'_especialidad','field_60da0cdad41c3');
INSERT INTO `wp_postmeta` VALUES (618,164,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (619,164,'_edit_lock','1624921386:1');
INSERT INTO `wp_postmeta` VALUES (620,164,'_thumbnail_id','158');
INSERT INTO `wp_postmeta` VALUES (621,164,'especialidad','a:2:{i:0;s:5:\"pesas\";i:1;s:17:\"acondicionamiento\";}');
INSERT INTO `wp_postmeta` VALUES (622,164,'_especialidad','field_60da0cdad41c3');
INSERT INTO `wp_postmeta` VALUES (623,170,'_wp_attached_file','2021/06/persona-testimonial.jpg');
INSERT INTO `wp_postmeta` VALUES (624,170,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:193;s:6:\"height\";i:193;s:4:\"file\";s:31:\"2021/06/persona-testimonial.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"persona-testimonial-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (625,169,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (626,169,'_edit_lock','1624927791:1');
INSERT INTO `wp_postmeta` VALUES (627,169,'_thumbnail_id','170');
INSERT INTO `wp_postmeta` VALUES (628,171,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (629,171,'_edit_lock','1625013653:1');
INSERT INTO `wp_postmeta` VALUES (630,171,'_thumbnail_id','71');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-06-16 03:21:27','2021-06-16 03:21:27','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-06-16 17:32:03','2021-06-16 17:32:03','',0,'http://gymfitness.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-06-16 03:21:27','2021-06-16 03:21:27','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://gymfitness.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-06-16 17:29:26','2021-06-16 17:29:26','',0,'http://gymfitness.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-06-16 03:21:27','2021-06-16 03:21:27','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://gymfitness.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-06-16 17:29:20','2021-06-16 17:29:20','',0,'http://gymfitness.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-06-16 17:29:20','2021-06-16 17:29:20','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://gymfitness.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-06-16 17:29:20','2021-06-16 17:29:20','',3,'http://gymfitness.local/?p=5',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-06-16 17:29:26','2021-06-16 17:29:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://gymfitness.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-06-16 17:29:26','2021-06-16 17:29:26','',2,'http://gymfitness.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-06-16 17:32:03','2021-06-16 17:32:03','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-06-16 17:32:03','2021-06-16 17:32:03','',1,'http://gymfitness.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-06-16 17:32:57','2021-06-16 17:32:57','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Nosotros','','trash','open','open','','nosotros__trashed','','','2021-06-16 18:10:00','2021-06-16 18:10:00','',0,'http://gymfitness.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-06-16 17:32:57','2021-06-16 17:32:57','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Nosotros','','inherit','closed','closed','','9-revision-v1','','','2021-06-16 17:32:57','2021-06-16 17:32:57','',9,'http://gymfitness.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-06-16 18:10:32','2021-06-16 18:10:32','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Sobre Nosotros','','publish','closed','closed','','nosotros','','','2021-06-19 03:20:54','2021-06-19 03:20:54','',0,'http://gymfitness.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-06-16 18:10:32','2021-06-16 18:10:32','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Nosotros','','inherit','closed','closed','','11-revision-v1','','','2021-06-16 18:10:32','2021-06-16 18:10:32','',11,'http://gymfitness.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-06-16 20:40:40','0000-00-00 00:00:00','','Inicio','','draft','closed','closed','','','','','2021-06-16 20:40:40','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-06-16 20:40:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-06-16 20:40:40','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=14',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-06-16 21:06:27','2021-06-16 21:06:27','','Inicio','','publish','closed','closed','','inicio','','','2021-06-28 03:23:09','2021-06-28 03:23:09','',0,'http://gymfitness.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-06-16 21:06:27','2021-06-16 21:06:27','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-16 21:06:27','2021-06-16 21:06:27','',15,'http://gymfitness.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-06-16 21:07:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-06-16 21:07:23','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-06-16 21:07:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-06-16 21:07:23','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-06-16 21:07:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-06-16 21:07:35','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-06-16 21:07:36','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-06-16 21:07:36','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-06-23 01:08:09','2021-06-16 21:08:30',' ','','','publish','closed','closed','','21','','','2021-06-23 01:08:09','2021-06-23 01:08:09','',0,'http://gymfitness.local/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-06-23 01:08:09','2021-06-16 21:08:30','','Nosotros','','publish','closed','closed','','22','','','2021-06-23 01:08:09','2021-06-23 01:08:09','',0,'http://gymfitness.local/?p=22',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-06-19 02:50:05','2021-06-19 02:50:05','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Sobre Nosotros','','inherit','closed','closed','','11-revision-v1','','','2021-06-19 02:50:05','2021-06-19 02:50:05','',11,'http://gymfitness.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-06-19 02:51:09','2021-06-19 02:51:09','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Nosotros','','inherit','closed','closed','','11-revision-v1','','','2021-06-19 02:51:09','2021-06-19 02:51:09','',11,'http://gymfitness.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-06-19 02:52:17','2021-06-19 02:52:17','Mauris lacus quam, porttitor id dapibus vel, consequat a nisi. Maecenas in sem et odio malesuada scelerisque nec sit amet lectus. Nam ut quam efficitur, rutrum quam ut, dapibus tortor. Etiam eu orci sit amet dui efficitur porttitor quis sed dolor. In placerat dolor tempor justo eleifend, nec facilisis felis tristique. Quisque in massa vestibulum, tristique diam et, condimentum est. Vestibulum non ligula non dolor mollis ultrices. Morbi id facilisis sapien. Nulla eget bibendum velit. Nulla vulputate eu urna vitae viverra. Mauris orci leo, tincidunt nec feugiat non, dapibus a lorem. In id euismod diam. Nam ac pretium tortor. Morbi hendrerit feugiat justo, blandit sodales dolor semper vel. Praesent tempus justo vel arcu tincidunt hendrerit.\r\n\r\nVivamus leo turpis, accumsan aliquam porta ac, feugiat vel justo. Nunc auctor enim non volutpat feugiat. Vivamus vel accumsan leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu faucibus augue, sed iaculis eros. Praesent rhoncus molestie magna eget euismod. Fusce sed convallis elit.','Sobre Nosotros','','inherit','closed','closed','','11-revision-v1','','','2021-06-19 02:52:17','2021-06-19 02:52:17','',11,'http://gymfitness.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-06-19 03:16:01','2021-06-19 03:16:01','','nosotros','','inherit','open','closed','','nosotros-2','','','2021-06-19 03:16:01','2021-06-19 03:16:01','',11,'http://gymfitness.local/wp-content/uploads/2021/06/nosotros.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-06-19 19:18:41','2021-06-19 19:18:41','[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','publish','closed','closed','','contacto','','','2021-06-26 22:38:02','2021-06-26 22:38:02','',0,'http://gymfitness.local/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-06-19 19:18:41','2021-06-19 19:18:41','','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-19 19:18:41','2021-06-19 19:18:41','',27,'http://gymfitness.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-06-19 20:01:41','2021-06-19 20:01:41','','Blog','','publish','closed','closed','','blog','','','2021-06-19 20:01:41','2021-06-19 20:01:41','',0,'http://gymfitness.local/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-06-19 20:01:41','2021-06-19 20:01:41','','Blog','','inherit','closed','closed','','29-revision-v1','','','2021-06-19 20:01:41','2021-06-19 20:01:41','',29,'http://gymfitness.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-06-19 20:02:00','2021-06-19 20:02:00','[gallery ids=\"61,62,63,64,65,66,67,68,69,70,71,72,73,74\"]','Galería','','publish','closed','closed','','galeria','','','2021-06-24 21:14:07','2021-06-24 21:14:07','',0,'http://gymfitness.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-06-19 20:02:00','2021-06-19 20:02:00','','Galería','','inherit','closed','closed','','31-revision-v1','','','2021-06-19 20:02:00','2021-06-19 20:02:00','',31,'http://gymfitness.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-06-19 20:02:35','2021-06-19 20:02:35','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis dolor et maximus aliquet. Aliquam aliquet pellentesque tellus, eu malesuada libero. Vivamus nunc urna, consequat sit amet elit a, laoreet congue est. Duis commodo tortor eu libero sodales, ac vulputate purus rhoncus. Cras a pharetra eros. Curabitur a posuere est. Nunc eget sapien nec tortor bibendum tristique.','Nuestras Clases','','publish','closed','closed','','nuestras-clases','','','2021-06-19 20:13:16','2021-06-19 20:13:16','',0,'http://gymfitness.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-06-19 20:02:35','2021-06-19 20:02:35','','Nuestras Clases','','inherit','closed','closed','','33-revision-v1','','','2021-06-19 20:02:35','2021-06-19 20:02:35','',33,'http://gymfitness.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-06-23 01:08:09','2021-06-19 20:05:03','','Clases','','publish','closed','closed','','clases','','','2021-06-23 01:08:09','2021-06-23 01:08:09','',0,'http://gymfitness.local/?p=35',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-06-23 01:08:09','2021-06-19 20:05:03',' ','','','publish','closed','closed','','36','','','2021-06-23 01:08:09','2021-06-23 01:08:09','',0,'http://gymfitness.local/?p=36',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-06-23 01:08:09','2021-06-19 20:05:03',' ','','','publish','closed','closed','','37','','','2021-06-23 01:08:09','2021-06-23 01:08:09','',0,'http://gymfitness.local/?p=37',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-06-19 20:13:16','2021-06-19 20:13:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis dolor et maximus aliquet. Aliquam aliquet pellentesque tellus, eu malesuada libero. Vivamus nunc urna, consequat sit amet elit a, laoreet congue est. Duis commodo tortor eu libero sodales, ac vulputate purus rhoncus. Cras a pharetra eros. Curabitur a posuere est. Nunc eget sapien nec tortor bibendum tristique.','Nuestras Clases','','inherit','closed','closed','','33-revision-v1','','','2021-06-19 20:13:16','2021-06-19 20:13:16','',33,'http://gymfitness.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-06-21 18:19:59','2021-06-21 18:19:59','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"gymfitness_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Clases','clases','publish','closed','closed','','group_60d0d7f359b34','','','2021-06-21 18:23:40','2021-06-21 18:23:40','',0,'http://gymfitness.local/?post_type=acf-field-group&#038;p=39',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-06-21 18:19:59','2021-06-21 18:19:59','a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:33:\"Agrega la hora de inicio de clase\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}','Hora Inicio','hora_inicio','publish','closed','closed','','field_60d0d83101bb0','','','2021-06-21 18:23:40','2021-06-21 18:23:40','',39,'http://gymfitness.local/?post_type=acf-field&#038;p=40',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-06-21 18:23:40','2021-06-21 18:23:40','a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:30:\"Agrega la hora de fin de clase\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}','Hora Fin','hora_fin','publish','closed','closed','','field_60d0d8d485a41','','','2021-06-21 18:23:40','2021-06-21 18:23:40','',39,'http://gymfitness.local/?post_type=acf-field&p=41',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-06-21 18:23:40','2021-06-21 18:23:40','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"Escriba los días en que se imparte la clase\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Días Clase','dias_clase','publish','closed','closed','','field_60d0d8ec85a42','','','2021-06-21 18:23:40','2021-06-21 18:23:40','',39,'http://gymfitness.local/?post_type=acf-field&p=42',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-06-21 18:29:06','2021-06-21 18:29:06','Proin dictum porta augue, faucibus consectetur purus malesuada vel. Nam purus ante, lacinia quis ex a, molestie dapibus diam. Aenean congue ut nibh sit amet sodales. In suscipit finibus orci, a posuere metus sagittis ac. Nulla sit amet nisi et dolor consectetur sodales et sit amet quam. Phasellus luctus ex ut risus euismod convallis. Ut malesuada quis massa eget mattis. Phasellus mauris felis, consectetur eu ipsum ut, convallis maximus libero. In et sapien sodales, varius est sit amet, viverra ante. Vivamus fringilla nisi egestas sapien semper, feugiat tempor diam convallis.','Clase de Spinning','','publish','closed','closed','','clase-de-spinning','','','2021-06-21 18:29:06','2021-06-21 18:29:06','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=43',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-06-21 18:26:41','2021-06-21 18:26:41','','clase1','','inherit','open','closed','','clase1','','','2021-06-21 23:36:31','2021-06-21 23:36:31','',43,'http://gymfitness.local/wp-content/uploads/2021/06/clase1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-06-21 18:26:43','2021-06-21 18:26:43','','clase2','','inherit','open','closed','','clase2','','','2021-06-21 18:41:30','2021-06-21 18:41:30','',43,'http://gymfitness.local/wp-content/uploads/2021/06/clase2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-06-21 18:26:45','2021-06-21 18:26:45','','clase3','','inherit','open','closed','','clase3','','','2021-06-21 18:42:39','2021-06-21 18:42:39','',43,'http://gymfitness.local/wp-content/uploads/2021/06/clase3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-06-21 18:26:48','2021-06-21 18:26:48','','clase4','','inherit','open','closed','','clase4','','','2021-06-21 18:38:58','2021-06-21 18:38:58','',43,'http://gymfitness.local/wp-content/uploads/2021/06/clase4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-06-21 18:26:50','2021-06-21 18:26:50','','clase5','','inherit','open','closed','','clase5','','','2021-06-21 18:35:04','2021-06-21 18:35:04','',43,'http://gymfitness.local/wp-content/uploads/2021/06/clase5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-06-21 18:26:52','2021-06-21 18:26:52','','clase6','','inherit','open','closed','','clase6','','','2021-06-21 18:34:08','2021-06-21 18:34:08','',43,'http://gymfitness.local/wp-content/uploads/2021/06/clase6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-06-21 18:36:50','2021-06-21 18:36:50','Proin dictum porta augue, faucibus consectetur purus malesuada vel. Nam purus ante, lacinia quis ex a, molestie dapibus diam. Aenean congue ut nibh sit amet sodales. In suscipit finibus orci, a posuere metus sagittis ac. Nulla sit amet nisi et dolor consectetur sodales et sit amet quam. Phasellus luctus ex ut risus euismod convallis. Ut malesuada quis massa eget mattis. Phasellus mauris felis, consectetur eu ipsum ut, convallis maximus libero. In et sapien sodales, varius est sit amet, viverra ante. Vivamus fringilla nisi egestas sapien semper, feugiat tempor diam convallis.','Masterclass Crossfit','','publish','closed','closed','','masterclass-crossfit','','','2021-06-21 18:36:50','2021-06-21 18:36:50','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=51',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-06-21 18:40:01','2021-06-21 18:40:01','Proin dictum porta augue, faucibus consectetur purus malesuada vel. Nam purus ante, lacinia quis ex a, molestie dapibus diam. Aenean congue ut nibh sit amet sodales. In suscipit finibus orci, a posuere metus sagittis ac. Nulla sit amet nisi et dolor consectetur sodales et sit amet quam. Phasellus luctus ex ut risus euismod convallis. Ut malesuada quis massa eget mattis. Phasellus mauris felis, consectetur eu ipsum ut, convallis maximus libero. In et sapien sodales, varius est sit amet, viverra ante. Vivamus fringilla nisi egestas sapien semper, feugiat tempor diam convallis.','Kickboxing para principiantes','','publish','closed','closed','','kickboxing-para-principiantes','','','2021-06-21 18:40:01','2021-06-21 18:40:01','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=52',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-06-21 18:41:35','2021-06-21 18:41:35','Proin dictum porta augue, faucibus consectetur purus malesuada vel. Nam purus ante, lacinia quis ex a, molestie dapibus diam. Aenean congue ut nibh sit amet sodales. In suscipit finibus orci, a posuere metus sagittis ac. Nulla sit amet nisi et dolor consectetur sodales et sit amet quam. Phasellus luctus ex ut risus euismod convallis. Ut malesuada quis massa eget mattis. Phasellus mauris felis, consectetur eu ipsum ut, convallis maximus libero. In et sapien sodales, varius est sit amet, viverra ante. Vivamus fringilla nisi egestas sapien semper, feugiat tempor diam convallis.','Levantamiento de pesas para principiantes','','publish','closed','closed','','levantamiento-de-pesas-para-principiantes','','','2021-06-21 18:41:35','2021-06-21 18:41:35','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=53',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-06-21 18:42:44','2021-06-21 18:42:44','Proin dictum porta augue, faucibus consectetur purus malesuada vel. Nam purus ante, lacinia quis ex a, molestie dapibus diam. Aenean congue ut nibh sit amet sodales. In suscipit finibus orci, a posuere metus sagittis ac. Nulla sit amet nisi et dolor consectetur sodales et sit amet quam. Phasellus luctus ex ut risus euismod convallis. Ut malesuada quis massa eget mattis. Phasellus mauris felis, consectetur eu ipsum ut, convallis maximus libero. In et sapien sodales, varius est sit amet, viverra ante. Vivamus fringilla nisi egestas sapien semper, feugiat tempor diam convallis.','Cardio para principiantes','','publish','closed','closed','','cardio-para-principiantes','','','2021-06-21 18:42:44','2021-06-21 18:42:44','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=54',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-06-21 18:43:39','2021-06-21 18:43:39','Proin dictum porta augue, faucibus consectetur purus malesuada vel. Nam purus ante, lacinia quis ex a, molestie dapibus diam. Aenean congue ut nibh sit amet sodales. In suscipit finibus orci, a posuere metus sagittis ac. Nulla sit amet nisi et dolor consectetur sodales et sit amet quam. Phasellus luctus ex ut risus euismod convallis. Ut malesuada quis massa eget mattis. Phasellus mauris felis, consectetur eu ipsum ut, convallis maximus libero. In et sapien sodales, varius est sit amet, viverra ante. Vivamus fringilla nisi egestas sapien semper, feugiat tempor diam convallis.','Yoga para principiantes','','publish','closed','closed','','yoga-para-principiantes','','','2021-06-21 23:36:50','2021-06-21 23:36:50','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=55',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-06-23 00:18:09','2021-06-23 00:18:09','Duis sed est at lorem condimentum sagittis at sit amet ante. Morbi vel felis tincidunt, fermentum erat vitae, lobortis augue. Fusce at odio vel erat lobortis volutpat. Curabitur eu massa nunc. Etiam et est non augue lacinia aliquet. Sed sodales efficitur eleifend. Phasellus interdum tempus leo, at aliquet nunc interdum non. Curabitur vitae nibh lorem. Sed velit felis, luctus tincidunt mauris in, sagittis sodales odio. Pellentesque ultrices ipsum id nulla efficitur malesuada.\r\n\r\nFusce dignissim, augue nec viverra cursus, ligula metus rutrum erat, et tincidunt mi odio ut nunc. Morbi convallis porttitor finibus. Quisque viverra, libero a gravida porta, eros erat hendrerit metus, et ultricies quam libero eu metus. Maecenas sit amet lectus a arcu auctor sodales. Sed feugiat ut nisi ut rutrum. Aliquam erat volutpat. Donec tempor consequat sagittis. Maecenas a vehicula diam, et egestas neque. Vivamus ac lectus non magna fringilla sodales. Aliquam egestas vitae velit eu iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut suscipit enim ut sapien lobortis, at vulputate arcu varius. Mauris dictum, lorem sit amet aliquam mattis, libero est malesuada urna, sit amet ornare ex ex vitae elit.','Hello World','','trash','open','open','','hello-world__trashed-2','','','2021-06-24 22:51:18','2021-06-24 22:51:18','',0,'http://gymfitness.local/?p=57',0,'post','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-06-23 00:18:09','2021-06-23 00:18:09','Duis sed est at lorem condimentum sagittis at sit amet ante. Morbi vel felis tincidunt, fermentum erat vitae, lobortis augue. Fusce at odio vel erat lobortis volutpat. Curabitur eu massa nunc. Etiam et est non augue lacinia aliquet. Sed sodales efficitur eleifend. Phasellus interdum tempus leo, at aliquet nunc interdum non. Curabitur vitae nibh lorem. Sed velit felis, luctus tincidunt mauris in, sagittis sodales odio. Pellentesque ultrices ipsum id nulla efficitur malesuada.\r\n\r\nFusce dignissim, augue nec viverra cursus, ligula metus rutrum erat, et tincidunt mi odio ut nunc. Morbi convallis porttitor finibus. Quisque viverra, libero a gravida porta, eros erat hendrerit metus, et ultricies quam libero eu metus. Maecenas sit amet lectus a arcu auctor sodales. Sed feugiat ut nisi ut rutrum. Aliquam erat volutpat. Donec tempor consequat sagittis. Maecenas a vehicula diam, et egestas neque. Vivamus ac lectus non magna fringilla sodales. Aliquam egestas vitae velit eu iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut suscipit enim ut sapien lobortis, at vulputate arcu varius. Mauris dictum, lorem sit amet aliquam mattis, libero est malesuada urna, sit amet ornare ex ex vitae elit.','Hello World','','inherit','closed','closed','','57-revision-v1','','','2021-06-23 00:18:09','2021-06-23 00:18:09','',57,'http://gymfitness.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-06-23 01:08:09','2021-06-23 01:08:09',' ','','','publish','closed','closed','','59','','','2021-06-23 01:08:09','2021-06-23 01:08:09','',0,'http://gymfitness.local/?p=59',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-06-24 01:04:49','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2021-06-24 01:04:49','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=60',0,'post','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-06-24 18:10:31','2021-06-24 18:10:31','','cross-fit-1126999_1920','','inherit','open','closed','','cross-fit-1126999_1920','','','2021-06-24 18:10:31','2021-06-24 18:10:31','',31,'http://gymfitness.local/wp-content/uploads/2021/06/cross-fit-1126999_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-06-24 18:10:43','2021-06-24 18:10:43','','fitness-375472_1920','','inherit','open','closed','','fitness-375472_1920','','','2021-06-24 18:10:43','2021-06-24 18:10:43','',31,'http://gymfitness.local/wp-content/uploads/2021/06/fitness-375472_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-06-24 18:10:48','2021-06-24 18:10:48','','fitness-1677212_1920','','inherit','open','closed','','fitness-1677212_1920','','','2021-06-24 18:10:48','2021-06-24 18:10:48','',31,'http://gymfitness.local/wp-content/uploads/2021/06/fitness-1677212_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-06-24 18:10:53','2021-06-24 18:10:53','','fitness-3767884_1920','','inherit','open','closed','','fitness-3767884_1920','','','2021-06-24 18:10:53','2021-06-24 18:10:53','',31,'http://gymfitness.local/wp-content/uploads/2021/06/fitness-3767884_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-06-24 18:10:58','2021-06-24 18:10:58','','gym-455164_1920','','inherit','open','closed','','gym-455164_1920','','','2021-06-24 18:10:58','2021-06-24 18:10:58','',31,'http://gymfitness.local/wp-content/uploads/2021/06/gym-455164_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-06-24 18:11:04','2021-06-24 18:11:04','','home-fitness-equipment-1840858_1920','','inherit','open','closed','','home-fitness-equipment-1840858_1920','','','2021-06-24 18:11:04','2021-06-24 18:11:04','',31,'http://gymfitness.local/wp-content/uploads/2021/06/home-fitness-equipment-1840858_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-06-24 18:11:10','2021-06-24 18:11:10','','kettle-bell-592905_1920','','inherit','open','closed','','kettle-bell-592905_1920','','','2021-06-24 18:11:10','2021-06-24 18:11:10','',31,'http://gymfitness.local/wp-content/uploads/2021/06/kettle-bell-592905_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-06-24 18:11:16','2021-06-24 18:11:16','','kettlebells-1677217_1920','','inherit','open','closed','','kettlebells-1677217_1920','','','2021-06-24 22:56:38','2021-06-24 22:56:38','',31,'http://gymfitness.local/wp-content/uploads/2021/06/kettlebells-1677217_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-06-24 18:11:22','2021-06-24 18:11:22','','sports-1962574_1920','','inherit','open','closed','','sports-1962574_1920','','','2021-06-24 18:11:22','2021-06-24 18:11:22','',31,'http://gymfitness.local/wp-content/uploads/2021/06/sports-1962574_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-06-24 18:11:29','2021-06-24 18:11:29','','weight-lifting-1284616_1920','','inherit','open','closed','','weight-lifting-1284616_1920','','','2021-06-24 18:11:29','2021-06-24 18:11:29','',31,'http://gymfitness.local/wp-content/uploads/2021/06/weight-lifting-1284616_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-06-24 18:11:35','2021-06-24 18:11:35','','weights-652486_1920','','inherit','open','closed','','weights-652486_1920','','','2021-06-24 22:55:37','2021-06-24 22:55:37','',31,'http://gymfitness.local/wp-content/uploads/2021/06/weights-652486_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-06-24 18:11:41','2021-06-24 18:11:41','','weights-652488_1920','','inherit','open','closed','','weights-652488_1920','','','2021-06-24 22:54:42','2021-06-24 22:54:42','',31,'http://gymfitness.local/wp-content/uploads/2021/06/weights-652488_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-06-24 18:11:47','2021-06-24 18:11:47','','weights-817635_1920','','inherit','open','closed','','weights-817635_1920','','','2021-06-24 18:11:47','2021-06-24 18:11:47','',31,'http://gymfitness.local/wp-content/uploads/2021/06/weights-817635_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-06-24 18:11:53','2021-06-24 18:11:53','','yoga-1994667_1920','','inherit','open','closed','','yoga-1994667_1920','','','2021-06-24 22:52:57','2021-06-24 22:52:57','',31,'http://gymfitness.local/wp-content/uploads/2021/06/yoga-1994667_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-06-24 18:13:05','2021-06-24 18:13:05','[gallery ids=\"61,62,63,64,65,66,67,68,69,70,71,72,73,74\"]','Galería','','inherit','closed','closed','','31-revision-v1','','','2021-06-24 18:13:05','2021-06-24 18:13:05','',31,'http://gymfitness.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-06-24 21:14:13','2021-06-24 21:14:13','[gallery ids=\"61,62,63,64,65,66,67,68,69,70,71,72,73,74\"]','Galería','','inherit','closed','closed','','31-autosave-v1','','','2021-06-24 21:14:13','2021-06-24 21:14:13','',31,'http://gymfitness.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-06-24 22:53:02','2021-06-24 22:53:02','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','5 Ejercicios de estiramiento','','publish','open','open','','5-ejercicios-de-estiramiento','','','2021-06-24 23:00:24','2021-06-24 23:00:24','',0,'http://gymfitness.local/?p=77',0,'post','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-06-24 22:53:02','2021-06-24 22:53:02','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','5 Ejercicios de estiramiento','','inherit','closed','closed','','77-revision-v1','','','2021-06-24 22:53:02','2021-06-24 22:53:02','',77,'http://gymfitness.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-06-24 22:54:48','2021-06-24 22:54:48','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','Cómo empezar una rutina','','publish','open','open','','como-empezar-una-rutina','','','2021-06-24 22:59:51','2021-06-24 22:59:51','',0,'http://gymfitness.local/?p=79',0,'post','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-06-24 22:54:48','2021-06-24 22:54:48','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','Cómo empezar una rutina','','inherit','closed','closed','','79-revision-v1','','','2021-06-24 22:54:48','2021-06-24 22:54:48','',79,'http://gymfitness.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-06-24 22:54:59','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2021-06-24 22:54:59','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=81',0,'post','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-06-24 22:55:39','2021-06-24 22:55:39','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','5 ejercicios con barras','','publish','open','open','','5-ejercicios-con-barras','','','2021-06-24 22:59:10','2021-06-24 22:59:10','',0,'http://gymfitness.local/?p=82',0,'post','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-06-24 22:55:39','2021-06-24 22:55:39','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','5 ejercicios con barras','','inherit','closed','closed','','82-revision-v1','','','2021-06-24 22:55:39','2021-06-24 22:55:39','',82,'http://gymfitness.local/?p=83',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-06-24 22:56:42','2021-06-24 22:56:42','&nbsp;\r\n\r\nDonec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','Ejercicios para tu primer semana','','publish','open','open','','ejercicios-para-tu-primer-semana','','','2021-06-25 20:29:03','2021-06-25 20:29:03','',0,'http://gymfitness.local/?p=84',0,'post','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-06-24 22:56:42','2021-06-24 22:56:42','Donec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','Ejercicios para tu primer semana','','inherit','closed','closed','','84-revision-v1','','','2021-06-24 22:56:42','2021-06-24 22:56:42','',84,'http://gymfitness.local/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-06-25 20:28:07','2021-06-25 20:28:07','<a href=\"http://gymfitness.local/wp-content/uploads/2021/06/kettlebells-1677217_1920.jpg\"><img class=\"alignnone size-medium wp-image-68\" src=\"http://gymfitness.local/wp-content/uploads/2021/06/kettlebells-1677217_1920-300x200.jpg\" alt=\"3 pesas rusas de colores\" width=\"300\" height=\"200\" /></a>\r\n\r\nDonec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','Ejercicios para tu primer semana','','inherit','closed','closed','','84-revision-v1','','','2021-06-25 20:28:07','2021-06-25 20:28:07','',84,'http://gymfitness.local/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-06-25 20:29:03','2021-06-25 20:29:03','&nbsp;\r\n\r\nDonec faucibus, odio et pharetra congue, enim nibh molestie odio, efficitur dictum lectus eros ut elit. Donec et porttitor tortor. Mauris accumsan vehicula est, quis pulvinar eros sollicitudin a. Vestibulum volutpat efficitur erat eget faucibus. Aliquam vitae tortor sit amet lorem viverra placerat at a purus. In nec lectus nec sapien aliquam cursus. Suspendisse at lectus vel nulla porttitor ultrices. Nulla eleifend enim non nisl fermentum, sed porta leo condimentum. Aliquam fermentum elementum molestie. Cras ornare aliquam pharetra. Sed vel ullamcorper nisl.\r\n\r\nNunc auctor auctor lorem, et mollis tortor laoreet non. Ut et sagittis nunc, ac malesuada dui. Nullam lobortis nisl sed consectetur pulvinar. Quisque dictum felis quam, id tincidunt leo malesuada eget. Vivamus pulvinar magna in egestas vulputate. Donec sed sagittis erat. Suspendisse id orci feugiat, scelerisque enim in, pulvinar mauris. Sed quis ligula venenatis leo vehicula pellentesque. Quisque consectetur felis a nisi faucibus varius. Nam dictum massa nec cursus tempor. Quisque elementum ac mi non placerat. Ut scelerisque a erat eget vestibulum. Quisque nec sem erat. Curabitur commodo mi a risus fermentum, id eleifend libero ullamcorper. Fusce posuere odio odio, at aliquet lectus malesuada a. Vivamus consectetur tortor nec pulvinar gravida.\r\n\r\nPraesent dapibus lorem justo, quis tempus diam convallis nec. Vivamus posuere ornare sem sed fermentum. Aenean porttitor tortor ut orci lacinia fermentum. Donec dignissim, nulla a iaculis suscipit, ante nisl vestibulum orci, non imperdiet libero ante in erat. Quisque vel mi nisl. Sed sit amet justo placerat, faucibus magna at, ultrices augue. Nulla ac viverra mauris.','Ejercicios para tu primer semana','','inherit','closed','closed','','84-revision-v1','','','2021-06-25 20:29:03','2021-06-25 20:29:03','',84,'http://gymfitness.local/?p=87',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-06-26 00:00:29','2021-06-26 00:00:29','<label> Tu Nombre (requerido)\r\n    [text* your-name] </label>\r\n\r\n<label> Tu Email\r\n    [email* your-email] </label>\r\n\r\n<label> Asunto\r\n    [text* your-subject] </label>\r\n\r\n<label> Tu Mensaje (opcional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@gymfitness.local>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@gymfitness.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2021-06-26 00:13:00','2021-06-26 00:13:00','',0,'http://gymfitness.local/?post_type=wpcf7_contact_form&#038;p=88',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-06-26 00:06:49','2021-06-26 00:06:49','[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 00:06:49','2021-06-26 00:06:49','',27,'http://gymfitness.local/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-06-26 02:20:24','2021-06-26 02:20:24','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Contacto','contacto','trash','closed','closed','','group_60d68ec830ffd__trashed','','','2021-06-26 03:56:10','2021-06-26 03:56:10','',0,'http://gymfitness.local/?post_type=acf-field-group&#038;p=90',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-06-26 02:48:48','2021-06-26 02:48:48','&lt;div id=\"#mapa\"&gt;&lt;/div&gt;\r\n\r\n[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 02:48:48','2021-06-26 02:48:48','',27,'http://gymfitness.local/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-06-26 02:49:48','2021-06-26 02:49:48','&lt;div id=\"mapa\"&gt;&lt;/div&gt;\r\n\r\n[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 02:49:48','2021-06-26 02:49:48','',27,'http://gymfitness.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-06-26 02:52:26','2021-06-26 02:52:26','<div id=\"mapa\"></div>\r\n[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 02:52:26','2021-06-26 02:52:26','',27,'http://gymfitness.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-06-26 03:18:56','2021-06-26 03:18:56','<div id=\"mapa\"></div>\r\n[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 03:18:56','2021-06-26 03:18:56','',27,'http://gymfitness.local/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-06-26 03:36:55','2021-06-26 03:36:55','a:9:{s:4:\"type\";s:17:\"leaflet_map_field\";s:12:\"instructions\";s:45:\"Ingrese su ubicación en la caja de búsqueda\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"lat\";i:0;s:3:\"lng\";i:0;s:4:\"zoom\";i:14;s:6:\"height\";i:450;}','Ubicación','ubicacion','trash','closed','closed','','field_60d6a09d1030c__trashed','','','2021-06-26 03:56:10','2021-06-26 03:56:10','',90,'http://gymfitness.local/?post_type=acf-field&#038;p=96',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-06-26 03:37:59','2021-06-26 03:37:59','<div id=\"mapa\"></div>\r\n[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 03:37:59','2021-06-26 03:37:59','',27,'http://gymfitness.local/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-06-26 03:55:23','2021-06-26 03:55:23','[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 03:55:23','2021-06-26 03:55:23','',27,'http://gymfitness.local/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-06-26 04:11:10','2021-06-26 04:11:10','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Contacto','contacto','publish','closed','closed','','group_60d6a8c13c9da','','','2021-06-26 04:24:13','2021-06-26 04:24:13','',0,'http://gymfitness.local/?post_type=acf-field-group&#038;p=99',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-06-26 04:13:40','2021-06-26 04:13:40','a:13:{s:10:\"center_lat\";d:2.4289672000000002;s:10:\"center_lng\";d:-76.602258699999993;s:4:\"zoom\";i:17;s:4:\"type\";s:15:\"open_street_map\";s:12:\"instructions\";s:50:\"Ingrese su ubicación para ser mostrada en el mapa\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:7:\"leaflet\";s:6:\"layers\";a:1:{i:0;s:16:\"OpenStreetMap.CH\";}s:16:\"allow_map_layers\";i:1;s:6:\"height\";i:400;s:11:\"max_markers\";s:0:\"\";}','Ubicación','ubicacion','publish','closed','closed','','field_60d6a8e279091','','','2021-06-26 04:24:13','2021-06-26 04:24:13','',99,'http://gymfitness.local/?post_type=acf-field&#038;p=100',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-06-26 22:24:53','2021-06-26 22:24:53','<div id=\"map\"></div>\r\n[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 22:24:53','2021-06-26 22:24:53','',27,'http://gymfitness.local/?p=101',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-06-26 22:32:40','2021-06-26 22:32:40','[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 22:32:40','2021-06-26 22:32:40','',27,'http://gymfitness.local/?p=102',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-06-26 22:38:02','2021-06-26 22:38:02','[contact-form-7 id=\"88\" title=\"Contact form 1\"]','Contacto','','inherit','closed','closed','','27-revision-v1','','','2021-06-26 22:38:02','2021-06-26 22:38:02','',27,'http://gymfitness.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-06-27 04:02:50','2021-06-27 04:02:50','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Inicio','inicio','publish','closed','closed','','group_60d7f858470e0','','','2021-06-28 03:21:35','2021-06-28 03:21:35','',0,'http://gymfitness.local/?post_type=acf-field-group&#038;p=104',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-06-27 04:03:25','2021-06-27 04:03:25','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Hero','hero','publish','closed','closed','','field_60d7f87439c42','','','2021-06-27 04:03:25','2021-06-27 04:03:25','',104,'http://gymfitness.local/?post_type=acf-field&p=105',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-06-27 04:06:10','2021-06-27 04:06:10','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen Hero','imagen_hero','publish','closed','closed','','field_60d7f89b8d3c1','','','2021-06-27 04:06:10','2021-06-27 04:06:10','',104,'http://gymfitness.local/?post_type=acf-field&p=106',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-06-27 04:06:10','2021-06-27 04:06:10','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Encabezado Hero','encabezado_hero','publish','closed','closed','','field_60d7f8c98d3c2','','','2021-06-27 04:06:10','2021-06-27 04:06:10','',104,'http://gymfitness.local/?post_type=acf-field&p=107',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-06-27 04:06:10','2021-06-27 04:06:10','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Contenido Hero','contenido_hero','publish','closed','closed','','field_60d7f9138d3c3','','','2021-06-27 04:06:10','2021-06-27 04:06:10','',104,'http://gymfitness.local/?post_type=acf-field&p=108',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-06-27 04:08:46','2021-06-27 04:08:46','','hero-index','','inherit','open','closed','','hero-index','','','2021-06-27 04:08:46','2021-06-27 04:08:46','',15,'http://gymfitness.local/wp-content/uploads/2021/06/hero-index.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-06-27 04:10:08','2021-06-27 04:10:08','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-27 04:10:08','2021-06-27 04:10:08','',15,'http://gymfitness.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-06-27 22:12:10','2021-06-27 22:12:10','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-27 22:12:10','2021-06-27 22:12:10','',15,'http://gymfitness.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-06-27 23:47:06','2021-06-27 23:47:06','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Bienvenida','bienvenida','publish','closed','closed','','field_60d90d48e57f7','','','2021-06-27 23:48:16','2021-06-27 23:48:16','',104,'http://gymfitness.local/?post_type=acf-field&#038;p=112',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-06-27 23:47:06','2021-06-27 23:47:06','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Encabezado Bienvenida','encabezado_bienvenida','publish','closed','closed','','field_60d90d72e57f8','','','2021-06-27 23:47:06','2021-06-27 23:47:06','',104,'http://gymfitness.local/?post_type=acf-field&p=113',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-06-27 23:47:06','2021-06-27 23:47:06','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Texto Bienvenida','texto_bienvenida','publish','closed','closed','','field_60d90dd7e57f9','','','2021-06-27 23:47:06','2021-06-27 23:47:06','',104,'http://gymfitness.local/?post_type=acf-field&p=114',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-06-27 23:50:59','2021-06-27 23:50:59','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-27 23:50:59','2021-06-27 23:50:59','',15,'http://gymfitness.local/?p=115',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-06-27 23:58:34','2021-06-27 23:58:34','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-27 23:58:34','2021-06-27 23:58:34','',15,'http://gymfitness.local/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2021-06-28 03:05:28','2021-06-28 03:05:28','','area-aparatos','','inherit','open','closed','','area-aparatos','','','2021-06-28 03:07:33','2021-06-28 03:07:33','',15,'http://gymfitness.local/wp-content/uploads/2021/06/area-aparatos.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (134,1,'2021-06-28 03:05:38','2021-06-28 03:05:38','','area-cardio','','inherit','open','closed','','area-cardio','','','2021-06-28 03:07:33','2021-06-28 03:07:33','',15,'http://gymfitness.local/wp-content/uploads/2021/06/area-cardio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (135,1,'2021-06-28 03:05:41','2021-06-28 03:05:41','','area-pesas','','inherit','open','closed','','area-pesas','','','2021-06-28 03:07:33','2021-06-28 03:07:33','',15,'http://gymfitness.local/wp-content/uploads/2021/06/area-pesas.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (136,1,'2021-06-28 03:05:44','2021-06-28 03:05:44','','area-yoga','','inherit','open','closed','','area-yoga','','','2021-06-28 03:07:33','2021-06-28 03:07:33','',15,'http://gymfitness.local/wp-content/uploads/2021/06/area-yoga.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (137,1,'2021-06-28 03:07:33','2021-06-28 03:07:33','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-28 03:07:33','2021-06-28 03:07:33','',15,'http://gymfitness.local/?p=137',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2021-06-28 03:15:36','2021-06-28 03:15:36','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-28 03:15:36','2021-06-28 03:15:36','',15,'http://gymfitness.local/?p=138',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-06-28 03:17:12','2021-06-28 03:17:12','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-28 03:17:12','2021-06-28 03:17:12','',15,'http://gymfitness.local/?p=139',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Areas','areas','publish','closed','closed','','field_60d93f65b55ba','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',104,'http://gymfitness.local/?post_type=acf-field&p=140',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:39:\"Agrega una Imagen y un Título al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 1','area_1','publish','closed','closed','','field_60d93f7ab55bb','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',104,'http://gymfitness.local/?post_type=acf-field&p=141',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60d93f8fb55bc','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',141,'http://gymfitness.local/?post_type=acf-field&p=142',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60d94014b55bd','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',141,'http://gymfitness.local/?post_type=acf-field&p=143',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:39:\"Agrega una Imagen y un Título al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 2','area_2','publish','closed','closed','','field_60d94025b55be','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',104,'http://gymfitness.local/?post_type=acf-field&p=144',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60d94025b55bf','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',144,'http://gymfitness.local/?post_type=acf-field&p=145',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60d94025b55c0','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',144,'http://gymfitness.local/?post_type=acf-field&p=146',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:39:\"Agrega una Imagen y un Título al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 3','area_3','publish','closed','closed','','field_60d9402eb55c1','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',104,'http://gymfitness.local/?post_type=acf-field&p=147',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60d9402eb55c2','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',147,'http://gymfitness.local/?post_type=acf-field&p=148',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60d9402eb55c3','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',147,'http://gymfitness.local/?post_type=acf-field&p=149',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:39:\"Agrega una Imagen y un Título al área\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 4','area_4','publish','closed','closed','','field_60d94034b55c4','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',104,'http://gymfitness.local/?post_type=acf-field&p=150',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_60d94034b55c5','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',150,'http://gymfitness.local/?post_type=acf-field&p=151',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2021-06-28 03:21:34','2021-06-28 03:21:34','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_60d94034b55c6','','','2021-06-28 03:21:34','2021-06-28 03:21:34','',150,'http://gymfitness.local/?post_type=acf-field&p=152',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2021-06-28 03:22:49','2021-06-28 03:22:49','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-28 03:22:49','2021-06-28 03:22:49','',15,'http://gymfitness.local/?p=153',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2021-06-28 03:23:09','2021-06-28 03:23:09','','Inicio','','inherit','closed','closed','','15-revision-v1','','','2021-06-28 03:23:09','2021-06-28 03:23:09','',15,'http://gymfitness.local/?p=154',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2021-06-28 17:57:10','2021-06-28 17:57:10','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"instructores\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Instructores','instructores','publish','closed','closed','','group_60da0cbf6a917','','','2021-06-28 23:01:34','2021-06-28 23:01:34','',0,'http://gymfitness.local/?post_type=acf-field-group&#038;p=155',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2021-06-28 17:57:10','2021-06-28 17:57:10','a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:41:\"Seleccione la especialidad del Instructor\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:5:\"pesas\";s:5:\"Pesas\";s:6:\"cardio\";s:6:\"Cardio\";s:17:\"acondicionamiento\";s:17:\"Acondicionamiento\";s:4:\"yoga\";s:4:\"Yoga\";s:8:\"spinning\";s:8:\"Spinning\";s:5:\"boxeo\";s:5:\"Boxeo\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}','Especialidad','especialidad','publish','closed','closed','','field_60da0cdad41c3','','','2021-06-28 22:59:07','2021-06-28 22:59:07','',155,'http://gymfitness.local/?post_type=acf-field&#038;p=156',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2021-06-28 18:02:13','2021-06-28 18:02:13','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id ratione cupiditate expedita repellat assumenda, incidunt atque est, possimus a harum. Lorem ipsum, dolor sit amet consectetur adipisicing elit.','Pedro','','publish','closed','closed','','pedro','','','2021-06-28 23:07:03','2021-06-28 23:07:03','',0,'http://gymfitness.local/?post_type=instructores&#038;p=157',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2021-06-28 17:59:46','2021-06-28 17:59:46','','instructor3','','inherit','open','closed','','instructor3','','','2021-06-28 17:59:46','2021-06-28 17:59:46','',0,'http://gymfitness.local/wp-content/uploads/2021/06/instructor3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (159,1,'2021-06-28 17:59:56','2021-06-28 17:59:56','','instructor4','','inherit','open','closed','','instructor4','','','2021-06-28 17:59:56','2021-06-28 17:59:56','',0,'http://gymfitness.local/wp-content/uploads/2021/06/instructor4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (160,1,'2021-06-28 17:59:58','2021-06-28 17:59:58','','instructor1','','inherit','open','closed','','instructor1','','','2021-06-28 17:59:58','2021-06-28 17:59:58','',0,'http://gymfitness.local/wp-content/uploads/2021/06/instructor1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (161,1,'2021-06-28 18:00:00','2021-06-28 18:00:00','','instructor2','','inherit','open','closed','','instructor2','','','2021-06-28 18:00:00','2021-06-28 18:00:00','',0,'http://gymfitness.local/wp-content/uploads/2021/06/instructor2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (162,1,'2021-06-28 18:02:57','2021-06-28 18:02:57','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id ratione cupiditate expedita repellat assumenda, incidunt atque est, possimus a harum. Lorem ipsum, dolor sit amet consectetur adipisicing elit.','Vanessa','','publish','closed','closed','','vanessa','','','2021-06-28 23:06:30','2021-06-28 23:06:30','',0,'http://gymfitness.local/?post_type=instructores&#038;p=162',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2021-06-28 18:03:46','2021-06-28 18:03:46','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id ratione cupiditate expedita repellat assumenda, incidunt atque est, possimus a harum. Lorem ipsum, dolor sit amet consectetur adipisicing elit.','Alejandro','','publish','closed','closed','','alejandro','','','2021-06-28 23:05:56','2021-06-28 23:05:56','',0,'http://gymfitness.local/?post_type=instructores&#038;p=163',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2021-06-28 18:05:08','2021-06-28 18:05:08','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id ratione cupiditate expedita repellat assumenda, incidunt atque est, possimus a harum. Lorem ipsum, dolor sit amet consectetur adipisicing elit.','Andrea','','publish','closed','closed','','andrea','','','2021-06-28 23:05:17','2021-06-28 23:05:17','',0,'http://gymfitness.local/?post_type=instructores&#038;p=164',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2021-06-28 18:14:18','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2021-06-28 18:14:18','0000-00-00 00:00:00','',0,'http://gymfitness.local/?post_type=instructores&p=165',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2021-06-28 18:14:20','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2021-06-28 18:14:20','0000-00-00 00:00:00','',0,'http://gymfitness.local/?post_type=instructores&p=166',0,'instructores','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2021-06-28 23:03:53','2021-06-28 23:03:53','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id ratione cupiditate expedita repellat assumenda, incidunt atque est, possimus a harum. Lorem ipsum, dolor sit amet consectetur adipisicing elit.','Alejandro','','inherit','closed','closed','','163-autosave-v1','','','2021-06-28 23:03:53','2021-06-28 23:03:53','',163,'http://gymfitness.local/?p=167',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2021-06-28 23:06:14','2021-06-28 23:06:14','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Id ratione cupiditate expedita repellat assumenda, incidunt atque est, possimus a harum. Lorem ipsum, dolor sit amet consectetur adipisicing elit.','Vanessa','','inherit','closed','closed','','162-autosave-v1','','','2021-06-28 23:06:14','2021-06-28 23:06:14','',162,'http://gymfitness.local/?p=168',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2021-06-28 23:34:08','2021-06-28 23:34:08','Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam in numquam accusamus mollitia aspernatur quam optio sapiente facere perferendis praesentium iste deserunt possimus, tempore, quisquam alias, sequi unde ad.','Fernando Díaz','','publish','closed','closed','','fernando-diaz','','','2021-06-28 23:34:08','2021-06-28 23:34:08','',0,'http://gymfitness.local/?post_type=testimoniales&#038;p=169',0,'testimoniales','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2021-06-28 23:32:02','2021-06-28 23:32:02','','persona-testimonial','','inherit','open','closed','','persona-testimonial','','','2021-06-28 23:32:02','2021-06-28 23:32:02','',169,'http://gymfitness.local/wp-content/uploads/2021/06/persona-testimonial.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (171,1,'2021-06-28 23:36:01','2021-06-28 23:36:01','Excelente gimnasio. Servicio inmejorable. Adoro las clases de Yoga.','Marcela Mar Rodríguez','','publish','closed','closed','','marcela-mar','','','2021-06-29 10:25:09','2021-06-29 10:25:09','',0,'http://gymfitness.local/?post_type=testimoniales&#038;p=171',0,'testimoniales','',0);
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
INSERT INTO `wp_term_relationships` VALUES (9,1,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,2,0);
INSERT INTO `wp_term_relationships` VALUES (57,1,0);
INSERT INTO `wp_term_relationships` VALUES (59,2,0);
INSERT INTO `wp_term_relationships` VALUES (77,7,0);
INSERT INTO `wp_term_relationships` VALUES (77,8,0);
INSERT INTO `wp_term_relationships` VALUES (79,7,0);
INSERT INTO `wp_term_relationships` VALUES (82,8,0);
INSERT INTO `wp_term_relationships` VALUES (84,6,0);
INSERT INTO `wp_term_relationships` VALUES (84,7,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
INSERT INTO `wp_terms` VALUES (3,'Ejercicios','ejercicios',0);
INSERT INTO `wp_terms` VALUES (4,'Tips','tips',0);
INSERT INTO `wp_terms` VALUES (5,'Básicos','basicos',0);
INSERT INTO `wp_terms` VALUES (6,'Básicos','basicos',0);
INSERT INTO `wp_terms` VALUES (7,'Tips','tips',0);
INSERT INTO `wp_terms` VALUES (8,'Ejercicios','ejercicios',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','ewnarvaez');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Edwin Willer');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Narváez Burbano');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Edwin Willer Narváez es un ingeniero que siempre esta buscando formas de crecer y hacer las cosas mejor');
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
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','60');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse&widgets_access=off&urlbutton=file&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1624831926');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:4:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'session_tokens','a:1:{s:64:\"803368bef282457a1b33d6e29014ebe7462596be1c4c43569fccb68f44b3234d\";a:4:{s:10:\"expiration\";i:1625706286;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\";s:5:\"login\";i:1624496686;}}');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_page','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:75:\"acf-group_60d6a8c13c9da,revisionsdiv,commentstatusdiv,commentsdiv,authordiv\";s:8:\"advanced\";s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'screen_layout_page','2');
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
INSERT INTO `wp_users` VALUES (1,'admin','$P$BUBFlasI3vJiDTSoGSccYBumQT4WCD1','admin','dev-email@flywheel.local','http://gymfitness.local','2021-06-16 03:21:27','',0,'Edwin Willer Narváez Burbano');
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

-- Dump completed on 2021-06-30  0:00:33
