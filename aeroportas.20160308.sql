-- MySQL dump 10.13  Distrib 5.1.73, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aeroportas
-- ------------------------------------------------------
-- Server version	5.1.73-1

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (2,2,'financeiro@a3eventos.com.br','a3  eventos','','rua  arace  133','','são paulo','03362050',30,464,'a:0:{}');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_address_simple_fields`
--

DROP TABLE IF EXISTS `oc_address_simple_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address_simple_fields` (
  `address_id` int(11) NOT NULL,
  `metadata` text,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address_simple_fields`
--

LOCK TABLES `oc_address_simple_fields` WRITE;
/*!40000 ALTER TABLE `oc_address_simple_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address_simple_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'iToLOEWB0e6AI61QTQGWFwHYrW281U0LwiBlLVzWRjRBxjyq7LZ7dug5jIJK8otx','','','2KQYAALEkBeZVjneeek6uGyyURSu6Vex0JXjrCZKw1jKv7Uq3JnS3z8G6xTqyZHKqfWGRcfm0EhSEr3OLNjB35BubqNAh0n4YPOBtOecwoWyOzUKUnWHxY5wz79sJpAB9W8TEYVqklErRUodWaCliOsLElnwn1Qgc0k9Q5EQR6p7MN0KQllcMcX7MmJO9aYYxsFBV0pOznHlAd5NDJBqsD4GMAiDOWZnB6bbSHIjRsclpG1orFUSGBUnEwzPUpSQ',1,'2014-12-02 11:31:26','2014-12-02 11:31:26'),(2,'6GLMpXsRtu7nOcuOwMbicN2j1NYtEZ0Brgi30wYUF3qxfFQQtEfMzEOiYxxzhdC8','','','0zTcZDbQy4wzKkKJDx6rjw8aTPkyXZmyW9b4UN1E4xPuL7a5uZvFqXFKljuokNkgOC6OnPpuYjFhkMEkz37VL0jwRwRXL44Gf7yaUJzSPMTMWUFGQPgdDLbRT0L9JdmjIvEeX5Xtds4tgUefFecdSZpntxdce4r3JarbykTBFG2JCMPvSkwW5eR2gnIyMNJGh8rPmHlMDXOb67Y51jdH4cRArUKCRZ9MSYE6ygRQZf6lNj46yahuRTn9O4jIucMJ',1,'2014-12-08 10:26:17','2014-12-08 10:26:17'),(3,'1GbOxanTqHWXgwTxvfrXX4RezEO7GjSIofq2beHf6lz2JbfUeGYs7KMWBuIIoa6W','','','TRy376eEFdKtnekOFE7Zay9mGx5qFoc70byRWvsAFsY8A4hgjZYevypPCOjlYP05Q7qDn7zU8VdkPrWL5Hr78MNP1CG4jOGRi1bMwhyAtVbjW1ENJN3wD7nmiOfkmkP9sJDsxepFWsS6VZomPp69BG5XHwxniTQFuxilryYg1cApNUGZNf3j0mGfjs6DVaJjpz52dfAUPjlw7majEtrgieIA3B81C44ZcNLgHkegfEEQjRmGxTX1JvD3Fr2Bkvin',1,'2014-12-18 10:06:22','2014-12-18 10:06:22'),(4,'FirDBcAWQDtTaFOVluVbWvZDzWRLjPTQroTSyRps8XLgynOKZRnmVBvVtGaUJO9B','','','rmTZ89r6EiBljDl1kqTprKdfAt6VGFEoEcpYgjGChmNisVWaJ7WlaLjhoO0PazfKyLZQaB3BXixYNge1EHxYhEDcqlGBHaTh5vgAtVD1kWvGGj9LXJkEAz3PF0upL4fxaOAmYikkKDFrWe2XEDvn1dH418wLnRE5Sk1HbmeMImxJARHcHzTDG9sbA8KkcfB6hxGd0jwpdD2eA7uYieOWrXq1h061pmUyK3ssnZbBLWUrYeuNWBhhqoCJblEAOlBj',1,'2014-12-23 00:13:52','2014-12-23 00:13:52'),(5,'4a7v33lK036IkYjYe0jKXPiLkDlo9OTR4PvSMEkaLL02thIXLljIWWs3nRqzzTEr','','','R67r2I6j4VHfPiFOPP69sWQcCXJ3BRM9Cff95DpkAXvAJcZ8quqrcNK4zW9zlGsKK7bIV1wddSxXZOGkfIxSj7dP8MMnjylNpRuKJhPOUFMmD2LEqYSvDkIbf5xU3Z1IidbETFG2iu8uEYnaPgKG5ELgahu3l1e5xhe11gVYJRHudxcoMgZUJbkdrAFUqMflad5fxz6wHromOEovfZCZvqXSWWynIZ3JbStCFA5Cc9iXXNOuMKBXvxiAYk3z8eoj',1,'2015-01-06 11:13:41','2015-01-06 11:13:41'),(6,'sm2ioH4le5teh4gaIKJn91gb2gx0iqeRSWz6euh9pRdNLAnTLx6Lodnh9aXiG10Z','','','OqVta3tFLNSWN6qZtnlYGP5GpTowKeLZLhIla1qlE98S5psoSUDZj8fORKBcpN10uAbL2Ix7IwPDb8suSvK1uqGC0IfgVXWFXyRP7ENF0dIRb1CunMmX2sat15PMSmSqbj6YnJdemmvDdyxHAZe3I4m902MIeey5DuTr3xLfZ7j3vXAwwfq5aT5QLHZpmNlq85X1tjXJg6CSUDFGjvC9E7QPFp5r3hX1cvtMUGV1DYKXbPeBBgAFeRVk6RRzzprS',1,'2016-01-26 16:07:59','2016-01-26 16:07:59');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (4,4,'Attributes 5'),(5,4,'Attributes 1'),(6,4,'black'),(7,4,'Attributes 3'),(8,4,'Attributes 4'),(9,4,'Attributes 2'),(10,4,'Attributes 6'),(11,4,'Attributes 2'),(1,4,'Mauris a dapibus'),(2,4,'Etiam eu volutpat'),(3,4,' Quisque nec');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,4,'Phasellus'),(5,4,' Etiam eu volutpat'),(4,4,'Mauris a dapibus'),(6,4,'Lorem ipsum');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (11,'Parralax-2',1),(10,'Parralax-1',1),(15,'Slideshow',1),(14,'banners',1),(16,'Banners_bottom',0),(17,'Portas Pivotantes',1),(18,'Portas Camarão',1),(19,'Portas de correr',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (242,14,'index.php?route=product/product&amp;product_id=28','',3),(241,14,'index.php?route=product/product&amp;product_id=42','',2),(132,10,'','catalog/parallax-1.jpg',0),(172,11,'','',1),(247,15,'http://aeroportas.com.br/index.php?route=product/category&amp;path=101','catalog/camarao_1270x539.jpg',2),(248,15,'http://aeroportas.com.br/index.php?route=product/category&amp;path=103','catalog/correr_1270x539.jpg',3),(246,15,'http://aeroportas.com.br/index.php?route=product/category&amp;path=102','catalog/pivotantes_1270x539.jpg',1),(240,14,'index.php?route=product/product&amp;product_id=43','catalog/banners/Banners_Aeroportas_1.jpg',1),(243,17,'http://aeroportas.com.br/index.php?route=product/category&amp;path=102','catalog/pivotantes_1270x539.jpg',1),(244,18,'http://aeroportas.com.br/index.php?route=product/category&amp;path=101','catalog/camarao_1270x539.jpg',2),(245,19,'http://aeroportas.com.br/index.php?route=product/category&amp;path=103','catalog/correr_1270x539.jpg',3);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (172,4,11,'parallax-2','&lt;h4&gt;Complete your style&lt;/h4&gt;\r\n&lt;h2&gt;with our&lt;/h2&gt;\r\n&lt;h1&gt;watches&lt;/h1&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.&lt;/p&gt;\r\n&lt;a href=\\&quot;index.php?route=product/product&amp;product_id=30\\&quot;&gt;Shop now!&lt;/a&gt;'),(99,4,9,'slide-1',''),(100,4,9,'slide-2',''),(101,4,9,'slide-3',''),(132,4,10,'parallax-1',''),(240,4,14,'banner-1',''),(241,4,14,'banner-2',''),(242,4,14,'banner-3',''),(243,4,17,'Portas Pivotantes',''),(244,4,18,'Portas Camarão',''),(245,4,19,'Portas de correr',''),(248,4,15,'Banner Porta Correr',''),(247,4,15,'Banner Porta Camarão',''),(246,4,15,'Banner Porta Pivotante','');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (73,'',44,1,1,0,1,'2016-02-25 10:44:15','2016-02-25 10:44:15'),(54,'',45,1,1,0,1,'2016-01-27 16:43:09','2016-02-24 01:13:50'),(75,'',44,1,1,0,1,'2016-02-25 10:45:43','2016-02-25 10:45:43'),(74,'',44,1,1,0,1,'2016-02-25 10:45:05','2016-02-25 10:45:05'),(97,'',0,1,1,1,1,'2016-03-02 20:48:01','2016-03-02 20:48:01'),(60,'',45,0,1,0,1,'2016-01-27 16:44:23','2016-01-27 16:44:23'),(76,'',44,1,1,0,1,'2016-02-25 10:47:00','2016-02-25 10:47:00'),(50,'',0,1,1,4,1,'2016-01-27 15:47:43','2016-03-04 01:31:47'),(51,'',45,0,1,0,1,'2016-01-27 16:42:19','2016-02-23 01:02:36'),(78,'',0,1,1,5,1,'2016-03-02 12:44:50','2016-03-04 01:32:14'),(53,'',45,0,1,0,1,'2016-01-27 16:42:54','2016-02-24 00:59:47'),(49,'',0,1,1,7,1,'2016-01-27 15:47:31','2016-03-04 01:32:46'),(72,'',44,1,1,0,1,'2016-02-25 10:43:09','2016-02-25 10:43:09'),(47,'',0,1,1,3,1,'2016-01-27 15:46:52','2016-03-04 01:30:33'),(46,'',0,1,1,7,1,'2016-01-27 15:46:33','2016-03-04 09:37:40'),(45,'',0,0,1,0,0,'2016-01-27 15:46:19','2016-03-02 20:47:00'),(44,'',0,1,1,0,0,'2016-01-27 15:45:56','2016-03-02 20:47:29'),(65,'',49,0,1,1,1,'2016-02-17 23:48:55','2016-03-02 23:54:33'),(66,'',44,1,1,0,1,'2016-02-18 01:28:20','2016-02-25 10:42:14'),(71,'',49,1,1,2,1,'2016-02-24 17:50:26','2016-03-02 23:55:10'),(83,'',49,1,1,3,1,'2016-03-02 20:27:41','2016-03-02 23:55:27'),(70,'',45,1,1,0,1,'2016-02-21 18:56:15','2016-02-24 00:59:10'),(79,'',0,1,1,6,1,'2016-03-02 12:45:33','2016-03-04 01:31:04'),(80,'',46,1,1,3,1,'2016-03-02 20:23:07','2016-03-04 01:26:42'),(81,'',46,1,1,4,1,'2016-03-02 20:24:28','2016-03-04 01:27:12'),(82,'',46,1,1,5,1,'2016-03-02 20:25:56','2016-03-04 01:28:15'),(84,'',79,1,1,1,1,'2016-03-02 20:29:55','2016-03-02 23:51:48'),(85,'',79,1,1,2,1,'2016-03-02 20:31:37','2016-03-02 23:52:03'),(86,'',79,1,1,3,1,'2016-03-02 20:32:19','2016-03-02 23:53:04'),(87,'',79,1,1,4,1,'2016-03-02 20:32:58','2016-03-02 23:53:21'),(88,'',79,1,1,5,1,'2016-03-02 20:33:36','2016-03-02 23:52:45'),(89,'',78,1,1,1,1,'2016-03-02 20:36:41','2016-03-02 23:53:58'),(90,'',78,1,1,2,1,'2016-03-02 20:37:33','2016-03-02 23:54:10'),(91,'',50,1,1,1,1,'2016-03-02 20:39:05','2016-03-02 23:58:18'),(92,'',50,1,1,2,1,'2016-03-02 20:40:06','2016-03-02 23:58:29'),(93,'',47,1,1,4,1,'2016-03-02 20:43:50','2016-03-02 23:57:41'),(94,'',47,1,1,3,1,'2016-03-02 20:44:56','2016-03-02 23:57:27'),(95,'',47,1,1,2,1,'2016-03-02 20:45:37','2016-03-02 23:57:09'),(96,'',47,1,1,1,1,'2016-03-02 20:46:19','2016-03-02 23:56:53'),(98,'',97,1,1,1,1,'2016-03-02 20:48:54','2016-03-03 00:02:10'),(99,'',97,1,1,2,1,'2016-03-02 20:49:46','2016-03-02 23:59:34'),(101,'',97,1,1,3,1,'2016-03-02 20:50:36','2016-03-03 00:00:42'),(102,'',97,1,1,4,1,'2016-03-02 20:51:15','2016-03-02 23:58:58'),(103,'',97,1,1,5,1,'2016-03-02 20:51:50','2016-03-02 23:59:16'),(104,'',97,1,1,6,1,'2016-03-02 20:52:20','2016-03-03 00:01:18'),(105,'',97,1,1,7,1,'2016-03-02 20:52:49','2016-03-03 00:00:59'),(106,'',0,1,1,8,1,'2016-03-04 00:50:22','2016-03-04 00:59:49'),(107,'',46,0,1,1,1,'2016-03-04 01:24:03','2016-03-04 01:24:03'),(108,'',46,0,1,2,1,'2016-03-04 01:26:14','2016-03-04 01:26:14');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (44,4,'Portas Internas','&lt;p&gt;Portas Internas&lt;br&gt;&lt;/p&gt;','Portas Internas','',''),(46,4,'Outros','&lt;p&gt;Batentes&lt;br&gt;&lt;/p&gt;','outros','',''),(47,4,'Janelas','&lt;p&gt;Janelas&lt;br&gt;&lt;/p&gt;','Janelas','',''),(72,4,'Portas de correr','&lt;p&gt;Portas de correr&lt;/p&gt;','Portas de correr','',''),(49,4,'Ferragens','&lt;p&gt;Ferragens&lt;br&gt;&lt;/p&gt;','Ferragens','',''),(51,4,'Portas Montadas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Portas Camarão','',''),(83,4,'Dobradiças','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Dobradiças','',''),(53,4,'Portas de Correr','','Portas de Correr','',''),(54,4,'Portas Pivotante','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Portas Pivotante','',''),(71,4,'Trilhos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Trilhos','',''),(74,4,'Porta balcão','&lt;p&gt;Porta balcão&lt;/p&gt;','Porta Balcão','',''),(75,4,'Porta pivotante','&lt;p&gt;Porta pivotante&lt;/p&gt;','Porta pivotante','',''),(76,4,'Portas montadas','&lt;p&gt;Portas Montadas&lt;/p&gt;','Portas Montadas','',''),(80,4,'Batentes','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Batentes','',''),(60,4,'Portas Balcão','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Portas Balcão','',''),(81,4,'Guarnições','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Guarnições','',''),(82,4,'Rodapé','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Rodape','',''),(78,4,'Fechaduras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','fachaduras','',''),(79,4,'Pisos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','pisos','',''),(65,4,'Roldanas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Roldanas','',''),(66,4,'Portas de abrir','&lt;p&gt;Estruturado&lt;/p&gt;','Portas de Abrir','',''),(50,4,'Puxadores','&lt;p&gt;Puxadores&lt;br&gt;&lt;/p&gt;','Puxadores','',''),(73,4,'Portas camarão','&lt;p&gt;Portas camarão&lt;/p&gt;','Portas camarão','',''),(70,4,'Portas Abrir','','Porta de Abrir','',''),(45,4,'Portas Externas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Portas','',''),(84,4,'Estruturado','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Estruturado','',''),(85,4,'Engenheirado','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Engenheirado','',''),(86,4,'Maciço','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Maciço','',''),(87,4,'Vinílico','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Vinilico','',''),(88,4,'Laminado','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Laminado','',''),(89,4,'Fechaduras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Fechaduras','',''),(90,4,'Travas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Travas','',''),(91,4,'Inox','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Inox','',''),(92,4,'Alumínio','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Aluminio','',''),(93,4,'Capelas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Capelas','',''),(94,4,'Max Ar','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Mar Ar','',''),(95,4,'Vitros','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Vitros','',''),(96,4,'Veneziana','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Veneziana','',''),(97,4,'Portas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Portas','',''),(98,4,'Comum Externa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comum Externa','',''),(99,4,'Comum Interna','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Comum Interna','',''),(106,4,'Promoções','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','promocoes','',''),(101,4,'Camarão','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Camarao','',''),(102,4,'Pivotante','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Pivotante','',''),(103,4,'Correr','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Correr','',''),(104,4,'Articulada','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Articulada','',''),(105,4,'Balcão','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Balcao','',''),(107,4,'Esquadrias com vidro','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Esquadrias com vidro','',''),(108,4,'Esquadrias de alumínio','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Esquadrias de aluminio','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (60,60,1),(75,75,1),(60,45,0),(65,65,1),(79,79,0),(76,44,0),(80,80,1),(65,49,0),(74,74,1),(81,81,1),(51,45,0),(54,54,1),(54,45,0),(53,53,1),(82,46,0),(85,85,1),(53,45,0),(80,46,0),(51,51,1),(83,49,0),(50,50,0),(81,46,0),(49,49,0),(72,44,0),(47,47,0),(46,46,0),(45,45,0),(44,44,0),(82,82,1),(84,79,0),(83,83,1),(78,78,0),(76,76,1),(85,79,0),(84,84,1),(75,44,0),(86,79,0),(66,44,0),(66,66,1),(71,71,1),(71,49,0),(73,44,0),(72,72,1),(74,44,0),(73,73,1),(70,45,0),(70,70,1),(86,86,1),(87,79,0),(87,87,1),(88,79,0),(88,88,1),(89,78,0),(89,89,1),(90,78,0),(90,90,1),(91,50,0),(91,91,1),(92,50,0),(92,92,1),(93,47,0),(93,93,1),(94,47,0),(94,94,1),(95,47,0),(95,95,1),(96,47,0),(96,96,1),(97,97,0),(98,97,0),(98,98,1),(99,97,0),(99,99,1),(107,46,0),(106,106,0),(101,97,0),(101,101,1),(102,97,0),(102,102,1),(103,97,0),(103,103,1),(104,97,0),(104,104,1),(105,97,0),(105,105,1),(107,107,1),(108,46,0),(108,108,1);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (83,0,0),(54,0,0),(53,0,0),(85,0,0),(50,0,0),(82,0,0),(60,0,0),(76,0,0),(79,0,0),(75,0,0),(80,0,0),(81,0,0),(51,0,0),(49,0,0),(72,0,0),(47,0,0),(46,0,0),(45,0,0),(44,0,0),(78,0,0),(84,0,0),(65,0,0),(66,0,0),(71,0,0),(73,0,0),(74,0,0),(70,0,0),(86,0,0),(87,0,0),(88,0,0),(89,0,0),(90,0,0),(91,0,0),(92,0,0),(93,0,0),(94,0,0),(95,0,0),(96,0,0),(97,0,0),(98,0,0),(99,0,0),(106,0,0),(101,0,0),(102,0,0),(103,0,0),(104,0,0),(105,0,0),(107,0,0),(108,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (44,0),(45,0),(46,0),(47,0),(49,0),(50,0),(51,0),(53,0),(54,0),(60,0),(65,0),(66,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P','10.0000',0,0,'0.0000','2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P','0.0000',0,1,'100.0000','2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F','10.0000',0,0,'10.0000','2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (4,'Real','BRL','R$ ','','2',1.00000000,1,'2016-03-08 19:02:13');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
INSERT INTO `oc_custom_field` VALUES (1,'select','','account',1,5);
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
INSERT INTO `oc_custom_field_customer_group` VALUES (1,1,1);
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
INSERT INTO `oc_custom_field_description` VALUES (1,4,'Loja');
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
INSERT INTO `oc_custom_field_value` VALUES (1,1,50),(2,1,10),(3,1,40),(4,1,20),(5,1,30);
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
INSERT INTO `oc_custom_field_value_description` VALUES (1,4,1,'AV. DOS BANDEIRANTES, 4265/85'),(2,4,1,'RUA DO GASÔMETRO, 360'),(3,4,1,'AV. SALGADO FILHO, 1772'),(4,4,1,'RUA DO GASÔMETRO, 326'),(5,4,1,'RUA DO GASÔMETRO, 218');
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (2,1,0,'financeiro@a3eventos.com.br','a3  eventos','financeiro@a3eventos.com.br','11  23861755','','def334a42e04597f59f2201fd059a46ccb899bc3','5dd97a9bc','a:3:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE5NTt9\";i:21;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjIwODt9\";i:3;s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjIwMzt9\";i:3;}','a:1:{i:0;i:195;}',1,2,'a:0:{}','186.220.198.132',1,1,0,'','2016-03-04 14:42:27');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` VALUES (1,1,'register','a:2:{s:11:\"customer_id\";i:1;s:4:\"name\";s:9:\"Demo Demo\";}','192.168.9.1','2014-12-04 15:09:05'),(2,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";s:8:\"order_id\";i:1;}','192.168.9.1','2014-12-04 15:34:48'),(3,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";}','192.168.9.1','2014-12-09 10:05:49'),(4,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";}','192.168.9.1','2014-12-10 18:09:05'),(5,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";}','192.168.9.1','2014-12-11 14:55:12'),(6,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";s:8:\"order_id\";i:2;}','192.168.9.1','2014-12-11 15:12:53'),(7,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";}','::1','2014-12-18 14:07:55'),(8,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";}','::1','2014-12-23 00:30:34'),(9,1,'login','a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";}','192.168.9.1','2015-01-14 15:39:30'),(10,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Demo Demo\";s:8:\"order_id\";i:5;}','192.168.9.1','2015-01-14 15:40:14'),(11,0,'order_guest','a:2:{s:4:\"name\";s:15:\"wrwqrwq rqwrwqr\";s:8:\"order_id\";i:6;}','191.39.32.99','2016-02-18 14:37:09'),(12,0,'order_guest','a:2:{s:4:\"name\";s:7:\"wagner \";s:8:\"order_id\";i:7;}','200.162.139.194','2016-02-26 10:43:07'),(13,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Elisio \";s:8:\"order_id\";i:8;}','187.121.102.219','2016-03-04 00:12:55'),(14,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Fernando Mendes (TESTE) \";s:8:\"order_id\";i:9;}','189.29.132.82','2016-03-04 01:22:55'),(15,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Fernando Mendes (TESTE) \";s:8:\"order_id\";i:10;}','189.29.132.82','2016-03-04 01:26:09'),(16,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Fernando Mendes (TESTE) \";s:8:\"order_id\";i:11;}','189.29.132.82','2016-03-04 01:28:00'),(17,0,'order_guest','a:2:{s:4:\"name\";s:23:\"Carla Suelen Marcelino \";s:8:\"order_id\";i:12;}','187.60.208.168','2016-03-04 09:36:35'),(18,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Wagner \";s:8:\"order_id\";i:13;}','177.189.210.14','2016-03-04 10:07:14'),(19,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Denise \";s:8:\"order_id\";i:14;}','187.57.218.126','2016-03-04 10:19:09'),(20,0,'order_guest','a:2:{s:4:\"name\";s:15:\"Flavia Hibrain \";s:8:\"order_id\";i:15;}','189.62.236.127','2016-03-04 10:43:04'),(21,0,'order_guest','a:2:{s:4:\"name\";s:8:\"Jessica \";s:8:\"order_id\";i:16;}','186.231.143.37','2016-03-04 11:03:43'),(22,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Wsgner \";s:8:\"order_id\";i:17;}','189.64.199.240','2016-03-04 12:11:40'),(23,0,'order_guest','a:2:{s:4:\"name\";s:8:\"Neliane \";s:8:\"order_id\";i:18;}','187.22.215.163','2016-03-04 14:12:35'),(24,2,'register','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:39:\"financeiro@a3eventos.com.br a3  eventos\";}','186.220.198.132','2016-03-04 14:42:27'),(25,0,'order_guest','a:2:{s:4:\"name\";s:18:\"Juliana Bertaglia \";s:8:\"order_id\";i:20;}','179.34.253.186','2016-03-04 14:47:37'),(26,2,'order_account','a:3:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:39:\"financeiro@a3eventos.com.br a3  eventos\";s:8:\"order_id\";i:19;}','186.220.198.132','2016-03-04 14:47:41'),(27,0,'order_guest','a:2:{s:4:\"name\";s:18:\"Juliana Bertaglia \";s:8:\"order_id\";i:21;}','179.34.253.186','2016-03-04 14:48:33'),(28,0,'order_guest','a:2:{s:4:\"name\";s:18:\"Juliana Bertaglia \";s:8:\"order_id\";i:22;}','179.34.253.186','2016-03-04 14:49:05'),(29,0,'order_guest','a:2:{s:4:\"name\";s:18:\"Juliana Bertaglia \";s:8:\"order_id\";i:23;}','179.34.253.186','2016-03-04 14:51:08'),(30,0,'order_guest','a:2:{s:4:\"name\";s:18:\"Juliana Bertaglia \";s:8:\"order_id\";i:24;}','179.34.253.186','2016-03-04 14:51:39'),(31,0,'order_guest','a:2:{s:4:\"name\";s:7:\"felipe \";s:8:\"order_id\";i:25;}','177.141.74.219','2016-03-04 16:52:58'),(32,0,'order_guest','a:2:{s:4:\"name\";s:6:\"cosmo \";s:8:\"order_id\";i:26;}','179.35.161.10','2016-03-04 17:45:45'),(33,0,'order_guest','a:2:{s:4:\"name\";s:10:\"cristiane \";s:8:\"order_id\";i:27;}','179.209.96.118','2016-03-04 17:50:56'),(34,0,'order_guest','a:2:{s:4:\"name\";s:17:\"Jessica Carvalho \";s:8:\"order_id\";i:28;}','200.202.193.1','2016-03-04 19:53:57'),(35,0,'order_guest','a:2:{s:4:\"name\";s:17:\"Agamenon Canazzi \";s:8:\"order_id\";i:29;}','201.52.63.5','2016-03-04 20:03:13'),(36,0,'order_guest','a:2:{s:4:\"name\";s:6:\"Bruna \";s:8:\"order_id\";i:30;}','191.188.97.11','2016-03-04 22:18:36'),(37,0,'order_guest','a:2:{s:4:\"name\";s:13:\"Carlos Souza \";s:8:\"order_id\";i:31;}','66.102.8.244','2016-03-04 22:45:35'),(38,0,'order_guest','a:2:{s:4:\"name\";s:13:\"Carlos Souza \";s:8:\"order_id\";i:32;}','66.102.8.239','2016-03-04 22:47:38'),(39,0,'order_guest','a:2:{s:4:\"name\";s:9:\"MICHELLE \";s:8:\"order_id\";i:33;}','191.180.84.116','2016-03-05 09:59:24'),(40,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Marcio \";s:8:\"order_id\";i:34;}','189.18.255.125','2016-03-05 14:14:10'),(41,0,'order_guest','a:2:{s:4:\"name\";s:9:\"fernando \";s:8:\"order_id\";i:35;}','187.56.37.29','2016-03-05 15:20:29'),(42,0,'order_guest','a:2:{s:4:\"name\";s:16:\"Luciana Almeida \";s:8:\"order_id\";i:36;}','187.22.183.190','2016-03-05 19:27:20'),(43,0,'order_guest','a:2:{s:4:\"name\";s:9:\"mauricio \";s:8:\"order_id\";i:37;}','179.98.133.195','2016-03-05 21:09:26'),(44,0,'order_guest','a:2:{s:4:\"name\";s:16:\"José Fernandes \";s:8:\"order_id\";i:38;}','187.36.98.88','2016-03-05 23:09:33'),(45,0,'order_guest','a:2:{s:4:\"name\";s:17:\"Fabiana Siqueira \";s:8:\"order_id\";i:39;}','201.33.121.90','2016-03-05 23:54:54'),(46,0,'order_guest','a:2:{s:4:\"name\";s:9:\"Cristina \";s:8:\"order_id\";i:40;}','186.220.185.104','2016-03-06 00:07:41'),(47,0,'order_guest','a:2:{s:4:\"name\";s:9:\"Cristina \";s:8:\"order_id\";i:41;}','186.220.185.104','2016-03-06 00:09:57'),(48,0,'order_guest','a:2:{s:4:\"name\";s:10:\"Crisciana \";s:8:\"order_id\";i:42;}','177.194.28.94','2016-03-06 01:58:19'),(49,0,'order_guest','a:2:{s:4:\"name\";s:9:\"andressa \";s:8:\"order_id\";i:43;}','177.94.70.246','2016-03-06 12:20:10'),(50,0,'order_guest','a:2:{s:4:\"name\";s:8:\"jeilson \";s:8:\"order_id\";i:44;}','179.185.189.2','2016-03-06 13:33:32'),(51,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Rogério Palma Silveira \";s:8:\"order_id\";i:45;}','187.3.212.145','2016-03-06 16:30:02'),(52,0,'order_guest','a:2:{s:4:\"name\";s:28:\"Tatiane Guimarães do carmo \";s:8:\"order_id\";i:46;}','189.19.153.88','2016-03-06 17:50:23'),(53,0,'order_guest','a:2:{s:4:\"name\";s:16:\"Rosimeire Lemos \";s:8:\"order_id\";i:47;}','189.120.201.139','2016-03-06 19:28:51'),(54,0,'order_guest','a:2:{s:4:\"name\";s:13:\"Hugo Alcaraz \";s:8:\"order_id\";i:48;}','66.102.8.239','2016-03-06 20:24:04'),(55,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Gilson \";s:8:\"order_id\";i:49;}','177.84.39.34','2016-03-07 09:08:17'),(56,0,'order_guest','a:2:{s:4:\"name\";s:13:\"Gilda Becher \";s:8:\"order_id\";i:50;}','177.158.69.228','2016-03-07 10:11:30'),(57,0,'order_guest','a:2:{s:4:\"name\";s:9:\"Natacha  \";s:8:\"order_id\";i:51;}','187.75.203.39','2016-03-07 10:23:57'),(58,0,'order_guest','a:2:{s:4:\"name\";s:6:\"NAJLA \";s:8:\"order_id\";i:52;}','177.95.197.164','2016-03-07 10:33:01'),(59,0,'order_guest','a:2:{s:4:\"name\";s:6:\"lucio \";s:8:\"order_id\";i:53;}','201.43.35.89','2016-03-07 10:38:14'),(60,0,'order_guest','a:2:{s:4:\"name\";s:17:\"Eduardo Vasquez  \";s:8:\"order_id\";i:54;}','201.81.72.251','2016-03-07 11:17:17'),(61,0,'order_guest','a:2:{s:4:\"name\";s:9:\"Danúbia \";s:8:\"order_id\";i:55;}','187.62.212.197','2016-03-07 12:23:16'),(62,0,'order_guest','a:2:{s:4:\"name\";s:8:\"clayton \";s:8:\"order_id\";i:56;}','189.91.249.230','2016-03-07 14:13:11'),(63,0,'order_guest','a:2:{s:4:\"name\";s:8:\"clayton \";s:8:\"order_id\";i:57;}','189.91.249.230','2016-03-07 14:14:20'),(64,0,'order_guest','a:2:{s:4:\"name\";s:7:\"wagner \";s:8:\"order_id\";i:58;}','200.162.139.194','2016-03-07 14:21:20'),(65,0,'order_guest','a:2:{s:4:\"name\";s:14:\"Natalia Lopes \";s:8:\"order_id\";i:59;}','200.189.118.7','2016-03-07 14:41:16'),(66,0,'order_guest','a:2:{s:4:\"name\";s:23:\"Allan Jefferson Brosco \";s:8:\"order_id\";i:60;}','189.33.166.203','2016-03-07 16:02:04'),(67,0,'order_guest','a:2:{s:4:\"name\";s:8:\"Tatiane \";s:8:\"order_id\";i:61;}','177.32.110.103','2016-03-07 16:31:09'),(68,0,'order_guest','a:2:{s:4:\"name\";s:15:\"Carlos Alberto \";s:8:\"order_id\";i:62;}','189.31.49.126','2016-03-07 16:44:36'),(69,0,'order_guest','a:2:{s:4:\"name\";s:18:\"Herculano Frazao  \";s:8:\"order_id\";i:64;}','191.28.141.28','2016-03-07 17:45:16'),(70,0,'order_guest','a:2:{s:4:\"name\";s:16:\"Renata Manfredi \";s:8:\"order_id\";i:65;}','177.83.48.77','2016-03-07 17:55:16'),(71,0,'order_guest','a:2:{s:4:\"name\";s:8:\"Mariana \";s:8:\"order_id\";i:67;}','200.204.161.106','2016-03-07 18:45:10'),(72,0,'order_guest','a:2:{s:4:\"name\";s:6:\"deise \";s:8:\"order_id\";i:68;}','179.110.145.175','2016-03-07 19:45:14'),(73,0,'order_guest','a:2:{s:4:\"name\";s:7:\"renice \";s:8:\"order_id\";i:69;}','187.0.157.233','2016-03-07 20:53:20'),(74,0,'order_guest','a:2:{s:4:\"name\";s:7:\"renice \";s:8:\"order_id\";i:70;}','187.0.157.233','2016-03-07 20:59:35'),(75,0,'order_guest','a:2:{s:4:\"name\";s:6:\"KATIA \";s:8:\"order_id\";i:71;}','152.250.14.64','2016-03-07 21:39:07'),(76,0,'order_guest','a:2:{s:4:\"name\";s:13:\"Bruna Gomes  \";s:8:\"order_id\";i:72;}','191.196.242.140','2016-03-07 22:01:59'),(77,0,'order_guest','a:2:{s:4:\"name\";s:8:\"Simone  \";s:8:\"order_id\";i:73;}','177.83.52.125','2016-03-07 23:29:01'),(78,0,'order_guest','a:2:{s:4:\"name\";s:8:\"Simone  \";s:8:\"order_id\";i:74;}','177.83.52.125','2016-03-07 23:31:41'),(79,0,'order_guest','a:2:{s:4:\"name\";s:6:\"Maria \";s:8:\"order_id\";i:75;}','179.137.31.57','2016-03-07 23:50:29'),(80,0,'order_guest','a:2:{s:4:\"name\";s:10:\"Test Test \";s:8:\"order_id\";i:76;}','115.112.77.22','2016-03-08 06:25:19'),(81,0,'order_guest','a:2:{s:4:\"name\";s:13:\"Cindy Coelho \";s:8:\"order_id\";i:77;}','148.168.40.121','2016-03-08 06:46:50'),(82,0,'order_guest','a:2:{s:4:\"name\";s:19:\"Viviane Aparecida  \";s:8:\"order_id\";i:79;}','191.247.228.52','2016-03-08 08:01:22'),(83,0,'order_guest','a:2:{s:4:\"name\";s:17:\"Ana Rita Picolli \";s:8:\"order_id\";i:80;}','69.191.241.48','2016-03-08 08:15:39'),(84,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Danilo \";s:8:\"order_id\";i:81;}','187.103.135.114','2016-03-08 09:56:18'),(85,0,'order_guest','a:2:{s:4:\"name\";s:8:\"valeria \";s:8:\"order_id\";i:82;}','189.33.85.49','2016-03-08 11:41:00'),(86,0,'order_guest','a:2:{s:4:\"name\";s:6:\"hatos \";s:8:\"order_id\";i:83;}','189.45.14.165','2016-03-08 12:00:58'),(87,0,'order_guest','a:2:{s:4:\"name\";s:6:\"hatos \";s:8:\"order_id\";i:84;}','189.45.14.165','2016-03-08 12:03:11'),(88,0,'order_guest','a:2:{s:4:\"name\";s:6:\"Ellen \";s:8:\"order_id\";i:85;}','65.97.50.10','2016-03-08 13:15:54'),(89,0,'order_guest','a:2:{s:4:\"name\";s:6:\"vando \";s:8:\"order_id\";i:86;}','189.69.91.197','2016-03-08 13:32:35'),(90,0,'order_guest','a:2:{s:4:\"name\";s:15:\"sandra pereira \";s:8:\"order_id\";i:87;}','177.95.232.139','2016-03-08 14:14:59'),(91,0,'order_guest','a:2:{s:4:\"name\";s:6:\"SONIA \";s:8:\"order_id\";i:88;}','177.95.190.4','2016-03-08 14:31:44'),(92,0,'order_guest','a:2:{s:4:\"name\";s:5:\"Jiro \";s:8:\"order_id\";i:89;}','65.97.50.10','2016-03-08 15:59:29'),(93,0,'order_guest','a:2:{s:4:\"name\";s:7:\"Quenia \";s:8:\"order_id\";i:90;}','65.97.50.10','2016-03-08 16:06:48'),(94,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Fernando Mendes (TESTE) \";s:8:\"order_id\";i:91;}','189.29.132.82','2016-03-08 16:08:01'),(95,0,'order_guest','a:2:{s:4:\"name\";s:14:\"paulo rogerio \";s:8:\"order_id\";i:93;}','189.62.103.31','2016-03-08 16:18:14'),(96,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Fernando Mendes (TESTE) \";s:8:\"order_id\";i:92;}','189.29.132.82','2016-03-08 16:22:24'),(97,0,'order_guest','a:2:{s:4:\"name\";s:8:\"mariani \";s:8:\"order_id\";i:95;}','179.110.161.128','2016-03-08 16:28:27'),(98,0,'order_guest','a:2:{s:4:\"name\";s:15:\"sergio galache \";s:8:\"order_id\";i:96;}','65.97.50.10','2016-03-08 16:29:52'),(99,0,'order_guest','a:2:{s:4:\"name\";s:14:\"Anderson gari \";s:8:\"order_id\";i:97;}','65.97.50.10','2016-03-08 16:41:34'),(100,0,'order_guest','a:2:{s:4:\"name\";s:24:\"Fernando Mendes (TESTE) \";s:8:\"order_id\";i:94;}','189.29.132.82','2016-03-08 16:49:14'),(101,0,'order_guest','a:2:{s:4:\"name\";s:6:\"José \";s:8:\"order_id\";i:98;}','189.111.214.37','2016-03-08 16:57:04');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,4,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (3,2,'186.220.198.132','2016-03-04 14:42:28');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (1,'admin@admin.com','192.168.9.1',1,'2014-12-09 08:05:34','2014-12-09 08:05:34'),(2,'shaecaveneyvpbu@hotmail.com','176.119.74.75',1,'2016-03-06 14:41:01','2016-03-06 14:41:01');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_simple_fields`
--

DROP TABLE IF EXISTS `oc_customer_simple_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_simple_fields` (
  `customer_id` int(11) NOT NULL,
  `metadata` text,
  `loja` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_simple_fields`
--

LOCK TABLES `oc_customer_simple_fields` WRITE;
/*!40000 ALTER TABLE `oc_customer_simple_fields` DISABLE KEYS */;
INSERT INTO `oc_customer_simple_fields` VALUES (2,'loja','RUA DO GASÔMETRO, 360');
/*!40000 ALTER TABLE `oc_customer_simple_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(410,'module','banner'),(426,'module','carousel'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(432,'module','tm_fbbox'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(427,'module','featured'),(430,'module','tm_category'),(433,'module','bestseller'),(434,'module','latest'),(435,'module','special'),(436,'module','affiliate'),(437,'module','information'),(438,'module','tm_slideshow'),(439,'module','simple'),(440,'module','slideshow'),(442,'module','anylist');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,0,3,0),(4,1,1,1),(5,0,0,0),(6,1,2,1),(13,1,1,1),(12,1,3,1),(14,0,1,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (6,4,'Políticas de Entrega','&lt;div&gt;Para a entrega de mercadorias é necessário a presença de um responsável, o qual deverá conferir os produtos. Caso haja algum desacordo, o mesmo deverá ser devolvido a nossos entregadores no ato do recebimento.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Em caso de constatação de alguma divergência após a entrega, o cliente deverá encaminhar o produto ao depósito para efetuar a troca.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Na ausência de um responsável para o recebimento dos produtos, nossos profissionais estão instruídos a retornar ao depósito com a toda a mercadoria. Neste caso não reembolsaremos o valor do frete.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Nos edifícios ou outros pavimentos superiores ao térreo será entregue na garagem. Não fazemos içamento.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;O prazo de entrega é de ate 7 dias úteis para a Grande São Paulo.&amp;nbsp;&lt;/div&gt;&lt;div&gt;Demais cidades e interior, consultar prazo.&lt;/div&gt;','Políticas de Entrega','',''),(12,4,'Políticas de Troca','&lt;div&gt;A troca de produtos, entregues ou retirados, deverá ser efetuada no depósito de origem dos produtos, o qual está escrito no pedido de compras.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A troca será autorizada mediante vistoria por um de nossos funcionários, o qual avaliará se a peça encontra-se no mesmo estado em que saiu do estoque.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Produto não entregue, ou não retirado, deve ter a troca realizada na loja de origem da compra.&lt;/div&gt;&lt;div&gt;Os produtos que sofreram algum tipo de serviço (corte, montagem, acabamento, etc) ou que esteja fora de linha, não poderão ser trocados.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;As trocas de mercadorias são realizadas de:&lt;/div&gt;&lt;div&gt;Segunda à Sexta – das 09:00 às 16:00&lt;/div&gt;&lt;div&gt;Não fazemos trocas aos sábados.&lt;/div&gt;','Políticas de Troca','',''),(13,4,'Garantia de Produtos','&lt;div&gt;Armazene suas esquadrias na sombra e salvo de intempéries.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;As esquadrias devem receber impermeabilização com revestimentos Polistein, inclusive nos batentes que ficarem em contato com a alvenaria. A impermeabilização deve ser realizada antes da instalação do produto, logo após o recebimento.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Nunca use óleo de linhaça, produtos ou tintas à base de água (ex. látex) e seladora para acabamento final.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Contrate profissionais especializados para a instalação e o acabamento de seus produtos.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A Garantia não cobre questões relacionadas à tonalidade e ao desenho da madeira e à adaptabilidade do produto à umidade.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Estas variações não são defeitos, mas sim características naturais da madeira, a qual origina-se de um ser vivo, formado por células, canais e capilares, que continua interagindo com a umidade ambiente, num processo contínuo de absorção e perda de água, mesmo depois de seco.&lt;/div&gt;','Garantia de Produtos','',''),(3,4,'Políticas de Privacidade','&lt;table class=&quot;\\&amp;quot;table&quot; table-responsive=&quot;&quot; privacy_page\\&quot;=&quot;&quot;&gt;\r\n\r\n	&lt;tbody&gt;\r\n&lt;tr&gt;\r\n\r\n		&lt;td class=&quot;\\&amp;quot;col-sm-6\\&amp;quot;&quot;&gt;\r\n			&lt;h4&gt;1. General informations&lt;/h4&gt;\r\n\r\n			\r\n		&lt;/td&gt;\r\n\r\n		&lt;td class=&quot;\\&amp;quot;col-sm-6\\&amp;quot;&quot;&gt;\r\n			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget porta massa, ac maximus mauris. Aenean eu nulla nulla. Curabitur tincidunt nisl neque, id vestibulum lectus aliquam ut. Suspendisse scelerisque purus nec lectus vehicula, ac suscipit tellus eleifend. Cras dapibus pulvinar tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In vitae diam felis. Quisque vel maximus orci. Praesent nec mollis ex. Duis vehicula odio nisi, ut molestie purus lobortis vel.&lt;/p&gt;\r\n\r\n			&lt;p&gt; Duis molestie sem ac justo bibendum, in ultrices nibh blandit. Etiam ac lacinia turpis. Nam vehicula, purus eu maximus sollicitudin, ante arcu sagittis nulla, ut finibus elit augue sed ligula. &lt;/p&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n	&lt;/tr&gt;\r\n\r\n	&lt;tr&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;h4&gt;2. Right to access, correct and delete data and to object to data processing&lt;/h4&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;p&gt;In ut justo ac nibh rhoncus tincidunt. Sed ullamcorper faucibus elit, at placerat velit posuere vitae. Suspendisse feugiat, ante vel varius vestibulum, lacus mi efficitur arcu, at finibus leo eros a augue. Donec tortor est, auctor a luctus non, finibus fermentum sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sed ipsum ex. Donec sollicitudin vulputate mi id consectetur.&lt;/p&gt;\r\n\r\n			&lt;p&gt; In hac habitasse platea dictumst. Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis.&lt;/p&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n	&lt;/tr&gt;\r\n\r\n	&lt;tr&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;h4&gt;3. Managment of personal data&lt;/h4&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;p&gt;Ut pretium fringilla feugiat. Proin et lorem iaculis, vehicula ipsum auctor, posuere magna. Donec rutrum diam ex, ut vestibulum felis pretium id. Morbi blandit, lectus a mattis egestas, diam dolor cursus leo, vel commodo ex ipsum in urna. Vestibulum a nisi vel diam auctor condimentum a ut massa. Ut nunc massa, finibus eget mattis sed, pretium non ante. Vivamus orci quam, lobortis et iaculis id, volutpat non ipsum. Maecenas pharetra erat et nisi sagittis lacinia. Maecenas ullamcorper, enim ac convallis porta, purus nisi pharetra purus, eget sagittis elit erat ut dui. &lt;/p&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n	&lt;/tr&gt;\r\n	&lt;tr&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;h4&gt;4. Information We Collect&lt;/h4&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;p&gt;In ut justo ac nibh rhoncus tincidunt. Sed ullamcorper faucibus elit, at placerat velit posuere vitae. Suspendisse feugiat, ante vel varius vestibulum, lacus mi efficitur arcu, at finibus leo eros a augue. Donec tortor est, auctor a luctus non, finibus fermentum sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sed ipsum ex. Donec sollicitudin vulputate mi id consectetur.&lt;/p&gt;\r\n\r\n			&lt;p&gt; In hac habitasse platea dictumst. Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis.&lt;/p&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n	&lt;/tr&gt;\r\n	&lt;tr&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;h4&gt;5. How We Use Your Information&lt;/h4&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non mauris ut augue dapibus posuere et sed quam. Curabitur rhoncus fringilla ligula id aliquet. Sed risus nulla, tempus vitae porta id, lobortis non nulla. Nullam aliquet est magna, hendrerit bibendum orci molestie eget. Quisque sodales, libero convallis eleifend aliquam, arcu libero venenatis tortor, ut gravida sem quam sed ante. Sed a elit ac magna pellentesque fermentum. Sed et diam at odio aliquet consectetur eu non metus. Donec sed nulla justo&lt;/p&gt;\r\n\r\n			&lt;p&gt; Ut pretium fringilla feugiat. Proin et lorem iaculis, vehicula ipsum auctor, posuere magna. Donec rutrum diam ex, ut vestibulum felis pretium id. Morbi blandit, lectus a mattis egestas, diam dolor cursus leo, vel commodo ex ipsum in urna. Vestibulum a nisi vel diam auctor condimentum a ut massa. Ut nunc massa, finibus eget mattis sed, pretium non ante. Vivamus orci quam, lobortis et iaculis id, volutpat non ipsum. Maecenas pharetra erat et nisi sagittis lacinia. Maecenas ullamcorper, enim ac convallis porta, purus nisi pharetra purus, eget sagittis elit erat ut dui.&lt;/p&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n	&lt;/tr&gt;\r\n	&lt;tr&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;h4&gt;6. Sharing of Your Information&lt;/h4&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n		&lt;td&gt;\r\n			&lt;p&gt;In ut justo ac nibh rhoncus tincidunt. Sed ullamcorper faucibus elit, at placerat velit posuere vitae. Suspendisse feugiat, ante vel varius vestibulum, lacus mi efficitur arcu, at finibus leo eros a augue. Donec tortor est, auctor a luctus non, finibus fermentum sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sed ipsum ex. Donec sollicitudin vulputate mi id consectetur.&lt;/p&gt;\r\n\r\n			&lt;p&gt; In hac habitasse platea dictumst. Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis.&lt;/p&gt;\r\n\r\n		&lt;/td&gt;\r\n\r\n	&lt;/tr&gt;\r\n\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;','Políticas de Privacidade','',''),(5,4,'Termos e Condições','&lt;div class=&quot;\\&amp;quot;row&quot; terms_conditions_page\\&quot;=&quot;&quot;&gt;\r\n	&lt;div class=&quot;\\&amp;quot;col-sm-6\\&amp;quot;&quot;&gt;\r\n		&lt;h4&gt;entire agreement&lt;/h4&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget porta massa, ac maximus mauris. Aenean eu nulla nulla. Curabitur tincidunt nisl neque, id vestibulum lectus aliquam ut. Suspendisse scelerisque purus nec lectus vehicula, ac suscipit tellus eleifend. Cras dapibus pulvinar tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In vitae diam felis. Quisque vel maximus orci. Praesent nec mollis ex. Duis vehicula odio nisi, ut molestie purus lobortis vel. Duis molestie sem ac justo bibendum, in ultrices nibh blandit. Etiam ac lacinia turpis. Nam vehicula, purus eu maximus sollicitudin, ante arcu sagittis nulla, ut finibus elit augue sed ligula.&lt;/p&gt;\r\n		&lt;h4&gt;controlling terms&lt;/h4&gt;\r\n		&lt;p&gt;In ut justo ac nibh rhoncus tincidunt. Sed ullamcorper faucibus elit, at placerat velit posuere vitae. Suspendisse feugiat, ante vel varius vestibulum, lacus mi efficitur arcu, at finibus leo eros a augue. Donec tortor est, auctor a luctus non, finibus fermentum sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sed ipsum ex. Donec sollicitudin vulputate mi id consectetur. In hac habitasse platea dictumst. Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis. &lt;/p&gt;\r\n		&lt;h4&gt;acceptance of orders&lt;/h4&gt;\r\n		&lt;p&gt;Ut pretium fringilla feugiat. Proin et lorem iaculis, vehicula ipsum auctor, posuere magna. Donec rutrum diam ex, ut vestibulum felis pretium id. Morbi blandit, lectus a mattis egestas, diam dolor cursus leo, vel commodo ex ipsum in urna. Vestibulum a nisi vel diam auctor condimentum a ut massa.&lt;/p&gt;\r\n		&lt;h4&gt;prices&lt;/h4&gt;\r\n		&lt;p&gt;Nullam rhoncus risus et nunc ultricies, ac rutrum eros varius. Mauris orci justo, elementum eu dignissim dictum, tincidunt quis nibh. Cras sit amet purus quam. Vivamus sodales ante vitae justo sagittis egestas. Donec vehicula ligula rhoncus, ultrices ipsum sed, molestie ante. Quisque tempor aliquam fringilla. Nulla quis eros quis felis eleifend imperdiet id sed erat. Donec imperdiet tellus tellus, eu fermentum risus convallis eget&lt;/p&gt;\r\n		&lt;h4&gt;delivery&lt;/h4&gt;\r\n		&lt;p&gt;Aliquam lobortis dolor mollis libero commodo, eget finibus augue pretium. Praesent fringilla, nulla nec sodales eleifend, odio ante porttitor neque, non tincidunt ligula dui id tortor. Maecenas maximus ornare urna euismod consectetur. Integer eu accumsan nulla. Sed venenatis non justo et faucibus. Curabitur interdum odio tellus, a cursus tortor vestibulum ut. Maecenas sapien dolor, pulvinar non orci non, mattis placerat elit. Maecenas luctus lacinia placerat. In dolor libero, volutpat vel ipsum quis, molestie suscipit enim. Duis maximus molestie gravida. Suspendisse sit amet auctor libero. Sed pellentesque porta neque condimentum feugiat. &lt;/p&gt;\r\n		&lt;h4&gt;transportation and risk of loss&lt;/h4&gt;\r\n		&lt;p&gt; In vitae diam felis. Quisque vel maximus orci. Praesent nec mollis ex. Duis vehicula odio nisi, ut molestie purus lobortis vel. Duis molestie sem ac justo bibendum, in ultrices nibh blandit. Etiam ac lacinia turpis. Nam vehicula, purus eu maximus sollicitudin, ante arcu sagittis nulla, ut finibus elit augue sed ligula. &lt;/p&gt;\r\n		&lt;h4&gt;cancellation or modification&lt;/h4&gt;\r\n		&lt;p&gt;Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis.&lt;/p&gt;\r\n		&lt;h4&gt;taxes&lt;/h4&gt;\r\n		&lt;p&gt; Vestibulum a nisi vel diam auctor condimentum a ut massa. Ut nunc massa, finibus eget mattis sed, pretium non ante. Vivamus orci quam, lobortis et iaculis id, volutpat non ipsum. Maecenas pharetra erat et nisi sagittis lacinia. Maecenas ullamcorper, enim ac convallis porta, purus nisi pharetra purus, eget sagittis elit erat ut dui. &lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;\\&amp;quot;col-sm-6\\&amp;quot;&quot;&gt;\r\n		&lt;h4&gt;warranty and disclaimer&lt;/h4&gt;\r\n		&lt;p&gt;In ut justo ac nibh rhoncus tincidunt. Sed ullamcorper faucibus elit, at placerat velit posuere vitae. Suspendisse feugiat, ante vel varius vestibulum, lacus mi efficitur arcu, at finibus leo eros a augue. Donec tortor est, auctor a luctus non, finibus fermentum sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sed ipsum ex. Donec sollicitudin vulputate mi id consectetur. In hac habitasse platea dictumst. Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis. &lt;/p&gt;\r\n		&lt;h4&gt;limitation of liability&lt;/h4&gt;\r\n		&lt;p&gt;Aliquam lobortis dolor mollis libero commodo, eget finibus augue pretium. Praesent fringilla, nulla nec sodales eleifend, odio ante porttitor neque, non tincidunt ligula dui id tortor. Maecenas maximus ornare urna euismod consectetur. Integer eu accumsan nulla. Sed venenatis non justo et faucibus. Curabitur interdum odio tellus, a cursus tortor vestibulum ut. Maecenas sapien dolor, pulvinar non orci non, mattis placerat elit. Maecenas luctus lacinia placerat. In dolor libero, volutpat vel ipsum quis, molestie suscipit enim. Duis maximus molestie gravida. Suspendisse sit amet auctor libero. Sed pellentesque porta neque condimentum feugiat.&lt;/p&gt;\r\n		&lt;h4&gt;return of material&lt;/h4&gt;\r\n		&lt;p&gt;Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis. &lt;/p&gt;\r\n		&lt;h4&gt;indemnity&lt;/h4&gt;\r\n		&lt;p&gt; Donec rutrum diam ex, ut vestibulum felis pretium id. Morbi blandit, lectus a mattis egestas, diam dolor cursus leo, vel commodo ex ipsum in urna. Vestibulum a nisi vel diam auctor condimentum a ut massa. Ut nunc massa, finibus eget mattis sed, pretium non ante. Vivamus orci quam, lobortis et iaculis id, volutpat non ipsum. Maecenas pharetra erat et nisi sagittis lacinia. Maecenas ullamcorper, enim ac convallis porta, purus nisi pharetra purus, eget sagittis elit erat ut dui. &lt;/p&gt;\r\n		&lt;h4&gt;payment&lt;/h4&gt;\r\n		&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget porta massa, ac maximus mauris. Aenean eu nulla nulla. Curabitur tincidunt nisl neque, id vestibulum lectus aliquam ut. Suspendisse scelerisque purus nec lectus vehicula, ac suscipit tellus eleifend. Cras dapibus pulvinar tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In vitae diam felis. Quisque vel maximus orci. Praesent nec mollis ex. Duis vehicula odio nisi, ut molestie purus lobortis vel. Duis molestie sem ac justo bibendum, in ultrices nibh blandit. Etiam ac lacinia turpis. Nam vehicula, purus eu maximus sollicitudin, ante arcu sagittis nulla, ut finibus elit augue sed ligula.&lt;/p&gt;\r\n		&lt;h4&gt;governing law and arbitration&lt;/h4&gt;\r\n		&lt;p&gt;In ut justo ac nibh rhoncus tincidunt. Sed ullamcorper faucibus elit, at placerat velit posuere vitae. Suspendisse feugiat, ante vel varius vestibulum, lacus mi efficitur arcu, at finibus leo eros a augue. Donec tortor est, auctor a luctus non, finibus fermentum sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam sed ipsum ex. Donec sollicitudin vulputate mi id consectetur. In hac habitasse platea dictumst. Sed mattis ipsum diam, ac venenatis nibh interdum sed. Vivamus ac blandit sapien, tincidunt rutrum turpis. Praesent mollis, risus et porttitor dictum, eros risus dignissim mi, sed suscipit risus odio rhoncus mi. Vivamus lacinia efficitur sem, non condimentum quam vulputate ac. Fusce ut eleifend orci. Mauris a quam eget erat mattis varius eu et justo. Cras eget nulla at metus pellentesque convallis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;','Termos e Condições','',''),(4,4,'Sobre nós','&lt;div&gt;A Aero Portas, com quatro lojas de fábrica, está no mercado há 20 anos e, ao longo desse tempo, foi investindo em tecnologia para garantir dupla economia: qualidade proporcionada por maquinários de última geração e o menor preço do mercado.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;As lojas estão pronta para atender clientes, engenheiros, arquitetos e decoradores que, muitas vezes, desenvolvem seus projetos em parceria com a Aero Portas.&lt;/div&gt;&lt;div&gt;Suas portas também são ideais para quem está reformando ou construindo. Isso porque todas elas têm ferragens modernas, não possuem trihos no chão (não é preciso quebrar a parede), facilitando o deslize.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;AEROPORTAS, empresa com qualidade e versatilidade em seus itens de ponta e uma equipe especializada em desenvolver projetos e ideias para proporcionar conforto e satisfação a todos amigos e clientes, com responsabilidade ambiental e compromisso com você.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&quot;Missão&quot; Oferecer aos nossos clientes de forma segura, com responsabilidade social e ambiental, a mais alta qualidade em produtos e serviços. Ser líder em qualidade, custo e satisfação do cliente. Trabalhar de forma integrada com nossos colaboradores para alcançarmos um único objetivo: a excelência no atendimento prestado.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&quot;Visão&quot; Consolidar-se como Organização Empresarial com liderança no segmento de esquadrias e pisos de madeira para alcançar reconhecimento pela excelência em produtos e serviços. Satisfazer nossos clientes, atendendo às suas necessidades com ética, transparência e competência.&lt;/div&gt;','Sobre nós','',''),(14,4,'Lojas','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Loja 1: Bandeirantes&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Av. dos Bandeirantes, 4265/85 - Aeroporto - São Paulo - SP&lt;/div&gt;&lt;div&gt;Fones: (11)5096-1803 / 5543-4699&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Loja 2: Gasômetro 1&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Rua do Gasômetro, 360 - Brás&lt;/div&gt;&lt;div&gt;São Paulo - SP&lt;/div&gt;&lt;div&gt;Fones: (11)3313-8942 / 3326-7147&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Loja 3: &amp;nbsp;Guarulhos&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Av. Salgado Filho, 1772 - Centro Guarulhos - SP&lt;/div&gt;&lt;div&gt;Fones: (11)2382-5185 / 2382-5186&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Loja 4:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-weight: bold;&quot;&gt;Gasômetro 2&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Rua do Gasômetro, 326 - Brás&amp;nbsp;&lt;/div&gt;&lt;div&gt;São Paulo - SP&lt;/div&gt;&lt;div&gt;Fone:(11) 3227-9747&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Loja 5:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-weight: bold;&quot;&gt;Gasômetro 3&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Rua do Gasômetro, 218 - Brás&amp;nbsp;&lt;/div&gt;&lt;div&gt;São Paulo - SP&lt;/div&gt;&lt;div&gt;Fone: (11)3227-1226 / 3227-1213&lt;/div&gt;','lojas','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (4,0,0),(6,0,0),(3,0,0),(5,0,0),(13,0,0),(12,0,0),(14,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(12,0),(13,0),(14,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (4,'Português (BR)','pt-br','pt_BR.UTF-8,pt_BR,pt-br,pt_br,portuguese,portugues','br.png','portuguese-br',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (306,10,'account','column_left',2),(305,10,'affiliate','column_left',1),(303,6,'account','column_left',1),(327,9,'account','column_left',1),(321,5,'account','column_left',2),(315,8,'account','column_left',1),(394,1,'tm_slideshow.46','content_top',2),(391,1,'featured.28','content_top',60),(392,1,'banner.50','content_top',1),(393,1,'featured.52','content_top',40),(390,1,'featured.53','content_top',80);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (111,6,0,'account/%'),(112,10,0,'affiliate/%'),(132,3,0,'product/category'),(143,1,0,'common/home'),(120,2,0,'product/product'),(118,11,0,'information/information'),(131,7,0,'checkout/%'),(116,8,0,'information/contact'),(122,9,0,'information/sitemap'),(141,4,0,''),(119,5,0,'product/manufacturer'),(115,12,0,'product/compare'),(142,13,0,'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,'1.00000000'),(2,'10.00000000'),(3,'0.39370000');
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,4,'Centimeter','cm'),(2,4,'Millimeter','mm'),(3,4,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'Donec eu','catalog/demo/htc_logo.jpg',0),(6,'Suspendisse ','catalog/demo/palm_logo.jpg',0),(7,'libero convallis','catalog/demo/hp_logo.jpg',0),(8,'Lorem ipsum','catalog/demo/apple_logo.jpg',0),(9,'Quisque sodales','catalog/demo/canon_logo.jpg',0),(10,'Fusce vestibulum','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (21,'Header Top Position on Home page','7','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Header Top Position on Home page</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>7</code>\r\n	<file path=\"catalog/controller/common/home.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'content_top\'] = $this->load->controller(\'common/content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'header_top\'] = $this->load->controller(\'common/header_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/common/home.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php echo $header; ?>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<div class=\"header_modules\"><?php echo $header_top; ?></div>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'header_top\') { ?>\r\n					<option value=\"header_top\" selected=\"selected\"><?php echo $text_header_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"header_top\"><?php echo $text_header_top; ?></option>\r\n					<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				html += \'    <option value=\"header_top\"><?php echo $text_header_top; ?></option>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_header_top\'] = $this->language->get(\'text_header_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_content_top\']    = \'Content Top\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_header_top\']    = \'Header Top\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2014-12-02 14:45:46'),(30,'Description fo banners','3','viva','1.0','http://www.opencart.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Description fo banners</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.opencart.com</link>\r\n	<code>3</code>\r\n	<file path=\"admin/controller/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_remove\'] = $this->language->get(\'button_remove\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n\r\n			$data[\'entry_description\'] = $this->language->get(\'entry_description\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'banner_images\'][] = array(\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'			   => $banner_image[\'description\'],\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/model/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\'\"); ]]>\r\n			</search>\r\n			<add position=\"replace\"><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\', description = \'\" .  $this->db->escape($banner_image_description[\'description\']) . \"\'\"); ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$banner_image_description_data[$banner_image_description[\'language_id\']] = array(\'title\' => $banner_image_description[\'title\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$banner_image_description_desc[$banner_image_description[\'language_id\']] = array ( \'description\' => $banner_image_description[\'description\'] );\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'banner_image_description\' => $banner_image_description_data,\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'              => $banner_image_description_desc,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/*/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'entry_sort_order\']   = \'Sort Order\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'entry_description\']       = \'Description:\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/banner_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_title; ?></td>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_description; ?></td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class=\"text-left\"><input type=\"text\" name=\"banner_image[<?php echo $image_row; ?>][link]\" value=\"<?php echo $banner_image[\'link\']; ?>\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<td>\r\n				<?php foreach ($languages as $language) { ?>\r\n				<textarea style=\"width:300px; height:150px;\" name=\"banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"><?php echo isset($banner_image[\'description\'][$language[\'language_id\']]) ? $banner_image[\'description\'][$language[\'language_id\']][\'description\'] : \'\'; ?></textarea>\r\n				<img src=\"view/image/flags/<?php echo $language[\'image\']; ?>\" title=\"<?php echo $language[\'name\']; ?>\" /><br />\r\n				<?php } ?>\r\n				</td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'  <td class=\"text-left\"><input type=\"text\" name=\"banner_image[\' + image_row + \'][link]\" value=\"\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\';\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	 html += \'<td class=\"text-left\">\';\r\n	<?php foreach ($languages as $language) { ?>\r\n	html += \'<textarea style=\"width:300px; height:150px;\" name=\"banner_image[\' + image_row + \'][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"></textarea><br />\';\r\n	<?php } ?>\r\n	html += \'</td>\';\r\n	]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/tm_slideshow.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/parallax.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>',1,'2014-12-08 12:32:07'),(23,'TM Featured ','4','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Featured </name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>4</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $product_info[\'manufacturer\'],\r\n					\'description1\' => html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\'),\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $product_info[\'manufacturer_id\']),\r\n					\'model\' => $product_info[\'model\'],\r\n					\'text_availability\' => $product_info[\'quantity\'],\r\n					\'allow\' => $product_info[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $product_info = $this->model_catalog_product->getProduct($product_id); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($product_info[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/*/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2014-12-02 15:00:20'),(46,'TM Header','6','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>TM Header</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<author>Tm</author>\n	<code>6</code>\n	<file path=\"catalog/controller/common/header.php\">\n		<operation>\n			<search><![CDATA[ $data[\'name\'] = $this->config->get(\'config_name\'); ]]></search>\n			<add position=\"after\"><![CDATA[ \n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[\'text_all\'] = $this->language->get(\'text_all\'); ]]></search>\n			<add position=\"before\"><![CDATA[ \n			\n			$data[\'text_shopcart\'] = $this->language->get(\'text_shopcart\');\n			$data[\'text_information\'] = $this->language->get(\'text_information\');\n			$data[\'text_service\'] = $this->language->get(\'text_service\');\n			$data[\'text_extra\'] = $this->language->get(\'text_extra\');\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\n			$data[\'text_contact\'] = $this->language->get(\'text_contact\');\n			$data[\'text_return\'] = $this->language->get(\'text_return\');\n			$data[\'text_sitemap\'] = $this->language->get(\'text_sitemap\');\n			$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n			$data[\'text_voucher\'] = $this->language->get(\'text_voucher\');\n			$data[\'text_affiliate\'] = $this->language->get(\'text_affiliate\');\n			$data[\'text_special\'] = $this->language->get(\'text_special\');\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\n			$data[\'text_order\'] = $this->language->get(\'text_order\');\n			$data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\');\n			$data[\'text_category\'] = $this->language->get(\'text_category\');\n			\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[\'telephone\'] = $this->config->get(\'config_telephone\'); ]]></search>\n			<add position=\"after\"><![CDATA[ \n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\n			$data[\'special\'] = $this->url->link(\'product/special\');\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\n			$data[\'return\'] = $this->url->link(\'account/return/insert\', \'\', \'SSL\');\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\n			$data[\'manufacturer\'] = $this->url->link(\'product/manufacturer\', \'\', \'SSL\');\n			$data[\'voucher\'] = $this->url->link(\'account/voucher\', \'\', \'SSL\');\n			$data[\'affiliate\'] = $this->url->link(\'affiliate/account\', \'\', \'SSL\');\n			$data[\'account\'] = $this->url->link(\'account/account\', \'\', \'SSL\');\n			$data[\'order\'] = $this->url->link(\'account/order\', \'\', \'SSL\');\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');		\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $this->load->language(\'common/header\'); ]]></search>\n			<add position=\"before\"><![CDATA[ \n			if (($data[\'maintenance\']==0)) {\n			$data[\'informations\'] = array();\n			foreach ($this->model_catalog_information->getInformations() as $result) {\n				if ($result[\'bottom\']) {\n					$data[\'informations\'][] = array(\n						\'title\' => $result[\'title\'],\n						\'href\'  => $this->url->link(\'information/information\', \'information_id=\' . $result[\'information_id\'])\n					);\n				}\n			}	\n		}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/language/english/common/header.php\">\n		<operation>\n			<search><![CDATA[ $_[\'text_checkout\']       = \'Checkout\'; ]]></search>\n			<add position=\"after\"><![CDATA[ \n					$_[\'text_information\']  = \'Information\';\n					$_[\'text_service\']      = \'Customer Service\';\n					$_[\'text_extra\']        = \'Extras\';\n					$_[\'text_contact\']      = \'Contact Us\';\n					$_[\'text_return\']       = \'Returns\';\n					$_[\'text_sitemap\']      = \'Site Map\';\n					$_[\'text_manufacturer\'] = \'Brands\';\n					$_[\'text_voucher\']      = \'Gift Vouchers\';\n					$_[\'text_affiliate\']    = \'Affiliates\';\n					$_[\'text_special\']      = \'Specials\';\n					$_[\'text_account\']      = \'My Account\';\n					$_[\'text_order\']        = \'Order History\';\n					$_[\'text_newsletter\']   = \'Newsletter\';\n					$_[\'text_category\']   = \'Categories\';\n					$_[\'text_latest_added\']   = \'Latest added product(s):\';\n				]]></add>\n		</operation>\n	</file>\n\n</modification>',1,'2014-12-18 13:45:00'),(47,'Footer Position','13','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Footer Position</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<code>13</code>\n	<file path=\"catalog/controller/common/footer.php\">\n		<operation>\n			<search><![CDATA[ $data[\'text_information\'] = $this->language->get(\'text_information\'); ]]></search>\n			<add position=\"before\"><![CDATA[\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			if (($data[\'maintenance\']==0)) {\n			$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/view/theme/*/template/common/footer.tpl\">\n		<operation>\n			<search><![CDATA[\n			<div class=\"col-sm-4\">\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			<?php echo $footer_top; ?>\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/design/layout_form.tpl\">\n		<operation>\n			<search><![CDATA[\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\n			]]></search>\n			<add position=\"before\"><![CDATA[\n			<?php if ($layout_module[\'position\'] == \'footer_top\') { ?>\n					<option value=\"footer_top\" selected=\"selected\"><?php echo $text_footer_top; ?></option>\n					<?php } else { ?>\n					<option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\n					<?php } ?>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				html += \'    <option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/controller/design/layout.php\">\n		<operation>\n			<search><![CDATA[\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			$data[\'text_footer_top\'] = $this->language->get(\'text_footer_top\');\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/english/design/layout.php\">\n		<operation>\n			<search><![CDATA[\n			$_[\'text_content_top\']    = \'Content Top\';\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			$_[\'text_footer_top\']    = \'Footer\';\n			]]></add>\n		</operation>\n	</file>\n</modification>',1,'2014-12-18 13:45:03'),(45,'TM Footer','5','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>TM Footer</name>\n	<version>1.0</version>\n	<author>viva</author>\n	<link>http://www.templatemonster.com</link>\n	<code>5</code>\n	<file path=\"catalog/controller/common/footer.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[ $data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\'); ]]></search>\n			<add position=\"after\"><![CDATA[ \n			$data[\'text_account\'] = $this->language->get(\'text_account\');\n			$data[\'text_follow\'] = $this->language->get(\'text_follow\');\n			$data[\'text_support\'] = $this->language->get(\'text_support\');\n			$data[\'text_twi\'] = $this->language->get(\'text_twi\');\n			$data[\'text_fb\'] = $this->language->get(\'text_fb\');\n			$data[\'text_rss\'] = $this->language->get(\'text_rss\');\n			$data[\'text_yt\'] = $this->language->get(\'text_yt\');\n			]]></add>\n		</operation>\n		<operation error=\"skip\">\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\n			<add position=\"after\"><![CDATA[ \n			$data[\'address\'] = nl2br($this->config->get(\'config_address\'));\n			$data[\'telephone\'] = $this->config->get(\'config_telephone\');\n			$data[\'fax\'] = $this->config->get(\'config_fax\');\n			\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/language/*/common/footer.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[ $_[\'text_information\'] ]]></search>\n			<add position=\"before\"><![CDATA[ \n				$_[\'text_follow\']   = \'Follow Us\';\n				$_[\'text_support\']   = \'Online support\';\n				$_[\'text_fb\']   = \'Facebook\';\n				$_[\'text_twi\']   = \'Twitter\';\n				$_[\'text_rss\']   = \'RSS\';\n				$_[\'text_yt\']   = \'You Tube\';\n				]]></add>\n		</operation>\n	</file>\n</modification>',1,'2014-12-18 13:44:57'),(27,'Top Menu All Levels','8','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Top Menu All Levels</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>8</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'language\'] = $this->load->controller(\'common/language\');\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->model(\'design/topmenu\');\r\n			$data[\'categories\'] = $this->model_design_topmenu->getMenu();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2014-12-02 15:00:36'),(28,'TM Product Category image','9','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product Category image</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>9</code>\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[  \'href\'  => $this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'_\' . $result[\'category_id\'] . $url)]]></search>\r\n			<add position=\"after\"><![CDATA[,\'thumb\' => $image]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[  $data[\'categories\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[  $image = $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'config_image_category_width\'), $this->config->get(\'config_image_category_height\'));   ]]></add>\r\n		</operation>\r\n		\r\n		\r\n	</file>\r\n</modification>',1,'2014-12-02 15:00:39'),(29,'TM Live search','10','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Live search</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>10</code>\r\n	<file path=\"catalog/controller/product/search.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ class ControllerProductSearch extends Controller { ]]></search>\r\n			<add  position=\"after\"><![CDATA[\r\n				public function ajax()\r\n	{\r\n		// Contains results\r\n		$data = array();\r\n		if( isset($this->request->get[\'keyword\']) ) {\r\n			// Parse all keywords to lowercase\r\n			$keywords = strtolower( $this->request->get[\'keyword\'] );\r\n			// Perform search only if we have some keywords\r\n			if( strlen($keywords) >= 3 ) {\r\n				$parts = explode( \' \', $keywords );\r\n				$add = \'\';\r\n				// Generating search\r\n				foreach( $parts as $part ) {\r\n					$add .= \' AND (LOWER(pd.name) LIKE \"%\' . $this->db->escape($part) . \'%\"\';\r\n					$add .= \' OR LOWER(p.model) LIKE \"%\' . $this->db->escape($part) . \'%\")\';\r\n				}\r\n				$add = substr( $add, 4 );\r\n				$sql  = \'SELECT pd.product_id, pd.name, p.model, p.image FROM \' . DB_PREFIX . \'product_description AS pd \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product AS p ON p.product_id = pd.product_id \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product_to_store AS p2s ON p2s.product_id = pd.product_id \';\r\n				$sql .= \'WHERE \' . $add . \' AND p.status = 1 \';\r\n				$sql .= \'AND pd.language_id = \' . (int)$this->config->get(\'config_language_id\');\r\n				$sql .= \' AND p2s.store_id =  \' . (int)$this->config->get(\'config_store_id\'); \r\n				$sql .= \' ORDER BY p.sort_order ASC, LOWER(pd.name) ASC, LOWER(p.model) ASC\';\r\n				$sql .= \' LIMIT 15\';\r\n				$res = $this->db->query( $sql );\r\n				if( $res ) {\r\n					$data = ( isset($res->rows) ) ? $res->rows : $res->row;\r\n					$this->load->model(\'tool/image\'); \r\n					// For the seo url stuff\r\n					$basehref = \'product/product&keyword=\' . $this->request->get[\'keyword\'] . \'&product_id=\';\r\n					foreach( $data as $key => $values ) {\r\n						if ( $values[\'image\'] ) {\r\n							$image = $this->model_tool_image->resize($values[\'image\'], $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						else {\r\n							$image = $this->model_tool_image->resize(\'no_image.jpg\', $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						$data[$key] = array(\r\n							\'name\' => htmlspecialchars_decode($values[\'name\'] . \' (\' . $values[\'model\'] . \')\', ENT_QUOTES),\r\n							\'href\' => $this->url->link($basehref . $values[\'product_id\']),\r\n							\'image\' =>$image\r\n						);\r\n					}\r\n				}\r\n			}\r\n		}\r\n		echo json_encode( $data );\r\n	}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2014-12-02 15:00:42'),(32,'TM Header Cart','2','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header Cart</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>2</code>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_loading\'] = $this->language->get(\'text_loading\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_items2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				$data[\'text_shopping_cart\'] = $this->language->get(\'text_shopping_cart\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/*/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_items\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_items2\']    = \'%s\';\r\n			$_[\'text_shopping_cart\']    = \'Shopping Cart:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/*/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_items\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_items2\']    = \'%s\';\r\n			$_[\'text_shopping_cart\']    = \'Shopping Cart:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_shopping_cart\']= \'Warenkorb:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_shopping_cart\'] = \'Корзина\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2014-12-08 17:14:20'),(36,'Text sale','1','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Text sale</name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>1</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_new\'] = $this->language->get(\'text_new\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_new\']      = \'New\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_new\']      = \'Neue \';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_new\']      = \'Новый \';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2014-12-10 10:36:57'),(39,'TM latest ','15','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM latest </name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>15</code>\r\n	<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\'),\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/*/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2014-12-11 17:36:19'),(40,'TM Special ','14','viva','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Special </name>\r\n	<version>1.0</version>\r\n	<author>viva</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>14</code>\r\n	<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\'),\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/*/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2014-12-11 17:36:23');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (33,'banners','banner','a:5:{s:4:\"name\";s:7:\"banners\";s:9:\"banner_id\";s:2:\"14\";s:5:\"width\";s:3:\"423\";s:6:\"height\";s:3:\"240\";s:6:\"status\";s:1:\"1\";}'),(29,'Home Page','carousel','a:5:{s:4:\"name\";s:20:\"Carousel - Home Page\";s:9:\"banner_id\";s:1:\"8\";s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"100\";s:6:\"status\";s:1:\"1\";}'),(28,'Portas de Correr','featured','a:6:{s:4:\"name\";s:16:\"Portas de Correr\";s:7:\"product\";a:4:{i:0;s:3:\"144\";i:1;s:3:\"106\";i:2;s:3:\"145\";i:3;s:3:\"141\";}s:5:\"limit\";s:1:\"8\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}'),(50,'Banners Bottom','banner','a:5:{s:4:\"name\";s:14:\"Banners Bottom\";s:9:\"banner_id\";s:2:\"16\";s:5:\"width\";s:1:\"1\";s:6:\"height\";s:1:\"1\";s:6:\"status\";s:1:\"1\";}'),(46,'Tm Slideshow','tm_slideshow','a:5:{s:4:\"name\";s:12:\"Tm Slideshow\";s:9:\"banner_id\";s:2:\"15\";s:5:\"width\";s:4:\"1270\";s:6:\"height\";s:3:\"539\";s:6:\"status\";s:1:\"1\";}'),(42,'Facebook','tm_fbbox','a:11:{s:4:\"name\";s:8:\"Facebook\";s:5:\"appId\";s:16:\"1494197684186276\";s:8:\"page_url\";s:40:\"https://www.facebook.com/TemplateMonster\";s:12:\"color_scheme\";s:5:\"light\";s:10:\"show_faces\";s:1:\"1\";s:11:\"show_stream\";s:1:\"0\";s:11:\"show_header\";s:1:\"0\";s:11:\"show_border\";s:1:\"0\";s:5:\"width\";s:3:\"370\";s:6:\"height\";s:3:\"190\";s:6:\"status\";s:1:\"1\";}'),(43,'Bestsellers','bestseller','a:5:{s:4:\"name\";s:11:\"Bestsellers\";s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}'),(44,'Latest Products','latest','a:5:{s:4:\"name\";s:15:\"Latest Products\";s:5:\"limit\";s:1:\"8\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}'),(45,'Specials','special','a:5:{s:4:\"name\";s:8:\"Specials\";s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}'),(48,'Specials Home Page','special','a:5:{s:4:\"name\";s:18:\"Specials Home Page\";s:5:\"limit\";s:1:\"8\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}'),(53,'Porta Camarão','featured','a:6:{s:4:\"name\";s:14:\"Porta Camarão\";s:7:\"product\";a:4:{i:0;s:3:\"168\";i:1;s:3:\"165\";i:2;s:3:\"175\";i:3;s:3:\"150\";}s:5:\"limit\";s:1:\"8\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}'),(54,'Banner','slideshow','a:5:{s:4:\"name\";s:6:\"Banner\";s:9:\"banner_id\";s:2:\"18\";s:5:\"width\";s:4:\"1270\";s:6:\"height\";s:3:\"539\";s:6:\"status\";s:1:\"1\";}'),(52,'Portas Pivotantes','featured','a:6:{s:4:\"name\";s:17:\"Portas Pivotantes\";s:7:\"product\";a:4:{i:0;s:3:\"114\";i:1;s:3:\"113\";i:2;s:3:\"122\";i:3;s:3:\"119\";}s:5:\"limit\";s:1:\"8\";s:5:\"width\";s:3:\"248\";s:6:\"height\";s:3:\"248\";s:6:\"status\";s:1:\"1\";}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'radio',1),(14,'radio',0);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,4,'Radio'),(2,4,'Checkbox'),(4,4,'Text'),(6,4,'Textarea'),(8,4,'Date'),(7,4,'File'),(5,4,'Select'),(9,4,'Time'),(10,4,'Date &amp; Time'),(12,4,'Delivery Date'),(11,4,'Size'),(13,4,'Color'),(14,4,'Tamanho');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(49,13,'catalog/product-06.png',1),(50,13,'catalog/product-02.png',2),(51,13,'catalog/product-42.png',3),(52,14,'',0),(53,14,'',0);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,4,1,'Large'),(32,4,1,'Small'),(45,4,2,'Checkbox 4'),(44,4,2,'Checkbox 3'),(31,4,1,'Medium'),(42,4,5,'Yellow'),(41,4,5,'Green'),(39,4,5,'Red'),(40,4,5,'Blue'),(23,4,2,'Checkbox 1'),(24,4,2,'Checkbox 2'),(48,4,11,'Large'),(47,4,11,'Medium'),(46,4,11,'Small'),(49,4,13,'black'),(50,4,13,'white'),(51,4,13,'red'),(52,4,14,'80'),(53,4,14,'60');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (3,0,'INV-2013-00',0,'Watches online store','http://localhost/theme497/',1,1,'Demo','Demo','demo@demo.com','5555555555','','b:0;','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Cash On Delivery','cod','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Flat Shipping Rate','flat.flat','','2470.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2014-12-23 00:33:59','2014-12-23 00:33:59'),(4,0,'INV-2013-00',0,'Watches online store','http://localhost/theme497/',1,1,'Demo','Demo','demo@demo.com','5555555555','','b:0;','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Cash On Delivery','cod','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Flat Shipping Rate','flat.flat','','142.0000',0,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2014-12-23 01:16:04','2014-12-23 01:16:04'),(9,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fernando Mendes (TESTE)','','fernando.mendes@webca.com.br','+5511976495157','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Pagamento Grátis','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.29.132.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-03-04 01:22:54','2016-03-04 01:22:55'),(10,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fernando Mendes (TESTE)','','fernando.mendes@webca.com.br','+5511976495157','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Pagamento Grátis','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.29.132.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-03-04 01:26:04','2016-03-04 01:26:09'),(8,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Elisio','','elisiompereira@gmail.com','11995588497','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Pagamento Grátis','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.121.102.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36','en-US,en;q=0.8,pt;q=0.6,de;q=0.4','2016-03-04 00:12:53','2016-03-04 00:12:54'),(11,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fernando Mendes (TESTE)','','fernando.mendes@webca.com.br','+5511976495157','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.29.132.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-03-04 01:27:56','2016-03-04 01:27:59'),(12,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Carla Suelen Marcelino','','carlasuelen_@hotmail.com','45 99246601','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de saber se enviam por transportadora e quanto fica o frete para 85790-000','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.60.208.168','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-04 09:36:34','2016-03-04 09:36:35'),(13,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Wagner','','wagnerrazao@gmail.com','11985261076','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','TESTE','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.189.210.14','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 10:07:12','2016-03-04 10:07:13'),(14,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Denise','','denise_medrado10@yahoo.com.br','11984060834','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.57.218.126','','Mozilla/5.0 (Linux; Android 4.4.4; SM-G530BT Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 10:19:06','2016-03-04 10:19:07'),(15,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Flavia Hibrain','','flaviahrd@gmail.com','11966600447','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de saber o valor da porta e valor das guarnições, batente. Tenho interesse em 4 peças para 3 quartos e 1 banheiro.','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.62.236.127','','Mozilla/5.0 (Linux; Android 6.0; XT1069 Build/MPB24.65-34) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 10:43:01','2016-03-04 10:43:02'),(16,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Jessica','','agapenoivas.contato@gmail.com','970501377','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','186.231.143.37','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-04 11:03:42','2016-03-04 11:03:43'),(17,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Wsgner','','wagnereazao@gmail.com','11985261076','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Teste','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.64.199.240','','Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) GSA/12.0.68608 Mobile/13D15 Safari/600.1.4','pt-BR,pt,en-US,en','2016-03-04 12:11:39','2016-03-04 12:11:40'),(18,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Neliane','','atendimento@revejo.com.br','991760931','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Preciso de 02 portas e sem guarnição','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.22.215.163','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 14:12:33','2016-03-04 14:12:34'),(19,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',2,1,'financeiro@a3eventos.com.br','a3  eventos','financeiro@a3eventos.com.br','11  23861755','','a:0:{}','financeiro@a3eventos.com.br','a3  eventos','','rua  arace  133','','são paulo','03362050','Brazil',30,'São Paulo',464,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','PORTAS 82 L X 2.10 A  COM BATENTES DE 16 DE LARGURA','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','186.220.198.132','','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko','pt-BR','2016-03-04 14:47:34','2016-03-04 14:47:40'),(20,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Juliana Bertaglia','','jubbertaglia@hotmail.com','11975771919','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.34.253.186','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 14:47:35','2016-03-04 14:47:36'),(21,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Juliana Bertaglia','','jubbertaglia@hotmail.com','11975771919','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.34.253.186','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 14:48:26','2016-03-04 14:48:32'),(22,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Juliana Bertaglia','','jubbertaglia@hotmail.com','11975771919','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.34.253.186','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 14:49:01','2016-03-04 14:49:04'),(23,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Juliana Bertaglia','','jubbertaglia@hotmail.com','11975771919','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.34.253.186','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 14:51:05','2016-03-04 14:51:08'),(24,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Juliana Bertaglia','','jubbertaglia@hotmail.com','11975771919','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.34.253.186','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 14:51:35','2016-03-04 14:51:38'),(25,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'felipe','','fssantos97@gmail.com','11 00000-0000','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','orcamento ','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.141.74.219','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 16:52:57','2016-03-04 16:52:58'),(26,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'cosmo','','contato@kosmograf.com.br','11 58194394','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','boa tarde, Porta Veneziana, 1,20x2,10 preciso nessa medida e se tem pronta entrega, ok\r\nou qual prazo de entrega. obrigado','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.35.161.10','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36 OPR/35.0.2066.92','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 17:45:44','2016-03-04 17:45:45'),(27,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'cristiane','','cristianeluciano31@gmail.com','967639491','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','gostaria por favor que me mandasse o valor das porta completas\r\nobrigada','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.209.96.118','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 17:50:55','2016-03-04 17:50:56'),(28,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Jessica Carvalho','','jessica_18carvalho@yahoo.com.br','11968923142','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de saber o preço da de 92m.  O meu vão é de 90.','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','200.202.193.1','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 19:53:55','2016-03-04 19:53:57'),(29,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Agamenon Canazzi','','agamenonlost@yahoo.com.br','974219676','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','TESTE !!! VENDEDOR FAVOR CONFIRMAR SE RECEBEU ESTE E-MAIL !!!','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.52.63.5','','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko','pt-BR','2016-03-04 20:03:12','2016-03-04 20:03:13'),(30,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Bruna','','bruna.benvenga@br.mcd.com','11987973276','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','orçar porta de 92 cm branca','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','191.188.97.11','','Mozilla/5.0 (Windows NT 6.3; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-04 22:18:34','2016-03-04 22:18:35'),(31,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Carlos Souza','','carlos.santos02@grupobimbo.com','11 989808815','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','66.102.8.244','191.19.24.176','Mozilla/5.0 (Linux; Android 6.0; XT1069 Build/MPB24.65-34) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 22:45:31','2016-03-04 22:45:32'),(32,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Carlos Souza','','carlos.santos02@grupobimbo.com','11 989808815','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','66.102.8.249','191.19.24.176','Mozilla/5.0 (Linux; Android 6.0; XT1069 Build/MPB24.65-34) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-04 22:47:31','2016-03-04 22:47:38'),(33,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'MICHELLE','','mi_ramiro@hotmail.com','112579-0315','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','gostaria do orçamento da porta acima.\r\nÉ somente a porta, sem batente? Qual a dimensao','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','191.180.84.116','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.64 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-05 09:59:19','2016-03-05 09:59:22'),(34,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Marcio','','marcio.robertosr@outlook.com','1333522904','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.18.255.125','','Mozilla/5.0 (Linux; Android 4.4.4; SM-G530H Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-05 14:14:08','2016-03-05 14:14:09'),(35,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'fernando','','nandobizeli@gmail.com','1633848622','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.56.37.29','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-05 15:20:28','2016-03-05 15:20:29'),(36,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Luciana Almeida','','lucianaaalmeida@ig.com.br','987959984','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.22.183.190','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)','pt-BR','2016-03-05 19:27:19','2016-03-05 19:27:19'),(37,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'mauricio','','mauricio.autor@gmail.com','11959826686','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.98.133.195','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-05 21:09:24','2016-03-05 21:09:25'),(38,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'José Fernandes','','fejocaj@gmail.com','61 3222-2977','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria do orçamento das mesmas e do valor do frete para Brasília, DF. Grato.','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.36.98.88','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-05 23:09:31','2016-03-05 23:09:32'),(39,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fabiana Siqueira','','fabizinha.siqueira@hotmail.com','11 974749922','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.33.121.90','','Mozilla/5.0 (Linux; Android 6.0; MotoG3 Build/MPI24.65-33.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-05 23:54:52','2016-03-05 23:54:53'),(40,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Cristina','','crisquiron@gmail.com','115181-4444','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','186.220.185.104','','Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-06 00:07:40','2016-03-06 00:07:41'),(41,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Cristina','','crisquiron@gmail.com','115181-4444','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','186.220.185.104','','Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-06 00:09:45','2016-03-06 00:09:56'),(42,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Crisciana','','criscianasouza1@hotmail.com','19988584853','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.194.28.94','','Mozilla/5.0 (Linux; Android 5.0.2; XT1068 Build/LXB22.99-16.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-06 01:58:17','2016-03-06 01:58:18'),(43,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'andressa','','itsdeehravasio@gmail.com','1158975930','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.94.70.246','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-06 12:20:08','2016-03-06 12:20:09'),(44,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'jeilson','','jeilsonsoares@gmail.com','987546736','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.185.189.2','','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-06 13:33:31','2016-03-06 13:33:31'),(45,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Rogério Palma Silveira','','roger_palma_silveira@hotmail.com','973012205','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.3.212.145','','Mozilla/5.0 (Linux; Android 6.0; XT1069 Build/MPB24.65-34) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-06 16:29:58','2016-03-06 16:30:01'),(46,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Tatiane Guimarães do carmo','','tatinha-guimaraes@hotmail.com','11947576337','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.19.153.88','','Mozilla/5.0 (Linux; Android 5.1; XT1058 Build/LPA23.12-21.7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-06 17:50:21','2016-03-06 17:50:22'),(47,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Rosimeire Lemos','','rosimeire.lemos@gmail.com','11991774981','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de incluir no orçamento os batentes com 14cm.','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.120.201.139','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4,es;q=0.2','2016-03-06 19:28:45','2016-03-06 19:28:48'),(48,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Hugo Alcaraz','','klark_27@hotmail.com','44 99942192','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','66.102.8.244','200.103.221.237','Mozilla/5.0 (Linux; Android 5.1; XT1033 Build/LPB23.13-56) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-06 20:24:02','2016-03-06 20:24:03'),(49,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Gilson','','gilson.santos@austex.com.br','1121672111','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Bom dia, por favor, preciso do preço e prazo de entrega, de 01 porta em Imbuia 0,82 x 2,10, com batentes do mesmo padrão. Não preciso de fechadura e dobradiças. Para entrega no Jardim Presidente Dutra / Guarulhos\r\nAguardo retorno.\r\n\r\nGilson','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.84.39.34','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 09:08:15','2016-03-07 09:08:15'),(50,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Gilda Becher','','gmbecher1@hotmail.com','114624-0103','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','largura 92cm na cor branca, completa com rodizios, trilho e puchador','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.158.69.228','','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 10:11:29','2016-03-07 10:11:29'),(51,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Natacha ','','natachademendonca@hotmail.com','11 31386395','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Bom dia! Gostaria de um orçamento da porta articulada, quais opções e etc.\r\n\r\nObrigada.','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.75.203.39','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 10:23:55','2016-03-07 10:23:56'),(52,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'NAJLA','','NAJLAATUI@HOTMAIL.COM','1532482848','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.95.197.164','','Mozilla/5.0 (Linux; Android 5.1.1; MotoG3 Build/LPI23.72-47.4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 10:32:58','2016-03-07 10:33:00'),(53,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'lucio','','lfslucioflavio@hotmail.com','958428558','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','sabe os preços das portas','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.43.35.89','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 UBrowser/5.6.10764.1008 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 10:38:13','2016-03-07 10:38:14'),(54,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Eduardo Vasquez ','','jkl.edu1@gmail.com','11 98104-5898','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','201.81.72.251','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-PT,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 11:17:15','2016-03-07 11:17:16'),(55,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Danúbia','','danubialopes11@gmail.com','96859-0984','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','1 - porta montada (com batente e ferragens) frisada folha 72 - lado esquerdo - batente 11 cm\r\n1 - porta montada frisada (com batente e ferragens) frisada folha 70 - lado direito batente 10\r\n1- porta montada (com batente e ferragens) lisa folha 60 - lado direito - batente 13cm','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.62.212.197','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 12:23:01','2016-03-07 12:23:16'),(56,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'clayton','','claytongermano@ig.com.br','14998449095','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.91.249.230','','Mozilla/5.0 (Linux; Android 6.0; MotoG3 Build/MPI24.65-33.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.94 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 14:13:09','2016-03-07 14:13:10'),(57,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'clayton','','claytongermano@ig.com.br','14998449095','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.91.249.230','','Mozilla/5.0 (Linux; Android 6.0; MotoG3 Build/MPI24.65-33.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.94 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 14:14:11','2016-03-07 14:14:20'),(58,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'wagner','','wagnerrazao@gmail.com','11985261076','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','TESTE','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','200.162.139.194','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 14:21:18','2016-03-07 14:21:19'),(59,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Natalia Lopes','','natilopes2008@hotmail.com','41 84083058','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Boa Tarde \r\nGostaria De Saber O valor Desta Porta Couro Eucalipto no tamanho 80\r\ne tambem frete e quantos dias para entrega?\r\nMeu Cep 82710260 (Curitiba) ','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','200.189.118.7','10.64.5.185','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-07 14:41:14','2016-03-07 14:41:15'),(60,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Allan Jefferson Brosco','','allanbrosco@gmail.com','11976099914','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.33.166.203','','Mozilla/5.0 (Linux; Android 5.1; XT1058 Build/LPA23.12-21.7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 16:02:03','2016-03-07 16:02:04'),(61,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Tatiane','','tatiane.blanco@hotmail.com','983062189','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Boa tarde, \r\n\r\nGostaria de saber quanto sai uma porta articulada na cor branca com as medidas:\r\n\r\nAltura 2,06\r\nEspessura  0,03\r\nLargura 0,61\r\n\r\nAtt.\r\nTatiane\r\n\r\n','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.32.110.103','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 16:31:08','2016-03-07 16:31:08'),(62,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Carlos Alberto','','c_alberto_21@hotmail.com','65 9283-6931','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.31.49.126','','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 16:44:34','2016-03-07 16:44:35'),(63,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Ana','','anaivina83@gmail.com','Ivina','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de saber o valor da porta plede','0.0000',0,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.153.27.34','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 16:50:15','2016-03-07 16:50:15'),(64,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Herculano Frazao ','','Hercufrazao@gmail.com','11 972457855','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','191.28.141.28','','Mozilla/5.0 (Linux; Android 5.1.1; D6643 Build/23.4.A.1.232) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 17:45:11','2016-03-07 17:45:14'),(65,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Renata Manfredi','','renata_mfd@hotmail.com','11-2427-0582','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.83.48.77','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 17:55:15','2016-03-07 17:55:16'),(66,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Mariana','','mcoltro88@gmail.com','11947793771','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','200.204.161.106','','Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 18:44:12','2016-03-07 18:44:14'),(67,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Mariana','','mcoltro88@gmail.com','11947793771','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','200.204.161.106','','Mozilla/5.0 (Linux; Android 5.0; SM-G900F Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 18:45:04','2016-03-07 18:45:10'),(68,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'deise','','deisedeel@outlook.com','22431820','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Ola, gostaria de saber o valor da porta e se ela vem com fechadura','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.110.145.175','','Mozilla/5.0 (Linux; Android 5.0.2; LG-D337 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/34.0.1847.118 Mobile Safari/537.36','pt-BR,en-US;q=0.8','2016-03-07 19:45:13','2016-03-07 19:45:14'),(69,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'renice','','niceultra@hotmail.com.br','11987180786','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.0.157.233','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 20:53:19','2016-03-07 20:53:19'),(70,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'renice','','niceultra@hotmail.com.br','11987180786','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.0.157.233','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 20:59:11','2016-03-07 20:59:34'),(71,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'KATIA','','katiacilened@gmail.com','11 3578 7015','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de saber o valor de uma porta de 0,62 cm x 2,10 com batentes e ferragens.','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','152.250.14.64','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4,pt-PT;q=0.2','2016-03-07 21:39:06','2016-03-07 21:39:06'),(72,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Bruna Gomes ','','brunagsantos@terra.com.br','11995132684','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','191.196.242.140','','Mozilla/5.0 (Linux; Android 5.1.1; SM-G531H Build/LMY48B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-PT,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 22:01:57','2016-03-07 22:01:58'),(73,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Simone ','','s.tsuji@hotmail.com','999226418','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Na medida 2,50x 1,60. Grata ','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.83.52.125','','Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1','pt-br','2016-03-07 23:29:00','2016-03-07 23:29:01'),(74,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Simone ','','s.tsuji@hotmail.com','999226418','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Na medida de 2v50por160','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.83.52.125','','Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1','pt-br','2016-03-07 23:31:39','2016-03-07 23:31:41'),(75,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Maria','','maria.ponciano23@yahoo.com.br','959675137','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.137.31.57','','Mozilla/5.0 (Linux; Android 6.0; XT1097 Build/MPE24.49-18) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-07 23:50:27','2016-03-07 23:50:28'),(76,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Test Test','','testform@test.com','1130810777','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','115.112.77.22','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8','2016-03-08 06:25:17','2016-03-08 06:25:18'),(77,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Cindy Coelho','','cindy.cvc@gmail.com','985964800','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','148.168.40.121','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0)','pt-BR','2016-03-08 06:46:49','2016-03-08 06:46:50'),(78,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Mauro','','maurociriaco@yahoo.com.br','957540868','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Cadê o ','0.0000',0,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.35.39.56','','Mozilla/5.0 (Linux; Android 4.4.4; XT1025 Build/KXC21.5-40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.109 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 07:58:38','2016-03-08 07:58:38'),(79,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Viviane Aparecida ','','vasilvaoli@gmail.com','15991654492','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','191.247.228.52','','Mozilla/5.0 (Linux; Android 5.1.1; SAMSUNG SM-J500M Build/LMY48B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/3.3 Chrome/38.0.2125.102 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 08:01:00','2016-03-08 08:01:21'),(80,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Ana Rita Picolli','','anaritapicolli@hotmail.com','23959343','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de verificar orçamento para portas, bem como prazo de entrega. Obrigada','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','69.191.241.48','','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko','en-US','2016-03-08 08:15:28','2016-03-08 08:15:39'),(81,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Danilo','','danilo191020@gmail.com','946620222','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','187.103.135.114','10.140.26.121','Mozilla/5.0 (Windows NT 5.1; rv:44.0) Gecko/20100101 Firefox/44.0','pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3','2016-03-08 09:56:16','2016-03-08 09:56:17'),(82,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'valeria','','val@formamaquetes.com.br','11 981185180','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','preciso de uma porta  lisa, com largura de 82cm e altura de 2,10','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.33.85.49','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 11:40:57','2016-03-08 11:40:59'),(83,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'hatos','','hatosmatte@hotmail.com','973089222','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','gostaria de saber o valor da porta','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.45.14.165','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 12:00:56','2016-03-08 12:00:57'),(84,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'hatos','','hatosmatte@hotmail.com','973089222','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.45.14.165','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 12:02:56','2016-03-08 12:03:10'),(85,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Ellen','','ellenrochy-2010@hotmail.com','967510165','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','65.97.50.10','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 13:15:51','2016-03-08 13:15:53'),(86,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'vando','','vandoroschel@bol.com.br','25094831','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','preciso de uma porta de correr simples , interna passagem de garagem pra casa ,.... tenho vão de 1,20 (ideal) , porem posso colocar porta de pelo menos 0,92 não menos (casa de aluguel)\r\n','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.69.91.197','','Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko','pt-BR','2016-03-08 13:32:32','2016-03-08 13:32:33'),(87,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'sandra pereira','','sandrinha_999@hotmail.com','11961788388','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.95.232.139','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 14:14:57','2016-03-08 14:14:58'),(88,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'SONIA','','sofemarques@hotmail.com','11 25791252','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','177.95.190.4','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 14:31:42','2016-03-08 14:31:43'),(89,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Jiro','','jirotazaki@ig.com.br','11 55881680','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Peço oçamento da porta e batente, 082X2,10','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','65.97.50.10','','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 15:59:27','2016-03-08 15:59:28'),(90,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Quenia','','queninha22@bol.com.br','11960941838','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','65.97.50.10','','Mozilla/5.0 (Linux; Android 4.4.4; SM-G530BT Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 16:06:45','2016-03-08 16:06:47'),(91,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fernando Mendes (TESTE)','','fernando.mendes@webca.com.br','+5511976495157','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','TESTE FERNANDO','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.29.132.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-03-08 16:07:58','2016-03-08 16:07:59'),(92,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fernando Mendes (TESTE)','','fernando.mendes@webca.com.br','+5511976495157','RUA DO GASÔMETRO, 360','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','TESTE','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.29.132.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-03-08 16:22:19','2016-03-08 16:22:23'),(93,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'paulo rogerio','','zecaneg@yahoo.com.br','993077510','','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.62.103.31','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 16:18:10','2016-03-08 16:18:13'),(94,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Fernando Mendes (TESTE)','','fernando.mendes@webca.com.br','+5511976495157','1','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','teste 223','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.29.132.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-03-08 16:49:12','2016-03-08 16:49:14'),(95,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'mariani','','marianidalan@gmail.com','5543 2397','5','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','179.110.161.128','','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 16:28:25','2016-03-08 16:28:26'),(96,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'sergio galache','','sergio.galache@hotmail.com','222222222222222222222222','1','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','65.97.50.10','','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 16:29:50','2016-03-08 16:29:51'),(97,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'Anderson gari','','andersongarihair@hotmail.com','11996743518','1','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Gostaria de saber o valor de duas portas dessas..  de 80 cm','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','65.97.50.10','','Mozilla/5.0 (Linux; Android 5.0.1; SAMSUNG GT-I9515L Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/2.1 Chrome/34.0.1847.76 Mobile Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 16:41:32','2016-03-08 16:41:33'),(98,0,'AERO-',0,'Aeroportas','http://aeroportas.com.br/',0,1,'José','','jfcavalcanti@ig.com.br','1125410993','1','a:0:{}','','','','','','','','',0,'',0,'','a:0:{}','Orçamento','free_checkout','','','','','','','','',0,'',0,'','a:0:{}','','','Boa tarde,\r\nSai quanto a janela?','0.0000',1,0,'0.0000',0,'',4,4,'BRL','1.00000000','189.111.214.37','192.168.0.49','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-03-08 16:57:01','2016-03-08 16:57:03');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_fraud`
--

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (9,8,1,0,'','2016-03-04 00:12:54'),(12,9,1,0,'','2016-03-04 01:22:55'),(13,10,1,0,'','2016-03-04 01:26:09'),(14,11,1,0,'','2016-03-04 01:27:59'),(15,12,1,0,'','2016-03-04 09:36:35'),(16,13,1,0,'','2016-03-04 10:07:13'),(17,14,1,0,'','2016-03-04 10:19:07'),(18,15,1,0,'','2016-03-04 10:43:02'),(19,16,1,0,'','2016-03-04 11:03:43'),(20,17,1,0,'','2016-03-04 12:11:40'),(21,18,1,0,'','2016-03-04 14:12:34'),(22,20,1,0,'','2016-03-04 14:47:36'),(23,19,1,0,'','2016-03-04 14:47:40'),(24,21,1,0,'','2016-03-04 14:48:32'),(25,22,1,0,'','2016-03-04 14:49:04'),(26,23,1,0,'','2016-03-04 14:51:08'),(27,24,1,0,'','2016-03-04 14:51:38'),(28,25,1,0,'','2016-03-04 16:52:58'),(29,26,1,0,'','2016-03-04 17:45:45'),(30,27,1,0,'','2016-03-04 17:50:56'),(31,28,1,0,'','2016-03-04 19:53:57'),(32,29,1,0,'','2016-03-04 20:03:13'),(33,30,1,0,'','2016-03-04 22:18:35'),(34,31,1,0,'','2016-03-04 22:45:32'),(35,32,1,0,'','2016-03-04 22:47:38'),(36,33,1,0,'','2016-03-05 09:59:22'),(37,34,1,0,'','2016-03-05 14:14:09'),(38,35,1,0,'','2016-03-05 15:20:29'),(39,36,1,0,'','2016-03-05 19:27:19'),(40,37,1,0,'','2016-03-05 21:09:25'),(41,38,1,0,'','2016-03-05 23:09:32'),(42,39,1,0,'','2016-03-05 23:54:53'),(43,40,1,0,'','2016-03-06 00:07:41'),(44,41,1,0,'','2016-03-06 00:09:56'),(45,42,1,0,'','2016-03-06 01:58:18'),(46,43,1,0,'','2016-03-06 12:20:09'),(47,44,1,0,'','2016-03-06 13:33:31'),(48,45,1,0,'','2016-03-06 16:30:01'),(49,46,1,0,'','2016-03-06 17:50:22'),(50,47,1,0,'','2016-03-06 19:28:48'),(51,48,1,0,'','2016-03-06 20:24:03'),(52,49,1,0,'','2016-03-07 09:08:15'),(53,50,1,0,'','2016-03-07 10:11:29'),(54,51,1,0,'','2016-03-07 10:23:56'),(55,52,1,0,'','2016-03-07 10:33:00'),(56,53,1,0,'','2016-03-07 10:38:14'),(57,54,1,0,'','2016-03-07 11:17:16'),(58,55,1,0,'','2016-03-07 12:23:16'),(59,56,1,0,'','2016-03-07 14:13:10'),(60,57,1,0,'','2016-03-07 14:14:20'),(61,58,1,0,'','2016-03-07 14:21:19'),(62,59,1,0,'','2016-03-07 14:41:15'),(63,60,1,0,'','2016-03-07 16:02:04'),(64,61,1,0,'','2016-03-07 16:31:08'),(65,62,1,0,'','2016-03-07 16:44:35'),(66,64,1,0,'','2016-03-07 17:45:14'),(67,65,1,0,'','2016-03-07 17:55:16'),(68,66,1,0,'','2016-03-07 18:44:14'),(69,67,1,0,'','2016-03-07 18:45:10'),(70,68,1,0,'','2016-03-07 19:45:14'),(71,69,1,0,'','2016-03-07 20:53:19'),(72,70,1,0,'','2016-03-07 20:59:34'),(73,71,1,0,'','2016-03-07 21:39:06'),(74,72,1,0,'','2016-03-07 22:01:58'),(75,73,1,0,'','2016-03-07 23:29:01'),(76,74,1,0,'','2016-03-07 23:31:41'),(77,75,1,0,'','2016-03-07 23:50:28'),(78,76,1,0,'','2016-03-08 06:25:18'),(79,77,1,0,'','2016-03-08 06:46:50'),(80,79,1,0,'','2016-03-08 08:01:21'),(81,80,1,0,'','2016-03-08 08:15:39'),(82,81,1,0,'','2016-03-08 09:56:17'),(83,82,1,0,'','2016-03-08 11:40:59'),(84,83,1,0,'','2016-03-08 12:00:57'),(85,84,1,0,'','2016-03-08 12:03:10'),(86,85,1,0,'','2016-03-08 13:15:53'),(87,86,1,0,'','2016-03-08 13:32:33'),(88,87,1,0,'','2016-03-08 14:14:58'),(89,88,1,0,'','2016-03-08 14:31:43'),(90,89,1,0,'','2016-03-08 15:59:28'),(91,90,1,0,'','2016-03-08 16:06:47'),(92,91,1,0,'','2016-03-08 16:07:59'),(93,93,1,0,'','2016-03-08 16:18:13'),(94,92,1,0,'','2016-03-08 16:22:23'),(95,95,1,0,'','2016-03-08 16:28:26'),(96,96,1,0,'','2016-03-08 16:29:51'),(97,97,1,0,'','2016-03-08 16:41:33'),(98,94,1,0,'','2016-03-08 16:49:14'),(99,98,1,0,'','2016-03-08 16:57:03');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (5,3,6,254,95,'Color','black','radio'),(6,3,6,253,94,'Size','Small','select'),(7,4,11,237,44,'Color','black','radio'),(8,4,11,238,49,'Size','Small','select');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (6,3,43,'Quisque eget','Product 16',1,'430.0000','430.0000','88.0000',600),(7,3,49,'Mauris gravida','SAM1',3,'150.0000','450.0000','32.0000',3000),(8,3,48,'Praesent imperdiet','product 20',1,'100.0000','100.0000','22.0000',0),(9,3,47,'Consectetur adipiscing','Product 21',1,'60.0000','60.0000','14.0000',300),(10,3,46,'Suspendisse imperdiet','Product 19',1,'1000.0000','1000.0000','202.0000',0),(11,4,30,'Dolor sit amet','Product 3',1,'110.0000','110.0000','24.0000',200),(25,12,157,'Porta Camarão Porta Retrato','Porta Camarão Porta Retrato ',1,'0.0000','0.0000','0.0000',0),(24,11,139,'Trilho Camarão Bronze','Trilho Camarão Bronze',100,'0.0000','0.0000','0.0000',0),(21,9,139,'Trilho Camarão Bronze','Trilho Camarão Bronze',1,'0.0000','0.0000','0.0000',0),(22,9,106,'Porta Veneziana  Correr Reta 3 folhas Quadriculada ','Porta Veneziana  Correr Reta 3 folhas Quadriculada',2,'0.0000','0.0000','0.0000',0),(23,10,154,'Porta Articulada 2/3 Modelo 5 Vidros ','Porta Articulada 2/3 Modelo 5 Vidros ',1,'0.0000','0.0000','0.0000',0),(20,8,195,'Porta Lisa ','Porta Lisa ',1,'0.0000','0.0000','0.0000',0),(26,13,203,'Porta Maciça Iriri ','Porta Maciça Iriri ',1,'0.0000','0.0000','0.0000',0),(27,14,219,'Puxador Inox 5060 Cromado ','Puxador Inox 5060 Cromado ',1,'0.0000','0.0000','0.0000',0),(28,15,163,'Porta Camarão Lisa ','Porta Camarão Lisa ',1,'0.0000','0.0000','0.0000',0),(29,16,205,'Porta Maciça Realeza c/ Grade ','Porta Maciça Realeza c/ Grade ',1,'0.0000','0.0000','0.0000',0),(30,17,203,'Porta Maciça Iriri ','Porta Maciça Iriri ',1,'0.0000','0.0000','0.0000',0),(31,18,159,'Porta Camarão Clássica ','Porta Camarão Clássica ',2,'0.0000','0.0000','0.0000',0),(152,19,195,'Porta Lisa ','Porta Lisa ',21,'0.0000','0.0000','0.0000',0),(154,19,203,'Porta Maciça Iriri ','Porta Maciça Iriri ',3,'0.0000','0.0000','0.0000',0),(153,19,208,'Porta Maciça BBB-R ','Porta Maciça BBB-R ',3,'0.0000','0.0000','0.0000',0),(155,20,151,'Porta Camarão Milenio','Porta Camarão Milenio ',2,'0.0000','0.0000','0.0000',0),(156,21,162,'Porta Camarão Super Friso 7 ','Porta Camarão Super Friso 7',2,'0.0000','0.0000','0.0000',0),(157,22,153,'Porta Camarão Super Friso 6','Porta Camarão Super Friso 6 ',2,'0.0000','0.0000','0.0000',0),(158,23,220,'Puxador Alumínio Enseada Cromado/Fosco ','Puxador Alumínio Enseada Cromado/Fosco',4,'0.0000','0.0000','0.0000',0),(159,24,218,'Puxador Inox Ly 232 Cromado ','Puxador  Inox Ly 232 Cromado ',4,'0.0000','0.0000','0.0000',0),(160,25,165,'Porta Camarão Veneziana ','Porta Camarão Veneziana ',1,'0.0000','0.0000','0.0000',0),(161,26,106,'Porta Veneziana  Correr Reta 3 folhas Quadriculada ','Porta Veneziana  Correr Reta 3 folhas Quadriculada',1,'0.0000','0.0000','0.0000',0),(162,27,173,'Porta Camarão 4 Escotilhas MDF ','Porta Camarão 4 Escotilhas MDF ',1,'0.0000','0.0000','0.0000',0),(163,27,149,'Porta Camarão Losango ','Porta Camarão Losango ',1,'0.0000','0.0000','0.0000',0),(164,27,155,'Porta Camarão New Berlim ','Porta Camarão New Berlim ',1,'0.0000','0.0000','0.0000',0),(165,27,151,'Porta Camarão Milenio','Porta Camarão Milenio ',1,'0.0000','0.0000','0.0000',0),(166,28,142,'Porta Correr 1 Escotilha Cromada ','Porta Correr 1 Escotilha Cromada ',1,'0.0000','0.0000','0.0000',0),(167,29,187,'Porta Maciça Manaus ','Porta Maciça Manaus',1,'0.0000','0.0000','0.0000',0),(168,30,164,'Porta Camarão Lisa ','Porta Camarão Lisa ',1,'0.0000','0.0000','0.0000',0),(169,31,144,'Porta Correr Moderna ','Porta Correr Moderna ',1,'0.0000','0.0000','0.0000',0),(170,32,151,'Porta Camarão Milenio','Porta Camarão Milenio ',1,'0.0000','0.0000','0.0000',0),(171,33,184,'Porta Maciça Mexicana ','Porta Maciça Mexicana ',1,'0.0000','0.0000','0.0000',0),(172,34,144,'Porta Correr Moderna ','Porta Correr Moderna ',3,'0.0000','0.0000','0.0000',0),(173,35,115,'Portal Pivotante BBB-R s/ Visor ','Portal Pivotante BBB-R s/ Visor ',1,'0.0000','0.0000','0.0000',0),(174,36,175,'Porta Camarão 4 Escotilhas Cromadas','Porta Camarão 4 Escotilhas Cromadas',1,'0.0000','0.0000','0.0000',0),(175,36,150,'Porta Camarão Cris ','Porta Camarão Cris ',1,'0.0000','0.0000','0.0000',0),(176,37,157,'Porta Camarão Porta Retrato','Porta Camarão Porta Retrato ',1,'0.0000','0.0000','0.0000',0),(177,37,153,'Porta Camarão Super Friso 6','Porta Camarão Super Friso 6 ',3,'0.0000','0.0000','0.0000',0),(178,38,120,'Portal Pivotante Bico de Diamante c/ Visor ','Portal Pivotante Bico Diamante c/ Visor',1,'0.0000','0.0000','0.0000',0),(179,38,222,'Portal Pivotante Couro S/ Visor','Portal Pivotante Couro S/ Visor',1,'0.0000','0.0000','0.0000',0),(180,39,163,'Porta Camarão Lisa ','Porta Camarão Lisa ',2,'0.0000','0.0000','0.0000',0),(181,40,155,'Porta Camarão New Berlim ','Porta Camarão New Berlim ',3,'0.0000','0.0000','0.0000',0),(182,41,144,'Porta Correr Moderna ','Porta Correr Moderna ',1,'0.0000','0.0000','0.0000',0),(183,42,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',1,'0.0000','0.0000','0.0000',0),(184,43,208,'Porta Maciça BBB-R ','Porta Maciça BBB-R ',1,'0.0000','0.0000','0.0000',0),(185,44,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',1,'0.0000','0.0000','0.0000',0),(186,45,162,'Porta Camarão Super Friso 7 ','Porta Camarão Super Friso 7',2,'0.0000','0.0000','0.0000',0),(187,46,150,'Porta Camarão Cris ','Porta Camarão Cris ',2,'0.0000','0.0000','0.0000',0),(188,46,160,'Porta Camarão Modelo 1 Vidro','Porta Camarão Modelo 1 Vidro',1,'0.0000','0.0000','0.0000',0),(189,46,190,'Porta Maciça BBB-R Arco ','Porta Maciça BBB-R Arco',1,'0.0000','0.0000','0.0000',0),(190,47,198,'Porta Donatela ','Porta Donatela ',2,'0.0000','0.0000','0.0000',0),(191,48,144,'Porta Correr Moderna ','Porta Correr Moderna ',1,'0.0000','0.0000','0.0000',0),(192,49,204,'Porta Maciça Anchieta ','Porta Maciça Anchieta',1,'0.0000','0.0000','0.0000',0),(193,50,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(194,51,154,'Porta Articulada 2/3 Modelo 5 Vidros ','Porta Articulada 2/3 Modelo 5 Vidros ',1,'0.0000','0.0000','0.0000',0),(195,52,163,'Porta Camarão Lisa ','Porta Camarão Lisa ',4,'0.0000','0.0000','0.0000',0),(196,53,187,'Porta Maciça Manaus ','Porta Maciça Manaus',1,'0.0000','0.0000','0.0000',0),(197,54,191,'Porta Super Friso 8 ','Porta Super Friso 8 ',5,'0.0000','0.0000','0.0000',0),(231,55,147,'Porta Montada Lisa ','Porta Montada Lisa ',1,'0.0000','0.0000','0.0000',0),(230,55,146,'Porta Montada Super Friso 7 ','Porta Montada Super Friso 7',2,'0.0000','0.0000','0.0000',0),(232,56,110,'Porta Correr Vidraçada 4F Quadriculada ','Porta Correr Vidraçada 4F Quadriculada ',1,'0.0000','0.0000','0.0000',0),(234,57,143,'Porta de Correr Maciça Reta Vidraçada 2F Quadriculada','Porta de Correr Maciça Reta Vidraçada 2F Quadriculada',1,'0.0000','0.0000','0.0000',0),(235,58,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',1,'0.0000','0.0000','0.0000',0),(236,58,246,'Rodapé MDF Carvalho Branco Liso 7 CM de largura','Rodapé MDF Carvalho Branco Liso 7 CM de largura ',1,'0.0000','0.0000','0.0000',0),(237,59,178,'Porta Maciça Couro s/ Visor ','Porta Maciça Couro s/ Visor ',3,'0.0000','0.0000','0.0000',0),(238,60,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(239,61,170,'Porta Articulada 2/3 Lisa ','Porta Articulada 2/3 Lisa ',1,'0.0000','0.0000','0.0000',0),(240,62,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(252,63,164,'Porta Camarão Lisa ','Porta Camarão Lisa ',1,'0.0000','0.0000','0.0000',0),(253,64,142,'Porta Correr 1 Escotilha Cromada ','Porta Correr 1 Escotilha Cromada ',2,'0.0000','0.0000','0.0000',0),(254,65,187,'Porta Maciça Manaus ','Porta Maciça Manaus',1,'0.0000','0.0000','0.0000',0),(255,65,204,'Porta Maciça Anchieta ','Porta Maciça Anchieta',1,'0.0000','0.0000','0.0000',0),(256,66,165,'Porta Camarão Veneziana ','Porta Camarão Veneziana ',1,'0.0000','0.0000','0.0000',0),(257,67,165,'Porta Camarão Veneziana ','Porta Camarão Veneziana ',1,'0.0000','0.0000','0.0000',0),(258,67,163,'Porta Camarão Lisa ','Porta Camarão Lisa ',1,'0.0000','0.0000','0.0000',0),(259,68,150,'Porta Camarão Cris ','Porta Camarão Cris ',1,'0.0000','0.0000','0.0000',0),(260,69,215,'Puxador Inox DH 2275 Cromado/fosco ','Puxador Inox DH 2275 Cromado/fosco ',1,'0.0000','0.0000','0.0000',0),(261,70,147,'Porta Montada Lisa ','Porta Montada Lisa ',3,'0.0000','0.0000','0.0000',0),(262,71,150,'Porta Camarão Cris ','Porta Camarão Cris ',1,'0.0000','0.0000','0.0000',0),(263,72,112,'Porta Maciça Balcão Reta Quadriculada ','Porta Maciça Balcão Reta Quadriculada',1,'0.0000','0.0000','0.0000',0),(264,73,117,'Portal Pivotante Jamaris ','Portal Pivotante Jamaris ',1,'0.0000','0.0000','0.0000',0),(303,74,116,'Portal Pivotante Bico de Diamante ','Portal Pivotante Bico de Diamante ',1,'0.0000','0.0000','0.0000',0),(304,75,208,'Porta Maciça BBB-R ','Porta Maciça BBB-R ',1,'0.0000','0.0000','0.0000',0),(305,75,179,'Porta Maciça Lira c/ Visor','Porta Maciça Lira c/ Visor ',1,'0.0000','0.0000','0.0000',0),(306,75,146,'Porta Montada Super Friso 7 ','Porta Montada Super Friso 7',1,'0.0000','0.0000','0.0000',0),(307,76,132,'Vitro de Correr Reto Quadriculado ','Vitro de Correr Reto Quadriculado ',1,'0.0000','0.0000','0.0000',0),(308,77,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(323,78,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(324,79,144,'Porta Correr Moderna ','Porta Correr Moderna ',1,'0.0000','0.0000','0.0000',0),(329,80,118,'Portal Pivotante Manaus ','Portal Pivotante Manaus ',1,'0.0000','0.0000','0.0000',0),(328,80,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',1,'0.0000','0.0000','0.0000',0),(330,80,208,'Porta Maciça BBB-R ','Porta Maciça BBB-R ',1,'0.0000','0.0000','0.0000',0),(331,81,119,'Portal Pivotante Lira ','Portal Pivotante Lira ',1,'0.0000','0.0000','0.0000',0),(332,81,175,'Porta Camarão 4 Escotilhas Cromadas','Porta Camarão 4 Escotilhas Cromadas',1,'0.0000','0.0000','0.0000',0),(333,81,118,'Portal Pivotante Manaus ','Portal Pivotante Manaus ',1,'0.0000','0.0000','0.0000',0),(334,82,195,'Porta Lisa ','Porta Lisa ',1,'0.0000','0.0000','0.0000',0),(335,83,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',1,'0.0000','0.0000','0.0000',0),(336,84,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',1,'0.0000','0.0000','0.0000',0),(337,85,206,'Porta Maciça Jamaris ','Porta Maciça Jamaris ',1,'0.0000','0.0000','0.0000',0),(338,86,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(339,87,141,'Porta Correr 1 Escotilha Fosca  ','Porta Correr 1 Escotilha Fosca  ',2,'0.0000','0.0000','0.0000',0),(340,88,147,'Porta Montada Lisa ','Porta Montada Lisa ',5,'0.0000','0.0000','0.0000',0),(341,89,181,'Porta Maciça Lindoya ','Porta Maciça Lindoya ',1,'0.0000','0.0000','0.0000',0),(342,90,145,'Porta Correr Donatela ','Porta Correr Donatela ',1,'0.0000','0.0000','0.0000',0),(343,90,144,'Porta Correr Moderna ','Porta Correr Moderna ',1,'0.0000','0.0000','0.0000',0),(344,91,114,'Portal Pivotante BBB-R c/ Visor ','Portal Pivotante BBB-R c/ Visor ',2,'0.0000','0.0000','0.0000',0),(355,92,113,'Portal Pivotante Beca c/ Visor ','Portal Pivotante Beca c/ Visor ',2,'0.0000','0.0000','0.0000',0),(346,93,223,'Portal Pivotante Evidence ','Portal Pivotante Evidence ',2,'0.0000','0.0000','0.0000',0),(366,94,113,'Portal Pivotante Beca c/ Visor ','Portal Pivotante Beca c/ Visor ',2,'0.0000','0.0000','0.0000',0),(362,95,184,'Porta Maciça Mexicana ','Porta Maciça Mexicana ',1,'0.0000','0.0000','0.0000',0),(363,96,120,'Portal Pivotante Bico de Diamante c/ Visor ','Portal Pivotante Bico Diamante c/ Visor',1,'0.0000','0.0000','0.0000',0),(364,97,158,'Porta Camarão New Uno','Porta Camarão New Uno ',2,'0.0000','0.0000','0.0000',0),(367,98,131,'Janela Correr Veneziana Reta 6F Quadriculada ','Janela Correr Veneziana Reta 6F Quadriculado',1,'0.0000','0.0000','0.0000',0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_simple_fields`
--

DROP TABLE IF EXISTS `oc_order_simple_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_simple_fields` (
  `order_id` int(11) NOT NULL,
  `metadata` text,
  `loja` text,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_simple_fields`
--

LOCK TABLES `oc_order_simple_fields` WRITE;
/*!40000 ALTER TABLE `oc_order_simple_fields` DISABLE KEYS */;
INSERT INTO `oc_order_simple_fields` VALUES (7,'loja','RUA DO GASÔMETRO, 360'),(8,'loja','RUA DO GASÔMETRO, 360'),(9,'loja','RUA DO GASÔMETRO, 218'),(10,'loja',''),(11,'loja',''),(12,'loja','AV. DOS BANDEIRANTES, 4265/85'),(13,'loja','RUA DO GASÔMETRO, 360'),(14,'loja','RUA DO GASÔMETRO, 360'),(15,'loja','RUA DO GASÔMETRO, 360'),(16,'loja','RUA DO GASÔMETRO, 360'),(17,'loja','RUA DO GASÔMETRO, 218'),(18,'loja','AV. SALGADO FILHO, 1772'),(19,'loja','RUA DO GASÔMETRO, 360'),(20,'loja','RUA DO GASÔMETRO, 360'),(21,'loja',''),(22,'loja',''),(23,'loja',''),(24,'loja',''),(25,'loja','RUA DO GASÔMETRO, 360'),(26,'loja','RUA DO GASÔMETRO, 360'),(27,'loja','RUA DO GASÔMETRO, 360'),(28,'loja','RUA DO GASÔMETRO, 360'),(29,'loja','RUA DO GASÔMETRO, 360'),(30,'loja','RUA DO GASÔMETRO, 360'),(31,'loja','RUA DO GASÔMETRO, 360'),(32,'loja',''),(33,'loja','AV. DOS BANDEIRANTES, 4265/85'),(34,'loja','RUA DO GASÔMETRO, 360'),(35,'loja','RUA DO GASÔMETRO, 360'),(36,'loja','AV. SALGADO FILHO, 1772'),(37,'loja','RUA DO GASÔMETRO, 360'),(38,'loja','RUA DO GASÔMETRO, 360'),(39,'loja','AV. SALGADO FILHO, 1772'),(40,'loja','AV. DOS BANDEIRANTES, 4265/85'),(41,'loja',''),(42,'loja','RUA DO GASÔMETRO, 360'),(43,'loja','RUA DO GASÔMETRO, 360'),(44,'loja','RUA DO GASÔMETRO, 360'),(45,'loja','RUA DO GASÔMETRO, 360'),(46,'loja','RUA DO GASÔMETRO, 360'),(47,'loja','RUA DO GASÔMETRO, 360'),(48,'loja','RUA DO GASÔMETRO, 360'),(49,'loja','AV. SALGADO FILHO, 1772'),(50,'loja','RUA DO GASÔMETRO, 360'),(51,'loja','RUA DO GASÔMETRO, 360'),(52,'loja','RUA DO GASÔMETRO, 360'),(53,'loja','RUA DO GASÔMETRO, 360'),(54,'loja','RUA DO GASÔMETRO, 360'),(55,'loja','RUA DO GASÔMETRO, 360'),(56,'loja','RUA DO GASÔMETRO, 360'),(57,'loja',''),(58,'loja','AV. DOS BANDEIRANTES, 4265/85'),(59,'loja','RUA DO GASÔMETRO, 360'),(60,'loja','RUA DO GASÔMETRO, 360'),(61,'loja','RUA DO GASÔMETRO, 360'),(62,'loja','RUA DO GASÔMETRO, 360'),(63,'loja','RUA DO GASÔMETRO, 360'),(64,'loja','RUA DO GASÔMETRO, 360'),(65,'loja','AV. SALGADO FILHO, 1772'),(66,'loja','RUA DO GASÔMETRO, 360'),(67,'loja',''),(68,'loja','RUA DO GASÔMETRO, 360'),(69,'loja','RUA DO GASÔMETRO, 360'),(70,'loja',''),(71,'loja','RUA DO GASÔMETRO, 360'),(72,'loja','RUA DO GASÔMETRO, 360'),(73,'loja','RUA DO GASÔMETRO, 360'),(74,'loja','RUA DO GASÔMETRO, 360'),(75,'loja','RUA DO GASÔMETRO, 360'),(76,'loja','RUA DO GASÔMETRO, 360'),(77,'loja','RUA DO GASÔMETRO, 360'),(78,'loja','RUA DO GASÔMETRO, 360'),(79,'loja','RUA DO GASÔMETRO, 360'),(80,'loja','RUA DO GASÔMETRO, 360'),(81,'loja','RUA DO GASÔMETRO, 360'),(82,'loja','RUA DO GASÔMETRO, 360'),(83,'loja','RUA DO GASÔMETRO, 360'),(84,'loja',''),(85,'loja','AV. SALGADO FILHO, 1772'),(86,'loja','RUA DO GASÔMETRO, 360'),(87,'loja','RUA DO GASÔMETRO, 360'),(88,'loja','RUA DO GASÔMETRO, 360'),(89,'loja','AV. DOS BANDEIRANTES, 4265/85'),(90,'loja','AV. SALGADO FILHO, 1772'),(91,'loja','RUA DO GASÔMETRO, 360');
/*!40000 ALTER TABLE `oc_order_simple_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,4,'Processing'),(3,4,'Shipped'),(7,4,'Canceled'),(5,4,'Complete'),(8,4,'Denied'),(9,4,'Canceled Reversal'),(10,4,'Failed'),(11,4,'Refunded'),(12,4,'Reversed'),(13,4,'Chargeback'),(1,4,'Pendente'),(16,4,'Voided'),(15,4,'Processed'),(14,4,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (11,3,'sub_total','Sub-Total','2040.0000',1),(12,3,'shipping','Flat Shipping Rate','5.0000',3),(13,3,'tax','Eco Tax (-2.00)','16.0000',5),(14,3,'tax','VAT (20%)','409.0000',5),(15,3,'total','Total','2470.0000',9),(16,4,'sub_total','Sub-Total','110.0000',1),(17,4,'shipping','Flat Shipping Rate','5.0000',3),(18,4,'tax','Eco Tax (-2.00)','4.0000',5),(19,4,'tax','VAT (20%)','23.0000',5),(20,4,'total','Total','142.0000',9),(33,9,'total','Total','0.0000',9),(32,9,'sub_total','Sub-Total','0.0000',1),(34,10,'sub_total','Sub-Total','0.0000',1),(30,8,'sub_total','Sub-Total','0.0000',1),(31,8,'total','Total','0.0000',9),(35,10,'total','Total','0.0000',9),(36,11,'sub_total','Sub-Total','0.0000',1),(37,11,'total','Total','0.0000',9),(38,12,'sub_total','Sub-Total','0.0000',1),(39,12,'total','Total','0.0000',9),(40,13,'sub_total','Sub-Total','0.0000',1),(41,13,'total','Total','0.0000',9),(42,14,'sub_total','Sub-Total','0.0000',1),(43,14,'total','Total','0.0000',9),(44,15,'sub_total','Sub-Total','0.0000',1),(45,15,'total','Total','0.0000',9),(46,16,'sub_total','Sub-Total','0.0000',1),(47,16,'total','Total','0.0000',9),(48,17,'sub_total','Sub-Total','0.0000',1),(49,17,'total','Total','0.0000',9),(50,18,'sub_total','Sub-Total','0.0000',1),(51,18,'total','Total','0.0000',9),(134,19,'sub_total','Sub-Total','0.0000',1),(135,19,'total','Total','0.0000',9),(136,20,'sub_total','Sub-Total','0.0000',1),(137,20,'total','Total','0.0000',9),(138,21,'sub_total','Sub-Total','0.0000',1),(139,21,'total','Total','0.0000',9),(140,22,'sub_total','Sub-Total','0.0000',1),(141,22,'total','Total','0.0000',9),(142,23,'sub_total','Sub-Total','0.0000',1),(143,23,'total','Total','0.0000',9),(144,24,'sub_total','Sub-Total','0.0000',1),(145,24,'total','Total','0.0000',9),(146,25,'sub_total','Sub-Total','0.0000',1),(147,25,'total','Total','0.0000',9),(148,26,'sub_total','Sub-Total','0.0000',1),(149,26,'total','Total','0.0000',9),(150,27,'sub_total','Sub-Total','0.0000',1),(151,27,'total','Total','0.0000',9),(152,28,'sub_total','Sub-Total','0.0000',1),(153,28,'total','Total','0.0000',9),(154,29,'sub_total','Sub-Total','0.0000',1),(155,29,'total','Total','0.0000',9),(156,30,'sub_total','Sub-Total','0.0000',1),(157,30,'total','Total','0.0000',9),(158,31,'sub_total','Sub-Total','0.0000',1),(159,31,'total','Total','0.0000',9),(160,32,'sub_total','Sub-Total','0.0000',1),(161,32,'total','Total','0.0000',9),(162,33,'sub_total','Sub-Total','0.0000',1),(163,33,'total','Total','0.0000',9),(164,34,'sub_total','Sub-Total','0.0000',1),(165,34,'total','Total','0.0000',9),(166,35,'sub_total','Sub-Total','0.0000',1),(167,35,'total','Total','0.0000',9),(168,36,'sub_total','Sub-Total','0.0000',1),(169,36,'total','Total','0.0000',9),(170,37,'sub_total','Sub-Total','0.0000',1),(171,37,'total','Total','0.0000',9),(172,38,'sub_total','Sub-Total','0.0000',1),(173,38,'total','Total','0.0000',9),(174,39,'sub_total','Sub-Total','0.0000',1),(175,39,'total','Total','0.0000',9),(176,40,'sub_total','Sub-Total','0.0000',1),(177,40,'total','Total','0.0000',9),(178,41,'sub_total','Sub-Total','0.0000',1),(179,41,'total','Total','0.0000',9),(180,42,'sub_total','Sub-Total','0.0000',1),(181,42,'total','Total','0.0000',9),(182,43,'sub_total','Sub-Total','0.0000',1),(183,43,'total','Total','0.0000',9),(184,44,'sub_total','Sub-Total','0.0000',1),(185,44,'total','Total','0.0000',9),(186,45,'sub_total','Sub-Total','0.0000',1),(187,45,'total','Total','0.0000',9),(188,46,'sub_total','Sub-Total','0.0000',1),(189,46,'total','Total','0.0000',9),(190,47,'sub_total','Sub-Total','0.0000',1),(191,47,'total','Total','0.0000',9),(192,48,'sub_total','Sub-Total','0.0000',1),(193,48,'total','Total','0.0000',9),(194,49,'sub_total','Sub-Total','0.0000',1),(195,49,'total','Total','0.0000',9),(196,50,'sub_total','Sub-Total','0.0000',1),(197,50,'total','Total','0.0000',9),(198,51,'sub_total','Sub-Total','0.0000',1),(199,51,'total','Total','0.0000',9),(200,52,'sub_total','Sub-Total','0.0000',1),(201,52,'total','Total','0.0000',9),(202,53,'sub_total','Sub-Total','0.0000',1),(203,53,'total','Total','0.0000',9),(204,54,'sub_total','Sub-Total','0.0000',1),(205,54,'total','Total','0.0000',9),(267,55,'total','Total','0.0000',9),(266,55,'sub_total','Sub-Total','0.0000',1),(268,56,'sub_total','Sub-Total','0.0000',1),(269,56,'total','Total','0.0000',9),(272,57,'sub_total','Sub-Total','0.0000',1),(273,57,'total','Total','0.0000',9),(274,58,'sub_total','Sub-Total','0.0000',1),(275,58,'total','Total','0.0000',9),(276,59,'sub_total','Sub-Total','0.0000',1),(277,59,'total','Total','0.0000',9),(278,60,'sub_total','Sub-Total','0.0000',1),(279,60,'total','Total','0.0000',9),(280,61,'sub_total','Sub-Total','0.0000',1),(281,61,'total','Total','0.0000',9),(282,62,'sub_total','Sub-Total','0.0000',1),(283,62,'total','Total','0.0000',9),(306,63,'sub_total','Sub-Total','0.0000',1),(307,63,'total','Total','0.0000',9),(308,64,'sub_total','Sub-Total','0.0000',1),(309,64,'total','Total','0.0000',9),(310,65,'sub_total','Sub-Total','0.0000',1),(311,65,'total','Total','0.0000',9),(312,66,'sub_total','Sub-Total','0.0000',1),(313,66,'total','Total','0.0000',9),(314,67,'sub_total','Sub-Total','0.0000',1),(315,67,'total','Total','0.0000',9),(316,68,'sub_total','Sub-Total','0.0000',1),(317,68,'total','Total','0.0000',9),(318,69,'sub_total','Sub-Total','0.0000',1),(319,69,'total','Total','0.0000',9),(320,70,'sub_total','Sub-Total','0.0000',1),(321,70,'total','Total','0.0000',9),(322,71,'sub_total','Sub-Total','0.0000',1),(323,71,'total','Total','0.0000',9),(324,72,'sub_total','Sub-Total','0.0000',1),(325,72,'total','Total','0.0000',9),(326,73,'sub_total','Sub-Total','0.0000',1),(327,73,'total','Total','0.0000',9),(405,74,'total','Total','0.0000',9),(404,74,'sub_total','Sub-Total','0.0000',1),(406,75,'sub_total','Sub-Total','0.0000',1),(407,75,'total','Total','0.0000',9),(408,76,'sub_total','Sub-Total','0.0000',1),(409,76,'total','Total','0.0000',9),(410,77,'sub_total','Sub-Total','0.0000',1),(411,77,'total','Total','0.0000',9),(441,78,'total','Total','0.0000',9),(440,78,'sub_total','Sub-Total','0.0000',1),(442,79,'sub_total','Sub-Total','0.0000',1),(443,79,'total','Total','0.0000',9),(446,80,'sub_total','Sub-Total','0.0000',1),(447,80,'total','Total','0.0000',9),(448,81,'sub_total','Sub-Total','0.0000',1),(449,81,'total','Total','0.0000',9),(450,82,'sub_total','Sub-Total','0.0000',1),(451,82,'total','Total','0.0000',9),(452,83,'sub_total','Sub-Total','0.0000',1),(453,83,'total','Total','0.0000',9),(454,84,'sub_total','Sub-Total','0.0000',1),(455,84,'total','Total','0.0000',9),(456,85,'sub_total','Sub-Total','0.0000',1),(457,85,'total','Total','0.0000',9),(458,86,'sub_total','Sub-Total','0.0000',1),(459,86,'total','Total','0.0000',9),(460,87,'sub_total','Sub-Total','0.0000',1),(461,87,'total','Total','0.0000',9),(462,88,'sub_total','Sub-Total','0.0000',1),(463,88,'total','Total','0.0000',9),(464,89,'sub_total','Sub-Total','0.0000',1),(465,89,'total','Total','0.0000',9),(466,90,'sub_total','Sub-Total','0.0000',1),(467,90,'total','Total','0.0000',9),(468,91,'sub_total','Sub-Total','0.0000',1),(469,91,'total','Total','0.0000',9),(490,92,'sub_total','Sub-Total','0.0000',1),(472,93,'sub_total','Sub-Total','0.0000',1),(473,93,'total','Total','0.0000',9),(491,92,'total','Total','0.0000',9),(512,94,'sub_total','Sub-Total','0.0000',1),(513,94,'total','Total','0.0000',9),(504,95,'sub_total','Sub-Total','0.0000',1),(505,95,'total','Total','0.0000',9),(506,96,'sub_total','Sub-Total','0.0000',1),(507,96,'total','Total','0.0000',9),(508,97,'sub_total','Sub-Total','0.0000',1),(509,97,'total','Total','0.0000',9),(514,98,'sub_total','Sub-Total','0.0000',1),(515,98,'total','Total','0.0000',9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (249,'Piso Engenheirado cumaru','','','','','','','',100,6,'catalog/piso_engenheirado/PISO ENGENHEIRADO CUMARU.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,14,'2016-03-07 02:39:48','2016-03-07 02:42:03'),(230,'Fechadura 3f Design','','','','','','','',100,6,'catalog/fechaduras_3f/Fechadura 3f Design.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,100,1,1,2,'2016-03-07 02:00:47','2016-03-07 02:02:29'),(109,'Porta Correr Couro 2F Reta Quadriculada ','','','','','','','',100,6,'catalog/lote123commarcadagua/127a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,47,'2016-02-24 00:36:00','2016-03-02 23:01:55'),(226,'Piso Engenheirado Amendoim ','','','','','','','',100,6,'catalog/piso_engenheirado/PISO ENGENHEIRADO AMENDOIM.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,29,'2016-03-04 10:29:25','2016-03-07 02:45:33'),(101,'Porta Maciça Couro c/ Visor ','','','','','','','',100,6,'catalog/lote123commarcadagua/23a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,24,'2016-02-23 23:52:44','2016-03-04 10:43:22'),(225,'Piso Estruturado  Amendoim ','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO AMENDOIM.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-03-04 10:27:45','2016-03-07 03:05:30'),(110,'Porta Correr Vidraçada 4F Quadriculada ','','','','','','','',100,6,'catalog/lote123commarcadagua/118a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,40,'2016-02-24 00:39:37','2016-03-02 23:19:04'),(248,'Rodapé MDF Carvalho Branco com friso 15 CM de largura','','','','','','','',100,6,'catalog/rodape/RODAPE MDF BRANCO COM FRISO 15 CM DE LARGURA.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,9,'2016-03-07 02:36:15','2016-03-07 02:37:30'),(247,'Rodapé MDF Branco Liso 7 CM de largura','','','','','','','',100,6,'catalog/rodape/RODAPE MDF BRANCO LISO COM 7 CM DE LARGURA.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,8,'2016-03-07 02:34:13','2016-03-07 02:35:44'),(243,'Fechadura Pado Quadra','','','','','','','',100,6,'catalog/fechaduras_pado/Fechadura Pado Quadra.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:23:16','2016-03-07 02:26:32'),(244,'Fechadura Pado Sara','','','','','','','',100,6,'catalog/fechaduras_pado/Fechadura Pado Sara.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:26:49','2016-03-07 02:27:54'),(245,'Fechadura Pado Victoria','','','','','','','',100,6,'catalog/fechaduras_pado/Fechadura Pado Victoria.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:28:06','2016-03-07 02:28:59'),(246,'Rodapé MDF Carvalho Branco Liso 7 CM de largura ','','','','','','','',100,6,'catalog/rodape/RODAPE MDF CARVALHO BRANCO LISO 7 CM DE LARGURA.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,14,'2016-03-07 02:29:49','2016-03-07 02:33:42'),(240,'Fechadura Arouca Una','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA UNA.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-03-07 02:18:48','2016-03-07 02:19:52'),(241,'Fechadura Arouca Victoria','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA VICTORIA.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:20:07','2016-03-07 02:20:54'),(242,'Fechadura Pado Acqua Star','','','','','','','',100,6,'catalog/fechaduras_pado/FECHADURA PADO ACQUA STAR.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-03-07 02:21:51','2016-03-07 02:22:55'),(108,'Porta Correr Veneziana 6F Quadriculada Reta ','','','','','','','',100,6,'catalog/lote123commarcadagua/117a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,48,'2016-02-24 00:29:52','2016-03-02 23:02:44'),(231,'Fechadura 3f Lisa','','','','','','','',100,6,'catalog/fechaduras_3f/FECHADURA 3F LISA.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:02:42','2016-03-07 02:08:25'),(232,'Fechadura 3f Vincere','','','','','','','',100,6,'catalog/fechaduras_3f/Fechadura 3f Vincere.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-03-07 02:04:53','2016-03-07 02:06:45'),(82,'Porta Maciça Couro 12 Vidros ','','','','','','','',100,6,'catalog/lote123commarcadagua/39a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,22,'2016-02-18 02:19:32','2016-03-04 10:43:11'),(250,'Piso Engenheirado Guaiuvira','','','','','','','',100,6,'catalog/piso_engenheirado/PISO ENGENHEIRADO GUAIUVIRA.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,8,'2016-03-07 02:42:20','2016-03-07 02:45:10'),(233,'Fechadura Arouca Abitare','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA ABITARE.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-03-07 02:05:52','2016-03-07 02:10:18'),(234,'Fechadura Arouca Fly','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA FLY.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:10:35','2016-03-07 02:11:37'),(235,'Fechadura Arouca Idea','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA IDEA.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:11:51','2016-03-07 02:12:47'),(236,'Fechadura Arouca Ovo','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA OVO.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:13:02','2016-03-07 02:14:18'),(237,'Fechadura Arouca Plana I','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA PLANA I.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:14:24','2016-03-07 02:16:06'),(238,'Fechadura Arouca Polo','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA POLO.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-03-07 02:16:15','2016-03-07 02:17:15'),(239,'Fechadura Arouca Stilo','','','','','','','',100,6,'catalog/fechaduras_arouca/AROUCA STILO.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 02:17:32','2016-03-07 02:18:31'),(106,'Porta Veneziana  Correr Reta 3 folhas Quadriculada','','','','','','','',100,6,'catalog/lote123commarcadagua/116a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,71,'2016-02-24 00:16:31','2016-03-02 23:43:58'),(229,'Fechadura 3f Audace','','','','','','','',100,6,'catalog/fechaduras_3f/Fechadura 3f Audace.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-03-07 01:58:49','2016-03-07 02:00:29'),(112,'Porta Maciça Balcão Reta Quadriculada','','','','','','','',100,6,'catalog/lote123commarcadagua/128a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,47,'2016-02-24 00:55:02','2016-03-04 10:39:44'),(113,'Portal Pivotante Beca c/ Visor ',' (Cod: 0416101)','','','','','','',100,6,'catalog/lote123commarcadagua/98a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,52,'2016-02-24 01:01:13','2016-03-03 00:55:32'),(114,'Portal Pivotante BBB-R c/ Visor ','(Cod: 0359201)','','','','','','',100,6,'catalog/lote123commarcadagua/120a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,100,'2016-02-24 01:22:22','2016-03-04 19:57:02'),(115,'Portal Pivotante BBB-R s/ Visor ',' (Cod: 0359391)','','','','','','',100,6,'catalog/lote123commarcadagua/121a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,52,'2016-02-24 01:26:36','2016-03-03 00:53:12'),(116,'Portal Pivotante Bico de Diamante ','(cod: 0359041)','','','','','','',100,6,'catalog/lote123commarcadagua/99a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,35,'2016-02-24 01:30:12','2016-03-03 00:55:59'),(117,'Portal Pivotante Jamaris ','(Cod: 0439581)','','','','','','',100,6,'catalog/lote123commarcadagua/108a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,34,'2016-02-24 01:33:46','2016-03-03 00:58:32'),(118,'Portal Pivotante Manaus ','(cod: 0439741)','','','','','','',100,6,'catalog/lote123commarcadagua/105a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,44,'2016-02-24 01:37:05','2016-03-03 01:00:36'),(119,'Portal Pivotante Lira ','(cod. 0597651)','','','','','','',100,6,'catalog/lote123commarcadagua/104a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,34,'2016-02-24 01:45:29','2016-03-03 01:01:13'),(120,'Portal Pivotante Bico Diamante c/ Visor','(Cod:416291)','','','','','','',100,6,'catalog/lote123commarcadagua/85a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,38,'2016-02-24 01:49:07','2016-03-03 00:56:20'),(121,'Portal Pivotante Ripado ','(Cod: 0385631)','','','','','','',100,6,'catalog/lote123commarcadagua/119a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,0,'2016-02-24 01:53:24','2016-03-02 17:12:05'),(122,'Portal Pivotante Couro c/ Visor','(cod:0357851)','','','','','','',100,6,'catalog/lote123commarcadagua/101a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,35,'2016-02-24 01:58:25','2016-03-03 00:56:40'),(123,'Portal Pivotante Solar','(cod:0597141)','','','','','','',100,6,'catalog/lote123commarcadagua/102a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,0,'2016-02-24 02:02:24','2016-03-04 19:50:28'),(124,'Portal Pivotante Roma ','(cod:0604291)','','','','','','',100,6,'catalog/lote123commarcadagua/122a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,0,'2016-02-24 02:06:11','2016-03-02 17:13:13'),(125,'Portal Pivotante Demolição ','(Cod:0544611)','','','','','','',100,6,'catalog/lote123commarcadagua/124a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,45,'2016-02-24 02:09:37','2016-03-03 00:57:26'),(126,'Portal Pivotante Suiça ','(cod. 0604371)','','','','','','',100,6,'catalog/lote123commarcadagua/123a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,0,'2016-02-24 02:13:25','2016-03-04 19:50:15'),(127,'Portal Pivotante Beca s/ Visor ','(cod:0358821)','','','','','','',100,6,'catalog/lote123commarcadagua/86a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,26,'2016-02-24 02:16:47','2016-03-03 00:55:12'),(128,'Vitro Capela Pivotante Quadriculado ','(cod:0272191)','','','','','','',100,6,'catalog/lote123commarcadagua/87a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-24 16:45:44','2016-03-03 00:14:40'),(129,'Vitro Max ar Reto 02 Módulos Quadriculado','(cod:0283711)','','','','','','',100,6,'catalog/lote123commarcadagua/88a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,35,'2016-02-24 16:49:42','2016-03-03 00:13:36'),(130,'Vitro Max ar Reto 01 Módulo Quadriculado','(cod:0283041)','','','','','','',100,6,'catalog/lote123commarcadagua/89a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,21,'2016-02-24 16:53:36','2016-03-03 00:13:52'),(131,'Janela Correr Veneziana Reta 6F Quadriculado','(cod:0172801)','','','','','','',100,6,'catalog/lote123commarcadagua/91a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,34,'2016-02-24 16:56:40','2016-03-01 15:39:29'),(132,'Vitro de Correr Reto Quadriculado ','(cod:0276691)','','','','','','',100,6,'catalog/lote123commarcadagua/90a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,42,'2016-02-24 17:05:00','2016-03-03 00:14:25'),(133,'Batente Pivotante Liso Eucalipto Premium ','(cod. 0330901)','','','','','','',100,6,'catalog/lote123commarcadagua/93a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,34,'2016-02-24 17:14:37','2016-03-02 22:48:21'),(134,'Batente Maciço Camarão Tauari ','(cod. 0331201)','','','','','','',100,6,'catalog/lote123commarcadagua/94a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,31,'2016-02-24 17:21:50','2016-03-02 22:48:11'),(135,'Batente Comum Tauari ','(COD. 0639671)','','','','','','',100,6,'catalog/lote123commarcadagua/96a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,39,'2016-02-24 17:25:40','2016-03-02 22:48:01'),(136,'Guarnição Lisa Canto Vivo Tauari 6cm ','(cod. 0596171)','','','','','','',100,6,'catalog/lote123commarcadagua/95a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,24,'2016-02-24 17:28:30','2016-03-02 22:48:56'),(137,'Guarnição Lisa canto Arredondado  6 cm ','(cod. 0596091)','','','','','','',100,6,'catalog/lote123commarcadagua/97a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,24,'2016-02-24 17:36:06','2016-03-02 22:48:41'),(138,'Trilho Camarão Branco','','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/127a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,26,'2016-02-24 17:52:38','2016-03-03 00:15:20'),(139,'Trilho Camarão Bronze','','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/128a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,19,'2016-02-24 17:56:48','2016-03-03 00:15:03'),(254,'Piso Laminado Eucafloor Carvalho Maiorca','','','','','','','',100,6,'catalog/piso_laminado/PISO LAMINADO EUCAFLOOR CARVALHO MAIORCA.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,0,'2016-03-07 02:57:45','2016-03-07 02:58:48'),(141,'Porta Correr 1 Escotilha Fosca  ','(cod. 0713661 / 0528921)','','','','','','',100,6,'catalog/lote123commarcadagua/80b.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,65,'2016-02-25 10:54:40','2016-03-02 23:01:37'),(142,'Porta Correr 1 Escotilha Cromada ','(cod. 0713661 / 0528841)','','','','','','',100,6,'catalog/lote123commarcadagua/80a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,68,'2016-02-25 11:05:55','2016-03-02 23:01:20'),(143,'Porta de Correr Maciça Reta Vidraçada 2F Quadriculada','(cod:0401931)','','','','','','',100,6,'catalog/lote123commarcadagua/115a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,52,'2016-02-25 11:15:05','2016-03-02 23:20:00'),(144,'Porta Correr Moderna ','(cod. 0719351)','','','','','','',100,6,'catalog/lote123commarcadagua/49a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,254,'2016-02-25 11:20:30','2016-03-02 23:02:28'),(145,'Porta Correr Donatela ','(cod. 0718971)','','','','','','',100,6,'catalog/lote123commarcadagua/79a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,143,'2016-02-25 11:25:04','2016-03-02 23:02:12'),(146,'Porta Montada Super Friso 7','(Cod:624301)','','','','','','',100,6,'catalog/lote123commarcadagua/84a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,34,'2016-02-25 11:31:46','2016-03-02 23:41:07'),(147,'Porta Montada Lisa ','(Cod: 0643191)','','','','','','',100,6,'catalog/lote123commarcadagua/82a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,35,'2016-02-25 11:44:25','2016-03-02 23:40:51'),(148,'Porta Camarão Losango ','(cod: 0667371)','','','','','','',100,6,'catalog/lote123commarcadagua/15a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,30,'2016-02-25 11:53:45','2016-03-02 22:54:27'),(149,'Porta Camarão Losango ','(cod: 0020970)','','','','','','',100,6,'catalog/lote123commarcadagua/15a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,33,'2016-02-25 12:00:48','2016-03-02 22:54:46'),(150,'Porta Camarão Cris ','(cod:0007950)','','','','','','',100,6,'catalog/lote123commarcadagua/16a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,51,'2016-02-25 14:57:22','2016-03-02 22:52:41'),(151,'Porta Camarão Milenio ','(cod: 0434001)','','','','','','',100,6,'catalog/lote123commarcadagua/13a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,52,'2016-02-25 15:26:17','2016-03-02 22:55:03'),(152,'Porta Camarão Elipse ','(cod:0434431)','','','','','','',100,6,'catalog/lote123commarcadagua/14a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,32,'2016-02-25 15:29:56','2016-03-02 22:53:08'),(153,'Porta Camarão Super Friso 6 ','(cod: 0435910)','','','','','','',100,6,'catalog/lote123commarcadagua/44a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,50,'2016-02-25 15:33:36','2016-03-02 23:00:22'),(154,'Porta Articulada 2/3 Modelo 5 Vidros ','(cod : 0429270)','','','','','','',100,6,'catalog/lote123commarcadagua/53a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,36,'2016-02-25 15:39:05','2016-03-02 22:50:16'),(155,'Porta Camarão New Berlim ','(cod: 0434271)','','','','','','',100,6,'catalog/lote123commarcadagua/1a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,41,'2016-02-25 16:08:49','2016-03-02 22:58:59'),(156,'Porta Camarão Modelo 5/1 ','(cod: 0004260)','','','','','','',100,6,'catalog/lote123commarcadagua/9a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,24,'2016-02-25 16:12:09','2016-03-02 22:58:22'),(157,'Porta Camarão Porta Retrato ','(cod: 0324840)','','','','','','',100,6,'catalog/lote123commarcadagua/42a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,47,'2016-02-25 16:18:12','2016-03-02 23:00:02'),(158,'Porta Camarão New Uno ','(cod 0434861)','','','','','','',100,6,'catalog/lote123commarcadagua/2a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,50,'2016-02-25 16:22:22','2016-03-02 22:59:28'),(159,'Porta Camarão Clássica ','(cod: 0608101)','','','','','','',100,6,'catalog/lote123commarcadagua/4a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,43,'2016-02-25 16:25:01','2016-03-02 22:52:21'),(160,'Porta Camarão Modelo 1 Vidro','(cod: 0434601)','','','','','','',100,6,'catalog/lote123commarcadagua/12a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,30,'2016-02-25 16:31:55','2016-03-02 22:56:42'),(161,'Porta Camarão Modelo 5 Vidros ','(cod: 0004690)','','','','','','',100,6,'catalog/lote123commarcadagua/17a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,28,'2016-02-25 16:35:56','2016-03-02 22:58:03'),(162,'Porta Camarão Super Friso 7','(cod: 0436300)','','','','','','',100,6,'catalog/lote123commarcadagua/43a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,52,'2016-02-25 16:38:28','2016-03-02 23:00:39'),(163,'Porta Camarão Lisa ','(cod: 0020460)','','','','','','',100,6,'catalog/lote123commarcadagua/6a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,59,'2016-02-25 16:41:18','2016-03-02 22:53:38'),(164,'Porta Camarão Lisa ','(cod: 0666211)','','','','','','',100,6,'catalog/lote123commarcadagua/6a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,51,'2016-02-25 16:46:05','2016-03-02 22:54:03'),(165,'Porta Camarão Veneziana ','(cod: 0343391)','','','','','','',100,6,'catalog/lote123commarcadagua/41a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,75,'2016-02-25 16:51:23','2016-03-02 23:00:56'),(166,'Porta Camarão Paralela ','(cod: 0016430)','','','','','','',100,6,'catalog/lote123commarcadagua/11a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,30,'2016-02-25 16:54:19','2016-03-02 22:59:44'),(167,'Porta Camarão Montreal','(cod: 0594551)','','','','','','',100,6,'catalog/lote123commarcadagua/10a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,31,'2016-02-25 16:56:47','2016-03-02 22:58:41'),(168,'Porta Camarão Modelo 24 Vidros c/ 2 Almofadas','(cod: 0527011)','','','','','','',100,6,'catalog/lote123commarcadagua/7a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,65,'2016-02-25 16:59:37','2016-03-02 22:57:41'),(169,'Porta Articulada 2/3 Super Friso 7 ','(cod: 0453571)','','','','','','',100,6,'catalog/lote123commarcadagua/59a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,52,'2016-02-25 17:04:12','2016-03-02 22:51:03'),(170,'Porta Articulada 2/3 Lisa ','( cod. 0429860)','','','','','','',100,6,'catalog/lote123commarcadagua/57a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,43,'2016-02-25 17:07:38','2016-03-02 22:49:54'),(171,'Porta Camarão Modelo 2 Espelhos ','(cod: 0001161)','','','','','','',100,6,'catalog/lote123commarcadagua/5a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,33,'2016-02-25 17:13:28','2016-03-02 22:57:26'),(172,'Porta Camarão Modelo 10 Vidros ','(Cod: 0000191)','','','','','','',100,6,'catalog/lote123commarcadagua/3a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,30,'2016-02-25 17:17:15','2016-03-02 22:56:56'),(173,'Porta Camarão 4 Escotilhas MDF ','(cod: 0528091/0529221)','','','','','','',100,6,'catalog/lote123commarcadagua/8a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,30,'2016-02-25 17:20:11','2016-03-02 22:52:02'),(174,'Porta Camarão 4 Escotilhas Fosca','(cod: 0528091/0393141)','','','','','','',100,6,'catalog/lote123commarcadagua/8b.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,42,'2016-02-25 17:23:20','2016-03-02 22:51:47'),(175,'Porta Camarão 4 Escotilhas Cromadas','(cod: 0528091/0393061)','','','','','','',100,6,'catalog/lote123commarcadagua/8c.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,60,'2016-02-25 17:26:19','2016-03-02 22:51:27'),(176,'Porta Maciça Bico Diamante ','(cod: 0248211)','','','','','','',100,6,'catalog/lote123commarcadagua/22a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,29,'2016-02-25 23:37:46','2016-03-04 10:43:01'),(177,'Porta Losango ','(cod: 0059670)','','','','','','',100,6,'catalog/lote123commarcadagua/70a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,21,'2016-02-25 23:48:37','2016-03-02 23:22:55'),(178,'Porta Maciça Couro s/ Visor ','(cod: 0356881)','','','','','','',100,6,'catalog/lote123commarcadagua/25a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,32,'2016-02-25 23:56:01','2016-03-04 10:43:48'),(179,'Porta Maciça Lira c/ Visor ','(cod: 0393731)','','','','','','',100,6,'catalog/lote123commarcadagua/29a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,22,'2016-02-26 00:03:24','2016-03-04 10:44:55'),(180,'Porta Maciça Beca ','(cod: 0378851)','','','','','','',100,6,'catalog/lote123commarcadagua/26a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,26,'2016-02-26 00:26:56','2016-03-04 10:42:34'),(253,'Piso Laminado Eucafloor Cappuccino','','','','','','','',100,6,'catalog/piso_laminado/PISO LAMINADO EUCAFLOOR CAPPUCCINO.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-03-07 02:56:20','2016-03-07 02:57:32'),(181,'Porta Maciça Lindoya ','(cod: 0359471)','','','','','','',100,6,'catalog/lote123commarcadagua/28a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,24,'2016-02-26 00:45:02','2016-03-04 10:44:45'),(182,'Porta Maciça Master','(cod: 0359631)','','','','','','',100,6,'catalog/lote123commarcadagua/24a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,16,'2016-02-26 00:48:15','2016-03-04 19:54:22'),(183,'Porta Lindoya ','(cod:0594631)','','','','','','',100,6,'catalog/lote123commarcadagua/75a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-26 00:50:50','2016-03-02 23:42:47'),(184,'Porta Maciça Mexicana ','(cod:0343201)','','','','','','',100,6,'catalog/lote123commarcadagua/18a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,23,'2016-02-26 00:54:04','2016-03-04 19:53:59'),(185,'Porta Maciça Evidence ','(cod: 0278981)','','','','','','',100,6,'catalog/lote123commarcadagua/19a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,20,'2016-02-26 00:56:54','2016-03-04 10:43:57'),(251,'Piso Engenheirado Muracatiara','','','','','','','',100,6,'catalog/piso_engenheirado/PISO ENGENHEIRADO MURACATIARA.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,7,'2016-03-07 02:52:35','2016-03-07 02:53:49'),(186,'Porta Modelo 2 Espelhos','(cod:004091)','','','','','','',100,6,'catalog/lote123commarcadagua/68a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-26 01:04:28','2016-03-02 23:40:02'),(187,'Porta Maciça Manaus','(cod:0432731)','','','','','','',100,6,'catalog/lote123commarcadagua/21a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,0,1,68,'2016-02-26 01:07:16','2016-03-04 19:54:39'),(188,'Porta Super Friso 9 ','','','','','','','',100,6,'catalog/lote123commarcadagua/47d.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,17,'2016-02-26 01:10:02','2016-03-02 23:43:19'),(189,'Porta Super Friso 9 ','(cod:0601511)','','','','','','',100,6,'catalog/lote123commarcadagua/47d.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,20,'2016-02-26 01:13:37','2016-03-02 23:43:35'),(190,'Porta Maciça BBB-R Arco','(cod: 0340611)','','','','','','',100,6,'catalog/lote123commarcadagua/20a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,28,'2016-02-26 01:25:08','2016-03-04 10:40:29'),(191,'Porta Super Friso 8 ','(cod:0623321)','','','','','','',100,6,'catalog/lote123commarcadagua/52a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,28,'2016-02-26 01:36:17','2016-03-02 23:43:04'),(192,'Porta Modelo 1 Vidro','(cod: 0575331)','','','','','','',100,6,'catalog/lote123commarcadagua/78a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,16,'2016-02-26 01:38:49','2016-03-02 23:39:04'),(193,'Porta Cris ','(cod:0050610)','','','','','','',100,6,'catalog/lote123commarcadagua/77a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,23,'2016-02-26 01:41:47','2016-03-02 23:19:43'),(194,'Porta modelo 5/1','(cod0043830)','','','','','','',100,6,'catalog/lote123commarcadagua/76a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,17,'2016-02-26 01:44:15','2016-03-02 23:40:22'),(195,'Porta Lisa ','(cod:0695151)','','','','','','',100,6,'catalog/lote123commarcadagua/74a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,37,'2016-02-26 01:47:10','2016-03-02 23:21:38'),(196,'Porta Lisa ','(cod: 0585721)','','','','','','',100,6,'catalog/lote123commarcadagua/74a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,25,'2016-02-26 01:50:07','2016-03-02 23:22:20'),(197,'Porta Maciça Magna','(cod: 0393651)','','','','','','',100,6,'catalog/lote123commarcadagua/27a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-26 01:52:33','2016-03-04 19:54:50'),(198,'Porta Donatela ','(cod:0604451)','','','','','','',100,6,'catalog/lote123commarcadagua/79d.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,35,'2016-02-26 01:55:11','2016-03-02 23:20:36'),(199,'Porta Elipse c/Super Friso 7 ','(cod:0602081)','','','','','','',100,6,'catalog/lote123commarcadagua/81d.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,20,'2016-02-26 01:57:43','2016-03-02 23:21:12'),(200,'Porta Maciça BBB-R C/Visor ','(cod:0341421)','','','','','','',100,6,'catalog/lote123commarcadagua/34a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-26 02:00:00','2016-03-02 23:25:08'),(201,'Porta Maciça Oriental','(cod:0388731)','','','','','','',100,6,'catalog/lote123commarcadagua/35a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,15,'2016-02-26 02:03:27','2016-03-04 19:53:32'),(202,'Porta Maciça Solar ','(cod: 0555061)','','','','','','',100,6,'catalog/lote123commarcadagua/36a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-26 02:06:09','2016-03-04 19:51:26'),(203,'Porta Maciça Iriri ','(cod: 0310461)','','','','','','',100,6,'catalog/lote123commarcadagua/37a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,65,'2016-02-26 02:09:24','2016-03-04 10:44:12'),(204,'Porta Maciça Anchieta','(cod: 0310031)','','','','','','',100,6,'catalog/lote123commarcadagua/38a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,36,'2016-02-26 02:16:22','2016-03-04 10:37:11'),(205,'Porta Maciça Realeza c/ Grade ','(cod:0307081)','','','','','','',100,6,'catalog/lote123commarcadagua/33a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,32,'2016-02-26 02:21:23','2016-03-04 19:52:09'),(206,'Porta Maciça Jamaris ','(cod:0551901)','','','','','','',100,6,'catalog/lote123commarcadagua/30a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,32,'2016-02-26 02:23:54','2016-03-04 10:44:22'),(207,'Porta Maciça Quartier ','(cod: 0359551)','','','','','','',100,6,'catalog/lote123commarcadagua/31a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,15,'2016-02-26 02:31:35','2016-03-04 19:53:03'),(208,'Porta Maciça BBB-R ','(cod: 0214581)','','','','','','',100,6,'catalog/lote123commarcadagua/32a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,40,'2016-02-26 02:33:54','2016-03-04 10:39:55'),(209,'Porta Maciça AD 01 ','(cod: 0631421)','','','','','','',100,6,'catalog/lote123commarcadagua/40a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,43,'2016-02-26 02:37:40','2016-03-04 10:37:35'),(210,'Porta Lisa c/ Respiro ','(cod: 0583351)','','','','','','',100,6,'catalog/lote123commarcadagua/50a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,20,'2016-02-26 02:40:47','2016-03-02 23:22:35'),(211,'Porta Maciça Veneziana ','(cod: 0343631)','','','','','','',100,6,'catalog/lote123commarcadagua/45a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,18,'2016-02-26 02:43:34','2016-03-04 10:47:03'),(212,'Porta Vision','(cod: 0605261)','','','','','','',100,6,'catalog/lote123commarcadagua/46d.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,17,'2016-02-26 02:46:29','2016-03-02 23:44:16'),(213,'Porta Modelo Paralela ','(cod:0065210)','','','','','','',100,6,'catalog/lote123commarcadagua/71a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,16,'2016-02-26 02:50:08','2016-03-02 23:40:37'),(252,'Piso Engenheirado Sucupira','','','','','','','',100,6,'catalog/piso_engenheirado/PISO ENGENHEIRADO SUCUPIRA.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,5,'2016-03-07 02:54:02','2016-03-07 02:54:50'),(215,'Puxador Inox DH 2275 Cromado/fosco ','(cod:0576811)','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/95b.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,21,'2016-02-26 02:59:32','2016-03-03 00:16:53'),(216,'Puxador Alumínio Mini Barcelona Preto/Cromado ','(cod: 0415801)','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/104a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,13,'2016-02-26 03:24:55','2016-03-03 00:17:20'),(217,'Puxador Alumínio Alça 2121 Fosco','(cod:0394461)','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/107a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,15,'2016-02-26 03:28:31','2016-03-03 00:28:28'),(218,'Puxador  Inox Ly 232 Cromado ','(cod:0576901)','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/96a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,19,'2016-02-26 03:31:49','2016-03-03 00:16:36'),(219,'Puxador Inox 5060 Cromado ','(cod:0603301)','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/81a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,38,'2016-02-26 03:31:50','2016-03-03 00:17:06'),(220,'Puxador Alumínio Enseada Cromado/Fosco','(cod: 0414591)','','','','','','',100,6,'catalog/ferragensaeroportasmarcadagua/2a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,22,'2016-02-26 03:40:08','2016-03-03 00:28:14'),(227,'Fechadura Digital FR 200 Intelbras 2','','','','','','','',100,6,'catalog/fechadura_digital/FECHADURA DIGITAL FR200 INTELBRAS 2.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-03-07 01:55:36','2016-03-07 01:57:46'),(222,'Portal Pivotante Couro S/ Visor','(Cod: 0356531)','','','','','','',100,6,'catalog/lote123commarcadagua/100a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,29,'2016-02-26 11:23:03','2016-03-03 00:58:04'),(223,'Portal Pivotante Evidence ','(cod:0596921)','','','','','','',100,6,'catalog/lote123commarcadagua/103a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,42,'2016-02-26 11:27:05','2016-03-03 00:59:52'),(224,'Portal Pivotante BBB-R s/ Visor','(Cod: 0359391)','','','','','','',100,6,'catalog/lote123commarcadagua/121a.jpg',0,0,'0.0000',0,0,'2016-02-18','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,1,1,40,'2016-02-26 11:32:14','2016-03-03 00:53:31'),(228,'Fechadura Digital FR 200 Intelbras','','','','','','','',100,6,'catalog/fechadura_digital/FECHADURA DIGITAL FR200 INTELBRAS.jpg',0,1,'0.0000',0,0,'2016-03-07','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,3,'2016-03-07 01:55:54','2016-03-07 01:57:24'),(255,'Piso Laminado Eucafloor Carvalho','','','','','','','',100,6,'catalog/piso_laminado/PISO LAMINADO EUCAFLOOR CARVALHO.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-03-07 02:58:54','2016-03-07 02:59:51'),(256,'Piso Laminado Eucafloor Nogueira Natural','','','','','','','',100,6,'catalog/piso_laminado/PISO LAMINADO EUCAFLOOR NOGUEIRA NATURAL.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,1,'2016-03-07 03:00:07','2016-03-07 03:01:03'),(257,'Piso Laminado Maciço Tauari','','','','','','','',100,6,'catalog/piso_macico/PISO MACICO TAUARI.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-03-07 03:02:01','2016-03-07 03:03:09'),(258,'Piso Estruturado  Carvalho Branco','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO CARVALHO BRANCO.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,6,'2016-03-07 03:05:41','2016-03-07 03:06:59'),(259,'Piso Estruturado Cumaru Chapagne','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO CUMARU CHAMPAGNE.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,7,'2016-03-07 03:07:15','2016-03-07 03:08:47'),(260,'Piso Estruturado Guaiuvira','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO GUAIUVIRA.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,5,'2016-03-07 03:08:55','2016-03-07 03:11:50'),(261,'Piso Estruturado Peroba Mel','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO PEROBA MEL.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,5,'2016-03-07 03:11:58','2016-03-07 03:12:56'),(262,'Piso Estruturado Peroba Royal','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO PEROBA ROYAL.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,4,'2016-03-07 03:13:01','2016-03-07 03:14:05'),(263,'Piso Estruturado Sucupira','','','','','','','',100,6,'catalog/Pisos/PISO ESTRUTURADO SUCUPIRA.jpg',0,1,'0.0000',0,0,'2016-03-04','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,6,'2016-03-07 03:14:20','2016-03-07 03:15:02');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (188,4,'Porta Super Friso 9 ','&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Super Friso 9 ','',''),(189,4,'Porta Super Friso 9 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Semi-Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;Semi-Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Super Friso 9','',''),(190,4,'Porta Maciça BBB-R Arco ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Maciça BBB-R Arco Cedro Arana 82x210 ','',''),(191,4,'Porta Super Friso 8 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Semi-Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;Semi-Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&amp;nbsp;&lt;/div&gt;','','Porta Super Friso 8 ','',''),(192,4,'Porta Modelo 1 Vidro ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha vidros.&lt;/div&gt;','','Porta Modelo 1 Vidro ','',''),(193,4,'Porta Cris','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha vidros.&lt;/div&gt;','','Porta Cris ','',''),(194,4,'Porta modelo 5/1 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha vidros.&lt;/div&gt;','','Porta modelo 5/1 ','',''),(195,4,'Porta Lisa ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Lisa ','',''),(196,4,'Porta Lisa ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Semi - Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta comum acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Lisa ','',''),(197,4,'Porta Maciça Magna ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Magna ','',''),(198,4,'Porta Donatela ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Donatela ','',''),(199,4,'Porta Elipse c/Super Friso 7 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha vidros.&lt;/div&gt;','','Porta Elipse c/Super Friso 7 ','',''),(200,4,'Porta Maciça BBB-R C/Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Maciça BBB-R C/Visor ','',''),(201,4,'Porta Maciça Oriental ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha Vidros.&lt;/div&gt;','','Porta Maciça Oriental ','',''),(202,4,'Porta Maciça Solar ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Solar ','',''),(203,4,'Porta Maciça Iriri ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Iriri ','',''),(204,4,'Porta Maciça Anchieta ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Anchieta','',''),(205,4,'Porta Maciça Realeza c/ Grade ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha Vidros.&lt;/div&gt;','','Porta Maciça Realeza c/ Grade ','',''),(206,4,'Porta Maciça Jamaris ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Lindoya Eucalipto Premium 82x210','',''),(207,4,'Porta Maciça Quartier ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Quartier ','',''),(208,4,'Porta Maciça BBB-R ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Maciça BBB-R ','',''),(209,4,'Porta Maciça AD 01  ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça AD 01 ','',''),(210,4,'Porta Lisa c/ Respiro ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Semi-Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Semi-Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta comum acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Lisa c/ Respiro ','',''),(211,4,'Porta Maciça Veneziana ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Veneziana ','',''),(212,4,'Porta Vision ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta comum acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha Vidros ou Espelho.&lt;/div&gt;','','Porta Vision Espelho ','',''),(213,4,'Porta Modelo Paralela ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha vidros.&lt;/div&gt;','','Porta Modelo Paralela ','',''),(215,4,'Puxador Inox DH 2275 Cromado/fosco ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PUXADOR: INOX&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Puxador para portas, fabricado em AÇO INOX. Resistente a Água e Luz Solar.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*ESTE PRODUTO É VENDIDO EM 2 LADOS (PAR).&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;FICHA TÉCNICA DO PUXADOR:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Material: &amp;nbsp;Aço Inox.&lt;/div&gt;&lt;div&gt;Perfil: Tubular Retangular.&lt;/div&gt;&lt;div&gt;Medida do Perfil em Polegada: &amp;nbsp;&lt;/div&gt;&lt;div&gt;Medida do Perfil em Centímetro: &amp;nbsp;3,5 cm largura x 3,5 cm espessura x 80cm&amp;nbsp;&lt;/div&gt;&lt;div&gt;Formato: Designer tubular reto.&lt;/div&gt;&lt;div&gt;Medidas Disponíveis: 80cm&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PODE SER USADO EM QUE TIPO DE PORTA?&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Portas de madeira pivotantes, convencional ou correr .&lt;/div&gt;&lt;div&gt;ACABAMENTOS:&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Aço Inox Polido: Acabamento Polido feito em alta temperatura, realçando o brilho do metal, ficando com características similares aos acabamentos cromado ou fosco.&amp;nbsp;&lt;/div&gt;','','Puxador Inox DH 2275 Cromado/fosco ','',''),(216,4,'Puxador Alumínio Mini Barcelona Preto/Cromado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PUXADOR: INOX&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Puxador para portas, fabricado em AÇO INOX. Resistente a Água e Luz Solar.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*ESTE PRODUTO É VENDIDO EM 2 LADOS (PAR).&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;FICHA TÉCNICA DO PUXADOR:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Material: &amp;nbsp;Aço Inox.&lt;/div&gt;&lt;div&gt;Perfil: Tubular Retangular.&lt;/div&gt;&lt;div&gt;Medida do Perfil em Polegada: &amp;nbsp;&lt;/div&gt;&lt;div&gt;Medida do Perfil em Centímetro: &amp;nbsp;3,5 cm largura x 3,5 cm espessura x 80cm&amp;nbsp;&lt;/div&gt;&lt;div&gt;Formato: Designer tubular reto.&lt;/div&gt;&lt;div&gt;Medidas Disponíveis: 80cm&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PODE SER USADO EM QUE TIPO DE PORTA?&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Portas de madeira pivotantes, convencional ou correr .&lt;/div&gt;&lt;div&gt;ACABAMENTOS:&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Aço Inox Polido: Acabamento Polido feito em alta temperatura, realçando o brilho do metal, ficando com características similares aos acabamentos cromado ou fosco.&amp;nbsp;&lt;/div&gt;','','Puxador Alumínio Mini Barcelona Preto/Cromado ','',''),(217,4,'Puxador Alumínio Alça 2121 Fosco ','&lt;br&gt;','','Puxador Alumínio Alça 2121 Fosco ','',''),(218,4,'Puxador Inox Ly 232 Cromado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PUXADOR: INOX&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Puxador para portas, fabricado em AÇO INOX. Resistente a Água e Luz Solar.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*ESTE PRODUTO É VENDIDO EM 2 LADOS (PAR).&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;FICHA TÉCNICA DO PUXADOR:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Material: &amp;nbsp;Aço Inox.&lt;/div&gt;&lt;div&gt;Perfil: Tubular&amp;nbsp;&lt;/div&gt;&lt;div&gt;Medida do Perfil em Polegada: &amp;nbsp;&lt;/div&gt;&lt;div&gt;Medida do Perfil em Centímetro: &amp;nbsp;3,5 cm largura x 3,5 cm espessura x 80 cm altura&amp;nbsp;&lt;/div&gt;&lt;div&gt;Formato: Designer curvo.&lt;/div&gt;&lt;div&gt;Medidas Disponíveis: &amp;nbsp;80 cm&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PODE SER USADO EM QUE TIPO DE PORTA?&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Portas de madeira pivotantes, convencional ou correr .&lt;/div&gt;&lt;div&gt;ACABAMENTOS:&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Aço Inox Polido: Acabamento Polido feito em alta temperatura, realçando o brilho do metal, ficando com características similares aos acabamentos cromado ou fosco.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Puxador Inox Ly 232 Cromado ','',''),(219,4,'Puxador Inox 5060 Cromado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PUXADOR: INOX&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Puxador para portas, fabricado em AÇO INOX. Resistente a Água e Luz Solar.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*ESTE PRODUTO É VENDIDO EM 2 LADOS (PAR).&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;FICHA TÉCNICA DO PUXADOR:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Material: &amp;nbsp;Aço Inox.&lt;/div&gt;&lt;div&gt;Perfil: Tubular Retangular.&lt;/div&gt;&lt;div&gt;Medida do Perfil em Polegada: &amp;nbsp;&lt;/div&gt;&lt;div&gt;Medida do Perfil em Centímetro: &amp;nbsp;3,5 cm largura x 3,5 cm espessura x 80cm&amp;nbsp;&lt;/div&gt;&lt;div&gt;Formato: Designer tubular reto.&lt;/div&gt;&lt;div&gt;Medidas Disponíveis: 80cm&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PODE SER USADO EM QUE TIPO DE PORTA?&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Portas de madeira pivotantes, convencional ou correr .&lt;/div&gt;&lt;div&gt;ACABAMENTOS:&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Aço Inox Polido: Acabamento Polido feito em alta temperatura, realçando o brilho do metal, ficando com características similares aos acabamentos cromado ou fosco.&amp;nbsp;&lt;/div&gt;','','Puxador Inox 5060 Cromado ','',''),(220,4,'Puxador Alumínio Enseada Cromado/Fosco ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PUXADOR: ALUMÍNIO&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Puxador para portas, fabricado em Alumínio, &amp;nbsp;Resistente a Água e Luz Solar.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*ESTE PRODUTO É VENDIDO EM PEÇA (UNIDADE).&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;FICHA TÉCNICA DO PUXADOR:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Material: &amp;nbsp;Alumínio&lt;/div&gt;&lt;div&gt;Perfil: barra.&lt;/div&gt;&lt;div&gt;Medida do Perfil em Polegada: &amp;nbsp;&lt;/div&gt;&lt;div&gt;Medida do Perfil em Centímetro: &amp;nbsp;3,5 cm largura x 1,0 cm espessura x 60 ou 80 cm altura&amp;nbsp;&lt;/div&gt;&lt;div&gt;Formato: Designer reto.&lt;/div&gt;&lt;div&gt;Medidas Disponíveis: &amp;nbsp;60 ou 80 cm&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PODE SER USADO EM QUE TIPO DE PORTA?&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Portas de madeira pivotantes, convencional ou camarão .&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;ACABAMENTOS:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Alumínio: Acabamento Polido feito em alta temperatura, realçando o brilho do metal, ficando com características similares aos acabamentos cromado ou fosco.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Puxador Alumínio Enseada Cromado/Fosco ','',''),(222,4,'Portal Pivotante Couro S/ Visor','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente. &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Portal Pivotante Couro S/ Visor','',''),(223,4,'Portal Pivotante Evidence ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente. &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Evidence ','',''),(224,4,'Portal Pivotante BBB-R s/ Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Cedro Arana&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente.&amp;nbsp;&lt;/div&gt;','','Portal Pivotante BBB-R s/ Visor ','',''),(124,4,'Portal Pivotante Roma ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Tauari&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente.&amp;nbsp;&lt;/div&gt;','','Portal Pivotante Roma','',''),(125,4,'Portal Pivotante Demolição ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 7cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente. &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Demolição ','',''),(126,4,'Portal Pivotante Suiça ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente. &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Suiça ','',''),(127,4,'Portal Pivotante Beca s/ Visor','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente. &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Beca s/ Visor','',''),(128,4,'Vitro Capela Pivotante Quadriculado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;','','Vitro Capela Pivotante Quadriculado ','',''),(185,4,'Porta Maciça Evidence ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 82 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&amp;nbsp;&lt;/div&gt;','','Porta Maciça Evidence ','',''),(186,4,'Porta Modelo 2 Espelhos ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha vidro.&lt;/div&gt;','','Porta Modelo 2 Espelhos ','',''),(187,4,'Porta Maciça Manaus ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Manaus ','',''),(225,4,'Piso Estruturado  Amendoim ','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado  Amendoim ','',''),(226,4,'Piso Engenheirado Amendoim ','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Engenheirado Amendoim ','',''),(231,4,'Fechadura 3f Lisa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura 3f Lisa','',''),(232,4,'Fechadura 3f Vincere','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura 3f Vincere','',''),(233,4,'Fechadura Arouca Abitare','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Abitare','',''),(234,4,'Fechadura Arouca Fly','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Fly','',''),(235,4,'Fechadura Arouca Idea','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Idea','',''),(236,4,'Fechadura Arouca Ovo','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Ovo','',''),(237,4,'Fechadura Arouca Plana I','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Plana I','',''),(238,4,'Fechadura Arouca Polo','','','Fechadura Arouca Polo','',''),(239,4,'Fechadura Arouca Stilo','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Stilo','',''),(240,4,'Fechadura Arouca Una','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Una','',''),(241,4,'Fechadura Arouca Victoria','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Arouca Victoria','',''),(242,4,'Fechadura Pado Acqua Star','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Pado Acqua Star','',''),(243,4,'Fechadura Pado Quadra','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Pado Quadra','',''),(244,4,'Fechadura Pado Sara','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Pado Sara','',''),(245,4,'Fechadura Pado Victoria','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Pado Victoria','',''),(246,4,'Rodapé MDF Carvalho Branco Liso 7 CM de largura','&lt;br&gt;','','Rodapé MDF Carvalho Branco Liso 7 CM de largura','',''),(247,4,'Rodapé MDF Branco Liso 7 CM de largura','&lt;br&gt;','','Rodapé MDF Branco Liso 7 CM de largura','',''),(248,4,'Rodapé MDF Carvalho Branco com friso 15 CM de largura','&lt;br&gt;','','Rodapé MDF Carvalho Branco com friso 15 CM de largura','',''),(249,4,'Piso Engenheirado Cumaru','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Engenheirado Cumaru','',''),(250,4,'Piso Engenheirado Guaiuvira','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Engenheirado Guaiuvira','',''),(251,4,'Piso Engenheirado Muracatiara','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Engenheirado Muracatiara','',''),(252,4,'Piso Engenheirado Sucupira','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Engenheirado Sucupira','',''),(253,4,'Piso Laminado Eucafloor Cappuccino','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Laminado Eucafloor Cappuccino','',''),(254,4,'Piso Laminado Eucafloor Carvalho Maiorca','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Laminado Eucafloor Carvalho Maiorca','',''),(255,4,'Piso Laminado Eucafloor Carvalho','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Laminado Eucafloor Carvalho','',''),(256,4,'Piso Laminado Eucafloor Nogueira Natural','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Laminado Eucafloor Nogueira Natural','',''),(257,4,'Piso Laminado Maciço Tauari','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Laminado Maciço Tauari','',''),(258,4,'Piso Estruturado  Carvalho Branco','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado  Carvalho Branco','',''),(259,4,'Piso Estruturado Cumaru Chapagne','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado Cumaru Chapagne','',''),(260,4,'Piso Estruturado  Guaiuvira','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado  Guaiuvira','',''),(261,4,'Piso Estruturado Peroba Mel','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado Peroba Mel','',''),(262,4,'Piso Estruturado Peroba Royal','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado Peroba Royal','',''),(263,4,'Piso Estruturado Sucupira','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Piso Estruturado Sucupira','',''),(142,4,'Porta Correr 1 Escotilha Cromada ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Correr Semi - Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura da folha: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Correr&lt;/div&gt;&lt;div&gt;Preenchimento da porta: Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Película de PVC similar às &amp;nbsp;usadas em envelopamento de carro.&lt;/div&gt;&lt;div&gt;Acompanha : &amp;nbsp;- &amp;nbsp;1 &amp;nbsp;Porta de madeira semi solida&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;- 1 trilho de 1,80 metros e um par de roldanas aparente em alumino&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;- 1 par de escotilhas em alumínio&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;- Não acompanha puxadores, vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;- Não acompanha vidros.&lt;/div&gt;','','Porta Correr 1 Escotilha Cromada ','',''),(143,4,'Porta de Correr Maciça Reta Vidraçada 2F Quadriculada','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha Vidros.&lt;/div&gt;','','Porta de Correr Maciça Reta Vidraçada 2F Quadriculada','',''),(144,4,'Porta Correr Moderna ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Correr Semi - Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura da folha: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Correr&lt;/div&gt;&lt;div&gt;Preenchimento da porta: Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Película de PVC similar às usadas em envelopamento de carro.&lt;/div&gt;&lt;div&gt;Acompanha : &amp;nbsp;- &amp;nbsp;1 &amp;nbsp;Porta de madeira semi solida&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; - 1 trilho de 1,80 &amp;nbsp;metros e um par de roldanas aparente em alumino&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/div&gt;&lt;div&gt;*Não acompanha puxadores, vendido separadamente no site. &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Porta Correr Moderna ','',''),(145,4,'Porta Correr Donatela ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Correr Semi - Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura da folha: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Correr&lt;/div&gt;&lt;div&gt;Preenchimento da porta: Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Película de PVC similar às usadas em envelopamento de carro.&lt;/div&gt;&lt;div&gt;Acompanha : &amp;nbsp;- &amp;nbsp;1 &amp;nbsp;Porta de madeira semi solida&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; - 1 trilho de 1,80 metros e um par de roldanas aparente em alumino&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha puxadores, vendido separadamente no site. &amp;nbsp;&lt;/div&gt;','','Porta Correr Donatela ','',''),(146,4,'Porta Montada Super Friso 7 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PORTA MONTADA COM BATENTE 14 CM ACOMPANHA:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- PORTA SEMI-SOLIDA P. MOGNO / BATENTE 14 CM / DOBRADIÇAS / FECHADURA MGM.&lt;/div&gt;&lt;div&gt;- ABERTURA DIREITA OU ESQUERDA A ESCOLHA DO CLIENTE.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* GUARNIÇÃO VENDIDA SEPARADAMENTE &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Porta Montada Super Friso 7 ','',''),(147,4,'Porta Montada Lisa ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PORTA MONTADA COM BATENTE 10 CM ACOMPANHA:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- PORTA SEMI-SOLIDA P. MOGNO / BATENTE 10 CM / DOBRADIÇAS / FECHADURA MGM.&lt;/div&gt;&lt;div&gt;-ABERTURA DIREITA OU ESQUERDA A ESCOLHA DO CLIENTE.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* GUARNIÇÃO VENDIDA SEPARADAMENTE &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PORTA MONTADA COM BATENTE 14 CM ACOMPANHA:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- PORTA SEMI-SOLIDA P. MOGNO / BATENTE 14 CM / DOBRADIÇAS / FECHADURA MGM.&lt;/div&gt;&lt;div&gt;- ABERTURA DIREITA OU ESQUERDA A ESCOLHA DO CLIENTE.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* GUARNIÇÃO VENDIDA SEPARADAMENTE &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Porta Montada Lisa ','',''),(148,4,'Porta Camarão Losango ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Losango ','',''),(149,4,'Porta Camarão Losango ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Losango ','',''),(150,4,'Porta Camarão Cris ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp;&lt;/div&gt;','','Porta Camarão Cris ','',''),(151,4,'Porta Camarão Milenio','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&amp;nbsp;&lt;/div&gt;','','Porta Camarão Milenio ','',''),(152,4,'Porta Camarão Elipse ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Elipse','',''),(153,4,'Porta Camarão Super Friso 6','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente.&lt;/div&gt;','','Porta Camarão Super Friso 6 ','',''),(154,4,'Porta Articulada 2/3 Modelo 5 Vidros ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Articulada 2/3 Modelo 5 Vidros','',''),(155,4,'Porta Camarão New Berlim ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão New Berlim ','',''),(156,4,'Porta Camarão Modelo 5/1','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Modelo 5/1 ','',''),(157,4,'Porta Camarão Porta Retrato','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Porta Retrato ','',''),(158,4,'Porta Camarão New Uno','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão New Uno','',''),(159,4,'Porta Camarão Clássica ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;','','Porta Camarão Clássica ','',''),(160,4,'Porta Camarão Modelo 1 Vidro','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Modelo 1 Vidro ','',''),(161,4,'Porta Camarão Modelo 5 Vidros ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Modelo 5 Vidros','',''),(162,4,'Porta Camarão Super Friso 7 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;','','Porta Camarão Super Friso 7 ','',''),(163,4,'Porta Camarão Lisa ','&lt;p&gt;&lt;/p&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/p&gt;','','Porta Camarão Lisa','',''),(164,4,'Porta Camarão Lisa ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;','','Porta Camarão Lisa ','',''),(165,4,'Porta Camarão Veneziana ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;','','Porta Camarão Veneziana ','',''),(166,4,'Porta Camarão Paralela ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente no site. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Paralela ','',''),(167,4,'Porta Camarão Montreal ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp;&lt;/div&gt;','','Porta Camarão Montreal ','',''),(168,4,'Porta Camarão Modelo 24 Vidros c/ 2 Almofadas','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Camarão Modelo 24 Vidros c/ 2 Almofadas','',''),(169,4,'Porta Articulada 2/3 Super Friso 7 ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;','','Porta Sólida Articulada 2/3 Super Friso 7 ','',''),(170,4,'Porta Articulada 2/3 Lisa ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62 / 72 / 82 / 92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura: Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta: Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta camarão acompanha folha da porta, trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente.&lt;/div&gt;','','Porta Articulada 2/3 Lisa ','',''),(171,4,'Porta Camarão Modelo 2 Espelhos ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros ou Espelhos.&amp;nbsp;&lt;/div&gt;','','Porta Camarão Modelo 2 Espelhos ','',''),(172,4,'Porta Camarão Modelo 10 Vidros ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Não Acompanha Vidros.&lt;/div&gt;','','Porta Camarão Modelo 10 Vidros ','',''),(173,4,'Porta Camarão 4 Escotilhas MDF ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não Acompanha Vidros&lt;/div&gt;','','Porta Camarão 4 Escotilhas MDF ','',''),(174,4,'Porta Camarão 4 Escotilhas Fosca','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&amp;nbsp;&lt;/div&gt;','','Porta Camarão 4 Escotilhas Fosca','',''),(175,4,'Porta Camarão 4 Escotilhas Cromadas','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 62 / 72 / 82 / 92 &amp;nbsp;(á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da Abertura : Definido na Instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Porta Camarão&lt;/div&gt;&lt;div&gt;Preenchimento da Porta : Sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz &amp;nbsp;ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta camarão acompanha &amp;nbsp;folha da porta , trilho camarão e dobradiças. Não acompanha, batentes, guarnições, trincos e puxadores, produtos vendido separadamente. &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não Acompanha Vidros.&lt;/div&gt;','','Porta Camarão 4 Escotilhas Cromadas ','',''),(176,4,'Porta Maciça Bico Diamante ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Maciça Bico Diamante ','',''),(177,4,'Porta Losango ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Comum Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Losango ','',''),(178,4,'Porta Maciça Couro s/ Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Couro s/ Visor ','',''),(179,4,'Porta Maciça Lira c/ Visor','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros.&lt;/div&gt;','','Porta Maciça Lira c/ Visor ','',''),(180,4,'Porta Maciça Beca ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 82/92/100/110/120 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Beca','',''),(181,4,'Porta Maciça Lindoya ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Lindoya ','',''),(182,4,'Porta Maciça Master ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;','','Porta Maciça Master ','',''),(183,4,'Porta Montreal ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;PORTA COMUM SÓLIDA&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura : 2,10&lt;/div&gt;&lt;div&gt;Espessura : 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta : &amp;nbsp;sólida&lt;/div&gt;&lt;div&gt;Acabamento : Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta comum acompanha apenas folha da porta. Não acompanha , batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha vidros.&lt;/div&gt;','','Porta Montreal ','',''),(184,4,'Porta Maciça Mexicana ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: comum&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&amp;nbsp;&lt;/div&gt;','','Porta Maciça Mexicana ','',''),(101,4,'Porta Maciça Couro c/ Visor ','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/p&gt;&lt;p&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Espessura: 3,4 cm&lt;/p&gt;&lt;p&gt;Lado da abertura: Definido na instalação&lt;/p&gt;&lt;p&gt;Tipo da Porta: comum&lt;/p&gt;&lt;p&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/p&gt;&lt;p&gt;Acabamento: Sem Verniz ou Pintura&lt;/p&gt;&lt;p&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente.&lt;/p&gt;&lt;p&gt;*Não acompanha Vidros.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Maciça Couro c/ Visor ','',''),(106,4,'Porta Veneziana  Correr Reta 3 folhas Quadriculada ','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Madeira Eucalipto Premium&lt;/p&gt;&lt;p&gt;Acompanha baguetes para fixação de vidros&lt;/p&gt;&lt;p&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/p&gt;&lt;p&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/p&gt;&lt;p&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/p&gt;&lt;p&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/p&gt;&lt;p&gt;Não acompanha Vidros.&lt;/p&gt;','','Porta Veneziana  Correr Reta 3 folhas Quadriculada ','',''),(113,4,'Portal Pivotante Beca c/ Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente no site. &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Beca c/ Visor ','',''),(114,4,'Portal Pivotante BBB-R c/ Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Cedro Arana&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente. &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Portal Pivotante BBB-R c/ Visor ','',''),(108,4,'Porta Correr Veneziana 6F Quadriculada Reta','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Madeira Eucalipto Premium&lt;/p&gt;&lt;p&gt;Acompanha baguetes para fixação de vidros&lt;/p&gt;&lt;p&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/p&gt;&lt;p&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/p&gt;&lt;p&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/p&gt;&lt;p&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/p&gt;&lt;p&gt;Não acompanha Vidros.&lt;/p&gt;','','Porta Correr Veneziana 6F Quadriculada Reta ','',''),(112,4,'Porta Maciça Balcão Reta Quadriculada ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;br&gt;&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;&lt;div&gt;Não acompanha Vidros.&lt;/div&gt;','','Porta Maciça Balcão Reta Quadriculada ','',''),(227,4,'Fechadura Digital FR 200 Intelbras 2','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Digital FR 200 Intelbras 2','',''),(228,4,'Fechadura Digital FR 200 Intelbras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura Digital FR 200 Intelbras','',''),(229,4,'Fechadura 3f Audace','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura 3f Audace','',''),(230,4,'Fechadura 3f Design','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Fechadura 3f Design','',''),(109,4,'Porta Correr Couro 2F Reta Quadriculada ','&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 12px; line-height: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 18px;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 12px; line-height: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 18px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;Acompanha baguetes para fixação de vidros&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(146, 146, 146); font-family: source_sans_proregular, Arial; font-size: 18px; line-height: normal;&quot;&gt;Não acompanha Vidros.&lt;/span&gt;&lt;/p&gt;','','Porta  Correr Couro 2F Reta Quadriculada ','',''),(110,4,'Porta Correr Vidraçada 4F Quadriculada ','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Madeira Eucalipto Premium&lt;/p&gt;&lt;p&gt;Acompanha baguetes para fixação de vidros&lt;/p&gt;&lt;p&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/p&gt;&lt;p&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/p&gt;&lt;p&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/p&gt;&lt;p&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/p&gt;&lt;p&gt;Não acompanha Vidros.&lt;/p&gt;','','Porta Correr Vidraçada 4F Quadriculada ','',''),(115,4,'Portal Pivotante BBB-R s/ Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Cedro Arana&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente. &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante BBB-R s/ Visor','',''),(116,4,'Portal Pivotante Bico de Diamante ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente.&lt;/div&gt;','','Portal Pivotante Bico de Diamante ','',''),(117,4,'Portal Pivotante Jamaris ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente.&lt;/div&gt;','','Portal Pivotante Jamaris','',''),(118,4,'Portal Pivotante Manaus ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente. &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Portal Pivotante Manaus Tauari ','',''),(119,4,'Portal Pivotante Lira ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente. &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Portal Pivotante Lira ','',''),(120,4,'Portal Pivotante Bico de Diamante c/ Visor ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Bico de Diamante c/ Visor ','',''),(121,4,'Portal Pivotante Ripado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente. &amp;nbsp;&amp;nbsp;&lt;/div&gt;','','Portal Pivotante Ripado ','',''),(122,4,'Portal Pivotante Couro c/ Visor','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta :Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta:Maciça &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança,produtos vendidos separadamente.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;* Não acompanha Vidros. &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Couro c/ Visor ','',''),(123,4,'Portal Pivotante Solar','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Portal Maciço Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura : 1,17x2,15&lt;/div&gt;&lt;div&gt;Espessura : &amp;nbsp;Porta 3,4cm &amp;nbsp;/ &amp;nbsp;Batente 14 cm&lt;/div&gt;&lt;div&gt;Lado da abertura : Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta : Pivotante&lt;/div&gt;&lt;div&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/div&gt;&lt;div&gt;Acabamento: Sem Verniz ou Pintura&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Obs : A porta &amp;nbsp;pivotante &amp;nbsp;acompanha &amp;nbsp;folha da porta, ferragem pivotante e batente 14cm . Não acompanha, guarnições, puxadores, rolete, trava de segurança, &amp;nbsp;produtos vendidos separadamente. &amp;nbsp; &amp;nbsp;&lt;/div&gt;','','Portal Pivotante Solar Eucalipto ','',''),(82,4,'Porta Maciça Couro 12 Vidros ','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Maciça&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Largura: 62/72/82/92 (á definir pelo cliente)&lt;/p&gt;&lt;p&gt;Altura: 2,10 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Espessura: 3,4 cm&lt;/p&gt;&lt;p&gt;Lado da abertura: Definido na instalação&lt;/p&gt;&lt;p&gt;Tipo da Porta: comum&lt;/p&gt;&lt;p&gt;Preenchimento da porta: &amp;nbsp;Maciça&lt;/p&gt;&lt;p&gt;Acabamento: Sem Verniz ou Pintura&lt;/p&gt;&lt;p&gt;Obs.: A porta maciça acompanha apenas folha da porta. Não acompanha, batentes, guarnições, trincos e puxadores, produto vendidos separadamente no site.&lt;/p&gt;&lt;p&gt;* Não acompanha Vidros.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Porta Maciça Couro 12 Vidros ','',''),(129,4,'Vitro Max ar Reto 02 Módulos Quadriculado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;','','Vitro Max ar Reto 02 Módulos Quadriculado','',''),(130,4,'Vitro Max ar Reto 01 Módulo Quadriculado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;','','Vitro Max ar Reto 01 Módulo Quadriculado ','',''),(131,4,'Janela Correr Veneziana Reta 6F Quadriculada ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;','','Janela Maciça Correr Veneziana Reta 6F Quadriculada A100cmxL120cm Bat14','',''),(132,4,'Vitro de Correr Reto Quadriculado ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Madeira Eucalipto Premium&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha baguetes para fixação de vidros&lt;/div&gt;&lt;div&gt;Proteger os ambientes quanto às infiltrações de ar que possam prejudicar o conforto dos donos do imóvel.&lt;/div&gt;&lt;div&gt;Estancar a possível entrada de água resultada de chuvas, seja essas acompanhadas de ventos ou não.&lt;/div&gt;&lt;div&gt;São resistentes para suportar pressões de ventos fortes e esforços humanos.&lt;/div&gt;&lt;div&gt;Proteger e atenuar a entrada de ruídos externos.&lt;/div&gt;','','Vitro de Correr Reto Quadriculado ','',''),(133,4,'Batente Pivotante Liso Eucalipto Premium ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PRODUTO: &amp;nbsp;Pivotante&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Madeira : Eucalipto Premium&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- 01 jogo de batente, com 03 peças cada jogo, sendo 2 pernas e 1 cabeceira.&lt;/div&gt;&lt;div&gt;- Material seco em estufa e frisado, para evitar o empenamento natural da madeira.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;-Aplicável em vãos para portas pivotantes ou de correr de até 1,20×2,40 m ( As medidas estabelecidas refere-se a medida da porta), largura de 14, ou 20cm a escolha do cliente, espessura de 3 cm.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- No uso do batente para porta pivotante, faz necessário o uso de linha mata luz.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Imagens meramente ilustrativas podendo ter variações na tonalidade e veios da madeira.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Batente Pivotante Liso Eucalipto Premium ','',''),(134,4,'Batente Maciço Camarão Tauari ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PRODUTO: Camarão&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Madeira: Tauari&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- 01 jogo de batente, com 03 peças cada jogo, sendo 2 pernas e 1 cabeceira.&lt;/div&gt;&lt;div&gt;- Material seco em estufa e frisado, para evitar o empenamento natural da madeira.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;-Aplicável em vãos para portas camarão de até 92cm×2,10m (As medidas estabelecidas refere-se a medida da porta), largura de 14 ou 20 cm a escolha do cliente, rebaixo central para porta 3,5 cm, espessura do batente 3 cm.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Imagens meramente ilustrativas podendo ter variações na tonalidade e veios da madeira.&lt;/div&gt;&lt;div&gt;&lt;/div&gt;','','Batente Maciço Camarão Tauari ','',''),(135,4,'Batente Comum Tauari','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;DESCRIÇÃO DO PRODUTO: Comum&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Madeira: Tauari&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;- 01 jogo de batente, com 03 peças cada jogo, sendo 2 pernas e 1 cabeceira.&lt;/div&gt;&lt;div&gt;- Material seco em estufa e frisado, para evitar o empenamento natural da madeira.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;-Aplicável em vãos para portas convencionais, articulada 2/3 ou camarão de até 92cm×2,10m (As medidas estabelecidas refere-se a medida da porta), largura de 14 ou 20 cm a escolha do cliente, rebaixo para porta 3,5 cm, espessura do batente 3 cm.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;*Imagens meramente ilustrativas podendo ter variações na tonalidade e veios da madeira.&lt;/div&gt;','','Batente Comum Tauari ','',''),(136,4,'Guarnição Lisa Canto Vivo Tauari Larg 6cm ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Guarnições de Tauari&amp;nbsp;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A Guarnição de Tauari para porta é um complemento de madeira aparelhada indispensável para deixar os ambientes da sua casa muito mais bonito e elegante.&lt;/div&gt;&lt;div&gt;A guarnição Tauari para porta nada mais é que um tipo de moldura, feita de madeira Tauari seca em estufa que é instalada ao redor da porta de entrada de um cômodo de maneira a dar um acabamento melhor à mesma.&lt;/div&gt;&lt;div&gt;Descrições:&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Não possui angulo de 45º.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Características:&lt;/div&gt;&lt;div&gt;Medidas : 6 cm , 8 cm ou 10cm de largura&lt;/div&gt;&lt;div&gt;2 pernas de 2,15 metros&lt;/div&gt;&lt;div&gt;1 cabeceiras reta de 1,00 metro&lt;/div&gt;&lt;div&gt;Própria para utilizar em Portas em Geral&lt;/div&gt;&lt;div&gt;Kit completo para um lado da porta.&lt;/div&gt;','','Guarnição Lisa Canto Vivo Tauari Larg 6cm ','',''),(137,4,'Guarnição Lisa canto Arredondado  6 cm ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Guarnições de Eucalipto Premium&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;A Guarnição de Eucalipto Premium para porta é um complemento de madeira aparelhada indispensável para deixar os ambientes da sua casa muito mais bonito e elegante.&lt;/div&gt;&lt;div&gt;A guarnição Eucalipto Premium para porta nada mais é que um tipo de moldura, feita de madeira Tauari seca em estufa que é instalada ao redor da porta de entrada de um cômodo de maneira a dar um acabamento melhor à mesma.&lt;/div&gt;&lt;div&gt;Descrições:&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Não possui angulo de 45º.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Características:&lt;/div&gt;&lt;div&gt;Medidas : 6 cm , 8 cm ou 10cm de largura&lt;/div&gt;&lt;div&gt;2 pernas de 2,15 metros&lt;/div&gt;&lt;div&gt;1 cabeceiras reta de 1,00 metro&lt;/div&gt;&lt;div&gt;Própria para utilizar em Portas em Geral&lt;/div&gt;&lt;div&gt;Kit completo para um lado da porta.&lt;/div&gt;','','Guarnição Lisa canto Arredondado  6 cm ','',''),(138,4,'Trilho Camarão Branco','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Características:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha pivot, guia de trilho e parafusos (pronto para montar)&lt;/div&gt;&lt;div&gt;Trilho segue com comprimento de 92 cm x 2,5 cm de largura&lt;/div&gt;&lt;div&gt;Material em alumínio&lt;/div&gt;&lt;div&gt;Acabamento: Branco e Bronze&lt;/div&gt;','','Trilho Camarão Branco','',''),(139,4,'Trilho Camarão Bronze','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Características:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha pivot, guia de trilho e parafusos (pronto para montar)&lt;/div&gt;&lt;div&gt;Trilho segue com comprimento de 92 cm x 2,5 cm de largura&lt;/div&gt;&lt;div&gt;Material em alumínio&lt;/div&gt;&lt;div&gt;Acabamento: Branco e Bronze&lt;/div&gt;','','Trilho Camarão Bronze','',''),(141,4,'Porta Correr 1 Escotilha Fosca  ','&lt;div&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Porta Correr Semi - Sólida&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Largura da folha: 62/72/82/92 (á definir pelo cliente)&lt;/div&gt;&lt;div&gt;Altura: 2,10&lt;/div&gt;&lt;div&gt;Espessura: 3,4 cm&lt;/div&gt;&lt;div&gt;Lado da abertura: Definido na instalação&lt;/div&gt;&lt;div&gt;Tipo da Porta: Correr&lt;/div&gt;&lt;div&gt;Preenchimento da porta: Semi - Sólida&lt;/div&gt;&lt;div&gt;Acabamento: Película de PVC similar às &amp;nbsp;usadas em envelopamento de carro.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Acompanha : &amp;nbsp;- &amp;nbsp;1 &amp;nbsp;Porta de madeira semi solida&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;- 1 trilho de 1,80 metros e um par de roldanas aparente em alumino&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;- 1 par de escotilhas em alumínio&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;- Não acompanha puxadores, vendido separadamente no site.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;- Não acompanha vidros.&amp;nbsp;&lt;/div&gt;','','Porta Correr 1 Escotilha Fosca ','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=486 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (4456,82,'catalog/lote123commarcadagua/39b.jpg',1),(4457,82,'catalog/lote123commarcadagua/39c.jpg',2),(4458,101,'catalog/lote123commarcadagua/23b.jpg',1),(4459,101,'catalog/lote123commarcadagua/23c.jpg',2),(4506,246,'catalog/lote123commarcadagua/97b.jpg',1),(4508,247,'catalog/lote123commarcadagua/97b.jpg',1),(4510,248,'catalog/lote123commarcadagua/97b.jpg',1),(4349,106,'catalog/lote123commarcadagua/116c.jpg',2),(4348,106,'catalog/lote123commarcadagua/116b.jpg',1),(4256,108,'catalog/lote123commarcadagua/117c.jpg',2),(4255,108,'catalog/lote123commarcadagua/117b.jpg',1),(4254,109,'catalog/lote123commarcadagua/127d.jpg',3),(4252,109,'catalog/lote123commarcadagua/127b.jpg',1),(4253,109,'catalog/lote123commarcadagua/127c.jpg',2),(4257,110,'catalog/lote123commarcadagua/118b.jpg',1),(4258,110,'catalog/lote123commarcadagua/118c.jpg',2),(4443,112,'catalog/lote123commarcadagua/128d.jpg',3),(4442,112,'catalog/lote123commarcadagua/128c.jpg',2),(4441,112,'catalog/lote123commarcadagua/128b.jpg',1),(4395,113,'catalog/lote123commarcadagua/98d.jpg',3),(4394,113,'catalog/lote123commarcadagua/98c.jpg',2),(4393,113,'catalog/lote123commarcadagua/98b.jpg',1),(4504,114,'catalog/lote123commarcadagua/120d.jpg',3),(4503,114,'catalog/lote123commarcadagua/120c.jpg',2),(4502,114,'catalog/lote123commarcadagua/120b.jpg',1),(4386,115,'catalog/lote123commarcadagua/121d.jpg',3),(4385,115,'catalog/lote123commarcadagua/121c.jpg',2),(4384,115,'catalog/lote123commarcadagua/121b.jpg',1),(4398,116,'catalog/lote123commarcadagua/99d.jpg',3),(4397,116,'catalog/lote123commarcadagua/99c.jpg',2),(4396,116,'catalog/lote123commarcadagua/99b.jpg',1),(4413,117,'catalog/lote123commarcadagua/108d.jpg',3),(4412,117,'catalog/lote123commarcadagua/108c.jpg',2),(4411,117,'catalog/lote123commarcadagua/108b.jpg',1),(4419,118,'catalog/lote123commarcadagua/105d.jpg',3),(4418,118,'catalog/lote123commarcadagua/105c.jpg',2),(4417,118,'catalog/lote123commarcadagua/105b.jpg',1),(4422,119,'catalog/lote123commarcadagua/104d.jpg',3),(4421,119,'catalog/lote123commarcadagua/104c.jpg',2),(4420,119,'catalog/lote123commarcadagua/104b.jpg',1),(4401,120,'catalog/lote123commarcadagua/85d.jpg',3),(4400,120,'catalog/lote123commarcadagua/85c.jpg',2),(4399,120,'catalog/lote123commarcadagua/85b.jpg',1),(4143,121,'catalog/lote123commarcadagua/119d.jpg',3),(4142,121,'catalog/lote123commarcadagua/119c.jpg',2),(4141,121,'catalog/lote123commarcadagua/119b.jpg',1),(4404,122,'catalog/lote123commarcadagua/101d.jpg',3),(4403,122,'catalog/lote123commarcadagua/101c.jpg',2),(4402,122,'catalog/lote123commarcadagua/101b.jpg',1),(4485,123,'catalog/lote123commarcadagua/102d.jpg',3),(4484,123,'catalog/lote123commarcadagua/102c.jpg',2),(4483,123,'catalog/lote123commarcadagua/102b.jpg',1),(4146,124,'catalog/lote123commarcadagua/122d.jpg',3),(4145,124,'catalog/lote123commarcadagua/122c.jpg',2),(4144,124,'catalog/lote123commarcadagua/122b.jpg',1),(4407,125,'catalog/lote123commarcadagua/124d.jpg',3),(4406,125,'catalog/lote123commarcadagua/124c.jpg',2),(4405,125,'catalog/lote123commarcadagua/124b.jpg',1),(4482,126,'catalog/lote123commarcadagua/123d.jpg',3),(4481,126,'catalog/lote123commarcadagua/123c.jpg',2),(4480,126,'catalog/lote123commarcadagua/123b.jpg',1),(4392,127,'catalog/lote123commarcadagua/86d.jpg',3),(4391,127,'catalog/lote123commarcadagua/86c.jpg',2),(4390,127,'catalog/lote123commarcadagua/86b.jpg',1),(4363,128,'catalog/lote123commarcadagua/87d.jpg',3),(4362,128,'catalog/lote123commarcadagua/87c.jpg',2),(4361,128,'catalog/lote123commarcadagua/87b.jpg',1),(4354,129,'catalog/lote123commarcadagua/88d.jpg',3),(4353,129,'catalog/lote123commarcadagua/88c.jpg',2),(4352,129,'catalog/lote123commarcadagua/88b.jpg',1),(4357,130,'catalog/lote123commarcadagua/89d.jpg',3),(4356,130,'catalog/lote123commarcadagua/89c.jpg',2),(4355,130,'catalog/lote123commarcadagua/89b.jpg',1),(3934,131,'catalog/lote123commarcadagua/91d.jpg',3),(3933,131,'catalog/lote123commarcadagua/91c.jpg',2),(3932,131,'catalog/lote123commarcadagua/91b.jpg',1),(4360,132,'catalog/lote123commarcadagua/90d.jpg',3),(4359,132,'catalog/lote123commarcadagua/90c.jpg',2),(4358,132,'catalog/lote123commarcadagua/90b.jpg',1),(4189,135,'catalog/lote123commarcadagua/96b.jpg',1),(4190,134,'catalog/lote123commarcadagua/94b.jpg',1),(4191,133,'catalog/lote123commarcadagua/93b.jpg',1),(4193,136,'catalog/lote123commarcadagua/95b.jpg',1),(4192,137,'catalog/lote123commarcadagua/97b.jpg',1),(4365,138,'catalog/ferragensaeroportasmarcadagua/127b.jpg',1),(4364,139,'catalog/ferragensaeroportasmarcadagua/128b.jpg',1),(4339,146,'catalog/lote123commarcadagua/84d.jpg',3),(4262,143,'catalog/lote123commarcadagua/115c.jpg',2),(4261,143,'catalog/lote123commarcadagua/115b.jpg',1),(4338,146,'catalog/lote123commarcadagua/84c.jpg',2),(4337,146,'catalog/lote123commarcadagua/84b.jpg',1),(4336,147,'catalog/lote123commarcadagua/82d.jpg',3),(4335,147,'catalog/lote123commarcadagua/82c.jpg',2),(4334,147,'catalog/lote123commarcadagua/82b.jpg',1),(4219,149,'catalog/lote123commarcadagua/15c.jpg',2),(4217,148,'catalog/lote123commarcadagua/15c.jpg',2),(4216,148,'catalog/lote123commarcadagua/15b.jpg',1),(4218,149,'catalog/lote123commarcadagua/15b.jpg',1),(4209,150,'catalog/lote123commarcadagua/16c.jpg',2),(4208,150,'catalog/lote123commarcadagua/16b.jpg',1),(4221,151,'catalog/lote123commarcadagua/13c.jpg',2),(4220,151,'catalog/lote123commarcadagua/13b.jpg',1),(4211,152,'catalog/lote123commarcadagua/14c.jpg',2),(4210,152,'catalog/lote123commarcadagua/14b.jpg',1),(4247,153,'catalog/lote123commarcadagua/44c.jpg',2),(4246,153,'catalog/lote123commarcadagua/44b.jpg',1),(4197,154,'catalog/lote123commarcadagua/53c.jpg',2),(4196,154,'catalog/lote123commarcadagua/53b.jpg',1),(4239,155,'catalog/lote123commarcadagua/1c.jpg',2),(4238,155,'catalog/lote123commarcadagua/1b.jpg',1),(4235,156,'catalog/lote123commarcadagua/9c.jpg',2),(4234,156,'catalog/lote123commarcadagua/9b.jpg',1),(4245,157,'catalog/lote123commarcadagua/42c.jpg',2),(4244,157,'catalog/lote123commarcadagua/42b.jpg',1),(4241,158,'catalog/lote123commarcadagua/2c.jpg',2),(4240,158,'catalog/lote123commarcadagua/2b.jpg',1),(4207,159,'catalog/lote123commarcadagua/4c.jpg',2),(4206,159,'catalog/lote123commarcadagua/4b.jpg',1),(4223,160,'catalog/lote123commarcadagua/12c.jpg',2),(4222,160,'catalog/lote123commarcadagua/12b.jpg',1),(4233,161,'catalog/lote123commarcadagua/17c.jpg',2),(4232,161,'catalog/lote123commarcadagua/17b.jpg',1),(4249,162,'catalog/lote123commarcadagua/43c.jpg',2),(4248,162,'catalog/lote123commarcadagua/43b.jpg',1),(4213,163,'catalog/lote123commarcadagua/6c.jpg',2),(4212,163,'catalog/lote123commarcadagua/6b.jpg',1),(4215,164,'catalog/lote123commarcadagua/6c.jpg',2),(4214,164,'catalog/lote123commarcadagua/6b.jpg',1),(4251,165,'catalog/lote123commarcadagua/41c.jpg',2),(4250,165,'catalog/lote123commarcadagua/41b.jpg',1),(4243,166,'catalog/lote123commarcadagua/11c.jpg',2),(4242,166,'catalog/lote123commarcadagua/11b.jpg',1),(4237,167,'catalog/lote123commarcadagua/10c.jpg',2),(4236,167,'catalog/lote123commarcadagua/10b.jpg',1),(4231,168,'catalog/lote123commarcadagua/15c.jpg',2),(4230,168,'catalog/lote123commarcadagua/7b.jpg',1),(4199,169,'catalog/lote123commarcadagua/59c.jpg',2),(4198,169,'catalog/lote123commarcadagua/59b.jpg',1),(4195,170,'catalog/lote123commarcadagua/57c.jpg',2),(4194,170,'catalog/lote123commarcadagua/57b.jpg',1),(4229,171,'catalog/lote123commarcadagua/5c.jpg',2),(4228,171,'catalog/lote123commarcadagua/5b.jpg',1),(4225,172,'catalog/lote123commarcadagua/3c.jpg',2),(4224,172,'catalog/lote123commarcadagua/3b.jpg',1),(4205,173,'catalog/lote123commarcadagua/73j.jpg',2),(4204,173,'catalog/lote123commarcadagua/8f.jpg',1),(4203,174,'catalog/lote123commarcadagua/73l.jpg',2),(4202,174,'catalog/lote123commarcadagua/8e.jpg',1),(4201,175,'catalog/lote123commarcadagua/73k.jpg',2),(4200,175,'catalog/lote123commarcadagua/8d.jpg',1),(4455,176,'catalog/lote123commarcadagua/22c.jpg',2),(4454,176,'catalog/lote123commarcadagua/22b.jpg',1),(4274,177,'catalog/lote123commarcadagua/70c.jpg',2),(4273,177,'catalog/lote123commarcadagua/70b.jpg',1),(4463,178,'catalog/lote123commarcadagua/25c.jpg',2),(4462,178,'catalog/lote123commarcadagua/25b.jpg',1),(4475,179,'catalog/lote123commarcadagua/29c.jpg',2),(4474,179,'catalog/lote123commarcadagua/29b.jpg',1),(4453,180,'catalog/lote123commarcadagua/26c.jpg',2),(4452,180,'catalog/lote123commarcadagua/26b.jpg',1),(4473,181,'catalog/lote123commarcadagua/28c.jpg',2),(4472,181,'catalog/lote123commarcadagua/28b.jpg',1),(4497,182,'catalog/lote123commarcadagua/24c.jpg',2),(4496,182,'catalog/lote123commarcadagua/24b.jpg',1),(4341,183,'catalog/lote123commarcadagua/75c.jpg',2),(4340,183,'catalog/lote123commarcadagua/75b.jpg',1),(4495,184,'catalog/lote123commarcadagua/18c.jpg',2),(4494,184,'catalog/lote123commarcadagua/18b.jpg',1),(4465,185,'catalog/lote123commarcadagua/19c.jpg',2),(4464,185,'catalog/lote123commarcadagua/19b.jpg',1),(4329,186,'catalog/lote123commarcadagua/68c.jpg',2),(4328,186,'catalog/lote123commarcadagua/68b.jpg',1),(4499,187,'catalog/lote123commarcadagua/21c.jpg',2),(4498,187,'catalog/lote123commarcadagua/21b.jpg',1),(4345,188,'catalog/lote123commarcadagua/47c.jpg',2),(4344,188,'catalog/lote123commarcadagua/47b.jpg',1),(4347,189,'catalog/lote123commarcadagua/47c.jpg',2),(4346,189,'catalog/lote123commarcadagua/47b.jpg',1),(4447,190,'catalog/lote123commarcadagua/20c.jpg',2),(4446,190,'catalog/lote123commarcadagua/20b.jpg',1),(4343,191,'catalog/lote123commarcadagua/52c.jpg',2),(4342,191,'catalog/lote123commarcadagua/52b.jpg',1),(4325,192,'catalog/lote123commarcadagua/78c.jpg',2),(4324,192,'catalog/lote123commarcadagua/78b.jpg',1),(4260,193,'catalog/lote123commarcadagua/77c.jpg',2),(4259,193,'catalog/lote123commarcadagua/77b.jpg',1),(4331,194,'catalog/lote123commarcadagua/76c.jpg',2),(4330,194,'catalog/lote123commarcadagua/76b.jpg',1),(4268,195,'catalog/lote123commarcadagua/74c.jpg',2),(4267,195,'catalog/lote123commarcadagua/74b.jpg',1),(4270,196,'catalog/lote123commarcadagua/74c.jpg',2),(4269,196,'catalog/lote123commarcadagua/74b.jpg',1),(4501,197,'catalog/lote123commarcadagua/27c.jpg',2),(4500,197,'catalog/lote123commarcadagua/27b.jpg',1),(4264,198,'catalog/lote123commarcadagua/79c.jpg',2),(4263,198,'catalog/lote123commarcadagua/79b.jpg',1),(4266,199,'catalog/lote123commarcadagua/81c.jpg',2),(4265,199,'catalog/lote123commarcadagua/81b.jpg',1),(4287,200,'catalog/lote123commarcadagua/34c.jpg',2),(4286,200,'catalog/lote123commarcadagua/34b.jpg',1),(4493,201,'catalog/lote123commarcadagua/35c.jpg',2),(4492,201,'catalog/lote123commarcadagua/35b.jpg',1),(4487,202,'catalog/lote123commarcadagua/36c.jpg',2),(4486,202,'catalog/lote123commarcadagua/36b.jpg',1),(4467,203,'catalog/lote123commarcadagua/37c.jpg',2),(4466,203,'catalog/lote123commarcadagua/37b.jpg',1),(4436,204,'catalog/lote123commarcadagua/38c.jpg',2),(4435,204,'catalog/lote123commarcadagua/38b.jpg',1),(4489,205,'catalog/lote123commarcadagua/33c.jpg',2),(4488,205,'catalog/lote123commarcadagua/33b.jpg',1),(4469,206,'catalog/lote123commarcadagua/30c.jpg',2),(4468,206,'catalog/lote123commarcadagua/30b.jpg',1),(4491,207,'catalog/lote123commarcadagua/31c.jpg',2),(4490,207,'catalog/lote123commarcadagua/31b.jpg',1),(4445,208,'catalog/lote123commarcadagua/32c.jpg',2),(4444,208,'catalog/lote123commarcadagua/32b.jpg',1),(4438,209,'catalog/lote123commarcadagua/40c.jpg',2),(4437,209,'catalog/lote123commarcadagua/40b.jpg',1),(4272,210,'catalog/lote123commarcadagua/50c.jpg',2),(4271,210,'catalog/lote123commarcadagua/50b.jpg',1),(4479,211,'catalog/lote123commarcadagua/45c.jpg',2),(4478,211,'catalog/lote123commarcadagua/45b.jpg',1),(4350,212,'catalog/lote123commarcadagua/46b.jpg',1),(4351,212,'catalog/lote123commarcadagua/46c.jpg',2),(4332,213,'catalog/lote123commarcadagua/71b.jpg',1),(4333,213,'catalog/lote123commarcadagua/71c.jpg',2),(4370,215,'catalog/ferragensaeroportasmarcadagua/95c.jpg',2),(4369,215,'catalog/ferragensaeroportasmarcadagua/95b.jpg',1),(4375,216,'catalog/ferragensaeroportasmarcadagua/104b.jpg',2),(4374,216,'catalog/ferragensaeroportasmarcadagua/104d.jpg',1),(4380,217,'catalog/ferragensaeroportasmarcadagua/107c.jpg',2),(4379,217,'catalog/ferragensaeroportasmarcadagua/107b.jpg',1),(4368,218,'catalog/ferragensaeroportasmarcadagua/96d.jpg',3),(4367,218,'catalog/ferragensaeroportasmarcadagua/96c.jpg',2),(4366,218,'catalog/ferragensaeroportasmarcadagua/96b.jpg',1),(4371,219,'catalog/ferragensaeroportasmarcadagua/81b.jpg',1),(4372,219,'catalog/ferragensaeroportasmarcadagua/81c.jpg',2),(4373,219,'catalog/ferragensaeroportasmarcadagua/81d.jpg',3),(4378,220,'catalog/ferragensaeroportasmarcadagua/2d.jpg',3),(4377,220,'catalog/ferragensaeroportasmarcadagua/2c.jpg',2),(4376,220,'catalog/ferragensaeroportasmarcadagua/2b.jpg',1),(4410,222,'catalog/lote123commarcadagua/100d.jpg',3),(4409,222,'catalog/lote123commarcadagua/100c.jpg',2),(4408,222,'catalog/lote123commarcadagua/100b.jpg',1),(4416,223,'catalog/lote123commarcadagua/103d.jpg',3),(4415,223,'catalog/lote123commarcadagua/103c.jpg',2),(4414,223,'catalog/lote123commarcadagua/103b.jpg',1),(4389,224,'catalog/lote123commarcadagua/121d.jpg',3),(4388,224,'catalog/lote123commarcadagua/121c.jpg',2),(4387,224,'catalog/lote123commarcadagua/121b.jpg',1);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1572 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` VALUES (1515,238,1,0),(1452,112,1,0),(1532,246,1,0),(1519,240,1,0),(1369,110,1,0),(1489,229,1,0),(1365,109,1,0),(1460,101,1,0),(1507,235,1,0),(1526,243,1,0),(1505,234,1,0),(1536,248,1,0),(1510,236,1,0),(1485,228,1,0),(1513,237,1,0),(1502,231,1,0),(1503,233,1,0),(1486,227,1,0),(1494,230,1,0),(1530,245,1,0),(1368,108,1,0),(1540,249,1,0),(1501,232,1,0),(1528,244,1,0),(1459,82,1,0),(1523,242,1,0),(1544,226,1,0),(1534,247,1,0),(1521,241,1,0),(1413,106,1,0),(1431,113,1,0),(1481,114,1,0),(1428,115,1,0),(1432,116,1,0),(1437,117,1,0),(1439,118,1,0),(1440,119,1,0),(1433,120,1,0),(1312,121,1,0),(1434,122,1,0),(1472,123,1,0),(1313,124,1,0),(1435,125,1,0),(1471,126,1,0),(1430,127,1,0),(1418,128,1,0),(1415,129,1,0),(1416,130,1,0),(1213,131,1,0),(1417,132,1,0),(1331,133,1,0),(1330,134,1,0),(1329,135,1,0),(1333,136,1,0),(1332,137,1,0),(1420,138,1,0),(1419,139,1,0),(1543,250,1,0),(1364,141,1,0),(1363,142,1,0),(1371,143,1,0),(1367,144,1,0),(1366,145,1,0),(1408,146,1,0),(1407,147,1,0),(1345,148,1,0),(1346,149,1,0),(1341,150,1,0),(1347,151,1,0),(1342,152,1,0),(1360,153,1,0),(1335,154,1,0),(1356,155,1,0),(1354,156,1,0),(1359,157,1,0),(1357,158,1,0),(1340,159,1,0),(1348,160,1,0),(1353,161,1,0),(1361,162,1,0),(1343,163,1,0),(1344,164,1,0),(1362,165,1,0),(1358,166,1,0),(1355,167,1,0),(1352,168,1,0),(1336,169,1,0),(1334,170,1,0),(1351,171,1,0),(1349,172,1,0),(1339,173,1,0),(1338,174,1,0),(1337,175,1,0),(1458,176,1,0),(1377,177,1,0),(1462,178,1,0),(1468,179,1,0),(1457,180,1,0),(1467,181,1,0),(1478,182,1,0),(1409,183,1,0),(1477,184,1,0),(1463,185,1,0),(1404,186,1,0),(1479,187,1,0),(1411,188,1,0),(1412,189,1,0),(1454,190,1,0),(1410,191,1,0),(1402,192,1,0),(1370,193,1,0),(1405,194,1,0),(1374,195,1,0),(1375,196,1,0),(1480,197,1,0),(1372,198,1,0),(1373,199,1,0),(1383,200,1,0),(1476,201,1,0),(1473,202,1,0),(1464,203,1,0),(1449,204,1,0),(1474,205,1,0),(1465,206,1,0),(1475,207,1,0),(1453,208,1,0),(1450,209,1,0),(1376,210,1,0),(1470,211,1,0),(1414,212,1,0),(1406,213,1,0),(1517,239,1,0),(1422,215,1,0),(1424,216,1,0),(1426,217,1,0),(1421,218,1,0),(1423,219,1,0),(1425,220,1,0),(1559,225,1,0),(1436,222,1,0),(1438,223,1,0),(1429,224,1,0),(1546,251,1,0),(1548,252,1,0),(1550,253,1,0),(1552,254,1,0),(1554,255,1,0),(1556,256,1,0),(1558,257,1,0),(1561,258,1,0),(1563,259,1,0),(1565,260,1,0),(1567,261,1,0),(1569,262,1,0),(1571,263,1,0);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (82,97),(82,98),(101,97),(101,98),(106,97),(106,103),(108,97),(108,103),(109,97),(109,103),(110,97),(110,103),(112,97),(112,105),(113,97),(113,102),(114,97),(114,98),(115,97),(115,102),(116,97),(116,102),(117,97),(117,102),(118,97),(118,102),(119,97),(119,102),(120,97),(120,102),(121,45),(121,54),(122,97),(122,102),(123,45),(123,54),(124,45),(124,54),(125,97),(125,102),(126,45),(126,54),(127,97),(127,102),(128,47),(128,93),(129,47),(129,94),(130,47),(130,94),(131,47),(132,47),(132,95),(133,46),(133,80),(134,46),(134,80),(135,46),(135,80),(136,46),(136,81),(137,46),(137,81),(138,49),(138,71),(139,49),(139,71),(141,97),(141,103),(142,97),(142,103),(143,97),(143,103),(144,97),(144,103),(145,97),(145,103),(146,97),(146,99),(147,97),(147,99),(148,97),(148,101),(149,97),(149,101),(150,97),(150,101),(151,97),(151,101),(152,97),(152,101),(153,97),(153,101),(154,97),(154,104),(155,97),(155,101),(156,97),(156,101),(157,97),(157,101),(158,97),(158,101),(159,97),(159,101),(160,97),(160,101),(161,97),(161,101),(162,97),(162,101),(163,97),(163,101),(164,97),(164,101),(165,97),(165,101),(166,97),(166,101),(167,97),(167,101),(168,97),(168,101),(169,97),(169,104),(170,97),(170,104),(171,97),(171,101),(172,97),(172,101),(173,97),(173,101),(174,97),(174,101),(175,97),(175,101),(176,97),(176,98),(177,97),(177,99),(178,97),(178,98),(179,97),(179,98),(180,97),(180,98),(181,97),(181,98),(182,97),(182,98),(183,97),(183,99),(184,97),(184,98),(185,97),(185,98),(186,97),(186,99),(187,97),(187,98),(188,97),(188,99),(189,97),(189,99),(190,97),(190,98),(191,97),(191,99),(192,97),(192,99),(193,97),(193,99),(194,97),(194,99),(195,97),(195,99),(196,97),(196,99),(197,97),(197,98),(198,97),(198,99),(199,97),(199,99),(200,97),(200,99),(201,97),(201,98),(202,97),(202,98),(203,97),(203,98),(204,97),(204,98),(205,97),(205,98),(206,97),(206,98),(207,97),(207,98),(208,97),(208,98),(209,97),(209,98),(210,97),(210,99),(211,97),(211,98),(212,97),(212,99),(213,97),(213,99),(215,50),(215,91),(216,50),(216,92),(217,50),(217,92),(218,50),(218,91),(219,50),(219,91),(220,50),(220,92),(222,97),(222,102),(223,97),(223,102),(224,97),(224,102),(225,79),(225,84),(226,79),(226,85),(227,78),(227,89),(228,78),(228,89),(229,78),(229,89),(230,78),(230,89),(231,78),(231,89),(232,78),(232,89),(233,78),(233,89),(234,78),(234,89),(235,78),(235,89),(236,78),(236,89),(237,78),(237,89),(238,78),(238,89),(239,78),(239,89),(240,78),(240,89),(241,78),(241,89),(242,78),(242,89),(243,78),(243,89),(244,78),(244,89),(245,78),(245,89),(246,46),(246,82),(247,46),(247,82),(248,46),(248,82),(249,79),(249,85),(250,79),(250,85),(251,79),(251,85),(252,79),(252,85),(253,79),(253,88),(254,79),(254,88),(255,79),(255,88),(256,79),(256,88),(257,79),(257,86),(258,79),(258,84),(259,79),(259,84),(260,79),(260,84),(261,79),(261,84),(262,79),(262,84),(263,79),(263,84);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (240,0,0),(246,0,0),(101,0,0),(235,0,0),(238,0,0),(110,0,0),(229,0,0),(112,0,0),(109,0,0),(243,0,0),(234,0,0),(248,0,0),(236,0,0),(228,0,0),(237,0,0),(231,0,0),(233,0,0),(227,0,0),(230,0,0),(245,0,0),(108,0,0),(249,0,0),(232,0,0),(244,0,0),(82,0,0),(242,0,0),(226,0,0),(247,0,0),(241,0,0),(106,0,0),(113,0,0),(114,0,0),(115,0,0),(116,0,0),(117,0,0),(118,0,0),(119,0,0),(120,0,0),(121,0,0),(122,0,0),(123,0,0),(124,0,0),(125,0,0),(126,0,0),(127,0,0),(128,0,0),(129,0,0),(130,0,0),(131,0,0),(132,0,0),(133,0,0),(134,0,0),(135,0,0),(136,0,0),(137,0,0),(138,0,0),(139,0,0),(250,0,0),(141,0,0),(142,0,0),(143,0,0),(144,0,0),(145,0,0),(146,0,0),(147,0,0),(148,0,0),(149,0,0),(150,0,0),(151,0,0),(152,0,0),(153,0,0),(154,0,0),(155,0,0),(156,0,0),(157,0,0),(158,0,0),(159,0,0),(160,0,0),(161,0,0),(162,0,0),(163,0,0),(164,0,0),(165,0,0),(166,0,0),(167,0,0),(168,0,0),(169,0,0),(170,0,0),(171,0,0),(172,0,0),(173,0,0),(174,0,0),(175,0,0),(176,0,0),(177,0,0),(178,0,0),(179,0,0),(180,0,0),(181,0,0),(182,0,0),(183,0,0),(184,0,0),(185,0,0),(186,0,0),(187,0,0),(188,0,0),(189,0,0),(190,0,0),(191,0,0),(192,0,0),(193,0,0),(194,0,0),(195,0,0),(196,0,0),(197,0,0),(198,0,0),(199,0,0),(200,0,0),(201,0,0),(202,0,0),(203,0,0),(204,0,0),(205,0,0),(206,0,0),(207,0,0),(208,0,0),(209,0,0),(210,0,0),(211,0,0),(212,0,0),(213,0,0),(239,0,0),(215,0,0),(216,0,0),(217,0,0),(218,0,0),(219,0,0),(220,0,0),(225,0,0),(222,0,0),(223,0,0),(224,0,0),(251,0,0),(252,0,0),(253,0,0),(254,0,0),(255,0,0),(256,0,0),(257,0,0),(258,0,0),(259,0,0),(260,0,0),(261,0,0),(262,0,0),(263,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (82,0),(101,0),(106,0),(108,0),(109,0),(110,0),(112,0),(113,0),(114,0),(115,0),(116,0),(117,0),(118,0),(119,0),(120,0),(121,0),(122,0),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(132,0),(133,0),(134,0),(135,0),(136,0),(137,0),(138,0),(139,0),(141,0),(142,0),(143,0),(144,0),(145,0),(146,0),(147,0),(148,0),(149,0),(150,0),(151,0),(152,0),(153,0),(154,0),(155,0),(156,0),(157,0),(158,0),(159,0),(160,0),(161,0),(162,0),(163,0),(164,0),(165,0),(166,0),(167,0),(168,0),(169,0),(170,0),(171,0),(172,0),(173,0),(174,0),(175,0),(176,0),(177,0),(178,0),(179,0),(180,0),(181,0),(182,0),(183,0),(184,0),(185,0),(186,0),(187,0),(188,0),(189,0),(190,0),(191,0),(192,0),(193,0),(194,0),(195,0),(196,0),(197,0),(198,0),(199,0),(200,0),(201,0),(202,0),(203,0),(204,0),(205,0),(206,0),(207,0),(208,0),(209,0),(210,0),(211,0),(212,0),(213,0),(215,0),(216,0),(217,0),(218,0),(219,0),(220,0),(222,0),(223,0),(224,0),(225,0),(226,0),(227,0),(228,0),(229,0),(230,0),(231,0),(232,0),(233,0),(234,0),(235,0),(236,0),(237,0),(238,0),(239,0),(240,0),(241,0),(242,0),(243,0),(244,0),(245,0),(246,0),(247,0),(248,0),(249,0),(250,0),(251,0),(252,0),(253,0),(254,0),(255,0),(256,0),(257,0),(258,0),(259,0),(260,0),(261,0),(262,0),(263,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,4,'Refunded'),(2,4,'Credit Issued'),(3,4,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,4,'Não foi entregue'),(2,4,'Recebi o produto errado'),(3,4,'Produto quebrado ou com avaria'),(5,4,'Outros');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,4,'Pendente'),(3,4,'Completa'),(2,4,'Aguardando Produto');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4980 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','9',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(837,0,'category','category_status','1',0),(158,0,'account','account_status','1',0),(954,0,'affiliate','affiliate_status','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(103,0,'free_checkout','free_checkout_status','1',0),(104,0,'free_checkout','free_checkout_order_status_id','1',0),(4839,0,'config','config_google_analytics','&lt;script type=&quot;text/javascript&quot;&gt;var rl_siteid =\r\n&quot;03e56425-8dd9-4259-8e4e-cb173681d827&quot;;&lt;/script&gt;&lt;script\r\ntype=&quot;text/javascript&quot; src=&quot;//cdn.rlets.com/capture_static/mms/mms.js\r\n[1]&quot; async=&quot;async&quot;&gt;&lt;/script&gt;\r\n\r\n&lt;script&gt;\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-31733021-1\', \'auto\');\r\n   ga(\'require\', \'displayfeatures\'); \r\n  ga(\'send\', \'pageview\');\r\n\r\n&lt;/script&gt;',0),(4838,0,'config','config_error_filename','error.log',0),(4837,0,'config','config_error_log','1',0),(4836,0,'config','config_error_display','1',0),(4835,0,'config','config_compression','0',0),(4834,0,'config','config_encryption','726cdf4d1924f9515241e0d19ee2f4dd',0),(4827,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\\\\\\\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(4833,0,'config','config_password','1',0),(4831,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(4832,0,'config','config_maintenance','0',0),(4829,0,'config','config_file_max_size','300000',0),(4828,0,'config','config_seo_url','0',0),(839,0,'tm_category','tm_category_status','1',0),(4830,0,'config','config_file_ext_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(4826,0,'config','config_shared','0',0),(4825,0,'config','config_secure','0',0),(4824,0,'config','config_fraud_status_id','7',0),(4823,0,'config','config_fraud_score','',0),(4821,0,'config','config_fraud_detection','0',0),(4822,0,'config','config_fraud_key','',0),(4820,0,'config','config_mail_alert','wagnerrazao@gmail.com',0),(4819,0,'config','config_mail','a:7:{s:8:\"protocol\";s:4:\"mail\";s:9:\"parameter\";s:0:\"\";s:13:\"smtp_hostname\";s:0:\"\";s:13:\"smtp_username\";s:0:\"\";s:13:\"smtp_password\";s:0:\"\";s:9:\"smtp_port\";s:0:\"\";s:12:\"smtp_timeout\";s:0:\"\";}',1),(4818,0,'config','config_ftp_status','1',0),(4817,0,'config','config_ftp_root','/',0),(4816,0,'config','config_ftp_password','bhdd2f5e6tg',0),(4815,0,'config','config_ftp_username','aeroportas',0),(4814,0,'config','config_ftp_port','21',0),(4813,0,'config','config_ftp_hostname','localhost',0),(4812,0,'config','config_image_location_height','50',0),(4811,0,'config','config_image_location_width','268',0),(4810,0,'config','config_image_cart_height','47',0),(4809,0,'config','config_image_cart_width','47',0),(4808,0,'config','config_image_wishlist_height','47',0),(4807,0,'config','config_image_wishlist_width','47',0),(4806,0,'config','config_image_compare_height','90',0),(4805,0,'config','config_image_compare_width','90',0),(4804,0,'config','config_image_related_height','248',0),(4801,0,'config','config_image_additional_width','88',0),(4802,0,'config','config_image_additional_height','88',0),(4803,0,'config','config_image_related_width','248',0),(4800,0,'config','config_image_product_height','248',0),(4799,0,'config','config_image_product_width','248',0),(4798,0,'config','config_image_popup_height','800',0),(4797,0,'config','config_image_popup_width','800',0),(4796,0,'config','config_image_thumb_height','800',0),(4795,0,'config','config_image_thumb_width','800',0),(4794,0,'config','config_image_category_height','190',0),(4793,0,'config','config_image_category_width','190',0),(4792,0,'config','config_icon','catalog/Logo_aero-portas.jpg',0),(4791,0,'config','config_logo','catalog/logo.png',0),(4790,0,'config','config_return_status_id','2',0),(4789,0,'config','config_return_id','0',0),(4788,0,'config','config_affiliate_mail','0',0),(4787,0,'config','config_affiliate_id','4',0),(4786,0,'config','config_affiliate_commission','5',0),(4785,0,'config','config_affiliate_auto','0',0),(4784,0,'config','config_affiliate_approval','1',0),(4783,0,'config','config_stock_checkout','0',0),(4782,0,'config','config_stock_warning','0',0),(4781,0,'config','config_stock_display','0',0),(4780,0,'config','config_order_mail','1',0),(4778,0,'config','config_processing_status','a:1:{i:0;s:1:\"2\";}',1),(4779,0,'config','config_complete_status','a:1:{i:0;s:1:\"5\";}',1),(4777,0,'config','config_order_status_id','1',0),(4970,0,'simple','simple_settings','{\"address\":{\"geoIpMode\":1,\"rows\":{\"default\":[{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"1D8\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"1D3\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"1D4\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"1D5\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"1D6\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"1D7\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\",\"$$hashKey\":\"1D9\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"default\",\"masterField\":\"\",\"requireWhen\":{},\"required\":0,\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"1DA\"}]},\"scrollToError\":true},\"addressFormat\":\"{firstname} {lastname}, {city}, {address_1}\",\"checkout\":[{\"agreement\":{\"displayHeader\":true},\"agreementId\":0,\"asapForGuests\":true,\"asapForLogged\":true,\"cart\":{\"displayHeader\":false,\"displayModel\":true,\"maxAmount\":{},\"maxQuantity\":{},\"maxWeight\":{},\"minAmount\":{},\"minQuantity\":{},\"minWeight\":{}},\"comment\":{\"displayHeader\":true,\"label\":{\"en\":\"Comment\",\"ru\":\"Комментарий\",\"pt_br\":\"Comentário\"},\"placeholder\":{\"en\":\"Comment\",\"ru\":\"Комментарий\",\"pt_br\":\"Digite aqui seu comentário\"}},\"customer\":{\"addressSameInit\":true,\"addressSelectionFormat\":\"{firstname} {lastname}, {city}, {address_1}\",\"displayAddressSame\":false,\"displayAddressSelection\":true,\"displayHeader\":true,\"displayLogin\":false,\"displayYouWillRegistered\":false,\"rows\":{\"default\":[{\"displayWhen\":{},\"hideForGuest\":true,\"hideForLogged\":false,\"id\":\"register\",\"masterField\":\"\",\"requireWhen\":{},\"required\":0,\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"04J\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"email\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"04K\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"password\",\"masterField\":\"register\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"04L\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"confirm_password\",\"masterField\":\"register\",\"requireWhen\":{\"1\":false},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"04M\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"04N\"},{\"displayWhen\":{},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"0\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"04O\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\",\"$$hashKey\":\"04P\"},{\"type\":\"field\",\"id\":\"fax\",\"sortOrder\":8,\"$$hashKey\":\"48A\",\"hideForLogged\":false,\"hideForGuest\":false,\"masterField\":\"\",\"displayWhen\":{},\"required\":\"1\",\"requireWhen\":{}}],\"free.free|\":[{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"register\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"3MG\"},{\"displayWhen\":[true,true],\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"email\",\"masterField\":\"register\",\"requireWhen\":{\"1\":true},\"required\":\"2\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"3MH\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"password\",\"masterField\":\"register\",\"requireWhen\":[],\"required\":\"0\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"3MI\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"confirm_password\",\"masterField\":\"register\",\"requireWhen\":{\"1\":false},\"required\":\"0\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"3MJ\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"3MK\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"3ML\"},{\"type\":\"field\",\"id\":\"fax\",\"sortOrder\":7,\"hideForLogged\":false,\"hideForGuest\":false,\"masterField\":\"\",\"displayWhen\":[],\"required\":\"1\",\"requireWhen\":[],\"$$hashKey\":\"3MM\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"3MN\"}],\"free.free|free_checkout\":[{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"register\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"45Y\"},{\"displayWhen\":[true,true],\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"email\",\"masterField\":\"register\",\"requireWhen\":{\"1\":true},\"required\":\"2\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"45Z\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"password\",\"masterField\":\"register\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"460\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"confirm_password\",\"masterField\":\"register\",\"requireWhen\":{\"1\":false},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"461\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"462\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"463\"},{\"type\":\"field\",\"id\":\"fax\",\"sortOrder\":7,\"hideForLogged\":false,\"hideForGuest\":false,\"masterField\":\"\",\"displayWhen\":[],\"required\":\"1\",\"requireWhen\":[],\"$$hashKey\":\"464\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"465\"}]}},\"displayProceedText\":true,\"displayWeight\":false,\"geoIpMode\":1,\"help\":{\"displayHeader\":true},\"helpId\":0,\"leftColumnWidth\":\"\",\"loginType\":\"flat\",\"payment\":{\"displayHeader\":true,\"hideForGuest\":false,\"methods\":{\"free_checkout\":{\"code\":\"free_checkout\",\"title\":{\"pt_br\":\"Pagamento Grátis\"},\"hideForStatuses\":{\"guest\":false,\"logged\":false},\"forGroups\":{},\"forAllGroups\":1,\"forMethods\":{},\"forAllMethods\":1,\"description\":{}},\"cod\":{\"code\":\"cod\",\"title\":{\"pt_br\":\"Pagamento na Entrega\"},\"hideForStatuses\":{\"guest\":false,\"logged\":false},\"forGroups\":{},\"forAllGroups\":1,\"forMethods\":{},\"forAllMethods\":1,\"description\":{}}},\"rows\":{\"|cod\":[],\"|free_checkout\":[],\"|itaushopline\":[],\"|pagseguro\":[]},\"selectFirst\":true,\"displayType\":1},\"paymentAddress\":{\"addressSameInit\":true,\"displayAddressSame\":true,\"displayHeader\":true,\"rows\":{\"default\":[{\"displayWhen\":{},\"hideForGuest\":true,\"hideForLogged\":false,\"id\":\"address_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"0CX\"},{\"displayWhen\":{},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"0\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"0CY\"},{\"displayWhen\":{},\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"0\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"0CZ\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"0D0\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"0D1\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\",\"$$hashKey\":\"0D2\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"0D3\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":9,\"type\":\"field\",\"$$hashKey\":\"0D4\"}]},\"hideForMethods\":{\"free_checkout\":true}},\"rightColumnWidth\":\"\",\"scrollToError\":true,\"scrollToPaymentForm\":true,\"settingsId\":0,\"shipping\":{\"displayHeader\":true,\"hideForGuest\":false,\"methods\":{\"flat\":{\"code\":\"flat\",\"title\":{\"pt_br\":\"Frete Fixo\"},\"methods\":{\"flat.*\":{\"code\":\"flat.*\",\"title\":{\"pt_br\":\"Frete Fixo (flat.*)\"},\"hideForStatuses\":{\"guest\":false,\"logged\":false},\"forGroups\":{},\"forAllGroups\":1,\"forMethods\":{},\"forAllMethods\":1,\"description\":{}}}}},\"rows\":{\"correios.*|\":[],\"correios.40010|\":[],\"correios.41106|\":[],\"flat.*|\":[],\"free.free|\":[]},\"selectFirst\":true,\"displayType\":1},\"shippingAddress\":{\"addressSelectionFormat\":\"{firstname} {lastname}, {city}, {address_1}\",\"displayAddressSelection\":true,\"displayHeader\":true,\"hideForGuest\":false,\"hideForLogged\":false,\"rows\":{\"default\":[{\"displayWhen\":{},\"hideForGuest\":true,\"hideForLogged\":false,\"id\":\"address_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":0,\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"0LK\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"0LL\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"0LM\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"0LN\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"0LO\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"0LP\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\",\"$$hashKey\":\"0LQ\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"0LR\"}],\"free.free|free_checkout\":[{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":false,\"id\":\"address_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"4C6\"},{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"0\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"4C7\"},{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":true,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"0\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"4C8\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"4C9\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\",\"$$hashKey\":\"4CA\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"4CB\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\",\"$$hashKey\":\"4CC\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"4CD\"}]},\"hideForMethods\":{\"free.free\":true},\"combined\":true},\"shipping_address\":{\"hideForGuest\":true,\"hideForLogged\":true},\"steps\":[{\"id\":\"step_0\",\"label\":{\"en\":\"Step 1\"},\"manual\":0,\"template\":\"{left_column}{customer}{shipping_address}{/left_column}{right_column}{cart}{comment}{/right_column}{payment_form}{shipping}{payment}\",\"$$hashKey\":\"03U\"}],\"summary\":{\"displayHeader\":true},\"$$hashKey\":\"025\",\"guestCheckoutDisabled\":false,\"useAutocomplete\":false}],\"colorbox\":true,\"edit\":{\"rows\":{\"default\":[{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"email\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":1,\"type\":\"field\",\"$$hashKey\":\"18Q\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"18R\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"18S\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"18T\"}]},\"scrollToError\":true},\"fields\":[{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"0\",\"source\":\"saved\"},\"description\":{},\"id\":\"register\",\"label\":{\"en\":\"Register account\",\"ru\":\"Зарегистрироваться\",\"pt_br\":\"Deseja se registrar?\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":false,\"customer\":true,\"order\":false},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{},\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getYesNo\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[{\"id\":\"1\",\"text\":\"Sim\",\"$$hashKey\":\"3FS\"},{\"id\":\"0\",\"text\":\"Não\",\"$$hashKey\":\"3FT\"}]},\"$$hashKey\":\"06J\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{\"en\":\"\"},\"id\":\"email\",\"label\":{\"en\":\"Email\",\"ru\":\"Email\",\"pt_br\":\"Email\"},\"mask\":{\"source\":\"saved\"},\"masterField\":\"register\",\"objects\":{\"customer\":true},\"placeholder\":{},\"rules\":{\"api\":{\"enabled\":true,\"errorText\":{\"en\":\"E-Mail Address is already registered!\",\"ru\":\"Адрес уже зарегистрирован!\"},\"filter\":\"register\",\"method\":\"checkEmailForUniqueness\"},\"byLength\":{},\"equal\":{},\"notEmpty\":{},\"regexp\":{\"enabled\":true,\"errorText\":{\"en\":\"E-Mail Address does not appear to be valid!\",\"ru\":\"Некорректный адрес электронной почты!\"},\"value\":\".+@.+\"}},\"saveToComment\":false,\"type\":\"email\",\"valuesList\":{},\"$$hashKey\":\"06K\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getRandomPassword\",\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"password\",\"label\":{\"en\":\"Password\",\"ru\":\"Пароль\",\"pt_br\":\"Senha\"},\"mask\":{\"source\":\"saved\"},\"masterField\":\"register\",\"objects\":{\"customer\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"Password must be between 4 and 20 characters!\",\"ru\":\"Пароль должен быть от 4 до 20 символов!\",\"pt_br\":\"Senha deve ter entre 4 e 20 caracteres\"},\"max\":\"20\",\"min\":\"4\"},\"equal\":{\"enabled\":false,\"errorText\":{\"pt_br\":\"Digite duas vezes a mesma senha\"},\"fieldId\":\"confirm_password\"},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"password\",\"valuesList\":{},\"$$hashKey\":\"06L\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getRandomPassword\",\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"confirm_password\",\"label\":{\"en\":\"Confirm password\",\"ru\":\"Подтвердите пароль\",\"pt_br\":\"Confirme a senha\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":{},\"rules\":{\"api\":{\"enabled\":false,\"errorText\":[]},\"byLength\":{\"enabled\":false,\"errorText\":{\"pt_br\":\"Senha não confere\"},\"min\":\"Senha muito curta\",\"max\":\"Senha muito longa\"},\"equal\":{\"enabled\":true,\"errorText\":{\"en\":\"Password confirmation does not match password!\",\"ru\":\"Подтверждение пароля не соответствует паролю!\",\"pt_br\":\"A senha deve ser digitada duas vezes\"},\"fieldId\":\"password\"},\"notEmpty\":{\"enabled\":false,\"errorText\":{\"pt_br\":\"Digite a senha\"}},\"regexp\":{}},\"saveToComment\":false,\"type\":\"password\",\"valuesList\":{},\"$$hashKey\":\"06M\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"1\",\"source\":\"saved\"},\"description\":{},\"id\":\"newsletter\",\"label\":{\"en\":\"Subscribe\",\"ru\":\"Подписаться на новости\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{},\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getYesNo\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[{\"id\":\"1\",\"text\":\"Sim\",\"$$hashKey\":\"40M\"},{\"id\":\"0\",\"text\":\"Não\",\"$$hashKey\":\"40N\"}]},\"$$hashKey\":\"05P\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getDefaultGroup\",\"saved\":\"\",\"source\":\"model\"},\"description\":{},\"id\":\"customer_group_id\",\"label\":{\"en\":\"Customer group\",\"ru\":\"Группа покупателя\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{},\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getCustomerGroups\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[{\"id\":\"1\",\"text\":\"Default\"}]},\"$$hashKey\":\"05Q\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"firstname\",\"label\":{\"en\":\"Firstname\",\"ru\":\"Имя\",\"pt_br\":\"Nome\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true,\"customer\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"First Name must be between 1 and 32 characters!\",\"ru\":\"Имя должно быть от 1 до 32 символов!\"},\"max\":\"32\",\"min\":\"1\"},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06N\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"lastname\",\"label\":{\"en\":\"Lastname\",\"ru\":\"Фамилия\",\"pt_br\":\"Empresa\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true,\"customer\":true},\"placeholder\":{\"en\":\"\"},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"Last Name must be between 1 and 32 characters!\",\"ru\":\"Фамилия должна быть от 1 до 32 символов!\"},\"max\":\"32\",\"min\":\"1\"},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06O\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"telephone\",\"label\":{\"en\":\"Telephone\",\"ru\":\"Телефон\",\"pt_br\":\"Telefone\"},\"mask\":{\"filter\":\"country_id\",\"method\":\"getTelephoneMask\",\"saved\":\"\",\"source\":\"saved\"},\"masterField\":\"\",\"objects\":{\"customer\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"Telephone must be between 3 and 32 characters!\",\"ru\":\"Телефон должен быть от 3 до 32 символов!\"},\"max\":\"32\",\"min\":\"3\"},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"tel\",\"valuesList\":{},\"$$hashKey\":\"06P\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"fax\",\"label\":{\"en\":\"Fax\",\"ru\":\"Факс\",\"pt_br\":\"Loja\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{},\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"valuesList\":{\"pt_br\":[{\"id\":\"1\",\"text\":\"RUA DO GASÔMETRO, 360\",\"$$hashKey\":\"4JB\"},{\"id\":\"2\",\"text\":\"RUA DO GASÔMETRO, 326\",\"$$hashKey\":\"4JC\"},{\"id\":\"3\",\"text\":\"RUA DO GASÔMETRO, 218\",\"$$hashKey\":\"4JD\"},{\"id\":\"4\",\"text\":\"AV. SALGADO FILHO, 1772\",\"$$hashKey\":\"4JE\"},{\"id\":\"5\",\"text\":\"AV. DOS BANDEIRANTES, 4265/85\",\"$$hashKey\":\"4JF\"}]},\"$$hashKey\":\"05R\",\"values\":{\"source\":\"saved\",\"saved\":{\"pt_br\":\"1=RUA DO GASÔMETRO, 360;2=RUA DO GASÔMETRO, 326;3=RUA DO GASÔMETRO, 218;4=AV. SALGADO FILHO, 1772;5=AV. DOS BANDEIRANTES, 4265/85;\"}}},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"company\",\"label\":{\"en\":\"Company\",\"ru\":\"Компания\",\"pt_br\":\"Empresa\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{},\"equal\":{},\"notEmpty\":{\"enabled\":false,\"errorText\":{\"en\":\"\"}},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06Q\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"company_id\",\"label\":{\"en\":\"Company ID\",\"ru\":\"Company ID\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{},\"equal\":{},\"notEmpty\":{\"enabled\":true,\"errorText\":{\"en\":\"Company ID required!\",\"ru\":\"Требуется Company ID!\"}},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06R\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"tax_id\",\"label\":{\"en\":\"Tax ID\",\"ru\":\"Tax ID\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{},\"equal\":{},\"notEmpty\":{},\"regexp\":{},\"unique\":[]},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06S\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"address_1\",\"label\":{\"en\":\"Address 1\",\"ru\":\"Адрес\",\"pt_br\":\"Endereço\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"Address 1 must be between 3 and 128 characters!\",\"ru\":\"Адрес должен быть от 3 до 128 символов!\"},\"max\":\"128\",\"min\":\"3\"},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06T\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"address_2\",\"label\":{\"en\":\"Address 2\",\"ru\":\"Продолжение адреса\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06U\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"city\",\"label\":{\"en\":\"City\",\"ru\":\"Город\",\"pt_br\":\"Cidade\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"City must be between 2 and 128 characters!\",\"ru\":\"Город должен быть от 2 до 128 символов!\"},\"max\":\"128\",\"min\":\"2\"},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06V\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"postcode\",\"label\":{\"en\":\"Postcode\",\"ru\":\"Индекс\",\"pt_br\":\"CEP\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":{},\"rules\":{\"api\":{},\"byLength\":{\"enabled\":true,\"errorText\":{\"en\":\"Postcode must be between 2 and 10 characters!\",\"ru\":\"Индекс должен быть от 2 до 10 символов!\"},\"max\":\"10\",\"min\":\"2\"},\"equal\":{},\"notEmpty\":{},\"regexp\":{}},\"saveToComment\":false,\"type\":\"text\",\"valuesList\":{},\"$$hashKey\":\"06W\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"country_id\",\"label\":{\"en\":\"Country\",\"ru\":\"Страна\",\"pt_br\":\"País\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{\"enabled\":true,\"errorText\":{\"en\":\"Please select a country!\",\"ru\":\"Выберите страну!\"}},\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"values\":{\"method\":\"getCountries\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[{\"id\":\"\",\"text\":\" --- Selecione --- \",\"$$hashKey\":\"3GI\"},{\"id\":\"244\",\"text\":\"Aaland Islands\",\"$$hashKey\":\"3GJ\"},{\"id\":\"1\",\"text\":\"Afghanistan\",\"$$hashKey\":\"3GK\"},{\"id\":\"2\",\"text\":\"Albania\",\"$$hashKey\":\"3GL\"},{\"id\":\"3\",\"text\":\"Algeria\",\"$$hashKey\":\"3GM\"},{\"id\":\"4\",\"text\":\"American Samoa\",\"$$hashKey\":\"3GN\"},{\"id\":\"5\",\"text\":\"Andorra\",\"$$hashKey\":\"3GO\"},{\"id\":\"6\",\"text\":\"Angola\",\"$$hashKey\":\"3GP\"},{\"id\":\"7\",\"text\":\"Anguilla\",\"$$hashKey\":\"3GQ\"},{\"id\":\"8\",\"text\":\"Antarctica\",\"$$hashKey\":\"3GR\"},{\"id\":\"9\",\"text\":\"Antigua and Barbuda\",\"$$hashKey\":\"3GS\"},{\"id\":\"10\",\"text\":\"Argentina\",\"$$hashKey\":\"3GT\"},{\"id\":\"11\",\"text\":\"Armenia\",\"$$hashKey\":\"3GU\"},{\"id\":\"12\",\"text\":\"Aruba\",\"$$hashKey\":\"3GV\"},{\"id\":\"252\",\"text\":\"Ascension Island (British)\",\"$$hashKey\":\"3GW\"},{\"id\":\"13\",\"text\":\"Australia\",\"$$hashKey\":\"3GX\"},{\"id\":\"14\",\"text\":\"Austria\",\"$$hashKey\":\"3GY\"},{\"id\":\"15\",\"text\":\"Azerbaijan\",\"$$hashKey\":\"3GZ\"},{\"id\":\"16\",\"text\":\"Bahamas\",\"$$hashKey\":\"3H0\"},{\"id\":\"17\",\"text\":\"Bahrain\",\"$$hashKey\":\"3H1\"},{\"id\":\"18\",\"text\":\"Bangladesh\",\"$$hashKey\":\"3H2\"},{\"id\":\"19\",\"text\":\"Barbados\",\"$$hashKey\":\"3H3\"},{\"id\":\"20\",\"text\":\"Belarus\",\"$$hashKey\":\"3H4\"},{\"id\":\"21\",\"text\":\"Belgium\",\"$$hashKey\":\"3H5\"},{\"id\":\"22\",\"text\":\"Belize\",\"$$hashKey\":\"3H6\"},{\"id\":\"23\",\"text\":\"Benin\",\"$$hashKey\":\"3H7\"},{\"id\":\"24\",\"text\":\"Bermuda\",\"$$hashKey\":\"3H8\"},{\"id\":\"25\",\"text\":\"Bhutan\",\"$$hashKey\":\"3H9\"},{\"id\":\"26\",\"text\":\"Bolivia\",\"$$hashKey\":\"3HA\"},{\"id\":\"245\",\"text\":\"Bonaire, Sint Eustatius and Saba\",\"$$hashKey\":\"3HB\"},{\"id\":\"27\",\"text\":\"Bosnia and Herzegovina\",\"$$hashKey\":\"3HC\"},{\"id\":\"28\",\"text\":\"Botswana\",\"$$hashKey\":\"3HD\"},{\"id\":\"29\",\"text\":\"Bouvet Island\",\"$$hashKey\":\"3HE\"},{\"id\":\"30\",\"text\":\"Brazil\",\"$$hashKey\":\"3HF\"},{\"id\":\"31\",\"text\":\"British Indian Ocean Territory\",\"$$hashKey\":\"3HG\"},{\"id\":\"32\",\"text\":\"Brunei Darussalam\",\"$$hashKey\":\"3HH\"},{\"id\":\"33\",\"text\":\"Bulgaria\",\"$$hashKey\":\"3HI\"},{\"id\":\"34\",\"text\":\"Burkina Faso\",\"$$hashKey\":\"3HJ\"},{\"id\":\"35\",\"text\":\"Burundi\",\"$$hashKey\":\"3HK\"},{\"id\":\"36\",\"text\":\"Cambodia\",\"$$hashKey\":\"3HL\"},{\"id\":\"37\",\"text\":\"Cameroon\",\"$$hashKey\":\"3HM\"},{\"id\":\"38\",\"text\":\"Canada\",\"$$hashKey\":\"3HN\"},{\"id\":\"251\",\"text\":\"Canary Islands\",\"$$hashKey\":\"3HO\"},{\"id\":\"39\",\"text\":\"Cape Verde\",\"$$hashKey\":\"3HP\"},{\"id\":\"40\",\"text\":\"Cayman Islands\",\"$$hashKey\":\"3HQ\"},{\"id\":\"41\",\"text\":\"Central African Republic\",\"$$hashKey\":\"3HR\"},{\"id\":\"42\",\"text\":\"Chad\",\"$$hashKey\":\"3HS\"},{\"id\":\"43\",\"text\":\"Chile\",\"$$hashKey\":\"3HT\"},{\"id\":\"44\",\"text\":\"China\",\"$$hashKey\":\"3HU\"},{\"id\":\"45\",\"text\":\"Christmas Island\",\"$$hashKey\":\"3HV\"},{\"id\":\"46\",\"text\":\"Cocos (Keeling) Islands\",\"$$hashKey\":\"3HW\"},{\"id\":\"47\",\"text\":\"Colombia\",\"$$hashKey\":\"3HX\"},{\"id\":\"48\",\"text\":\"Comoros\",\"$$hashKey\":\"3HY\"},{\"id\":\"49\",\"text\":\"Congo\",\"$$hashKey\":\"3HZ\"},{\"id\":\"50\",\"text\":\"Cook Islands\",\"$$hashKey\":\"3I0\"},{\"id\":\"51\",\"text\":\"Costa Rica\",\"$$hashKey\":\"3I1\"},{\"id\":\"52\",\"text\":\"Cote D\'Ivoire\",\"$$hashKey\":\"3I2\"},{\"id\":\"53\",\"text\":\"Croatia\",\"$$hashKey\":\"3I3\"},{\"id\":\"54\",\"text\":\"Cuba\",\"$$hashKey\":\"3I4\"},{\"id\":\"246\",\"text\":\"Curacao\",\"$$hashKey\":\"3I5\"},{\"id\":\"55\",\"text\":\"Cyprus\",\"$$hashKey\":\"3I6\"},{\"id\":\"56\",\"text\":\"Czech Republic\",\"$$hashKey\":\"3I7\"},{\"id\":\"237\",\"text\":\"Democratic Republic of Congo\",\"$$hashKey\":\"3I8\"},{\"id\":\"57\",\"text\":\"Denmark\",\"$$hashKey\":\"3I9\"},{\"id\":\"58\",\"text\":\"Djibouti\",\"$$hashKey\":\"3IA\"},{\"id\":\"59\",\"text\":\"Dominica\",\"$$hashKey\":\"3IB\"},{\"id\":\"60\",\"text\":\"Dominican Republic\",\"$$hashKey\":\"3IC\"},{\"id\":\"61\",\"text\":\"East Timor\",\"$$hashKey\":\"3ID\"},{\"id\":\"62\",\"text\":\"Ecuador\",\"$$hashKey\":\"3IE\"},{\"id\":\"63\",\"text\":\"Egypt\",\"$$hashKey\":\"3IF\"},{\"id\":\"64\",\"text\":\"El Salvador\",\"$$hashKey\":\"3IG\"},{\"id\":\"65\",\"text\":\"Equatorial Guinea\",\"$$hashKey\":\"3IH\"},{\"id\":\"66\",\"text\":\"Eritrea\",\"$$hashKey\":\"3II\"},{\"id\":\"67\",\"text\":\"Estonia\",\"$$hashKey\":\"3IJ\"},{\"id\":\"68\",\"text\":\"Ethiopia\",\"$$hashKey\":\"3IK\"},{\"id\":\"69\",\"text\":\"Falkland Islands (Malvinas)\",\"$$hashKey\":\"3IL\"},{\"id\":\"70\",\"text\":\"Faroe Islands\",\"$$hashKey\":\"3IM\"},{\"id\":\"71\",\"text\":\"Fiji\",\"$$hashKey\":\"3IN\"},{\"id\":\"72\",\"text\":\"Finland\",\"$$hashKey\":\"3IO\"},{\"id\":\"74\",\"text\":\"France, Metropolitan\",\"$$hashKey\":\"3IP\"},{\"id\":\"75\",\"text\":\"French Guiana\",\"$$hashKey\":\"3IQ\"},{\"id\":\"76\",\"text\":\"French Polynesia\",\"$$hashKey\":\"3IR\"},{\"id\":\"77\",\"text\":\"French Southern Territories\",\"$$hashKey\":\"3IS\"},{\"id\":\"126\",\"text\":\"FYROM\",\"$$hashKey\":\"3IT\"},{\"id\":\"78\",\"text\":\"Gabon\",\"$$hashKey\":\"3IU\"},{\"id\":\"79\",\"text\":\"Gambia\",\"$$hashKey\":\"3IV\"},{\"id\":\"80\",\"text\":\"Georgia\",\"$$hashKey\":\"3IW\"},{\"id\":\"81\",\"text\":\"Germany\",\"$$hashKey\":\"3IX\"},{\"id\":\"82\",\"text\":\"Ghana\",\"$$hashKey\":\"3IY\"},{\"id\":\"83\",\"text\":\"Gibraltar\",\"$$hashKey\":\"3IZ\"},{\"id\":\"84\",\"text\":\"Greece\",\"$$hashKey\":\"3J0\"},{\"id\":\"85\",\"text\":\"Greenland\",\"$$hashKey\":\"3J1\"},{\"id\":\"86\",\"text\":\"Grenada\",\"$$hashKey\":\"3J2\"},{\"id\":\"87\",\"text\":\"Guadeloupe\",\"$$hashKey\":\"3J3\"},{\"id\":\"88\",\"text\":\"Guam\",\"$$hashKey\":\"3J4\"},{\"id\":\"89\",\"text\":\"Guatemala\",\"$$hashKey\":\"3J5\"},{\"id\":\"256\",\"text\":\"Guernsey\",\"$$hashKey\":\"3J6\"},{\"id\":\"90\",\"text\":\"Guinea\",\"$$hashKey\":\"3J7\"},{\"id\":\"91\",\"text\":\"Guinea-Bissau\",\"$$hashKey\":\"3J8\"},{\"id\":\"92\",\"text\":\"Guyana\",\"$$hashKey\":\"3J9\"},{\"id\":\"93\",\"text\":\"Haiti\",\"$$hashKey\":\"3JA\"},{\"id\":\"94\",\"text\":\"Heard and Mc Donald Islands\",\"$$hashKey\":\"3JB\"},{\"id\":\"95\",\"text\":\"Honduras\",\"$$hashKey\":\"3JC\"},{\"id\":\"96\",\"text\":\"Hong Kong\",\"$$hashKey\":\"3JD\"},{\"id\":\"97\",\"text\":\"Hungary\",\"$$hashKey\":\"3JE\"},{\"id\":\"98\",\"text\":\"Iceland\",\"$$hashKey\":\"3JF\"},{\"id\":\"99\",\"text\":\"India\",\"$$hashKey\":\"3JG\"},{\"id\":\"100\",\"text\":\"Indonesia\",\"$$hashKey\":\"3JH\"},{\"id\":\"101\",\"text\":\"Iran (Islamic Republic of)\",\"$$hashKey\":\"3JI\"},{\"id\":\"102\",\"text\":\"Iraq\",\"$$hashKey\":\"3JJ\"},{\"id\":\"103\",\"text\":\"Ireland\",\"$$hashKey\":\"3JK\"},{\"id\":\"254\",\"text\":\"Isle of Man\",\"$$hashKey\":\"3JL\"},{\"id\":\"104\",\"text\":\"Israel\",\"$$hashKey\":\"3JM\"},{\"id\":\"105\",\"text\":\"Italy\",\"$$hashKey\":\"3JN\"},{\"id\":\"106\",\"text\":\"Jamaica\",\"$$hashKey\":\"3JO\"},{\"id\":\"107\",\"text\":\"Japan\",\"$$hashKey\":\"3JP\"},{\"id\":\"257\",\"text\":\"Jersey\",\"$$hashKey\":\"3JQ\"},{\"id\":\"108\",\"text\":\"Jordan\",\"$$hashKey\":\"3JR\"},{\"id\":\"109\",\"text\":\"Kazakhstan\",\"$$hashKey\":\"3JS\"},{\"id\":\"110\",\"text\":\"Kenya\",\"$$hashKey\":\"3JT\"},{\"id\":\"111\",\"text\":\"Kiribati\",\"$$hashKey\":\"3JU\"},{\"id\":\"113\",\"text\":\"Korea, Republic of\",\"$$hashKey\":\"3JV\"},{\"id\":\"253\",\"text\":\"Kosovo, Republic of\",\"$$hashKey\":\"3JW\"},{\"id\":\"114\",\"text\":\"Kuwait\",\"$$hashKey\":\"3JX\"},{\"id\":\"115\",\"text\":\"Kyrgyzstan\",\"$$hashKey\":\"3JY\"},{\"id\":\"116\",\"text\":\"Lao People\'s Democratic Republic\",\"$$hashKey\":\"3JZ\"},{\"id\":\"117\",\"text\":\"Latvia\",\"$$hashKey\":\"3K0\"},{\"id\":\"118\",\"text\":\"Lebanon\",\"$$hashKey\":\"3K1\"},{\"id\":\"119\",\"text\":\"Lesotho\",\"$$hashKey\":\"3K2\"},{\"id\":\"120\",\"text\":\"Liberia\",\"$$hashKey\":\"3K3\"},{\"id\":\"121\",\"text\":\"Libyan Arab Jamahiriya\",\"$$hashKey\":\"3K4\"},{\"id\":\"122\",\"text\":\"Liechtenstein\",\"$$hashKey\":\"3K5\"},{\"id\":\"123\",\"text\":\"Lithuania\",\"$$hashKey\":\"3K6\"},{\"id\":\"124\",\"text\":\"Luxembourg\",\"$$hashKey\":\"3K7\"},{\"id\":\"125\",\"text\":\"Macau\",\"$$hashKey\":\"3K8\"},{\"id\":\"127\",\"text\":\"Madagascar\",\"$$hashKey\":\"3K9\"},{\"id\":\"128\",\"text\":\"Malawi\",\"$$hashKey\":\"3KA\"},{\"id\":\"129\",\"text\":\"Malaysia\",\"$$hashKey\":\"3KB\"},{\"id\":\"130\",\"text\":\"Maldives\",\"$$hashKey\":\"3KC\"},{\"id\":\"131\",\"text\":\"Mali\",\"$$hashKey\":\"3KD\"},{\"id\":\"132\",\"text\":\"Malta\",\"$$hashKey\":\"3KE\"},{\"id\":\"133\",\"text\":\"Marshall Islands\",\"$$hashKey\":\"3KF\"},{\"id\":\"134\",\"text\":\"Martinique\",\"$$hashKey\":\"3KG\"},{\"id\":\"135\",\"text\":\"Mauritania\",\"$$hashKey\":\"3KH\"},{\"id\":\"136\",\"text\":\"Mauritius\",\"$$hashKey\":\"3KI\"},{\"id\":\"137\",\"text\":\"Mayotte\",\"$$hashKey\":\"3KJ\"},{\"id\":\"138\",\"text\":\"Mexico\",\"$$hashKey\":\"3KK\"},{\"id\":\"139\",\"text\":\"Micronesia, Federated States of\",\"$$hashKey\":\"3KL\"},{\"id\":\"140\",\"text\":\"Moldova, Republic of\",\"$$hashKey\":\"3KM\"},{\"id\":\"141\",\"text\":\"Monaco\",\"$$hashKey\":\"3KN\"},{\"id\":\"142\",\"text\":\"Mongolia\",\"$$hashKey\":\"3KO\"},{\"id\":\"242\",\"text\":\"Montenegro\",\"$$hashKey\":\"3KP\"},{\"id\":\"143\",\"text\":\"Montserrat\",\"$$hashKey\":\"3KQ\"},{\"id\":\"144\",\"text\":\"Morocco\",\"$$hashKey\":\"3KR\"},{\"id\":\"145\",\"text\":\"Mozambique\",\"$$hashKey\":\"3KS\"},{\"id\":\"146\",\"text\":\"Myanmar\",\"$$hashKey\":\"3KT\"},{\"id\":\"147\",\"text\":\"Namibia\",\"$$hashKey\":\"3KU\"},{\"id\":\"148\",\"text\":\"Nauru\",\"$$hashKey\":\"3KV\"},{\"id\":\"149\",\"text\":\"Nepal\",\"$$hashKey\":\"3KW\"},{\"id\":\"150\",\"text\":\"Netherlands\",\"$$hashKey\":\"3KX\"},{\"id\":\"151\",\"text\":\"Netherlands Antilles\",\"$$hashKey\":\"3KY\"},{\"id\":\"152\",\"text\":\"New Caledonia\",\"$$hashKey\":\"3KZ\"},{\"id\":\"153\",\"text\":\"New Zealand\",\"$$hashKey\":\"3L0\"},{\"id\":\"154\",\"text\":\"Nicaragua\",\"$$hashKey\":\"3L1\"},{\"id\":\"155\",\"text\":\"Niger\",\"$$hashKey\":\"3L2\"},{\"id\":\"156\",\"text\":\"Nigeria\",\"$$hashKey\":\"3L3\"},{\"id\":\"157\",\"text\":\"Niue\",\"$$hashKey\":\"3L4\"},{\"id\":\"158\",\"text\":\"Norfolk Island\",\"$$hashKey\":\"3L5\"},{\"id\":\"112\",\"text\":\"North Korea\",\"$$hashKey\":\"3L6\"},{\"id\":\"159\",\"text\":\"Northern Mariana Islands\",\"$$hashKey\":\"3L7\"},{\"id\":\"160\",\"text\":\"Norway\",\"$$hashKey\":\"3L8\"},{\"id\":\"161\",\"text\":\"Oman\",\"$$hashKey\":\"3L9\"},{\"id\":\"162\",\"text\":\"Pakistan\",\"$$hashKey\":\"3LA\"},{\"id\":\"163\",\"text\":\"Palau\",\"$$hashKey\":\"3LB\"},{\"id\":\"247\",\"text\":\"Palestinian Territory, Occupied\",\"$$hashKey\":\"3LC\"},{\"id\":\"164\",\"text\":\"Panama\",\"$$hashKey\":\"3LD\"},{\"id\":\"165\",\"text\":\"Papua New Guinea\",\"$$hashKey\":\"3LE\"},{\"id\":\"166\",\"text\":\"Paraguay\",\"$$hashKey\":\"3LF\"},{\"id\":\"167\",\"text\":\"Peru\",\"$$hashKey\":\"3LG\"},{\"id\":\"168\",\"text\":\"Philippines\",\"$$hashKey\":\"3LH\"},{\"id\":\"169\",\"text\":\"Pitcairn\",\"$$hashKey\":\"3LI\"},{\"id\":\"170\",\"text\":\"Poland\",\"$$hashKey\":\"3LJ\"},{\"id\":\"171\",\"text\":\"Portugal\",\"$$hashKey\":\"3LK\"},{\"id\":\"172\",\"text\":\"Puerto Rico\",\"$$hashKey\":\"3LL\"},{\"id\":\"173\",\"text\":\"Qatar\",\"$$hashKey\":\"3LM\"},{\"id\":\"174\",\"text\":\"Reunion\",\"$$hashKey\":\"3LN\"},{\"id\":\"175\",\"text\":\"Romania\",\"$$hashKey\":\"3LO\"},{\"id\":\"176\",\"text\":\"Russian Federation\",\"$$hashKey\":\"3LP\"},{\"id\":\"177\",\"text\":\"Rwanda\",\"$$hashKey\":\"3LQ\"},{\"id\":\"178\",\"text\":\"Saint Kitts and Nevis\",\"$$hashKey\":\"3LR\"},{\"id\":\"179\",\"text\":\"Saint Lucia\",\"$$hashKey\":\"3LS\"},{\"id\":\"180\",\"text\":\"Saint Vincent and the Grenadines\",\"$$hashKey\":\"3LT\"},{\"id\":\"181\",\"text\":\"Samoa\",\"$$hashKey\":\"3LU\"},{\"id\":\"182\",\"text\":\"San Marino\",\"$$hashKey\":\"3LV\"},{\"id\":\"183\",\"text\":\"Sao Tome and Principe\",\"$$hashKey\":\"3LW\"},{\"id\":\"184\",\"text\":\"Saudi Arabia\",\"$$hashKey\":\"3LX\"},{\"id\":\"185\",\"text\":\"Senegal\",\"$$hashKey\":\"3LY\"},{\"id\":\"243\",\"text\":\"Serbia\",\"$$hashKey\":\"3LZ\"},{\"id\":\"186\",\"text\":\"Seychelles\",\"$$hashKey\":\"3M0\"},{\"id\":\"187\",\"text\":\"Sierra Leone\",\"$$hashKey\":\"3M1\"},{\"id\":\"188\",\"text\":\"Singapore\",\"$$hashKey\":\"3M2\"},{\"id\":\"189\",\"text\":\"Slovak Republic\",\"$$hashKey\":\"3M3\"},{\"id\":\"190\",\"text\":\"Slovenia\",\"$$hashKey\":\"3M4\"},{\"id\":\"191\",\"text\":\"Solomon Islands\",\"$$hashKey\":\"3M5\"},{\"id\":\"192\",\"text\":\"Somalia\",\"$$hashKey\":\"3M6\"},{\"id\":\"193\",\"text\":\"South Africa\",\"$$hashKey\":\"3M7\"},{\"id\":\"194\",\"text\":\"South Georgia &amp; South Sandwich Islands\",\"$$hashKey\":\"3M8\"},{\"id\":\"248\",\"text\":\"South Sudan\",\"$$hashKey\":\"3M9\"},{\"id\":\"195\",\"text\":\"Spain\",\"$$hashKey\":\"3MA\"},{\"id\":\"196\",\"text\":\"Sri Lanka\",\"$$hashKey\":\"3MB\"},{\"id\":\"249\",\"text\":\"St. Barthelemy\",\"$$hashKey\":\"3MC\"},{\"id\":\"197\",\"text\":\"St. Helena\",\"$$hashKey\":\"3MD\"},{\"id\":\"250\",\"text\":\"St. Martin (French part)\",\"$$hashKey\":\"3ME\"},{\"id\":\"198\",\"text\":\"St. Pierre and Miquelon\",\"$$hashKey\":\"3MF\"},{\"id\":\"199\",\"text\":\"Sudan\",\"$$hashKey\":\"3MG\"},{\"id\":\"200\",\"text\":\"Suriname\",\"$$hashKey\":\"3MH\"},{\"id\":\"201\",\"text\":\"Svalbard and Jan Mayen Islands\",\"$$hashKey\":\"3MI\"},{\"id\":\"202\",\"text\":\"Swaziland\",\"$$hashKey\":\"3MJ\"},{\"id\":\"203\",\"text\":\"Sweden\",\"$$hashKey\":\"3MK\"},{\"id\":\"204\",\"text\":\"Switzerland\",\"$$hashKey\":\"3ML\"},{\"id\":\"205\",\"text\":\"Syrian Arab Republic\",\"$$hashKey\":\"3MM\"},{\"id\":\"206\",\"text\":\"Taiwan\",\"$$hashKey\":\"3MN\"},{\"id\":\"207\",\"text\":\"Tajikistan\",\"$$hashKey\":\"3MO\"},{\"id\":\"208\",\"text\":\"Tanzania, United Republic of\",\"$$hashKey\":\"3MP\"},{\"id\":\"209\",\"text\":\"Thailand\",\"$$hashKey\":\"3MQ\"},{\"id\":\"210\",\"text\":\"Togo\",\"$$hashKey\":\"3MR\"},{\"id\":\"211\",\"text\":\"Tokelau\",\"$$hashKey\":\"3MS\"},{\"id\":\"212\",\"text\":\"Tonga\",\"$$hashKey\":\"3MT\"},{\"id\":\"213\",\"text\":\"Trinidad and Tobago\",\"$$hashKey\":\"3MU\"},{\"id\":\"255\",\"text\":\"Tristan da Cunha\",\"$$hashKey\":\"3MV\"},{\"id\":\"214\",\"text\":\"Tunisia\",\"$$hashKey\":\"3MW\"},{\"id\":\"215\",\"text\":\"Turkey\",\"$$hashKey\":\"3MX\"},{\"id\":\"216\",\"text\":\"Turkmenistan\",\"$$hashKey\":\"3MY\"},{\"id\":\"217\",\"text\":\"Turks and Caicos Islands\",\"$$hashKey\":\"3MZ\"},{\"id\":\"218\",\"text\":\"Tuvalu\",\"$$hashKey\":\"3N0\"},{\"id\":\"219\",\"text\":\"Uganda\",\"$$hashKey\":\"3N1\"},{\"id\":\"220\",\"text\":\"Ukraine\",\"$$hashKey\":\"3N2\"},{\"id\":\"221\",\"text\":\"United Arab Emirates\",\"$$hashKey\":\"3N3\"},{\"id\":\"222\",\"text\":\"United Kingdom\",\"$$hashKey\":\"3N4\"},{\"id\":\"223\",\"text\":\"United States\",\"$$hashKey\":\"3N5\"},{\"id\":\"224\",\"text\":\"United States Minor Outlying Islands\",\"$$hashKey\":\"3N6\"},{\"id\":\"225\",\"text\":\"Uruguay\",\"$$hashKey\":\"3N7\"},{\"id\":\"226\",\"text\":\"Uzbekistan\",\"$$hashKey\":\"3N8\"},{\"id\":\"227\",\"text\":\"Vanuatu\",\"$$hashKey\":\"3N9\"},{\"id\":\"228\",\"text\":\"Vatican City State (Holy See)\",\"$$hashKey\":\"3NA\"},{\"id\":\"229\",\"text\":\"Venezuela\",\"$$hashKey\":\"3NB\"},{\"id\":\"230\",\"text\":\"Viet Nam\",\"$$hashKey\":\"3NC\"},{\"id\":\"231\",\"text\":\"Virgin Islands (British)\",\"$$hashKey\":\"3ND\"},{\"id\":\"232\",\"text\":\"Virgin Islands (U.S.)\",\"$$hashKey\":\"3NE\"},{\"id\":\"233\",\"text\":\"Wallis and Futuna Islands\",\"$$hashKey\":\"3NF\"},{\"id\":\"234\",\"text\":\"Western Sahara\",\"$$hashKey\":\"3NG\"},{\"id\":\"235\",\"text\":\"Yemen\",\"$$hashKey\":\"3NH\"},{\"id\":\"238\",\"text\":\"Zambia\",\"$$hashKey\":\"3NI\"},{\"id\":\"239\",\"text\":\"Zimbabwe\",\"$$hashKey\":\"3NJ\"}]},\"$$hashKey\":\"06X\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"zone_id\",\"label\":{\"en\":\"Region / state\",\"ru\":\"Регион\",\"pt_br\":\"Estado\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{\"enabled\":true,\"errorText\":{\"en\":\"Please select a zone!\",\"ru\":\"Выберите регион!\"}},\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"values\":{\"filter\":\"country_id\",\"method\":\"getZones\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[{\"id\":\"\",\"text\":\" --- Selecione --- \",\"$$hashKey\":\"40E\"},{\"id\":0,\"text\":\" --- None --- \",\"$$hashKey\":\"40F\"}]},\"$$hashKey\":\"06Y\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{},\"id\":\"captcha\",\"label\":{\"en\":\"Verification code\",\"ru\":\"Защитный код\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true,\"order\":false},\"placeholder\":{},\"rules\":{\"api\":{\"enabled\":true,\"errorText\":{\"en\":\"Verification code does not match the image!\",\"ru\":\"Защитный код не соответствует изображению!\"},\"method\":\"checkCaptcha\"},\"byLength\":{},\"equal\":{},\"notEmpty\":{\"enabled\":true,\"errorText\":{\"en\":\"Please enter verification code!\",\"ru\":\"Введите защитный код!\"}},\"regexp\":{}},\"saveToComment\":false,\"type\":\"captcha\",\"valuesList\":{},\"$$hashKey\":\"05S\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"filter\":\"address_id\",\"method\":\"isDefaultAddress\",\"saved\":\"\",\"source\":\"model\"},\"description\":{},\"id\":\"default\",\"label\":{\"en\":\"Default address\",\"ru\":\"Основной адрес\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{},\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getYesNo\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[{\"id\":\"1\",\"text\":\"Sim\"},{\"id\":\"0\",\"text\":\"Não\"}]},\"$$hashKey\":\"06Z\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":{},\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getDefaultAddressId\",\"saved\":\"\",\"source\":\"model\"},\"description\":{},\"id\":\"address_id\",\"label\":{\"en\":\"Select address\",\"ru\":\"Выберите адрес\",\"pt_br\":\"Endereço\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":{},\"byLength\":[],\"equal\":{},\"notEmpty\":{},\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"values\":{\"method\":\"getAddresses\",\"saved\":[],\"source\":\"model\"},\"valuesList\":{\"pt_br\":[]},\"$$hashKey\":\"070\"}],\"headers\":[{\"custom\":true,\"id\":\"main\",\"label\":{\"en\":\"Your Personal Details\",\"ru\":\"Основная информация\"},\"$$hashKey\":\"05X\"},{\"custom\":true,\"id\":\"address\",\"label\":{\"en\":\"Your Address\",\"ru\":\"Ваш адрес\"},\"$$hashKey\":\"05Y\"}],\"modules\":[],\"register\":{\"agreementCheckboxInit\":false,\"agreementId\":0,\"displayAgreementCheckbox\":false,\"geoIpMode\":1,\"rows\":{\"default\":[{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"main\",\"masterField\":\"\",\"requireWhen\":{},\"required\":0,\"sortOrder\":1,\"type\":\"header\",\"$$hashKey\":\"0W3\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"email\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\",\"$$hashKey\":\"0W4\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\",\"$$hashKey\":\"0W5\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\",\"$$hashKey\":\"0W6\"},{\"type\":\"field\",\"id\":\"company\",\"sortOrder\":5,\"$$hashKey\":\"3MC\",\"hideForLogged\":false,\"hideForGuest\":false,\"masterField\":\"\",\"displayWhen\":{},\"required\":0,\"requireWhen\":{}},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\",\"$$hashKey\":\"0W7\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address\",\"masterField\":\"\",\"requireWhen\":{},\"required\":0,\"sortOrder\":7,\"type\":\"header\",\"$$hashKey\":\"0W8\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\",\"$$hashKey\":\"0W9\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":9,\"type\":\"field\",\"$$hashKey\":\"0WA\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":10,\"type\":\"field\",\"$$hashKey\":\"0WB\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":11,\"type\":\"field\",\"$$hashKey\":\"0WC\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":{},\"required\":\"1\",\"sortOrder\":12,\"type\":\"field\",\"$$hashKey\":\"0WD\"},{\"displayWhen\":{},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"newsletter\",\"masterField\":\"\",\"requireWhen\":{},\"required\":0,\"sortOrder\":13,\"type\":\"field\",\"$$hashKey\":\"0WE\"}]},\"scrollToError\":true,\"useGeoIp\":false,\"useGoogleApi\":false},\"replaceAddress\":true,\"replaceCart\":true,\"replaceCheckout\":true,\"replaceEdit\":true,\"replaceRegister\":true,\"addressFormats\":{\"1\":{}}}',0),(4978,0,'simple','simple_license','U7D/BAY0PbGOKn9PelrgXnhFMQP3+FN/um7DNw6Y52GxOSyDpxqEsxHR9lmR8tOGyGHf+dlrefkwZHuQTrYdQIddntAaaSvkHhTeUX3FW0rnnGqrMuC4FgzCDWgSdzK1U9T541HQvoxvdGbL8ez3VEvYSV+wHwWin1LBB745/7E=',0),(4979,0,'simple','simple_custom_fields','a:0:{}',1),(4977,0,'simple','simple_module','a:0:{}',1),(4971,0,'simple','simple_address_format','{firstname} {lastname}, {city}, {address_1}',0),(4972,0,'simple','simple_replace_cart','1',0),(4973,0,'simple','simple_replace_checkout','1',0),(4974,0,'simple','simple_replace_register','1',0),(4975,0,'simple','simple_replace_edit','1',0),(4976,0,'simple','simple_replace_address','1',0),(4776,0,'config','config_checkout_id','5',0),(4775,0,'config','config_checkout_guest','1',0),(4774,0,'config','config_cart_weight','1',0),(4773,0,'config','config_api_id','6',0),(4772,0,'config','config_invoice_prefix','AERO-',0),(4771,0,'config','config_account_mail','1',0),(4770,0,'config','config_account_id','3',0),(4769,0,'config','config_login_attempts','5',0),(4767,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(4768,0,'config','config_customer_price','0',0),(4764,0,'config','config_tax_customer','shipping',0),(4765,0,'config','config_customer_online','0',0),(4766,0,'config','config_customer_group_id','1',0),(4763,0,'config','config_tax_default','shipping',0),(4762,0,'config','config_tax','0',0),(4761,0,'config','config_voucher_max','1000',0),(4760,0,'config','config_voucher_min','1',0),(4759,0,'config','config_review_mail','0',0),(4758,0,'config','config_review_guest','0',0),(4757,0,'config','config_review_status','0',0),(4756,0,'config','config_limit_admin','20',0),(4755,0,'config','config_product_description_length','90',0),(4754,0,'config','config_product_limit','30',0),(4753,0,'config','config_product_count','1',0),(4752,0,'config','config_weight_class_id','1',0),(4751,0,'config','config_length_class_id','1',0),(4750,0,'config','config_currency_auto','1',0),(4749,0,'config','config_currency','BRL',0),(4748,0,'config','config_admin_language','pt-br',0),(4747,0,'config','config_language','pt-br',0),(4746,0,'config','config_zone_id','464',0),(4745,0,'config','config_country_id','30',0),(4744,0,'config','config_layout_id','4',0),(4739,0,'config','config_comment','',0),(4740,0,'config','config_meta_title','Aeroportas',0),(4741,0,'config','config_meta_description','Aeroportas',0),(4742,0,'config','config_meta_keyword','',0),(4743,0,'config','config_template','theme504',0),(4737,0,'config','config_image','',0),(4738,0,'config','config_open','',0),(4736,0,'config','config_fax','',0),(4735,0,'config','config_telephone','(11) 5096-1803',0),(4734,0,'config','config_email','supervisor@aeroportas.com.br',0),(4733,0,'config','config_geocode','',0),(4732,0,'config','config_address','Bandeirantes\r\nAv. dos Bandeirantes, 4265/85 - Aeroporto - São Paulo - SP\r\nFones: (11)5096-1803 / 5543-4699',0),(4731,0,'config','config_owner','Aeroportas',0),(4730,0,'config','config_name','Aeroportas',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,4,'In Stock'),(8,4,'Pre-Order'),(5,4,'Out Of Stock'),(6,4,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)','20.0000','P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=2031 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (1857,'category_id=105','balcao'),(834,'category_id=26','pc'),(835,'category_id=27','mac'),(875,'manufacturer_id=8','apple'),(1577,'information_id=4','sobre-nos'),(1898,'category_id=78','fechaduras'),(1896,'category_id=79','pisos'),(1783,'product_id=109','porta-correr-couro-2f-reta-quadriculada'),(1389,'category_id=72','portas-de-correr'),(1899,'category_id=49','ferragens'),(1875,'product_id=127','portal-pivotante-beca-s-visor '),(1786,'product_id=108','porta-correr-veneziana-6F-quadriculada-reta'),(1962,'product_id=233','fechadura-arouca-abitare'),(1132,'checkout/simplecheckout','simplecheckout'),(1133,'account/simpleregister','simpleregister'),(1972,'product_id=237','fechadura-arouca-plana-I'),(1127,'category_id=60',''),(2013,'product_id=255','piso-laminado-eucafloor-carvalho'),(1980,'product_id=241','fechadura-arouca-victoria'),(1982,'product_id=242','fechadura-pado-acqua-star'),(1841,'category_id=65','roldanas'),(876,'manufacturer_id=9','canon'),(878,'manufacturer_id=5','htc'),(877,'manufacturer_id=7','hewlett-packard'),(879,'manufacturer_id=6','palm'),(880,'manufacturer_id=10','sony'),(1574,'information_id=6','politica-de-entrega'),(1573,'information_id=3','privacy'),(1576,'information_id=5','terms'),(845,'common/home',''),(846,'information/contact','contact-us'),(847,'information/sitemap','sitemap'),(848,'product/special','specials'),(849,'product/manufacturer','brands'),(850,'product/compare','compare-products'),(851,'product/search','search'),(852,'checkout/cart','cart'),(853,'checkout/checkout','checkout'),(854,'account/login','login'),(855,'account/logout','logout'),(856,'account/voucher','vouchers'),(857,'account/wishlist','wishlist'),(858,'account/account','my-account'),(859,'account/order','order-history'),(860,'account/newsletter','newsletter'),(861,'account/return/add','return-add'),(862,'account/forgotten','forgot-password'),(863,'account/download','downloads'),(864,'account/return','returns'),(865,'account/transaction','transactions'),(866,'account/register','create-account'),(867,'account/recurring','recurring'),(868,'account/address','address-book'),(869,'account/reward','reward-points'),(870,'affiliate/forgotten','affiliate-forgot-password'),(871,'affiliate/register','create-affiliate-account'),(872,'affiliate/login','affiliate-login'),(873,'affiliate/account','affiliates'),(2009,'product_id=253','piso-laminado-eucafloor-cappuccino'),(1388,'category_id=66','portas-de-abrir'),(2011,'product_id=254','piso-laminado-eucafloor-carvalho-maiorca'),(2007,'product_id=252','piso-engenheirado-sucupira'),(1985,'product_id=243','fechadura-pado-quadra'),(1391,'category_id=74','porta-balcao'),(1833,'category_id=84','estruturado'),(1390,'category_id=73','portas-camarao'),(2015,'product_id=256','piso-laminado-eucafloor-nogueira-natural'),(2017,'product_id=257','piso-laminado-macico-tauari'),(1976,'product_id=239','fechadura-arouca-stilo'),(1978,'product_id=240','fechadura-arouca-una'),(1919,'product_id=82','porta-macica-couro-12-vidros'),(1317,'category_id=70','porta-abrir'),(1987,'product_id=244','fechadura-pado-sara'),(1989,'product_id=245','fechadura-pado-victoria'),(1991,'product_id=246','rodape-mdf-carvalho-branco-liso-7-cm-de-largura'),(1993,'product_id=247','rodape-mdf-branco-liso-7-cm-de-largura'),(1995,'product_id=248','rodape-mdf-carvalho-branco-com-friso-15-cm-de-largura'),(1999,'product_id=249','piso-engenheirado-cumaru'),(2002,'product_id=250','piso-engenheirado-guaiuvira'),(2005,'product_id=251','piso-engenheirado-muracatiara'),(1920,'product_id=101','porta-macica-couro-com-visor'),(1890,'category_id=108','esquadrias-de-aluminio'),(2018,'product_id=225','piso-estruturado -amendoim '),(2003,'product_id=226','piso-engenheirado-amendoim '),(1944,'product_id=228','fechadura-digital-fr-200-Intelbras'),(1948,'product_id=229','fechadura-3f-audace'),(1953,'product_id=230','fechadura-3f-design'),(1831,'product_id=106','porta-veneziana-correr-reta-3-folhas-quadriculada'),(1787,'product_id=110','porta-correr-vidraçada-4f-quadriculada'),(1961,'product_id=231','fechadura-3f-Lisa'),(1912,'product_id=112','porta-macica-balcao-reta-quadriculada'),(1876,'product_id=113','portal-pivotante-beca-com-visor'),(1897,'category_id=50','puxadores'),(1941,'product_id=114','portal-pivotante-bbb-r com-visor'),(1851,'category_id=92','aluminio'),(1873,'product_id=115','portal-pivotante-bbb-r-sem-visor'),(1960,'product_id=232','fechadura-3f-vincere'),(1877,'product_id=116','portal-pivotante-bico-de-diamante'),(1839,'category_id=89','fechaduras-modelos'),(1882,'product_id=117','portal-pivotante-jamaris'),(1838,'category_id=87','vinilico'),(1884,'product_id=118','portal-pivotante-manaus'),(1885,'product_id=119','portal-pivotante-lira'),(1836,'category_id=88','laminado'),(1878,'product_id=120','portal-pivotante-bico-de-diamante-com-visor'),(1698,'product_id=121','portal-pivotante-ripado'),(1837,'category_id=86','macico'),(1879,'product_id=122','portal-pivotante-couro-com-visor'),(1932,'product_id=123','portal-pivotante-solar'),(1834,'category_id=85','engenheirado'),(1699,'product_id=124','portal-pivotante-roma'),(1880,'product_id=125','portal-pivotante-demolição'),(1931,'product_id=126','portal-pivotante-suica'),(1863,'product_id=128','vitro-capela-pivotante-quadriculado'),(1860,'product_id=129','vitro-max-ar-reto-02-modulos-quadriculado'),(1861,'product_id=130','vitro-max-ar-reto-01-modulo-quadriculado'),(1592,'product_id=131','janela-correr-veneziana-reta-6F-quadriculada'),(1842,'category_id=83','dobradicas'),(1862,'product_id=132','vitro-de-correr-reto-quadriculado'),(1750,'product_id=133','batente-pivotante-liso-eucalipto-premium'),(1749,'product_id=134','batente-macico-camarao-tauari'),(1748,'product_id=135','batente-comum-tauari'),(1752,'product_id=136','guarnicao-lisa-canto-vivo-tauari-larg-6cm'),(1969,'product_id=236','fechadura-arouca-ovo'),(1751,'product_id=137','guarnicao-lisa-canto-arredondado-larg-6cm '),(1865,'product_id=138','trilho-camarao-branco'),(1864,'product_id=139','trilho-camarao-bronze'),(1895,'category_id=47','janelas'),(1900,'category_id=46','outros'),(1738,'category_id=44','portas-internas'),(1392,'category_id=75','portas-pivotantes'),(1393,'category_id=76','portas-montadas'),(1782,'product_id=141','porta-correr-1-escotilha-fosca'),(1781,'product_id=142','porta-correr-1-escotilha-cromada'),(1789,'product_id=143','porta-de-correr-macica-reta-vidraçada-2F-quadriculada'),(1858,'category_id=104','articulada'),(1785,'product_id=144','porta-correr-moderna'),(1784,'product_id=145','porta-correr-donatela'),(1826,'product_id=146','porta-montada-super-friso-7'),(1853,'category_id=103','correr'),(1763,'product_id=148','porta-camarao-losango'),(1966,'product_id=235','fechadura-arouca-idea'),(1764,'product_id=149','porta-camarao-losango.'),(1854,'category_id=99','comum-interna'),(1765,'product_id=151','porta-camarao-milenio'),(1761,'product_id=152','porta-camarao-elipse'),(1846,'category_id=96','venezianas'),(1778,'product_id=153','porta-camarao-super-friso-6'),(1754,'product_id=154','porta-articulada-2-3-modelo-5-vidros'),(1974,'product_id=238','fechadura-arouca-polo'),(1774,'product_id=155','porta-camarao-new-berlim'),(1772,'product_id=156','porta-camarao-modelo-5-1'),(1739,'category_id=97',''),(1777,'product_id=157','porta-camarao-porta-retrato'),(1775,'product_id=158','porta-camarao-new-uno'),(1759,'product_id=159','porta-camarao-classica'),(1766,'product_id=160','porta-camarao-modelo-1-vidro'),(1771,'product_id=161','porta-camarao-modelo-5-vidros'),(1788,'product_id=193','porta-cris'),(1779,'product_id=162','porta-camarao-super-friso-7'),(1964,'product_id=234','fechadura-arouca-fly'),(1856,'category_id=101','porta-camarao'),(1762,'product_id=164','porta-camarao-lisa'),(1780,'product_id=165','porta-camarao-veneziana'),(1859,'category_id=98','comum-externa'),(1776,'product_id=166','porta-camarao-paralela'),(1773,'product_id=167','porta-camarao-montreal'),(1770,'product_id=168','porta-camarao-modelo-24-vidros-c-2-Almofadas'),(1755,'product_id=169','porta-articulada-2-3-super-friso-7'),(1753,'product_id=170','porta-articulada-2-3-lisa'),(1769,'product_id=171','porta-camarao-modelo-2-espelhos'),(1767,'product_id=172','porta-camarao-modelo-10-vidros'),(1758,'product_id=173','porta-camarao-4-escotilhas-mdf'),(1757,'product_id=174','porta-camarao-4-escotilhas-fosca'),(1760,'product_id=150','Porta-camarão-cris '),(1756,'product_id=175','porta-camarao-4-escotilhas-cromadas'),(1918,'product_id=176','porta-macica-bico-diamante'),(1795,'product_id=177','porta-losango'),(1847,'category_id=95','vitros'),(1922,'product_id=178','porta-macica-couro-s-visor'),(1928,'product_id=179','porta-macica-lira-c-visor'),(1917,'product_id=180','Porta-macica-beca'),(1945,'product_id=227','fechadura-digital-fr-200-intelbras-2'),(1927,'product_id=181','porta-macica-lindoya'),(1938,'product_id=182','porta-macica-master'),(1849,'category_id=93','capelas'),(1827,'product_id=183','porta-lindoya'),(1937,'product_id=184','porta-macica-mexicana'),(1923,'product_id=185','porta-macica-evidence'),(1822,'product_id=186','porta-modelo-2-espelhos'),(1939,'product_id=187','porta-macica-manaus'),(1829,'product_id=188','porta-super-friso-9-'),(1830,'product_id=189','porta-super-friso-9'),(1914,'product_id=190','porta-macica-bbb-r-arco'),(1852,'category_id=102','pivotante'),(1828,'product_id=191','porta-super-friso-8'),(1848,'category_id=94','max-ar'),(1820,'product_id=192','porta-modelo-1-vidro'),(1823,'product_id=194','porta-modelo-5-1'),(1888,'category_id=106','promocoes'),(1792,'product_id=195','porta-lisa-'),(1825,'product_id=147','Porta-Montada-Lisa '),(1793,'product_id=196','porta-lisa'),(1940,'product_id=197','porta-Macica-magna'),(1790,'product_id=198','porta-donatela'),(1791,'product_id=199','porta-elipse-c-super-friso-7'),(1801,'product_id=200','porta-macica-bbb-r-c-visor'),(1936,'product_id=201','porta-macica-oriental'),(1933,'product_id=202','porta-macica-solar'),(1924,'product_id=203','porta-maciça-iriri'),(1909,'product_id=204','porta-macica-anchieta'),(1934,'product_id=205','porta-macica-realeza-c-grade'),(1925,'product_id=206','porta-macica-jamaris'),(1935,'product_id=207','porta-macica-quartier'),(1913,'product_id=208','porta-macica-bbb-r'),(1910,'product_id=209','porta-macica-ad-01 '),(1794,'product_id=210','porta-lisa-c-respiro'),(1930,'product_id=211','porta-macica-veneziana'),(1832,'product_id=212','porta-vision'),(1850,'category_id=91','inox'),(1824,'product_id=213','porta-modelo-paralela'),(1889,'category_id=107','esquadrias-com-vidro'),(1867,'product_id=215','puxador-inox-dh-2275-cromado-fosco'),(1869,'product_id=216','puxador-alumínio-mini-barcelona-preto-cromado'),(1871,'product_id=217','puxador-aluminio-alca-2121-fosco'),(1866,'product_id=218','puxador-inox-ly-232-cromado'),(1868,'product_id=219','puxado-Inox-5060-cromado '),(1893,'category_id=82','rodape'),(1870,'product_id=220','puxador-aluminio-enseada-cromado-fosco'),(1891,'category_id=80','batentes'),(1892,'category_id=81','guarnicoes'),(1575,'information_id=12','politica-de-troca'),(1572,'information_id=13','garantia-de-produtos'),(1840,'category_id=90','travas'),(1881,'product_id=222','portal-pivotante-couro-s-visor'),(1883,'product_id=223','portal-pivotante-evidence'),(1874,'product_id=224','portal-pivotante-bbb-r-s-visor-'),(1584,'information_id=14','lojas'),(2020,'product_id=258','piso-estruturado-carvalho-branco'),(2022,'product_id=259','piso-estruturado-cumaru-chapagne'),(2024,'product_id=260','piso-estruturado-guaiuvira'),(2026,'product_id=261','piso-estruturado-peroba-mel'),(2028,'product_id=262','piso-estruturado-peroba-royal'),(2030,'product_id=263','piso-estruturado-sucupira');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','d506e055a96c53786e8b88c6f2a4b82cd62b3f77','cee04ecfa','John','Doe','fernando.mendes@webca.com.br','','','189.29.132.82',1,'2016-01-26 16:07:59'),(2,1,'aeroportas','91e1317023f7771435da2144968553e7c8ef9747','cb57932be','aeroportas','aeroportas','','','','189.121.207.18',1,'2016-02-17 23:55:24');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','a:2:{s:6:\"access\";a:196:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:15:\"module/parallax\";i:182;s:11:\"module/html\";i:183;s:18:\"module/tm_category\";i:184;s:15:\"module/tm_fbbox\";i:185;s:15:\"module/tm_fbbox\";i:186;s:17:\"module/bestseller\";i:187;s:13:\"module/latest\";i:188;s:14:\"module/special\";i:189;s:16:\"module/affiliate\";i:190;s:18:\"module/information\";i:191;s:19:\"module/tm_slideshow\";i:192;s:13:\"module/simple\";i:193;s:16:\"module/slideshow\";i:194;s:14:\"module/anylist\";i:195;s:14:\"module/anylist\";}s:6:\"modify\";a:196:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:15:\"module/parallax\";i:182;s:11:\"module/html\";i:183;s:18:\"module/tm_category\";i:184;s:15:\"module/tm_fbbox\";i:185;s:15:\"module/tm_fbbox\";i:186;s:17:\"module/bestseller\";i:187;s:13:\"module/latest\";i:188;s:14:\"module/special\";i:189;s:16:\"module/affiliate\";i:190;s:18:\"module/information\";i:191;s:19:\"module/tm_slideshow\";i:192;s:13:\"module/simple\";i:193;s:16:\"module/slideshow\";i:194;s:14:\"module/anylist\";i:195;s:14:\"module/anylist\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,4,'Christmas'),(7,4,'Birthday'),(8,4,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000'),(5,'2.20460000'),(6,'35.27400000');
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,4,'Kilogram','kg'),(2,4,'Gram','g'),(5,4,'Pound ','lb'),(6,4,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-08 16:58:26
