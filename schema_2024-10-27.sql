-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: devijen_cart
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cscart_ab__ab_bots`
--

DROP TABLE IF EXISTS `cscart_ab__ab_bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__ab_bots` (
  `bot_id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL DEFAULT '',
  `pattern` varchar(100) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'B',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`bot_id`),
  KEY `type` (`type`),
  KEY `pattern` (`pattern`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__am_tooltips`
--

DROP TABLE IF EXISTS `cscart_ab__am_tooltips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__am_tooltips` (
  `dispatch` varchar(100) NOT NULL,
  `addon` varchar(100) NOT NULL,
  `version_min` varchar(10) NOT NULL,
  `version_max` varchar(10) NOT NULL,
  `item` varchar(100) NOT NULL,
  `item_data` mediumtext NOT NULL,
  KEY `dispatch_addon` (`dispatch`,`addon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__as_links`
--

DROP TABLE IF EXISTS `cscart_ab__as_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__as_links` (
  `link` varchar(255) NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__category_banner_categories`
--

DROP TABLE IF EXISTS `cscart_ab__category_banner_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__category_banner_categories` (
  `category_banner_id` mediumint unsigned NOT NULL DEFAULT '0',
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_banner_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__category_banner_images_and_descr`
--

DROP TABLE IF EXISTS `cscart_ab__category_banner_images_and_descr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__category_banner_images_and_descr` (
  `category_banner_image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `category_banner_id` mediumint unsigned NOT NULL DEFAULT '0',
  `category_banner` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`category_banner_image_id`),
  UNIQUE KEY `banner` (`category_banner_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__category_banners`
--

DROP TABLE IF EXISTS `cscart_ab__category_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__category_banners` (
  `category_banner_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `target_blank` char(1) NOT NULL DEFAULT 'Y',
  `nofollow` char(1) NOT NULL DEFAULT 'N',
  `repeat` text NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT '',
  `include_subcategories` char(1) NOT NULL DEFAULT 'Y',
  `from_date` int unsigned NOT NULL DEFAULT '0',
  `to_date` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_banner_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__dotd`
--

DROP TABLE IF EXISTS `cscart_ab__dotd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__dotd` (
  `promotion_id` mediumint unsigned NOT NULL,
  `filter` char(1) NOT NULL DEFAULT 'N',
  `use_products_filter` char(1) NOT NULL DEFAULT 'Y',
  `hide_products_block` char(1) NOT NULL DEFAULT 'N',
  `show_label_in_products_lists` char(1) NOT NULL DEFAULT 'Y',
  `use_schedule` char(1) NOT NULL DEFAULT 'N',
  `ab__dotd_schedule` text,
  `show_in_products_lists` char(1) NOT NULL DEFAULT 'Y',
  `show_counter_on_promotion_page` char(1) NOT NULL DEFAULT 'Y',
  `show_counter_on_product_page` char(1) NOT NULL DEFAULT 'Y',
  `group_by_category` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`promotion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__dotd_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__dotd_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__dotd_descriptions` (
  `promotion_id` mediumint unsigned NOT NULL,
  `h1` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`promotion_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__dotd_periods`
--

DROP TABLE IF EXISTS `cscart_ab__dotd_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__dotd_periods` (
  `promotion_id` mediumint unsigned NOT NULL,
  `from_date` int unsigned NOT NULL DEFAULT '0',
  `to_date` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`promotion_id`,`from_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__emd_categories_patterns`
--

DROP TABLE IF EXISTS `cscart_ab__emd_categories_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__emd_categories_patterns` (
  `category_id` mediumint unsigned NOT NULL,
  `category_pattern_id` mediumint unsigned NOT NULL,
  `products_pattern_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__emd_patterns`
--

DROP TABLE IF EXISTS `cscart_ab__emd_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__emd_patterns` (
  `pattern_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `object` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pattern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__emd_patterns_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__emd_patterns_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__emd_patterns_descriptions` (
  `pattern_id` mediumint unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pattern_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__emd_settings`
--

DROP TABLE IF EXISTS `cscart_ab__emd_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__emd_settings` (
  `dispatch` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`dispatch`,`company_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__gp_location_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__gp_location_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__gp_location_descriptions` (
  `location_id` int NOT NULL,
  `lang_code` char(2) NOT NULL,
  `seo_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `location_form_1` varchar(100) NOT NULL,
  `location_form_2` varchar(100) NOT NULL,
  `location_form_3` varchar(100) NOT NULL,
  `location_form_4` varchar(100) NOT NULL,
  `location_form_5` varchar(100) NOT NULL,
  `location_form_6` varchar(100) NOT NULL,
  `location_form_7` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`,`lang_code`),
  KEY `seo_name` (`seo_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__gp_locations`
--

DROP TABLE IF EXISTS `cscart_ab__gp_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__gp_locations` (
  `location_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `status` char(1) NOT NULL,
  `seo_name` varchar(100) NOT NULL,
  `link_type` char(1) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__gp_object_location_settings`
--

DROP TABLE IF EXISTS `cscart_ab__gp_object_location_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__gp_object_location_settings` (
  `object_id` int NOT NULL,
  `object_type` varchar(25) NOT NULL,
  `location_id` int NOT NULL,
  `template_id` int NOT NULL,
  `enable` char(1) DEFAULT 'N',
  `is_noindex` char(1) NOT NULL DEFAULT 'N',
  `canonical_id` int DEFAULT NULL,
  PRIMARY KEY (`object_id`,`object_type`,`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__gp_template_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__gp_template_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__gp_template_descriptions` (
  `template_id` int NOT NULL,
  `lang_code` char(2) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  PRIMARY KEY (`template_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__gp_templates`
--

DROP TABLE IF EXISTS `cscart_ab__gp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__gp_templates` (
  `template_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int DEFAULT NULL,
  `object_type` char(1) DEFAULT NULL,
  `company_id` int NOT NULL,
  `is_global` char(1) NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__is_attribute_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__is_attribute_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__is_attribute_descriptions` (
  `is_id` mediumint unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `prefix` varchar(255) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `suffix` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`is_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__is_attributes`
--

DROP TABLE IF EXISTS `cscart_ab__is_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__is_attributes` (
  `is_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `attribute_type` char(1) NOT NULL DEFAULT 'T',
  `object_type` char(1) NOT NULL DEFAULT 'P',
  PRIMARY KEY (`is_id`),
  UNIQUE KEY `storefront_id` (`storefront_id`,`attribute_type`,`object_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__md_item_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__md_item_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__md_item_descriptions` (
  `mdi_id` int unsigned NOT NULL,
  `lang_code` char(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`mdi_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__md_item_settings`
--

DROP TABLE IF EXISTS `cscart_ab__md_item_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__md_item_settings` (
  `item_id` int NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'N',
  `is_global` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`item_id`,`object_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__md_items`
--

DROP TABLE IF EXISTS `cscart_ab__md_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__md_items` (
  `mdi_id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag` enum('div','h2','h3','h4','h5') NOT NULL DEFAULT 'div',
  `is_faq` char(1) NOT NULL DEFAULT 'N',
  `is_open` char(1) NOT NULL DEFAULT 'Y',
  `status` char(1) NOT NULL DEFAULT 'A',
  `position` int unsigned NOT NULL DEFAULT '0',
  `position_on_page` char(1) NOT NULL DEFAULT 'I',
  `item_type` varchar(50) NOT NULL,
  `filling_type` varchar(50) NOT NULL,
  `filling_data` text NOT NULL,
  PRIMARY KEY (`mdi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__md_items_links`
--

DROP TABLE IF EXISTS `cscart_ab__md_items_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__md_items_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `item_id` int NOT NULL,
  `link_type` char(1) NOT NULL DEFAULT 'I',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`,`object_type`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_competitor_attribute_group_rules`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_competitor_attribute_group_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_competitor_attribute_group_rules` (
  `rule_id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int unsigned NOT NULL,
  `section` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `position` smallint unsigned NOT NULL,
  `rule` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_competitor_attribute_groups`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_competitor_attribute_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_competitor_attribute_groups` (
  `group_id` int unsigned NOT NULL AUTO_INCREMENT,
  `competitor_id` int unsigned NOT NULL,
  `attribute` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_competitor_test_links`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_competitor_test_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_competitor_test_links` (
  `test_link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `competitor_id` int unsigned NOT NULL,
  `test_link` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `download_content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `download_timestamp` int unsigned NOT NULL DEFAULT '0',
  `download_status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `http_headers` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `http_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`test_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_competitors`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_competitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_competitors` (
  `competitor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `competitor` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `encoding` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'utf-8',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `scraper` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'curl',
  `scraper_settings` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `parser_parameters` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `max_result_length` int unsigned NOT NULL DEFAULT '6000',
  PRIMARY KEY (`competitor_id`),
  UNIQUE KEY `competitor` (`competitor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_formula_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_formula_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_formula_descriptions` (
  `formula_id` int unsigned NOT NULL,
  `lang_code` char(2) COLLATE utf8mb4_general_ci NOT NULL,
  `formula` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`formula_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_formula_item_condition_group_expressions`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_formula_item_condition_group_expressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_formula_item_condition_group_expressions` (
  `icge_id` int unsigned NOT NULL AUTO_INCREMENT,
  `icg_id` int unsigned NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`icge_id`),
  KEY `icg_id` (`icge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_formula_item_condition_groups`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_formula_item_condition_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_formula_item_condition_groups` (
  `icg_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`icg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_formula_items`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_formula_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_formula_items` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `formula_id` int unsigned NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'operation',
  `parent_condition_item_id` int unsigned NOT NULL DEFAULT '0',
  `parent_condition_operation_state` enum('','true','false') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `formula_id` (`formula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_formulas`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_formulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_formulas` (
  `formula_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL,
  `use_competitors_conditions` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `product_has_active_competitors` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `product_has_one_competitor_with_availability` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `data_relevance` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_zero_pricing` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`formula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_product_competitor_parsing_logs`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_product_competitor_parsing_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_product_competitor_parsing_logs` (
  `pcpl_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `pc_id` int unsigned NOT NULL DEFAULT '0',
  `download_timestamp` int unsigned NOT NULL,
  `download_status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `http_headers` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `http_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `parsing_timestamp` int unsigned NOT NULL DEFAULT '0',
  `parsing_attributes` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `download_year` varchar(4) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '2021',
  `download_month` varchar(2) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '01',
  `download_day` varchar(2) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '01',
  PRIMARY KEY (`pcpl_id`),
  KEY `company_id` (`company_id`),
  KEY `http_status` (`http_status`),
  KEY `parsing_timestamp` (`parsing_timestamp`),
  KEY `download_timestamp` (`download_timestamp`),
  KEY `download_status` (`download_status`),
  KEY `download_year_month_day` (`download_year`,`download_month`,`download_day`),
  KEY `pc_id` (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_product_competitors`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_product_competitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_product_competitors` (
  `pc_id` int unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `competitor_id` int unsigned NOT NULL DEFAULT '0',
  `url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `last_parsing_timestamp` int unsigned NOT NULL DEFAULT '0',
  `last_parsing_attributes` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `parsing_statistics` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `last_http_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `parser_parameters` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pc_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_product_formulas`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_product_formulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_product_formulas` (
  `pf_id` int unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int unsigned NOT NULL,
  `formula_id` int unsigned NOT NULL,
  PRIMARY KEY (`pf_id`),
  UNIQUE KEY `p_id_formula_id` (`p_id`,`formula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_product_formulas_logs`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_product_formulas_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_product_formulas_logs` (
  `pfl_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `applied_formula_id` int unsigned NOT NULL DEFAULT '0',
  `is_auto_applied` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `p_id` int unsigned NOT NULL,
  `formula_ids` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pfl_id`),
  KEY `p_id` (`p_id`),
  KEY `company_id_p_id` (`company_id`,`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_products`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_products` (
  `p_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `rpm_min` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `rpm` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `rpm_max` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `my_purchase_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `my_initial_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `my_min_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `allow_parsing_automatically` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `allow_pricing_automatically` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `parsing_period` int NOT NULL DEFAULT '7200',
  `parsing_timestamp` int NOT NULL DEFAULT '0',
  `parsing_priority` smallint unsigned NOT NULL DEFAULT '0',
  `competitor_count` int unsigned NOT NULL DEFAULT '0',
  `competitor_list` text COLLATE utf8mb4_general_ci NOT NULL,
  `formula_count` int unsigned NOT NULL DEFAULT '0',
  `formula_list` text COLLATE utf8mb4_general_ci NOT NULL,
  `pricing_timestamp` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `product_id_company_id` (`product_id`,`company_id`),
  KEY `pricing_timestamp` (`pricing_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_proxy_servers`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_proxy_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_proxy_servers` (
  `ps_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `port` int unsigned NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'HTTPS',
  `login` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `time_to` int unsigned NOT NULL DEFAULT '0',
  `usage_counter` int unsigned NOT NULL DEFAULT '0',
  `last_usage_time` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_reports`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_reports` (
  `report_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL DEFAULT '0',
  `report` varchar(200) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  `period` varchar(2) NOT NULL DEFAULT 'D',
  `selected_competitors` varchar(1000) NOT NULL,
  `selected_attribute` varchar(100) NOT NULL DEFAULT 'PR',
  `only_in_stock` char(1) DEFAULT 'Y',
  `selected_products` mediumtext NOT NULL,
  `table_format` enum('competitors_in_columns','competitors_in_rows') NOT NULL DEFAULT 'competitors_in_columns',
  `position` int unsigned NOT NULL DEFAULT '0',
  `allow_use_ftp` char(1) NOT NULL DEFAULT 'N',
  `ftp_server` varchar(100) NOT NULL,
  `ftp_port` varchar(10) DEFAULT NULL,
  `ftp_directory` varchar(50) DEFAULT NULL,
  `ftp_user` varchar(100) NOT NULL,
  `ftp_password` varchar(100) NOT NULL,
  `allow_use_email` char(1) NOT NULL DEFAULT 'N',
  `email` varchar(100) NOT NULL,
  `email_subject` varchar(100) DEFAULT NULL,
  `break_down` enum('by_date','by_product') NOT NULL DEFAULT 'by_date',
  `date_format` varchar(100) DEFAULT NULL,
  `show_feature` int NOT NULL DEFAULT '0',
  `show_product_code` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_scrapers`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_scrapers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_scrapers` (
  `scraper` varchar(200) NOT NULL,
  `api_key` varchar(200) NOT NULL,
  `remaining_requests` int unsigned DEFAULT '0',
  `concurrent_requests` int DEFAULT '1',
  `usage_counter` int unsigned NOT NULL DEFAULT '0',
  `last_usage_time` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scraper`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_competitor_attribute_group_rules`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_competitor_attribute_group_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_competitor_attribute_group_rules` (
  `rule_id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int unsigned NOT NULL,
  `section` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `position` smallint unsigned NOT NULL,
  `rule` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_competitor_attribute_groups`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_competitor_attribute_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_competitor_attribute_groups` (
  `group_id` int unsigned NOT NULL AUTO_INCREMENT,
  `competitor_id` int unsigned NOT NULL,
  `attribute` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_competitor_test_links`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_competitor_test_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_competitor_test_links` (
  `test_link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `competitor_id` int unsigned NOT NULL,
  `test_link` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `download_content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `download_timestamp` int unsigned NOT NULL DEFAULT '0',
  `download_status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `http_headers` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `http_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`test_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_competitors`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_competitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_competitors` (
  `competitor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `competitor` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`competitor_id`),
  UNIQUE KEY `competitor` (`competitor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_formula_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_formula_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_formula_descriptions` (
  `formula_id` int unsigned NOT NULL,
  `lang_code` char(2) COLLATE utf8mb4_general_ci NOT NULL,
  `formula` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`formula_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_formula_item_condition_group_expressions`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_formula_item_condition_group_expressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_formula_item_condition_group_expressions` (
  `icge_id` int unsigned NOT NULL AUTO_INCREMENT,
  `icg_id` int unsigned NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`icge_id`),
  KEY `icg_id` (`icge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_formula_item_condition_groups`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_formula_item_condition_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_formula_item_condition_groups` (
  `icg_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`icg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_formula_items`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_formula_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_formula_items` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `formula_id` int unsigned NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'operation',
  `parent_condition_item_id` int unsigned NOT NULL DEFAULT '0',
  `parent_condition_operation_state` enum('','true','false') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_formulas`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_formulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_formulas` (
  `formula_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL,
  `use_competitors_conditions` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `product_has_active_competitors` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `product_has_one_competitor_with_availability` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `data_relevance` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`formula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_product_competitor_parsing_logs`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_product_competitor_parsing_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_product_competitor_parsing_logs` (
  `pcpl_id` int unsigned NOT NULL AUTO_INCREMENT,
  `pc_id` int unsigned NOT NULL DEFAULT '0',
  `download_timestamp` int unsigned NOT NULL,
  `download_status` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `http_headers` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `http_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `parsing_timestamp` int unsigned NOT NULL DEFAULT '0',
  `parsing_attributes` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pcpl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_product_competitors`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_product_competitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_product_competitors` (
  `pc_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `competitor_id` int unsigned NOT NULL DEFAULT '0',
  `url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `last_parsing_timestamp` int unsigned NOT NULL DEFAULT '0',
  `last_parsing_attributes` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `parsing_statistics` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_product_formulas`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_product_formulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_product_formulas` (
  `pf_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `formula_id` int unsigned NOT NULL,
  PRIMARY KEY (`pf_id`),
  UNIQUE KEY `product_formula` (`product_id`,`formula_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_product_formulas_logs`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_product_formulas_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_product_formulas_logs` (
  `pfl_id` int unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `applied_formula_id` int unsigned NOT NULL DEFAULT '0',
  `is_auto_applied` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `product_id` int unsigned NOT NULL,
  `formula_ids` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`pfl_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_products`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_products` (
  `product_id` int unsigned NOT NULL,
  `rpm_min` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `rpm` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `rpm_max` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `my_purchase_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `my_min_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `allow_parsing_automatically` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `allow_pricing_automatically` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `parsing_period` int NOT NULL DEFAULT '7200',
  `parsing_timestamp` int NOT NULL DEFAULT '0',
  `parsing_priority` smallint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `pruduct_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__rpr_v101_proxy_servers`
--

DROP TABLE IF EXISTS `cscart_ab__rpr_v101_proxy_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__rpr_v101_proxy_servers` (
  `ps_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `port` int unsigned NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `time_to` int unsigned NOT NULL DEFAULT '0',
  `usage_counter` int unsigned NOT NULL DEFAULT '0',
  `last_usage_time` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__search_motivation`
--

DROP TABLE IF EXISTS `cscart_ab__search_motivation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__search_motivation` (
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL,
  `search_phrases` mediumtext NOT NULL,
  PRIMARY KEY (`category_id`,`company_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sf_name_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__sf_name_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sf_name_descriptions` (
  `sf_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_in_subcategory_block` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `short_description` text,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `tag_h1` varchar(255) NOT NULL DEFAULT '',
  `breadcrumb` varchar(255) NOT NULL,
  `product_breadcrumb` varchar(255) NOT NULL,
  PRIMARY KEY (`sf_id`,`lang_code`),
  KEY `name__lang_code` (`name`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sf_names`
--

DROP TABLE IF EXISTS `cscart_ab__sf_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sf_names` (
  `sf_id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `features_hash` varchar(100) NOT NULL,
  `fixed` char(1) NOT NULL DEFAULT 'U',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `show_in_breadcrumbs` char(1) NOT NULL DEFAULT 'Y',
  `show_in_subcategory_block` char(1) NOT NULL DEFAULT 'N',
  `is_noindex` char(1) NOT NULL DEFAULT 'N',
  `position_in_subcategory_block` int unsigned NOT NULL DEFAULT '0',
  `edit_mark` char(1) NOT NULL DEFAULT 'N',
  `canonical_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sf_id`),
  KEY `fixed_category_hash` (`fixed`,`category_id`,`features_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sf_patterns`
--

DROP TABLE IF EXISTS `cscart_ab__sf_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sf_patterns` (
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `value` varchar(1000) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pattern`,`lang_code`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sf_rule_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__sf_rule_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sf_rule_descriptions` (
  `rule_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `description` mediumtext,
  `short_description` text,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `tag_h1` varchar(255) NOT NULL DEFAULT '',
  `breadcrumb` varchar(255) NOT NULL,
  `product_breadcrumb` varchar(255) NOT NULL,
  PRIMARY KEY (`rule_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sf_rules`
--

DROP TABLE IF EXISTS `cscart_ab__sf_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sf_rules` (
  `rule_id` int unsigned NOT NULL AUTO_INCREMENT,
  `feature_id` text NOT NULL,
  `categories` text NOT NULL,
  `subcats` char(1) NOT NULL DEFAULT 'Y',
  `position` int unsigned NOT NULL,
  `fixed` char(1) NOT NULL DEFAULT 'U',
  `status` char(1) NOT NULL DEFAULT 'D',
  `generated_categories` enum('by_all_filter_categories','by_non_empty_filter_categories') NOT NULL DEFAULT 'by_all_filter_categories',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `show_in_breadcrumbs` char(1) NOT NULL DEFAULT 'Y',
  `link_pattern` varchar(20) NOT NULL DEFAULT 'variant',
  `autogenerate` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__short_desc_from_features_flags`
--

DROP TABLE IF EXISTS `cscart_ab__short_desc_from_features_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__short_desc_from_features_flags` (
  `feature_id` mediumint unsigned NOT NULL,
  `use_for_desc` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__short_desc_from_features_values`
--

DROP TABLE IF EXISTS `cscart_ab__short_desc_from_features_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__short_desc_from_features_values` (
  `product_id` mediumint unsigned NOT NULL,
  `feature_short_desc` mediumtext NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`lang_code`,`company_id`,`storefront_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__so_noindex_tech_pages`
--

DROP TABLE IF EXISTS `cscart_ab__so_noindex_tech_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__so_noindex_tech_pages` (
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(20) NOT NULL DEFAULT '',
  `var` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`object_id`,`company_id`,`object_type`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sr_reviews_page_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__sr_reviews_page_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sr_reviews_page_descriptions` (
  `reviews_page_id` int unsigned NOT NULL,
  `h1` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`reviews_page_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sr_reviews_pages`
--

DROP TABLE IF EXISTS `cscart_ab__sr_reviews_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sr_reviews_pages` (
  `reviews_page_id` int unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `object_type` varchar(32) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`reviews_page_id`),
  UNIQUE KEY `object_id` (`object_id`,`object_type`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sticker_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__sticker_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sticker_descriptions` (
  `sticker_id` mediumint unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name_for_desktop` varchar(255) NOT NULL DEFAULT '',
  `name_for_mobile` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `pictogram_data` mediumtext,
  PRIMARY KEY (`sticker_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sticker_images`
--

DROP TABLE IF EXISTS `cscart_ab__sticker_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sticker_images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `sticker_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `sticker_id` (`sticker_id`,`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__sticker_pictograms`
--

DROP TABLE IF EXISTS `cscart_ab__sticker_pictograms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__sticker_pictograms` (
  `image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `sticker_id` mediumint unsigned NOT NULL,
  `product_id` mediumint unsigned NOT NULL,
  `lang_code` char(2) NOT NULL,
  UNIQUE KEY `pictogram_image` (`image_id`,`sticker_id`,`product_id`,`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__stickers`
--

DROP TABLE IF EXISTS `cscart_ab__stickers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__stickers` (
  `sticker_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `storefront_ids` varchar(255) NOT NULL DEFAULT '',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `name_for_admin` varchar(255) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'C',
  `style` char(1) NOT NULL DEFAULT 'T',
  `display_on_lists` mediumtext,
  `display_on_detailed_pages` varchar(64) NOT NULL DEFAULT 'full_size',
  `output_position_list` char(1) NOT NULL DEFAULT 'T',
  `output_position_detailed_page` char(1) NOT NULL DEFAULT 'T',
  `appearance` mediumtext,
  `pictogram_data` mediumtext,
  `conditions` mediumtext,
  `from_date` int unsigned NOT NULL DEFAULT '0',
  `to_date` int unsigned NOT NULL DEFAULT '0',
  `last_update_time` int unsigned NOT NULL DEFAULT '0',
  `last_update_time_pictogram` int unsigned NOT NULL DEFAULT '0',
  `vendor_edit` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`sticker_id`),
  KEY `output_position_list` (`output_position_list`),
  KEY `output_position_detailed_page` (`output_position_detailed_page`),
  KEY `storefront_id` (`storefront_ids`),
  KEY `c_status` (`status`,`usergroup_ids`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__tag_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__tag_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__tag_descriptions` (
  `tag_id` mediumint unsigned NOT NULL,
  `h1` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__vendor_stickers`
--

DROP TABLE IF EXISTS `cscart_ab__vendor_stickers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__vendor_stickers` (
  `sticker_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `vendor_status` char(1) NOT NULL DEFAULT 'A',
  UNIQUE KEY `sticker_company_id` (`sticker_id`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__video_gallery`
--

DROP TABLE IF EXISTS `cscart_ab__video_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__video_gallery` (
  `video_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) NOT NULL DEFAULT 'Y',
  `product_id` mediumint unsigned NOT NULL,
  `pos` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `width` smallint unsigned NOT NULL DEFAULT '0',
  `height` smallint unsigned NOT NULL DEFAULT '0',
  `icon_type` varchar(16) NOT NULL DEFAULT 'snapshot',
  `settings` text NOT NULL,
  PRIMARY KEY (`video_id`),
  KEY `status` (`status`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__video_gallery_descriptions`
--

DROP TABLE IF EXISTS `cscart_ab__video_gallery_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__video_gallery_descriptions` (
  `video_id` mediumint unsigned NOT NULL,
  `video_path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`video_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ab__video_gallery_settings`
--

DROP TABLE IF EXISTS `cscart_ab__video_gallery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ab__video_gallery_settings` (
  `product_id` mediumint unsigned NOT NULL,
  `var` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`,`var`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_absolute_rating`
--

DROP TABLE IF EXISTS `cscart_absolute_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_absolute_rating` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(32) NOT NULL DEFAULT 'company',
  `updated_timestamp` int unsigned NOT NULL DEFAULT '0',
  `rating` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`object_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_banner_images`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_banner_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_banner_images` (
  `abt__ut2_banner_image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `banner_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`abt__ut2_banner_image_id`),
  UNIQUE KEY `banner_lang_code` (`banner_id`,`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9449 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_checkout_cities`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_checkout_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_checkout_cities` (
  `city_id` int NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `state_code` varchar(32) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_fly_menu_content`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_fly_menu_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_fly_menu_content` (
  `item_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `position` mediumint unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_less_settings`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_less_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_less_settings` (
  `section` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` mediumtext,
  `style` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`section`,`name`,`style`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_microdata`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_microdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_microdata` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_microdata_description`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_microdata_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_microdata_description` (
  `id` mediumint unsigned NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut2_settings`
--

DROP TABLE IF EXISTS `cscart_abt__ut2_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut2_settings` (
  `section` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `value` mediumtext,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`section`,`name`,`storefront_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut_microdata`
--

DROP TABLE IF EXISTS `cscart_abt__ut_microdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut_microdata` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut_microdata_description`
--

DROP TABLE IF EXISTS `cscart_abt__ut_microdata_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut_microdata_description` (
  `id` mediumint unsigned NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_abt__ut_settings`
--

DROP TABLE IF EXISTS `cscart_abt__ut_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_abt__ut_settings` (
  `name` varchar(50) NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`name`,`company_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_access_restriction`
--

DROP TABLE IF EXISTS `cscart_access_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_access_restriction` (
  `item_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(66) NOT NULL DEFAULT '',
  `ip_from` varbinary(40) NOT NULL DEFAULT '',
  `ip_to` varbinary(40) NOT NULL DEFAULT '',
  `type` char(3) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `expires` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_access_restriction_block`
--

DROP TABLE IF EXISTS `cscart_access_restriction_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_access_restriction_block` (
  `id_block` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varbinary(40) NOT NULL DEFAULT '',
  `tries` smallint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `expires` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_block`)
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_access_restriction_reason_descriptions`
--

DROP TABLE IF EXISTS `cscart_access_restriction_reason_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_access_restriction_reason_descriptions` (
  `item_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `type` char(3) NOT NULL DEFAULT '',
  `reason` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`,`type`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_addon_data`
--

DROP TABLE IF EXISTS `cscart_addon_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_addon_data` (
  `addon` varchar(32) NOT NULL DEFAULT '',
  `is_favorite` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`addon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_addon_descriptions`
--

DROP TABLE IF EXISTS `cscart_addon_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_addon_descriptions` (
  `addon` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`addon`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_addons`
--

DROP TABLE IF EXISTS `cscart_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_addons` (
  `addon` varchar(32) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `version` varchar(16) NOT NULL DEFAULT '',
  `priority` int unsigned NOT NULL DEFAULT '0',
  `dependencies` varchar(255) NOT NULL DEFAULT '',
  `conflicts` varchar(255) NOT NULL DEFAULT '',
  `separate` tinyint(1) NOT NULL,
  `unmanaged` tinyint(1) NOT NULL,
  `has_icon` tinyint(1) NOT NULL,
  `install_datetime` int NOT NULL DEFAULT '0',
  `marketplace_id` int unsigned DEFAULT NULL,
  `marketplace_license_key` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`addon`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_also_bought_products`
--

DROP TABLE IF EXISTS `cscart_also_bought_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_also_bought_products` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `related_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_api_guest_orders`
--

DROP TABLE IF EXISTS `cscart_api_guest_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_api_guest_orders` (
  `guest_id` int unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guest_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_api_user_data`
--

DROP TABLE IF EXISTS `cscart_api_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_api_user_data` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `guest_id` int unsigned NOT NULL DEFAULT '0',
  `geolocation` tinytext,
  `last_activity_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `recently_viewed_product_ids` text,
  PRIMARY KEY (`user_id`,`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_api_wishlist`
--

DROP TABLE IF EXISTS `cscart_api_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_api_wishlist` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `guest_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`guest_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_attachment_descriptions`
--

DROP TABLE IF EXISTS `cscart_attachment_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_attachment_descriptions` (
  `attachment_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`attachment_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_attachments`
--

DROP TABLE IF EXISTS `cscart_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_attachments` (
  `attachment_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object_type` varchar(30) NOT NULL DEFAULT '',
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  `position` int NOT NULL DEFAULT '0',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `filesize` int unsigned NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `url` varchar(255) NOT NULL DEFAULT '',
  `on_server` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`attachment_id`),
  KEY `object_type` (`object_type`,`object_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_avp_backup_settings_addons`
--

DROP TABLE IF EXISTS `cscart_avp_backup_settings_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_avp_backup_settings_addons` (
  `addon` varchar(48) NOT NULL,
  `settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_banner_descriptions`
--

DROP TABLE IF EXISTS `cscart_banner_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_banner_descriptions` (
  `banner_id` mediumint unsigned NOT NULL DEFAULT '0',
  `banner` varchar(255) NOT NULL DEFAULT '',
  `ab__color_scheme` text NOT NULL,
  `ab__bg_color` text NOT NULL,
  `ab__button_text` text NOT NULL,
  `ab__adv_text` text NOT NULL,
  `ab__title` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `abt__ut2_button_text` varchar(50) NOT NULL DEFAULT '',
  `abt__ut2_tablet_button_text` varchar(50) NOT NULL DEFAULT '',
  `abt__ut2_tablet_button_text_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_text` varchar(50) NOT NULL DEFAULT '',
  `abt__ut2_mobile_button_text_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_title` varchar(255) NOT NULL DEFAULT '',
  `abt__ut2_tablet_title` varchar(255) NOT NULL DEFAULT '',
  `abt__ut2_tablet_title_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_title` varchar(255) NOT NULL DEFAULT '',
  `abt__ut2_mobile_title_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_url` varchar(255) NOT NULL DEFAULT '',
  `abt__ut2_description` mediumtext,
  `abt__ut2_tablet_description` mediumtext,
  `abt__ut2_tablet_description_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_description` mediumtext,
  `abt__ut2_mobile_description_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_youtube_id` varchar(15) NOT NULL DEFAULT '',
  `abt__ut2_youtube_playlist` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`banner_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_banner_images`
--

DROP TABLE IF EXISTS `cscart_banner_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_banner_images` (
  `banner_image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `banner_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`banner_image_id`),
  UNIQUE KEY `banner` (`banner_id`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=71384 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_banners`
--

DROP TABLE IF EXISTS `cscart_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_banners` (
  `banner_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `type` char(20) NOT NULL DEFAULT 'G',
  `target` char(1) NOT NULL DEFAULT 'B',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `abt__ut2_use_avail_period` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_avail_from` int NOT NULL DEFAULT '0',
  `abt__ut2_avail_till` int NOT NULL DEFAULT '0',
  `abt__ut2_button_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_button_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_button_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_button_text_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_tablet_button_text_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_tablet_button_text_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_text_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_mobile_button_text_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_button_text_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_button_text_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_button_text_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_text_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_text_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_button_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_tablet_button_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_tablet_button_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_mobile_button_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_button_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_button_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_button_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_button_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_title_font_size` varchar(7) NOT NULL DEFAULT '18px',
  `abt__ut2_tablet_title_font_size` varchar(7) NOT NULL DEFAULT '18px',
  `abt__ut2_tablet_title_font_size_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_title_font_size` varchar(7) NOT NULL DEFAULT '18px',
  `abt__ut2_mobile_title_font_size_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_title_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_title_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_title_font_weight` varchar(4) NOT NULL DEFAULT '300',
  `abt__ut2_title_tag` enum('div','h1','h2','h3') NOT NULL DEFAULT 'div',
  `abt__ut2_background_image_size` enum('cover','contain') NOT NULL DEFAULT 'cover',
  `abt__ut2_tablet_background_image_size` enum('cover','contain') NOT NULL DEFAULT 'cover',
  `abt__ut2_tablet_background_image_size_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_background_image_size` enum('cover','contain') NOT NULL DEFAULT 'cover',
  `abt__ut2_mobile_background_image_size_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_title_shadow` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_title_shadow` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_title_shadow_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_title_shadow` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_title_shadow_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_description_font_size` varchar(7) NOT NULL DEFAULT '13px',
  `abt__ut2_tablet_description_font_size` varchar(7) NOT NULL DEFAULT '13px',
  `abt__ut2_tablet_description_font_size_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_description_font_size` varchar(7) NOT NULL DEFAULT '13px',
  `abt__ut2_mobile_description_font_size_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_description_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_description_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_description_bg_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_description_bg_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_main_image_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_main_image_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_background_image_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_background_image_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_object` enum('image','video') NOT NULL DEFAULT 'image',
  `abt__ut2_background_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_background_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_class` varchar(100) NOT NULL DEFAULT '',
  `abt__ut2_color_scheme` enum('light','dark') NOT NULL DEFAULT 'light',
  `abt__ut2_content_valign` enum('top','center','bottom') NOT NULL DEFAULT 'center',
  `abt__ut2_tablet_content_valign` enum('top','center','bottom') NOT NULL DEFAULT 'center',
  `abt__ut2_tablet_content_valign_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_valign` enum('top','center','bottom') NOT NULL DEFAULT 'center',
  `abt__ut2_mobile_content_valign_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_align` enum('left','center','right') NOT NULL DEFAULT 'center',
  `abt__ut2_tablet_content_align` enum('left','center','right') NOT NULL DEFAULT 'center',
  `abt__ut2_tablet_content_align_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_align` enum('left','center','right') NOT NULL DEFAULT 'center',
  `abt__ut2_mobile_content_align_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_full_width` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_full_width` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_full_width_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_full_width` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_full_width_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_bg` varchar(20) NOT NULL DEFAULT 'none',
  `abt__ut2_tablet_content_bg` varchar(20) NOT NULL DEFAULT 'none',
  `abt__ut2_tablet_content_bg_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_bg` varchar(20) NOT NULL DEFAULT 'none',
  `abt__ut2_mobile_content_bg_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_padding` varchar(27) NOT NULL DEFAULT '',
  `abt__ut2_tablet_padding` varchar(27) NOT NULL DEFAULT '',
  `abt__ut2_tablet_padding_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_padding` varchar(27) NOT NULL DEFAULT '',
  `abt__ut2_mobile_padding_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_how_to_open` enum('in_this_window','in_new_window','in_popup') NOT NULL DEFAULT 'in_this_window',
  `abt__ut2_data_type` enum('url','blog','promotion') NOT NULL DEFAULT 'url',
  `abt__ut2_youtube_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_youtube_autoplay` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_youtube_loop` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_youtube_hide_controls` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_bg_position` varchar(20) NOT NULL DEFAULT 'whole_banner',
  `abt__ut2_content_bg_position_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_bg_opacity` tinyint NOT NULL DEFAULT '50',
  `abt__ut2_content_bg_opacity_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_bg_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_content_bg_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_bg_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_content_bg_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_bg_position` varchar(20) NOT NULL DEFAULT 'whole_banner',
  `abt__ut2_tablet_content_bg_position_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_bg_opacity` tinyint NOT NULL DEFAULT '50',
  `abt__ut2_tablet_content_bg_opacity_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_bg_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_tablet_content_bg_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_bg_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_content_bg_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_bg_position` varchar(20) NOT NULL DEFAULT 'whole_banner',
  `abt__ut2_mobile_content_bg_position_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_bg_opacity` tinyint NOT NULL DEFAULT '50',
  `abt__ut2_mobile_content_bg_opacity_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_bg_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_mobile_content_bg_color_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_bg_color_use` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_content_bg_color_use_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_background_type` varchar(64) NOT NULL DEFAULT 'image',
  `abt__ut2_tablet_background_type` varchar(64) NOT NULL DEFAULT 'image',
  `abt__ut2_mobile_background_type` varchar(64) NOT NULL DEFAULT 'image',
  `abt__ut2_tablet_background_type_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_background_type_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_background_mp4_video` varchar(256) NOT NULL DEFAULT '',
  `abt__ut2_tablet_background_mp4_video` varchar(256) NOT NULL DEFAULT '',
  `abt__ut2_mobile_background_mp4_video` varchar(256) NOT NULL DEFAULT '',
  `abt__ut2_tablet_background_mp4_video_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_background_mp4_video_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `abt__ut2_image_position` enum('top','center','bottom') NOT NULL DEFAULT 'center',
  `abt__ut2_image_position_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_tablet_image_position` enum('top','center','bottom') NOT NULL DEFAULT 'center',
  `abt__ut2_tablet_image_position_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mobile_image_position` enum('top','center','bottom') NOT NULL DEFAULT 'center',
  `abt__ut2_mobile_image_position_use_own` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_button_style` enum('normal','outline','text') NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`banner_id`),
  KEY `localization` (`localization`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=9398 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_birthday_promo_log`
--

DROP TABLE IF EXISTS `cscart_birthday_promo_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_birthday_promo_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `timestamp` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `is_applied` varchar(1) DEFAULT NULL,
  `last_birthday` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_blog_authors`
--

DROP TABLE IF EXISTS `cscart_blog_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_blog_authors` (
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_block_statuses`
--

DROP TABLE IF EXISTS `cscart_bm_block_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_block_statuses` (
  `snapping_id` int NOT NULL,
  `object_ids` text,
  `object_type` varchar(32) NOT NULL,
  UNIQUE KEY `snapping_id` (`snapping_id`,`object_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_blocks`
--

DROP TABLE IF EXISTS `cscart_bm_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_blocks` (
  `block_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL DEFAULT '',
  `properties` text,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `ab__ab_hide_block` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`block_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1665 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_blocks_content`
--

DROP TABLE IF EXISTS `cscart_bm_blocks_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_blocks_content` (
  `snapping_id` int unsigned NOT NULL,
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(64) NOT NULL DEFAULT '',
  `block_id` int unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`block_id`,`snapping_id`,`lang_code`,`object_id`,`object_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_blocks_descriptions`
--

DROP TABLE IF EXISTS `cscart_bm_blocks_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_blocks_descriptions` (
  `block_id` int unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`block_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_containers`
--

DROP TABLE IF EXISTS `cscart_bm_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_containers` (
  `container_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `location_id` mediumint unsigned NOT NULL,
  `position` enum('TOP_PANEL','HEADER','CONTENT','FOOTER') NOT NULL,
  `width` tinyint NOT NULL,
  `user_class` varchar(128) NOT NULL DEFAULT '',
  `linked_to_default` varchar(1) NOT NULL DEFAULT 'Y',
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `company_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'If a vendor uses custom block configuration for a container, his/her vendor ID is stored here',
  PRIMARY KEY (`container_id`),
  KEY `location_id` (`location_id`),
  KEY `location_id_company_id` (`location_id`,`company_id`),
  KEY `location_id_position_company_id` (`location_id`,`position`,`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9425 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_grids`
--

DROP TABLE IF EXISTS `cscart_bm_grids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_grids` (
  `grid_id` int unsigned NOT NULL AUTO_INCREMENT,
  `container_id` mediumint unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `order` mediumint unsigned NOT NULL DEFAULT '0',
  `width` tinyint unsigned NOT NULL DEFAULT '1',
  `offset` tinyint unsigned NOT NULL DEFAULT '0',
  `user_class` varchar(128) NOT NULL DEFAULT '',
  `omega` tinyint unsigned NOT NULL DEFAULT '0',
  `alpha` tinyint unsigned NOT NULL DEFAULT '0',
  `wrapper` varchar(128) NOT NULL DEFAULT '',
  `content_align` enum('LEFT','RIGHT','FULL_WIDTH') NOT NULL DEFAULT 'FULL_WIDTH',
  `html_element` varchar(8) NOT NULL DEFAULT 'div',
  `clear` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `extended` char(1) NOT NULL DEFAULT '0',
  `ab__show_in_tabs` char(1) NOT NULL DEFAULT 'N',
  `ab__use_ajax` char(1) NOT NULL DEFAULT 'N',
  `is_tabbed` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_extended` char(1) NOT NULL DEFAULT '0',
  `abt__ut2_padding` varchar(20) NOT NULL DEFAULT '',
  `devices_display` text,
  `abt__ut2_use_lazy_load` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_show_blocks_in_tabs` enum('no','without_lazy_load','with_lazy_load') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`grid_id`),
  KEY `container_id` (`container_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9410 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_layouts`
--

DROP TABLE IF EXISTS `cscart_bm_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_layouts` (
  `layout_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `width` tinyint NOT NULL DEFAULT '16',
  `layout_width` enum('fixed','fluid','full_width') NOT NULL DEFAULT 'fixed',
  `min_width` int unsigned NOT NULL DEFAULT '760',
  `max_width` int unsigned NOT NULL DEFAULT '960',
  `theme_name` varchar(64) NOT NULL DEFAULT '',
  `style_id` varchar(64) NOT NULL DEFAULT '',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_id`),
  KEY `is_default` (`is_default`,`storefront_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_locations`
--

DROP TABLE IF EXISTS `cscart_bm_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_locations` (
  `location_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `dispatch` varchar(64) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `layout_id` int unsigned NOT NULL DEFAULT '0',
  `object_ids` text,
  `custom_html` text,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `user_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2357 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_locations_descriptions`
--

DROP TABLE IF EXISTS `cscart_bm_locations_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_locations_descriptions` (
  `location_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL,
  `title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  PRIMARY KEY (`location_id`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=2357 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_bm_snapping`
--

DROP TABLE IF EXISTS `cscart_bm_snapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_bm_snapping` (
  `snapping_id` int unsigned NOT NULL AUTO_INCREMENT,
  `block_id` int unsigned NOT NULL,
  `grid_id` int unsigned NOT NULL,
  `wrapper` varchar(128) NOT NULL DEFAULT '',
  `user_class` varchar(128) NOT NULL DEFAULT '',
  `order` mediumint unsigned NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`snapping_id`),
  KEY `grid_id` (`grid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11927 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_buy_together`
--

DROP TABLE IF EXISTS `cscart_buy_together`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_buy_together` (
  `chain_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `products` text,
  `modifier` decimal(12,3) unsigned NOT NULL DEFAULT '0.000',
  `modifier_type` varchar(20) NOT NULL DEFAULT 'by_fixed',
  `date_from` int unsigned NOT NULL DEFAULT '0',
  `date_to` int unsigned NOT NULL DEFAULT '0',
  `display_in_promotions` char(1) NOT NULL DEFAULT 'Y',
  `status` char(1) NOT NULL DEFAULT 'D',
  PRIMARY KEY (`chain_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_buy_together_descriptions`
--

DROP TABLE IF EXISTS `cscart_buy_together_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_buy_together_descriptions` (
  `chain_id` int unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`chain_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cache_handlers`
--

DROP TABLE IF EXISTS `cscart_cache_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cache_handlers` (
  `table_name` varchar(128) NOT NULL COMMENT 'Table name the cache record depends on',
  `cache_key` varchar(128) NOT NULL COMMENT 'Cache key or prefix used to register cache record',
  UNIQUE KEY `table_name_cache_key` (`table_name`,`cache_key`),
  KEY `table_name` (`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Stores relations between cache records registered with TyghRegistry::registerCache() and tables they depend on';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_call_requests`
--

DROP TABLE IF EXISTS `cscart_call_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_call_requests` (
  `request_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` enum('new','in_progress','completed','no_answer') NOT NULL DEFAULT 'new',
  `name` varchar(250) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `time_from` varchar(32) NOT NULL DEFAULT '',
  `time_to` varchar(32) NOT NULL DEFAULT '',
  `notes` text,
  `cart_products` text NOT NULL COMMENT 'Serialized data',
  PRIMARY KEY (`request_id`),
  KEY `user_id` (`company_id`,`user_id`),
  KEY `timestamp` (`timestamp`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_categories`
--

DROP TABLE IF EXISTS `cscart_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_categories` (
  `category_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `level` int unsigned NOT NULL DEFAULT '1',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `product_count` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `is_op` char(1) NOT NULL DEFAULT 'N',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `age_verification` char(1) NOT NULL DEFAULT 'N',
  `age_limit` tinyint NOT NULL DEFAULT '0',
  `parent_age_verification` char(1) NOT NULL DEFAULT 'N',
  `parent_age_limit` tinyint NOT NULL DEFAULT '0',
  `selected_views` text,
  `default_view` varchar(50) NOT NULL DEFAULT '',
  `product_details_view` varchar(50) NOT NULL DEFAULT '',
  `product_columns` tinyint unsigned NOT NULL DEFAULT '0',
  `is_trash` char(1) NOT NULL DEFAULT 'N',
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `category_type` char(1) NOT NULL DEFAULT 'C',
  `ab__lc_catalog_image_control` char(5) NOT NULL DEFAULT 'none',
  `ab__lc_landing` char(1) NOT NULL DEFAULT 'N',
  `ab__lc_subsubcategories` int NOT NULL DEFAULT '0',
  `ab__lc_menu_id` int NOT NULL DEFAULT '0',
  `ab__lc_how_to_use_menu` char(1) NOT NULL DEFAULT 'N',
  `ab__lc_inherit_control` char(1) NOT NULL DEFAULT 'N',
  `selected_product_tabs` text,
  `has_child` char(1) NOT NULL DEFAULT 'N',
  `is_edp` char(1) NOT NULL DEFAULT 'N',
  `edp_shipping` char(1) NOT NULL DEFAULT 'N',
  `unlimited_download` char(1) NOT NULL DEFAULT 'N',
  `ab__fn_category_status` char(1) NOT NULL DEFAULT 'Y',
  `ab__fn_label_color` char(7) NOT NULL DEFAULT '#ffffff',
  `ab__fn_label_background` char(7) NOT NULL DEFAULT '#333333',
  `ab__fn_use_origin_image` char(1) NOT NULL DEFAULT 'N',
  `cron_hidden` varchar(1) NOT NULL DEFAULT 'N',
  `size_chart_id` mediumint unsigned NOT NULL,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `cp_ls_priority` int unsigned NOT NULL DEFAULT '0',
  `cp_use_guarantee_fee` char(1) NOT NULL DEFAULT 'N',
  `cp_guarantee_fee` decimal(12,0) NOT NULL DEFAULT '0',
  `cp_guarantee_fee_type` char(1) NOT NULL DEFAULT 'A',
  `cp_dc_type` char(1) NOT NULL DEFAULT '',
  `cp_dc_params` text NOT NULL,
  `cp_dc_exclude` varchar(32) NOT NULL DEFAULT '',
  `cp_dc_cond_set` varchar(6) NOT NULL DEFAULT 'all',
  `cp_dc_cond_set_value` smallint unsigned NOT NULL DEFAULT '1',
  `cp_ls_hide_from_result` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`category_id`),
  KEY `c_status` (`usergroup_ids`,`status`,`parent_id`),
  KEY `position` (`position`),
  KEY `parent` (`parent_id`),
  KEY `id_path` (`id_path`),
  KEY `localization` (`localization`),
  KEY `age_verification` (`age_verification`,`age_limit`),
  KEY `parent_age_verification` (`parent_age_verification`,`parent_age_limit`),
  KEY `p_category_id` (`category_id`,`usergroup_ids`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=25447 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_category_descriptions`
--

DROP TABLE IF EXISTS `cscart_category_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_category_descriptions` (
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `age_warning_message` text,
  `ab__fn_label_text` varchar(100) NOT NULL DEFAULT '',
  `ab__fn_label_show` char(1) NOT NULL DEFAULT 'N',
  `ab__custom_category_h1` varchar(255) NOT NULL DEFAULT '',
  `ab__emd_alternative_name` varchar(255) NOT NULL DEFAULT '',
  `cp_search_words` text,
  PRIMARY KEY (`category_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_category_vendor_product_count`
--

DROP TABLE IF EXISTS `cscart_category_vendor_product_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_category_vendor_product_count` (
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_count` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`company_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_child_to_parent_features`
--

DROP TABLE IF EXISTS `cscart_child_to_parent_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_child_to_parent_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_feature_id` int NOT NULL,
  `parent_variant_id` int NOT NULL DEFAULT '0',
  `feature_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_common_descriptions`
--

DROP TABLE IF EXISTS `cscart_common_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_common_descriptions` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(32) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `object` varchar(128) NOT NULL DEFAULT '',
  `object_holder` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`object_id`,`lang_code`,`object_holder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_companies`
--

DROP TABLE IF EXISTS `cscart_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_companies` (
  `company_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `company` varchar(255) NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(32) NOT NULL,
  `country` char(2) NOT NULL,
  `zipcode` varchar(16) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `storefront` varchar(255) NOT NULL DEFAULT '',
  `secure_storefront` varchar(255) NOT NULL DEFAULT '',
  `entry_page` varchar(50) NOT NULL DEFAULT 'none',
  `redirect_customer` char(1) NOT NULL DEFAULT 'Y',
  `countries_list` text,
  `timestamp` int NOT NULL,
  `shippings` text,
  `logos` text,
  `request_user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `request_account_name` varchar(255) NOT NULL DEFAULT '',
  `request_account_data` blob,
  `plan_id` int unsigned NOT NULL DEFAULT '0',
  `pre_moderation` char(1) NOT NULL DEFAULT 'N',
  `pre_moderation_edit` char(1) NOT NULL DEFAULT 'N',
  `pre_moderation_edit_vendors` char(1) NOT NULL DEFAULT 'N',
  `paypal_for_marketplaces_account_id` varchar(128) NOT NULL DEFAULT '',
  `reward_points` char(1) NOT NULL DEFAULT 'N',
  `count_images` int DEFAULT NULL,
  `paypal_commerce_platform_account_id` varchar(128) NOT NULL DEFAULT '',
  `suspend_date` int unsigned NOT NULL DEFAULT '0',
  `grace_period_start` int unsigned NOT NULL DEFAULT '0',
  `last_time_suspended` int unsigned NOT NULL DEFAULT '0',
  `last_debt_notification_time` int unsigned NOT NULL DEFAULT '0',
  `tax_number` varchar(255) NOT NULL DEFAULT '',
  `registered_from_storefront_id` int DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_company_descriptions`
--

DROP TABLE IF EXISTS `cscart_company_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_company_descriptions` (
  `company_id` int unsigned NOT NULL,
  `lang_code` char(2) NOT NULL,
  `company_description` text,
  `terms` mediumtext,
  `cp_company` varchar(255) NOT NULL,
  `cp_address` varchar(255) NOT NULL,
  `cp_state` varchar(255) NOT NULL,
  `cp_city` varchar(64) NOT NULL,
  `i18n_company` varchar(255) NOT NULL DEFAULT '',
  `i18n_address` varchar(255) NOT NULL DEFAULT '',
  `i18n_city` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`company_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_countries`
--

DROP TABLE IF EXISTS `cscart_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_countries` (
  `code` char(2) NOT NULL DEFAULT '',
  `code_A3` char(3) NOT NULL DEFAULT '',
  `code_N3` char(3) NOT NULL DEFAULT '',
  `region` char(2) NOT NULL DEFAULT '',
  `lat` float NOT NULL DEFAULT '0',
  `lon` float NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`code`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_country_descriptions`
--

DROP TABLE IF EXISTS `cscart_country_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_country_descriptions` (
  `code` char(2) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `country` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`code`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_custom_logs`
--

DROP TABLE IF EXISTS `cscart_cp_custom_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_custom_logs` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `section` varchar(32) NOT NULL,
  `action` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `company_id` (`company_id`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_custom_notifications`
--

DROP TABLE IF EXISTS `cscart_cp_custom_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_custom_notifications` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `type` varchar(1) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_dc_category_conditions`
--

DROP TABLE IF EXISTS `cscart_cp_dc_category_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_dc_category_conditions` (
  `condition_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `cond_type` varchar(100) NOT NULL DEFAULT '',
  `condition_element` varchar(100) NOT NULL DEFAULT '',
  `cond_op` varchar(10) NOT NULL DEFAULT '',
  `extend_value` varchar(10) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `value_2` varchar(255) NOT NULL DEFAULT '',
  `pos` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`condition_id`),
  KEY `category_id` (`category_id`),
  KEY `cond_type` (`cond_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_ic_compress_stat`
--

DROP TABLE IF EXISTS `cscart_cp_ic_compress_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_ic_compress_stat` (
  `log_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int unsigned NOT NULL DEFAULT '0',
  `end_time` int unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_ic_unlinked_img`
--

DROP TABLE IF EXISTS `cscart_cp_ic_unlinked_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_ic_unlinked_img` (
  `img_id` int unsigned NOT NULL AUTO_INCREMENT,
  `dir` text NOT NULL,
  `image_path` text NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_icredit_tokens`
--

DROP TABLE IF EXISTS `cscart_cp_icredit_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_icredit_tokens` (
  `token_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `token` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`token_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_io_all_store_images`
--

DROP TABLE IF EXISTS `cscart_cp_io_all_store_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_io_all_store_images` (
  `image_id` int unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) NOT NULL DEFAULT '',
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `image_size` decimal(12,3) NOT NULL DEFAULT '0.000',
  `new_size` decimal(12,3) NOT NULL DEFAULT '0.000',
  `image_ext` varchar(12) NOT NULL DEFAULT '',
  `object_type` varchar(24) NOT NULL DEFAULT '',
  `optimization` char(1) NOT NULL DEFAULT 'N',
  `dir` varchar(255) NOT NULL DEFAULT '',
  `db_image_id` int unsigned NOT NULL DEFAULT '0',
  `opt_info` text NOT NULL,
  `error_info` varchar(250) NOT NULL DEFAULT '',
  `exist_trig` char(1) NOT NULL DEFAULT 'Y',
  `image_x` int unsigned NOT NULL DEFAULT '0',
  `image_y` int unsigned NOT NULL DEFAULT '0',
  `has_backup` char(1) NOT NULL DEFAULT 'N',
  `resized` char(1) NOT NULL DEFAULT 'N',
  `resize_info` varchar(100) NOT NULL DEFAULT '',
  `need_hash` char(1) NOT NULL DEFAULT 'N',
  `hashed` char(1) NOT NULL DEFAULT 'N',
  `opt_time` int unsigned NOT NULL DEFAULT '0',
  `image_crc` int unsigned NOT NULL DEFAULT '0',
  `rel_image_crc` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_path` (`image_path`),
  KEY `image_ext` (`image_ext`),
  KEY `object_type` (`object_type`),
  KEY `optimization` (`optimization`),
  KEY `hashed` (`hashed`),
  KEY `exist_trig` (`exist_trig`),
  KEY `image_crc` (`image_crc`),
  KEY `rel_image_crc` (`rel_image_crc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_io_optimize_image`
--

DROP TABLE IF EXISTS `cscart_cp_io_optimize_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_io_optimize_image` (
  `key_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `api_key_for_opt` text NOT NULL,
  `total_save` decimal(12,3) NOT NULL DEFAULT '0.000',
  `total_opt` int unsigned NOT NULL DEFAULT '0',
  `choosen_optimizerer` char(1) NOT NULL DEFAULT 'B',
  `img_quality` int unsigned NOT NULL DEFAULT '90',
  `compressor` char(1) NOT NULL DEFAULT 'L',
  `folders` text,
  `shortpixel_wait` int unsigned NOT NULL DEFAULT '6',
  `cron_value` int unsigned NOT NULL DEFAULT '0',
  `cron_pass` varchar(55) NOT NULL DEFAULT 'cron_pass',
  `rt_compress` char(1) NOT NULL DEFAULT 'N',
  `resize` char(1) NOT NULL DEFAULT 'N',
  `hash` char(1) NOT NULL DEFAULT 'N',
  `image_x` int unsigned NOT NULL DEFAULT '0',
  `image_y` int unsigned NOT NULL DEFAULT '0',
  `backup` char(1) NOT NULL DEFAULT 'N',
  `compress_types` text,
  `cropper_work` char(1) NOT NULL DEFAULT 'A',
  `api_key_tinypng` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_object_location_rest`
--

DROP TABLE IF EXISTS `cscart_cp_object_location_rest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_object_location_rest` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT '',
  `state_id` mediumint unsigned NOT NULL DEFAULT '0',
  `country_code` char(2) NOT NULL DEFAULT '',
  `city_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `object_id` (`object_id`,`object_type`,`state_id`,`country_code`,`city_id`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_object_paym_rest`
--

DROP TABLE IF EXISTS `cscart_cp_object_paym_rest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_object_paym_rest` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `payment_id` mediumint unsigned NOT NULL,
  `object_type` char(1) NOT NULL DEFAULT '',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `object_id` (`object_id`,`payment_id`,`object_type`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_object_ship_rest`
--

DROP TABLE IF EXISTS `cscart_cp_object_ship_rest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_object_ship_rest` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `shipping_id` mediumint unsigned NOT NULL,
  `object_type` char(1) NOT NULL DEFAULT '',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `object_id` (`object_id`,`shipping_id`,`object_type`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_object_ugroups_rest`
--

DROP TABLE IF EXISTS `cscart_cp_object_ugroups_rest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_object_ugroups_rest` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `usergroup_id` mediumint unsigned NOT NULL,
  `object_type` char(1) NOT NULL DEFAULT '',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `object_id` (`object_id`,`usergroup_id`,`object_type`,`company_id`),
  KEY `usergroup_id` (`usergroup_id`),
  KEY `object_type` (`object_type`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_object_week_table`
--

DROP TABLE IF EXISTS `cscart_cp_object_week_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_object_week_table` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT 's',
  `day` char(2) NOT NULL DEFAULT 'su',
  `from_h` smallint unsigned NOT NULL DEFAULT '0',
  `from_m` smallint unsigned NOT NULL DEFAULT '0',
  `to_h` smallint unsigned NOT NULL DEFAULT '0',
  `to_m` smallint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `object_id` (`object_id`,`object_type`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_power_seo_filter_additional_text`
--

DROP TABLE IF EXISTS `cscart_cp_power_seo_filter_additional_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_power_seo_filter_additional_text` (
  `text_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL,
  `status` varchar(1) NOT NULL,
  `company_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`text_id`),
  UNIQUE KEY `url` (`url`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_power_seo_filter_additional_text_description`
--

DROP TABLE IF EXISTS `cscart_cp_power_seo_filter_additional_text_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_power_seo_filter_additional_text_description` (
  `text_id` int unsigned NOT NULL DEFAULT '0',
  `text_up` text NOT NULL,
  `text_bottom` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_title` text NOT NULL,
  `h1` text NOT NULL,
  `lang_code` char(2) NOT NULL,
  PRIMARY KEY (`text_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_power_seo_filter_names`
--

DROP TABLE IF EXISTS `cscart_cp_power_seo_filter_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_power_seo_filter_names` (
  `name` varchar(250) NOT NULL DEFAULT '',
  `variant_id` varchar(10) NOT NULL,
  `filter_id` int unsigned NOT NULL DEFAULT '0',
  `feature_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(5) NOT NULL DEFAULT '',
  `lang_code` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`filter_id`,`variant_id`,`type`,`lang_code`),
  KEY `name` (`name`,`variant_id`),
  KEY `type` (`type`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_power_seo_last_modified`
--

DROP TABLE IF EXISTS `cscart_cp_power_seo_last_modified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_power_seo_last_modified` (
  `query_string` varchar(256) NOT NULL,
  `words` int NOT NULL,
  `timestamp` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_product_tabs`
--

DROP TABLE IF EXISTS `cscart_cp_product_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_product_tabs` (
  `tab_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tab_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_product_tabs_description`
--

DROP TABLE IF EXISTS `cscart_cp_product_tabs_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_product_tabs_description` (
  `tab_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tab_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_product_tabs_manager`
--

DROP TABLE IF EXISTS `cscart_cp_product_tabs_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_product_tabs_manager` (
  `tab_id` mediumint unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `content` text NOT NULL,
  `lang_code` char(2) NOT NULL,
  UNIQUE KEY `tab_id` (`tab_id`,`product_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_res_by_def_paym`
--

DROP TABLE IF EXISTS `cscart_cp_res_by_def_paym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_res_by_def_paym` (
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `payment_id` mediumint unsigned NOT NULL,
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `product_id` (`product_id`,`payment_id`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_rs_mail_log`
--

DROP TABLE IF EXISTS `cscart_cp_rs_mail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_rs_mail_log` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `subscription_id` int unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_rs_period_descriptions`
--

DROP TABLE IF EXISTS `cscart_cp_rs_period_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_rs_period_descriptions` (
  `period_id` int unsigned NOT NULL DEFAULT '0',
  `period` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`period_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_rs_periods`
--

DROP TABLE IF EXISTS `cscart_cp_rs_periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_rs_periods` (
  `period_id` int unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT 'P',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `period_type` char(1) NOT NULL DEFAULT 'D',
  `period_cycle` smallint unsigned NOT NULL DEFAULT '1',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `discount_type` varchar(16) NOT NULL DEFAULT '',
  `discount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`period_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_rs_products`
--

DROP TABLE IF EXISTS `cscart_cp_rs_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_rs_products` (
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `cp_rs_period_types` varchar(5) NOT NULL DEFAULT '',
  `cp_rs_min_frequency` smallint unsigned NOT NULL DEFAULT '0',
  `cp_rs_max_frequency` smallint unsigned NOT NULL DEFAULT '0',
  `cp_rs_discount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `cp_rs_discount_type` varchar(16) NOT NULL DEFAULT '',
  `cp_rs_allow_select_start_date` char(1) NOT NULL DEFAULT 'N',
  `cp_rs_allow_unsubscribe` char(1) NOT NULL DEFAULT 'N',
  `cp_rs_length_type` char(1) NOT NULL DEFAULT 'U',
  `cp_rs_length_period` char(1) NOT NULL DEFAULT 'D',
  `cp_rs_second_order_bonus` char(1) NOT NULL DEFAULT 'N',
  `cp_rs_min_length` smallint unsigned NOT NULL DEFAULT '0',
  `cp_rs_max_length` smallint unsigned NOT NULL DEFAULT '0',
  `cp_rs_manualy_length_value` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_rs_subscription_list`
--

DROP TABLE IF EXISTS `cscart_cp_rs_subscription_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_rs_subscription_list` (
  `subscription_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `parent_order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `info_from` char(1) NOT NULL DEFAULT 'P',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` mediumint unsigned NOT NULL DEFAULT '0',
  `product_options` varchar(255) NOT NULL DEFAULT '',
  `date_start` int unsigned NOT NULL DEFAULT '0',
  `next_order_date` int unsigned NOT NULL DEFAULT '0',
  `period_type` char(1) NOT NULL DEFAULT 'D',
  `period_cycle` smallint unsigned NOT NULL DEFAULT '0',
  `length_type` char(1) NOT NULL DEFAULT 'U',
  `discount` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_type` varchar(16) NOT NULL DEFAULT '',
  `date_stop` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subscription_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_rs_subscription_orders`
--

DROP TABLE IF EXISTS `cscart_cp_rs_subscription_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_rs_subscription_orders` (
  `subscription_id` int unsigned NOT NULL DEFAULT '0',
  `order_id` int unsigned NOT NULL DEFAULT '0',
  `notify` set('N','F','S') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`subscription_id`,`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_sc_size_chart_descriptions`
--

DROP TABLE IF EXISTS `cscart_cp_sc_size_chart_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_sc_size_chart_descriptions` (
  `size_chart_id` mediumint unsigned NOT NULL,
  `size_chart` varchar(255) NOT NULL,
  `lang_code` char(2) NOT NULL,
  UNIQUE KEY `size_chart_id` (`size_chart_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_sc_size_chart_features`
--

DROP TABLE IF EXISTS `cscart_cp_sc_size_chart_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_sc_size_chart_features` (
  `size_chart_id` mediumint unsigned NOT NULL DEFAULT '0',
  `feature_id` mediumint unsigned NOT NULL DEFAULT '0',
  `variant_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `size_feat` (`size_chart_id`,`feature_id`,`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_sc_size_chart_tabs`
--

DROP TABLE IF EXISTS `cscart_cp_sc_size_chart_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_sc_size_chart_tabs` (
  `tab_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `size_chart_id` mediumint unsigned NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `img_pos` char(1) NOT NULL DEFAULT 'T',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`tab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_sc_size_chart_tabs_descr`
--

DROP TABLE IF EXISTS `cscart_cp_sc_size_chart_tabs_descr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_sc_size_chart_tabs_descr` (
  `tab_id` mediumint unsigned NOT NULL DEFAULT '0',
  `tab_name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `lang_code` char(2) NOT NULL,
  `tab_additional_name` varchar(255) NOT NULL,
  UNIQUE KEY `tab_id` (`tab_id`,`lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_sc_size_charts`
--

DROP TABLE IF EXISTS `cscart_cp_sc_size_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_sc_size_charts` (
  `size_chart_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `company_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`size_chart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_cache_en`
--

DROP TABLE IF EXISTS `cscart_cp_search_cache_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_cache_en` (
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL DEFAULT '',
  `name_without_symbols` varchar(255) NOT NULL DEFAULT '',
  `short_description` mediumtext NOT NULL,
  `full_description` mediumtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `features` text NOT NULL,
  `search_words` text NOT NULL,
  `stop_words` mediumtext NOT NULL,
  `product_code` varchar(32) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `popularity` int NOT NULL DEFAULT '0',
  `product_code_combinations` text NOT NULL,
  `cache_timestamp` int unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_cache_he`
--

DROP TABLE IF EXISTS `cscart_cp_search_cache_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_cache_he` (
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL DEFAULT '',
  `name_without_symbols` varchar(255) NOT NULL DEFAULT '',
  `short_description` mediumtext NOT NULL,
  `full_description` mediumtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `features` text NOT NULL,
  `search_words` text NOT NULL,
  `stop_words` mediumtext NOT NULL,
  `product_code` varchar(32) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `popularity` int NOT NULL DEFAULT '0',
  `product_code_combinations` text NOT NULL,
  `cache_timestamp` int unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_cache_ru`
--

DROP TABLE IF EXISTS `cscart_cp_search_cache_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_cache_ru` (
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL DEFAULT '',
  `name_without_symbols` varchar(255) NOT NULL DEFAULT '',
  `short_description` mediumtext NOT NULL,
  `full_description` mediumtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `features` text NOT NULL,
  `search_words` text NOT NULL,
  `stop_words` mediumtext NOT NULL,
  `product_code` varchar(32) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `popularity` int NOT NULL DEFAULT '0',
  `product_code_combinations` text NOT NULL,
  `cache_timestamp` int unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_history`
--

DROP TABLE IF EXISTS `cscart_cp_search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_history` (
  `search_id` int unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `search_type` char(1) NOT NULL DEFAULT 'L',
  `result` int NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `hidden_by_user` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`search_id`),
  KEY `company_id` (`company_id`),
  KEY `lang_code` (`lang_code`),
  KEY `search` (`search`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_history_clicks`
--

DROP TABLE IF EXISTS `cscart_cp_search_history_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_history_clicks` (
  `search_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`search_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_index_en`
--

DROP TABLE IF EXISTS `cscart_cp_search_index_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_index_en` (
  `id` varchar(4) NOT NULL DEFAULT '',
  `product_ids` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_index_he`
--

DROP TABLE IF EXISTS `cscart_cp_search_index_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_index_he` (
  `id` varchar(4) NOT NULL DEFAULT '',
  `product_ids` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_index_ru`
--

DROP TABLE IF EXISTS `cscart_cp_search_index_ru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_index_ru` (
  `id` varchar(4) NOT NULL DEFAULT '',
  `product_ids` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_motivation`
--

DROP TABLE IF EXISTS `cscart_cp_search_motivation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_motivation` (
  `object_type` char(1) NOT NULL DEFAULT 'D',
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL,
  `content` text NOT NULL,
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`object_type`,`object_id`,`lang_code`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_phrase_clicks`
--

DROP TABLE IF EXISTS `cscart_cp_search_phrase_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_phrase_clicks` (
  `s_hash` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `counter` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`s_hash`,`product_id`),
  KEY `product_id` (`product_id`),
  KEY `counter` (`counter`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_phrase_products`
--

DROP TABLE IF EXISTS `cscart_cp_search_phrase_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_phrase_products` (
  `phrase_id` int NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`phrase_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_phrase_searchs`
--

DROP TABLE IF EXISTS `cscart_cp_search_phrase_searchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_phrase_searchs` (
  `phrase_id` int unsigned NOT NULL DEFAULT '0',
  `search` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`phrase_id`,`search`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_phrases`
--

DROP TABLE IF EXISTS `cscart_cp_search_phrases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_phrases` (
  `phrase_id` int unsigned NOT NULL AUTO_INCREMENT,
  `priority` int NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `suggestions` text NOT NULL,
  PRIMARY KEY (`phrase_id`),
  KEY `company_lang` (`company_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_synonym_variants`
--

DROP TABLE IF EXISTS `cscart_cp_search_synonym_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_synonym_variants` (
  `synonym_id` int unsigned NOT NULL DEFAULT '0',
  `variant` varchar(256) NOT NULL,
  PRIMARY KEY (`synonym_id`,`variant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_synonyms`
--

DROP TABLE IF EXISTS `cscart_cp_search_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_synonyms` (
  `synonym_id` int unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(256) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'D',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL,
  `approved` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`synonym_id`),
  KEY `company_lang` (`company_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_search_weight_rules`
--

DROP TABLE IF EXISTS `cscart_cp_search_weight_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_search_weight_rules` (
  `rule_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL DEFAULT '',
  `any` int NOT NULL DEFAULT '1',
  `before` int NOT NULL DEFAULT '1',
  `after` int NOT NULL DEFAULT '1',
  `none` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_sr_product_allows`
--

DROP TABLE IF EXISTS `cscart_cp_sr_product_allows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_sr_product_allows` (
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT '',
  `value` char(1) NOT NULL DEFAULT 'Y',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `product_id` (`product_id`,`object_type`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_task_descriptions`
--

DROP TABLE IF EXISTS `cscart_cp_task_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_task_descriptions` (
  `task_id` mediumint NOT NULL,
  `task` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  UNIQUE KEY `task_id` (`task_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_task_logs`
--

DROP TABLE IF EXISTS `cscart_cp_task_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_task_logs` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT,
  `task_id` mediumint NOT NULL,
  `task` text NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'D',
  `start_timestamp` int unsigned NOT NULL DEFAULT '0',
  `stop_timestamp` int unsigned NOT NULL DEFAULT '0',
  `result` smallint unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1161 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_tasks`
--

DROP TABLE IF EXISTS `cscart_cp_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_tasks` (
  `task_id` mediumint NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `type` char(1) NOT NULL DEFAULT 'D',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `factory` text,
  `to_date` int unsigned NOT NULL DEFAULT '0',
  `from_date` int unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `next_run` int unsigned NOT NULL DEFAULT '0',
  `task_settings` text,
  `notify_by_email` char(1) NOT NULL DEFAULT 'Y',
  `notify_email` varchar(50) NOT NULL DEFAULT '',
  `company_id` mediumint NOT NULL DEFAULT '0',
  `approved` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_categories`
--

DROP TABLE IF EXISTS `cscart_cp_video_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_categories` (
  `category_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `level` int unsigned NOT NULL DEFAULT '1',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `video_count` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `is_trash` char(1) NOT NULL DEFAULT 'N',
  `is_root` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`category_id`),
  KEY `c_status` (`usergroup_ids`,`status`,`parent_id`),
  KEY `position` (`position`),
  KEY `parent` (`parent_id`),
  KEY `id_path` (`id_path`),
  KEY `localization` (`localization`),
  KEY `p_category_id` (`category_id`,`usergroup_ids`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_category_descriptions`
--

DROP TABLE IF EXISTS `cscart_cp_video_category_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_category_descriptions` (
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`category_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_category_links`
--

DROP TABLE IF EXISTS `cscart_cp_video_category_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_category_links` (
  `video_id` mediumint unsigned NOT NULL DEFAULT '0',
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `link_type` char(1) NOT NULL DEFAULT 'M',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`,`video_id`),
  KEY `link_type` (`link_type`),
  KEY `pt` (`video_id`,`link_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_descriptions`
--

DROP TABLE IF EXISTS `cscart_cp_video_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_descriptions` (
  `video_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `youtube_id` varchar(128) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `short_description` mediumtext,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`video_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_files`
--

DROP TABLE IF EXISTS `cscart_cp_video_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_files` (
  `file_id` int unsigned NOT NULL AUTO_INCREMENT,
  `video_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(80) NOT NULL DEFAULT '',
  `file_extra` text NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `video_id` (`video_id`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_images`
--

DROP TABLE IF EXISTS `cscart_cp_video_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_images` (
  `video_image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `video_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`video_image_id`),
  UNIQUE KEY `video` (`video_id`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_object_links`
--

DROP TABLE IF EXISTS `cscart_cp_video_object_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_object_links` (
  `video_id` mediumint unsigned NOT NULL DEFAULT '0',
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`object_type`,`video_id`,`type`),
  KEY `object` (`object_id`,`object_type`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_video_product_links`
--

DROP TABLE IF EXISTS `cscart_cp_video_product_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_video_product_links` (
  `video_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`video_id`,`type`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_videos`
--

DROP TABLE IF EXISTS `cscart_cp_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_videos` (
  `video_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `video_type` char(1) NOT NULL DEFAULT 'E',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `extra_params` text NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_web_ignore_list`
--

DROP TABLE IF EXISTS `cscart_cp_web_ignore_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_web_ignore_list` (
  `image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_web_image_list`
--

DROP TABLE IF EXISTS `cscart_cp_web_image_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_web_image_list` (
  `webp_crc` int unsigned NOT NULL DEFAULT '0',
  `webp_path` varchar(255) NOT NULL DEFAULT '',
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `image_crc` int unsigned NOT NULL DEFAULT '0',
  `rel_image_crc` int unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `webp_crc` (`image_crc`) USING BTREE,
  KEY `rel_image_crc` (`rel_image_crc`),
  FULLTEXT KEY `image_path` (`image_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_web_images_for_change`
--

DROP TABLE IF EXISTS `cscart_cp_web_images_for_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_web_images_for_change` (
  `image_id` int unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `webp_path` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `image_path` (`image_path`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_web_log_images`
--

DROP TABLE IF EXISTS `cscart_cp_web_log_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_web_log_images` (
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `webp_crc` int unsigned NOT NULL DEFAULT '0',
  `log_id` int unsigned NOT NULL DEFAULT '0',
  `webp_path` varchar(255) NOT NULL DEFAULT '',
  `image_crc` int unsigned NOT NULL DEFAULT '0',
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `image_size` decimal(12,3) NOT NULL DEFAULT '0.000',
  `webp_size` decimal(12,3) NOT NULL DEFAULT '0.000',
  UNIQUE KEY `image_crc` (`image_crc`),
  KEY `webp_crc` (`webp_crc`),
  KEY `log_id` (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_cp_web_logs`
--

DROP TABLE IF EXISTS `cscart_cp_web_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_cp_web_logs` (
  `log_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int unsigned NOT NULL DEFAULT '0',
  `end_time` int unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_csc_app_manager`
--

DROP TABLE IF EXISTS `cscart_csc_app_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_csc_app_manager` (
  `name` varchar(255) NOT NULL,
  `company_id` mediumint NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_csc_phone_standardizer`
--

DROP TABLE IF EXISTS `cscart_csc_phone_standardizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_csc_phone_standardizer` (
  `name` varchar(255) NOT NULL,
  `company_id` mediumint NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_csc_product_code_generator`
--

DROP TABLE IF EXISTS `cscart_csc_product_code_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_csc_product_code_generator` (
  `name` varchar(255) NOT NULL,
  `company_id` mediumint NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_currencies`
--

DROP TABLE IF EXISTS `cscart_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_currencies` (
  `currency_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(10) NOT NULL DEFAULT '',
  `after` char(1) NOT NULL DEFAULT 'N',
  `symbol` tinytext,
  `coefficient` double(12,5) NOT NULL DEFAULT '1.00000',
  `is_primary` char(1) NOT NULL DEFAULT 'N',
  `position` smallint NOT NULL,
  `decimals_separator` varchar(6) NOT NULL DEFAULT '.',
  `thousands_separator` varchar(6) NOT NULL DEFAULT ',',
  `decimals` smallint NOT NULL DEFAULT '2',
  `status` char(1) NOT NULL DEFAULT 'A',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `ccode` mediumtext NOT NULL,
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `currency_code` (`currency_code`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_currency_descriptions`
--

DROP TABLE IF EXISTS `cscart_currency_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_currency_descriptions` (
  `currency_id` mediumint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`currency_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_custom_blocks`
--

DROP TABLE IF EXISTS `cscart_custom_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_custom_blocks` (
  `block_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `section` char(1) DEFAULT NULL,
  `type` char(1) NOT NULL DEFAULT 'B',
  `area` char(1) NOT NULL DEFAULT 'V',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`block_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_custom_blocks_content`
--

DROP TABLE IF EXISTS `cscart_custom_blocks_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_custom_blocks_content` (
  `block_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`block_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_custom_blocks_vendor_dismiss`
--

DROP TABLE IF EXISTS `cscart_custom_blocks_vendor_dismiss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_custom_blocks_vendor_dismiss` (
  `block_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`block_id`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_custom_menu`
--

DROP TABLE IF EXISTS `cscart_custom_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_custom_menu` (
  `item_id` varchar(64) NOT NULL DEFAULT '',
  `href` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `new_window` char(1) NOT NULL DEFAULT 'N',
  `status` char(1) NOT NULL DEFAULT 'A',
  `location` varchar(255) NOT NULL DEFAULT 'central',
  `area` char(1) NOT NULL DEFAULT 'V',
  `position` smallint NOT NULL DEFAULT '0',
  `parent_id` varchar(64) NOT NULL DEFAULT '0',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`,`id_path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_custom_menu_descriptions`
--

DROP TABLE IF EXISTS `cscart_custom_menu_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_custom_menu_descriptions` (
  `item_id` varchar(64) NOT NULL DEFAULT '',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`,`id_path`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_data_feed_descriptions`
--

DROP TABLE IF EXISTS `cscart_data_feed_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_data_feed_descriptions` (
  `datafeed_id` int unsigned NOT NULL DEFAULT '0',
  `datafeed_name` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`datafeed_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_data_feeds`
--

DROP TABLE IF EXISTS `cscart_data_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_data_feeds` (
  `datafeed_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `categories` text,
  `products` text,
  `fields` text,
  `export_location` char(1) NOT NULL DEFAULT 'L',
  `export_by_cron` char(1) NOT NULL DEFAULT 'N',
  `ftp_url` varchar(255) NOT NULL DEFAULT '',
  `ftp_user` varchar(50) NOT NULL DEFAULT '',
  `ftp_pass` varchar(50) NOT NULL DEFAULT '',
  `file_name` varchar(50) NOT NULL DEFAULT '',
  `enclosure` char(1) NOT NULL DEFAULT '',
  `csv_delimiter` char(1) NOT NULL DEFAULT '',
  `exclude_disabled_products` char(1) NOT NULL DEFAULT 'N',
  `exclude_shared_products` char(1) NOT NULL DEFAULT 'N',
  `export_options` text,
  `save_dir` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT '',
  `layout_id` int unsigned NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`datafeed_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_destination_descriptions`
--

DROP TABLE IF EXISTS `cscart_destination_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_destination_descriptions` (
  `destination_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `destination` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`destination_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_destination_elements`
--

DROP TABLE IF EXISTS `cscart_destination_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_destination_elements` (
  `element_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `destination_id` mediumint unsigned NOT NULL DEFAULT '0',
  `element` varchar(255) NOT NULL DEFAULT '',
  `element_type` char(1) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`element_id`),
  KEY `c_status` (`destination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4507 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_destinations`
--

DROP TABLE IF EXISTS `cscart_destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_destinations` (
  `destination_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `localization` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`destination_id`),
  KEY `localization` (`localization`),
  KEY `c_status` (`destination_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_discussion`
--

DROP TABLE IF EXISTS `cscart_discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_discussion` (
  `thread_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'D',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`thread_id`),
  UNIQUE KEY `object_id` (`object_id`,`object_type`),
  KEY `idx_company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3641 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_discussion_messages`
--

DROP TABLE IF EXISTS `cscart_discussion_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_discussion_messages` (
  `message` mediumtext,
  `post_id` mediumint unsigned NOT NULL DEFAULT '0',
  `thread_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_discussion_posts`
--

DROP TABLE IF EXISTS `cscart_discussion_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_discussion_posts` (
  `post_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` mediumint unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'D',
  PRIMARY KEY (`post_id`),
  KEY `thread_id` (`thread_id`,`ip_address`),
  KEY `thread_id_2` (`thread_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_discussion_rating`
--

DROP TABLE IF EXISTS `cscart_discussion_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_discussion_rating` (
  `rating_value` tinyint unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint unsigned NOT NULL DEFAULT '0',
  `thread_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_ekeys`
--

DROP TABLE IF EXISTS `cscart_ekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_ekeys` (
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `object_string` varchar(128) NOT NULL DEFAULT '',
  `object_type` char(1) NOT NULL DEFAULT 'R',
  `ekey` varchar(255) NOT NULL DEFAULT '',
  `ttl` int unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`object_id`,`object_type`,`ekey`(64)),
  UNIQUE KEY `object_string` (`object_string`,`object_type`,`ekey`(64)),
  KEY `c_status` (`ekey`(64),`object_type`,`ttl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_em_mailchimp_webhooks`
--

DROP TABLE IF EXISTS `cscart_em_mailchimp_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_em_mailchimp_webhooks` (
  `webhook_id` varchar(128) NOT NULL DEFAULT '',
  `list_id` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`webhook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_em_subscribers`
--

DROP TABLE IF EXISTS `cscart_em_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_em_subscribers` (
  `subscriber_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `unsubscribe_key` varchar(32) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `email` (`email`,`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_entity_notifications`
--

DROP TABLE IF EXISTS `cscart_entity_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_entity_notifications` (
  `notification_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `entity_type` varchar(32) NOT NULL,
  `entity_id` int unsigned NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `notification_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_exim_layouts`
--

DROP TABLE IF EXISTS `cscart_exim_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_exim_layouts` (
  `layout_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `cols` text,
  `options` text,
  `pattern_id` varchar(128) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`layout_id`),
  KEY `pattern_id` (`pattern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_extra_service_descriptions`
--

DROP TABLE IF EXISTS `cscart_extra_service_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_extra_service_descriptions` (
  `service_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lang_code` char(2) NOT NULL,
  UNIQUE KEY `service_id` (`service_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_extra_services`
--

DROP TABLE IF EXISTS `cscart_extra_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_extra_services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(12,2) NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'A',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '',
  `shipping_ids` varchar(40) NOT NULL DEFAULT '',
  `category_ids` text NOT NULL,
  `product_ids` text NOT NULL,
  `disable_ids` text NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_form_descriptions`
--

DROP TABLE IF EXISTS `cscart_form_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_form_descriptions` (
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `description` text,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`object_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_form_options`
--

DROP TABLE IF EXISTS `cscart_form_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_form_options` (
  `element_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `element_type` char(1) NOT NULL DEFAULT 'I',
  `value` varchar(255) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT 'N',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`element_id`),
  KEY `page_id` (`page_id`,`status`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_gdpr_user_agreements`
--

DROP TABLE IF EXISTS `cscart_gdpr_user_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_gdpr_user_agreements` (
  `agreement_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned DEFAULT '0',
  `email` varchar(128) DEFAULT '',
  `type` varchar(128) DEFAULT '',
  `timestamp` int unsigned DEFAULT '0',
  `agreement` text,
  PRIMARY KEY (`agreement_id`),
  KEY `idx_user_id_email` (`user_id`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_gdpr_user_data`
--

DROP TABLE IF EXISTS `cscart_gdpr_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_gdpr_user_data` (
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `anonymized` char(1) DEFAULT 'N',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_gift_certificates`
--

DROP TABLE IF EXISTS `cscart_gift_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_gift_certificates` (
  `gift_cert_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `gift_cert_code` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(64) NOT NULL DEFAULT '',
  `recipient` varchar(64) NOT NULL DEFAULT '',
  `send_via` char(1) NOT NULL DEFAULT 'E',
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `email` varchar(64) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `address_2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'P',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `order_ids` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(128) NOT NULL DEFAULT '',
  `message` mediumtext,
  `products` text,
  PRIMARY KEY (`gift_cert_id`),
  KEY `status` (`status`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_gift_certificates_log`
--

DROP TABLE IF EXISTS `cscart_gift_certificates_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_gift_certificates_log` (
  `log_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `gift_cert_id` mediumint unsigned NOT NULL DEFAULT '0',
  `area` char(1) NOT NULL DEFAULT 'C',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `products` text,
  `debit_products` text,
  PRIMARY KEY (`log_id`),
  KEY `area` (`area`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_hybrid_auth_providers`
--

DROP TABLE IF EXISTS `cscart_hybrid_auth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_hybrid_auth_providers` (
  `provider_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `provider` varchar(32) NOT NULL,
  `position` smallint NOT NULL DEFAULT '0',
  `app_id` varchar(255) NOT NULL DEFAULT '',
  `app_secret_key` varchar(255) DEFAULT '',
  `app_public_key` varchar(255) DEFAULT '',
  `app_params` text,
  `status` char(1) DEFAULT 'D',
  PRIMARY KEY (`provider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_hybrid_auth_storefronts_providers`
--

DROP TABLE IF EXISTS `cscart_hybrid_auth_storefronts_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_hybrid_auth_storefronts_providers` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `provider_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`provider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_hybrid_auth_users`
--

DROP TABLE IF EXISTS `cscart_hybrid_auth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_hybrid_auth_users` (
  `user_id` mediumint unsigned NOT NULL,
  `provider_id` mediumint unsigned NOT NULL,
  `identifier` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`provider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_images`
--

DROP TABLE IF EXISTS `cscart_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_images` (
  `image_id` int unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL DEFAULT '',
  `image_x` int NOT NULL DEFAULT '0',
  `image_y` int NOT NULL DEFAULT '0',
  `is_high_res` char(1) NOT NULL DEFAULT 'N',
  `cp_in_opt_list` char(1) NOT NULL DEFAULT 'N',
  `rf_original` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `image_path` (`image_path`),
  KEY `cp_in_opt_list` (`cp_in_opt_list`)
) ENGINE=MyISAM AUTO_INCREMENT=14720 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_images_links`
--

DROP TABLE IF EXISTS `cscart_images_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_images_links` (
  `pair_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(24) NOT NULL DEFAULT '',
  `image_id` int unsigned NOT NULL DEFAULT '0',
  `detailed_id` int unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT 'M',
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`pair_id`),
  KEY `object_id` (`object_id`,`object_type`,`type`),
  KEY `detailed_id` (`detailed_id`),
  KEY `image_id` (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5584 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_import_preset_descriptions`
--

DROP TABLE IF EXISTS `cscart_import_preset_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_import_preset_descriptions` (
  `preset_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `preset` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`preset_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_import_preset_fields`
--

DROP TABLE IF EXISTS `cscart_import_preset_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_import_preset_fields` (
  `field_id` int unsigned NOT NULL AUTO_INCREMENT,
  `preset_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `related_object_type` varchar(32) NOT NULL DEFAULT 'product_field',
  `related_object` varchar(255) NOT NULL DEFAULT '',
  `modifier` text,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_import_preset_states`
--

DROP TABLE IF EXISTS `cscart_import_preset_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_import_preset_states` (
  `preset_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `last_launch` int unsigned NOT NULL DEFAULT '0',
  `last_status` char(1) NOT NULL DEFAULT 'X',
  `last_result` text,
  `file` varchar(255) NOT NULL DEFAULT '',
  `file_type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`preset_id`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_import_presets`
--

DROP TABLE IF EXISTS `cscart_import_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_import_presets` (
  `preset_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(32) NOT NULL DEFAULT 'products',
  `file_extension` varchar(6) NOT NULL DEFAULT '',
  `options` text,
  PRIMARY KEY (`preset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_info_panel`
--

DROP TABLE IF EXISTS `cscart_info_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_info_panel` (
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `color` varchar(7) NOT NULL DEFAULT '#ffffff',
  `avail_from_timestamp` int unsigned NOT NULL DEFAULT '0',
  `avail_to_timestamp` int unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_installed_upgrades`
--

DROP TABLE IF EXISTS `cscart_installed_upgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_installed_upgrades` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int NOT NULL DEFAULT '0',
  `description` text,
  `conflicts` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_language_values`
--

DROP TABLE IF EXISTS `cscart_language_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_language_values` (
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`lang_code`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_languages`
--

DROP TABLE IF EXISTS `cscart_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_languages` (
  `lang_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `country_code` char(2) NOT NULL DEFAULT '',
  `ccode` mediumtext NOT NULL,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_localization_descriptions`
--

DROP TABLE IF EXISTS `cscart_localization_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_localization_descriptions` (
  `localization_id` mediumint unsigned NOT NULL DEFAULT '0',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  KEY `localisation_id` (`localization_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_localization_elements`
--

DROP TABLE IF EXISTS `cscart_localization_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_localization_elements` (
  `element_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `localization_id` mediumint unsigned NOT NULL DEFAULT '0',
  `element` varchar(36) NOT NULL DEFAULT '',
  `element_type` char(1) NOT NULL DEFAULT 'S',
  `position` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`element_id`),
  KEY `c_avail` (`localization_id`),
  KEY `element` (`element`,`element_type`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_localizations`
--

DROP TABLE IF EXISTS `cscart_localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_localizations` (
  `localization_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `custom_weight_settings` char(1) NOT NULL DEFAULT 'Y',
  `weight_symbol` varchar(255) NOT NULL DEFAULT '',
  `weight_unit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`localization_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_lock_keys`
--

DROP TABLE IF EXISTS `cscart_lock_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_lock_keys` (
  `key_id` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiry_at` int unsigned NOT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_logos`
--

DROP TABLE IF EXISTS `cscart_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_logos` (
  `logo_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `layout_id` int NOT NULL DEFAULT '0',
  `style_id` varchar(50) NOT NULL DEFAULT '',
  `company_id` int NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logo_id`),
  KEY `type` (`type`,`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2193 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_logs`
--

DROP TABLE IF EXISTS `cscart_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_logs` (
  `log_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  `event_type` char(1) NOT NULL DEFAULT 'N',
  `action` varchar(16) NOT NULL DEFAULT '',
  `object` char(1) NOT NULL DEFAULT '',
  `content` text,
  `backtrace` text,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `object` (`object`),
  KEY `type` (`type`,`action`),
  KEY `idx_timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=45573 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_mailing_lists`
--

DROP TABLE IF EXISTS `cscart_mailing_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_mailing_lists` (
  `list_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `from_email` varchar(64) NOT NULL DEFAULT '',
  `from_name` varchar(128) NOT NULL DEFAULT '',
  `reply_to` varchar(64) NOT NULL DEFAULT '',
  `show_on_checkout` tinyint unsigned NOT NULL DEFAULT '0',
  `show_on_registration` tinyint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `register_autoresponder` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_manual_rating`
--

DROP TABLE IF EXISTS `cscart_manual_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_manual_rating` (
  `object_id` int unsigned NOT NULL DEFAULT '0',
  `object_type` varchar(32) NOT NULL DEFAULT 'company',
  `updated_timestamp` int unsigned NOT NULL DEFAULT '0',
  `rating` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`object_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_master_products_storefront_min_price`
--

DROP TABLE IF EXISTS `cscart_master_products_storefront_min_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_master_products_storefront_min_price` (
  `storefront_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`product_id`,`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_master_products_storefront_offers_count`
--

DROP TABLE IF EXISTS `cscart_master_products_storefront_offers_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_master_products_storefront_offers_count` (
  `storefront_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`storefront_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_menus`
--

DROP TABLE IF EXISTS `cscart_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_menus` (
  `menu_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_menus_descriptions`
--

DROP TABLE IF EXISTS `cscart_menus_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_menus_descriptions` (
  `menu_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`menu_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_mobile_app_notification_subscriptions`
--

DROP TABLE IF EXISTS `cscart_mobile_app_notification_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_mobile_app_notification_subscriptions` (
  `subscription_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `device_id` varchar(256) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `token` varchar(256) NOT NULL DEFAULT '',
  `locale` varchar(10) NOT NULL DEFAULT '',
  `storefront_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`subscription_id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `device` (`platform`,`device_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_newsletter_batch_recipients`
--

DROP TABLE IF EXISTS `cscart_newsletter_batch_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_newsletter_batch_recipients` (
  `send_list_id` int unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `list_id` mediumint unsigned NOT NULL DEFAULT '0',
  `subscriber_id` mediumint unsigned NOT NULL DEFAULT '0',
  `email` varchar(128) NOT NULL DEFAULT '',
  `send_key` varchar(128) NOT NULL DEFAULT '',
  `lang_code` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`send_list_id`),
  KEY `send_key` (`send_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_newsletter_campaigns`
--

DROP TABLE IF EXISTS `cscart_newsletter_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_newsletter_campaigns` (
  `campaign_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  PRIMARY KEY (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_newsletter_descriptions`
--

DROP TABLE IF EXISTS `cscart_newsletter_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_newsletter_descriptions` (
  `newsletter_id` mediumint unsigned NOT NULL DEFAULT '0',
  `newsletter` varchar(255) NOT NULL DEFAULT '',
  `newsletter_multiple` text,
  `body_html` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`newsletter_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_newsletter_links`
--

DROP TABLE IF EXISTS `cscart_newsletter_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_newsletter_links` (
  `link_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` mediumint unsigned NOT NULL DEFAULT '0',
  `newsletter_id` mediumint unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `clicks` mediumint unsigned DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_newsletters`
--

DROP TABLE IF EXISTS `cscart_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_newsletters` (
  `newsletter_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` mediumint unsigned NOT NULL DEFAULT '0',
  `sent_date` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `type` char(1) NOT NULL DEFAULT 'N',
  `mailing_lists` varchar(255) NOT NULL DEFAULT '',
  `users` text,
  `abandoned_type` varchar(10) NOT NULL DEFAULT 'both',
  `abandoned_days` int NOT NULL DEFAULT '0',
  `abandoned_company_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_notification_event_receivers`
--

DROP TABLE IF EXISTS `cscart_notification_event_receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_notification_event_receivers` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event_id` varchar(128) NOT NULL COMMENT 'The notification group ID',
  `method` varchar(64) NOT NULL DEFAULT 'user_id' COMMENT 'Receiver search method: user_id — User ID, usergroup_id — Usergroup ID, email — e-mail',
  `criterion` varchar(128) NOT NULL COMMENT 'Criterion to use with the specified method to search a receiver',
  `receiver` varchar(15) NOT NULL DEFAULT 'A' COMMENT 'Receiver of notification message: C - Customer, A - Administrator, V - Vendor',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_notification_group_receivers`
--

DROP TABLE IF EXISTS `cscart_notification_group_receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_notification_group_receivers` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` varchar(128) NOT NULL COMMENT 'Notification group ID',
  `method` varchar(64) NOT NULL DEFAULT 'user_id' COMMENT 'Receiver search method: user_id — User ID, usergroup_id — Usergroup ID, email — e-mail',
  `criterion` varchar(128) NOT NULL COMMENT 'Criterion to use with the specified method to search a receiver',
  `receiver` varchar(15) NOT NULL DEFAULT 'A' COMMENT 'Receiver of notification message: C - Customer, A - Administrator, V - Vendor',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_notification_settings`
--

DROP TABLE IF EXISTS `cscart_notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_notification_settings` (
  `event_id` varchar(100) NOT NULL,
  `transport_id` varchar(50) NOT NULL,
  `receiver` varchar(15) NOT NULL,
  `is_allowed` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`,`transport_id`,`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_notifications`
--

DROP TABLE IF EXISTS `cscart_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_notifications` (
  `notification_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `severity` char(1) NOT NULL DEFAULT 'N',
  `section` varchar(128) NOT NULL DEFAULT 'other',
  `tag` varchar(32) NOT NULL DEFAULT 'other',
  `area` char(1) NOT NULL DEFAULT 'A',
  `action_url` varchar(256) NOT NULL,
  `is_read` tinyint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `pinned` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether the notification has been pinned',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Determines if a remind notification is needed',
  PRIMARY KEY (`notification_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_area` (`user_id`,`area`)
) ENGINE=MyISAM AUTO_INCREMENT=605 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_order_data`
--

DROP TABLE IF EXISTS `cscart_order_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_order_data` (
  `order_data_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  `data` longblob NOT NULL,
  PRIMARY KEY (`order_data_id`),
  UNIQUE KEY `idx_order_id_type` (`order_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_order_details`
--

DROP TABLE IF EXISTS `cscart_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_order_details` (
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(64) NOT NULL DEFAULT '',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount` mediumint unsigned NOT NULL DEFAULT '0',
  `extra` longblob NOT NULL,
  PRIMARY KEY (`item_id`,`order_id`),
  KEY `o_k` (`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_order_docs`
--

DROP TABLE IF EXISTS `cscart_order_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_order_docs` (
  `doc_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) NOT NULL DEFAULT 'I',
  `order_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`doc_id`,`type`),
  KEY `type` (`order_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_order_transactions`
--

DROP TABLE IF EXISTS `cscart_order_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_order_transactions` (
  `payment_id` mediumint unsigned NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT '',
  `extra` longblob NOT NULL,
  PRIMARY KEY (`payment_id`,`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_orders`
--

DROP TABLE IF EXISTS `cscart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_orders` (
  `order_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `is_parent_order` char(1) NOT NULL DEFAULT 'N',
  `parent_order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `issuer_id` mediumint unsigned DEFAULT NULL,
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `subtotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `subtotal_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `payment_surcharge` decimal(12,2) NOT NULL DEFAULT '0.00',
  `shipping_ids` varchar(255) NOT NULL DEFAULT '',
  `shipping_cost` decimal(12,2) NOT NULL DEFAULT '0.00',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'O',
  `notes` text,
  `details` text,
  `promotions` text,
  `promotion_ids` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(32) NOT NULL DEFAULT '',
  `lastname` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `b_firstname` varchar(128) NOT NULL DEFAULT '',
  `b_lastname` varchar(128) NOT NULL DEFAULT '',
  `b_address` varchar(255) NOT NULL DEFAULT '',
  `b_address_2` varchar(255) NOT NULL DEFAULT '',
  `b_city` varchar(64) NOT NULL DEFAULT '',
  `b_county` varchar(32) NOT NULL DEFAULT '',
  `b_state` varchar(32) NOT NULL DEFAULT '',
  `b_country` char(2) NOT NULL DEFAULT '',
  `b_zipcode` varchar(32) NOT NULL DEFAULT '',
  `b_phone` varchar(128) NOT NULL DEFAULT '',
  `s_firstname` varchar(128) NOT NULL DEFAULT '',
  `s_lastname` varchar(128) NOT NULL DEFAULT '',
  `s_address` varchar(255) NOT NULL DEFAULT '',
  `s_address_2` varchar(255) NOT NULL DEFAULT '',
  `s_city` varchar(64) NOT NULL DEFAULT '',
  `s_county` varchar(32) NOT NULL DEFAULT '',
  `s_state` varchar(32) NOT NULL DEFAULT '',
  `s_country` char(2) NOT NULL DEFAULT '',
  `s_zipcode` varchar(32) NOT NULL DEFAULT '',
  `s_phone` varchar(128) NOT NULL DEFAULT '',
  `s_address_type` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `fax` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `payment_id` mediumint NOT NULL DEFAULT '0',
  `tax_exempt` char(1) NOT NULL DEFAULT 'N',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `repaid` int NOT NULL DEFAULT '0',
  `validation_code` varchar(20) NOT NULL DEFAULT '',
  `localization_id` mediumint NOT NULL,
  `profile_id` mediumint unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `updated_at` int unsigned NOT NULL DEFAULT '0',
  `extra_services` text,
  PRIMARY KEY (`order_id`),
  KEY `timestamp` (`timestamp`),
  KEY `user_id` (`user_id`),
  KEY `promotion_ids` (`promotion_ids`),
  KEY `status` (`status`),
  KEY `shipping_ids` (`shipping_ids`),
  KEY `company_id` (`company_id`),
  KEY `idx_updated_at` (`updated_at`)
) ENGINE=MyISAM AUTO_INCREMENT=875524 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_original_values`
--

DROP TABLE IF EXISTS `cscart_original_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_original_values` (
  `msgctxt` varchar(128) NOT NULL DEFAULT '',
  `msgid` text,
  PRIMARY KEY (`msgctxt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_page_descriptions`
--

DROP TABLE IF EXISTS `cscart_page_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_page_descriptions` (
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `page` varchar(255) DEFAULT '0',
  `description` mediumtext,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `ab__custom_page_h1` varchar(255) NOT NULL DEFAULT '',
  `page_sitemap` varchar(255) NOT NULL DEFAULT '',
  `ab__emd_alternative_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_pages`
--

DROP TABLE IF EXISTS `cscart_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_pages` (
  `page_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `page_type` char(1) NOT NULL DEFAULT 'T',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `timestamp` int NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `new_window` tinyint NOT NULL DEFAULT '0',
  `use_avail_period` char(1) NOT NULL DEFAULT 'N',
  `avail_from_timestamp` int unsigned NOT NULL DEFAULT '0',
  `avail_till_timestamp` int unsigned NOT NULL DEFAULT '0',
  `facebook_obj_type` varchar(64) NOT NULL,
  `abt__ut2_microdata_schema_type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_id`),
  KEY `localization` (`localization`),
  KEY `parent_id` (`parent_id`),
  KEY `id_path` (`id_path`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_payment_dependencies`
--

DROP TABLE IF EXISTS `cscart_payment_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_payment_dependencies` (
  `shipping_id` mediumint unsigned NOT NULL,
  `disable_payment_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`shipping_id`,`disable_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_payment_descriptions`
--

DROP TABLE IF EXISTS `cscart_payment_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_payment_descriptions` (
  `payment_id` mediumint unsigned NOT NULL DEFAULT '0',
  `payment` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `instructions` mediumtext,
  `surcharge_title` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_payment_processors`
--

DROP TABLE IF EXISTS `cscart_payment_processors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_payment_processors` (
  `processor_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `processor` varchar(255) NOT NULL DEFAULT '',
  `processor_script` varchar(255) NOT NULL DEFAULT '',
  `processor_template` varchar(255) NOT NULL DEFAULT '',
  `admin_template` varchar(255) NOT NULL DEFAULT '',
  `callback` char(1) NOT NULL DEFAULT 'N',
  `type` char(1) NOT NULL DEFAULT 'P',
  `addon` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`processor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_payments`
--

DROP TABLE IF EXISTS `cscart_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_payments` (
  `payment_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `template` varchar(128) NOT NULL DEFAULT '',
  `processor_id` mediumint unsigned NOT NULL DEFAULT '0',
  `processor_params` text,
  `a_surcharge` decimal(13,3) NOT NULL DEFAULT '0.000',
  `p_surcharge` decimal(13,3) NOT NULL DEFAULT '0.000',
  `tax_ids` varchar(255) NOT NULL DEFAULT '',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `payment_category` varchar(20) NOT NULL DEFAULT 'tab1',
  `country_selection_mode` char(1) NOT NULL DEFAULT 'N',
  `cp_min_pr_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cp_min_or_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cp_max_pr_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cp_max_or_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cp_rest_def` char(1) NOT NULL DEFAULT 'N',
  `cp_object_restr` text,
  PRIMARY KEY (`payment_id`),
  KEY `c_status` (`usergroup_ids`,`status`),
  KEY `position` (`position`),
  KEY `localization` (`localization`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_payments_countries`
--

DROP TABLE IF EXISTS `cscart_payments_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_payments_countries` (
  `payment_id` int unsigned NOT NULL DEFAULT '0',
  `country_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`,`country_code`),
  KEY `idx_payment_id` (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_poll_descriptions`
--

DROP TABLE IF EXISTS `cscart_poll_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_poll_descriptions` (
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'P',
  `description` mediumtext,
  PRIMARY KEY (`object_id`,`lang_code`,`type`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_poll_items`
--

DROP TABLE IF EXISTS `cscart_poll_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_poll_items` (
  `item_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT 'Q',
  `position` smallint NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT '',
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `parent_id` (`parent_id`),
  KEY `type` (`type`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_polls`
--

DROP TABLE IF EXISTS `cscart_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_polls` (
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `start_date` int unsigned NOT NULL DEFAULT '0',
  `end_date` int unsigned NOT NULL DEFAULT '0',
  `show_results` char(1) NOT NULL DEFAULT 'V',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_polls_answers`
--

DROP TABLE IF EXISTS `cscart_polls_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_polls_answers` (
  `answer_id` mediumint unsigned NOT NULL DEFAULT '0',
  `vote_id` mediumint unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`answer_id`,`vote_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_polls_votes`
--

DROP TABLE IF EXISTS `cscart_polls_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_polls_votes` (
  `vote_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `time` int NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_postalcodes`
--

DROP TABLE IF EXISTS `cscart_postalcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_postalcodes` (
  `countrycode` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `postalcode` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `placename` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `admin1_state` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `latitude` float DEFAULT '0',
  `longitude` float DEFAULT '0',
  `ID` int DEFAULT NULL,
  `country_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_premoderation_products`
--

DROP TABLE IF EXISTS `cscart_premoderation_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_premoderation_products` (
  `product_id` mediumint unsigned NOT NULL,
  `original_status` char(1) NOT NULL DEFAULT 'A',
  `updated_timestamp` int unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `initial_product_state` text COMMENT 'Initial product state before changes',
  `initial_timestamp` int unsigned NOT NULL DEFAULT '0' COMMENT 'Timestamp when the product was sent to moderation',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_privileges`
--

DROP TABLE IF EXISTS `cscart_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_privileges` (
  `privilege` varchar(32) NOT NULL DEFAULT '',
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `section_id` varchar(32) NOT NULL DEFAULT '',
  `group_id` varchar(32) NOT NULL DEFAULT '',
  `is_view` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`privilege`),
  KEY `section_id` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_bundle_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_bundle_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_bundle_descriptions` (
  `bundle_id` int unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `storefront_name` varchar(50) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`bundle_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_bundle_images`
--

DROP TABLE IF EXISTS `cscart_product_bundle_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_bundle_images` (
  `bundle_image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `bundle_id` int unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`bundle_image_id`),
  KEY `bundle_id` (`bundle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_bundle_product_links`
--

DROP TABLE IF EXISTS `cscart_product_bundle_product_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_bundle_product_links` (
  `bundle_id` int unsigned NOT NULL,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` mediumint NOT NULL DEFAULT '0',
  `show_on_product_page` char(1) NOT NULL DEFAULT 'Y',
  `all_variants` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`product_id`,`bundle_id`),
  KEY `bundle_id` (`bundle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_bundles`
--

DROP TABLE IF EXISTS `cscart_product_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_bundles` (
  `bundle_id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL,
  `products` text,
  `date_from` int unsigned NOT NULL DEFAULT '0',
  `date_to` int unsigned NOT NULL DEFAULT '0',
  `display_in_promotions` char(1) NOT NULL DEFAULT 'Y',
  `status` char(1) NOT NULL DEFAULT 'D',
  `linked_promotion_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`bundle_id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_descriptions` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `product` varchar(255) NOT NULL DEFAULT '',
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `ab__spt_short_name` varchar(255) NOT NULL DEFAULT '',
  `short_description` mediumtext,
  `full_description` mediumtext,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `search_words` text,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `age_warning_message` text,
  `promo_text` mediumtext,
  `stop_words` mediumtext NOT NULL,
  `ab__custom_product_h1` varchar(255) NOT NULL DEFAULT '',
  `ab__emd_alternative_name` varchar(255) NOT NULL DEFAULT '',
  `unit_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`product_id`,`lang_code`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_feature_variant_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_feature_variant_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_feature_variant_descriptions` (
  `variant_id` mediumint unsigned NOT NULL DEFAULT '0',
  `variant` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `ab__sf_seo_variant` varchar(255) NOT NULL DEFAULT '',
  `ab__custom_feature_variant_h1` varchar(255) NOT NULL DEFAULT '',
  `ab__emd_alternative_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`variant_id`,`lang_code`),
  KEY `variant` (`variant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_feature_variants`
--

DROP TABLE IF EXISTS `cscart_product_feature_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_feature_variants` (
  `variant_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `feature_id` mediumint unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(128) DEFAULT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`variant_id`),
  KEY `feature_id` (`feature_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=17250 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_features`
--

DROP TABLE IF EXISTS `cscart_product_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_features` (
  `feature_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `feature_code` varchar(32) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `feature_type` char(1) NOT NULL DEFAULT 'T',
  `categories_path` text,
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `display_on_product` char(1) NOT NULL DEFAULT 'Y',
  `display_on_catalog` char(1) NOT NULL DEFAULT 'Y',
  `display_on_header` char(1) NOT NULL DEFAULT 'N',
  `status` char(1) NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `comparison` char(1) NOT NULL DEFAULT 'N',
  `purpose` varchar(32) NOT NULL DEFAULT '',
  `feature_style` varchar(32) NOT NULL DEFAULT '',
  `filter_style` varchar(32) NOT NULL DEFAULT '',
  `cp_ls_use` char(1) NOT NULL DEFAULT 'N',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `updated_timestamp` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feature_id`),
  KEY `status` (`status`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1809 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_features_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_features_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_features_descriptions` (
  `feature_id` mediumint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `full_description` mediumtext,
  `prefix` varchar(128) NOT NULL DEFAULT '',
  `suffix` varchar(128) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `internal_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`feature_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_features_values`
--

DROP TABLE IF EXISTS `cscart_product_features_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_features_values` (
  `feature_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `variant_id` mediumint unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  `value_int` double(12,2) DEFAULT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`feature_id`,`product_id`,`variant_id`,`lang_code`),
  KEY `fl` (`feature_id`,`lang_code`,`variant_id`,`value`,`value_int`),
  KEY `variant_id` (`variant_id`),
  KEY `lang_code` (`lang_code`),
  KEY `product_id` (`product_id`),
  KEY `fpl` (`feature_id`,`product_id`,`lang_code`),
  KEY `idx_product_feature_variant_id` (`product_id`,`feature_id`,`lang_code`,`variant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_file_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_file_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_file_descriptions` (
  `file_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `license` text,
  `readme` text,
  PRIMARY KEY (`file_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_file_ekeys`
--

DROP TABLE IF EXISTS `cscart_product_file_ekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_file_ekeys` (
  `ekey` varchar(32) NOT NULL DEFAULT '',
  `file_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint unsigned NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT 'N',
  `ttl` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`,`order_id`),
  UNIQUE KEY `ekey` (`ekey`),
  KEY `ttl` (`ttl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_file_folder_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_file_folder_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_file_folder_descriptions` (
  `folder_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `folder_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`folder_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_file_folders`
--

DROP TABLE IF EXISTS `cscart_product_file_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_file_folders` (
  `folder_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`folder_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_files`
--

DROP TABLE IF EXISTS `cscart_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_files` (
  `file_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` mediumint unsigned DEFAULT NULL,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `file_path` varchar(255) NOT NULL DEFAULT '',
  `preview_path` varchar(255) NOT NULL DEFAULT '',
  `file_size` bigint unsigned NOT NULL DEFAULT '0',
  `preview_size` int unsigned NOT NULL DEFAULT '0',
  `agreement` char(1) NOT NULL DEFAULT 'N',
  `max_downloads` smallint unsigned NOT NULL DEFAULT '0',
  `total_downloads` smallint unsigned NOT NULL DEFAULT '0',
  `activation_type` char(1) NOT NULL DEFAULT 'M',
  `position` smallint NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`file_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_filter_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_filter_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_filter_descriptions` (
  `filter_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `filter` varchar(255) NOT NULL DEFAULT '',
  `company_id` varchar(100) DEFAULT NULL,
  `ab__sb_h1` varchar(255) NOT NULL DEFAULT '',
  `ab__sb_breadcrumb` varchar(255) NOT NULL DEFAULT '',
  `ab__sb_description` mediumtext,
  `ab__sb_page_title` varchar(255) NOT NULL DEFAULT '',
  `ab__sb_meta_description` varchar(255) NOT NULL DEFAULT '',
  `ab__sb_meta_keywords` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`filter_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_filters`
--

DROP TABLE IF EXISTS `cscart_product_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_filters` (
  `filter_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `categories_path` text,
  `company_id` int unsigned DEFAULT '0',
  `feature_id` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `field_type` char(1) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `round_to` varchar(8) NOT NULL DEFAULT '1',
  `display_count` smallint unsigned NOT NULL DEFAULT '10',
  `display` char(1) NOT NULL DEFAULT 'Y',
  `index_with` text NOT NULL,
  `mlf_parent_id` mediumint NOT NULL DEFAULT '0',
  `mlf_parent_variant` mediumint NOT NULL DEFAULT '0',
  `mlf_type` char(1) NOT NULL DEFAULT 'C',
  `mlf_show_title` char(1) NOT NULL DEFAULT 'Y',
  `abt__ut2_display_mobile` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_display_tablet` char(1) NOT NULL DEFAULT 'Y',
  `abt__ut2_display_desktop` char(1) NOT NULL DEFAULT 'Y',
  `ab__sb_descr_position` enum('top','bottom') NOT NULL DEFAULT 'top',
  `ab__sb_variants_template` varchar(16) NOT NULL DEFAULT 'grid',
  PRIMARY KEY (`filter_id`),
  KEY `feature_id` (`feature_id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_global_option_links`
--

DROP TABLE IF EXISTS `cscart_product_global_option_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_global_option_links` (
  `option_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `cp_autoset` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`option_id`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_location_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_location_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_location_descriptions` (
  `store_location_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext,
  `city` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`store_location_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_locations`
--

DROP TABLE IF EXISTS `cscart_product_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_locations` (
  `store_location_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`store_location_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_option_variants`
--

DROP TABLE IF EXISTS `cscart_product_option_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_option_variants` (
  `variant_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `modifier` decimal(13,3) NOT NULL DEFAULT '0.000',
  `modifier_type` char(1) NOT NULL DEFAULT 'A',
  `weight_modifier` decimal(12,3) NOT NULL DEFAULT '0.000',
  `weight_modifier_type` char(1) NOT NULL DEFAULT 'A',
  `point_modifier` decimal(12,3) NOT NULL DEFAULT '0.000',
  `point_modifier_type` char(1) NOT NULL DEFAULT 'A',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`variant_id`),
  KEY `position` (`position`),
  KEY `status` (`status`),
  KEY `option_id` (`option_id`,`status`),
  KEY `option_id_2` (`option_id`,`variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_option_variants_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_option_variants_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_option_variants_descriptions` (
  `variant_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `variant_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`variant_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_options`
--

DROP TABLE IF EXISTS `cscart_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_options` (
  `option_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `option_type` char(1) NOT NULL DEFAULT 'S',
  `inventory` char(1) NOT NULL DEFAULT 'Y',
  `regexp` varchar(255) NOT NULL DEFAULT '',
  `required` char(1) NOT NULL DEFAULT 'N',
  `multiupload` char(1) NOT NULL DEFAULT 'N',
  `allowed_extensions` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` bigint unsigned NOT NULL DEFAULT '0',
  `missing_variants_handling` char(1) NOT NULL DEFAULT 'M',
  `status` char(1) NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  `google_export_name_option` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_id`),
  KEY `c_status` (`product_id`,`status`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_options_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_options_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_options_descriptions` (
  `option_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `internal_option_name` varchar(64) NOT NULL DEFAULT '',
  `option_text` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `inner_hint` varchar(255) NOT NULL DEFAULT '',
  `incorrect_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`option_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_options_exceptions`
--

DROP TABLE IF EXISTS `cscart_product_options_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_options_exceptions` (
  `exception_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `combination` text,
  PRIMARY KEY (`exception_id`),
  KEY `product` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_options_inventory`
--

DROP TABLE IF EXISTS `cscart_product_options_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_options_inventory` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(64) NOT NULL DEFAULT '',
  `combination_hash` int unsigned NOT NULL DEFAULT '0',
  `combination` varchar(255) NOT NULL DEFAULT '',
  `amount` mediumint NOT NULL DEFAULT '0',
  `temp` char(1) NOT NULL DEFAULT 'N',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`combination_hash`),
  KEY `pc` (`product_id`,`combination`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_point_prices`
--

DROP TABLE IF EXISTS `cscart_product_point_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_point_prices` (
  `point_price_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `point_price` int unsigned NOT NULL DEFAULT '0',
  `lower_limit` smallint unsigned NOT NULL DEFAULT '0',
  `usergroup_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`point_price_id`),
  UNIQUE KEY `unique_key` (`lower_limit`,`usergroup_id`,`product_id`),
  KEY `src_k` (`product_id`,`lower_limit`,`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_popularity`
--

DROP TABLE IF EXISTS `cscart_product_popularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_popularity` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `viewed` int NOT NULL DEFAULT '0',
  `added` int NOT NULL DEFAULT '0',
  `deleted` int NOT NULL DEFAULT '0',
  `bought` int NOT NULL DEFAULT '0',
  `total` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `total` (`product_id`,`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_prices`
--

DROP TABLE IF EXISTS `cscart_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_prices` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `percentage_discount` int unsigned NOT NULL DEFAULT '0',
  `lower_limit` mediumint unsigned NOT NULL DEFAULT '0',
  `usergroup_id` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `usergroup` (`product_id`,`usergroup_id`,`lower_limit`),
  KEY `product_id` (`product_id`),
  KEY `lower_limit` (`lower_limit`),
  KEY `usergroup_id` (`usergroup_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_required_products`
--

DROP TABLE IF EXISTS `cscart_product_required_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_required_products` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `required_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`required_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_review_prepared_data`
--

DROP TABLE IF EXISTS `cscart_product_review_prepared_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_review_prepared_data` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `average_rating` decimal(4,2) DEFAULT NULL,
  `reviews_count` mediumint unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`,`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_review_votes`
--

DROP TABLE IF EXISTS `cscart_product_review_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_review_votes` (
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_review_id` mediumint unsigned NOT NULL DEFAULT '0',
  `value` int NOT NULL DEFAULT '0',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`product_review_id`,`ip_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_reviews`
--

DROP TABLE IF EXISTS `cscart_product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_reviews` (
  `product_review_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `advantages` mediumtext,
  `disadvantages` mediumtext,
  `comment` mediumtext,
  `rating_value` tinyint unsigned NOT NULL DEFAULT '0',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `is_buyer` char(1) NOT NULL DEFAULT 'N',
  `product_review_timestamp` int unsigned NOT NULL DEFAULT '0',
  `country_code` char(2) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `reply_user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `reply` mediumtext,
  `reply_timestamp` int unsigned NOT NULL DEFAULT '0',
  `helpfulness` mediumint NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `images_count` int unsigned NOT NULL DEFAULT '0',
  `vote_up` smallint unsigned NOT NULL DEFAULT '0',
  `vote_down` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_review_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_sales`
--

DROP TABLE IF EXISTS `cscart_product_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_sales` (
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `pa` (`product_id`,`amount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_subscriptions`
--

DROP TABLE IF EXISTS `cscart_product_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_subscriptions` (
  `subscription_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `email` varchar(128) NOT NULL DEFAULT '',
  `destination_id` int unsigned NOT NULL DEFAULT '0',
  `api_guest_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subscription_id`),
  UNIQUE KEY `pe` (`product_id`,`email`),
  KEY `pd` (`product_id`,`user_id`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_tabs`
--

DROP TABLE IF EXISTS `cscart_product_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_tabs` (
  `tab_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `tab_type` char(1) NOT NULL DEFAULT 'B',
  `block_id` mediumint unsigned NOT NULL DEFAULT '0',
  `template` varchar(255) NOT NULL DEFAULT '',
  `addon` varchar(32) NOT NULL DEFAULT '',
  `position` int NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `is_primary` char(1) NOT NULL DEFAULT 'N',
  `product_ids` text,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `show_in_popup` char(1) NOT NULL DEFAULT 'N',
  `ab__smc_hide_content` char(1) NOT NULL DEFAULT 'N',
  `ab__smc_override` char(1) NOT NULL DEFAULT 'N',
  `ab__smc_height` int unsigned NOT NULL DEFAULT '250',
  `ab__spt_activate_settings` char(1) NOT NULL DEFAULT 'N',
  `ab__spt_tab_header_tag` varchar(10) NOT NULL DEFAULT 'div',
  `ab__spt_add_tab_to_floating_panel` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`tab_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_tabs_descriptions`
--

DROP TABLE IF EXISTS `cscart_product_tabs_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_tabs_descriptions` (
  `tab_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ab__smc_show_more` varchar(50) NOT NULL DEFAULT '',
  `ab__smc_show_less` varchar(50) NOT NULL DEFAULT '',
  `ab__spt_tab_header` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tab_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_variation_data_identity_map`
--

DROP TABLE IF EXISTS `cscart_product_variation_data_identity_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_variation_data_identity_map` (
  `table_id` varchar(32) NOT NULL DEFAULT '',
  `id` varchar(64) NOT NULL DEFAULT '',
  `parent_id` varchar(64) NOT NULL DEFAULT '',
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`table_id`,`id`,`parent_id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_variation_group_features`
--

DROP TABLE IF EXISTS `cscart_product_variation_group_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_variation_group_features` (
  `feature_id` int unsigned NOT NULL,
  `purpose` varchar(32) NOT NULL,
  `group_id` int unsigned NOT NULL,
  PRIMARY KEY (`feature_id`,`group_id`),
  KEY `idx_group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_variation_group_products`
--

DROP TABLE IF EXISTS `cscart_product_variation_group_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_variation_group_products` (
  `product_id` int unsigned NOT NULL,
  `parent_product_id` int unsigned NOT NULL,
  `group_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`group_id`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_parent_product_id` (`parent_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_product_variation_groups`
--

DROP TABLE IF EXISTS `cscart_product_variation_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_product_variation_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `created_at` int unsigned NOT NULL DEFAULT '0',
  `updated_at` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_group_code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_products`
--

DROP TABLE IF EXISTS `cscart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_products` (
  `product_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(64) NOT NULL DEFAULT '',
  `product_type` char(1) NOT NULL DEFAULT 'P',
  `status` char(1) NOT NULL DEFAULT 'A',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `list_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount` mediumint NOT NULL DEFAULT '0',
  `weight` decimal(13,3) NOT NULL DEFAULT '0.000',
  `length` mediumint unsigned NOT NULL DEFAULT '0',
  `width` mediumint unsigned NOT NULL DEFAULT '0',
  `height` mediumint unsigned NOT NULL DEFAULT '0',
  `shipping_freight` decimal(12,2) NOT NULL DEFAULT '0.00',
  `low_avail_limit` mediumint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `updated_timestamp` int unsigned NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `is_edp` char(1) NOT NULL DEFAULT 'N',
  `edp_shipping` char(1) NOT NULL DEFAULT 'N',
  `unlimited_download` char(1) NOT NULL DEFAULT 'N',
  `tracking` char(1) DEFAULT NULL,
  `free_shipping` char(1) NOT NULL DEFAULT 'N',
  `zero_price_action` char(1) DEFAULT NULL,
  `is_pbp` char(1) NOT NULL DEFAULT 'N',
  `is_op` char(1) NOT NULL DEFAULT 'N',
  `is_oper` char(1) NOT NULL DEFAULT 'N',
  `is_returnable` char(1) NOT NULL DEFAULT 'Y',
  `return_period` int unsigned DEFAULT '10',
  `avail_since` int unsigned NOT NULL DEFAULT '0',
  `out_of_stock_actions` char(1) NOT NULL DEFAULT 'N',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `min_qty` smallint unsigned DEFAULT NULL,
  `max_qty` smallint unsigned DEFAULT NULL,
  `qty_step` smallint unsigned DEFAULT NULL,
  `list_qty_count` smallint unsigned DEFAULT NULL,
  `tax_ids` varchar(255) NOT NULL DEFAULT '',
  `age_verification` char(1) NOT NULL DEFAULT 'N',
  `age_limit` tinyint NOT NULL DEFAULT '0',
  `options_type` char(1) DEFAULT NULL,
  `exceptions_type` char(1) DEFAULT NULL,
  `details_layout` varchar(50) NOT NULL DEFAULT '',
  `shipping_params` varchar(255) NOT NULL DEFAULT '',
  `facebook_obj_type` varchar(64) NOT NULL,
  `parent_product_id` int unsigned NOT NULL DEFAULT '0',
  `__variation_code` varchar(255) DEFAULT NULL COMMENT 'Deprecated since variations v2.0',
  `__variation_options` varchar(255) DEFAULT NULL COMMENT 'Deprecated since variations v2.0',
  `__is_default_variation` char(1) NOT NULL DEFAULT 'N' COMMENT 'Deprecated since variations v2.0',
  `buy_now_url` varchar(255) NOT NULL,
  `master_product_id` int unsigned NOT NULL DEFAULT '0',
  `master_product_status` char(1) NOT NULL DEFAULT 'A',
  `master_product_offers_count` int unsigned NOT NULL DEFAULT '0',
  `ab__stickers_manual_ids` mediumtext,
  `ab__stickers_generated_ids` mediumtext,
  `size_chart_id` mediumint unsigned NOT NULL,
  `cp_sc_variation_type` char(1) NOT NULL DEFAULT 'M',
  `cp_allow_subscription` char(1) NOT NULL DEFAULT 'N',
  `cp_subscription_only` char(1) NOT NULL DEFAULT 'N',
  `cp_rs_cycle_type` char(1) NOT NULL DEFAULT 'D',
  `cp_sr_variation_type` char(1) NOT NULL DEFAULT 'M',
  `is_stock_split_by_warehouses` char(1) DEFAULT 'N',
  `cp_guarantee_fee` decimal(12,0) NOT NULL DEFAULT '0',
  `cp_guarantee_fee_type` char(1) NOT NULL DEFAULT 'A',
  `cp_guarantee_fee_returnable` char(1) NOT NULL DEFAULT 'N',
  `units_in_product` decimal(12,3) unsigned NOT NULL DEFAULT '0.000',
  `show_price_per_x_units` decimal(12,3) unsigned NOT NULL DEFAULT '1.000',
  `my_supplier_id` mediumint unsigned NOT NULL DEFAULT '0',
  `supplier_amount` mediumint unsigned NOT NULL DEFAULT '0',
  `manufacturer_code` varchar(128) NOT NULL DEFAULT '',
  `supplier_access_time` int NOT NULL DEFAULT '0',
  `rf_stop_update_price` varchar(1) NOT NULL DEFAULT 'N',
  `rf_stop_update_amount` varchar(1) NOT NULL DEFAULT 'N',
  `rf_stop_update_status` varchar(1) NOT NULL DEFAULT 'N',
  `rf_cost` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`product_id`),
  KEY `age_verification` (`age_verification`,`age_limit`),
  KEY `status` (`status`),
  KEY `idx_parent_product_id` (`parent_product_id`),
  KEY `idx_master_product_id` (`master_product_id`),
  KEY `my_supplier_id` (`my_supplier_id`),
  KEY `supplier_access_time` (`supplier_access_time`),
  KEY `products_rf_product_code_index` (`product_code`),
  KEY `products_rf_manufacturer_code_index` (`manufacturer_code`)
) ENGINE=MyISAM AUTO_INCREMENT=2972 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_products_categories`
--

DROP TABLE IF EXISTS `cscart_products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_products_categories` (
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `category_id` mediumint unsigned NOT NULL DEFAULT '0',
  `link_type` char(1) NOT NULL DEFAULT 'M',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `category_position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `link_type` (`link_type`),
  KEY `pt` (`product_id`,`link_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_profile_field_descriptions`
--

DROP TABLE IF EXISTS `cscart_profile_field_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_profile_field_descriptions` (
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `object_type` char(1) NOT NULL DEFAULT 'F',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`object_id`,`object_type`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_profile_field_sections`
--

DROP TABLE IF EXISTS `cscart_profile_field_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_profile_field_sections` (
  `section_id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` char(1) NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`section_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_profile_field_values`
--

DROP TABLE IF EXISTS `cscart_profile_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_profile_field_values` (
  `value_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `field_id` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_profile_fields`
--

DROP TABLE IF EXISTS `cscart_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_profile_fields` (
  `field_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `profile_show` char(1) DEFAULT 'N',
  `profile_required` char(1) DEFAULT 'N',
  `checkout_show` char(1) DEFAULT 'N',
  `checkout_required` char(1) DEFAULT 'N',
  `partner_show` char(1) DEFAULT 'N',
  `partner_required` char(1) DEFAULT 'N',
  `storefront_show` char(1) DEFAULT 'Y',
  `field_type` char(1) NOT NULL DEFAULT 'I',
  `profile_type` char(1) NOT NULL DEFAULT 'U',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `is_default` char(1) DEFAULT 'N',
  `section` char(1) DEFAULT 'C',
  `matching_id` mediumint unsigned NOT NULL DEFAULT '0',
  `class` varchar(100) NOT NULL DEFAULT '',
  `wrapper_class` varchar(100) NOT NULL DEFAULT '',
  `autocomplete_type` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `field_name` (`field_name`),
  KEY `checkout_show` (`checkout_show`,`field_type`),
  KEY `profile_show` (`profile_show`,`field_type`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_profile_fields_data`
--

DROP TABLE IF EXISTS `cscart_profile_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_profile_fields_data` (
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `object_type` char(1) NOT NULL DEFAULT 'U',
  `field_id` mediumint unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`object_type`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_promotion_descriptions`
--

DROP TABLE IF EXISTS `cscart_promotion_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_promotion_descriptions` (
  `promotion_id` mediumint unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `short_description` text,
  `detailed_description` mediumtext,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`promotion_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_promotion_images`
--

DROP TABLE IF EXISTS `cscart_promotion_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_promotion_images` (
  `promotion_image_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `promotion_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`promotion_image_id`),
  UNIQUE KEY `promo` (`promotion_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_promotions`
--

DROP TABLE IF EXISTS `cscart_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_promotions` (
  `promotion_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `conditions` text,
  `bonuses` text,
  `to_date` int unsigned NOT NULL DEFAULT '0',
  `from_date` int unsigned NOT NULL DEFAULT '0',
  `priority` mediumint unsigned NOT NULL DEFAULT '0',
  `stop` char(1) NOT NULL DEFAULT 'N',
  `zone` enum('cart','catalog') NOT NULL DEFAULT 'catalog',
  `conditions_hash` text,
  `status` char(1) NOT NULL DEFAULT 'A',
  `number_of_usages` mediumint NOT NULL DEFAULT '0',
  `users_conditions_hash` text,
  `stop_other_rules` char(1) NOT NULL DEFAULT 'N',
  `cp_is_rs_promo` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`promotion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_quick_menu`
--

DROP TABLE IF EXISTS `cscart_quick_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_quick_menu` (
  `menu_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `parent_id` mediumint unsigned NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_reward_point_changes`
--

DROP TABLE IF EXISTS `cscart_reward_point_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_reward_point_changes` (
  `change_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `action` char(1) NOT NULL DEFAULT 'A',
  `reason` text,
  PRIMARY KEY (`change_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_reward_points`
--

DROP TABLE IF EXISTS `cscart_reward_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_reward_points` (
  `reward_point_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `usergroup_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` int unsigned NOT NULL DEFAULT '0',
  `amount_type` char(1) NOT NULL DEFAULT 'A',
  `object_type` char(1) NOT NULL DEFAULT 'P',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reward_point_id`),
  UNIQUE KEY `unique_key` (`object_id`,`usergroup_id`,`object_type`,`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=949 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser` (
  `my_supplier_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(5) DEFAULT 'xls',
  `supplier_name` varchar(255) NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `manufacturer_field` varchar(128) NOT NULL DEFAULT 'manufacturer_code',
  `extra_charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extra_charge_type` tinyint(1) NOT NULL DEFAULT '0',
  `cron` text,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `amount_synonyms` text,
  `price_synonyms` text,
  `features_synonyms` text,
  `avail_strategy_in` tinyint unsigned NOT NULL DEFAULT '0',
  `avail_strategy_not_in` tinyint unsigned NOT NULL DEFAULT '0',
  `column_settings` mediumtext,
  `status` char(1) NOT NULL DEFAULT 'A',
  `access_time` int NOT NULL DEFAULT '0',
  `pricing_strategy` tinyint unsigned NOT NULL DEFAULT '0',
  `custom_node_name` varchar(255) DEFAULT NULL,
  `keep_logs_days` smallint unsigned NOT NULL DEFAULT '30',
  `filter_attributes` varchar(255) DEFAULT NULL,
  `amount_field` varchar(255) DEFAULT 'amount',
  `amount_field_not_in_schema` varchar(255) DEFAULT 'amount',
  `amount_field_not_in_schema_value` int DEFAULT '100',
  `extra_charge_custom` longtext,
  `new_pos` text,
  `autoimport` tinyint(1) NOT NULL DEFAULT '0',
  `attach_to_master` tinyint(1) NOT NULL DEFAULT '0',
  `xml_fix_wrong_encode` tinyint(1) NOT NULL DEFAULT '0',
  `price_round` text,
  `constructor_id` int unsigned NOT NULL DEFAULT '0',
  `wh_clear` text,
  `link_to_products` tinyint unsigned NOT NULL,
  PRIMARY KEY (`my_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_artefacts`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_artefacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_artefacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parser_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parser_id` (`parser_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_brands`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_brands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `my_supplier_id` mediumint unsigned NOT NULL,
  `brand_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `my_supplier_id` (`my_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_logs`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `my_supplier_id` mediumint unsigned NOT NULL,
  `user_id` mediumint unsigned NOT NULL,
  `general` text,
  `duplicates` mediumtext,
  `categories` mediumtext,
  `detailed` tinyint unsigned NOT NULL DEFAULT '0',
  `large_percentage` tinyint unsigned NOT NULL DEFAULT '0',
  `attach_id` int unsigned NOT NULL,
  `date` datetime DEFAULT NULL,
  `access_time` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_logs_detailed`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_logs_detailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_logs_detailed` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `my_supplier_id` mediumint unsigned NOT NULL,
  `access_time` int NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `value` mediumtext,
  `p_price` mediumint NOT NULL DEFAULT '0',
  `large_percentage` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `my_supplier_id` (`my_supplier_id`,`access_time`),
  KEY `product_id` (`product_id`),
  KEY `large_percentage` (`large_percentage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_logs_not_found`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_logs_not_found`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_logs_not_found` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `my_supplier_id` mediumint unsigned NOT NULL,
  `value` mediumtext,
  `added` tinyint unsigned NOT NULL DEFAULT '0',
  `manufacturer_code` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `my_supplier_id` (`my_supplier_id`),
  KEY `added` (`added`),
  KEY `manufacturer_code` (`manufacturer_code`),
  KEY `brand` (`brand`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_process`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_process` (
  `parser_id` int NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1',
  `percent` tinyint NOT NULL DEFAULT '0',
  `error_message` text,
  `running` tinyint NOT NULL DEFAULT '0',
  `last_change` int DEFAULT NULL,
  `process_message` varchar(255) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`parser_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rf_stock_parser_xml_nodes`
--

DROP TABLE IF EXISTS `cscart_rf_stock_parser_xml_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rf_stock_parser_xml_nodes` (
  `constructor_id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `attrs` text NOT NULL,
  KEY `constructor_id` (`constructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rma_properties`
--

DROP TABLE IF EXISTS `cscart_rma_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rma_properties` (
  `property_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'R',
  `update_totals_and_inventory` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`property_id`),
  KEY `c_status` (`property_id`,`status`),
  KEY `status` (`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rma_property_descriptions`
--

DROP TABLE IF EXISTS `cscart_rma_property_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rma_property_descriptions` (
  `property_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `property` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`property_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rma_return_products`
--

DROP TABLE IF EXISTS `cscart_rma_return_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rma_return_products` (
  `return_id` mediumint unsigned NOT NULL DEFAULT '0',
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `reason` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` mediumint unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT 'A',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `product_options` text,
  `product` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`return_id`,`item_id`,`type`),
  KEY `reason` (`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rma_returns`
--

DROP TABLE IF EXISTS `cscart_rma_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rma_returns` (
  `return_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `action` mediumint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'O',
  `total_amount` mediumint unsigned NOT NULL DEFAULT '0',
  `comment` text,
  `extra` text,
  PRIMARY KEY (`return_id`),
  KEY `order_id` (`order_id`),
  KEY `timestamp` (`timestamp`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_robots_data`
--

DROP TABLE IF EXISTS `cscart_robots_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_robots_data` (
  `robots_id` int unsigned NOT NULL AUTO_INCREMENT,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`robots_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rus_cities`
--

DROP TABLE IF EXISTS `cscart_rus_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rus_cities` (
  `city_id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL,
  `state_code` varchar(8) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `zipcode` text NOT NULL,
  `external_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`,`external_id`),
  KEY `state_code` (`state_code`)
) ENGINE=MyISAM AUTO_INCREMENT=1224 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_rus_city_descriptions`
--

DROP TABLE IF EXISTS `cscart_rus_city_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_rus_city_descriptions` (
  `city_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`city_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports`
--

DROP TABLE IF EXISTS `cscart_sales_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports` (
  `report_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `type` char(1) NOT NULL DEFAULT '',
  `period` char(2) NOT NULL DEFAULT 'A',
  `time_from` int NOT NULL DEFAULT '0',
  `time_to` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_descriptions`
--

DROP TABLE IF EXISTS `cscart_sales_reports_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_descriptions` (
  `report_id` mediumint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_elements`
--

DROP TABLE IF EXISTS `cscart_sales_reports_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_elements` (
  `element_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(66) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'O',
  `depend_on_it` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`element_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_intervals`
--

DROP TABLE IF EXISTS `cscart_sales_reports_intervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_intervals` (
  `interval_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `value` int unsigned NOT NULL DEFAULT '0',
  `interval_code` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`interval_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_table_conditions`
--

DROP TABLE IF EXISTS `cscart_sales_reports_table_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_table_conditions` (
  `table_id` mediumint unsigned NOT NULL DEFAULT '0',
  `code` varchar(64) NOT NULL DEFAULT '0',
  `sub_element_id` varchar(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`code`,`sub_element_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_table_descriptions`
--

DROP TABLE IF EXISTS `cscart_sales_reports_table_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_table_descriptions` (
  `table_id` mediumint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`table_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_table_element_conditions`
--

DROP TABLE IF EXISTS `cscart_sales_reports_table_element_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_table_element_conditions` (
  `table_id` mediumint unsigned NOT NULL DEFAULT '0',
  `element_hash` varchar(32) NOT NULL DEFAULT '',
  `element_code` varchar(64) NOT NULL DEFAULT '',
  `ids` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`table_id`,`element_hash`,`ids`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_table_elements`
--

DROP TABLE IF EXISTS `cscart_sales_reports_table_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_table_elements` (
  `report_id` mediumint unsigned NOT NULL DEFAULT '0',
  `table_id` mediumint unsigned NOT NULL DEFAULT '0',
  `element_id` mediumint unsigned NOT NULL DEFAULT '0',
  `element_hash` int NOT NULL DEFAULT '0',
  `color` varchar(64) NOT NULL DEFAULT 'blueviolet',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `dependence` varchar(64) NOT NULL DEFAULT 'max_p',
  `limit_auto` mediumint unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`report_id`,`table_id`,`element_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sales_reports_tables`
--

DROP TABLE IF EXISTS `cscart_sales_reports_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sales_reports_tables` (
  `table_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `report_id` mediumint unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT 'T',
  `display` varchar(64) NOT NULL DEFAULT 'order_amount',
  `interval_id` mediumint unsigned NOT NULL DEFAULT '0',
  `auto` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sd_google_translate_api`
--

DROP TABLE IF EXISTS `cscart_sd_google_translate_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sd_google_translate_api` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity` varchar(32) NOT NULL,
  `entity_id` varchar(5) NOT NULL,
  `lang_from` varchar(2) NOT NULL,
  `langs_to` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sd_product_autocomplete`
--

DROP TABLE IF EXISTS `cscart_sd_product_autocomplete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sd_product_autocomplete` (
  `autocomplete_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` mediumint unsigned NOT NULL,
  `amount` mediumint unsigned NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `list_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `min_qty` smallint unsigned NOT NULL DEFAULT '0',
  `max_qty` smallint unsigned NOT NULL DEFAULT '0',
  `qty_step` smallint unsigned NOT NULL DEFAULT '0',
  `list_qty_count` smallint unsigned NOT NULL DEFAULT '0',
  `options_type` char(1) NOT NULL DEFAULT 'P',
  `exceptions_type` char(1) NOT NULL DEFAULT 'F',
  `tracking` char(1) NOT NULL DEFAULT 'B',
  `zero_price_action` char(1) NOT NULL DEFAULT 'R',
  `out_of_stock_actions` char(1) NOT NULL DEFAULT 'N',
  `product_code` varchar(32) NOT NULL DEFAULT '',
  `details_layout` varchar(50) NOT NULL DEFAULT '',
  `product` varchar(255) NOT NULL DEFAULT '',
  `search_words` text,
  `full_description` mediumtext,
  `short_description` mediumtext,
  `promo_text` mediumtext,
  PRIMARY KEY (`autocomplete_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1949 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_se_queue`
--

DROP TABLE IF EXISTS `cscart_se_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_se_queue` (
  `queue_id` mediumint NOT NULL AUTO_INCREMENT,
  `data` text,
  `action` varchar(32) NOT NULL DEFAULT '',
  `company_id` int NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT 'en',
  `started` int NOT NULL DEFAULT '0',
  `error_count` int NOT NULL DEFAULT '0',
  `status` enum('pending','processing') DEFAULT 'pending',
  PRIMARY KEY (`queue_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_se_settings`
--

DROP TABLE IF EXISTS `cscart_se_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_se_settings` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `company_id` int NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT 'en',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`company_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_seo_indexes`
--

DROP TABLE IF EXISTS `cscart_seo_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_seo_indexes` (
  `seo_index_id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `seo_index` varchar(1) NOT NULL DEFAULT 'Y',
  `status` varchar(1) NOT NULL DEFAULT 'A',
  `company_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`seo_index_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_seo_names`
--

DROP TABLE IF EXISTS `cscart_seo_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_seo_names` (
  `name` varchar(250) NOT NULL DEFAULT '',
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  `dispatch` varchar(64) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`object_id`,`type`,`dispatch`,`lang_code`,`company_id`),
  KEY `name` (`name`,`lang_code`),
  KEY `type` (`name`,`type`,`lang_code`),
  KEY `dispatch` (`dispatch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_seo_redirects`
--

DROP TABLE IF EXISTS `cscart_seo_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_seo_redirects` (
  `redirect_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL DEFAULT '',
  `dest` varchar(255) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 's',
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `ab__seo_filter_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`redirect_id`),
  KEY `src` (`src`,`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3118 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_seo_templates`
--

DROP TABLE IF EXISTS `cscart_seo_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_seo_templates` (
  `company_id` int NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `lang_code` varchar(2) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sessions`
--

DROP TABLE IF EXISTS `cscart_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sessions` (
  `session_id` varchar(64) NOT NULL DEFAULT '',
  `expiry` int unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session_id`),
  KEY `src` (`session_id`,`expiry`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_settings_descriptions`
--

DROP TABLE IF EXISTS `cscart_settings_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_settings_descriptions` (
  `object_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object_type` varchar(1) NOT NULL DEFAULT 'O',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `value` text,
  `tooltip` text,
  PRIMARY KEY (`object_id`,`object_type`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=8165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_settings_objects`
--

DROP TABLE IF EXISTS `cscart_settings_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_settings_objects` (
  `object_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `edition_type` set('NONE','ROOT','VENDOR','STOREFRONT','MVE:NONE','MVE:ROOT','MVE:STOREFRONT','ULT:NONE','ULT:ROOT','ULT:VENDOR','ULT:VENDORONLY','ULT:STOREFRONT') NOT NULL DEFAULT 'ROOT',
  `name` varchar(128) NOT NULL DEFAULT '',
  `section_id` int unsigned NOT NULL,
  `section_tab_id` int unsigned NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'I',
  `value` text,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `is_global` char(1) NOT NULL DEFAULT 'Y',
  `handler` varchar(128) NOT NULL DEFAULT '',
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `name` (`name`),
  KEY `is_global` (`is_global`),
  KEY `position` (`position`),
  KEY `section_id` (`section_id`,`section_tab_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_settings_sections`
--

DROP TABLE IF EXISTS `cscart_settings_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_settings_sections` (
  `section_id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL,
  `edition_type` set('NONE','ROOT','VENDOR','STOREFRONT','MVE:NONE','MVE:ROOT','MVE:STOREFRONT','ULT:NONE','ULT:ROOT','ULT:VENDOR','ULT:VENDORONLY','ULT:STOREFRONT') NOT NULL DEFAULT 'ROOT',
  `name` varchar(128) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `type` enum('CORE','ADDON','TAB','SEPARATE_TAB') NOT NULL DEFAULT 'CORE',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=741 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_settings_variants`
--

DROP TABLE IF EXISTS `cscart_settings_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_settings_variants` (
  `variant_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object_id` mediumint unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1372 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_settings_vendor_values`
--

DROP TABLE IF EXISTS `cscart_settings_vendor_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_settings_vendor_values` (
  `object_id` mediumint unsigned NOT NULL,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `value` text,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`company_id`,`storefront_id`),
  KEY `storefront_id` (`storefront_id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipment_items`
--

DROP TABLE IF EXISTS `cscart_shipment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipment_items` (
  `item_id` int unsigned NOT NULL,
  `shipment_id` mediumint unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`,`shipment_id`),
  KEY `shipment_id` (`shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipments`
--

DROP TABLE IF EXISTS `cscart_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipments` (
  `shipment_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_id` mediumint unsigned NOT NULL DEFAULT '0',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  `carrier` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `comments` mediumtext,
  `status` char(1) NOT NULL DEFAULT 'P',
  PRIMARY KEY (`shipment_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipping_descriptions`
--

DROP TABLE IF EXISTS `cscart_shipping_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipping_descriptions` (
  `shipping_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `shipping` varchar(255) NOT NULL DEFAULT '',
  `delivery_time` varchar(64) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`shipping_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipping_rates`
--

DROP TABLE IF EXISTS `cscart_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipping_rates` (
  `rate_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_id` mediumint unsigned NOT NULL DEFAULT '0',
  `destination_id` mediumint unsigned NOT NULL DEFAULT '0',
  `rate_value` text,
  `base_rate` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`rate_id`),
  UNIQUE KEY `shipping_rate` (`shipping_id`,`destination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7459 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipping_service_descriptions`
--

DROP TABLE IF EXISTS `cscart_shipping_service_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipping_service_descriptions` (
  `service_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`service_id`,`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=600 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipping_services`
--

DROP TABLE IF EXISTS `cscart_shipping_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipping_services` (
  `service_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `module` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(64) NOT NULL DEFAULT '',
  `sp_file` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`service_id`),
  KEY `sa` (`service_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=600 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shipping_time_descriptions`
--

DROP TABLE IF EXISTS `cscart_shipping_time_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shipping_time_descriptions` (
  `shipping_id` int unsigned NOT NULL DEFAULT '0',
  `destination_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `delivery_time` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_id`,`destination_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_shippings`
--

DROP TABLE IF EXISTS `cscart_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_shippings` (
  `shipping_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `destination` char(1) NOT NULL DEFAULT 'I',
  `min_weight` decimal(13,3) NOT NULL DEFAULT '0.000',
  `max_weight` decimal(13,3) NOT NULL DEFAULT '0.000',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `rate_calculation` char(1) NOT NULL DEFAULT 'M',
  `service_id` mediumint unsigned NOT NULL DEFAULT '0',
  `service_params` text,
  `localization` varchar(255) NOT NULL DEFAULT '',
  `tax_ids` varchar(255) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `free_shipping` char(1) NOT NULL DEFAULT 'N',
  `is_address_required` char(1) NOT NULL DEFAULT 'Y',
  `min_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `max_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `available_for_new_vendors` char(1) NOT NULL DEFAULT 'N',
  `cp_object_restr` text,
  `cp_use_days` char(1) NOT NULL DEFAULT 'N',
  UNIQUE KEY `shipping_id` (`shipping_id`),
  KEY `position` (`position`),
  KEY `localization` (`localization`),
  KEY `c_status` (`usergroup_ids`,`min_weight`,`max_weight`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sitemap_links`
--

DROP TABLE IF EXISTS `cscart_sitemap_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sitemap_links` (
  `link_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `link_href` varchar(255) NOT NULL DEFAULT '',
  `section_id` mediumint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `link_type` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sitemap_sections`
--

DROP TABLE IF EXISTS `cscart_sitemap_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sitemap_sections` (
  `section_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `section_type` varchar(255) NOT NULL DEFAULT '1',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sitemap_video_pages`
--

DROP TABLE IF EXISTS `cscart_sitemap_video_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sitemap_video_pages` (
  `page_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(1024) NOT NULL,
  `sitemap_video_videos` text NOT NULL,
  `status` varchar(1) NOT NULL,
  `company_id` int unsigned NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sitemap_video_videos`
--

DROP TABLE IF EXISTS `cscart_sitemap_video_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sitemap_video_videos` (
  `video_id` int unsigned NOT NULL AUTO_INCREMENT,
  `thumbnail_loc` varchar(1024) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `content_loc` varchar(1024) NOT NULL,
  `player_loc` varchar(1024) NOT NULL,
  `duration` varchar(1024) NOT NULL,
  `expiration_date` varchar(1024) NOT NULL,
  `rating` varchar(1024) NOT NULL,
  `view_count` varchar(1024) NOT NULL,
  `publication_date` varchar(1024) NOT NULL,
  `family_friendly` varchar(1024) NOT NULL DEFAULT 'yes',
  `restriction` varchar(1024) NOT NULL,
  `gallery_loc` varchar(1024) NOT NULL,
  `uploader` varchar(1024) NOT NULL,
  `uploader_url` varchar(1024) NOT NULL,
  `live` varchar(1024) NOT NULL DEFAULT 'no',
  `requires_subscription` varchar(1024) NOT NULL DEFAULT 'no',
  `status` varchar(1) NOT NULL,
  `company_id` int unsigned NOT NULL,
  `gallery_loc_title` varchar(1024) NOT NULL,
  `relationship` varchar(1024) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_state_descriptions`
--

DROP TABLE IF EXISTS `cscart_state_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_state_descriptions` (
  `state_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`state_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_states`
--

DROP TABLE IF EXISTS `cscart_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_states` (
  `state_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `cs` (`country_code`,`code`),
  KEY `code` (`code`),
  KEY `country_code` (`country_code`)
) ENGINE=MyISAM AUTO_INCREMENT=851 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_static_data`
--

DROP TABLE IF EXISTS `cscart_static_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_static_data` (
  `param_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `param` varchar(255) NOT NULL DEFAULT '',
  `param_2` varchar(255) NOT NULL DEFAULT '',
  `param_3` varchar(255) NOT NULL DEFAULT '',
  `param_4` varchar(255) NOT NULL DEFAULT '',
  `param_5` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(128) NOT NULL DEFAULT '',
  `section` char(1) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `position` smallint NOT NULL DEFAULT '0',
  `parent_id` mediumint unsigned NOT NULL DEFAULT '0',
  `id_path` varchar(255) NOT NULL DEFAULT '',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `ab__ut_mwi__status` char(1) NOT NULL DEFAULT 'N',
  `ab__ut_mwi__text_position` varchar(32) NOT NULL DEFAULT 'bottom',
  `ab__ut_mwi__dropdown` char(1) NOT NULL DEFAULT 'N',
  `ab__ut_mwi__label_color` varchar(10) DEFAULT NULL,
  `ab__ut_mwi__label_background` varchar(10) DEFAULT NULL,
  `ab__fn_menu_status` char(1) NOT NULL DEFAULT 'N',
  `ab__fn_label_color` char(7) NOT NULL DEFAULT '#ffffff',
  `ab__fn_label_background` char(7) NOT NULL DEFAULT '#333333',
  `ab__fn_use_origin_image` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mwi__status` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mwi__text_position` varchar(32) NOT NULL DEFAULT 'bottom',
  `abt__ut2_mwi__dropdown` char(1) NOT NULL DEFAULT 'N',
  `abt__ut2_mwi__label_color` varchar(11) NOT NULL DEFAULT '',
  `abt__ut2_mwi__label_background` varchar(11) NOT NULL DEFAULT '',
  `param_6` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`param_id`),
  KEY `section` (`section`,`status`,`localization`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_static_data_descriptions`
--

DROP TABLE IF EXISTS `cscart_static_data_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_static_data_descriptions` (
  `param_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `ab__ut_mwi__text` text,
  `ab__ut_mwi__label` varchar(100) DEFAULT NULL,
  `ab__fn_label_text` varchar(100) NOT NULL DEFAULT '',
  `ab__fn_label_show` char(1) NOT NULL DEFAULT 'Y',
  `abt__ut2_mwi__desc` mediumtext,
  `abt__ut2_mwi__text` mediumtext,
  `abt__ut2_mwi__label` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`param_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_status_data`
--

DROP TABLE IF EXISTS `cscart_status_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_status_data` (
  `status_id` mediumint unsigned NOT NULL,
  `param` char(255) NOT NULL DEFAULT '',
  `value` char(255) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`status_id`,`param`),
  KEY `inventory` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_status_descriptions`
--

DROP TABLE IF EXISTS `cscart_status_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_status_descriptions` (
  `status_id` mediumint unsigned NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `email_subj` varchar(255) NOT NULL DEFAULT '',
  `email_header` text,
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`status_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_statuses`
--

DROP TABLE IF EXISTS `cscart_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_statuses` (
  `status_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'O',
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status` (`status`,`type`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storage_data`
--

DROP TABLE IF EXISTS `cscart_storage_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storage_data` (
  `data_key` varchar(255) NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`data_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_store_location_descriptions`
--

DROP TABLE IF EXISTS `cscart_store_location_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_store_location_descriptions` (
  `store_location_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext,
  `city` varchar(60) NOT NULL DEFAULT '',
  `pickup_address` varchar(128) NOT NULL DEFAULT '',
  `pickup_phone` varchar(128) NOT NULL DEFAULT '',
  `pickup_time` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`store_location_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_store_location_destination_links`
--

DROP TABLE IF EXISTS `cscart_store_location_destination_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_store_location_destination_links` (
  `link_id` int unsigned NOT NULL AUTO_INCREMENT,
  `store_location_id` mediumint unsigned NOT NULL DEFAULT '0',
  `destination_id` mediumint unsigned NOT NULL DEFAULT '0',
  `warn_about_delay` tinyint unsigned NOT NULL DEFAULT '0',
  `position` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `idx_store_location_destination` (`store_location_id`,`destination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_store_location_shipping_delays`
--

DROP TABLE IF EXISTS `cscart_store_location_shipping_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_store_location_shipping_delays` (
  `store_location_id` mediumint unsigned NOT NULL DEFAULT '0',
  `destination_id` mediumint unsigned NOT NULL DEFAULT '0',
  `shipping_delay` varchar(256) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`store_location_id`,`destination_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_store_locations`
--

DROP TABLE IF EXISTS `cscart_store_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_store_locations` (
  `store_location_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `position` smallint NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `localization` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'A',
  `main_destination_id` int unsigned DEFAULT NULL,
  `pickup_destinations_ids` varchar(255) NOT NULL DEFAULT '0',
  `store_type` char(1) DEFAULT 'P',
  `shipping_destinations_ids` text NOT NULL,
  PRIMARY KEY (`store_location_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_stored_sessions`
--

DROP TABLE IF EXISTS `cscart_stored_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_stored_sessions` (
  `session_id` varchar(64) NOT NULL,
  `expiry` int unsigned NOT NULL,
  `data` mediumblob,
  PRIMARY KEY (`session_id`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts`
--

DROP TABLE IF EXISTS `cscart_storefronts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts` (
  `storefront_id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) NOT NULL DEFAULT '',
  `redirect_customer` char(1) NOT NULL DEFAULT 'N',
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `status` char(1) NOT NULL DEFAULT 'N',
  `access_key` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `theme_name` varchar(128) NOT NULL DEFAULT '',
  `is_accessible_for_authorized_customers_only` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`storefront_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_companies`
--

DROP TABLE IF EXISTS `cscart_storefronts_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_companies` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`company_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_countries`
--

DROP TABLE IF EXISTS `cscart_storefronts_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_countries` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `country_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`storefront_id`,`country_code`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_currencies`
--

DROP TABLE IF EXISTS `cscart_storefronts_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_currencies` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `currency_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`currency_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_languages`
--

DROP TABLE IF EXISTS `cscart_storefronts_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_languages` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `language_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`language_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_payments`
--

DROP TABLE IF EXISTS `cscart_storefronts_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_payments` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `payment_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`payment_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_products`
--

DROP TABLE IF EXISTS `cscart_storefronts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_products` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_promotions`
--

DROP TABLE IF EXISTS `cscart_storefronts_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_promotions` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `promotion_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`promotion_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_storefronts_shippings`
--

DROP TABLE IF EXISTS `cscart_storefronts_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_storefronts_shippings` (
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `shipping_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`storefront_id`,`shipping_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_subscribers`
--

DROP TABLE IF EXISTS `cscart_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_subscribers` (
  `subscriber_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_supplier_links`
--

DROP TABLE IF EXISTS `cscart_supplier_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_supplier_links` (
  `supplier_id` mediumint unsigned NOT NULL,
  `object_id` int unsigned NOT NULL,
  `object_type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`object_id`,`object_type`),
  KEY `object_id` (`object_id`,`object_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_suppliers`
--

DROP TABLE IF EXISTS `cscart_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_suppliers` (
  `supplier_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(64) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `zipcode` varchar(16) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`supplier_id`),
  KEY `company` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_sync_data_settings`
--

DROP TABLE IF EXISTS `cscart_sync_data_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_sync_data_settings` (
  `provider_id` varchar(128) NOT NULL DEFAULT '',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `settings_data` text NOT NULL,
  PRIMARY KEY (`provider_id`,`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_tag_links`
--

DROP TABLE IF EXISTS `cscart_tag_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_tag_links` (
  `tag_id` mediumint unsigned NOT NULL,
  `object_type` char(1) NOT NULL DEFAULT 'P',
  `object_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`object_type`,`object_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  KEY `ids` (`tag_id`,`object_type`,`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_tags`
--

DROP TABLE IF EXISTS `cscart_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_tags` (
  `tag_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'P',
  `ab__sft_conditions` mediumtext,
  `ab__sft_generate_by_cron` char(1) DEFAULT 'N',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag` (`tag`,`company_id`),
  KEY `ab__sft_generate_by_cron` (`ab__sft_generate_by_cron`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_tax_descriptions`
--

DROP TABLE IF EXISTS `cscart_tax_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_tax_descriptions` (
  `tax_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `tax` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_tax_rates`
--

DROP TABLE IF EXISTS `cscart_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_tax_rates` (
  `rate_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` mediumint unsigned NOT NULL DEFAULT '0',
  `destination_id` mediumint unsigned NOT NULL DEFAULT '0',
  `rate_value` decimal(13,3) NOT NULL DEFAULT '0.000',
  `rate_type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`rate_id`),
  UNIQUE KEY `tax_rate` (`tax_id`,`destination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_taxes`
--

DROP TABLE IF EXISTS `cscart_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_taxes` (
  `tax_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `address_type` char(1) NOT NULL DEFAULT 'S',
  `status` char(1) NOT NULL DEFAULT 'D',
  `price_includes_tax` char(1) NOT NULL DEFAULT 'N',
  `display_including_tax` char(1) NOT NULL DEFAULT 'N',
  `display_info` char(1) NOT NULL DEFAULT '',
  `regnumber` varchar(255) NOT NULL DEFAULT '',
  `priority` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_id`),
  KEY `c_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_documents`
--

DROP TABLE IF EXISTS `cscart_template_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_documents` (
  `document_id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` text,
  `default_template` text,
  `type` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(128) NOT NULL DEFAULT '',
  `addon` varchar(32) NOT NULL DEFAULT '',
  `updated` int unsigned NOT NULL DEFAULT '0',
  `created` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`document_id`),
  UNIQUE KEY `code` (`code`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_emails`
--

DROP TABLE IF EXISTS `cscart_template_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_emails` (
  `template_id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `area` char(1) NOT NULL DEFAULT 'C',
  `status` char(1) NOT NULL DEFAULT 'A',
  `subject` text,
  `template` text,
  `default_subject` text,
  `default_template` text,
  `params_schema` text,
  `params` text,
  `addon` varchar(32) NOT NULL DEFAULT '',
  `updated` int unsigned NOT NULL DEFAULT '0',
  `created` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template` (`code`,`area`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_internal_notifications`
--

DROP TABLE IF EXISTS `cscart_template_internal_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_internal_notifications` (
  `template_id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `area` char(1) NOT NULL DEFAULT 'C',
  `status` char(1) NOT NULL DEFAULT 'A',
  `subject` text,
  `template` text,
  `default_subject` text,
  `default_template` text,
  `params_schema` text,
  `params` text,
  `addon` varchar(32) NOT NULL DEFAULT '',
  `updated` int unsigned NOT NULL DEFAULT '0',
  `created` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template` (`code`,`area`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_snippet_descriptions`
--

DROP TABLE IF EXISTS `cscart_template_snippet_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_snippet_descriptions` (
  `snippet_id` int unsigned NOT NULL,
  `lang_code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`snippet_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_snippets`
--

DROP TABLE IF EXISTS `cscart_template_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_snippets` (
  `snippet_id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `template` text,
  `default_template` text,
  `status` char(1) NOT NULL DEFAULT '',
  `params` text,
  `handler` text,
  `addon` varchar(32) NOT NULL DEFAULT '',
  `updated` int unsigned NOT NULL DEFAULT '0',
  `created` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`snippet_id`),
  UNIQUE KEY `code` (`code`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_table_column_descriptions`
--

DROP TABLE IF EXISTS `cscart_template_table_column_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_table_column_descriptions` (
  `column_id` int unsigned NOT NULL,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`column_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_template_table_columns`
--

DROP TABLE IF EXISTS `cscart_template_table_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_template_table_columns` (
  `column_id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(128) DEFAULT NULL,
  `snippet_code` varchar(128) NOT NULL DEFAULT '',
  `snippet_type` varchar(32) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT '',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `template` text,
  `default_template` text,
  `addon` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`column_id`),
  KEY `snippet_idx` (`snippet_code`,`snippet_type`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_tilda_locations`
--

DROP TABLE IF EXISTS `cscart_tilda_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_tilda_locations` (
  `page_id` bigint unsigned NOT NULL DEFAULT '0',
  `inner_location_id` mediumint unsigned NOT NULL DEFAULT '0',
  `project_id` mediumint unsigned NOT NULL DEFAULT '0',
  `published` bigint unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(255) DEFAULT '',
  `description` mediumtext NOT NULL,
  `images` mediumtext NOT NULL,
  `js` mediumtext NOT NULL,
  `css` mediumtext NOT NULL,
  `errors` mediumtext NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'P',
  `is_only_content` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`inner_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_tilda_pages`
--

DROP TABLE IF EXISTS `cscart_tilda_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_tilda_pages` (
  `page_id` bigint unsigned NOT NULL DEFAULT '0',
  `inner_page_id` mediumint unsigned NOT NULL DEFAULT '0',
  `project_id` mediumint unsigned NOT NULL DEFAULT '0',
  `published` bigint unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(255) DEFAULT '',
  `description` mediumtext NOT NULL,
  `images` mediumtext NOT NULL,
  `js` mediumtext NOT NULL,
  `css` mediumtext NOT NULL,
  `errors` mediumtext NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'P',
  `is_only_content` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`inner_page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_user_data`
--

DROP TABLE IF EXISTS `cscart_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_user_data` (
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  `data` text,
  PRIMARY KEY (`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_user_last_passwords`
--

DROP TABLE IF EXISTS `cscart_user_last_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_user_last_passwords` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `last_password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_user_mailing_lists`
--

DROP TABLE IF EXISTS `cscart_user_mailing_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_user_mailing_lists` (
  `subscriber_id` mediumint unsigned NOT NULL,
  `list_id` mediumint unsigned NOT NULL,
  `activation_key` varchar(32) NOT NULL DEFAULT '',
  `unsubscribe_key` varchar(32) NOT NULL DEFAULT '',
  `confirmed` tinyint unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `subscriber_list` (`list_id`,`subscriber_id`),
  KEY `subscriber_id` (`subscriber_id`),
  KEY `list_id` (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_user_profiles`
--

DROP TABLE IF EXISTS `cscart_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_user_profiles` (
  `profile_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `profile_type` char(1) NOT NULL DEFAULT 'P',
  `b_firstname` varchar(128) NOT NULL DEFAULT '',
  `b_lastname` varchar(128) NOT NULL DEFAULT '',
  `b_address` varchar(255) NOT NULL DEFAULT '',
  `b_address_2` varchar(255) NOT NULL DEFAULT '',
  `b_city` varchar(64) NOT NULL DEFAULT '',
  `b_county` varchar(32) NOT NULL DEFAULT '',
  `b_state` varchar(32) NOT NULL DEFAULT '',
  `b_country` char(2) NOT NULL DEFAULT '',
  `b_zipcode` varchar(16) NOT NULL DEFAULT '',
  `b_phone` varchar(128) NOT NULL DEFAULT '',
  `s_firstname` varchar(128) NOT NULL DEFAULT '',
  `s_lastname` varchar(128) NOT NULL DEFAULT '',
  `s_address` varchar(255) NOT NULL DEFAULT '',
  `s_address_2` varchar(255) NOT NULL DEFAULT '',
  `s_city` varchar(64) NOT NULL DEFAULT '',
  `s_county` varchar(32) NOT NULL DEFAULT '',
  `s_state` varchar(32) NOT NULL DEFAULT '',
  `s_country` char(2) NOT NULL DEFAULT '',
  `s_zipcode` varchar(16) NOT NULL DEFAULT '',
  `s_phone` varchar(128) NOT NULL DEFAULT '',
  `s_address_type` varchar(255) NOT NULL DEFAULT '',
  `profile_name` varchar(32) NOT NULL DEFAULT '',
  `profile_update_timestamp` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`profile_id`),
  KEY `uid_p` (`user_id`,`profile_type`),
  KEY `profile_type` (`profile_type`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_user_session_products`
--

DROP TABLE IF EXISTS `cscart_user_session_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_user_session_products` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT 'C',
  `user_type` char(1) NOT NULL DEFAULT 'R',
  `item_id` int unsigned NOT NULL DEFAULT '0',
  `item_type` char(1) NOT NULL DEFAULT 'P',
  `product_id` mediumint unsigned NOT NULL DEFAULT '0',
  `amount` mediumint unsigned NOT NULL DEFAULT '1',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `extra` blob,
  `session_id` varchar(64) NOT NULL DEFAULT '',
  `ip_address` varbinary(40) NOT NULL DEFAULT '',
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `company_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`type`,`user_type`,`item_id`,`company_id`),
  KEY `timestamp` (`timestamp`,`user_type`),
  KEY `session_id` (`session_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_usergroup_descriptions`
--

DROP TABLE IF EXISTS `cscart_usergroup_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_usergroup_descriptions` (
  `usergroup_id` mediumint unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`usergroup_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_usergroup_links`
--

DROP TABLE IF EXISTS `cscart_usergroup_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_usergroup_links` (
  `link_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint unsigned NOT NULL,
  `usergroup_id` mediumint unsigned NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'D',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `user_id` (`user_id`,`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_usergroup_privileges`
--

DROP TABLE IF EXISTS `cscart_usergroup_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_usergroup_privileges` (
  `usergroup_id` mediumint unsigned NOT NULL DEFAULT '0',
  `privilege` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`usergroup_id`,`privilege`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_usergroups`
--

DROP TABLE IF EXISTS `cscart_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_usergroups` (
  `usergroup_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'C',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup_id`),
  KEY `c_status` (`usergroup_id`,`status`),
  KEY `status` (`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_users`
--

DROP TABLE IF EXISTS `cscart_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_users` (
  `user_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `user_type` char(1) NOT NULL DEFAULT 'C',
  `user_login` varchar(255) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `is_root` char(1) NOT NULL DEFAULT 'N',
  `company_id` int unsigned NOT NULL DEFAULT '0',
  `last_login` int unsigned NOT NULL DEFAULT '0',
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `firstname` varchar(128) NOT NULL DEFAULT '',
  `lastname` varchar(128) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `fax` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `tax_exempt` char(1) NOT NULL DEFAULT 'N',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `birthday` int NOT NULL DEFAULT '0',
  `purchase_timestamp_from` int NOT NULL DEFAULT '0',
  `purchase_timestamp_to` int NOT NULL DEFAULT '0',
  `responsible_email` varchar(80) NOT NULL DEFAULT '',
  `password_change_timestamp` int unsigned NOT NULL DEFAULT '0',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `janrain_identifier` varchar(32) NOT NULL DEFAULT '',
  `two_steps_auth_secret` char(16) DEFAULT '',
  `remember_data` text,
  `braintree_id` int NOT NULL DEFAULT '0',
  `last_activity` int unsigned NOT NULL DEFAULT '0',
  `helpdesk_user_id` int unsigned NOT NULL DEFAULT '0',
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `user_login` (`user_login`),
  KEY `uname` (`firstname`,`lastname`),
  KEY `idx_email` (`email`),
  KEY `idx_last_activity` (`last_activity`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_variant_data`
--

DROP TABLE IF EXISTS `cscart_variant_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_variant_data` (
  `item_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `variant_id` mediumint unsigned NOT NULL,
  `product_id` mediumint unsigned NOT NULL,
  `product_hash` char(100) NOT NULL DEFAULT '',
  `product_options` mediumtext NOT NULL,
  `product_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `product_amount` int unsigned NOT NULL,
  `free` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_categories_fee`
--

DROP TABLE IF EXISTS `cscart_vendor_categories_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_categories_fee` (
  `plan_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `percent_fee` decimal(12,2) unsigned DEFAULT NULL,
  UNIQUE KEY `plan_id` (`plan_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_communication_messages`
--

DROP TABLE IF EXISTS `cscart_vendor_communication_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_communication_messages` (
  `message_id` int unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int unsigned NOT NULL,
  `user_id` mediumint unsigned NOT NULL,
  `user_type` char(1) NOT NULL,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `message` text,
  PRIMARY KEY (`message_id`),
  KEY `idx_thread_id` (`thread_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_communications`
--

DROP TABLE IF EXISTS `cscart_vendor_communications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_communications` (
  `thread_id` int unsigned NOT NULL AUTO_INCREMENT,
  `storefront_id` int unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'N',
  `user_id` mediumint unsigned NOT NULL,
  `company_id` int unsigned NOT NULL,
  `object_id` int unsigned DEFAULT '0',
  `object_type` char(1) DEFAULT '',
  `created_at` int unsigned NOT NULL DEFAULT '0',
  `last_message` varchar(255) DEFAULT '',
  `last_message_user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `last_message_user_type` char(1) NOT NULL DEFAULT '',
  `last_updated` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `communication_type` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`thread_id`),
  KEY `idx_company_id` (`company_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_invitations`
--

DROP TABLE IF EXISTS `cscart_vendor_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_invitations` (
  `invitation_key` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `invited_at` int unsigned NOT NULL,
  PRIMARY KEY (`invitation_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_locations`
--

DROP TABLE IF EXISTS `cscart_vendor_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_locations` (
  `company_id` int NOT NULL DEFAULT '0',
  `place_id` varchar(512) NOT NULL DEFAULT '',
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `country` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(64) NOT NULL DEFAULT '',
  `locality` varchar(64) NOT NULL DEFAULT '',
  `route` varchar(255) NOT NULL DEFAULT '',
  `postal_code` varchar(16) NOT NULL DEFAULT '',
  `street_number` varchar(16) NOT NULL DEFAULT '',
  `formatted_address` text,
  PRIMARY KEY (`company_id`),
  KEY `locality_country_idx` (`locality`,`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_payouts`
--

DROP TABLE IF EXISTS `cscart_vendor_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_payouts` (
  `payout_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int unsigned NOT NULL,
  `order_id` mediumint unsigned NOT NULL DEFAULT '0',
  `payout_date` int unsigned NOT NULL DEFAULT '0',
  `start_date` int unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated',
  `end_date` int unsigned NOT NULL DEFAULT '0' COMMENT 'deprecated',
  `payout_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'payout_amount - for payouts and withdrawals',
  `order_amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'order amount - for order placement, changes and refunds',
  `payment_method` varchar(255) NOT NULL DEFAULT '' COMMENT 'deprecated',
  `comments` text,
  `payout_type` varchar(64) NOT NULL DEFAULT 'other' COMMENT 'affects income and balance calculations',
  `approval_status` char(1) NOT NULL DEFAULT 'P' COMMENT 'affects admin balance calculation',
  `plan_id` int unsigned DEFAULT NULL,
  `extra` mediumblob,
  `commission_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `commission` decimal(12,2) NOT NULL DEFAULT '0.00',
  `commission_type` char(1) NOT NULL DEFAULT 'A',
  `marketplace_profit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `details` text,
  `payment_company_id` int unsigned NOT NULL DEFAULT '0',
  `exclude_from_balance` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`payout_id`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_plan_descriptions`
--

DROP TABLE IF EXISTS `cscart_vendor_plan_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_plan_descriptions` (
  `plan_id` int unsigned NOT NULL DEFAULT '0',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `plan` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`plan_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_plans`
--

DROP TABLE IF EXISTS `cscart_vendor_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_plans` (
  `plan_id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` char(1) NOT NULL DEFAULT 'A',
  `position` smallint NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `periodicity` enum('month','year','onetime') DEFAULT NULL,
  `commission` decimal(12,2) NOT NULL DEFAULT '0.00',
  `fixed_commission` decimal(12,2) NOT NULL DEFAULT '0.00',
  `products_limit` int NOT NULL DEFAULT '0',
  `revenue_limit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `vendor_store` tinyint(1) NOT NULL DEFAULT '-1',
  `categories` text,
  `storefronts` text,
  `lowers_allowed_balance` text,
  `grace_period_to_refill_balance` text,
  `cp_sc_avail` char(1) NOT NULL DEFAULT 'N',
  `cp_allow_subscription` tinyint(1) NOT NULL DEFAULT '0',
  `usergroups` text,
  `cp_aa_tasks` char(1) NOT NULL DEFAULT 'N',
  `cp_ls_avail_syn` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`plan_id`),
  KEY `position` (`position`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_vendor_styles`
--

DROP TABLE IF EXISTS `cscart_vendor_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_vendor_styles` (
  `company_id` int unsigned NOT NULL COMMENT 'Company ID of the vendor who uses custom style',
  `layout_id` int unsigned NOT NULL COMMENT 'Layout of the theme',
  `style_id` varchar(64) NOT NULL COMMENT 'Style name',
  UNIQUE KEY `company_id_layout_id` (`company_id`,`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_views`
--

DROP TABLE IF EXISTS `cscart_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_views` (
  `view_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `object` varchar(24) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `params` text,
  `view_results` text,
  `user_id` mediumint unsigned NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT 'N',
  `is_default` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`view_id`),
  KEY `idx_user_id_object` (`user_id`,`object`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_warehouses_destination_products_amount`
--

DROP TABLE IF EXISTS `cscart_warehouses_destination_products_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_warehouses_destination_products_amount` (
  `destination_id` mediumint unsigned NOT NULL,
  `storefront_id` mediumint unsigned NOT NULL,
  `product_id` mediumint unsigned NOT NULL,
  `amount` mediumint NOT NULL,
  PRIMARY KEY (`product_id`,`destination_id`,`storefront_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_warehouses_products_amount`
--

DROP TABLE IF EXISTS `cscart_warehouses_products_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_warehouses_products_amount` (
  `warehouse_id` mediumint unsigned NOT NULL,
  `product_id` mediumint unsigned NOT NULL,
  `amount` mediumint NOT NULL,
  PRIMARY KEY (`product_id`,`warehouse_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_warehouses_sum_products_amount`
--

DROP TABLE IF EXISTS `cscart_warehouses_sum_products_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_warehouses_sum_products_amount` (
  `storefront_id` int NOT NULL,
  `product_id` mediumint unsigned NOT NULL,
  `amount` mediumint NOT NULL,
  PRIMARY KEY (`product_id`,`storefront_id`),
  KEY `idx_storefront_id` (`storefront_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wg_converter`
--

DROP TABLE IF EXISTS `cscart_wg_converter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wg_converter` (
  `st` char(1) NOT NULL DEFAULT 'A',
  `tm` int unsigned NOT NULL DEFAULT '1',
  `dm` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`dm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wg_es`
--

DROP TABLE IF EXISTS `cscart_wg_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wg_es` (
  `service_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(12,2) NOT NULL,
  `category_ids` varchar(255) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) NOT NULL DEFAULT '0',
  `usergroup_ids` varchar(255) NOT NULL DEFAULT '0',
  `shipping_ids` varchar(255) NOT NULL DEFAULT '0',
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wg_es_description`
--

DROP TABLE IF EXISTS `cscart_wg_es_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wg_es_description` (
  `service_id` mediumint NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `lang_code` char(2) NOT NULL,
  UNIQUE KEY `service_id` (`service_id`,`lang_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wg_extra_services`
--

DROP TABLE IF EXISTS `cscart_wg_extra_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wg_extra_services` (
  `st` char(1) NOT NULL DEFAULT 'A',
  `tm` int unsigned NOT NULL DEFAULT '1',
  `dm` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`dm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wg_storage_data`
--

DROP TABLE IF EXISTS `cscart_wg_storage_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wg_storage_data` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `st` mediumblob NOT NULL,
  `tm` mediumblob NOT NULL,
  `dm` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wk_user_registration`
--

DROP TABLE IF EXISTS `cscart_wk_user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wk_user_registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(999) CHARACTER SET utf8mb3 NOT NULL,
  `user_id` int NOT NULL,
  `password` varchar(999) CHARACTER SET utf8mb3 NOT NULL,
  `confirmation_code` varchar(20) CHARACTER SET utf8mb3 NOT NULL,
  `can_resend` char(1) NOT NULL DEFAULT 'Y',
  `resend_time` int NOT NULL,
  `expire_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_wk_vendor_registration`
--

DROP TABLE IF EXISTS `cscart_wk_vendor_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_wk_vendor_registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(999) CHARACTER SET utf8mb3 NOT NULL,
  `company_id` int NOT NULL,
  `confirmation_code` varchar(20) CHARACTER SET utf8mb3 NOT NULL,
  `can_resend` char(1) NOT NULL DEFAULT 'Y',
  `resend_time` int NOT NULL,
  `expire_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cscart_zapier_hooks`
--

DROP TABLE IF EXISTS `cscart_zapier_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cscart_zapier_hooks` (
  `hook_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `hook_url` varchar(255) DEFAULT '',
  `trigger_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`hook_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `devijen_postalcodes`
--

DROP TABLE IF EXISTS `devijen_postalcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devijen_postalcodes` (
  `countrycode` varchar(2) DEFAULT NULL,
  `postalcode` varchar(20) DEFAULT NULL,
  `placename` varchar(255) DEFAULT NULL,
  `admin1_state` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT '0',
  `longitude` float DEFAULT '0',
  `ID` int DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1690487237`
--

DROP TABLE IF EXISTS `phinxlog1690487237`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1690487237` (
  `version` bigint NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1691166590`
--

DROP TABLE IF EXISTS `phinxlog1691166590`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1691166590` (
  `version` bigint NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1691220694`
--

DROP TABLE IF EXISTS `phinxlog1691220694`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1691220694` (
  `version` bigint NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1695451823`
--

DROP TABLE IF EXISTS `phinxlog1695451823`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1695451823` (
  `version` bigint NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1695452014`
--

DROP TABLE IF EXISTS `phinxlog1695452014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1695452014` (
  `version` bigint NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1699090165`
--

DROP TABLE IF EXISTS `phinxlog1699090165`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1699090165` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1705137004`
--

DROP TABLE IF EXISTS `phinxlog1705137004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1705137004` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1705164188`
--

DROP TABLE IF EXISTS `phinxlog1705164188`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1705164188` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1706346967`
--

DROP TABLE IF EXISTS `phinxlog1706346967`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1706346967` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1718820093`
--

DROP TABLE IF EXISTS `phinxlog1718820093`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1718820093` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1718907058`
--

DROP TABLE IF EXISTS `phinxlog1718907058`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1718907058` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1718907110`
--

DROP TABLE IF EXISTS `phinxlog1718907110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1718907110` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1724523584`
--

DROP TABLE IF EXISTS `phinxlog1724523584`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1724523584` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1724690753`
--

DROP TABLE IF EXISTS `phinxlog1724690753`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1724690753` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1724690779`
--

DROP TABLE IF EXISTS `phinxlog1724690779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1724690779` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1724868107`
--

DROP TABLE IF EXISTS `phinxlog1724868107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1724868107` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1724868437`
--

DROP TABLE IF EXISTS `phinxlog1724868437`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1724868437` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1724868635`
--

DROP TABLE IF EXISTS `phinxlog1724868635`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1724868635` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1726302414`
--

DROP TABLE IF EXISTS `phinxlog1726302414`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1726302414` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1728130422`
--

DROP TABLE IF EXISTS `phinxlog1728130422`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1728130422` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1728130448`
--

DROP TABLE IF EXISTS `phinxlog1728130448`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1728130448` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phinxlog1729870128`
--

DROP TABLE IF EXISTS `phinxlog1729870128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog1729870128` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL,
  `first name` varchar(50) NOT NULL,
  `last name` varchar(50) NOT NULL,
  `age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 17:36:46
