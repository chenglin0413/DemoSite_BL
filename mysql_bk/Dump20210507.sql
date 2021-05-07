-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: broadleaf
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `blc_additional_offer_info`
--

DROP TABLE IF EXISTS `blc_additional_offer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_additional_offer_info` (
  `BLC_ORDER_ORDER_ID` bigint NOT NULL,
  `OFFER_INFO_ID` bigint NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  PRIMARY KEY (`BLC_ORDER_ORDER_ID`,`OFFER_ID`),
  KEY `FKlkk2kdjpv0v0ybxnc11p7hg4e` (`OFFER_INFO_ID`),
  KEY `FK40nm1ylfeiv2t6ojcmehu8gcr` (`OFFER_ID`),
  CONSTRAINT `FK40nm1ylfeiv2t6ojcmehu8gcr` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKlkk2kdjpv0v0ybxnc11p7hg4e` FOREIGN KEY (`OFFER_INFO_ID`) REFERENCES `blc_offer_info` (`OFFER_INFO_ID`),
  CONSTRAINT `FKrfc8a02u7yp8qqk206ug62lnb` FOREIGN KEY (`BLC_ORDER_ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_additional_offer_info`
--

LOCK TABLES `blc_additional_offer_info` WRITE;
/*!40000 ALTER TABLE `blc_additional_offer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_additional_offer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_address`
--

DROP TABLE IF EXISTS `blc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_address` (
  `ADDRESS_ID` bigint NOT NULL,
  `ADDRESS_LINE1` varchar(255) NOT NULL,
  `ADDRESS_LINE2` varchar(255) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) NOT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FAX` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `FULL_NAME` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` bit(1) DEFAULT NULL,
  `IS_BUSINESS` bit(1) DEFAULT NULL,
  `IS_DEFAULT` bit(1) DEFAULT NULL,
  `IS_MAILING` bit(1) DEFAULT NULL,
  `IS_STREET` bit(1) DEFAULT NULL,
  `ISO_COUNTRY_SUB` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `PRIMARY_PHONE` varchar(255) DEFAULT NULL,
  `SECONDARY_PHONE` varchar(255) DEFAULT NULL,
  `STANDARDIZED` bit(1) DEFAULT NULL,
  `SUB_STATE_PROV_REG` varchar(255) DEFAULT NULL,
  `TOKENIZED_ADDRESS` varchar(255) DEFAULT NULL,
  `VERIFICATION_LEVEL` varchar(255) DEFAULT NULL,
  `ZIP_FOUR` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `ISO_COUNTRY_ALPHA2` varchar(255) DEFAULT NULL,
  `PHONE_FAX_ID` bigint DEFAULT NULL,
  `PHONE_PRIMARY_ID` bigint DEFAULT NULL,
  `PHONE_SECONDARY_ID` bigint DEFAULT NULL,
  `STATE_PROV_REGION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `ADDRESS_COUNTRY_INDEX` (`COUNTRY`),
  KEY `ADDRESS_ISO_COUNTRY_IDX` (`ISO_COUNTRY_ALPHA2`),
  KEY `ADDRESS_PHONE_FAX_IDX` (`PHONE_FAX_ID`),
  KEY `ADDRESS_PHONE_PRI_IDX` (`PHONE_PRIMARY_ID`),
  KEY `ADDRESS_PHONE_SEC_IDX` (`PHONE_SECONDARY_ID`),
  KEY `ADDRESS_STATE_INDEX` (`STATE_PROV_REGION`),
  CONSTRAINT `FK6hgxmyv131s9xr4ei6uih9opw` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`),
  CONSTRAINT `FKdg3srpny8h476fl59expu2cv0` FOREIGN KEY (`STATE_PROV_REGION`) REFERENCES `blc_state` (`ABBREVIATION`),
  CONSTRAINT `FKlafhchfputda32qhub54fa726` FOREIGN KEY (`PHONE_PRIMARY_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FKlbxqgy7cjnjn5ey2wqvpjnhe5` FOREIGN KEY (`PHONE_SECONDARY_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FKp37ru1cyeu6fq48ohmjmyvjej` FOREIGN KEY (`ISO_COUNTRY_ALPHA2`) REFERENCES `blc_iso_country` (`ALPHA_2`),
  CONSTRAINT `FKrgw6kfwuqepeo3u7i75t57l8w` FOREIGN KEY (`PHONE_FAX_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_address`
--

LOCK TABLES `blc_address` WRITE;
/*!40000 ALTER TABLE `blc_address` DISABLE KEYS */;
INSERT INTO `blc_address` VALUES (1,'','',NULL,'',NULL,NULL,NULL,NULL,NULL,'',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'',NULL,NULL,_binary '\0','',NULL,NULL,NULL,NULL,'US',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `blc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_module`
--

DROP TABLE IF EXISTS `blc_admin_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_module` (
  `ADMIN_MODULE_ID` bigint NOT NULL,
  `DISPLAY_ORDER` int DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `MODULE_KEY` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_MODULE_ID`),
  KEY `ADMINMODULE_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_module`
--

LOCK TABLES `blc_admin_module` WRITE;
/*!40000 ALTER TABLE `blc_admin_module` DISABLE KEYS */;
INSERT INTO `blc_admin_module` VALUES (-9,250,'blc-icon-inventory','存貨','Inventory'),(-8,150,'fa fa-usd','價格','Pricing'),(-7,500,'blc-icon-site-updates','BLCWorkflow','Site Updates'),(-6,400,'blc-icon-design','BLCDesign','Design'),(-5,700,'blc-icon-settings','設定','Settings'),(-4,600,'blc-icon-security','BLCOpenAdmin','Security'),(-3,550,'blc-icon-customer-care','客戶管理','Customer Care'),(-2,200,'blc-icon-content','內容','Content'),(-1,100,'blc-icon-catalog','目錄','Catalog');
/*!40000 ALTER TABLE `blc_admin_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_password_token`
--

DROP TABLE IF EXISTS `blc_admin_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_password_token` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `ADMIN_USER_ID` bigint NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` bit(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_password_token`
--

LOCK TABLES `blc_admin_password_token` WRITE;
/*!40000 ALTER TABLE `blc_admin_password_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission`
--

DROP TABLE IF EXISTS `blc_admin_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_permission` (
  `ADMIN_PERMISSION_ID` bigint NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `IS_FRIENDLY` bit(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PERMISSION_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission`
--

LOCK TABLES `blc_admin_permission` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission` DISABLE KEYS */;
INSERT INTO `blc_admin_permission` VALUES (-33015,'Maintain Solr Indexing Processes',_binary '','PERMISSION_SOLR_INDEXER','ALL'),(-33014,'All SolrIndexer',_binary '\0','PERMISSION_ALL_SOLR_INDEXER','ALL'),(-27003,'Maintain Menus',_binary '','PERMISSION_MENU','ALL'),(-27002,'View Menus',_binary '','PERMISSION_MENU','READ'),(-27001,'All Menu',NULL,'PERMISSION_ALL_MENU','ALL'),(-27000,'Read Menu',NULL,'PERMISSION_READ_MENU','READ'),(-200,'Read Page Template',_binary '\0','PERMISSION_READ_PAGE_TEMPLATE','READ'),(-181,'Maintain Promotion Messages',_binary '','PERMISSION_PROMOTION_MESSAGE','ALL'),(-180,'View Promotion Messages',_binary '','PERMISSION_PROMOTION_MESSAGE','READ'),(-161,'Maintain Field Definitions',_binary '','PERMISSION_FLDDEF_ALL','ALL'),(-160,'View Field Definitions',_binary '','PERMISSION_FLDDEF_VIEW','READ'),(-151,'Maintain Permissions',_binary '','PERMISSION_PERM_ALL','ALL'),(-150,'View Permissions',_binary '','PERMISSION_PERM_VIEW','READ'),(-141,'Maintain Roles',_binary '','PERMISSION_ROLE_ALL','ALL'),(-140,'View Roles',_binary '','PERMISSION_ROLE_VIEW','READ'),(-131,'Maintain Translations',_binary '','PERMISSION_TRANSLATION','ALL'),(-130,'View Translations',_binary '','PERMISSION_TRANSLATION','READ'),(-127,'Maintain Module Configurations',_binary '','PERMISSION_MODULECONFIGURATION','ALL'),(-126,'View Module Configurations',_binary '','PERMISSION_MODULECONFIGURATION','READ'),(-121,'Maintain Users',_binary '','PERMISSION_USER','ALL'),(-120,'View Users',_binary '','PERMISSION_USER','READ'),(-119,'Maintain Customers',_binary '','PERMISSION_CUSTOMER','ALL'),(-118,'View Customers',_binary '','PERMISSION_CUSTOMER','READ'),(-115,'Maintain URL Redirects',_binary '','PERMISSION_URLREDIRECT','ALL'),(-114,'View URL Redirects',_binary '','PERMISSION_URLREDIRECT','READ'),(-111,'Maintain Assets',_binary '','PERMISSION_ASSET','ALL'),(-110,'View Assets',_binary '','PERMISSION_ASSET','READ'),(-109,'Maintain Pages',_binary '','PERMISSION_PAGE','ALL'),(-108,'View Pages',_binary '','PERMISSION_PAGE','READ'),(-107,'Maintain Offers',_binary '','PERMISSION_OFFER','ALL'),(-106,'View Offers',_binary '','PERMISSION_OFFER','READ'),(-105,'Maintain Product Options',_binary '','PERMISSION_PRODUCTOPTIONS','ALL'),(-104,'View Product Options',_binary '','PERMISSION_PRODUCTOPTIONS','READ'),(-103,'Maintain Products',_binary '','PERMISSION_PRODUCT','ALL'),(-102,'View Products',_binary '','PERMISSION_PRODUCT','READ'),(-101,'Maintain Categories',_binary '','PERMISSION_CATEGORY','ALL'),(-100,'View Categories',_binary '','PERMISSION_CATEGORY','READ'),(-55,'All ISO COUNTRIES',_binary '\0','PERMISSION_ALL_ISO_COUNTRIES','ALL'),(-54,'Read ISO Countries',_binary '\0','PERMISSION_READ_ISO_COUNTRIES','READ'),(-53,'All Catalog Permissions',_binary '\0','PERMISSION_ALL_CATALOG_PERMS','ALL'),(-52,'Read Catalog Permissions',_binary '\0','PERMISSION_READ_CATALOG_PERMS','READ'),(-51,'All Field Definitions',_binary '\0','PERMISSION_ALL_FIELD_DEFS','ALL'),(-50,'Read Field Definitions',_binary '\0','PERMISSION_READ_FIELD_DEFS','READ'),(-49,'All Admin Permissions',_binary '\0','PERMISSION_ALL_ADMIN_PERMS','ALL'),(-48,'Read Admin Permissions',_binary '\0','PERMISSION_READ_ADMIN_PERMS','READ'),(-47,'All Admin Roles',_binary '\0','PERMISSION_ALL_ADMIN_ROLES','ALL'),(-46,'Read Admin Roles',_binary '\0','PERMISSION_READ_ADMIN_ROLES','READ'),(-45,'All System Property',_binary '\0','PERMISSION_ALL_SYSTEM_PROPERTY','ALL'),(-44,'Read System Property',_binary '\0','PERMISSION_READ_SYSTEM_PROPERTY','READ'),(-43,'All Site Map Gen Configuration',_binary '\0','PERMISSION_ALL_SITE_MAP_GEN_CONFIG','ALL'),(-42,'Read Site Map Gen Configuration',_binary '\0','PERMISSION_READ_SITE_MAP_GEN_CONFIG','READ'),(-41,'All Translation',_binary '\0','PERMISSION_ALL_TRANSLATION','ALL'),(-40,'Read Translation',_binary '\0','PERMISSION_READ_TRANSLATION','READ'),(-39,'All Enumeration',_binary '\0','PERMISSION_ALL_ENUMERATION','ALL'),(-38,'Read Enumeration',_binary '\0','PERMISSION_READ_ENUMERATION','READ'),(-37,'All Configuration',_binary '\0','PERMISSION_ALL_MODULECONFIGURATION','ALL'),(-36,'Read Configuration',_binary '\0','PERMISSION_READ_MODULECONFIGURATION','READ'),(-35,'All Currency',_binary '\0','PERMISSION_ALL_CURRENCY','ALL'),(-34,'Read Currency',_binary '\0','PERMISSION_READ_CURRENCY','READ'),(-33,'All SearchFacet',_binary '\0','PERMISSION_ALL_SEARCHFACET','ALL'),(-32,'Read SearchFacet',_binary '\0','PERMISSION_READ_SEARCHFACET','READ'),(-31,'All SearchRedirect',_binary '\0','PERMISSION_ALL_SEARCHREDIRECT','ALL'),(-30,'Read SearchRedirect',_binary '\0','PERMISSION_READ_SEARCHREDIRECT','READ'),(-29,'All URLHandler',_binary '\0','PERMISSION_ALL_URLHANDLER','ALL'),(-28,'Read URLHandler',_binary '\0','PERMISSION_READ_URLHANDLER','READ'),(-27,'All Admin User',_binary '\0','PERMISSION_ALL_ADMIN_USER','ALL'),(-26,'Read Admin User',_binary '\0','PERMISSION_READ_ADMIN_USER','READ'),(-23,'All Asset',_binary '\0','PERMISSION_ALL_ASSET','ALL'),(-22,'Read Asset',_binary '\0','PERMISSION_READ_ASSET','READ'),(-21,'All Page',_binary '\0','PERMISSION_ALL_PAGE','ALL'),(-20,'Read Page',_binary '\0','PERMISSION_READ_PAGE','READ'),(-19,'All Customer',_binary '\0','PERMISSION_ALL_CUSTOMER','ALL'),(-18,'Read Customer',_binary '\0','PERMISSION_READ_CUSTOMER','READ'),(-17,'All Order Item',_binary '\0','PERMISSION_ALL_ORDER_ITEM','ALL'),(-16,'Read Order Item',_binary '\0','PERMISSION_READ_ORDER_ITEM','READ'),(-15,'All Fulfillment Group',_binary '\0','PERMISSION_ALL_FULFILLMENT_GROUP','ALL'),(-14,'Read Fulfillment Group',_binary '\0','PERMISSION_READ_FULFILLMENT_GROUP','READ'),(-13,'All Order',_binary '\0','PERMISSION_ALL_ORDER','ALL'),(-12,'Read Order',_binary '\0','PERMISSION_READ_ORDER','READ'),(-11,'All Promotion',_binary '\0','PERMISSION_ALL_PROMOTION','ALL'),(-10,'Read Promotion',_binary '\0','PERMISSION_READ_PROMOTION','READ'),(-9,'All Sku',_binary '\0','PERMISSION_ALL_SKU','ALL'),(-8,'Read Sku',_binary '\0','PERMISSION_READ_SKU','READ'),(-7,'All Product Option',_binary '\0','PERMISSION_ALL_PRODUCT_OPTION','ALL'),(-6,'Read Product Option',_binary '\0','PERMISSION_READ_PRODUCT_OPTION','READ'),(-5,'All Product',_binary '\0','PERMISSION_ALL_PRODUCT','ALL'),(-4,'Read Product',_binary '\0','PERMISSION_READ_PRODUCT','READ'),(-3,'All Category',_binary '\0','PERMISSION_ALL_CATEGORY','ALL'),(-2,'Read Category',_binary '\0','PERMISSION_READ_CATEGORY','READ'),(-1,'Default Permission',_binary '\0','PERMISSION_OTHER_DEFAULT','OTHER');
/*!40000 ALTER TABLE `blc_admin_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission_entity`
--

DROP TABLE IF EXISTS `blc_admin_permission_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_permission_entity` (
  `ADMIN_PERMISSION_ENTITY_ID` bigint NOT NULL,
  `CEILING_ENTITY` varchar(255) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ENTITY_ID`),
  KEY `FKr7lum3wwl9kacdlgw4cwdrsas` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FKr7lum3wwl9kacdlgw4cwdrsas` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission_entity`
--

LOCK TABLES `blc_admin_permission_entity` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission_entity` DISABLE KEYS */;
INSERT INTO `blc_admin_permission_entity` VALUES (-27003,'org.broadleafcommerce.menu.domain.MenuItem',-27001),(-27002,'org.broadleafcommerce.menu.domain.MenuItem',-27000),(-27001,'org.broadleafcommerce.menu.domain.Menu',-27001),(-27000,'org.broadleafcommerce.menu.domain.Menu',-27000),(-1011,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-55),(-1010,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-54),(-1003,'org.broadleafcommerce.common.site.domain.Site',-53),(-1002,'org.broadleafcommerce.common.site.domain.Site',-52),(-1001,'org.broadleafcommerce.common.site.domain.Catalog',-53),(-1000,'org.broadleafcommerce.common.site.domain.Catalog',-52),(-991,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-51),(-990,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-50),(-983,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-48),(-982,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-49),(-981,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-48),(-980,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-49),(-971,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-47),(-970,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-46),(-961,'org.broadleafcommerce.common.config.domain.SystemProperty',-45),(-960,'org.broadleafcommerce.common.config.domain.SystemProperty',-44),(-953,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-43),(-952,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-42),(-951,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-43),(-950,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-42),(-911,'org.broadleafcommerce.common.i18n.domain.Translation',-41),(-910,'org.broadleafcommerce.common.i18n.domain.Translation',-40),(-903,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-39),(-902,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-38),(-901,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-39),(-900,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-38),(-881,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-37),(-880,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-36),(-851,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-35),(-850,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-34),(-813,'org.broadleafcommerce.core.search.domain.IndexFieldType',-33),(-812,'org.broadleafcommerce.core.search.domain.IndexFieldType',-32),(-811,'org.broadleafcommerce.core.search.domain.IndexField',-33),(-810,'org.broadleafcommerce.core.search.domain.IndexField',-32),(-809,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-33),(-808,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-32),(-807,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-33),(-806,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-32),(-805,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-33),(-804,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-32),(-803,'org.broadleafcommerce.core.search.domain.Field',-33),(-802,'org.broadleafcommerce.core.search.domain.Field',-32),(-801,'org.broadleafcommerce.core.search.domain.SearchFacet',-33),(-800,'org.broadleafcommerce.core.search.domain.SearchFacet',-32),(-781,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-31),(-780,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-30),(-753,'org.broadleafcommerce.common.locale.domain.Locale',-29),(-752,'org.broadleafcommerce.common.locale.domain.Locale',-28),(-751,'org.broadleafcommerce.cms.url.domain.URLHandler',-29),(-750,'org.broadleafcommerce.cms.url.domain.URLHandler',-28),(-721,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-27),(-720,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-26),(-603,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-23),(-602,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-22),(-601,'org.broadleafcommerce.cms.file.domain.StaticAsset',-23),(-600,'org.broadleafcommerce.cms.file.domain.StaticAsset',-22),(-557,'org.broadleafcommerce.common.locale.domain.Locale',-21),(-556,'org.broadleafcommerce.common.locale.domain.Locale',-20),(-555,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-21),(-554,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-20),(-552,'org.broadleafcommerce.cms.page.domain.PageTemplate',-200),(-551,'org.broadleafcommerce.cms.page.domain.Page',-21),(-550,'org.broadleafcommerce.cms.page.domain.Page',-20),(-514,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-19),(-513,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-18),(-512,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-19),(-511,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-18),(-510,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-19),(-509,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-18),(-508,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-19),(-507,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-18),(-506,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-19),(-504,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-18),(-503,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-19),(-502,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-18),(-501,'org.broadleafcommerce.profile.core.domain.Customer',-19),(-500,'org.broadleafcommerce.profile.core.domain.Customer',-18),(-461,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-17),(-460,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-16),(-459,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-17),(-458,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-16),(-457,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-17),(-456,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-16),(-455,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-17),(-454,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-16),(-453,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-17),(-452,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-16),(-451,'org.broadleafcommerce.core.order.domain.OrderItem',-17),(-450,'org.broadleafcommerce.core.order.domain.OrderItem',-16),(-407,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-15),(-406,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-14),(-405,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-15),(-404,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-14),(-403,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-15),(-402,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-14),(-401,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-15),(-400,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-14),(-370,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-13),(-369,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-12),(-368,'org.broadleafcommerce.profile.core.domain.State',-13),(-367,'org.broadleafcommerce.profile.core.domain.State',-12),(-366,'org.broadleafcommerce.profile.core.domain.Country',-13),(-365,'org.broadleafcommerce.profile.core.domain.Country',-12),(-361,'org.broadleafcommerce.core.payment.domain.OrderPayment',-13),(-360,'org.broadleafcommerce.core.payment.domain.OrderPayment',-12),(-356,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-13),(-355,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-12),(-351,'org.broadleafcommerce.core.order.domain.Order',-13),(-350,'org.broadleafcommerce.core.order.domain.Order',-12),(-309,'org.broadleafcommerce.core.offer.domain.OfferPriceData',-11),(-308,'org.broadleafcommerce.core.offer.domain.OfferPriceData',-10),(-307,'org.broadleafcommerce.core.offer.domain.OfferTier',-11),(-306,'org.broadleafcommerce.core.offer.domain.OfferTier',-10),(-305,'org.broadleafcommerce.core.offer.domain.OfferCode',-11),(-304,'org.broadleafcommerce.core.offer.domain.OfferCode',-10),(-303,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-11),(-302,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-10),(-301,'org.broadleafcommerce.core.offer.domain.Offer',-11),(-300,'org.broadleafcommerce.core.offer.domain.Offer',-10),(-253,'org.broadleafcommerce.core.catalog.domain.SkuAttribute',-9),(-252,'org.broadleafcommerce.core.catalog.domain.SkuAttribute',-8),(-251,'org.broadleafcommerce.core.catalog.domain.Sku',-9),(-250,'org.broadleafcommerce.core.catalog.domain.Sku',-8),(-207,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-7),(-206,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-6),(-205,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-7),(-204,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-6),(-203,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-7),(-202,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-6),(-201,'org.broadleafcommerce.core.catalog.domain.ProductOption',-7),(-200,'org.broadleafcommerce.core.catalog.domain.ProductOption',-6),(-183,'org.broadleafcommerce.core.offer.domain.AdvancedOfferPromotionMessageXref',-107),(-182,'org.broadleafcommerce.core.offer.domain.AdvancedOfferPromotionMessageXref',-106),(-181,'org.broadleafcommerce.core.promotionMessage.domain.PromotionMessage',-181),(-180,'org.broadleafcommerce.core.promotionMessage.domain.PromotionMessage',-180),(-107,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-5),(-106,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-4),(-105,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-5),(-104,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-4),(-103,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-5),(-102,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-4),(-101,'org.broadleafcommerce.core.catalog.domain.Product',-5),(-100,'org.broadleafcommerce.core.catalog.domain.Product',-4),(-61,'org.broadleafcommerce.common.media.domain.Media',-5),(-60,'org.broadleafcommerce.common.media.domain.Media',-4),(-14,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-3),(-13,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-2),(-12,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-3),(-11,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-2),(-10,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-3),(-9,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-2),(-8,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-3),(-7,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-2),(-6,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-3),(-5,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-2),(-4,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-3),(-3,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-2),(-2,'org.broadleafcommerce.core.catalog.domain.Category',-3),(-1,'org.broadleafcommerce.core.catalog.domain.Category',-2);
/*!40000 ALTER TABLE `blc_admin_permission_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_permission_xref` (
  `CHILD_PERMISSION_ID` bigint NOT NULL,
  `ADMIN_PERMISSION_ID` bigint NOT NULL,
  KEY `FK1m3h00oqtternnpeiupslooan` (`ADMIN_PERMISSION_ID`),
  KEY `FK9gfarfrwe5wnew41w9oyd3j6y` (`CHILD_PERMISSION_ID`),
  CONSTRAINT `FK1m3h00oqtternnpeiupslooan` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FK9gfarfrwe5wnew41w9oyd3j6y` FOREIGN KEY (`CHILD_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission_xref`
--

LOCK TABLES `blc_admin_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_permission_xref` VALUES (-2,-100),(-4,-100),(-32,-100),(-52,-100),(-3,-101),(-4,-101),(-32,-101),(-52,-101),(-4,-102),(-6,-102),(-8,-102),(-34,-102),(-52,-102),(-5,-103),(-6,-103),(-9,-103),(-34,-103),(-52,-103),(-6,-104),(-32,-104),(-52,-104),(-7,-105),(-32,-105),(-52,-105),(-10,-106),(-52,-106),(-11,-107),(-52,-107),(-20,-108),(-200,-108),(-21,-109),(-200,-109),(-22,-110),(-23,-111),(-28,-114),(-29,-115),(-18,-118),(-19,-119),(-26,-120),(-46,-120),(-48,-120),(-27,-121),(-46,-121),(-48,-121),(-36,-126),(-37,-127),(-40,-130),(-41,-131),(-46,-140),(-48,-140),(-47,-141),(-48,-141),(-48,-150),(-49,-151),(-50,-160),(-51,-161),(-180,-106),(-181,-107),(-27000,-27002),(-27001,-27003),(-33014,-33015);
/*!40000 ALTER TABLE `blc_admin_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_role`
--

DROP TABLE IF EXISTS `blc_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_role` (
  `ADMIN_ROLE_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_role`
--

LOCK TABLES `blc_admin_role` WRITE;
/*!40000 ALTER TABLE `blc_admin_role` DISABLE KEYS */;
INSERT INTO `blc_admin_role` VALUES (-7,NULL,NULL,NULL,NULL,'CMS Designer','ROLE_CONTENT_DESIGNER'),(-6,NULL,NULL,NULL,NULL,'CMS Approver','ROLE_CONTENT_APPROVER'),(-5,NULL,NULL,NULL,NULL,'CMS Editor','ROLE_CONTENT_EDITOR'),(-4,NULL,NULL,NULL,NULL,'CSR','ROLE_CUSTOMER_SERVICE_REP'),(-3,NULL,NULL,NULL,NULL,'Promotion Manager','ROLE_PROMOTION_MANAGER'),(-2,NULL,NULL,NULL,NULL,'Merchandiser','ROLE_MERCHANDISE_MANAGER'),(-1,NULL,NULL,NULL,NULL,'Admin Master Access','ROLE_ADMIN');
/*!40000 ALTER TABLE `blc_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_role_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_role_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_role_permission_xref` (
  `ADMIN_ROLE_ID` bigint NOT NULL,
  `ADMIN_PERMISSION_ID` bigint NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_ROLE_ID`),
  KEY `FKl1jm8qymrs3laxvyawcb7mlbt` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FKl1jm8qymrs3laxvyawcb7mlbt` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `blc_admin_role` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FKoj1ji2ummmtfdm0xb9jesi7g` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_role_permission_xref`
--

LOCK TABLES `blc_admin_role_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_role_permission_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_role_permission_xref` VALUES (-6,-111),(-6,-109),(-5,-27003),(-5,-161),(-5,-131),(-5,-111),(-5,-109),(-4,-119),(-3,-131),(-3,-107),(-2,-131),(-2,-111),(-2,-105),(-2,-103),(-2,-101),(-1,-33015),(-1,-27003),(-1,-181),(-1,-161),(-1,-141),(-1,-131),(-1,-121),(-1,-119),(-1,-115),(-1,-111),(-1,-109),(-1,-107),(-1,-105),(-1,-103),(-1,-101);
/*!40000 ALTER TABLE `blc_admin_role_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_sec_perm_xref`
--

DROP TABLE IF EXISTS `blc_admin_sec_perm_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_sec_perm_xref` (
  `ADMIN_SECTION_ID` bigint NOT NULL,
  `ADMIN_PERMISSION_ID` bigint NOT NULL,
  KEY `FKns2d7kvauk8kgskridssn1gcv` (`ADMIN_PERMISSION_ID`),
  KEY `FK3k1buujb5let82ixj1k9nha3r` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK3k1buujb5let82ixj1k9nha3r` FOREIGN KEY (`ADMIN_SECTION_ID`) REFERENCES `blc_admin_section` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FKns2d7kvauk8kgskridssn1gcv` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_sec_perm_xref`
--

LOCK TABLES `blc_admin_sec_perm_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_sec_perm_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_sec_perm_xref` VALUES (-1,-100),(-1,-101),(-2,-102),(-2,-103),(-99,-102),(-99,-103),(-3,-104),(-3,-105),(-4,-106),(-4,-107),(-5,-108),(-5,-109),(-6,-110),(-6,-111),(-8,-114),(-8,-115),(-10,-118),(-10,-119),(-11,-120),(-11,-121),(-12,-140),(-12,-141),(-13,-126),(-13,-127),(-17,-150),(-17,-151),(-27000,-27002),(-27000,-27003),(-33002,-33015);
/*!40000 ALTER TABLE `blc_admin_sec_perm_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_section`
--

DROP TABLE IF EXISTS `blc_admin_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_section` (
  `ADMIN_SECTION_ID` bigint NOT NULL,
  `CEILING_ENTITY` varchar(255) DEFAULT NULL,
  `DISPLAY_CONTROLLER` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int DEFAULT NULL,
  `FOLDERABLE` bit(1) DEFAULT NULL,
  `FOLDERED_BY_DEFAULT` bit(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SECTION_KEY` varchar(255) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `USE_DEFAULT_HANDLER` bit(1) DEFAULT NULL,
  `ADMIN_MODULE_ID` bigint NOT NULL,
  PRIMARY KEY (`ADMIN_SECTION_ID`),
  UNIQUE KEY `UK_2l8u0qyluf4fwp2iiqp3p4jrn` (`SECTION_KEY`),
  KEY `ADMINSECTION_MODULE_INDEX` (`ADMIN_MODULE_ID`),
  KEY `ADMINSECTION_NAME_INDEX` (`NAME`),
  CONSTRAINT `FK2gpd1e839i00bosr6e54mdnn2` FOREIGN KEY (`ADMIN_MODULE_ID`) REFERENCES `blc_admin_module` (`ADMIN_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_section`
--

LOCK TABLES `blc_admin_section` WRITE;
/*!40000 ALTER TABLE `blc_admin_section` DISABLE KEYS */;
INSERT INTO `blc_admin_section` VALUES (-33002,NULL,NULL,5000,NULL,NULL,'Solr Indexer','Solr Indexer','/indexer',_binary '',-5),(-27000,'org.broadleafcommerce.menu.domain.Menu',NULL,3000,NULL,NULL,'Menu','Menu','/menu',_binary '',-2),(-99,'org.broadleafcommerce.core.catalog.domain.Product',NULL,3000,NULL,NULL,'Base Product','Base Product','/product:product',NULL,-1),(-17,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',NULL,11000,NULL,NULL,'Permission Management','PermissionManagement','/permission-management',NULL,-5),(-13,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,10000,NULL,NULL,'Configuration Management','ConfigurationManagement','/configuration-management',NULL,-5),(-12,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',NULL,3000,NULL,NULL,'Role Management','Role Management','/role-management',NULL,-5),(-11,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',NULL,2000,NULL,NULL,'User Management','User Management','/user-management',NULL,-5),(-10,'org.broadleafcommerce.profile.core.domain.Customer',NULL,1000,NULL,NULL,'Customer','Customer','/customer',NULL,-3),(-8,'org.broadleafcommerce.cms.url.domain.URLHandler',NULL,7000,NULL,NULL,'Redirect URL','Redirect URL','/redirect-url',NULL,-2),(-6,'org.broadleafcommerce.cms.file.domain.StaticAsset',NULL,4000,NULL,NULL,'Assets','Assets','/assets',NULL,-2),(-5,'org.broadleafcommerce.cms.page.domain.Page',NULL,2000,NULL,NULL,'Pages','Pages','/pages',NULL,-2),(-4,'org.broadleafcommerce.core.offer.domain.Offer',NULL,1000,NULL,NULL,'Offer','Offers','/offer',NULL,-8),(-3,'org.broadleafcommerce.core.catalog.domain.ProductOption',NULL,5000,NULL,NULL,'Product-options','Product-options','/product-options',NULL,-1),(-2,'org.broadleafcommerce.core.catalog.domain.Product',NULL,3000,NULL,NULL,'Product','Product','/product',NULL,-1),(-1,'org.broadleafcommerce.core.catalog.domain.Category',NULL,2000,NULL,NULL,'Category','Category','/category',NULL,-1);
/*!40000 ALTER TABLE `blc_admin_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user`
--

DROP TABLE IF EXISTS `blc_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_user` (
  `ADMIN_USER_ID` bigint NOT NULL,
  `ACTIVE_STATUS_FLAG` bit(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `ADMINPERM_EMAIL_INDEX` (`EMAIL`),
  KEY `ADMINUSER_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user`
--

LOCK TABLES `blc_admin_user` WRITE;
/*!40000 ALTER TABLE `blc_admin_user` DISABLE KEYS */;
INSERT INTO `blc_admin_user` VALUES (-1,_binary '',NULL,NULL,NULL,NULL,NULL,'admin@yourdomain.com','admin','Administrator','admin',NULL);
/*!40000 ALTER TABLE `blc_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_addtl_fields`
--

DROP TABLE IF EXISTS `blc_admin_user_addtl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_user_addtl_fields` (
  `ATTRIBUTE_ID` bigint NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `ADMIN_USER_ID` bigint NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `ADMINUSERATTRIBUTE_INDEX` (`ADMIN_USER_ID`),
  KEY `ADMINUSERATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  CONSTRAINT `FKiiateds21bej9b6qvrom06ayr` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_addtl_fields`
--

LOCK TABLES `blc_admin_user_addtl_fields` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_addtl_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_addtl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_user_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_user_permission_xref` (
  `ADMIN_USER_ID` bigint NOT NULL,
  `ADMIN_PERMISSION_ID` bigint NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_USER_ID`),
  KEY `FKj7ms4sgplv582id7ftu4thyn3` (`ADMIN_USER_ID`),
  CONSTRAINT `FK8ia4c6mqqvm9pt1aghjbvdmtb` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FKj7ms4sgplv582id7ftu4thyn3` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_permission_xref`
--

LOCK TABLES `blc_admin_user_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_permission_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_role_xref`
--

DROP TABLE IF EXISTS `blc_admin_user_role_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_user_role_xref` (
  `ADMIN_USER_ID` bigint NOT NULL,
  `ADMIN_ROLE_ID` bigint NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`,`ADMIN_USER_ID`),
  KEY `FKa48q2nut9wd1cktfjp3l2f3xv` (`ADMIN_USER_ID`),
  CONSTRAINT `FK4skhb24d5kego6i7iw4y1a448` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `blc_admin_role` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FKa48q2nut9wd1cktfjp3l2f3xv` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_role_xref`
--

LOCK TABLES `blc_admin_user_role_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_role_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_user_role_xref` VALUES (-1,-1);
/*!40000 ALTER TABLE `blc_admin_user_role_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_sandbox`
--

DROP TABLE IF EXISTS `blc_admin_user_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_admin_user_sandbox` (
  `SANDBOX_ID` bigint DEFAULT NULL,
  `ADMIN_USER_ID` bigint NOT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `FKehxq8fct257ml7j0rbya7ripb` (`SANDBOX_ID`),
  CONSTRAINT `FKay43c311x89bqu7lbswc7xan6` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKehxq8fct257ml7j0rbya7ripb` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_sandbox`
--

LOCK TABLES `blc_admin_user_sandbox` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_sandbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_asset_desc_map`
--

DROP TABLE IF EXISTS `blc_asset_desc_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_asset_desc_map` (
  `STATIC_ASSET_ID` bigint NOT NULL,
  `STATIC_ASSET_DESC_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`,`MAP_KEY`),
  KEY `FKheybfelcjp3ave1pxgmjl78eo` (`STATIC_ASSET_DESC_ID`),
  CONSTRAINT `FKheybfelcjp3ave1pxgmjl78eo` FOREIGN KEY (`STATIC_ASSET_DESC_ID`) REFERENCES `blc_static_asset_desc` (`STATIC_ASSET_DESC_ID`),
  CONSTRAINT `FKhrepj8vehjv59lcn3xbiq7ays` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `blc_static_asset` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_asset_desc_map`
--

LOCK TABLES `blc_asset_desc_map` WRITE;
/*!40000 ALTER TABLE `blc_asset_desc_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_asset_desc_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bank_account_payment`
--

DROP TABLE IF EXISTS `blc_bank_account_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_bank_account_payment` (
  `PAYMENT_ID` bigint NOT NULL,
  `ACCOUNT_NUMBER` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  `ROUTING_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `BANKACCOUNT_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bank_account_payment`
--

LOCK TABLES `blc_bank_account_payment` WRITE;
/*!40000 ALTER TABLE `blc_bank_account_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bank_account_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bund_item_fee_price`
--

DROP TABLE IF EXISTS `blc_bund_item_fee_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_bund_item_fee_price` (
  `BUND_ITEM_FEE_PRICE_ID` bigint NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `IS_TAXABLE` bit(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `BUND_ORDER_ITEM_ID` bigint NOT NULL,
  PRIMARY KEY (`BUND_ITEM_FEE_PRICE_ID`),
  KEY `FKmlwh6qvntrxs81h26syrft6bj` (`BUND_ORDER_ITEM_ID`),
  CONSTRAINT `FKmlwh6qvntrxs81h26syrft6bj` FOREIGN KEY (`BUND_ORDER_ITEM_ID`) REFERENCES `blc_bundle_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bund_item_fee_price`
--

LOCK TABLES `blc_bund_item_fee_price` WRITE;
/*!40000 ALTER TABLE `blc_bund_item_fee_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bund_item_fee_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bundle_order_item`
--

DROP TABLE IF EXISTS `blc_bundle_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_bundle_order_item` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint NOT NULL,
  `PRODUCT_BUNDLE_ID` bigint DEFAULT NULL,
  `SKU_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FKo17ovssehxe4y3b38xjxodmrq` (`PRODUCT_BUNDLE_ID`),
  KEY `FKepomqf1wy0rsw6utuc5r7gflq` (`SKU_ID`),
  CONSTRAINT `FKepomqf1wy0rsw6utuc5r7gflq` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKhbcblyyh5lfrmrt1avy8wajgx` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKo17ovssehxe4y3b38xjxodmrq` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `blc_product_bundle` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bundle_order_item`
--

LOCK TABLES `blc_bundle_order_item` WRITE;
/*!40000 ALTER TABLE `blc_bundle_order_item` DISABLE KEYS */;
INSERT INTO `blc_bundle_order_item` VALUES (NULL,NULL,172,1161,1195);
/*!40000 ALTER TABLE `blc_bundle_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_fg_offer`
--

DROP TABLE IF EXISTS `blc_candidate_fg_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_candidate_fg_offer` (
  `CANDIDATE_FG_OFFER_ID` bigint NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint DEFAULT NULL,
  `OFFER_ID` bigint NOT NULL,
  PRIMARY KEY (`CANDIDATE_FG_OFFER_ID`),
  KEY `CANDIDATE_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `CANDIDATE_FGOFFER_INDEX` (`OFFER_ID`),
  CONSTRAINT `FKg5qmns7vl5e1pu96axl8uknal` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKh9csft0rxeopd0s4in7qp15am` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_fg_offer`
--

LOCK TABLES `blc_candidate_fg_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_fg_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_fg_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_item_offer`
--

DROP TABLE IF EXISTS `blc_candidate_item_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_candidate_item_offer` (
  `CANDIDATE_ITEM_OFFER_ID` bigint NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ITEM_OFFER_ID`),
  KEY `CANDIDATE_ITEMOFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ITEM_INDEX` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKb14jq3w7049s1h61pthy51m92` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKno8jmqw67ef9lpuwoumdyh7wj` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_item_offer`
--

LOCK TABLES `blc_candidate_item_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_item_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_item_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_order_offer`
--

DROP TABLE IF EXISTS `blc_candidate_order_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_candidate_order_offer` (
  `CANDIDATE_ORDER_OFFER_ID` bigint NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ORDER_OFFER_ID`),
  KEY `CANDIDATE_ORDEROFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ORDER_INDEX` (`ORDER_ID`),
  CONSTRAINT `FK59se4s0394sw56c1rvdw5aepf` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK7ckpnvor07qankv258p1vxwww` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_order_offer`
--

LOCK TABLES `blc_candidate_order_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_order_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_order_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_search_facet_excl_xref`
--

DROP TABLE IF EXISTS `blc_cat_search_facet_excl_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_cat_search_facet_excl_xref` (
  `CAT_EXCL_SEARCH_FACET_ID` bigint NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `SEARCH_FACET_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`CAT_EXCL_SEARCH_FACET_ID`),
  KEY `FK66xu32canhiu19e6or98vufcw` (`CATEGORY_ID`),
  KEY `FKmmy51xuqakfxoflomh4dgl7on` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK66xu32canhiu19e6or98vufcw` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKmmy51xuqakfxoflomh4dgl7on` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_search_facet_excl_xref`
--

LOCK TABLES `blc_cat_search_facet_excl_xref` WRITE;
/*!40000 ALTER TABLE `blc_cat_search_facet_excl_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_cat_search_facet_excl_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_search_facet_xref`
--

DROP TABLE IF EXISTS `blc_cat_search_facet_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_cat_search_facet_xref` (
  `CATEGORY_SEARCH_FACET_ID` bigint NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `SEARCH_FACET_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_SEARCH_FACET_ID`),
  KEY `FK15e8rvxxafd6h16c1ul3pynqh` (`CATEGORY_ID`),
  KEY `FK68dqudo00pmvd760r53lmcq1q` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK15e8rvxxafd6h16c1ul3pynqh` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK68dqudo00pmvd760r53lmcq1q` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_search_facet_xref`
--

LOCK TABLES `blc_cat_search_facet_xref` WRITE;
/*!40000 ALTER TABLE `blc_cat_search_facet_xref` DISABLE KEYS */;
INSERT INTO `blc_cat_search_facet_xref` VALUES (4,1.00,2003,4),(6,3.00,2003,3),(18,0.00,2019,3),(68,0.00,2069,3),(168,1.00,2019,1),(169,2.00,2019,5),(170,3.00,2019,4);
/*!40000 ALTER TABLE `blc_cat_search_facet_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_cat_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_cat_site_map_gen_cfg` (
  `ENDING_DEPTH` int NOT NULL,
  `STARTING_DEPTH` int NOT NULL,
  `GEN_CONFIG_ID` bigint NOT NULL,
  `ROOT_CATEGORY_ID` bigint NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FKerl6k0300vd4y8haxljr92rmo` (`ROOT_CATEGORY_ID`),
  CONSTRAINT `FKerl6k0300vd4y8haxljr92rmo` FOREIGN KEY (`ROOT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKn5liq0ue5rtn6h7bmsv7q85nn` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_site_map_gen_cfg`
--

LOCK TABLES `blc_cat_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_cat_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_cat_site_map_gen_cfg` VALUES (0,0,-7,2004),(0,0,-6,2003),(0,0,-5,2002),(0,0,-4,2001);
/*!40000 ALTER TABLE `blc_cat_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_catalog`
--

DROP TABLE IF EXISTS `blc_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_catalog` (
  `CATALOG_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_catalog`
--

LOCK TABLES `blc_catalog` WRITE;
/*!40000 ALTER TABLE `blc_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category`
--

DROP TABLE IF EXISTS `blc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_category` (
  `CATEGORY_ID` bigint NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `META_DESC` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_URL` bit(1) DEFAULT NULL,
  `PRODUCT_DESC_PATTERN_OVERRIDE` varchar(255) DEFAULT NULL,
  `PRODUCT_TITLE_PATTERN_OVERRIDE` varchar(255) DEFAULT NULL,
  `ROOT_DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_PARENT_CATEGORY_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATEGORY_PARENT_INDEX` (`DEFAULT_PARENT_CATEGORY_ID`),
  KEY `CATEGORY_E_ID_INDEX` (`EXTERNAL_ID`),
  KEY `CATEGORY_NAME_INDEX` (`NAME`),
  KEY `CATEGORY_URL_INDEX` (`URL`),
  KEY `CATEGORY_URLKEY_INDEX` (`URL_KEY`),
  CONSTRAINT `FK6lf7a3qgmh5m8aq8o8url408t` FOREIGN KEY (`DEFAULT_PARENT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category`
--

LOCK TABLES `blc_category` WRITE;
/*!40000 ALTER TABLE `blc_category` DISABLE KEYS */;
INSERT INTO `blc_category` VALUES (2001,NULL,'2021-04-28 21:37:28',NULL,'Home','layout/homepage',NULL,NULL,NULL,NULL,NULL,NULL,'Home',_binary '\0',NULL,NULL,-5.000000,NULL,'/',NULL,NULL),(2002,NULL,'2021-04-28 21:37:28','Y','Hot Sauces',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hot Sauces',_binary '\0',NULL,NULL,-4.000000,NULL,'/hot-sauces',NULL,NULL),(2003,NULL,'2021-04-28 21:37:28','Y','Merchandise',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Merchandise',_binary '\0',NULL,NULL,-3.000000,NULL,'/merchandise',NULL,NULL),(2004,NULL,'2021-04-28 21:37:28','Y','Clearance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Clearance',_binary '\0',NULL,NULL,-2.000000,NULL,'/clearance',NULL,NULL),(2007,NULL,'2021-04-28 21:37:28','Y','Mens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mens',_binary '\0',NULL,NULL,NULL,NULL,'/mens',NULL,NULL),(2008,NULL,'2021-04-28 21:37:28','Y','Womens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Womens',_binary '\0',NULL,NULL,NULL,NULL,'/womens',NULL,NULL),(2019,NULL,'2021-04-29 16:03:11','N',NULL,NULL,NULL,'DIGITAL','ALWAYS_AVAILABLE','<p>生前契約</p>',NULL,NULL,'Pre-mortem contract',_binary '\0',NULL,NULL,NULL,NULL,'/lycontract',NULL,NULL),(2069,'2022-06-08 04:57:00','2021-05-01 03:09:17','N',NULL,NULL,NULL,NULL,NULL,'<p>龍巖股份有限公司提供之塔位服務</p>',NULL,NULL,'Columbarium',_binary '\0',NULL,NULL,NULL,NULL,'/lycolumbarium',NULL,NULL),(2119,NULL,'2021-05-04 01:58:51','N',NULL,NULL,NULL,NULL,NULL,'<p>白沙灣園區</p>',NULL,NULL,'BaishawanPark',_binary '\0',NULL,NULL,NULL,NULL,'/lyBaishawanPark',NULL,NULL),(2120,NULL,'2021-05-04 02:05:23','N',NULL,NULL,NULL,NULL,NULL,'TrueDragonPalace',NULL,NULL,'TrueDragonPalace',_binary '\0',NULL,NULL,NULL,NULL,'/lyTrueDragonPalace',NULL,NULL),(2169,NULL,'2021-05-04 07:56:17','N',NULL,NULL,NULL,NULL,NULL,'<p>塔位</p>',NULL,NULL,'TowerPosition',_binary '\0',NULL,NULL,NULL,NULL,'/lyTowerposition',NULL,NULL),(2170,NULL,'2021-05-04 08:12:33','N',NULL,NULL,NULL,NULL,NULL,'<div>寶池觀優雅雙位室<span></span></div>',NULL,NULL,'BaochiViewElegantDoubleRoom',_binary '\0',NULL,NULL,NULL,NULL,'/lyBaochiviewElegantDoubleRoom',NULL,NULL),(2171,NULL,'2021-05-04 08:24:42','N',NULL,NULL,NULL,NULL,NULL,'<div>彌陀光個人骨灰室</div><div><br></div>',NULL,NULL,'AmitaburiPersonalAshesChamber',_binary '\0',NULL,NULL,NULL,NULL,'/lyAmitaburiPersonalAshesChamber',NULL,NULL),(2219,NULL,'2021-05-04 08:42:21','N',NULL,NULL,NULL,NULL,NULL,'塔位憑證',NULL,NULL,'TowerCertificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyTowerCertificate',NULL,NULL),(2220,NULL,'2021-05-04 08:44:18','N',NULL,NULL,NULL,NULL,NULL,'<p>真龍殿骨灰室升等憑證</p>',NULL,NULL,'TrueDragonHall\'sAshesRoomUpgradeCertificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyTruedDragonHallsAshesRoomUpgradeCertificate',NULL,NULL),(2221,NULL,'2021-05-04 08:55:27','N',NULL,NULL,NULL,NULL,NULL,'<p>光之殿堂</p>',NULL,NULL,'TempleOfLight',_binary '\0',NULL,NULL,NULL,NULL,'/lyTempleoflight',NULL,NULL),(2222,NULL,'2021-05-04 09:05:02','N',NULL,NULL,NULL,NULL,NULL,'戶外墓園',NULL,NULL,'OutdoorCemetery',_binary '\0',NULL,NULL,NULL,NULL,'/lyOutdoorCemetery',NULL,NULL),(2223,NULL,'2021-05-04 09:07:55','N',NULL,NULL,NULL,NULL,NULL,'<p>墓園</p>',NULL,NULL,'Cemetery',_binary '\0',NULL,NULL,NULL,NULL,'/lyCemetery',NULL,NULL),(2224,NULL,'2021-05-04 09:11:29','N',NULL,NULL,NULL,NULL,NULL,'<div>龍泰陵個人墓園</div><div><br></div>',NULL,NULL,'LongtaiTombPersonalCemetery',_binary '\0',NULL,NULL,NULL,NULL,'/lyLongtaitombpersonalcemetery',NULL,NULL),(2225,NULL,'2021-05-04 09:21:10','N',NULL,NULL,NULL,NULL,NULL,'龍泰陵夫妻室',NULL,NULL,'LongTailingHusbandAndWifeRoom',_binary '\0',NULL,NULL,NULL,NULL,'/lyLong-tailing-husband-and-wife-room',NULL,NULL),(2269,NULL,'2021-05-04 09:31:38','N',NULL,NULL,NULL,NULL,NULL,'<p>寵物墓園</p>',NULL,NULL,'PetCemetery',_binary '\0',NULL,NULL,NULL,NULL,'/lyPetcemetery',NULL,NULL),(2270,NULL,'2021-05-04 09:34:40','N',NULL,NULL,NULL,NULL,NULL,'<p>墓園憑證</p>',NULL,NULL,'CemeteryCertificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyCemeterycertificate',NULL,NULL),(2271,NULL,'2021-05-04 09:36:06','N',NULL,NULL,NULL,NULL,NULL,'<p>龍泰陵升等憑證</p>',NULL,NULL,'LongTaiLingUpgradeCertificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyLongtailingupgradecertificate',NULL,NULL),(2319,NULL,'2021-05-05 03:07:22','N',NULL,NULL,NULL,NULL,NULL,'契約/憑證',NULL,NULL,'Contract&Certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyContractcertificate',NULL,NULL),(2320,NULL,'2021-05-05 03:10:13','N',NULL,NULL,NULL,NULL,NULL,'憑證',NULL,NULL,'Certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyCertificate',NULL,NULL),(2321,NULL,'2021-05-05 03:45:40','N',NULL,NULL,NULL,NULL,NULL,'<p>生前契約(Product-Line)</p>',NULL,NULL,'Pre-mortem contract(PL)',_binary '\0',NULL,NULL,NULL,NULL,'/lyPre-mortem-contract',NULL,NULL),(2369,NULL,'2021-05-05 03:53:17','N',NULL,NULL,NULL,NULL,NULL,'<p>圓融  生前契約</p>',NULL,NULL,'Mellow Pre-mortem contract',_binary '\0',NULL,NULL,NULL,NULL,'/lyMellow-pre-mortem-contract',NULL,NULL),(2370,NULL,'2021-05-05 05:03:14','N',NULL,NULL,NULL,NULL,NULL,'<p>會館憑證</p>',NULL,NULL,'Hall Certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyHall-certificate',NULL,NULL),(2371,NULL,'2021-05-05 05:04:31','N',NULL,NULL,NULL,NULL,NULL,'<p>認購憑證</p>',NULL,NULL,'Subscription Certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lySubscription-certificate',NULL,NULL),(2372,NULL,'2021-05-05 05:06:58','N',NULL,NULL,NULL,NULL,NULL,'<p>契約憑證</p>',NULL,NULL,'Contract-certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyContract-certificate',NULL,NULL),(2373,NULL,'2021-05-05 05:08:21','N',NULL,NULL,NULL,NULL,NULL,'<div>風華履約升等憑證</div>',NULL,NULL,'Fenghua-Performance-Upgrade-certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyFenghua-performance-upgrade-certificate',NULL,NULL),(2374,NULL,'2021-05-05 05:17:46','N',NULL,NULL,NULL,NULL,NULL,'<p>花開富貴憑證</p>',NULL,NULL,'Flower-and-wealth-certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyFlower-and-wealth-certificate',NULL,NULL),(2375,NULL,'2021-05-05 05:23:15','N',NULL,NULL,NULL,NULL,NULL,'<p>骨罐三選一認購憑證</p>',NULL,NULL,'Bone-pot-subscription-certificate',_binary '\0',NULL,NULL,NULL,NULL,'/lyBone-pot-subscription-certificate',NULL,NULL),(2419,NULL,'2021-05-06 02:53:12','Y',NULL,NULL,NULL,NULL,NULL,'<p>商品</p>',NULL,NULL,'merchandise',_binary '\0',NULL,NULL,NULL,NULL,'/merchandise',NULL,NULL);
/*!40000 ALTER TABLE `blc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_attribute`
--

DROP TABLE IF EXISTS `blc_category_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_category_attribute` (
  `CATEGORY_ATTRIBUTE_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` bigint NOT NULL,
  PRIMARY KEY (`CATEGORY_ATTRIBUTE_ID`),
  KEY `CATEGORYATTRIBUTE_INDEX` (`CATEGORY_ID`),
  KEY `CATEGORYATTRIBUTE_NAME_INDEX` (`NAME`),
  CONSTRAINT `FKhkechh91jg8iog16ry7089anf` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_attribute`
--

LOCK TABLES `blc_category_attribute` WRITE;
/*!40000 ALTER TABLE `blc_category_attribute` DISABLE KEYS */;
INSERT INTO `blc_category_attribute` VALUES (1,'園區','白沙灣',2119);
/*!40000 ALTER TABLE `blc_category_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_media_map`
--

DROP TABLE IF EXISTS `blc_category_media_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_category_media_map` (
  `CATEGORY_MEDIA_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_CATEGORY_CATEGORY_ID` bigint NOT NULL,
  `MEDIA_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_MEDIA_ID`),
  KEY `FKfi64uesmjfu96gc0i4urxyf12` (`BLC_CATEGORY_CATEGORY_ID`),
  KEY `FKel78nfydgqxta46k7uvsh5q3x` (`MEDIA_ID`),
  CONSTRAINT `FKel78nfydgqxta46k7uvsh5q3x` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKfi64uesmjfu96gc0i4urxyf12` FOREIGN KEY (`BLC_CATEGORY_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_media_map`
--

LOCK TABLES `blc_category_media_map` WRITE;
/*!40000 ALTER TABLE `blc_category_media_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_category_media_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_product_xref`
--

DROP TABLE IF EXISTS `blc_category_product_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_category_product_xref` (
  `CATEGORY_PRODUCT_ID` bigint NOT NULL,
  `DEFAULT_REFERENCE` bit(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint NOT NULL,
  `PRODUCT_ID` bigint NOT NULL,
  PRIMARY KEY (`CATEGORY_PRODUCT_ID`),
  KEY `FKj8gn00lwi7fih0ueqwdat589e` (`CATEGORY_ID`),
  KEY `FKnwoet42m887na9hjfvqqgr58v` (`PRODUCT_ID`),
  CONSTRAINT `FKj8gn00lwi7fih0ueqwdat589e` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKnwoet42m887na9hjfvqqgr58v` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_product_xref`
--

LOCK TABLES `blc_category_product_xref` WRITE;
/*!40000 ALTER TABLE `blc_category_product_xref` DISABLE KEYS */;
INSERT INTO `blc_category_product_xref` VALUES (51,_binary '',NULL,2003,611),(201,_binary '',NULL,2069,761),(202,_binary '',NULL,2069,762),(251,_binary '',NULL,2069,811),(301,_binary '',NULL,2069,861),(302,_binary '',NULL,2069,862),(351,_binary '',NULL,2119,911),(352,NULL,NULL,2119,912),(353,_binary '',NULL,2120,912),(452,_binary '',NULL,2171,961),(501,_binary '',NULL,2171,1011),(502,_binary '',NULL,2220,1012),(504,_binary '',NULL,2225,1013),(551,_binary '',NULL,2225,1061),(552,_binary '',NULL,2271,1062),(614,NULL,NULL,2321,661),(615,NULL,NULL,2321,711),(616,NULL,NULL,2321,712),(651,NULL,NULL,2369,661),(652,NULL,NULL,2369,711),(653,NULL,NULL,2369,712),(654,_binary '',NULL,2369,661),(655,_binary '',NULL,2369,711),(656,_binary '',NULL,2369,712),(657,_binary '',NULL,2373,1111),(658,_binary '',NULL,2374,1112),(659,_binary '',NULL,2375,1113),(704,_binary '',NULL,2019,1161),(751,NULL,NULL,2369,1211),(752,_binary '',NULL,2019,1211);
/*!40000 ALTER TABLE `blc_category_product_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_xref`
--

DROP TABLE IF EXISTS `blc_category_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_category_xref` (
  `CATEGORY_XREF_ID` bigint NOT NULL,
  `DEFAULT_REFERENCE` bit(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint NOT NULL,
  `SUB_CATEGORY_ID` bigint NOT NULL,
  PRIMARY KEY (`CATEGORY_XREF_ID`),
  KEY `FKe9p1rqdyircs0atgu7e5xlwmx` (`CATEGORY_ID`),
  KEY `FKgrlcy8qrn7lqyiou3vu1piuk1` (`SUB_CATEGORY_ID`),
  CONSTRAINT `FKe9p1rqdyircs0atgu7e5xlwmx` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKgrlcy8qrn7lqyiou3vu1piuk1` FOREIGN KEY (`SUB_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_xref`
--

LOCK TABLES `blc_category_xref` WRITE;
/*!40000 ALTER TABLE `blc_category_xref` DISABLE KEYS */;
INSERT INTO `blc_category_xref` VALUES (70,_binary '',NULL,2119,2120),(71,_binary '',NULL,2120,2169),(72,_binary '',NULL,2169,2170),(73,_binary '',NULL,2169,2171),(120,_binary '',NULL,2120,2219),(121,_binary '',NULL,2219,2220),(122,_binary '',NULL,2119,2221),(123,_binary '',NULL,2119,2222),(124,_binary '',NULL,2222,2223),(125,_binary '',NULL,2223,2224),(126,_binary '',NULL,2223,2225),(170,_binary '',NULL,2119,2269),(171,_binary '',NULL,2222,2270),(172,_binary '',NULL,2270,2271),(220,_binary '',NULL,2319,2019),(221,_binary '',NULL,2319,2320),(222,_binary '',NULL,2019,2321),(270,_binary '',NULL,2321,2369),(271,_binary '',NULL,2320,2370),(272,_binary '',NULL,2320,2371),(273,_binary '',NULL,2320,2372),(274,_binary '',NULL,2372,2373),(275,_binary '',NULL,2370,2374),(276,_binary '',NULL,2371,2375);
/*!40000 ALTER TABLE `blc_category_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_challenge_question`
--

DROP TABLE IF EXISTS `blc_challenge_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_challenge_question` (
  `QUESTION_ID` bigint NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_challenge_question`
--

LOCK TABLES `blc_challenge_question` WRITE;
/*!40000 ALTER TABLE `blc_challenge_question` DISABLE KEYS */;
INSERT INTO `blc_challenge_question` VALUES (1,'What is your favorite sports team?'),(2,'What was your high school name?'),(3,'What was your childhood nickname?'),(4,'What street did you live on in third grade?'),(5,'What is your oldest sibling\'s middle name?'),(6,'What school did you attend for sixth grade?'),(7,'Where does your nearest sibling live?'),(8,'What is your youngest brother\'s birthday?'),(9,'In what city or town was your first job?');
/*!40000 ALTER TABLE `blc_challenge_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cms_menu`
--

DROP TABLE IF EXISTS `blc_cms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_cms_menu` (
  `MENU_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cms_menu`
--

LOCK TABLES `blc_cms_menu` WRITE;
/*!40000 ALTER TABLE `blc_cms_menu` DISABLE KEYS */;
INSERT INTO `blc_cms_menu` VALUES (1,'Header Nav');
/*!40000 ALTER TABLE `blc_cms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cms_menu_item`
--

DROP TABLE IF EXISTS `blc_cms_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_cms_menu_item` (
  `MENU_ITEM_ID` bigint NOT NULL,
  `ACTION_URL` varchar(255) DEFAULT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CUSTOM_HTML` longtext,
  `IMAGE_URL` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `MENU_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `LINKED_MENU_ID` bigint DEFAULT NULL,
  `LINKED_PAGE_ID` bigint DEFAULT NULL,
  `PARENT_MENU_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`MENU_ITEM_ID`),
  KEY `FKsfd7p9istk4908bchapktbnr0` (`LINKED_MENU_ID`),
  KEY `FKbgy5higr7beta0sxdqvkm9k7r` (`LINKED_PAGE_ID`),
  KEY `FKa7ogt4huutal1mirsufnmy9lr` (`PARENT_MENU_ID`),
  CONSTRAINT `FKa7ogt4huutal1mirsufnmy9lr` FOREIGN KEY (`PARENT_MENU_ID`) REFERENCES `blc_cms_menu` (`MENU_ID`),
  CONSTRAINT `FKbgy5higr7beta0sxdqvkm9k7r` FOREIGN KEY (`LINKED_PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`),
  CONSTRAINT `FKsfd7p9istk4908bchapktbnr0` FOREIGN KEY (`LINKED_MENU_ID`) REFERENCES `blc_cms_menu` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cms_menu_item`
--

LOCK TABLES `blc_cms_menu_item` WRITE;
/*!40000 ALTER TABLE `blc_cms_menu_item` DISABLE KEYS */;
INSERT INTO `blc_cms_menu_item` VALUES (1,'/',NULL,NULL,NULL,'Home',1.000000,'CATEGORY',NULL,NULL,1),(165,'/lyBaishawanPark',NULL,NULL,NULL,'LyBaishawanPark',4.000000,'CATEGORY',NULL,NULL,1),(216,'/lyContractcertificate',NULL,NULL,NULL,'LyContract&Certificate',5.000000,'CATEGORY',NULL,NULL,1);
/*!40000 ALTER TABLE `blc_cms_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_code_types`
--

DROP TABLE IF EXISTS `blc_code_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_code_types` (
  `CODE_ID` bigint NOT NULL,
  `CODE_TYPE` varchar(255) NOT NULL,
  `CODE_DESC` varchar(255) DEFAULT NULL,
  `CODE_KEY` varchar(255) NOT NULL,
  `MODIFIABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_code_types`
--

LOCK TABLES `blc_code_types` WRITE;
/*!40000 ALTER TABLE `blc_code_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_code_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country`
--

DROP TABLE IF EXISTS `blc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_country` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country`
--

LOCK TABLES `blc_country` WRITE;
/*!40000 ALTER TABLE `blc_country` DISABLE KEYS */;
INSERT INTO `blc_country` VALUES ('CA',NULL,NULL,NULL,NULL,'Canada'),('ES',NULL,NULL,NULL,NULL,'Spain'),('FR',NULL,NULL,NULL,NULL,'France'),('GB',NULL,NULL,NULL,NULL,'United Kingdom'),('MX',NULL,NULL,NULL,NULL,'Mexico'),('TW',NULL,NULL,NULL,NULL,'Taiwan'),('US',NULL,NULL,NULL,NULL,'United States');
/*!40000 ALTER TABLE `blc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country_sub`
--

DROP TABLE IF EXISTS `blc_country_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_country_sub` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `ALT_ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY_SUB_CAT` bigint DEFAULT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `COUNTRY_SUB_ALT_ABRV_IDX` (`ALT_ABBREVIATION`),
  KEY `COUNTRY_SUB_NAME_IDX` (`NAME`),
  KEY `FKtjleoo0nukky2den29i7mlx0c` (`COUNTRY_SUB_CAT`),
  KEY `FKapicr4ced87ut6dfyh5fuway8` (`COUNTRY`),
  CONSTRAINT `FKapicr4ced87ut6dfyh5fuway8` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`),
  CONSTRAINT `FKtjleoo0nukky2den29i7mlx0c` FOREIGN KEY (`COUNTRY_SUB_CAT`) REFERENCES `blc_country_sub_cat` (`COUNTRY_SUB_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country_sub`
--

LOCK TABLES `blc_country_sub` WRITE;
/*!40000 ALTER TABLE `blc_country_sub` DISABLE KEYS */;
INSERT INTO `blc_country_sub` VALUES ('CA-AB','AB',NULL,NULL,NULL,NULL,'ALBERTA',63,'CA'),('CA-BC','BC',NULL,NULL,NULL,NULL,'BRITISH COLUMBIA',63,'CA'),('CA-MB','MB',NULL,NULL,NULL,NULL,'MANITOBA',63,'CA'),('CA-NB','NB',NULL,NULL,NULL,NULL,'NEW BRUNSWICK',63,'CA'),('CA-NL','NL',NULL,NULL,NULL,NULL,'NEWFOUNDLAND',63,'CA'),('CA-NS','NS',NULL,NULL,NULL,NULL,'NOVA SCOTIA',63,'CA'),('CA-NT','NT',NULL,NULL,NULL,NULL,'NORTHWEST TERRITORIES',81,'CA'),('CA-NU','NU',NULL,NULL,NULL,NULL,'NUNAVUT',81,'CA'),('CA-ON','ON',NULL,NULL,NULL,NULL,'ONTARIO',63,'CA'),('CA-PE','PE',NULL,NULL,NULL,NULL,'PRINCE EDWARD ISLAND',63,'CA'),('CA-QC','QC',NULL,NULL,NULL,NULL,'QUEBEC',63,'CA'),('CA-SK','SK',NULL,NULL,NULL,NULL,'SASKATCHEWAN',63,'CA'),('CA-YT','YT',NULL,NULL,NULL,NULL,'YUKON',81,'CA'),('ES-A','A',NULL,NULL,NULL,NULL,'Alicante',63,'ES'),('ES-AB','AB',NULL,NULL,NULL,NULL,'Albacete',63,'ES'),('ES-AL','AL',NULL,NULL,NULL,NULL,'Almer穩a',63,'ES'),('ES-AV','AV',NULL,NULL,NULL,NULL,'�ila',63,'ES'),('ES-B','B',NULL,NULL,NULL,NULL,'Barcelona',63,'ES'),('ES-BA','BA',NULL,NULL,NULL,NULL,'Badajoz',63,'ES'),('ES-BI','BI',NULL,NULL,NULL,NULL,'Vizcaya',63,'ES'),('ES-BU','BU',NULL,NULL,NULL,NULL,'Burgos',63,'ES'),('ES-C','C',NULL,NULL,NULL,NULL,'A Coru簽a',63,'ES'),('ES-CA','CA',NULL,NULL,NULL,NULL,'C獺diz',63,'ES'),('ES-CC','CC',NULL,NULL,NULL,NULL,'C獺ceres',63,'ES'),('ES-CO','CO',NULL,NULL,NULL,NULL,'C籀rdoba',63,'ES'),('ES-CR','CR',NULL,NULL,NULL,NULL,'Ciudad Real',63,'ES'),('ES-CS','CS',NULL,NULL,NULL,NULL,'Castell籀n',63,'ES'),('ES-CU','CU',NULL,NULL,NULL,NULL,'Cuenca',63,'ES'),('ES-GC','GC',NULL,NULL,NULL,NULL,'Las Palmas',63,'ES'),('ES-GI','GI',NULL,NULL,NULL,NULL,'Girona',63,'ES'),('ES-GR','GR',NULL,NULL,NULL,NULL,'Granada',63,'ES'),('ES-GU','GU',NULL,NULL,NULL,NULL,'Guadalajara',63,'ES'),('ES-H','H',NULL,NULL,NULL,NULL,'Huelva',63,'ES'),('ES-HU','HU',NULL,NULL,NULL,NULL,'Huesca',63,'ES'),('ES-J','J',NULL,NULL,NULL,NULL,'Ja矇n',63,'ES'),('ES-L','L',NULL,NULL,NULL,NULL,'Lleida',63,'ES'),('ES-LE','LE',NULL,NULL,NULL,NULL,'Le籀n',63,'ES'),('ES-LO','LO',NULL,NULL,NULL,NULL,'La Rioja',63,'ES'),('ES-LU','LU',NULL,NULL,NULL,NULL,'Lugo',63,'ES'),('ES-M','M',NULL,NULL,NULL,NULL,'Madrid',63,'ES'),('ES-MA','MA',NULL,NULL,NULL,NULL,'M獺laga',63,'ES'),('ES-MU','MU',NULL,NULL,NULL,NULL,'Murcia',63,'ES'),('ES-NA','NA',NULL,NULL,NULL,NULL,'Navarra',63,'ES'),('ES-O','O',NULL,NULL,NULL,NULL,'Asturias',63,'ES'),('ES-OR','OR',NULL,NULL,NULL,NULL,'Ourense',63,'ES'),('ES-P','P',NULL,NULL,NULL,NULL,'Palencia',63,'ES'),('ES-PM','PM',NULL,NULL,NULL,NULL,'Balears',63,'ES'),('ES-PO','PO',NULL,NULL,NULL,NULL,'Pontevedra',63,'ES'),('ES-S','S',NULL,NULL,NULL,NULL,'Cantabria',63,'ES'),('ES-SA','SA',NULL,NULL,NULL,NULL,'Salamanca',63,'ES'),('ES-SE','SE',NULL,NULL,NULL,NULL,'Sevilla',63,'ES'),('ES-SG','SG',NULL,NULL,NULL,NULL,'Segovia',63,'ES'),('ES-SO','SO',NULL,NULL,NULL,NULL,'Soria',63,'ES'),('ES-SS','SS',NULL,NULL,NULL,NULL,'Guip繳zcoa',63,'ES'),('ES-T','T',NULL,NULL,NULL,NULL,'Tarragona',63,'ES'),('ES-TE','TE',NULL,NULL,NULL,NULL,'Teruel',63,'ES'),('ES-TF','TF',NULL,NULL,NULL,NULL,'Santa Cruz de Tenerife',63,'ES'),('ES-TO','TO',NULL,NULL,NULL,NULL,'Toledo',63,'ES'),('ES-V','V',NULL,NULL,NULL,NULL,'Valencia',63,'ES'),('ES-VA','VA',NULL,NULL,NULL,NULL,'Valladolid',63,'ES'),('ES-VI','VI',NULL,NULL,NULL,NULL,'�ava',63,'ES'),('ES-Z','Z',NULL,NULL,NULL,NULL,'Zaragoza',63,'ES'),('ES-ZA','ZA',NULL,NULL,NULL,NULL,'Zamora',63,'ES'),('MX-AGU','AGU',NULL,NULL,NULL,NULL,'AGUASCALIENTES',79,'MX'),('MX-BCN','BCN',NULL,NULL,NULL,NULL,'BAJA CALIFORNIA',79,'MX'),('MX-BCS','BCS',NULL,NULL,NULL,NULL,'BAJA CALIFORNIA SUR',79,'MX'),('MX-CAM','CAM',NULL,NULL,NULL,NULL,'CAMPECHE',79,'MX'),('MX-CHH','CHH',NULL,NULL,NULL,NULL,'CHIHUAHUA',79,'MX'),('MX-CHP','CHP',NULL,NULL,NULL,NULL,'CHIAPAS',79,'MX'),('MX-COA','COA',NULL,NULL,NULL,NULL,'COAHUILA',79,'MX'),('MX-COL','COL',NULL,NULL,NULL,NULL,'COLIMA',79,'MX'),('MX-DIF','DIF',NULL,NULL,NULL,NULL,'DISTRITO FEDERAL',39,'MX'),('MX-DUR','DUR',NULL,NULL,NULL,NULL,'DURANGO',79,'MX'),('MX-GRO','GRO',NULL,NULL,NULL,NULL,'GUERRERO',79,'MX'),('MX-GUA','GUA',NULL,NULL,NULL,NULL,'GUANAJUATO',79,'MX'),('MX-HID','HID',NULL,NULL,NULL,NULL,'HIDALGO',79,'MX'),('MX-JAL','JAL',NULL,NULL,NULL,NULL,'JALISCO',79,'MX'),('MX-MEX','MEX',NULL,NULL,NULL,NULL,'M�ICO',79,'MX'),('MX-MIC','MIC',NULL,NULL,NULL,NULL,'MICHOAC�',79,'MX'),('MX-MOR','MOR',NULL,NULL,NULL,NULL,'MORELOS',79,'MX'),('MX-NAY','NAY',NULL,NULL,NULL,NULL,'NAYARIT',79,'MX'),('MX-NLE','NLE',NULL,NULL,NULL,NULL,'NUEVO LE�',79,'MX'),('MX-OAX','OAX',NULL,NULL,NULL,NULL,'OAXACA',79,'MX'),('MX-PUE','PUE',NULL,NULL,NULL,NULL,'PUEBLA',79,'MX'),('MX-QUE','QUE',NULL,NULL,NULL,NULL,'QUER�ARO',79,'MX'),('MX-ROO','ROO',NULL,NULL,NULL,NULL,'QUINTANA ROO',79,'MX'),('MX-SIN','SIN',NULL,NULL,NULL,NULL,'SINALOA',79,'MX'),('MX-SLP','SLP',NULL,NULL,NULL,NULL,'SAN LUIS POTOS��',79,'MX'),('MX-SON','SON',NULL,NULL,NULL,NULL,'SONORA',79,'MX'),('MX-TAB','TAB',NULL,NULL,NULL,NULL,'TABASCO',79,'MX'),('MX-TAM','TAM',NULL,NULL,NULL,NULL,'TAMAULIPAS',79,'MX'),('MX-TLA','TLA',NULL,NULL,NULL,NULL,'TLAXCALA',79,'MX'),('MX-VER','VER',NULL,NULL,NULL,NULL,'VERACRUZ',79,'MX'),('MX-YUC','YUC',NULL,NULL,NULL,NULL,'YUCAT�',79,'MX'),('MX-ZAC','ZAC',NULL,NULL,NULL,NULL,'ZACATECAS',79,'MX'),('US-AK','AK',NULL,NULL,NULL,NULL,'ALASKA',79,'US'),('US-AL','AL',NULL,NULL,NULL,NULL,'ALABAMA',79,'US'),('US-AR','AR',NULL,NULL,NULL,NULL,'ARKANSAS',79,'US'),('US-AS','AS',NULL,NULL,NULL,NULL,'AMERICAN SAMOA',57,'US'),('US-AZ','AZ',NULL,NULL,NULL,NULL,'ARIZONA',79,'US'),('US-CA','CA',NULL,NULL,NULL,NULL,'CALIFORNIA',79,'US'),('US-CO','CO',NULL,NULL,NULL,NULL,'COLORADO',79,'US'),('US-CT','CT',NULL,NULL,NULL,NULL,'CONNECTICUT',79,'US'),('US-DC','DC',NULL,NULL,NULL,NULL,'DISTRICT OF COLUMBIA',31,'US'),('US-DE','DE',NULL,NULL,NULL,NULL,'DELAWARE',79,'US'),('US-FL','FL',NULL,NULL,NULL,NULL,'FLORIDA',79,'US'),('US-GA','GA',NULL,NULL,NULL,NULL,'GEORGIA',79,'US'),('US-GU','GU',NULL,NULL,NULL,NULL,'GUAM',57,'US'),('US-HI','HI',NULL,NULL,NULL,NULL,'HAWAII',79,'US'),('US-IA','IA',NULL,NULL,NULL,NULL,'IOWA',79,'US'),('US-ID','ID',NULL,NULL,NULL,NULL,'IDAHO',79,'US'),('US-IL','IL',NULL,NULL,NULL,NULL,'ILLINOIS',79,'US'),('US-IN','IN',NULL,NULL,NULL,NULL,'INDIANA',79,'US'),('US-KS','KS',NULL,NULL,NULL,NULL,'KANSAS',79,'US'),('US-KY','KY',NULL,NULL,NULL,NULL,'KENTUCKY',79,'US'),('US-LA','LA',NULL,NULL,NULL,NULL,'LOUISIANA',79,'US'),('US-MA','MA',NULL,NULL,NULL,NULL,'MASSACHUSETTS',79,'US'),('US-MD','MD',NULL,NULL,NULL,NULL,'MARYLAND',79,'US'),('US-ME','ME',NULL,NULL,NULL,NULL,'MAINE',79,'US'),('US-MI','MI',NULL,NULL,NULL,NULL,'MICHIGAN',79,'US'),('US-MN','MN',NULL,NULL,NULL,NULL,'MINNESOTA',79,'US'),('US-MO','MO',NULL,NULL,NULL,NULL,'MISSOURI',79,'US'),('US-MP','MP',NULL,NULL,NULL,NULL,'NORTHERN MARIANA ISLANDS',57,'US'),('US-MS','MS',NULL,NULL,NULL,NULL,'MISSISSIPPI',79,'US'),('US-MT','MT',NULL,NULL,NULL,NULL,'MONTANA',79,'US'),('US-NC','NC',NULL,NULL,NULL,NULL,'NORTH CAROLINA',79,'US'),('US-ND','ND',NULL,NULL,NULL,NULL,'NORTH DAKOTA',79,'US'),('US-NE','NE',NULL,NULL,NULL,NULL,'NEBRASKA',79,'US'),('US-NH','NH',NULL,NULL,NULL,NULL,'NEW HAMPSHIRE',79,'US'),('US-NJ','NJ',NULL,NULL,NULL,NULL,'NEW JERSEY',79,'US'),('US-NM','NM',NULL,NULL,NULL,NULL,'NEW MEXICO',79,'US'),('US-NV','NV',NULL,NULL,NULL,NULL,'NEVADA',79,'US'),('US-NY','NY',NULL,NULL,NULL,NULL,'NEW YORK',79,'US'),('US-OH','OH',NULL,NULL,NULL,NULL,'OHIO',79,'US'),('US-OK','OK',NULL,NULL,NULL,NULL,'OKLAHOMA',79,'US'),('US-OR','OR',NULL,NULL,NULL,NULL,'OREGON',79,'US'),('US-PA','PA',NULL,NULL,NULL,NULL,'PENNSYLVANIA',79,'US'),('US-PR','PR',NULL,NULL,NULL,NULL,'PUERTO RICO',57,'US'),('US-RI','RI',NULL,NULL,NULL,NULL,'RHODE ISLAND',79,'US'),('US-SC','SC',NULL,NULL,NULL,NULL,'SOUTH CAROLINA',79,'US'),('US-SD','SD',NULL,NULL,NULL,NULL,'SOUTH DAKOTA',79,'US'),('US-TN','TN',NULL,NULL,NULL,NULL,'TENNESSEE',79,'US'),('US-TX','TX',NULL,NULL,NULL,NULL,'TEXAS',79,'US'),('US-UM','UM',NULL,NULL,NULL,NULL,'UNITED STATES MINOR OUTLYING ISLANDS',57,'US'),('US-UT','UT',NULL,NULL,NULL,NULL,'UTAH',79,'US'),('US-VA','VA',NULL,NULL,NULL,NULL,'VIRGINIA',79,'US'),('US-VI','VI',NULL,NULL,NULL,NULL,'VIRGIN ISLANDS',57,'US'),('US-VT','VT',NULL,NULL,NULL,NULL,'VERMONT',79,'US'),('US-WA','WA',NULL,NULL,NULL,NULL,'WASHINGTON',79,'US'),('US-WI','WI',NULL,NULL,NULL,NULL,'WISCONSIN',79,'US'),('US-WV','WV',NULL,NULL,NULL,NULL,'WEST VIRGINIA',79,'US'),('US-WY','WY',NULL,NULL,NULL,NULL,'WYOMING',79,'US');
/*!40000 ALTER TABLE `blc_country_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country_sub_cat`
--

DROP TABLE IF EXISTS `blc_country_sub_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_country_sub_cat` (
  `COUNTRY_SUB_CAT_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`COUNTRY_SUB_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country_sub_cat`
--

LOCK TABLES `blc_country_sub_cat` WRITE;
/*!40000 ALTER TABLE `blc_country_sub_cat` DISABLE KEYS */;
INSERT INTO `blc_country_sub_cat` VALUES (1,NULL,NULL,NULL,NULL,'Administration'),(2,NULL,NULL,NULL,NULL,'Administrative Atoll'),(3,NULL,NULL,NULL,NULL,'Administrative Region'),(4,NULL,NULL,NULL,NULL,'Area'),(5,NULL,NULL,NULL,NULL,'Autonomous City'),(6,NULL,NULL,NULL,NULL,'Autonomous Community'),(7,NULL,NULL,NULL,NULL,'Autonomous District'),(8,NULL,NULL,NULL,NULL,'Autonomous Municipality'),(9,NULL,NULL,NULL,NULL,'Autonomous Province'),(10,NULL,NULL,NULL,NULL,'Autonomous Region'),(11,NULL,NULL,NULL,NULL,'Autonomous Republic'),(12,NULL,NULL,NULL,NULL,'Autonomous Sector'),(13,NULL,NULL,NULL,NULL,'Autonomous Territorial Unit'),(14,NULL,NULL,NULL,NULL,'Borough'),(15,NULL,NULL,NULL,NULL,'Canton'),(16,NULL,NULL,NULL,NULL,'Capital'),(17,NULL,NULL,NULL,NULL,'Capital City'),(18,NULL,NULL,NULL,NULL,'Capital District'),(19,NULL,NULL,NULL,NULL,'Capital Metropolitan City'),(20,NULL,NULL,NULL,NULL,'City'),(21,NULL,NULL,NULL,NULL,'City of County Right'),(22,NULL,NULL,NULL,NULL,'Commune'),(23,NULL,NULL,NULL,NULL,'Constitutional Province'),(24,NULL,NULL,NULL,NULL,'Corporation'),(25,NULL,NULL,NULL,NULL,'Council Area'),(26,NULL,NULL,NULL,NULL,'Country'),(27,NULL,NULL,NULL,NULL,'County'),(28,NULL,NULL,NULL,NULL,'Department'),(29,NULL,NULL,NULL,NULL,'Dependency'),(30,NULL,NULL,NULL,NULL,'Development Region'),(31,NULL,NULL,NULL,NULL,'District'),(32,NULL,NULL,NULL,NULL,'District With Special Status'),(33,NULL,NULL,NULL,NULL,'Division'),(34,NULL,NULL,NULL,NULL,'Economic Prefecture'),(35,NULL,NULL,NULL,NULL,'Emirate'),(36,NULL,NULL,NULL,NULL,'Entity'),(37,NULL,NULL,NULL,NULL,'Federal Capital Territory'),(38,NULL,NULL,NULL,NULL,'Federal Dependency'),(39,NULL,NULL,NULL,NULL,'Federal District'),(40,NULL,NULL,NULL,NULL,'Federal Land'),(41,NULL,NULL,NULL,NULL,'Federal Territory'),(42,NULL,NULL,NULL,NULL,'Federated States'),(43,NULL,NULL,NULL,NULL,'Geographical Entity'),(44,NULL,NULL,NULL,NULL,'Geographical Regions'),(45,NULL,NULL,NULL,NULL,'Governorate'),(46,NULL,NULL,NULL,NULL,'Indigenous Region'),(47,NULL,NULL,NULL,NULL,'Island'),(48,NULL,NULL,NULL,NULL,'Island Council'),(49,NULL,NULL,NULL,NULL,'Local Council'),(50,NULL,NULL,NULL,NULL,'Metropolitan Administration'),(51,NULL,NULL,NULL,NULL,'Metropolitan City'),(52,NULL,NULL,NULL,NULL,'Metropolitan Department'),(53,NULL,NULL,NULL,NULL,'Metropolitan Region'),(54,NULL,NULL,NULL,NULL,'Municipality'),(55,NULL,NULL,NULL,NULL,'Oblast'),(56,NULL,NULL,NULL,NULL,'Outlying Area'),(57,NULL,NULL,NULL,NULL,'Outlying Territory'),(58,NULL,NULL,NULL,NULL,'Overseas Region'),(59,NULL,NULL,NULL,NULL,'Overseas Territorial Collectivity'),(60,NULL,NULL,NULL,NULL,'Parish'),(61,NULL,NULL,NULL,NULL,'Popularate'),(62,NULL,NULL,NULL,NULL,'Prefecture'),(63,NULL,NULL,NULL,NULL,'Province'),(64,NULL,NULL,NULL,NULL,'Quarter'),(65,NULL,NULL,NULL,NULL,'Rayon'),(66,NULL,NULL,NULL,NULL,'Region'),(67,NULL,NULL,NULL,NULL,'Regional Council'),(68,NULL,NULL,NULL,NULL,'Republic'),(69,NULL,NULL,NULL,NULL,'Republican City'),(70,NULL,NULL,NULL,NULL,'Self-governed Part'),(71,NULL,NULL,NULL,NULL,'Special Administrative City'),(72,NULL,NULL,NULL,NULL,'Special Administrative Region'),(73,NULL,NULL,NULL,NULL,'Special City'),(74,NULL,NULL,NULL,NULL,'Special District'),(75,NULL,NULL,NULL,NULL,'Special Island Authority'),(76,NULL,NULL,NULL,NULL,'Special Municipality'),(77,NULL,NULL,NULL,NULL,'Special Region'),(78,NULL,NULL,NULL,NULL,'Special Zone'),(79,NULL,NULL,NULL,NULL,'State'),(80,NULL,NULL,NULL,NULL,'Territorial Unit'),(81,NULL,NULL,NULL,NULL,'Territory'),(82,NULL,NULL,NULL,NULL,'Town Council'),(83,NULL,NULL,NULL,NULL,'Union Territory'),(84,NULL,NULL,NULL,NULL,'Unitary Authority'),(85,NULL,NULL,NULL,NULL,'Urban Community'),(86,NULL,NULL,NULL,NULL,'Zone');
/*!40000 ALTER TABLE `blc_country_sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_credit_card_payment`
--

DROP TABLE IF EXISTS `blc_credit_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_credit_card_payment` (
  `PAYMENT_ID` bigint NOT NULL,
  `EXPIRATION_MONTH` int NOT NULL,
  `EXPIRATION_YEAR` int NOT NULL,
  `NAME_ON_CARD` varchar(255) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `CREDITCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_credit_card_payment`
--

LOCK TABLES `blc_credit_card_payment` WRITE;
/*!40000 ALTER TABLE `blc_credit_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_credit_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_currency`
--

DROP TABLE IF EXISTS `blc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_currency` (
  `CURRENCY_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DEFAULT_FLAG` bit(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_currency`
--

LOCK TABLES `blc_currency` WRITE;
/*!40000 ALTER TABLE `blc_currency` DISABLE KEYS */;
INSERT INTO `blc_currency` VALUES ('EUR',NULL,NULL,NULL,NULL,_binary '\0','EURO Dollar'),('GBP',NULL,NULL,NULL,NULL,_binary '\0','GB Pound'),('MXN',NULL,NULL,NULL,NULL,_binary '\0','Mexican Peso'),('NTD',NULL,NULL,NULL,NULL,_binary '\0','NewTaiwanDollar'),('USD',NULL,NULL,NULL,NULL,_binary '','US Dollar');
/*!40000 ALTER TABLE `blc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cust_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_cust_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_cust_site_map_gen_cfg` (
  `GEN_CONFIG_ID` bigint NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  CONSTRAINT `FKs5s4vmpbxh4edqjtbted9gxmw` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cust_site_map_gen_cfg`
--

LOCK TABLES `blc_cust_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_cust_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_cust_site_map_gen_cfg` VALUES (-1);
/*!40000 ALTER TABLE `blc_cust_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer`
--

DROP TABLE IF EXISTS `blc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer` (
  `CUSTOMER_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `CHALLENGE_ANSWER` varchar(255) DEFAULT NULL,
  `DEACTIVATED` bit(1) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `IS_TAX_EXEMPT` bit(1) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PASSWORD_CHANGE_REQUIRED` bit(1) DEFAULT NULL,
  `IS_PREVIEW` bit(1) DEFAULT NULL,
  `RECEIVE_EMAIL` bit(1) DEFAULT NULL,
  `IS_REGISTERED` bit(1) DEFAULT NULL,
  `TAX_EXEMPTION_CODE` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CHALLENGE_QUESTION_ID` bigint DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `CUSTOMER_CHALLENGE_INDEX` (`CHALLENGE_QUESTION_ID`),
  KEY `CUSTOMER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `FK4utjhbg9600iwhb05m40wspj1` (`LOCALE_CODE`),
  CONSTRAINT `FK4utjhbg9600iwhb05m40wspj1` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`),
  CONSTRAINT `FKsgsex6rdheq2nm6pl23gggtqs` FOREIGN KEY (`CHALLENGE_QUESTION_ID`) REFERENCES `blc_challenge_question` (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer`
--

LOCK TABLES `blc_customer` WRITE;
/*!40000 ALTER TABLE `blc_customer` DISABLE KEYS */;
INSERT INTO `blc_customer` VALUES (1001,'N',1001,'2021-05-01 04:48:38','2021-05-01 04:48:38',1001,NULL,_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,'1001',NULL,NULL),(1900,'N',1900,'2021-05-03 00:50:56','2021-05-03 00:50:56',1900,NULL,_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,'1900',NULL,NULL),(2301,'N',2301,'2021-05-04 01:49:13','2021-05-04 01:49:13',2301,NULL,_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,'2301',NULL,NULL),(3802,'N',3802,'2021-05-07 00:37:14','2021-05-07 00:37:14',3802,NULL,_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,'3802',NULL,NULL),(3803,'N',3803,'2021-05-07 01:23:26','2021-05-07 01:23:26',3803,NULL,_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,'3803',NULL,NULL),(3804,'N',3804,'2021-05-07 02:14:23','2021-05-07 02:14:23',3804,NULL,_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,'3804',NULL,NULL);
/*!40000 ALTER TABLE `blc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_address`
--

DROP TABLE IF EXISTS `blc_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_address` (
  `CUSTOMER_ADDRESS_ID` bigint NOT NULL,
  `ADDRESS_NAME` varchar(255) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `ADDRESS_ID` bigint NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  PRIMARY KEY (`CUSTOMER_ADDRESS_ID`),
  KEY `CUSTOMERADDRESS_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FKrpdahw86mewf46g63nitq0w9p` (`CUSTOMER_ID`),
  CONSTRAINT `FKn79uhm41n1b23e6brajb4ggpw` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`),
  CONSTRAINT `FKrpdahw86mewf46g63nitq0w9p` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_address`
--

LOCK TABLES `blc_customer_address` WRITE;
/*!40000 ALTER TABLE `blc_customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_attribute`
--

DROP TABLE IF EXISTS `blc_customer_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_attribute` (
  `CUSTOMER_ATTR_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  PRIMARY KEY (`CUSTOMER_ATTR_ID`),
  KEY `FKo7j035lp80xu9wncbv96a1ry0` (`CUSTOMER_ID`),
  CONSTRAINT `FKo7j035lp80xu9wncbv96a1ry0` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_attribute`
--

LOCK TABLES `blc_customer_attribute` WRITE;
/*!40000 ALTER TABLE `blc_customer_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_offer_xref`
--

DROP TABLE IF EXISTS `blc_customer_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_offer_xref` (
  `CUSTOMER_OFFER_ID` bigint NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  PRIMARY KEY (`CUSTOMER_OFFER_ID`),
  KEY `CUSTOFFER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTOFFER_OFFER_INDEX` (`OFFER_ID`),
  CONSTRAINT `FKg81dq5yxrtsy6cjivd0afkxcj` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKrks1nkejqmm3n7y4xo5rs6wuk` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_offer_xref`
--

LOCK TABLES `blc_customer_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_customer_offer_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_password_token`
--

DROP TABLE IF EXISTS `blc_customer_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_password_token` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` bit(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_password_token`
--

LOCK TABLES `blc_customer_password_token` WRITE;
/*!40000 ALTER TABLE `blc_customer_password_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_payment`
--

DROP TABLE IF EXISTS `blc_customer_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_payment` (
  `CUSTOMER_PAYMENT_ID` bigint NOT NULL,
  `IS_DEFAULT` bit(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `PAYMENT_TOKEN` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint DEFAULT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`),
  UNIQUE KEY `CSTMR_PAY_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PAYMENT_TOKEN`),
  KEY `CUSTOMERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FKouuqjxsn30esr7ftg7i5mmr4p` (`ADDRESS_ID`),
  CONSTRAINT `FKhd53v4ilet9h8jxbjh7m2k7yj` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKouuqjxsn30esr7ftg7i5mmr4p` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_payment`
--

LOCK TABLES `blc_customer_payment` WRITE;
/*!40000 ALTER TABLE `blc_customer_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_payment_fields`
--

DROP TABLE IF EXISTS `blc_customer_payment_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_payment_fields` (
  `CUSTOMER_PAYMENT_ID` bigint NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`,`FIELD_NAME`),
  CONSTRAINT `FKpwpbmvuo4pd8y76dswmq4cr00` FOREIGN KEY (`CUSTOMER_PAYMENT_ID`) REFERENCES `blc_customer_payment` (`CUSTOMER_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_payment_fields`
--

LOCK TABLES `blc_customer_payment_fields` WRITE;
/*!40000 ALTER TABLE `blc_customer_payment_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_payment_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_phone`
--

DROP TABLE IF EXISTS `blc_customer_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_phone` (
  `CUSTOMER_PHONE_ID` bigint NOT NULL,
  `PHONE_NAME` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `PHONE_ID` bigint NOT NULL,
  PRIMARY KEY (`CUSTOMER_PHONE_ID`),
  UNIQUE KEY `CSTMR_PHONE_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PHONE_NAME`),
  KEY `CUSTPHONE_PHONE_INDEX` (`PHONE_ID`),
  CONSTRAINT `FK1uy5spxqx6kxiqnvg5la7bjbb` FOREIGN KEY (`PHONE_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FK4sg479sv9t1dj7b1pso158tr8` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_phone`
--

LOCK TABLES `blc_customer_phone` WRITE;
/*!40000 ALTER TABLE `blc_customer_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_role`
--

DROP TABLE IF EXISTS `blc_customer_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_customer_role` (
  `CUSTOMER_ROLE_ID` bigint NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `ROLE_ID` bigint NOT NULL,
  PRIMARY KEY (`CUSTOMER_ROLE_ID`),
  KEY `CUSTROLE_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTROLE_ROLE_INDEX` (`ROLE_ID`),
  CONSTRAINT `FKqcnikrg70t86oju6xf6622f5x` FOREIGN KEY (`ROLE_ID`) REFERENCES `blc_role` (`ROLE_ID`),
  CONSTRAINT `FKsqxeay9un5o0l77mrtdgjxps4` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_role`
--

LOCK TABLES `blc_customer_role` WRITE;
/*!40000 ALTER TABLE `blc_customer_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_data_drvn_enum`
--

DROP TABLE IF EXISTS `blc_data_drvn_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_data_drvn_enum` (
  `ENUM_ID` bigint NOT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `MODIFIABLE` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ENUM_ID`),
  KEY `ENUM_KEY_INDEX` (`ENUM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_data_drvn_enum`
--

LOCK TABLES `blc_data_drvn_enum` WRITE;
/*!40000 ALTER TABLE `blc_data_drvn_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_data_drvn_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_data_drvn_enum_val`
--

DROP TABLE IF EXISTS `blc_data_drvn_enum_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_data_drvn_enum_val` (
  `ENUM_VAL_ID` bigint NOT NULL,
  `DISPLAY` varchar(255) DEFAULT NULL,
  `HIDDEN` bit(1) DEFAULT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `ENUM_TYPE` bigint DEFAULT NULL,
  PRIMARY KEY (`ENUM_VAL_ID`),
  KEY `HIDDEN_INDEX` (`HIDDEN`),
  KEY `ENUM_VAL_KEY_INDEX` (`ENUM_KEY`),
  KEY `FKq180xbmiqw22rrc9kf0qokaea` (`ENUM_TYPE`),
  CONSTRAINT `FKq180xbmiqw22rrc9kf0qokaea` FOREIGN KEY (`ENUM_TYPE`) REFERENCES `blc_data_drvn_enum` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_data_drvn_enum_val`
--

LOCK TABLES `blc_data_drvn_enum_val` WRITE;
/*!40000 ALTER TABLE `blc_data_drvn_enum_val` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_data_drvn_enum_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_disc_item_fee_price`
--

DROP TABLE IF EXISTS `blc_disc_item_fee_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_disc_item_fee_price` (
  `DISC_ITEM_FEE_PRICE_ID` bigint NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint NOT NULL,
  PRIMARY KEY (`DISC_ITEM_FEE_PRICE_ID`),
  KEY `FK70ocmaswx7p3xymfvildubx5` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK70ocmaswx7p3xymfvildubx5` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_disc_item_fee_price`
--

LOCK TABLES `blc_disc_item_fee_price` WRITE;
/*!40000 ALTER TABLE `blc_disc_item_fee_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_disc_item_fee_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_discrete_order_item`
--

DROP TABLE IF EXISTS `blc_discrete_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_discrete_order_item` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint NOT NULL,
  `BUNDLE_ORDER_ITEM_ID` bigint DEFAULT NULL,
  `PRODUCT_ID` bigint DEFAULT NULL,
  `SKU_ID` bigint NOT NULL,
  `SKU_BUNDLE_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `DISCRETE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `DISCRETE_SKU_INDEX` (`SKU_ID`),
  KEY `FKpu94j8xpk9uwpcgcy98ktle06` (`BUNDLE_ORDER_ITEM_ID`),
  KEY `FK1micyx881c06d24amsg3sk2he` (`SKU_BUNDLE_ITEM_ID`),
  CONSTRAINT `FK188b985egh16qfcjt8kv1asa4` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK1micyx881c06d24amsg3sk2he` FOREIGN KEY (`SKU_BUNDLE_ITEM_ID`) REFERENCES `blc_sku_bundle_item` (`SKU_BUNDLE_ITEM_ID`),
  CONSTRAINT `FK2moe4tjwke365lo2s5qgmacx7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKmtcs7ax8jo2hy1ae4caafsfkp` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKpu94j8xpk9uwpcgcy98ktle06` FOREIGN KEY (`BUNDLE_ORDER_ITEM_ID`) REFERENCES `blc_bundle_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_discrete_order_item`
--

LOCK TABLES `blc_discrete_order_item` WRITE;
/*!40000 ALTER TABLE `blc_discrete_order_item` DISABLE KEYS */;
INSERT INTO `blc_discrete_order_item` VALUES (120000.00000,95000.00000,53,NULL,762,797,NULL),(280000.00000,250000.00000,54,NULL,711,745,NULL),(650000.00000,600000.00000,101,NULL,661,696,NULL),(1800000.00000,150000.00000,160,NULL,711,745,NULL),(200000.00000,188000.00000,161,NULL,712,746,NULL),(160000.00000,140000.00000,165,NULL,661,696,NULL),(160000.00000,140000.00000,170,NULL,661,696,NULL),(250000.00000,230000.00000,171,NULL,1113,1147,NULL),(160000.00000,400.00000,173,172,1161,696,1);
/*!40000 ALTER TABLE `blc_discrete_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_dyn_discrete_order_item`
--

DROP TABLE IF EXISTS `blc_dyn_discrete_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_dyn_discrete_order_item` (
  `ORDER_ITEM_ID` bigint NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  CONSTRAINT `FKhv263skp3pgb4wcxg44umwcjs` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_dyn_discrete_order_item`
--

LOCK TABLES `blc_dyn_discrete_order_item` WRITE;
/*!40000 ALTER TABLE `blc_dyn_discrete_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_dyn_discrete_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking`
--

DROP TABLE IF EXISTS `blc_email_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_email_tracking` (
  `EMAIL_TRACKING_ID` bigint NOT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TRACKING_ID`),
  KEY `EMAILTRACKING_INDEX` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking`
--

LOCK TABLES `blc_email_tracking` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking_clicks`
--

DROP TABLE IF EXISTS `blc_email_tracking_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_email_tracking_clicks` (
  `CLICK_ID` bigint NOT NULL,
  `CUSTOMER_ID` varchar(255) DEFAULT NULL,
  `DATE_CLICKED` datetime NOT NULL,
  `DESTINATION_URI` varchar(255) DEFAULT NULL,
  `QUERY_STRING` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint NOT NULL,
  PRIMARY KEY (`CLICK_ID`),
  KEY `TRACKINGCLICKS_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `TRACKINGCLICKS_TRACKING_INDEX` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FK3jed270645ahspuibr8wau0po` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `blc_email_tracking` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking_clicks`
--

LOCK TABLES `blc_email_tracking_clicks` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking_clicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking_opens`
--

DROP TABLE IF EXISTS `blc_email_tracking_opens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_email_tracking_opens` (
  `OPEN_ID` bigint NOT NULL,
  `DATE_OPENED` datetime DEFAULT NULL,
  `USER_AGENT` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`OPEN_ID`),
  KEY `TRACKINGOPEN_TRACKING` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKt6fi06g4y7riiqeyuhb0t659n` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `blc_email_tracking` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking_opens`
--

LOCK TABLES `blc_email_tracking_opens` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking_opens` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking_opens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_adjustment`
--

DROP TABLE IF EXISTS `blc_fg_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fg_adjustment` (
  `FG_ADJUSTMENT_ID` bigint NOT NULL,
  `IS_FUTURE_CREDIT` bit(1) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `FULFILLMENT_GROUP_ID` bigint DEFAULT NULL,
  `OFFER_ID` bigint NOT NULL,
  PRIMARY KEY (`FG_ADJUSTMENT_ID`),
  KEY `FGADJUSTMENT_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGADJUSTMENT_OFFER_INDEX` (`OFFER_ID`),
  CONSTRAINT `FK2ceuqqy88te84f61f0n7kvaw1` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKt0l1mgyccsuq76n8b0b6pc9a9` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_adjustment`
--

LOCK TABLES `blc_fg_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_fg_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_fee_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_fee_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fg_fee_tax_xref` (
  `FULFILLMENT_GROUP_FEE_ID` bigint NOT NULL,
  `TAX_DETAIL_ID` bigint NOT NULL,
  UNIQUE KEY `UK_59ow3plvbkxjfs57k92ahf3eg` (`TAX_DETAIL_ID`),
  KEY `FK2t3oa9322dqgya6r27pb2bcsd` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK1aueplsngm018mlqqq9yhgrn6` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`),
  CONSTRAINT `FK2t3oa9322dqgya6r27pb2bcsd` FOREIGN KEY (`FULFILLMENT_GROUP_FEE_ID`) REFERENCES `blc_fulfillment_group_fee` (`FULFILLMENT_GROUP_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_fee_tax_xref`
--

LOCK TABLES `blc_fg_fee_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_fee_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_fee_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_fg_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_fg_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fg_fg_tax_xref` (
  `FULFILLMENT_GROUP_ID` bigint NOT NULL,
  `TAX_DETAIL_ID` bigint NOT NULL,
  UNIQUE KEY `UK_57834q276cjrrnwjj1ilnj6ve` (`TAX_DETAIL_ID`),
  KEY `FKnah3gdurbtogb0s9sf3humt14` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKla7cgvy244irmood3xt8rpsjb` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`),
  CONSTRAINT `FKnah3gdurbtogb0s9sf3humt14` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_fg_tax_xref`
--

LOCK TABLES `blc_fg_fg_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_fg_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_fg_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_item_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_item_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fg_item_tax_xref` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint NOT NULL,
  `TAX_DETAIL_ID` bigint NOT NULL,
  UNIQUE KEY `UK_hs9yvwvlwdy668hf186rgfyvq` (`TAX_DETAIL_ID`),
  KEY `FKl5kovj2ayfp7idroml0qjwan3` (`FULFILLMENT_GROUP_ITEM_ID`),
  CONSTRAINT `FKb5rnxtly8pr3ihvlrxlovnjkb` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`),
  CONSTRAINT `FKl5kovj2ayfp7idroml0qjwan3` FOREIGN KEY (`FULFILLMENT_GROUP_ITEM_ID`) REFERENCES `blc_fulfillment_group_item` (`FULFILLMENT_GROUP_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_item_tax_xref`
--

LOCK TABLES `blc_fg_item_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_item_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_item_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_field`
--

DROP TABLE IF EXISTS `blc_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_field` (
  `FIELD_ID` bigint NOT NULL,
  `ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) NOT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` bit(1) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `TRANSLATABLE` bit(1) DEFAULT NULL,
  PRIMARY KEY (`FIELD_ID`),
  KEY `ENTITY_TYPE_INDEX` (`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_field`
--

LOCK TABLES `blc_field` WRITE;
/*!40000 ALTER TABLE `blc_field` DISABLE KEYS */;
INSERT INTO `blc_field` VALUES (1,'mfg',NULL,NULL,NULL,NULL,'PRODUCT','Manufacturer',NULL,'manufacturer',NULL),(2,'heatRange',NULL,NULL,NULL,NULL,'PRODUCT','Heat Range',NULL,'productAttributes(heatRange).value',NULL),(3,'price',NULL,NULL,NULL,NULL,'PRODUCT','Price',NULL,'defaultSku.price',NULL),(4,'name',NULL,NULL,NULL,NULL,'PRODUCT','Product Name',NULL,'defaultSku.name',_binary ''),(5,'model',NULL,NULL,NULL,NULL,'PRODUCT','Model',NULL,'model',NULL),(6,'desc',NULL,NULL,NULL,NULL,'PRODUCT','Description',NULL,'defaultSku.description',_binary ''),(7,'ldesc',NULL,NULL,NULL,NULL,'PRODUCT','Long Description',NULL,'defaultSku.longDescription',_binary ''),(8,'color',NULL,NULL,NULL,NULL,'PRODUCT','Color',NULL,'productOptionValuesMap(COLOR)',NULL),(9,'margin',NULL,NULL,NULL,NULL,'PRODUCT','Margin',NULL,'margin',NULL);
/*!40000 ALTER TABLE `blc_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_def`
--

DROP TABLE IF EXISTS `blc_fld_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fld_def` (
  `FLD_DEF_ID` bigint NOT NULL,
  `ALLOW_MULTIPLES` bit(1) DEFAULT NULL,
  `COLUMN_WIDTH` varchar(255) DEFAULT NULL,
  `FLD_ORDER` int DEFAULT NULL,
  `FLD_TYPE` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `HELP_TEXT` varchar(255) DEFAULT NULL,
  `HIDDEN_FLAG` bit(1) DEFAULT NULL,
  `HINT` varchar(255) DEFAULT NULL,
  `MAX_LENGTH` int DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRED_FLAG` bit(1) DEFAULT NULL,
  `SECURITY_LEVEL` varchar(255) DEFAULT NULL,
  `TEXT_AREA_FLAG` bit(1) DEFAULT NULL,
  `TOOLTIP` varchar(255) DEFAULT NULL,
  `VLDTN_ERROR_MSSG_KEY` varchar(255) DEFAULT NULL,
  `VLDTN_REGEX` varchar(255) DEFAULT NULL,
  `ENUM_ID` bigint DEFAULT NULL,
  `FLD_GROUP_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`FLD_DEF_ID`),
  KEY `FK3p9sauu111ycv4gbk6tymcj9e` (`ENUM_ID`),
  KEY `FKcqfi7hxwka5y9sqqoiolsnssr` (`FLD_GROUP_ID`),
  CONSTRAINT `FK3p9sauu111ycv4gbk6tymcj9e` FOREIGN KEY (`ENUM_ID`) REFERENCES `blc_data_drvn_enum` (`ENUM_ID`),
  CONSTRAINT `FKcqfi7hxwka5y9sqqoiolsnssr` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_def`
--

LOCK TABLES `blc_fld_def` WRITE;
/*!40000 ALTER TABLE `blc_fld_def` DISABLE KEYS */;
INSERT INTO `blc_fld_def` VALUES (2,_binary '\0','*',1,'HTML','Body',NULL,_binary '\0',NULL,NULL,'body',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,1),(3,_binary '\0','*',0,'STRING','Title',NULL,_binary '\0',NULL,NULL,'title',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,1),(7,_binary '\0','*',0,'ASSET_LOOKUP','Image URL',NULL,_binary '\0',NULL,150,'imageUrl',_binary '',NULL,_binary '\0',NULL,NULL,NULL,NULL,4),(8,_binary '\0','*',1,'STRING','Target URL',NULL,_binary '\0',NULL,150,'targetUrl',_binary '',NULL,_binary '\0',NULL,'Invalid Url','^(\\/)[a-z(\\/)\\d\\-\\_]+$',NULL,4),(9,_binary '\0','*',0,'STRING','Message Text',NULL,_binary '\0',NULL,150,'messageText',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,6),(10,_binary '\0','*',0,'HTML','HTML Content',NULL,_binary '\0',NULL,NULL,'htmlContent',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `blc_fld_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_enum`
--

DROP TABLE IF EXISTS `blc_fld_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fld_enum` (
  `FLD_ENUM_ID` bigint NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_enum`
--

LOCK TABLES `blc_fld_enum` WRITE;
/*!40000 ALTER TABLE `blc_fld_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fld_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_enum_item`
--

DROP TABLE IF EXISTS `blc_fld_enum_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fld_enum_item` (
  `FLD_ENUM_ITEM_ID` bigint NOT NULL,
  `FLD_ORDER` int DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `FLD_ENUM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ITEM_ID`),
  KEY `FKjs87xrnu40vfq9uwdi9lv05lr` (`FLD_ENUM_ID`),
  CONSTRAINT `FKjs87xrnu40vfq9uwdi9lv05lr` FOREIGN KEY (`FLD_ENUM_ID`) REFERENCES `blc_fld_enum` (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_enum_item`
--

LOCK TABLES `blc_fld_enum_item` WRITE;
/*!40000 ALTER TABLE `blc_fld_enum_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fld_enum_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_group`
--

DROP TABLE IF EXISTS `blc_fld_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fld_group` (
  `FLD_GROUP_ID` bigint NOT NULL,
  `INIT_COLLAPSED_FLAG` bit(1) DEFAULT NULL,
  `IS_MASTER_FIELD_GROUP` bit(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_group`
--

LOCK TABLES `blc_fld_group` WRITE;
/*!40000 ALTER TABLE `blc_fld_group` DISABLE KEYS */;
INSERT INTO `blc_fld_group` VALUES (1,_binary '\0',NULL,'Content'),(4,_binary '\0',NULL,'Ad Fields'),(5,_binary '\0',NULL,'HTML Fields'),(6,_binary '\0',NULL,'Message Fields');
/*!40000 ALTER TABLE `blc_fld_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group`
--

DROP TABLE IF EXISTS `blc_fulfillment_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_group` (
  `FULFILLMENT_GROUP_ID` bigint NOT NULL,
  `DELIVERY_INSTRUCTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `SHIPPING_PRICE_TAXABLE` bit(1) DEFAULT NULL,
  `MERCHANDISE_TOTAL` decimal(19,5) DEFAULT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `IS_PRIMARY` bit(1) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_SEQUNCE` int DEFAULT NULL,
  `SERVICE` varchar(255) DEFAULT NULL,
  `SHIPPING_OVERRIDE` bit(1) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_FG_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint DEFAULT NULL,
  `ORDER_ID` bigint NOT NULL,
  `PERSONAL_MESSAGE_ID` bigint DEFAULT NULL,
  `PHONE_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ID`),
  KEY `FG_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FG_METHOD_INDEX` (`METHOD`),
  KEY `FG_ORDER_INDEX` (`ORDER_ID`),
  KEY `FG_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FG_PHONE_INDEX` (`PHONE_ID`),
  KEY `FG_PRIMARY_INDEX` (`IS_PRIMARY`),
  KEY `FG_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `FG_SERVICE_INDEX` (`SERVICE`),
  KEY `FG_STATUS_INDEX` (`STATUS`),
  KEY `FK336lsxych2j78fsd12dxacn7n` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK336lsxych2j78fsd12dxacn7n` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK3lis2v456tgcmagt1tkdummdi` FOREIGN KEY (`PHONE_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FK44mielsxkxtt1ndfiat2wj9po` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `blc_personal_message` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FKavpobeg9yjr9k3wtycirv5i8a` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`),
  CONSTRAINT `FKbtadc11h6ysb0fbyq2bsegum7` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group`
--

LOCK TABLES `blc_fulfillment_group` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_group` VALUES (52,NULL,0.00000,_binary '\0',95000.00000,NULL,_binary '\0',NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,95000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,51,NULL,NULL),(53,NULL,0.00000,_binary '\0',250000.00000,NULL,_binary '\0',NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,250000.00000,0.00000,0.00000,0.00000,0.00000,'DIGITAL',NULL,NULL,51,NULL,NULL),(101,NULL,0.00000,_binary '\0',600000.00000,NULL,_binary '\0',NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,600000.00000,0.00000,0.00000,0.00000,0.00000,'DIGITAL',NULL,NULL,101,NULL,NULL),(155,NULL,0.00000,_binary '\0',236600.00000,NULL,_binary '\0',NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,236600.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,151,NULL,NULL),(157,NULL,0.00000,_binary '\0',140000.00000,NULL,_binary '\0',NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,140000.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,152,NULL,NULL),(159,NULL,0.00000,_binary '\0',260600.00000,NULL,_binary '\0',NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,260600.00000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,153,NULL,NULL);
/*!40000 ALTER TABLE `blc_fulfillment_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group_fee`
--

DROP TABLE IF EXISTS `blc_fulfillment_group_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_group_fee` (
  `FULFILLMENT_GROUP_FEE_ID` bigint NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `FEE_TAXABLE_FLAG` bit(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_FEE_ID`),
  KEY `FKss79152pprx7xdwjkmelwf4xo` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKss79152pprx7xdwjkmelwf4xo` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group_fee`
--

LOCK TABLES `blc_fulfillment_group_fee` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_group_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group_item`
--

DROP TABLE IF EXISTS `blc_fulfillment_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_group_item` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint NOT NULL,
  `PRORATED_ORDER_ADJ` decimal(19,2) DEFAULT NULL,
  `QUANTITY` int NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL_ITEM_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAXABLE_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint NOT NULL,
  `ORDER_ITEM_ID` bigint NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ITEM_ID`),
  KEY `FGITEM_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGITEM_STATUS_INDEX` (`STATUS`),
  KEY `FKmra6tj092ugw58xhvvi43pdb2` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKmra6tj092ugw58xhvvi43pdb2` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKqfqxv2f0ita9ou48jpi7c3wi9` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group_item`
--

LOCK TABLES `blc_fulfillment_group_item` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group_item` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_group_item` VALUES (53,0.00,1,NULL,95000.00000,95000.00000,0.00000,52,53),(54,0.00,1,NULL,250000.00000,250000.00000,0.00000,53,54),(101,0.00,1,NULL,600000.00000,600000.00000,0.00000,101,101),(160,0.00,1,NULL,105000.00000,105000.00000,0.00000,155,160),(161,0.00,1,NULL,131600.00000,131600.00000,0.00000,155,161),(165,38000.00,1,NULL,140000.00000,102000.00000,0.00000,157,165),(169,23360.55,1,NULL,98000.00000,74639.45000,0.00000,159,170),(170,38378.05,1,NULL,161000.00000,122621.95000,0.00000,159,171),(171,381.40,4,NULL,1600.00000,1218.60000,0.00000,159,173);
/*!40000 ALTER TABLE `blc_fulfillment_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_opt_banded_prc`
--

DROP TABLE IF EXISTS `blc_fulfillment_opt_banded_prc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_opt_banded_prc` (
  `FULFILLMENT_OPTION_ID` bigint NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKsf9j5pdg9lo5e7xhasqn61m0y` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_opt_banded_prc`
--

LOCK TABLES `blc_fulfillment_opt_banded_prc` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_prc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_prc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_opt_banded_wgt`
--

DROP TABLE IF EXISTS `blc_fulfillment_opt_banded_wgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_opt_banded_wgt` (
  `FULFILLMENT_OPTION_ID` bigint NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKsarbwhn57dgx7kt1es3ny384n` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_opt_banded_wgt`
--

LOCK TABLES `blc_fulfillment_opt_banded_wgt` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_wgt` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_wgt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_option`
--

DROP TABLE IF EXISTS `blc_fulfillment_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_option` (
  `FULFILLMENT_OPTION_ID` bigint NOT NULL,
  `FULFILLMENT_TYPE` varchar(255) NOT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE` bit(1) DEFAULT NULL,
  `USE_FLAT_RATES` bit(1) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_option`
--

LOCK TABLES `blc_fulfillment_option` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_option` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_option` VALUES (1,'PHYSICAL_SHIP','5 - 7 Days','Standard',NULL,NULL,_binary '\0'),(2,'PHYSICAL_SHIP','3 - 5 Days','Priority',NULL,NULL,_binary '\0'),(3,'PHYSICAL_SHIP','1 - 2 Days','Express',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `blc_fulfillment_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_option_fixed`
--

DROP TABLE IF EXISTS `blc_fulfillment_option_fixed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_option_fixed` (
  `PRICE` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKj5n6w6q7dk09k6ayif4g5t0t3` (`CURRENCY_CODE`),
  CONSTRAINT `FKj5n6w6q7dk09k6ayif4g5t0t3` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FKl96yhpl4w0989nil2g6v2t3kq` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_option_fixed`
--

LOCK TABLES `blc_fulfillment_option_fixed` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_option_fixed` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_option_fixed` VALUES (5.00000,1,NULL),(10.00000,2,NULL),(20.00000,3,NULL);
/*!40000 ALTER TABLE `blc_fulfillment_option_fixed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_price_band`
--

DROP TABLE IF EXISTS `blc_fulfillment_price_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_price_band` (
  `FULFILLMENT_PRICE_BAND_ID` bigint NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `RETAIL_PRICE_MINIMUM_AMOUNT` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_PRICE_BAND_ID`),
  KEY `FKh2i7xep5l3txpi65xpb3vxxdh` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKh2i7xep5l3txpi65xpb3vxxdh` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_opt_banded_prc` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_price_band`
--

LOCK TABLES `blc_fulfillment_price_band` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_price_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_price_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_weight_band`
--

DROP TABLE IF EXISTS `blc_fulfillment_weight_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_fulfillment_weight_band` (
  `FULFILLMENT_WEIGHT_BAND_ID` bigint NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `MINIMUM_WEIGHT` decimal(19,5) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_WEIGHT_BAND_ID`),
  KEY `FKoij3p9iwe1856w6fd5283bpyl` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKoij3p9iwe1856w6fd5283bpyl` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_opt_banded_wgt` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_weight_band`
--

LOCK TABLES `blc_fulfillment_weight_band` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_weight_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_weight_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_gift_card_payment`
--

DROP TABLE IF EXISTS `blc_gift_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_gift_card_payment` (
  `PAYMENT_ID` bigint NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `PIN` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `GIFTCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_gift_card_payment`
--

LOCK TABLES `blc_gift_card_payment` WRITE;
/*!40000 ALTER TABLE `blc_gift_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_gift_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_giftwrap_order_item`
--

DROP TABLE IF EXISTS `blc_giftwrap_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_giftwrap_order_item` (
  `ORDER_ITEM_ID` bigint NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  CONSTRAINT `FKtq6vr571td9a8ihss8os1wtr8` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_giftwrap_order_item`
--

LOCK TABLES `blc_giftwrap_order_item` WRITE;
/*!40000 ALTER TABLE `blc_giftwrap_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_giftwrap_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_id_generation`
--

DROP TABLE IF EXISTS `blc_id_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_id_generation` (
  `ID_TYPE` varchar(255) NOT NULL,
  `BATCH_SIZE` bigint NOT NULL,
  `BATCH_START` bigint NOT NULL,
  `ID_MIN` bigint DEFAULT NULL,
  `ID_MAX` bigint DEFAULT NULL,
  `version` int DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_id_generation`
--

LOCK TABLES `blc_id_generation` WRITE;
/*!40000 ALTER TABLE `blc_id_generation` DISABLE KEYS */;
INSERT INTO `blc_id_generation` VALUES ('org.broadleafcommerce.profile.core.domain.Customer',100,3900,NULL,NULL,39);
/*!40000 ALTER TABLE `blc_id_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_img_static_asset`
--

DROP TABLE IF EXISTS `blc_img_static_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_img_static_asset` (
  `HEIGHT` int DEFAULT NULL,
  `WIDTH` int DEFAULT NULL,
  `STATIC_ASSET_ID` bigint NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  CONSTRAINT `FK6pugoo2mcm6irchv42bui3tm6` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `blc_static_asset` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_img_static_asset`
--

LOCK TABLES `blc_img_static_asset` WRITE;
/*!40000 ALTER TABLE `blc_img_static_asset` DISABLE KEYS */;
INSERT INTO `blc_img_static_asset` VALUES (180,180,60264),(470,710,60764),(470,710,60765),(470,710,60766),(470,710,60767),(470,710,60768),(470,710,60769),(470,710,60770),(470,710,60771),(470,710,60772),(470,710,60773),(470,710,60774),(470,710,60775),(470,710,60776),(470,710,60777),(470,710,60778),(722,1282,60779);
/*!40000 ALTER TABLE `blc_img_static_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_index_field`
--

DROP TABLE IF EXISTS `blc_index_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_index_field` (
  `INDEX_FIELD_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `SEARCHABLE` bit(1) DEFAULT NULL,
  `FIELD_ID` bigint NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_ID`),
  KEY `INDEX_FIELD_SEARCHABLE_INDEX` (`SEARCHABLE`),
  KEY `FKc1x5lu6romu8tsjrlpjmsqqxy` (`FIELD_ID`),
  CONSTRAINT `FKc1x5lu6romu8tsjrlpjmsqqxy` FOREIGN KEY (`FIELD_ID`) REFERENCES `blc_field` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_index_field`
--

LOCK TABLES `blc_index_field` WRITE;
/*!40000 ALTER TABLE `blc_index_field` DISABLE KEYS */;
INSERT INTO `blc_index_field` VALUES (1,NULL,_binary '',1),(2,NULL,_binary '\0',2),(3,NULL,_binary '\0',3),(4,NULL,_binary '',4),(5,NULL,_binary '',5),(6,NULL,_binary '',6),(7,NULL,_binary '',7),(8,NULL,_binary '\0',8),(9,NULL,_binary '\0',9);
/*!40000 ALTER TABLE `blc_index_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_index_field_type`
--

DROP TABLE IF EXISTS `blc_index_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_index_field_type` (
  `INDEX_FIELD_TYPE_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `FIELD_TYPE` varchar(255) DEFAULT NULL,
  `INDEX_FIELD_ID` bigint NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_TYPE_ID`),
  KEY `FKmv0l0yt2099ffo2pjdrdbbj9h` (`INDEX_FIELD_ID`),
  CONSTRAINT `FKmv0l0yt2099ffo2pjdrdbbj9h` FOREIGN KEY (`INDEX_FIELD_ID`) REFERENCES `blc_index_field` (`INDEX_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_index_field_type`
--

LOCK TABLES `blc_index_field_type` WRITE;
/*!40000 ALTER TABLE `blc_index_field_type` DISABLE KEYS */;
INSERT INTO `blc_index_field_type` VALUES (1,NULL,'t',1),(2,NULL,'s',1),(3,NULL,'i',2),(4,NULL,'p',3),(5,NULL,'t',4),(6,NULL,'t',5),(7,NULL,'t',6),(8,NULL,'t',7),(9,NULL,'ss',8),(10,NULL,'p',9),(11,NULL,'s',4);
/*!40000 ALTER TABLE `blc_index_field_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_iso_country`
--

DROP TABLE IF EXISTS `blc_iso_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_iso_country` (
  `ALPHA_2` varchar(255) NOT NULL,
  `ALPHA_3` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NUMERIC_CODE` int DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ALPHA_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_iso_country`
--

LOCK TABLES `blc_iso_country` WRITE;
/*!40000 ALTER TABLE `blc_iso_country` DISABLE KEYS */;
INSERT INTO `blc_iso_country` VALUES ('AA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('AB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AC','ASC',NULL,NULL,NULL,NULL,'Ascension Island',-1,'EXCEPTIONALLY_RESERVED'),('AD','AND',NULL,NULL,NULL,NULL,'Andorra',20,'OFFICIALLY_ASSIGNED'),('AE','ARE',NULL,NULL,NULL,NULL,'United Arab Emirates',784,'OFFICIALLY_ASSIGNED'),('AF','AFG',NULL,NULL,NULL,NULL,'Afghanistan',4,'OFFICIALLY_ASSIGNED'),('AG','ATG',NULL,NULL,NULL,NULL,'Antigua and Barbuda',28,'OFFICIALLY_ASSIGNED'),('AH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AI','AIA',NULL,NULL,NULL,NULL,'Anguilla',660,'OFFICIALLY_ASSIGNED'),('AJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AL','ALB',NULL,NULL,NULL,NULL,'Albania',8,'OFFICIALLY_ASSIGNED'),('AM','ARM',NULL,NULL,NULL,NULL,'Armenia',51,'OFFICIALLY_ASSIGNED'),('AN','ANHH',NULL,NULL,NULL,NULL,'Netherlands Antilles',530,'TRANSITIONALLY_RESERVED'),('AO','AGO',NULL,NULL,NULL,NULL,'Angola',24,'OFFICIALLY_ASSIGNED'),('AP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('AQ','ATA',NULL,NULL,NULL,NULL,'Antarctica',10,'OFFICIALLY_ASSIGNED'),('AR','ARG',NULL,NULL,NULL,NULL,'Argentina',32,'OFFICIALLY_ASSIGNED'),('AS','ASM',NULL,NULL,NULL,NULL,'American Samoa',16,'OFFICIALLY_ASSIGNED'),('AT','AUT',NULL,NULL,NULL,NULL,'Austria',40,'OFFICIALLY_ASSIGNED'),('AU','AUS',NULL,NULL,NULL,NULL,'Australia',36,'OFFICIALLY_ASSIGNED'),('AV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AW','ABW',NULL,NULL,NULL,NULL,'Aruba',533,'OFFICIALLY_ASSIGNED'),('AX','ALA',NULL,NULL,NULL,NULL,'�land Islands',248,'OFFICIALLY_ASSIGNED'),('AY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AZ','AZE',NULL,NULL,NULL,NULL,'Azerbaijan',31,'OFFICIALLY_ASSIGNED'),('BA','BIH',NULL,NULL,NULL,NULL,'Bosnia and Herzegovina',70,'OFFICIALLY_ASSIGNED'),('BB','BRB',NULL,NULL,NULL,NULL,'Barbados',52,'OFFICIALLY_ASSIGNED'),('BC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BD','BGD',NULL,NULL,NULL,NULL,'Bangladesh',50,'OFFICIALLY_ASSIGNED'),('BE','BEL',NULL,NULL,NULL,NULL,'Belgium',56,'OFFICIALLY_ASSIGNED'),('BF','BFA',NULL,NULL,NULL,NULL,'Burkina Faso',854,'OFFICIALLY_ASSIGNED'),('BG','BGR',NULL,NULL,NULL,NULL,'Bulgaria',100,'OFFICIALLY_ASSIGNED'),('BH','BHR',NULL,NULL,NULL,NULL,'Bahrain',48,'OFFICIALLY_ASSIGNED'),('BI','BDI',NULL,NULL,NULL,NULL,'Burundi',108,'OFFICIALLY_ASSIGNED'),('BJ','BEN',NULL,NULL,NULL,NULL,'Benin',204,'OFFICIALLY_ASSIGNED'),('BK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BL','BLM',NULL,NULL,NULL,NULL,'Saint Barth矇lemy',652,'OFFICIALLY_ASSIGNED'),('BM','BMU',NULL,NULL,NULL,NULL,'Bermuda',60,'OFFICIALLY_ASSIGNED'),('BN','BRN',NULL,NULL,NULL,NULL,'Brunei Darussalam',96,'OFFICIALLY_ASSIGNED'),('BO','BOL',NULL,NULL,NULL,NULL,'Bolivia, Plurinational State of',68,'OFFICIALLY_ASSIGNED'),('BP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BQ','BES',NULL,NULL,NULL,NULL,'Bonaire, Sint Eustatius and Saba',535,'OFFICIALLY_ASSIGNED'),('BR','BRA',NULL,NULL,NULL,NULL,'Brazil',76,'OFFICIALLY_ASSIGNED'),('BS','BHS',NULL,NULL,NULL,NULL,'Bahamas',44,'OFFICIALLY_ASSIGNED'),('BT','BTN',NULL,NULL,NULL,NULL,'Bhutan',64,'OFFICIALLY_ASSIGNED'),('BU','BUMM',NULL,NULL,NULL,NULL,'Burma',104,'TRANSITIONALLY_RESERVED'),('BV','BVT',NULL,NULL,NULL,NULL,'Bouvet Island',74,'OFFICIALLY_ASSIGNED'),('BW','BWA',NULL,NULL,NULL,NULL,'Botswana',72,'OFFICIALLY_ASSIGNED'),('BX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('BY','BLR',NULL,NULL,NULL,NULL,'Belarus',112,'OFFICIALLY_ASSIGNED'),('BZ','BLZ',NULL,NULL,NULL,NULL,'Belize',84,'OFFICIALLY_ASSIGNED'),('CA','CAN',NULL,NULL,NULL,NULL,'Canada',124,'OFFICIALLY_ASSIGNED'),('CB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CC','CCK',NULL,NULL,NULL,NULL,'Cocos (Keeling) Islands',166,'OFFICIALLY_ASSIGNED'),('CD','COD',NULL,NULL,NULL,NULL,'Congo, the Democratic Republic of the',180,'OFFICIALLY_ASSIGNED'),('CE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CF','CAF',NULL,NULL,NULL,NULL,'Central African Republic',140,'OFFICIALLY_ASSIGNED'),('CG','COG',NULL,NULL,NULL,NULL,'Congo',178,'OFFICIALLY_ASSIGNED'),('CH','CHE',NULL,NULL,NULL,NULL,'Switzerland',756,'OFFICIALLY_ASSIGNED'),('CI','CIV',NULL,NULL,NULL,NULL,'C繫te d\'Ivoire',384,'OFFICIALLY_ASSIGNED'),('CJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CK','COK',NULL,NULL,NULL,NULL,'Cook Islands',184,'OFFICIALLY_ASSIGNED'),('CL','CHL',NULL,NULL,NULL,NULL,'Chile',152,'OFFICIALLY_ASSIGNED'),('CM','CMR',NULL,NULL,NULL,NULL,'Cameroon',120,'OFFICIALLY_ASSIGNED'),('CN','CHN',NULL,NULL,NULL,NULL,'China',156,'OFFICIALLY_ASSIGNED'),('CO','COL',NULL,NULL,NULL,NULL,'Colombia',170,'OFFICIALLY_ASSIGNED'),('CP','CPT',NULL,NULL,NULL,NULL,'Clipperton Island',-1,'EXCEPTIONALLY_RESERVED'),('CQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CR','CRI',NULL,NULL,NULL,NULL,'Costa Rica',188,'OFFICIALLY_ASSIGNED'),('CS','CSXX',NULL,NULL,NULL,NULL,'Serbia and Montenegro',891,'TRANSITIONALLY_RESERVED'),('CT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CU','CUB',NULL,NULL,NULL,NULL,'Cuba',192,'OFFICIALLY_ASSIGNED'),('CV','CPV',NULL,NULL,NULL,NULL,'Cape Verde',132,'OFFICIALLY_ASSIGNED'),('CW','CUW',NULL,NULL,NULL,NULL,'Cura癟ao',531,'OFFICIALLY_ASSIGNED'),('CX','CXR',NULL,NULL,NULL,NULL,'Christmas Island',162,'OFFICIALLY_ASSIGNED'),('CY','CYP',NULL,NULL,NULL,NULL,'Cyprus',196,'OFFICIALLY_ASSIGNED'),('CZ','CZE',NULL,NULL,NULL,NULL,'Czech Republic',203,'OFFICIALLY_ASSIGNED'),('DA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DE','DEU',NULL,NULL,NULL,NULL,'Germany',276,'OFFICIALLY_ASSIGNED'),('DF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DG','DGA',NULL,NULL,NULL,NULL,'Diego Garcia',-1,'EXCEPTIONALLY_RESERVED'),('DH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DJ','DJI',NULL,NULL,NULL,NULL,'Djibouti',262,'OFFICIALLY_ASSIGNED'),('DK','DNK',NULL,NULL,NULL,NULL,'Denmark',208,'OFFICIALLY_ASSIGNED'),('DL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DM','DMA',NULL,NULL,NULL,NULL,'Dominica',212,'OFFICIALLY_ASSIGNED'),('DN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DO','DOM',NULL,NULL,NULL,NULL,'Dominican Republic',214,'OFFICIALLY_ASSIGNED'),('DP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('DZ','DZA',NULL,NULL,NULL,NULL,'Algeria',12,'OFFICIALLY_ASSIGNED'),('EA','null',NULL,NULL,NULL,NULL,'Ceuta, Melilla',-1,'EXCEPTIONALLY_RESERVED'),('EB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EC','ECU',NULL,NULL,NULL,NULL,'Ecuador',218,'OFFICIALLY_ASSIGNED'),('ED',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EE','EST',NULL,NULL,NULL,NULL,'Estonia',233,'OFFICIALLY_ASSIGNED'),('EF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EG','EGY',NULL,NULL,NULL,NULL,'Egypt',818,'OFFICIALLY_ASSIGNED'),('EH','ESH',NULL,NULL,NULL,NULL,'Western Sahara',732,'OFFICIALLY_ASSIGNED'),('EI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ER','ERI',NULL,NULL,NULL,NULL,'Eritrea',232,'OFFICIALLY_ASSIGNED'),('ES','ESP',NULL,NULL,NULL,NULL,'Spain',724,'OFFICIALLY_ASSIGNED'),('ET','ETH',NULL,NULL,NULL,NULL,'Ethiopia',231,'OFFICIALLY_ASSIGNED'),('EU','null',NULL,NULL,NULL,NULL,'European Union',-1,'EXCEPTIONALLY_RESERVED'),('EV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('EX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FI','FIN',NULL,NULL,NULL,NULL,'Finland',246,'OFFICIALLY_ASSIGNED'),('FJ','FJI',NULL,NULL,NULL,NULL,'Fiji',242,'OFFICIALLY_ASSIGNED'),('FK','FLK',NULL,NULL,NULL,NULL,'Falkland Islands (Malvinas)',238,'OFFICIALLY_ASSIGNED'),('FL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('FM','FSM',NULL,NULL,NULL,NULL,'Micronesia, Federated States of',583,'OFFICIALLY_ASSIGNED'),('FN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FO','FRO',NULL,NULL,NULL,NULL,'Faroe Islands',234,'OFFICIALLY_ASSIGNED'),('FP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FR','FRA',NULL,NULL,NULL,NULL,'France',250,'OFFICIALLY_ASSIGNED'),('FS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FX','FXX',NULL,NULL,NULL,NULL,'France, Metropolitan',-1,'EXCEPTIONALLY_RESERVED'),('FY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GA','GAB',NULL,NULL,NULL,NULL,'Gabon',266,'OFFICIALLY_ASSIGNED'),('GB','GBR',NULL,NULL,NULL,NULL,'United Kingdom',826,'OFFICIALLY_ASSIGNED'),('GC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('GD','GRD',NULL,NULL,NULL,NULL,'Grenada',308,'OFFICIALLY_ASSIGNED'),('GE','GEO',NULL,NULL,NULL,NULL,'Georgia',268,'OFFICIALLY_ASSIGNED'),('GF','GUF',NULL,NULL,NULL,NULL,'French Guiana',254,'OFFICIALLY_ASSIGNED'),('GG','GGY',NULL,NULL,NULL,NULL,'Guernsey',831,'OFFICIALLY_ASSIGNED'),('GH','GHA',NULL,NULL,NULL,NULL,'Ghana',288,'OFFICIALLY_ASSIGNED'),('GI','GIB',NULL,NULL,NULL,NULL,'Gibraltar',292,'OFFICIALLY_ASSIGNED'),('GJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GL','GRL',NULL,NULL,NULL,NULL,'Greenland',304,'OFFICIALLY_ASSIGNED'),('GM','GMB',NULL,NULL,NULL,NULL,'Gambia',270,'OFFICIALLY_ASSIGNED'),('GN','GIN',NULL,NULL,NULL,NULL,'Guinea',324,'OFFICIALLY_ASSIGNED'),('GO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GP','GLP',NULL,NULL,NULL,NULL,'Guadeloupe',312,'OFFICIALLY_ASSIGNED'),('GQ','GNQ',NULL,NULL,NULL,NULL,'Equatorial Guinea',226,'OFFICIALLY_ASSIGNED'),('GR','GRC',NULL,NULL,NULL,NULL,'Greece',300,'OFFICIALLY_ASSIGNED'),('GS','SGS',NULL,NULL,NULL,NULL,'South Georgia and the South Sandwich Islands',239,'OFFICIALLY_ASSIGNED'),('GT','GTM',NULL,NULL,NULL,NULL,'Guatemala',320,'OFFICIALLY_ASSIGNED'),('GU','GUM',NULL,NULL,NULL,NULL,'Guam',316,'OFFICIALLY_ASSIGNED'),('GV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GW','GNB',NULL,NULL,NULL,NULL,'Guinea-Bissau',624,'OFFICIALLY_ASSIGNED'),('GX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GY','GUY',NULL,NULL,NULL,NULL,'Guyana',328,'OFFICIALLY_ASSIGNED'),('GZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HK','HKG',NULL,NULL,NULL,NULL,'Hong Kong',344,'OFFICIALLY_ASSIGNED'),('HL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HM','HMD',NULL,NULL,NULL,NULL,'Heard Island and McDonald Islands',334,'OFFICIALLY_ASSIGNED'),('HN','HND',NULL,NULL,NULL,NULL,'Honduras',340,'OFFICIALLY_ASSIGNED'),('HO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HR','HRV',NULL,NULL,NULL,NULL,'Croatia',191,'OFFICIALLY_ASSIGNED'),('HS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HT','HTI',NULL,NULL,NULL,NULL,'Haiti',332,'OFFICIALLY_ASSIGNED'),('HU','HUN',NULL,NULL,NULL,NULL,'Hungary',348,'OFFICIALLY_ASSIGNED'),('HV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('IC','null',NULL,NULL,NULL,NULL,'Canary Islands',-1,'EXCEPTIONALLY_RESERVED'),('ID','IDN',NULL,NULL,NULL,NULL,'Indonesia',360,'OFFICIALLY_ASSIGNED'),('IE','IRL',NULL,NULL,NULL,NULL,'Ireland',372,'OFFICIALLY_ASSIGNED'),('IF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('II',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IL','ISR',NULL,NULL,NULL,NULL,'Israel',376,'OFFICIALLY_ASSIGNED'),('IM','IMN',NULL,NULL,NULL,NULL,'Isle of Man',833,'OFFICIALLY_ASSIGNED'),('IN','IND',NULL,NULL,NULL,NULL,'India',356,'OFFICIALLY_ASSIGNED'),('IO','IOT',NULL,NULL,NULL,NULL,'British Indian Ocean Territory',86,'OFFICIALLY_ASSIGNED'),('IP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IQ','IRQ',NULL,NULL,NULL,NULL,'Iraq',368,'OFFICIALLY_ASSIGNED'),('IR','IRN',NULL,NULL,NULL,NULL,'Iran, Islamic Republic of',364,'OFFICIALLY_ASSIGNED'),('IS','ISL',NULL,NULL,NULL,NULL,'Iceland',352,'OFFICIALLY_ASSIGNED'),('IT','ITA',NULL,NULL,NULL,NULL,'Italy',380,'OFFICIALLY_ASSIGNED'),('IU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('JB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JE','JEY',NULL,NULL,NULL,NULL,'Jersey',832,'OFFICIALLY_ASSIGNED'),('JF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JM','JAM',NULL,NULL,NULL,NULL,'Jamaica',388,'OFFICIALLY_ASSIGNED'),('JN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JO','JOR',NULL,NULL,NULL,NULL,'Jordan',400,'OFFICIALLY_ASSIGNED'),('JP','JPN',NULL,NULL,NULL,NULL,'Japan',392,'OFFICIALLY_ASSIGNED'),('JQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KE','KEN',NULL,NULL,NULL,NULL,'Kenya',404,'OFFICIALLY_ASSIGNED'),('KF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KG','KGZ',NULL,NULL,NULL,NULL,'Kyrgyzstan',417,'OFFICIALLY_ASSIGNED'),('KH','KHM',NULL,NULL,NULL,NULL,'Cambodia',116,'OFFICIALLY_ASSIGNED'),('KI','KIR',NULL,NULL,NULL,NULL,'Kiribati',296,'OFFICIALLY_ASSIGNED'),('KJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KM','COM',NULL,NULL,NULL,NULL,'Comoros',174,'OFFICIALLY_ASSIGNED'),('KN','KNA',NULL,NULL,NULL,NULL,'Saint Kitts and Nevis',659,'OFFICIALLY_ASSIGNED'),('KO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KP','PRK',NULL,NULL,NULL,NULL,'Korea, Democratic People\'s Republic of',408,'OFFICIALLY_ASSIGNED'),('KQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KR','KOR',NULL,NULL,NULL,NULL,'Korea, Republic of',410,'OFFICIALLY_ASSIGNED'),('KS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KW','KWT',NULL,NULL,NULL,NULL,'Kuwait',414,'OFFICIALLY_ASSIGNED'),('KX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KY','CYM',NULL,NULL,NULL,NULL,'Cayman Islands',136,'OFFICIALLY_ASSIGNED'),('KZ','KAZ',NULL,NULL,NULL,NULL,'Kazakhstan',398,'OFFICIALLY_ASSIGNED'),('LA','LAO',NULL,NULL,NULL,NULL,'Lao People\'s Democratic Republic',418,'OFFICIALLY_ASSIGNED'),('LB','LBN',NULL,NULL,NULL,NULL,'Lebanon',422,'OFFICIALLY_ASSIGNED'),('LC','LCA',NULL,NULL,NULL,NULL,'Saint Lucia',662,'OFFICIALLY_ASSIGNED'),('LD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('LG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LI','LIE',NULL,NULL,NULL,NULL,'Liechtenstein',438,'OFFICIALLY_ASSIGNED'),('LJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LK','LKA',NULL,NULL,NULL,NULL,'Sri Lanka',144,'OFFICIALLY_ASSIGNED'),('LL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LR','LBR',NULL,NULL,NULL,NULL,'Liberia',430,'OFFICIALLY_ASSIGNED'),('LS','LSO',NULL,NULL,NULL,NULL,'Lesotho',426,'OFFICIALLY_ASSIGNED'),('LT','LTU',NULL,NULL,NULL,NULL,'Lithuania',440,'OFFICIALLY_ASSIGNED'),('LU','LUX',NULL,NULL,NULL,NULL,'Luxembourg',442,'OFFICIALLY_ASSIGNED'),('LV','LVA',NULL,NULL,NULL,NULL,'Latvia',428,'OFFICIALLY_ASSIGNED'),('LW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LY','LBY',NULL,NULL,NULL,NULL,'Libya',434,'OFFICIALLY_ASSIGNED'),('LZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MA','MAR',NULL,NULL,NULL,NULL,'Morocco',504,'OFFICIALLY_ASSIGNED'),('MB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MC','MCO',NULL,NULL,NULL,NULL,'Monaco',492,'OFFICIALLY_ASSIGNED'),('MD','MDA',NULL,NULL,NULL,NULL,'Moldova, Republic of',498,'OFFICIALLY_ASSIGNED'),('ME','MNE',NULL,NULL,NULL,NULL,'Montenegro',499,'OFFICIALLY_ASSIGNED'),('MF','MAF',NULL,NULL,NULL,NULL,'Saint Martin (French part)',663,'OFFICIALLY_ASSIGNED'),('MG','MDG',NULL,NULL,NULL,NULL,'Madagascar',450,'OFFICIALLY_ASSIGNED'),('MH','MHL',NULL,NULL,NULL,NULL,'Marshall Islands',584,'OFFICIALLY_ASSIGNED'),('MI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MK','MKD',NULL,NULL,NULL,NULL,'Macedonia, the former Yugoslav Republic of',807,'OFFICIALLY_ASSIGNED'),('ML','MLI',NULL,NULL,NULL,NULL,'Mali',466,'OFFICIALLY_ASSIGNED'),('MM','MMR',NULL,NULL,NULL,NULL,'Myanmar',104,'OFFICIALLY_ASSIGNED'),('MN','MNG',NULL,NULL,NULL,NULL,'Mongolia',496,'OFFICIALLY_ASSIGNED'),('MO','MAC',NULL,NULL,NULL,NULL,'Macao',446,'OFFICIALLY_ASSIGNED'),('MP','MNP',NULL,NULL,NULL,NULL,'Northern Mariana Islands',580,'OFFICIALLY_ASSIGNED'),('MQ','MTQ',NULL,NULL,NULL,NULL,'Martinique',474,'OFFICIALLY_ASSIGNED'),('MR','MRT',NULL,NULL,NULL,NULL,'Mauritania',478,'OFFICIALLY_ASSIGNED'),('MS','MSR',NULL,NULL,NULL,NULL,'Montserrat',500,'OFFICIALLY_ASSIGNED'),('MT','MLT',NULL,NULL,NULL,NULL,'Malta',470,'OFFICIALLY_ASSIGNED'),('MU','MUS',NULL,NULL,NULL,NULL,'Mauritius',480,'OFFICIALLY_ASSIGNED'),('MV','MDV',NULL,NULL,NULL,NULL,'Maldives',462,'OFFICIALLY_ASSIGNED'),('MW','MWI',NULL,NULL,NULL,NULL,'Malawi',454,'OFFICIALLY_ASSIGNED'),('MX','MEX',NULL,NULL,NULL,NULL,'Mexico',484,'OFFICIALLY_ASSIGNED'),('MY','MYS',NULL,NULL,NULL,NULL,'Malaysia',458,'OFFICIALLY_ASSIGNED'),('MZ','MOZ',NULL,NULL,NULL,NULL,'Mozambique',508,'OFFICIALLY_ASSIGNED'),('NA','NAM',NULL,NULL,NULL,NULL,'Namibia',516,'OFFICIALLY_ASSIGNED'),('NB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NC','NCL',NULL,NULL,NULL,NULL,'New Caledonia',540,'OFFICIALLY_ASSIGNED'),('ND',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NE','NER',NULL,NULL,NULL,NULL,'Niger',562,'OFFICIALLY_ASSIGNED'),('NF','NFK',NULL,NULL,NULL,NULL,'Norfolk Island',574,'OFFICIALLY_ASSIGNED'),('NG','NGA',NULL,NULL,NULL,NULL,'Nigeria',566,'OFFICIALLY_ASSIGNED'),('NH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NI','NIC',NULL,NULL,NULL,NULL,'Nicaragua',558,'OFFICIALLY_ASSIGNED'),('NJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NL','NLD',NULL,NULL,NULL,NULL,'Netherlands',528,'OFFICIALLY_ASSIGNED'),('NM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NO','NOR',NULL,NULL,NULL,NULL,'Norway',578,'OFFICIALLY_ASSIGNED'),('NP','NPL',NULL,NULL,NULL,NULL,'Nepal',524,'OFFICIALLY_ASSIGNED'),('NQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NR','NRU',NULL,NULL,NULL,NULL,'Nauru',520,'OFFICIALLY_ASSIGNED'),('NS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NT','NTHH',NULL,NULL,NULL,NULL,'Neutral Zone',536,'TRANSITIONALLY_RESERVED'),('NU','NIU',NULL,NULL,NULL,NULL,'Niue',570,'OFFICIALLY_ASSIGNED'),('NV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NZ','NZL',NULL,NULL,NULL,NULL,'New Zealand',554,'OFFICIALLY_ASSIGNED'),('OA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('OB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OM','OMN',NULL,NULL,NULL,NULL,'Oman',512,'OFFICIALLY_ASSIGNED'),('ON',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PA','PAN',NULL,NULL,NULL,NULL,'Panama',591,'OFFICIALLY_ASSIGNED'),('PB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PE','PER',NULL,NULL,NULL,NULL,'Peru',604,'OFFICIALLY_ASSIGNED'),('PF','PYF',NULL,NULL,NULL,NULL,'French Polynesia',258,'OFFICIALLY_ASSIGNED'),('PG','PNG',NULL,NULL,NULL,NULL,'Papua New Guinea',598,'OFFICIALLY_ASSIGNED'),('PH','PHL',NULL,NULL,NULL,NULL,'Philippines',608,'OFFICIALLY_ASSIGNED'),('PI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('PJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PK','PAK',NULL,NULL,NULL,NULL,'Pakistan',586,'OFFICIALLY_ASSIGNED'),('PL','POL',NULL,NULL,NULL,NULL,'Poland',616,'OFFICIALLY_ASSIGNED'),('PM','SPM',NULL,NULL,NULL,NULL,'Saint Pierre and Miquelon',666,'OFFICIALLY_ASSIGNED'),('PN','PCN',NULL,NULL,NULL,NULL,'Pitcairn',612,'OFFICIALLY_ASSIGNED'),('PO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PR','PRI',NULL,NULL,NULL,NULL,'Puerto Rico',630,'OFFICIALLY_ASSIGNED'),('PS','PSE',NULL,NULL,NULL,NULL,'Palestine, State of',275,'OFFICIALLY_ASSIGNED'),('PT','PRT',NULL,NULL,NULL,NULL,'Portugal',620,'OFFICIALLY_ASSIGNED'),('PU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PW','PLW',NULL,NULL,NULL,NULL,'Palau',585,'OFFICIALLY_ASSIGNED'),('PX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PY','PRY',NULL,NULL,NULL,NULL,'Paraguay',600,'OFFICIALLY_ASSIGNED'),('PZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QA','QAT',NULL,NULL,NULL,NULL,'Qatar',634,'OFFICIALLY_ASSIGNED'),('QB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('RA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RE','REU',NULL,NULL,NULL,NULL,'R矇union',638,'OFFICIALLY_ASSIGNED'),('RF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RO','ROU',NULL,NULL,NULL,NULL,'Romania',642,'OFFICIALLY_ASSIGNED'),('RP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RS','SRB',NULL,NULL,NULL,NULL,'Serbia',688,'OFFICIALLY_ASSIGNED'),('RT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RU','RUS',NULL,NULL,NULL,NULL,'Russian Federation',643,'OFFICIALLY_ASSIGNED'),('RV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RW','RWA',NULL,NULL,NULL,NULL,'Rwanda',646,'OFFICIALLY_ASSIGNED'),('RX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SA','SAU',NULL,NULL,NULL,NULL,'Saudi Arabia',682,'OFFICIALLY_ASSIGNED'),('SB','SLB',NULL,NULL,NULL,NULL,'Solomon Islands',90,'OFFICIALLY_ASSIGNED'),('SC','SYC',NULL,NULL,NULL,NULL,'Seychelles',690,'OFFICIALLY_ASSIGNED'),('SD','SDN',NULL,NULL,NULL,NULL,'Sudan',729,'OFFICIALLY_ASSIGNED'),('SE','SWE',NULL,NULL,NULL,NULL,'Sweden',752,'OFFICIALLY_ASSIGNED'),('SF','FIN',NULL,NULL,NULL,NULL,'Finland',246,'TRANSITIONALLY_RESERVED'),('SG','SGP',NULL,NULL,NULL,NULL,'Singapore',702,'OFFICIALLY_ASSIGNED'),('SH','SHN',NULL,NULL,NULL,NULL,'Saint Helena, Ascension and Tristan da Cunha',654,'OFFICIALLY_ASSIGNED'),('SI','SVN',NULL,NULL,NULL,NULL,'Slovenia',705,'OFFICIALLY_ASSIGNED'),('SJ','SJM',NULL,NULL,NULL,NULL,'Svalbard and Jan Mayen',744,'OFFICIALLY_ASSIGNED'),('SK','SVK',NULL,NULL,NULL,NULL,'Slovakia',703,'OFFICIALLY_ASSIGNED'),('SL','SLE',NULL,NULL,NULL,NULL,'Sierra Leone',694,'OFFICIALLY_ASSIGNED'),('SM','SMR',NULL,NULL,NULL,NULL,'San Marino',674,'OFFICIALLY_ASSIGNED'),('SN','SEN',NULL,NULL,NULL,NULL,'Senegal',686,'OFFICIALLY_ASSIGNED'),('SO','SOM',NULL,NULL,NULL,NULL,'Somalia',706,'OFFICIALLY_ASSIGNED'),('SP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SR','SUR',NULL,NULL,NULL,NULL,'Suriname',740,'OFFICIALLY_ASSIGNED'),('SS','SSD',NULL,NULL,NULL,NULL,'South Sudan',728,'OFFICIALLY_ASSIGNED'),('ST','STP',NULL,NULL,NULL,NULL,'Sao Tome and Principe',678,'OFFICIALLY_ASSIGNED'),('SU','SUN',NULL,NULL,NULL,NULL,'USSR',-1,'EXCEPTIONALLY_RESERVED'),('SV','SLV',NULL,NULL,NULL,NULL,'El Salvador',222,'OFFICIALLY_ASSIGNED'),('SW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SX','SXM',NULL,NULL,NULL,NULL,'Sint Maarten (Dutch part)',534,'OFFICIALLY_ASSIGNED'),('SY','SYR',NULL,NULL,NULL,NULL,'Syrian Arab Republic',760,'OFFICIALLY_ASSIGNED'),('SZ','SWZ',NULL,NULL,NULL,NULL,'Swaziland',748,'OFFICIALLY_ASSIGNED'),('TA','TAA',NULL,NULL,NULL,NULL,'Tristan da Cunha',-1,'EXCEPTIONALLY_RESERVED'),('TB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TC','TCA',NULL,NULL,NULL,NULL,'Turks and Caicos Islands',796,'OFFICIALLY_ASSIGNED'),('TD','TCD',NULL,NULL,NULL,NULL,'Chad',148,'OFFICIALLY_ASSIGNED'),('TE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TF','ATF',NULL,NULL,NULL,NULL,'French Southern Territories',260,'OFFICIALLY_ASSIGNED'),('TG','TGO',NULL,NULL,NULL,NULL,'Togo',768,'OFFICIALLY_ASSIGNED'),('TH','THA',NULL,NULL,NULL,NULL,'Thailand',764,'OFFICIALLY_ASSIGNED'),('TI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TJ','TJK',NULL,NULL,NULL,NULL,'Tajikistan',762,'OFFICIALLY_ASSIGNED'),('TK','TKL',NULL,NULL,NULL,NULL,'Tokelau',772,'OFFICIALLY_ASSIGNED'),('TL','TLS',NULL,NULL,NULL,NULL,'Timor-Leste',626,'OFFICIALLY_ASSIGNED'),('TM','TKM',NULL,NULL,NULL,NULL,'Turkmenistan',795,'OFFICIALLY_ASSIGNED'),('TN','TUN',NULL,NULL,NULL,NULL,'Tunisia',788,'OFFICIALLY_ASSIGNED'),('TO','TON',NULL,NULL,NULL,NULL,'Tonga',776,'OFFICIALLY_ASSIGNED'),('TP','TPTL',NULL,NULL,NULL,NULL,'East Timor',0,'TRANSITIONALLY_RESERVED'),('TQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TR','TUR',NULL,NULL,NULL,NULL,'Turkey',792,'OFFICIALLY_ASSIGNED'),('TS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TT','TTO',NULL,NULL,NULL,NULL,'Trinidad and Tobago',780,'OFFICIALLY_ASSIGNED'),('TU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TV','TUV',NULL,NULL,NULL,NULL,'Tuvalu',798,'OFFICIALLY_ASSIGNED'),('TW','TWN',NULL,NULL,NULL,NULL,'Taiwan, Province of China',158,'OFFICIALLY_ASSIGNED'),('TX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TZ','TZA',NULL,NULL,NULL,NULL,'Tanzania, United Republic of',834,'OFFICIALLY_ASSIGNED'),('UA','UKR',NULL,NULL,NULL,NULL,'Ukraine',804,'OFFICIALLY_ASSIGNED'),('UB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UG','UGA',NULL,NULL,NULL,NULL,'Uganda',800,'OFFICIALLY_ASSIGNED'),('UH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UK','null',NULL,NULL,NULL,NULL,'United Kingdom',-1,'EXCEPTIONALLY_RESERVED'),('UL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UM','UMI',NULL,NULL,NULL,NULL,'United States Minor Outlying Islands',581,'OFFICIALLY_ASSIGNED'),('UN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('US','USA',NULL,NULL,NULL,NULL,'United States',840,'OFFICIALLY_ASSIGNED'),('UT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UY','URY',NULL,NULL,NULL,NULL,'Uruguay',858,'OFFICIALLY_ASSIGNED'),('UZ','UZB',NULL,NULL,NULL,NULL,'Uzbekistan',860,'OFFICIALLY_ASSIGNED'),('VA','VAT',NULL,NULL,NULL,NULL,'Holy See (Vatican City State)',336,'OFFICIALLY_ASSIGNED'),('VB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VC','VCT',NULL,NULL,NULL,NULL,'Saint Vincent and the Grenadines',670,'OFFICIALLY_ASSIGNED'),('VD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VE','VEN',NULL,NULL,NULL,NULL,'Venezuela, Bolivarian Republic of',862,'OFFICIALLY_ASSIGNED'),('VF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VG','VGB',NULL,NULL,NULL,NULL,'Virgin Islands, British',92,'OFFICIALLY_ASSIGNED'),('VH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VI','VIR',NULL,NULL,NULL,NULL,'Virgin Islands, U.S.',850,'OFFICIALLY_ASSIGNED'),('VJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VN','VNM',NULL,NULL,NULL,NULL,'Viet Nam',704,'OFFICIALLY_ASSIGNED'),('VO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VU','VUT',NULL,NULL,NULL,NULL,'Vanuatu',548,'OFFICIALLY_ASSIGNED'),('VV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WF','WLF',NULL,NULL,NULL,NULL,'Wallis and Futuna',876,'OFFICIALLY_ASSIGNED'),('WG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('WH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('WM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('WP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WS','WSM',NULL,NULL,NULL,NULL,'Samoa',882,'OFFICIALLY_ASSIGNED'),('WT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('WW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('XA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XK','XXK',NULL,NULL,NULL,NULL,'Kosovo, Republic of',-1,'USER_ASSIGNED'),('XL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('YA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YE','YEM',NULL,NULL,NULL,NULL,'Yemen',887,'OFFICIALLY_ASSIGNED'),('YF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YT','MYT',NULL,NULL,NULL,NULL,'Mayotte',175,'OFFICIALLY_ASSIGNED'),('YU','YUCS',NULL,NULL,NULL,NULL,'Yugoslavia',890,'TRANSITIONALLY_RESERVED'),('YV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('YW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZA','ZAF',NULL,NULL,NULL,NULL,'South Africa',710,'OFFICIALLY_ASSIGNED'),('ZB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZM','ZMB',NULL,NULL,NULL,NULL,'Zambia',894,'OFFICIALLY_ASSIGNED'),('ZN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZR','ZRCD',NULL,NULL,NULL,NULL,'Zaire',0,'TRANSITIONALLY_RESERVED'),('ZS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZW','ZWE',NULL,NULL,NULL,NULL,'Zimbabwe',716,'OFFICIALLY_ASSIGNED'),('ZX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED');
/*!40000 ALTER TABLE `blc_iso_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_item_offer_qualifier`
--

DROP TABLE IF EXISTS `blc_item_offer_qualifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_item_offer_qualifier` (
  `ITEM_OFFER_QUALIFIER_ID` bigint NOT NULL,
  `QUANTITY` bigint DEFAULT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ITEM_OFFER_QUALIFIER_ID`),
  KEY `FKo9i9n1thqcqt9nu0fv2nlg1ec` (`OFFER_ID`),
  KEY `FK9fl5rced4g4u8sxh1j4mrwkto` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9fl5rced4g4u8sxh1j4mrwkto` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKo9i9n1thqcqt9nu0fv2nlg1ec` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_item_offer_qualifier`
--

LOCK TABLES `blc_item_offer_qualifier` WRITE;
/*!40000 ALTER TABLE `blc_item_offer_qualifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_item_offer_qualifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_locale`
--

DROP TABLE IF EXISTS `blc_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_locale` (
  `LOCALE_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DEFAULT_FLAG` bit(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `USE_IN_SEARCH_INDEX` bit(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCALE_CODE`),
  KEY `FK6gs37rhrtyd5ei2oqspxxrc3x` (`CURRENCY_CODE`),
  CONSTRAINT `FK6gs37rhrtyd5ei2oqspxxrc3x` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_locale`
--

LOCK TABLES `blc_locale` WRITE;
/*!40000 ALTER TABLE `blc_locale` DISABLE KEYS */;
INSERT INTO `blc_locale` VALUES ('en',NULL,NULL,NULL,NULL,_binary '\0','English',NULL,'USD'),('en_GB',NULL,NULL,NULL,NULL,_binary '\0','English (United Kingdom)',NULL,'GBP'),('en_US',NULL,NULL,NULL,NULL,_binary '','English US',NULL,'USD'),('es',NULL,NULL,NULL,NULL,_binary '\0','Spanish',NULL,'EUR'),('es_ES',NULL,NULL,NULL,NULL,_binary '\0','Spanish (Spain)',NULL,'EUR'),('es_MX',NULL,NULL,NULL,NULL,_binary '\0','Spanish (Mexico)',NULL,'MXN'),('fr',NULL,NULL,NULL,NULL,_binary '\0','French',NULL,'EUR'),('fr_FR',NULL,NULL,NULL,NULL,_binary '\0','French (France)',NULL,'EUR'),('zh_TW',NULL,NULL,NULL,NULL,_binary '\0','Taiwan',NULL,'NTD');
/*!40000 ALTER TABLE `blc_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_media`
--

DROP TABLE IF EXISTS `blc_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_media` (
  `MEDIA_ID` bigint NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  KEY `MEDIA_TITLE_INDEX` (`TITLE`),
  KEY `MEDIA_URL_INDEX` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_media`
--

LOCK TABLES `blc_media` WRITE;
/*!40000 ALTER TABLE `blc_media` DISABLE KEYS */;
INSERT INTO `blc_media` VALUES (101,NULL,NULL,'Sudden Death Sauce Bottle','/cmsstatic/product/1/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg'),(102,'alt1',NULL,'Sudden Death Sauce Close-up','/cmsstatic/img/sauces/Sudden-Death-Sauce-Close.jpg'),(201,NULL,NULL,'Sweet Death Sauce Bottle','/cmsstatic/product/2/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg'),(202,'alt1',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Close.jpg'),(203,'alt2',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Skull.jpg'),(204,'alt3',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Tile.jpg'),(205,'alt4',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Grass.jpg'),(206,'alt5',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Logo.jpg'),(301,'primary',NULL,'Hoppin Hot Sauce Bottle','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Bottle.jpg'),(302,'alt1',NULL,'Hoppin Hot Sauce Close-up','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Close.jpg'),(401,'primary',NULL,'Day of the Dead Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Bottle.jpg'),(402,'alt1',NULL,'Day of the Dead Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Close.jpg'),(501,'primary',NULL,'Day of the Dead Habanero Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Bottle.jpg'),(502,'alt1',NULL,'Day of the Dead Habanero Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Close.jpg'),(601,'primary',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(602,'alt1',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Close.jpg'),(701,'primary',NULL,'Green Ghost Bottle','/cmsstatic/img/sauces/Green-Ghost-Bottle.jpg'),(702,'alt1',NULL,'Green Ghost Close-up','/cmsstatic/img/sauces/Green-Ghost-Close.jpg'),(801,'primary',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Bottle','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Bottle.jpg'),(802,'alt1',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Close-up','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Close.jpg'),(901,'primary',NULL,'Armageddon The Hot Sauce To End All Bottle','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg'),(902,'alt1',NULL,'Armageddon The Hot Sauce To End All Close-up','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg'),(1001,'primary',NULL,'Dr. Chilemeisters Insane Hot Sauce Bottle','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Bottle.jpg'),(1002,'alt1',NULL,'Dr. Chilemeisters Insane Hot Sauce Close-up','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Close.jpg'),(1101,'primary',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1102,'alt1',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1201,'primary',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Bottle','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Bottle.jpg'),(1202,'alt1',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Close-up','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Close.jpg'),(1301,'primary',NULL,'Bull Snort Smokin Toncils Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Bottle.jpg'),(1302,'alt1',NULL,'Bull Snort Smokin Toncils Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Close.jpg'),(1401,'primary',NULL,'Cool Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1402,'alt1',NULL,'Cool Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1501,'primary',NULL,'Roasted Garlic Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Bottle.jpg'),(1502,'alt1',NULL,'Roasted Garlic Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Close.jpg'),(1601,'primary',NULL,'Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(1602,'alt1',NULL,'Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Close.jpg'),(1701,'primary',NULL,'Insanity Sauce Bottle','/cmsstatic/img/sauces/Insanity-Sauce-Bottle.jpg'),(1702,'alt1',NULL,'Insanity Sauce Close-up','/cmsstatic/img/sauces/Insanity-Sauce-Close.jpg'),(1801,'primary',NULL,'Hurtin Jalepeno Hot Sauce Bottle','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Bottle.jpg'),(1802,'alt1',NULL,'Hurtin Jalepeno Hot Sauce Close-up','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Close.jpg'),(1901,'primary',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Bottle.jpg'),(1902,'alt1',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Close.jpg'),(10001,'primary','Black','Hawt Like a Habanero Men\'s Black','/cmsstatic/img/merch/habanero_mens_black.jpg'),(10002,'primary','Red','Hawt Like a Habanero Men\'s Red','/cmsstatic/img/merch/habanero_mens_red.jpg'),(10003,'primary','Silver','Hawt Like a Habanero Men\'s Silver','/cmsstatic/img/merch/habanero_mens_silver.jpg'),(20001,'primary','Black','Hawt Like a Habanero Women\'s Black','/cmsstatic/img/merch/habanero_womens_black.jpg'),(20002,'primary','Red','Hawt Like a Habanero Women\'s Red','/cmsstatic/img/merch/habanero_womens_red.jpg'),(20003,'primary','Silver','Hawt Like a Habanero Women\'s Silver','/cmsstatic/img/merch/habanero_womens_silver.jpg'),(30001,'primary','Black','Heat Clinic Hand-Drawn Men\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_black.jpg'),(30002,'primary','Red','Heat Clinic Hand-Drawn Men\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_red.jpg'),(30003,'primary','Silver','Heat Clinic Hand-Drawn Men\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_silver.jpg'),(40001,'primary','Black','Heat Clinic Hand-Drawn Women\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_black.jpg'),(40002,'primary','Red','Heat Clinic Hand-Drawn Women\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_red.jpg'),(40003,'primary','Silver','Heat Clinic Hand-Drawn Women\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_silver.jpg'),(50001,'primary','Black','Heat Clinic Mascot Men\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_mens_black.jpg'),(50002,'primary','Red','Heat Clinic Mascot Men\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_mens_red.jpg'),(50003,'primary','Silver','Heat Clinic Mascot Men\'s Silver','/cmsstatic/img/merch/heat_clinic_mascot_mens_silver.jpg'),(60001,'primary','Black','Heat Clinic Mascot Women\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_womens_black.jpg'),(60002,'primary','Red','Heat Clinic Mascot Women\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_womens_red.jpg'),(60003,'primary','Silver','Heat Clinic Mascot Women\'s Silver','/cmsstatic/img/merch/heat_clinic_mascot_womens_silver.jpg'),(60015,NULL,NULL,NULL,'/cmsstatic/ly01.jpg'),(60064,NULL,NULL,NULL,'/cmsstatic/ly02.jpg'),(60065,NULL,NULL,NULL,'/cmsstatic/ly03.jpg'),(60114,NULL,NULL,NULL,'/cmsstatic/cb01.jpg'),(60116,NULL,NULL,NULL,'/cmsstatic/cb02.jpg'),(60164,NULL,NULL,NULL,'/cmsstatic/cb03.jpg'),(60214,'primary',NULL,NULL,'/cmsstatic/product/LY-brand-logo.png'),(60266,'primary',NULL,NULL,'/cmsstatic/product/apple-touch-icon.png'),(60267,'primary',NULL,NULL,'/cmsstatic/product/apple-touch-icon.png'),(60314,'primary',NULL,NULL,'/cmsstatic/product/961/130320_5b50553b.jpg'),(60315,NULL,NULL,NULL,'/cmsstatic/cb04.jpg'),(60364,NULL,NULL,NULL,'/cmsstatic/cb05.jpg'),(60365,NULL,NULL,NULL,'/cmsstatic/cb06.jpg'),(60366,NULL,NULL,NULL,'/cmsstatic/cb07.jpg'),(60414,NULL,NULL,NULL,'/cmsstatic/cb08.jpg'),(60415,NULL,NULL,NULL,'/cmsstatic/cb09.jpg'),(60464,NULL,NULL,NULL,'/cmsstatic/uc01.jpg'),(60465,NULL,NULL,NULL,'/cmsstatic/uc02.jpg'),(60466,NULL,NULL,NULL,'/cmsstatic/uc03.jpg'),(60514,NULL,NULL,NULL,'/cmsstatic/product/1211/product_bundle01.jpg');
/*!40000 ALTER TABLE `blc_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_module_configuration`
--

DROP TABLE IF EXISTS `blc_module_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_module_configuration` (
  `MODULE_CONFIG_ID` bigint NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `CONFIG_TYPE` varchar(255) NOT NULL,
  `IS_DEFAULT` bit(1) NOT NULL,
  `MODULE_NAME` varchar(255) NOT NULL,
  `MODULE_PRIORITY` int NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_module_configuration`
--

LOCK TABLES `blc_module_configuration` WRITE;
/*!40000 ALTER TABLE `blc_module_configuration` DISABLE KEYS */;
INSERT INTO `blc_module_configuration` VALUES (-1,NULL,'2021-04-28 21:37:36',NULL,NULL,NULL,NULL,NULL,'SITE_MAP',_binary '','SITE_MAP',100);
/*!40000 ALTER TABLE `blc_module_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer`
--

DROP TABLE IF EXISTS `blc_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer` (
  `OFFER_ID` bigint NOT NULL,
  `OFFER_ADJUSTMENT_TYPE` varchar(255) DEFAULT NULL,
  `APPLY_TO_CHILD_ITEMS` bit(1) DEFAULT NULL,
  `APPLY_TO_SALE_PRICE` bit(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `AUTOMATICALLY_ADDED` bit(1) DEFAULT NULL,
  `COMBINABLE_WITH_OTHER_OFFERS` bit(1) DEFAULT NULL,
  `OFFER_DESCRIPTION` varchar(255) DEFAULT NULL,
  `OFFER_DISCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `MARKETING_MESSAGE` varchar(255) DEFAULT NULL,
  `MAX_USES_PER_CUSTOMER` bigint DEFAULT NULL,
  `MAX_USES` int DEFAULT NULL,
  `MAX_USES_STRATEGY` varchar(255) DEFAULT NULL,
  `MINIMUM_DAYS_PER_USAGE` bigint DEFAULT NULL,
  `OFFER_NAME` varchar(255) NOT NULL,
  `OFFER_ITEM_QUALIFIER_RULE` varchar(255) DEFAULT NULL,
  `OFFER_ITEM_TARGET_RULE` varchar(255) DEFAULT NULL,
  `ORDER_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `OFFER_PRIORITY` int DEFAULT NULL,
  `QUALIFYING_ITEM_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `REQUIRES_RELATED_TAR_QUAL` bit(1) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `TARGET_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `TARGET_SYSTEM` varchar(255) DEFAULT NULL,
  `TOTALITARIAN_OFFER` bit(1) DEFAULT NULL,
  `OFFER_TYPE` varchar(255) NOT NULL,
  `USE_LIST_FOR_DISCOUNTS` bit(1) DEFAULT NULL,
  `OFFER_VALUE` decimal(19,5) NOT NULL,
  PRIMARY KEY (`OFFER_ID`),
  KEY `OFFER_DISCOUNT_INDEX` (`OFFER_DISCOUNT_TYPE`),
  KEY `OFFER_MARKETING_MESSAGE_INDEX` (`MARKETING_MESSAGE`),
  KEY `OFFER_NAME_INDEX` (`OFFER_NAME`),
  KEY `idx_BLOF_START_DATE` (`START_DATE`),
  KEY `OFFER_TYPE_INDEX` (`OFFER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer`
--

LOCK TABLES `blc_offer` WRITE;
/*!40000 ALTER TABLE `blc_offer` DISABLE KEYS */;
INSERT INTO `blc_offer` VALUES (1,NULL,_binary '\0',_binary '\0','Y',_binary '',_binary '',NULL,'FIX_PRICE','2022-01-01 00:00:00','現在購買兩項享10000元折扣',NULL,0,NULL,NULL,'Coupon discount','NONE','NONE',NULL,NULL,NULL,NULL,'2021-04-28 00:00:00',NULL,NULL,NULL,'ORDER_ITEM',NULL,10000.00000),(12,NULL,_binary '\0',_binary '','N',_binary '',_binary '',NULL,'PERCENT_OFF',NULL,NULL,0,NULL,'CUSTOMER',0,'Percent Off','NONE','NONE',0.00000,NULL,0.00000,_binary '\0','2021-05-07 01:27:00',0.00000,NULL,_binary '\0','ORDER',_binary '\0',20.00000),(13,NULL,_binary '\0',_binary '','N',_binary '',_binary '',NULL,'AMOUNT_OFF',NULL,'總額折一萬',0,NULL,'CUSTOMER',0,'Amout off','NONE','NONE',0.00000,NULL,0.00000,_binary '\0','2021-05-07 01:25:00',0.00000,NULL,_binary '\0','ORDER',_binary '\0',10000.00000),(14,NULL,_binary '\0',_binary '','N',_binary '',_binary '',NULL,'PERCENT_OFF',NULL,NULL,0,NULL,'CUSTOMER',0,'龍巖產品兩件7折','NONE','NONE',0.00000,NULL,0.00000,_binary '\0','2021-05-07 00:53:29',0.00000,NULL,_binary '\0','ORDER_ITEM',_binary '\0',30.00000);
/*!40000 ALTER TABLE `blc_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_audit`
--

DROP TABLE IF EXISTS `blc_offer_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_audit` (
  `OFFER_AUDIT_ID` bigint NOT NULL,
  `ACCOUNT_ID` bigint DEFAULT NULL,
  `CUSTOMER_ID` bigint DEFAULT NULL,
  `OFFER_CODE_ID` bigint DEFAULT NULL,
  `OFFER_ID` bigint DEFAULT NULL,
  `ORDER_ID` bigint DEFAULT NULL,
  `REDEEMED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFFER_AUDIT_ID`),
  KEY `OFFERAUDIT_ACCOUNT_INDEX` (`ACCOUNT_ID`),
  KEY `OFFERAUDIT_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `OFFERAUDIT_OFFER_CODE_INDEX` (`OFFER_CODE_ID`),
  KEY `OFFERAUDIT_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERAUDIT_ORDER_INDEX` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_audit`
--

LOCK TABLES `blc_offer_audit` WRITE;
/*!40000 ALTER TABLE `blc_offer_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_code`
--

DROP TABLE IF EXISTS `blc_offer_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_code` (
  `OFFER_CODE_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `MAX_USES` int DEFAULT NULL,
  `OFFER_CODE` varchar(255) NOT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `USES` int DEFAULT NULL,
  `OFFER_ID` bigint NOT NULL,
  PRIMARY KEY (`OFFER_CODE_ID`),
  KEY `OFFER_CODE_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `OFFERCODE_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERCODE_CODE_INDEX` (`OFFER_CODE`),
  CONSTRAINT `FK4rcfx31u6n9esw1ob98u8o87o` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_code`
--

LOCK TABLES `blc_offer_code` WRITE;
/*!40000 ALTER TABLE `blc_offer_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_info`
--

DROP TABLE IF EXISTS `blc_offer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_info` (
  `OFFER_INFO_ID` bigint NOT NULL,
  PRIMARY KEY (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_info`
--

LOCK TABLES `blc_offer_info` WRITE;
/*!40000 ALTER TABLE `blc_offer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_info_fields`
--

DROP TABLE IF EXISTS `blc_offer_info_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_info_fields` (
  `OFFER_INFO_FIELDS_ID` bigint NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_FIELDS_ID`,`FIELD_NAME`),
  CONSTRAINT `FKohr0h2751uuxgawkbkakbptqn` FOREIGN KEY (`OFFER_INFO_FIELDS_ID`) REFERENCES `blc_offer_info` (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_info_fields`
--

LOCK TABLES `blc_offer_info_fields` WRITE;
/*!40000 ALTER TABLE `blc_offer_info_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_info_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_item_criteria`
--

DROP TABLE IF EXISTS `blc_offer_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_item_criteria` (
  `OFFER_ITEM_CRITERIA_ID` bigint NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int NOT NULL,
  PRIMARY KEY (`OFFER_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_item_criteria`
--

LOCK TABLES `blc_offer_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_offer_item_criteria` DISABLE KEYS */;
INSERT INTO `blc_offer_item_criteria` VALUES (15,'?orderItem.?product.?manufacturer==\"龍巖股份有限公司\"',2);
/*!40000 ALTER TABLE `blc_offer_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_price_data`
--

DROP TABLE IF EXISTS `blc_offer_price_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_price_data` (
  `OFFER_PRICE_DATA_ID` bigint NOT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `AMOUNT` decimal(19,5) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `DISCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `IDENTIFIER_TYPE` varchar(255) DEFAULT NULL,
  `IDENTIFIER_VALUE` varchar(255) DEFAULT NULL,
  `QUANTITY` int NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  PRIMARY KEY (`OFFER_PRICE_DATA_ID`),
  KEY `OFFER_PRICE_DATA_OFFER_INDEX` (`OFFER_ID`),
  CONSTRAINT `FKkprkllbin16hh5ay89t8we431` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_price_data`
--

LOCK TABLES `blc_offer_price_data` WRITE;
/*!40000 ALTER TABLE `blc_offer_price_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_price_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_rule`
--

DROP TABLE IF EXISTS `blc_offer_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_rule` (
  `OFFER_RULE_ID` bigint NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_rule`
--

LOCK TABLES `blc_offer_rule` WRITE;
/*!40000 ALTER TABLE `blc_offer_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_rule_map`
--

DROP TABLE IF EXISTS `blc_offer_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_offer_rule_map` (
  `OFFER_OFFER_RULE_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_OFFER_OFFER_ID` bigint NOT NULL,
  `OFFER_RULE_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`OFFER_OFFER_RULE_ID`),
  KEY `FKmwr0lw44aa4hulm8c9qg39x9x` (`BLC_OFFER_OFFER_ID`),
  KEY `FK8ndq3dtgs1cr4ds9eil3sxcti` (`OFFER_RULE_ID`),
  CONSTRAINT `FK8ndq3dtgs1cr4ds9eil3sxcti` FOREIGN KEY (`OFFER_RULE_ID`) REFERENCES `blc_offer_rule` (`OFFER_RULE_ID`),
  CONSTRAINT `FKmwr0lw44aa4hulm8c9qg39x9x` FOREIGN KEY (`BLC_OFFER_OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_rule_map`
--

LOCK TABLES `blc_offer_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_offer_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order`
--

DROP TABLE IF EXISTS `blc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order` (
  `ORDER_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_NUMBER` varchar(255) DEFAULT NULL,
  `IS_PREVIEW` bit(1) DEFAULT NULL,
  `ORDER_STATUS` varchar(255) DEFAULT NULL,
  `ORDER_SUBTOTAL` decimal(19,5) DEFAULT NULL,
  `SUBMIT_DATE` datetime DEFAULT NULL,
  `TAX_OVERRIDE` bit(1) DEFAULT NULL,
  `ORDER_TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_SHIPPING` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `ORDER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `ORDER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `ORDER_NAME_INDEX` (`NAME`),
  KEY `ORDER_NUMBER_INDEX` (`ORDER_NUMBER`),
  KEY `ORDER_STATUS_INDEX` (`ORDER_STATUS`),
  KEY `FKl58agohje8ndhoow8s8hlday1` (`CURRENCY_CODE`),
  KEY `FKc90jmu6i66weyh7o0u5q94jtv` (`LOCALE_CODE`),
  CONSTRAINT `FKc90jmu6i66weyh7o0u5q94jtv` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`),
  CONSTRAINT `FKh0ouiaamkm2k7qfgc6cjacukg` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKl58agohje8ndhoow8s8hlday1` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order`
--

LOCK TABLES `blc_order` WRITE;
/*!40000 ALTER TABLE `blc_order` DISABLE KEYS */;
INSERT INTO `blc_order` VALUES (1,1001,'2021-05-01 04:48:38','2021-05-01 04:49:14',1001,NULL,NULL,NULL,NULL,'IN_PROCESS',0.00000,NULL,NULL,0.00000,0.00000,0.00000,'USD',1001,'zh_TW'),(51,1900,'2021-05-03 00:50:56','2021-05-03 01:18:55',1900,NULL,NULL,NULL,NULL,'IN_PROCESS',345000.00000,NULL,NULL,345000.00000,0.00000,0.00000,'USD',1900,'zh_TW'),(101,2301,'2021-05-04 01:49:13','2021-05-04 01:49:14',2301,NULL,NULL,NULL,NULL,'IN_PROCESS',600000.00000,NULL,NULL,600000.00000,0.00000,0.00000,'USD',2301,'zh_TW'),(151,3802,'2021-05-07 00:37:14','2021-05-07 01:20:50',3802,NULL,NULL,NULL,NULL,'IN_PROCESS',236600.00000,NULL,NULL,236600.00000,0.00000,0.00000,'USD',3802,'zh_TW'),(152,3803,'2021-05-07 01:23:26','2021-05-07 01:28:26',3803,NULL,NULL,NULL,NULL,'IN_PROCESS',140000.00000,NULL,NULL,102000.00000,0.00000,0.00000,'USD',3803,'zh_TW'),(153,3804,'2021-05-07 02:14:23','2021-05-07 02:31:02',3804,NULL,NULL,NULL,NULL,'IN_PROCESS',260600.00000,NULL,NULL,198480.00000,0.00000,0.00000,'USD',3804,'zh_TW');
/*!40000 ALTER TABLE `blc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_adjustment`
--

DROP TABLE IF EXISTS `blc_order_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_adjustment` (
  `ORDER_ADJUSTMENT_ID` bigint NOT NULL,
  `IS_FUTURE_CREDIT` bit(1) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ADJUSTMENT_ID`),
  KEY `ORDERADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `ORDERADJUST_ORDER_INDEX` (`ORDER_ID`),
  CONSTRAINT `FKh9agwlogxxgfxbxe7rcgrwv4u` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKmlymutb81ohtx11e2u64tjqyu` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_adjustment`
--

LOCK TABLES `blc_order_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_order_adjustment` DISABLE KEYS */;
INSERT INTO `blc_order_adjustment` VALUES (3,_binary '\0','總額折扣1萬',10000.00000,13,152),(4,_binary '\0','Percent Offer',28000.00000,12,152),(5,_binary '\0','Percent Off',52120.00000,12,153),(6,_binary '\0','Amout off',10000.00000,13,153);
/*!40000 ALTER TABLE `blc_order_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_attribute`
--

DROP TABLE IF EXISTS `blc_order_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_attribute` (
  `ORDER_ATTRIBUTE_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint NOT NULL,
  PRIMARY KEY (`ORDER_ATTRIBUTE_ID`),
  UNIQUE KEY `ATTR_NAME_ORDER_ID` (`NAME`,`ORDER_ID`),
  KEY `FKa5k0dl8lmasauj4cmems5e16s` (`ORDER_ID`),
  CONSTRAINT `FKa5k0dl8lmasauj4cmems5e16s` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_attribute`
--

LOCK TABLES `blc_order_attribute` WRITE;
/*!40000 ALTER TABLE `blc_order_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item`
--

DROP TABLE IF EXISTS `blc_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item` (
  `ORDER_ITEM_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DISCOUNTS_ALLOWED` bit(1) DEFAULT NULL,
  `HAS_VALIDATION_ERRORS` bit(1) DEFAULT NULL,
  `ITEM_TAXABLE_FLAG` bit(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int NOT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `RETAIL_PRICE_OVERRIDE` bit(1) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE_OVERRIDE` bit(1) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `GIFT_WRAP_ITEM_ID` bigint DEFAULT NULL,
  `ORDER_ID` bigint DEFAULT NULL,
  `PARENT_ORDER_ITEM_ID` bigint DEFAULT NULL,
  `PERSONAL_MESSAGE_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `ORDERITEM_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `ORDERITEM_GIFT_INDEX` (`GIFT_WRAP_ITEM_ID`),
  KEY `ORDERITEM_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERITEM_TYPE_INDEX` (`ORDER_ITEM_TYPE`),
  KEY `ORDERITEM_PARENT_INDEX` (`PARENT_ORDER_ITEM_ID`),
  KEY `ORDERITEM_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK3553qqcmvw5i3durebksttod3` FOREIGN KEY (`GIFT_WRAP_ITEM_ID`) REFERENCES `blc_giftwrap_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK4vocoseu9tnln1vq4r2gygh3n` FOREIGN KEY (`PARENT_ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK737vx8aceqsa8wyb6hjt44x58` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK8b71a8di9bu8jrssp98u8ka0s` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKccrkxx60l5x2q24dl97x9iu0a` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `blc_personal_message` (`PERSONAL_MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item`
--

LOCK TABLES `blc_order_item` WRITE;
/*!40000 ALTER TABLE `blc_order_item` DISABLE KEYS */;
INSERT INTO `blc_order_item` VALUES (53,1900,'2021-05-03 01:13:51','2021-05-03 01:13:51',1900,NULL,NULL,NULL,'cb02向日館個人骨灰室','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',95000.00000,1,120000.00000,NULL,95000.00000,NULL,NULL,2069,NULL,51,NULL,NULL),(54,1900,'2021-05-03 01:13:57','2021-05-03 01:13:57',1900,NULL,NULL,NULL,'ly02圓融生前契約','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',250000.00000,1,280000.00000,NULL,250000.00000,NULL,NULL,2019,NULL,51,NULL,NULL),(101,2301,'2021-05-04 01:49:13','2021-05-04 01:49:14',2301,NULL,NULL,NULL,'風華生前契約','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',600000.00000,1,650000.00000,NULL,600000.00000,NULL,NULL,2019,NULL,101,NULL,NULL),(160,3802,'2021-05-07 01:09:28','2021-05-07 01:19:49',3802,NULL,NULL,NULL,'ly02星動圓融','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',105000.00000,1,1800000.00000,NULL,150000.00000,NULL,NULL,2369,NULL,151,NULL,NULL),(161,3802,'2021-05-07 01:12:11','2021-05-07 01:19:49',3802,NULL,NULL,NULL,'ly03福氣圓融','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',131600.00000,1,200000.00000,NULL,188000.00000,NULL,NULL,2369,NULL,151,NULL,NULL),(165,3803,'2021-05-07 01:28:26','2021-05-07 01:28:26',3803,NULL,NULL,NULL,'基本型','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',140000.00000,1,160000.00000,NULL,140000.00000,NULL,NULL,2369,NULL,152,NULL,NULL),(170,3804,'2021-05-07 02:28:43','2021-05-07 02:28:54',3804,NULL,NULL,NULL,'基本型','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',98000.00000,1,160000.00000,NULL,140000.00000,NULL,NULL,2369,NULL,153,NULL,NULL),(171,3804,'2021-05-07 02:28:54','2021-05-07 02:28:54',3804,NULL,NULL,NULL,'骨罐認購憑證','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',161000.00000,1,250000.00000,NULL,230000.00000,NULL,NULL,2375,NULL,153,NULL,NULL),(172,3804,'2021-05-07 02:31:02','2021-05-07 02:31:02',3804,NULL,NULL,NULL,'test','org.broadleafcommerce.core.order.domain.BundleOrderItem',1600.00000,1,NULL,NULL,NULL,NULL,NULL,2019,NULL,153,NULL,NULL),(173,3804,'2021-05-07 02:31:02','2021-05-07 02:31:02',3804,NULL,NULL,NULL,'基本型','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',NULL,4,160000.00000,NULL,400.00000,_binary '',NULL,2019,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `blc_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_add_attr`
--

DROP TABLE IF EXISTS `blc_order_item_add_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item_add_attr` (
  `ORDER_ITEM_ID` bigint NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`,`NAME`),
  CONSTRAINT `FK2xfsv1rmg5hy926njxrgrkxja` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_add_attr`
--

LOCK TABLES `blc_order_item_add_attr` WRITE;
/*!40000 ALTER TABLE `blc_order_item_add_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_add_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_adjustment`
--

DROP TABLE IF EXISTS `blc_order_item_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item_adjustment` (
  `ORDER_ITEM_ADJUSTMENT_ID` bigint NOT NULL,
  `APPLIED_TO_SALE_PRICE` bit(1) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ADJUSTMENT_ID`),
  KEY `OIADJUST_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FKkw991n1so1bd0nvmtgky3d4rm` (`OFFER_ID`),
  CONSTRAINT `FKkw991n1so1bd0nvmtgky3d4rm` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKniw5eryl2ea895x5p3wh4sd0u` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_adjustment`
--

LOCK TABLES `blc_order_item_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_order_item_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_attribute`
--

DROP TABLE IF EXISTS `blc_order_item_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item_attribute` (
  `ORDER_ITEM_ATTRIBUTE_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ORDER_ITEM_ID` bigint NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ATTRIBUTE_ID`),
  UNIQUE KEY `ATTR_NAME_ORDER_ITEM_ID` (`NAME`,`ORDER_ITEM_ID`),
  KEY `FK5f2l8atn9sh06yhbjx72i8tl1` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK5f2l8atn9sh06yhbjx72i8tl1` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_attribute`
--

LOCK TABLES `blc_order_item_attribute` WRITE;
/*!40000 ALTER TABLE `blc_order_item_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_cart_message`
--

DROP TABLE IF EXISTS `blc_order_item_cart_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item_cart_message` (
  `ORDER_ITEM_ID` bigint NOT NULL,
  `CART_MESSAGE` varchar(255) DEFAULT NULL,
  KEY `FKpm9ip11x3m6rnkla1khhgqmfn` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKpm9ip11x3m6rnkla1khhgqmfn` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_cart_message`
--

LOCK TABLES `blc_order_item_cart_message` WRITE;
/*!40000 ALTER TABLE `blc_order_item_cart_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_cart_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_dtl_adj`
--

DROP TABLE IF EXISTS `blc_order_item_dtl_adj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item_dtl_adj` (
  `ORDER_ITEM_DTL_ADJ_ID` bigint NOT NULL,
  `APPLIED_TO_SALE_PRICE` bit(1) DEFAULT NULL,
  `IS_FUTURE_CREDIT` bit(1) DEFAULT NULL,
  `OFFER_NAME` varchar(255) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ITEM_PRICE_DTL_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_DTL_ADJ_ID`),
  KEY `FKtaukfbw7rtre7kmvl6fla49t6` (`OFFER_ID`),
  KEY `FKtecvjagoubp6v2337mqm5gnmg` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FKtaukfbw7rtre7kmvl6fla49t6` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKtecvjagoubp6v2337mqm5gnmg` FOREIGN KEY (`ORDER_ITEM_PRICE_DTL_ID`) REFERENCES `blc_order_item_price_dtl` (`ORDER_ITEM_PRICE_DTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_dtl_adj`
--

LOCK TABLES `blc_order_item_dtl_adj` WRITE;
/*!40000 ALTER TABLE `blc_order_item_dtl_adj` DISABLE KEYS */;
INSERT INTO `blc_order_item_dtl_adj` VALUES (2,_binary '',_binary '\0','Limited discount','Limited discount',45000.00000,14,160),(3,_binary '',_binary '\0','Limited discount','Limited discount',56400.00000,14,161),(10,_binary '',_binary '\0','龍巖產品兩件7折','龍巖產品兩件7折',42000.00000,14,170),(11,_binary '',_binary '\0','龍巖產品兩件7折','龍巖產品兩件7折',69000.00000,14,171);
/*!40000 ALTER TABLE `blc_order_item_dtl_adj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_price_dtl`
--

DROP TABLE IF EXISTS `blc_order_item_price_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_item_price_dtl` (
  `ORDER_ITEM_PRICE_DTL_ID` bigint NOT NULL,
  `QUANTITY` int NOT NULL,
  `USE_SALE_PRICE` bit(1) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_PRICE_DTL_ID`),
  KEY `FKerm8r2c1fj0vvd2rj0uxmavlj` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKerm8r2c1fj0vvd2rj0uxmavlj` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_price_dtl`
--

LOCK TABLES `blc_order_item_price_dtl` WRITE;
/*!40000 ALTER TABLE `blc_order_item_price_dtl` DISABLE KEYS */;
INSERT INTO `blc_order_item_price_dtl` VALUES (53,1,_binary '',53),(54,1,_binary '',54),(101,1,_binary '',101),(160,1,_binary '',160),(161,1,_binary '',161),(166,1,_binary '',165),(170,1,_binary '',170),(171,1,_binary '',171);
/*!40000 ALTER TABLE `blc_order_item_price_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_lock`
--

DROP TABLE IF EXISTS `blc_order_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_lock` (
  `LOCK_KEY` varchar(255) NOT NULL,
  `ORDER_ID` bigint NOT NULL,
  `LAST_UPDATED` bigint DEFAULT NULL,
  `LOCKED` char(1) DEFAULT NULL,
  PRIMARY KEY (`LOCK_KEY`,`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_lock`
--

LOCK TABLES `blc_order_lock` WRITE;
/*!40000 ALTER TABLE `blc_order_lock` DISABLE KEYS */;
INSERT INTO `blc_order_lock` VALUES ('093280eb-184b-4846-832f-6752aaa558fe',51,1620004437128,'N'),('cf22d0c0-42ed-488a-989a-5ae5c86dd9bb',151,1620349930865,'N'),('cf22d0c0-42ed-488a-989a-5ae5c86dd9bb',152,1620350905484,'N'),('cf22d0c0-42ed-488a-989a-5ae5c86dd9bb',153,1620354661469,'N');
/*!40000 ALTER TABLE `blc_order_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_multiship_option`
--

DROP TABLE IF EXISTS `blc_order_multiship_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_multiship_option` (
  `ORDER_MULTISHIP_OPTION_ID` bigint NOT NULL,
  `ADDRESS_ID` bigint DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint DEFAULT NULL,
  `ORDER_ID` bigint DEFAULT NULL,
  `ORDER_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_MULTISHIP_OPTION_ID`),
  KEY `MULTISHIP_OPTION_ORDER_INDEX` (`ORDER_ID`),
  KEY `FKt77nf9y3nokcclqibjhihjily` (`ADDRESS_ID`),
  KEY `FK1d1sd1fr2cdv0kvf2s5yclo55` (`FULFILLMENT_OPTION_ID`),
  KEY `FK8poefpppeoej296cr2g1otfki` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK1d1sd1fr2cdv0kvf2s5yclo55` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK8poefpppeoej296cr2g1otfki` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKrpsf6ltf21ohrgimnktmq5dn3` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKt77nf9y3nokcclqibjhihjily` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_multiship_option`
--

LOCK TABLES `blc_order_multiship_option` WRITE;
/*!40000 ALTER TABLE `blc_order_multiship_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_multiship_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_offer_code_xref`
--

DROP TABLE IF EXISTS `blc_order_offer_code_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_offer_code_xref` (
  `ORDER_ID` bigint NOT NULL,
  `OFFER_CODE_ID` bigint NOT NULL,
  KEY `FKdtidg8l9a5wpcuwpnqbwwhuve` (`OFFER_CODE_ID`),
  KEY `FKljh9nh9lgxkgnebscn8u8sbgf` (`ORDER_ID`),
  CONSTRAINT `FKdtidg8l9a5wpcuwpnqbwwhuve` FOREIGN KEY (`OFFER_CODE_ID`) REFERENCES `blc_offer_code` (`OFFER_CODE_ID`),
  CONSTRAINT `FKljh9nh9lgxkgnebscn8u8sbgf` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_offer_code_xref`
--

LOCK TABLES `blc_order_offer_code_xref` WRITE;
/*!40000 ALTER TABLE `blc_order_offer_code_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_offer_code_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_payment`
--

DROP TABLE IF EXISTS `blc_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_payment` (
  `ORDER_PAYMENT_ID` bigint NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) NOT NULL,
  `ADDRESS_ID` bigint DEFAULT NULL,
  `ORDER_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ORDER_PAYMENT_ID`),
  KEY `ORDERPAYMENT_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `ORDERPAYMENT_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERPAYMENT_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `ORDERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  CONSTRAINT `FK7k9dsqtdku90rongw4f2xsgg5` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`),
  CONSTRAINT `FKh0n8n75hk2l646hsxyyqrwgpx` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_payment`
--

LOCK TABLES `blc_order_payment` WRITE;
/*!40000 ALTER TABLE `blc_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_payment_transaction`
--

DROP TABLE IF EXISTS `blc_order_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_order_payment_transaction` (
  `PAYMENT_TRANSACTION_ID` bigint NOT NULL,
  `TRANSACTION_AMOUNT` decimal(19,2) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CUSTOMER_IP_ADDRESS` varchar(255) DEFAULT NULL,
  `DATE_RECORDED` datetime DEFAULT NULL,
  `RAW_RESPONSE` longtext,
  `SAVE_TOKEN` bit(1) DEFAULT NULL,
  `SUCCESS` bit(1) DEFAULT NULL,
  `TRANSACTION_TYPE` varchar(255) DEFAULT NULL,
  `ORDER_PAYMENT` bigint NOT NULL,
  `PARENT_TRANSACTION` bigint DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`),
  KEY `FKq3hymseoakriel7rw57g3vh5n` (`ORDER_PAYMENT`),
  KEY `FKjg77vkh5u48omyy8uhagkswxs` (`PARENT_TRANSACTION`),
  CONSTRAINT `FKjg77vkh5u48omyy8uhagkswxs` FOREIGN KEY (`PARENT_TRANSACTION`) REFERENCES `blc_order_payment_transaction` (`PAYMENT_TRANSACTION_ID`),
  CONSTRAINT `FKq3hymseoakriel7rw57g3vh5n` FOREIGN KEY (`ORDER_PAYMENT`) REFERENCES `blc_order_payment` (`ORDER_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_payment_transaction`
--

LOCK TABLES `blc_order_payment_transaction` WRITE;
/*!40000 ALTER TABLE `blc_order_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page`
--

DROP TABLE IF EXISTS `blc_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page` (
  `PAGE_ID` bigint NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXCLUDE_FROM_SITE_MAP` bit(1) DEFAULT NULL,
  `FULL_URL` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `OFFLINE_FLAG` bit(1) DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PAGE_ID`),
  KEY `PAGE_FULL_URL_INDEX` (`FULL_URL`),
  KEY `FKo95c7m41ycmhf4dwpebvemasl` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FKo95c7m41ycmhf4dwpebvemasl` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `blc_page_tmplt` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page`
--

LOCK TABLES `blc_page` WRITE;
/*!40000 ALTER TABLE `blc_page` DISABLE KEYS */;
INSERT INTO `blc_page` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,'About Us',NULL,'/about_us',NULL,'About Us',NULL,NULL,2),(2,NULL,NULL,NULL,NULL,NULL,NULL,'Frequently Asked Questions',NULL,'/faq',NULL,'FAQ',NULL,NULL,2),(14,NULL,NULL,-1,'2021-05-03 03:19:34','2021-05-03 03:19:34',-1,'PrivacyPolicy',_binary '\0','/privacypolicy',NULL,NULL,_binary '\0',NULL,2);
/*!40000 ALTER TABLE `blc_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_attributes`
--

DROP TABLE IF EXISTS `blc_page_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page_attributes` (
  `ATTRIBUTE_ID` bigint NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `PAGEATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `PAGEATTRIBUTE_INDEX` (`PAGE_ID`),
  CONSTRAINT `FK94785hg4iuw1k22qh6b8hysxe` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_attributes`
--

LOCK TABLES `blc_page_attributes` WRITE;
/*!40000 ALTER TABLE `blc_page_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_fld`
--

DROP TABLE IF EXISTS `blc_page_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page_fld` (
  `PAGE_FLD_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint NOT NULL,
  PRIMARY KEY (`PAGE_FLD_ID`),
  KEY `FK8t4im2p53x0mfufl92k87tsnx` (`PAGE_ID`),
  CONSTRAINT `FK8t4im2p53x0mfufl92k87tsnx` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_fld`
--

LOCK TABLES `blc_page_fld` WRITE;
/*!40000 ALTER TABLE `blc_page_fld` DISABLE KEYS */;
INSERT INTO `blc_page_fld` VALUES (1,NULL,NULL,'2021-05-03 03:03:44',-1,'body','<p>Since the establishment in 1992, Lungyen has devoting to the renovation of memorial service, funeral products and facilities. As the pioneer of Taiwan funeral industry, Lungyen built the “True Dragon Tower”, a solemn and sedate life palace with the highest standard of Steel-frame reinforced concrete (SRC) composite structure in late 90’; also introduced the Japanese professional death cleanup process and funeral floral altars to Taiwan market, contributed the level up of service quality and industry standard. Lungyen received ISO certification of quality management systems(ISO 9001) in 2000 and has become the first funeral service provider that met the international standard in Asia.</p><p>Lungyen merged Dahan Construction Corporation and listed on Taiwan\'s over-the-counter (OTC) market since 2011. We provides memorial services & products including cemeteries, Columbarium, funeral facilities & services, as well as prepaid funeral service contract. Lungyen not only developed and adheres to a prudent, transparent, accountable financial management, also takes corporate governance seriously. To further deepen the customer relationship, Lungyen has expanded the service centers networks and managing 7 cemeteries across the island nowadays. In addition, Lungyen invites many leading artists and an internationally renowned Japanese master architect to design top-notch cemetery products and sustainable ecological life memorial halls & parks, raising the industry benchmark relentlessly. In 2017, Lungyen decided to replicate the successful practices of Taiwan market to mainland China and built a life memorial park in Ruian, Wenzhou as our first presence. Looking forward, Lungyen will keep pursuing the endeavor of becoming the best entrusted provider of memorial service in Greater China.</p>',NULL,1),(2,NULL,NULL,NULL,NULL,'title',NULL,'About Us',1),(3,NULL,NULL,NULL,NULL,'body',NULL,'<h2 style=\"text-align:center;\">This is an example of a content-managed page.</h2><h4 style=\"text-align:center;\"><a href=\"http://www.broadleafcommerce.com/features/content\">Click Here</a> to see more about Content Management in Broadleaf.</h4>',2),(15,-1,'2021-04-29 15:58:40','2021-04-29 15:58:40',-1,'title',NULL,'Frequently Asked Questions',2),(65,-1,'2021-05-03 03:21:14','2021-05-03 03:21:14',-1,'title',NULL,'PrivacyPolicy',14),(66,-1,'2021-05-03 03:21:14','2021-05-03 03:21:14',-1,'body',NULL,NULL,14);
/*!40000 ALTER TABLE `blc_page_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_item_criteria`
--

DROP TABLE IF EXISTS `blc_page_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page_item_criteria` (
  `PAGE_ITEM_CRITERIA_ID` bigint NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int NOT NULL,
  PRIMARY KEY (`PAGE_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_item_criteria`
--

LOCK TABLES `blc_page_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_page_item_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_rule`
--

DROP TABLE IF EXISTS `blc_page_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page_rule` (
  `PAGE_RULE_ID` bigint NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`PAGE_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_rule`
--

LOCK TABLES `blc_page_rule` WRITE;
/*!40000 ALTER TABLE `blc_page_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_rule_map`
--

DROP TABLE IF EXISTS `blc_page_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page_rule_map` (
  `BLC_PAGE_PAGE_ID` bigint NOT NULL,
  `PAGE_RULE_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_PAGE_PAGE_ID`,`MAP_KEY`),
  KEY `FKhj9uu6o7fb0n81g5yvk48skem` (`PAGE_RULE_ID`),
  CONSTRAINT `FKhj9uu6o7fb0n81g5yvk48skem` FOREIGN KEY (`PAGE_RULE_ID`) REFERENCES `blc_page_rule` (`PAGE_RULE_ID`),
  CONSTRAINT `FKtqx8xsmgx0hkrvery3ipqwwi0` FOREIGN KEY (`BLC_PAGE_PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_rule_map`
--

LOCK TABLES `blc_page_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_page_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_tmplt`
--

DROP TABLE IF EXISTS `blc_page_tmplt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_page_tmplt` (
  `PAGE_TMPLT_ID` bigint NOT NULL,
  `TMPLT_DESCR` varchar(255) DEFAULT NULL,
  `TMPLT_NAME` varchar(255) DEFAULT NULL,
  `TMPLT_PATH` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PAGE_TMPLT_ID`),
  KEY `FK19poavwqssando5ll1qid9kmf` (`LOCALE_CODE`),
  CONSTRAINT `FK19poavwqssando5ll1qid9kmf` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_tmplt`
--

LOCK TABLES `blc_page_tmplt` WRITE;
/*!40000 ALTER TABLE `blc_page_tmplt` DISABLE KEYS */;
INSERT INTO `blc_page_tmplt` VALUES (1,'This template provides the default layout with header and footer surrounding the content and title. This template also includes featured products below the page content.','Default Template','content/default',NULL),(2,'This template provides a plain layout with header and footer surrounding the content and title.','Plain Template','content/plain',NULL);
/*!40000 ALTER TABLE `blc_page_tmplt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_payment_log`
--

DROP TABLE IF EXISTS `blc_payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_payment_log` (
  `PAYMENT_LOG_ID` bigint NOT NULL,
  `AMOUNT_PAID` decimal(19,5) DEFAULT NULL,
  `EXCEPTION_MESSAGE` varchar(255) DEFAULT NULL,
  `LOG_TYPE` varchar(255) NOT NULL,
  `ORDER_PAYMENT_ID` bigint DEFAULT NULL,
  `ORDER_PAYMENT_REF_NUM` varchar(255) DEFAULT NULL,
  `TRANSACTION_SUCCESS` bit(1) DEFAULT NULL,
  `TRANSACTION_TIMESTAMP` datetime NOT NULL,
  `TRANSACTION_TYPE` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_LOG_ID`),
  KEY `PAYMENTLOG_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `PAYMENTLOG_LOGTYPE_INDEX` (`LOG_TYPE`),
  KEY `PAYMENTLOG_ORDERPAYMENT_INDEX` (`ORDER_PAYMENT_ID`),
  KEY `PAYMENTLOG_REFERENCE_INDEX` (`ORDER_PAYMENT_REF_NUM`),
  KEY `PAYMENTLOG_TRANTYPE_INDEX` (`TRANSACTION_TYPE`),
  KEY `PAYMENTLOG_USER_INDEX` (`USER_NAME`),
  KEY `FK1tulv4shboj3o32mjrbk2jh93` (`CURRENCY_CODE`),
  CONSTRAINT `FK1tulv4shboj3o32mjrbk2jh93` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK39ybfiu04bab30cqo45cap3ew` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_payment_log`
--

LOCK TABLES `blc_payment_log` WRITE;
/*!40000 ALTER TABLE `blc_payment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_payment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_personal_message`
--

DROP TABLE IF EXISTS `blc_personal_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_personal_message` (
  `PERSONAL_MESSAGE_ID` bigint NOT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `MESSAGE_FROM` varchar(255) DEFAULT NULL,
  `MESSAGE_TO` varchar(255) DEFAULT NULL,
  `OCCASION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSONAL_MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_personal_message`
--

LOCK TABLES `blc_personal_message` WRITE;
/*!40000 ALTER TABLE `blc_personal_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_personal_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_pgtmplt_fldgrp_xref`
--

DROP TABLE IF EXISTS `blc_pgtmplt_fldgrp_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_pgtmplt_fldgrp_xref` (
  `PG_TMPLT_FLD_GRP_ID` bigint NOT NULL,
  `GROUP_ORDER` decimal(10,6) DEFAULT NULL,
  `FLD_GROUP_ID` bigint DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PG_TMPLT_FLD_GRP_ID`),
  KEY `FKoy5hlxlq3pii0gj8yalskxv88` (`FLD_GROUP_ID`),
  KEY `FKr3xcn67le94r6oxnaebm5ebnk` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FKoy5hlxlq3pii0gj8yalskxv88` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`),
  CONSTRAINT `FKr3xcn67le94r6oxnaebm5ebnk` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `blc_page_tmplt` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_pgtmplt_fldgrp_xref`
--

LOCK TABLES `blc_pgtmplt_fldgrp_xref` WRITE;
/*!40000 ALTER TABLE `blc_pgtmplt_fldgrp_xref` DISABLE KEYS */;
INSERT INTO `blc_pgtmplt_fldgrp_xref` VALUES (-200,0.000000,1,2),(-100,0.000000,1,1);
/*!40000 ALTER TABLE `blc_pgtmplt_fldgrp_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_phone`
--

DROP TABLE IF EXISTS `blc_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_phone` (
  `PHONE_ID` bigint NOT NULL,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `EXTENSION` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` bit(1) DEFAULT NULL,
  `IS_DEFAULT` bit(1) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_phone`
--

LOCK TABLES `blc_phone` WRITE;
/*!40000 ALTER TABLE `blc_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product`
--

DROP TABLE IF EXISTS `blc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product` (
  `PRODUCT_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CAN_SELL_WITHOUT_OPTIONS` bit(1) DEFAULT NULL,
  `CANONICAL_URL` varchar(255) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `IS_FEATURED_PRODUCT` bit(1) NOT NULL,
  `MANUFACTURE` varchar(255) DEFAULT NULL,
  `META_DESC` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_URL` bit(1) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_CATEGORY_ID` bigint DEFAULT NULL,
  `DEFAULT_SKU_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `PRODUCT_CATEGORY_INDEX` (`DEFAULT_CATEGORY_ID`),
  KEY `PRODUCT_URL_INDEX` (`URL`,`URL_KEY`),
  KEY `PRODUCT_URL_KEY_INDEX` (`URL_KEY`),
  KEY `FK9dljxk44kotarjr9ngebtxntx` (`DEFAULT_SKU_ID`),
  CONSTRAINT `FK57aoxhpvwg389v7sx4m153mde` FOREIGN KEY (`DEFAULT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK9dljxk44kotarjr9ngebtxntx` FOREIGN KEY (`DEFAULT_SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product`
--

LOCK TABLES `blc_product` WRITE;
/*!40000 ALTER TABLE `blc_product` DISABLE KEYS */;
INSERT INTO `blc_product` VALUES (611,'Y',_binary '\0',NULL,'11111',_binary '\0','1111',NULL,NULL,NULL,_binary '\0','/merchandise/ly',NULL,NULL,645),(661,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyMellow-pre-mortem-contract/ly01',NULL,NULL,696),(711,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyMellow-pre-mortem-contract/ly02',NULL,NULL,745),(712,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyMellow-pre-mortem-contract/ly03',NULL,NULL,746),(761,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lycolumbarium/cb01',NULL,NULL,795),(762,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lycolumbarium/cb02',NULL,NULL,797),(811,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lycolumbarium/cb03',NULL,NULL,845),(861,'Y',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lycolumbarium/123',NULL,NULL,895),(862,'Y',_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,_binary '\0','/lycolumbarium/111',NULL,NULL,896),(911,'Y',_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,_binary '\0','/test/test01',NULL,NULL,947),(912,'Y',_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,_binary '\0','/belowTest/belowtest01',NULL,NULL,948),(961,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyAmitaburiPersonalAshesChamber/cb04',NULL,NULL,995),(1011,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyAmitaburiPersonalAshesChamber/cb05',NULL,NULL,1045),(1012,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyTruedDragonHallsAshesRoomUpgradeCertificate/cb06',NULL,NULL,1046),(1013,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyLong-tailing-husband-and-wife-room/cb07',NULL,NULL,1047),(1061,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyLong-tailing-husband-and-wife-room/cb08',NULL,NULL,1095),(1062,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyLongtailingupgradecertificate/cb09',NULL,NULL,1096),(1111,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyFenghua-performance-upgrade-certificate/uc01',NULL,NULL,1145),(1112,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyFlower-and-wealth-certificate/uc02',NULL,NULL,1146),(1113,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lyBone-pot-subscription-certificate/uc03',NULL,NULL,1147),(1161,'Y',_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,_binary '\0','/lycontract/test',NULL,NULL,1195),(1211,'N',_binary '\0',NULL,NULL,_binary '\0','龍巖股份有限公司',NULL,NULL,NULL,_binary '\0','/lycontract/pb01',NULL,NULL,1245);
/*!40000 ALTER TABLE `blc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_attribute`
--

DROP TABLE IF EXISTS `blc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_attribute` (
  `PRODUCT_ATTRIBUTE_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint NOT NULL,
  PRIMARY KEY (`PRODUCT_ATTRIBUTE_ID`),
  KEY `PRODUCTATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `PRODUCTATTRIBUTE_INDEX` (`PRODUCT_ID`),
  CONSTRAINT `FK5rahmy0l6hsgbvgb37ojlkx09` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_attribute`
--

LOCK TABLES `blc_product_attribute` WRITE;
/*!40000 ALTER TABLE `blc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_bundle`
--

DROP TABLE IF EXISTS `blc_product_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_bundle` (
  `AUTO_BUNDLE` bit(1) DEFAULT NULL,
  `BUNDLE_PROMOTABLE` bit(1) DEFAULT NULL,
  `ITEMS_PROMOTABLE` bit(1) DEFAULT NULL,
  `PRICING_MODEL` varchar(255) DEFAULT NULL,
  `BUNDLE_PRIORITY` int DEFAULT NULL,
  `PRODUCT_ID` bigint NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  CONSTRAINT `FK2hern8ie7vx4k6cawbryglb9g` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_bundle`
--

LOCK TABLES `blc_product_bundle` WRITE;
/*!40000 ALTER TABLE `blc_product_bundle` DISABLE KEYS */;
INSERT INTO `blc_product_bundle` VALUES (_binary '\0',_binary '\0',_binary '\0','ITEM_SUM',99,1161),(_binary '\0',_binary '\0',_binary '\0','BUNDLE',99,1211);
/*!40000 ALTER TABLE `blc_product_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_cross_sale`
--

DROP TABLE IF EXISTS `blc_product_cross_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_cross_sale` (
  `CROSS_SALE_PRODUCT_ID` bigint NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `PRODUCT_ID` bigint DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint NOT NULL,
  PRIMARY KEY (`CROSS_SALE_PRODUCT_ID`),
  KEY `CROSSSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `CROSSSALE_INDEX` (`PRODUCT_ID`),
  KEY `CROSSSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FKak6hk19vp8ioy27lrt7x9be7w` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKeq0i4yj6td2qxh0tnekeomrxk` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKovg4s9i9ejesgcygfpyjq7eqa` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_cross_sale`
--

LOCK TABLES `blc_product_cross_sale` WRITE;
/*!40000 ALTER TABLE `blc_product_cross_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_cross_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_featured`
--

DROP TABLE IF EXISTS `blc_product_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_featured` (
  `FEATURED_PRODUCT_ID` bigint NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `PRODUCT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`FEATURED_PRODUCT_ID`),
  KEY `PRODFEATURED_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `PRODFEATURED_PRODUCT_INDEX` (`PRODUCT_ID`),
  CONSTRAINT `FK83xhh0734p8wo8w64di8qwd9o` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKr4v6adrqqmd1qe09i6mb8fj8p` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_featured`
--

LOCK TABLES `blc_product_featured` WRITE;
/*!40000 ALTER TABLE `blc_product_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option`
--

DROP TABLE IF EXISTS `blc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_option` (
  `PRODUCT_OPTION_ID` bigint NOT NULL,
  `ATTRIBUTE_NAME` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int DEFAULT NULL,
  `ERROR_CODE` varchar(255) DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALIDATION_STRATEGY_TYPE` varchar(255) DEFAULT NULL,
  `VALIDATION_TYPE` varchar(255) DEFAULT NULL,
  `REQUIRED` bit(1) DEFAULT NULL,
  `OPTION_TYPE` varchar(255) DEFAULT NULL,
  `USE_IN_SKU_GENERATION` bit(1) DEFAULT NULL,
  `VALIDATION_STRING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_ID`),
  KEY `PRODUCT_OPTION_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option`
--

LOCK TABLES `blc_product_option` WRITE;
/*!40000 ALTER TABLE `blc_product_option` DISABLE KEYS */;
INSERT INTO `blc_product_option` VALUES (1,'COLOR',NULL,NULL,NULL,'Shirt Color','Shirt Color','NONE',NULL,_binary '','COLOR',NULL,NULL),(2,'SIZE',NULL,NULL,NULL,'Shirt Size','Shirt Size','NONE',NULL,_binary '','SIZE',NULL,NULL),(3,'NAME',NULL,'INVALID_NAME','Name must be less than 30 characters, with only letters and spaces','Personalized Name','Personalized Name','SUBMIT_ORDER','REGEX',_binary '\0','TEXT',_binary '\0','[a-zA-Z ]{0,30}');
/*!40000 ALTER TABLE `blc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option_value`
--

DROP TABLE IF EXISTS `blc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_option_value` (
  `PRODUCT_OPTION_VALUE_ID` bigint NOT NULL,
  `ATTRIBUTE_VALUE` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` bigint DEFAULT NULL,
  `PRICE_ADJUSTMENT` decimal(19,5) DEFAULT NULL,
  `PRODUCT_OPTION_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK9ixc1gbymkin77d6krmc3mub7` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FK9ixc1gbymkin77d6krmc3mub7` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `blc_product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option_value`
--

LOCK TABLES `blc_product_option_value` WRITE;
/*!40000 ALTER TABLE `blc_product_option_value` DISABLE KEYS */;
INSERT INTO `blc_product_option_value` VALUES (1,'Black',1,NULL,1),(2,'Red',2,NULL,1),(3,'Silver',3,NULL,1),(11,'S',1,NULL,2),(12,'M',2,NULL,2),(13,'L',3,NULL,2),(14,'XL',4,NULL,2);
/*!40000 ALTER TABLE `blc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option_xref`
--

DROP TABLE IF EXISTS `blc_product_option_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_option_xref` (
  `PRODUCT_OPTION_XREF_ID` bigint NOT NULL,
  `PRODUCT_ID` bigint NOT NULL,
  `PRODUCT_OPTION_ID` bigint NOT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_XREF_ID`),
  KEY `FKhqikdn2uw75plhcwn4cmjtt4m` (`PRODUCT_ID`),
  KEY `FKswm8iotfkm6a9iyj6ru3rmpv8` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FKhqikdn2uw75plhcwn4cmjtt4m` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKswm8iotfkm6a9iyj6ru3rmpv8` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `blc_product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option_xref`
--

LOCK TABLES `blc_product_option_xref` WRITE;
/*!40000 ALTER TABLE `blc_product_option_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_option_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_up_sale`
--

DROP TABLE IF EXISTS `blc_product_up_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_product_up_sale` (
  `UP_SALE_PRODUCT_ID` bigint NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `PRODUCT_ID` bigint DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`UP_SALE_PRODUCT_ID`),
  KEY `UPSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `UPSALE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `UPSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FKgefhcqet8553xhh9bdjb1jbjo` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKkcx4cl73kctdinewei1fk2vvl` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKm1r8s9j593gpcgluy5uyfa862` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_up_sale`
--

LOCK TABLES `blc_product_up_sale` WRITE;
/*!40000 ALTER TABLE `blc_product_up_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_up_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_promotion_message`
--

DROP TABLE IF EXISTS `blc_promotion_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_promotion_message` (
  `PROMOTION_MESSAGE_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `PROMOTION_MESSASGE` varchar(255) DEFAULT NULL,
  `MESSAGE_PLACEMENT` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PROMOTION_MESSAGE_PRIORITY` int DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  `MEDIA_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PROMOTION_MESSAGE_ID`),
  KEY `PROMOTION_MESSAGE_NAME_INDEX` (`NAME`),
  KEY `FK3dgs3j2b8mshpafd25qvtftgv` (`LOCALE_CODE`),
  KEY `FK59dkr5skbs8ve2v27truld8kc` (`MEDIA_ID`),
  CONSTRAINT `FK3dgs3j2b8mshpafd25qvtftgv` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`),
  CONSTRAINT `FK59dkr5skbs8ve2v27truld8kc` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_promotion_message`
--

LOCK TABLES `blc_promotion_message` WRITE;
/*!40000 ALTER TABLE `blc_promotion_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_promotion_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_prorated_order_item_adjust`
--

DROP TABLE IF EXISTS `blc_prorated_order_item_adjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_prorated_order_item_adjust` (
  `PRORATED_ORDER_ITEM_ADJUST_ID` bigint NOT NULL,
  `PRORATED_QUANTITY` int NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `PRORATED_ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  `ORDER_ITEM_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`PRORATED_ORDER_ITEM_ADJUST_ID`),
  KEY `POIADJUST_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FKkud7s4f923plknu6u4041v3oa` (`OFFER_ID`),
  CONSTRAINT `FKfmq7jd0v7r11g8hlvyuw50u6q` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKkud7s4f923plknu6u4041v3oa` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_prorated_order_item_adjust`
--

LOCK TABLES `blc_prorated_order_item_adjust` WRITE;
/*!40000 ALTER TABLE `blc_prorated_order_item_adjust` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_prorated_order_item_adjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_offer_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_qual_crit_offer_xref` (
  `OFFER_QUAL_CRIT_ID` bigint NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`OFFER_QUAL_CRIT_ID`),
  KEY `FKmmxl8rjhiuu6hc7qhyy85pjov` (`OFFER_ID`),
  KEY `FK6e8y3yk68wvw90gtsesduqbrb` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK6e8y3yk68wvw90gtsesduqbrb` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `blc_offer_item_criteria` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKmmxl8rjhiuu6hc7qhyy85pjov` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_offer_xref`
--

LOCK TABLES `blc_qual_crit_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_offer_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_page_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_page_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_qual_crit_page_xref` (
  `PAGE_ID` bigint NOT NULL,
  `PAGE_ITEM_CRITERIA_ID` bigint NOT NULL,
  PRIMARY KEY (`PAGE_ID`,`PAGE_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_dg6txhn3dw4k680q2sjyeumml` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKm0ov6kstmsab8gy93m53c05tg` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`),
  CONSTRAINT `FKpe7oenmm4t3g8ypvo5j2yjrd7` FOREIGN KEY (`PAGE_ITEM_CRITERIA_ID`) REFERENCES `blc_page_item_criteria` (`PAGE_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_page_xref`
--

LOCK TABLES `blc_qual_crit_page_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_page_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_page_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_sc_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_sc_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_qual_crit_sc_xref` (
  `SC_ID` bigint NOT NULL,
  `SC_ITEM_CRITERIA_ID` bigint NOT NULL,
  PRIMARY KEY (`SC_ID`,`SC_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_afqd4tvahqdouwkfb55xjuycm` (`SC_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK6v9jfn06vkk5kpio9jdu08t30` FOREIGN KEY (`SC_ITEM_CRITERIA_ID`) REFERENCES `blc_sc_item_criteria` (`SC_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKq0wnd7j8o8ss4umkpdjn38ota` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_sc_xref`
--

LOCK TABLES `blc_qual_crit_sc_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_sc_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_sc_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_rating_detail`
--

DROP TABLE IF EXISTS `blc_rating_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_rating_detail` (
  `RATING_DETAIL_ID` bigint NOT NULL,
  `RATING` double NOT NULL,
  `RATING_SUBMITTED_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `RATING_SUMMARY_ID` bigint NOT NULL,
  PRIMARY KEY (`RATING_DETAIL_ID`),
  KEY `RATING_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `FKorvii76lm0rnac92c67q1oles` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FKjjjou706ellmb65wmy7gpv07s` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKorvii76lm0rnac92c67q1oles` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `blc_rating_summary` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_rating_detail`
--

LOCK TABLES `blc_rating_detail` WRITE;
/*!40000 ALTER TABLE `blc_rating_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_rating_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_rating_summary`
--

DROP TABLE IF EXISTS `blc_rating_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_rating_summary` (
  `RATING_SUMMARY_ID` bigint NOT NULL,
  `AVERAGE_RATING` double NOT NULL,
  `ITEM_ID` varchar(255) NOT NULL,
  `RATING_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`RATING_SUMMARY_ID`),
  KEY `RATINGSUMM_ITEM_INDEX` (`ITEM_ID`),
  KEY `RATINGSUMM_TYPE_INDEX` (`RATING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_rating_summary`
--

LOCK TABLES `blc_rating_summary` WRITE;
/*!40000 ALTER TABLE `blc_rating_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_rating_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_review_detail`
--

DROP TABLE IF EXISTS `blc_review_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_review_detail` (
  `REVIEW_DETAIL_ID` bigint NOT NULL,
  `HELPFUL_COUNT` int NOT NULL,
  `NOT_HELPFUL_COUNT` int NOT NULL,
  `REVIEW_SUBMITTED_DATE` datetime NOT NULL,
  `REVIEW_STATUS` varchar(255) NOT NULL,
  `REVIEW_TEXT` varchar(255) NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `RATING_DETAIL_ID` bigint DEFAULT NULL,
  `RATING_SUMMARY_ID` bigint NOT NULL,
  PRIMARY KEY (`REVIEW_DETAIL_ID`),
  KEY `REVIEWDETAIL_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWDETAIL_RATING_INDEX` (`RATING_DETAIL_ID`),
  KEY `REVIEWDETAIL_SUMMARY_INDEX` (`RATING_SUMMARY_ID`),
  KEY `REVIEWDETAIL_STATUS_INDEX` (`REVIEW_STATUS`),
  CONSTRAINT `FKdc0r2t22u3ghe0ihma8dcd5y6` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKhp1g51hyv3y8gr2tedxm0pgyl` FOREIGN KEY (`RATING_DETAIL_ID`) REFERENCES `blc_rating_detail` (`RATING_DETAIL_ID`),
  CONSTRAINT `FKn9hvs3m8fhodmipm3fvmwhw74` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `blc_rating_summary` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_review_detail`
--

LOCK TABLES `blc_review_detail` WRITE;
/*!40000 ALTER TABLE `blc_review_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_review_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_review_feedback`
--

DROP TABLE IF EXISTS `blc_review_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_review_feedback` (
  `REVIEW_FEEDBACK_ID` bigint NOT NULL,
  `IS_HELPFUL` bit(1) NOT NULL,
  `CUSTOMER_ID` bigint NOT NULL,
  `REVIEW_DETAIL_ID` bigint NOT NULL,
  PRIMARY KEY (`REVIEW_FEEDBACK_ID`),
  KEY `REVIEWFEED_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWFEED_DETAIL_INDEX` (`REVIEW_DETAIL_ID`),
  CONSTRAINT `FKaledeh8wwn4ykopccqh3to8k5` FOREIGN KEY (`REVIEW_DETAIL_ID`) REFERENCES `blc_review_detail` (`REVIEW_DETAIL_ID`),
  CONSTRAINT `FKmppbg4bf4h8v1m9efgm10ty4b` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_review_feedback`
--

LOCK TABLES `blc_review_feedback` WRITE;
/*!40000 ALTER TABLE `blc_review_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_review_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_role`
--

DROP TABLE IF EXISTS `blc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_role` (
  `ROLE_ID` bigint NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `ROLE_NAME_INDEX` (`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_role`
--

LOCK TABLES `blc_role` WRITE;
/*!40000 ALTER TABLE `blc_role` DISABLE KEYS */;
INSERT INTO `blc_role` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `blc_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sandbox`
--

DROP TABLE IF EXISTS `blc_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sandbox` (
  `SANDBOX_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `AUTHOR` bigint DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GO_LIVE_DATE` datetime DEFAULT NULL,
  `SANDBOX_NAME` varchar(255) DEFAULT NULL,
  `SANDBOX_TYPE` varchar(255) DEFAULT NULL,
  `PARENT_SANDBOX_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SANDBOX_ID`),
  KEY `SANDBOX_NAME_INDEX` (`SANDBOX_NAME`),
  KEY `FK5e7j7mfpr1en8q48yxkbjmduw` (`PARENT_SANDBOX_ID`),
  CONSTRAINT `FK5e7j7mfpr1en8q48yxkbjmduw` FOREIGN KEY (`PARENT_SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sandbox`
--

LOCK TABLES `blc_sandbox` WRITE;
/*!40000 ALTER TABLE `blc_sandbox` DISABLE KEYS */;
INSERT INTO `blc_sandbox` VALUES (1,'N',-1,'2021-04-28 13:59:52','2021-04-28 13:59:52',-1,NULL,'#20C0F0',NULL,NULL,'Default','DEFAULT',NULL),(2,'N',-1,'2021-04-28 13:59:53','2021-04-28 13:59:53',-1,-1,NULL,NULL,NULL,'Default','USER',1);
/*!40000 ALTER TABLE `blc_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sandbox_mgmt`
--

DROP TABLE IF EXISTS `blc_sandbox_mgmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sandbox_mgmt` (
  `SANDBOX_MGMT_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `SANDBOX_ID` bigint NOT NULL,
  PRIMARY KEY (`SANDBOX_MGMT_ID`),
  UNIQUE KEY `UK_owins1o4pyal0j5pdlqfkd4b7` (`SANDBOX_ID`),
  CONSTRAINT `FKri581qivns8jshddbsl6m83hr` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sandbox_mgmt`
--

LOCK TABLES `blc_sandbox_mgmt` WRITE;
/*!40000 ALTER TABLE `blc_sandbox_mgmt` DISABLE KEYS */;
INSERT INTO `blc_sandbox_mgmt` VALUES (1,-1,'2021-04-28 13:59:53','2021-04-28 13:59:53',-1,1),(2,-1,'2021-04-28 13:59:53','2021-04-28 13:59:53',-1,2);
/*!40000 ALTER TABLE `blc_sandbox_mgmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc`
--

DROP TABLE IF EXISTS `blc_sc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc` (
  `SC_ID` bigint NOT NULL,
  `CONTENT_NAME` varchar(255) NOT NULL,
  `OFFLINE_FLAG` bit(1) DEFAULT NULL,
  `PRIORITY` int NOT NULL,
  `LOCALE_CODE` varchar(255) NOT NULL,
  `SC_TYPE_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SC_ID`),
  KEY `CONTENT_NAME_INDEX` (`CONTENT_NAME`),
  KEY `SC_OFFLN_FLG_INDX` (`OFFLINE_FLAG`),
  KEY `CONTENT_PRIORITY_INDEX` (`PRIORITY`),
  KEY `FK13qnfvvq355l9cckfxkqqh59` (`LOCALE_CODE`),
  KEY `FKp9be5g25yydwn151wnwvbj9hu` (`SC_TYPE_ID`),
  CONSTRAINT `FK13qnfvvq355l9cckfxkqqh59` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`),
  CONSTRAINT `FKp9be5g25yydwn151wnwvbj9hu` FOREIGN KEY (`SC_TYPE_ID`) REFERENCES `blc_sc_type` (`SC_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc`
--

LOCK TABLES `blc_sc` WRITE;
/*!40000 ALTER TABLE `blc_sc` DISABLE KEYS */;
INSERT INTO `blc_sc` VALUES (-140,'RHS - The Essentials Collection',_binary '\0',5,'en',4),(-130,'Home Page Featured Products Title',_binary '\0',5,'en',3),(-110,'Home Page Snippet - Aficionado',_binary '\0',5,'en',2),(-105,'Member Special - $10 off next order over $50',_binary '\0',3,'en',1),(-104,'Shirt Special - 20% off all shirts',_binary '\0',1,'en',1),(-103,'Buy One Get One - Twice the Burn',_binary '\0',2,'en',1),(-102,'Member Special - $10 off next order over $50',_binary '\0',3,'en',1),(-101,'Shirt Special - 20% off all shirts',_binary '\0',1,'en',1),(-100,'Buy One Get One - Twice the Burn',_binary '\0',2,'en',1),(151,'Promocion - 20% de descuento en todas las camisas',_binary '\0',1,'es',1),(152,'Promocion - 20% de descuento en todas las camisas',_binary '\0',1,'fr',1),(153,'Home Page Snippet (es) - Aficionado',_binary '\0',5,'es',2),(154,'Home Page Snippet (es) - Aficionado',_binary '\0',5,'fr',2),(155,'Home Page Featured Products Title',_binary '\0',5,'es',3),(156,'Home Page Featured Products Title',_binary '\0',5,'fr',3);
/*!40000 ALTER TABLE `blc_sc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld`
--

DROP TABLE IF EXISTS `blc_sc_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_fld` (
  `SC_FLD_ID` bigint NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld`
--

LOCK TABLES `blc_sc_fld` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld` DISABLE KEYS */;
INSERT INTO `blc_sc_fld` VALUES (-13,'targetUrl',NULL,'/hot-sauces'),(-12,'imageUrl',NULL,'/img/rhs-ad.jpg'),(-11,'messageText',NULL,'The Heat Clinic\'s Top Selling Sauces'),(-9,'htmlContent',NULL,'<h2>HOT SAUCE AFICIONADO?</h2> Create an account to join our Heat Clinic Frequent Care Program. The place to get all the deals on burn treatment.'),(-6,'targetUrl',NULL,'/register'),(-5,'imageUrl',NULL,'/cmsstatic/img/banners/member-special.jpg'),(-4,'targetUrl',NULL,'/merchandise'),(-3,'imageUrl',NULL,'/cmsstatic/img/banners/shirt-special.jpg'),(-2,'targetUrl',NULL,'/hot-sauces'),(-1,'imageUrl',NULL,'/cmsstatic/img/banners/buy-one-get-one-home-banner.jpg'),(51,'imageUrl',NULL,'/cmsstatic/img/banners/promocion-camisas.jpg'),(52,'targetUrl',NULL,'/merchandise'),(53,'imageUrl',NULL,'/cmsstatic/img/banners/shirts-speciale.jpg'),(54,'targetUrl',NULL,'/merchandise'),(55,'htmlContent',NULL,'<h2>AFICIONADO DE SALSAS PICANTES?</h2> Haga click para unirse a nuerto programa de Cuidades Intensivos de Heat Clinic. El lugar para conseguir las mejores ofertas.'),(56,'htmlContent',NULL,'<h2>AFICIONADO SAUCE PIQUANTE?</h2> Cliquez ici pour vous joindre &agrave; notre clinique de chaleur du Programme de soins fr&eacute;quents. L&#39;endroit pour obtenir toutes les offres sur le traitement des br&ucirc;lures.'),(57,'messageText',NULL,'Las Salsas M&aacute;s vendidas de Heat Clinic'),(58,'messageText',NULL,'La Clinique Heat Sauces Meilleures Ventes');
/*!40000 ALTER TABLE `blc_sc_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld_map`
--

DROP TABLE IF EXISTS `blc_sc_fld_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_fld_map` (
  `BLC_SC_SC_FIELD_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `SC_ID` bigint NOT NULL,
  `SC_FLD_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`BLC_SC_SC_FIELD_ID`),
  KEY `FKh54fvkukkun10yu69gr7neyj9` (`SC_ID`),
  KEY `FKrwpb5a8l5uoeu4u046uihdx1g` (`SC_FLD_ID`),
  CONSTRAINT `FKh54fvkukkun10yu69gr7neyj9` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FKrwpb5a8l5uoeu4u046uihdx1g` FOREIGN KEY (`SC_FLD_ID`) REFERENCES `blc_sc_fld` (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld_map`
--

LOCK TABLES `blc_sc_fld_map` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld_map` DISABLE KEYS */;
INSERT INTO `blc_sc_fld_map` VALUES (-173,'targetUrl',-105,-6),(-172,'imageUrl',-105,-5),(-171,'targetUrl',-104,-4),(-170,'imageUrl',-104,-3),(-169,'targetUrl',-103,-2),(-168,'imageUrl',-103,-1),(-167,'targetUrl',-140,-13),(-166,'imageUrl',-140,-12),(-165,'messageText',-130,-11),(-164,'htmlContent',-110,-9),(-163,'targetUrl',-102,-6),(-162,'imageUrl',-102,-5),(-161,'targetUrl',-101,-4),(-160,'imageUrl',-101,-3),(-159,'targetUrl',-100,-2),(-158,'imageUrl',-100,-1),(-157,'messageText',156,58),(-156,'messageText',155,57),(-155,'htmlContent',154,56),(-154,'htmlContent',153,55),(-153,'targetUrl',152,54),(-152,'imageUrl',152,53),(-151,'targetUrl',151,52),(-150,'imageUrl',151,51);
/*!40000 ALTER TABLE `blc_sc_fld_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld_tmplt`
--

DROP TABLE IF EXISTS `blc_sc_fld_tmplt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_fld_tmplt` (
  `SC_FLD_TMPLT_ID` bigint NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld_tmplt`
--

LOCK TABLES `blc_sc_fld_tmplt` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld_tmplt` DISABLE KEYS */;
INSERT INTO `blc_sc_fld_tmplt` VALUES (-3,'Message Template'),(-2,'HTML Template'),(-1,'Ad Template');
/*!40000 ALTER TABLE `blc_sc_fld_tmplt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fldgrp_xref`
--

DROP TABLE IF EXISTS `blc_sc_fldgrp_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_fldgrp_xref` (
  `BLC_SC_FLDGRP_XREF_ID` bigint NOT NULL,
  `GROUP_ORDER` int DEFAULT NULL,
  `FLD_GROUP_ID` bigint DEFAULT NULL,
  `SC_FLD_TMPLT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`BLC_SC_FLDGRP_XREF_ID`),
  KEY `FKotfd5rhlje73tldskasabxd7k` (`FLD_GROUP_ID`),
  KEY `FKtqvhk2j6dxo8kruvflvpstgf` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FKotfd5rhlje73tldskasabxd7k` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`),
  CONSTRAINT `FKtqvhk2j6dxo8kruvflvpstgf` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `blc_sc_fld_tmplt` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fldgrp_xref`
--

LOCK TABLES `blc_sc_fldgrp_xref` WRITE;
/*!40000 ALTER TABLE `blc_sc_fldgrp_xref` DISABLE KEYS */;
INSERT INTO `blc_sc_fldgrp_xref` VALUES (-3,0,6,-3),(-2,0,5,-2),(-1,0,4,-1);
/*!40000 ALTER TABLE `blc_sc_fldgrp_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_item_criteria`
--

DROP TABLE IF EXISTS `blc_sc_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_item_criteria` (
  `SC_ITEM_CRITERIA_ID` bigint NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int NOT NULL,
  `SC_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SC_ITEM_CRITERIA_ID`),
  KEY `FKi62rdb9fuxn6lfdo7d4q9haow` (`SC_ID`),
  CONSTRAINT `FKi62rdb9fuxn6lfdo7d4q9haow` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_item_criteria`
--

LOCK TABLES `blc_sc_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_sc_item_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_rule`
--

DROP TABLE IF EXISTS `blc_sc_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_rule` (
  `SC_RULE_ID` bigint NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_rule`
--

LOCK TABLES `blc_sc_rule` WRITE;
/*!40000 ALTER TABLE `blc_sc_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_rule_map`
--

DROP TABLE IF EXISTS `blc_sc_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_rule_map` (
  `BLC_SC_SC_ID` bigint NOT NULL,
  `SC_RULE_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_SC_SC_ID`,`MAP_KEY`),
  KEY `FK31d3qpemphv6qdbha0cl1x361` (`SC_RULE_ID`),
  CONSTRAINT `FK31d3qpemphv6qdbha0cl1x361` FOREIGN KEY (`SC_RULE_ID`) REFERENCES `blc_sc_rule` (`SC_RULE_ID`),
  CONSTRAINT `FKo4q8t9hx8iprk9bc9tllwhdhk` FOREIGN KEY (`BLC_SC_SC_ID`) REFERENCES `blc_sc` (`SC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_rule_map`
--

LOCK TABLES `blc_sc_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_sc_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_type`
--

DROP TABLE IF EXISTS `blc_sc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sc_type` (
  `SC_TYPE_ID` bigint NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SC_FLD_TMPLT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SC_TYPE_ID`),
  KEY `SC_TYPE_NAME_INDEX` (`NAME`),
  KEY `FKh7idqa2kh7vusepjor3bc80b3` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FKh7idqa2kh7vusepjor3bc80b3` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `blc_sc_fld_tmplt` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_type`
--

LOCK TABLES `blc_sc_type` WRITE;
/*!40000 ALTER TABLE `blc_sc_type` DISABLE KEYS */;
INSERT INTO `blc_sc_type` VALUES (1,NULL,'Homepage Banner Ad',-1),(2,NULL,'Homepage Middle Promo Snippet',-2),(3,NULL,'Homepage Featured Products Title',-3),(4,NULL,'Right Hand Side Banner Ad',-1);
/*!40000 ALTER TABLE `blc_sc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet`
--

DROP TABLE IF EXISTS `blc_search_facet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_search_facet` (
  `SEARCH_FACET_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `MULTISELECT` bit(1) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRES_ALL_DEPENDENT` bit(1) DEFAULT NULL,
  `SEARCH_DISPLAY_PRIORITY` int DEFAULT NULL,
  `SHOW_ON_SEARCH` bit(1) DEFAULT NULL,
  `USE_FACET_RANGES` bit(1) DEFAULT NULL,
  `INDEX_FIELD_TYPE_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_ID`),
  KEY `FKrrhp7pwx3bjh2rhadrtv2ro81` (`INDEX_FIELD_TYPE_ID`),
  CONSTRAINT `FKrrhp7pwx3bjh2rhadrtv2ro81` FOREIGN KEY (`INDEX_FIELD_TYPE_ID`) REFERENCES `blc_index_field_type` (`INDEX_FIELD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet`
--

LOCK TABLES `blc_search_facet` WRITE;
/*!40000 ALTER TABLE `blc_search_facet` DISABLE KEYS */;
INSERT INTO `blc_search_facet` VALUES (1,NULL,NULL,NULL,NULL,NULL,_binary '','Manufacturer','Manufacturer Facet',NULL,0,_binary '',_binary '\0',2),(2,NULL,NULL,NULL,NULL,NULL,_binary '','Heat Range','Heat Range Facet',NULL,0,_binary '\0',_binary '\0',3),(3,NULL,NULL,NULL,NULL,NULL,_binary '','Price','Price Facet',NULL,1,_binary '',_binary '',4),(4,NULL,NULL,NULL,NULL,NULL,_binary '','Color','Color Facet',NULL,0,_binary '',_binary '\0',9),(5,NULL,NULL,NULL,NULL,NULL,_binary '','ProductType','ProductType',NULL,1,_binary '',NULL,7);
/*!40000 ALTER TABLE `blc_search_facet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet_range`
--

DROP TABLE IF EXISTS `blc_search_facet_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_search_facet_range` (
  `SEARCH_FACET_RANGE_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `MAX_VALUE` decimal(19,5) DEFAULT NULL,
  `MIN_VALUE` decimal(19,5) NOT NULL,
  `SEARCH_FACET_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_RANGE_ID`),
  KEY `SEARCH_FACET_INDEX` (`SEARCH_FACET_ID`),
  CONSTRAINT `FKm1k6kfkc59c8jdx51qym3tcai` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet_range`
--

LOCK TABLES `blc_search_facet_range` WRITE;
/*!40000 ALTER TABLE `blc_search_facet_range` DISABLE KEYS */;
INSERT INTO `blc_search_facet_range` VALUES (1,NULL,NULL,NULL,NULL,NULL,5.00000,0.00000,3),(2,NULL,NULL,NULL,NULL,NULL,10.00000,5.00000,3),(3,NULL,NULL,NULL,NULL,NULL,15.00000,10.00000,3),(4,NULL,NULL,NULL,NULL,NULL,NULL,15.00000,3);
/*!40000 ALTER TABLE `blc_search_facet_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet_xref`
--

DROP TABLE IF EXISTS `blc_search_facet_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_search_facet_xref` (
  `ID` bigint NOT NULL,
  `REQUIRED_FACET_ID` bigint NOT NULL,
  `SEARCH_FACET_ID` bigint NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK4xpicfgot9h1utp316cbi8268` (`REQUIRED_FACET_ID`),
  KEY `FKtdvsplwk8dl6mnb0p7fdyte13` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK4xpicfgot9h1utp316cbi8268` FOREIGN KEY (`REQUIRED_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`),
  CONSTRAINT `FKtdvsplwk8dl6mnb0p7fdyte13` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet_xref`
--

LOCK TABLES `blc_search_facet_xref` WRITE;
/*!40000 ALTER TABLE `blc_search_facet_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_search_facet_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_intercept`
--

DROP TABLE IF EXISTS `blc_search_intercept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_search_intercept` (
  `SEARCH_REDIRECT_ID` bigint NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `SEARCH_TERM` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`SEARCH_REDIRECT_ID`),
  KEY `SEARCH_ACTIVE_INDEX` (`ACTIVE_END_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_intercept`
--

LOCK TABLES `blc_search_intercept` WRITE;
/*!40000 ALTER TABLE `blc_search_intercept` DISABLE KEYS */;
INSERT INTO `blc_search_intercept` VALUES (-2,NULL,'1992-10-15 14:28:36',NULL,NULL,NULL,NULL,-10,'sale','/clearance'),(-1,NULL,'1992-10-15 14:28:36',NULL,NULL,NULL,NULL,1,'insanity','/hot-sauces/insanity_sauce');
/*!40000 ALTER TABLE `blc_search_intercept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_synonym`
--

DROP TABLE IF EXISTS `blc_search_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_search_synonym` (
  `SEARCH_SYNONYM_ID` bigint NOT NULL,
  `SYNONYMS` varchar(255) DEFAULT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_SYNONYM_ID`),
  KEY `SEARCHSYNONYM_TERM_INDEX` (`TERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_synonym`
--

LOCK TABLES `blc_search_synonym` WRITE;
/*!40000 ALTER TABLE `blc_search_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_search_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_shipping_rate`
--

DROP TABLE IF EXISTS `blc_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_shipping_rate` (
  `ID` bigint NOT NULL,
  `BAND_RESULT_PCT` int NOT NULL,
  `BAND_RESULT_QTY` decimal(19,2) NOT NULL,
  `BAND_UNIT_QTY` decimal(19,2) NOT NULL,
  `FEE_BAND` int NOT NULL,
  `FEE_SUB_TYPE` varchar(255) DEFAULT NULL,
  `FEE_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SHIPPINGRATE_FEESUB_INDEX` (`FEE_SUB_TYPE`),
  KEY `SHIPPINGRATE_FEE_INDEX` (`FEE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_shipping_rate`
--

LOCK TABLES `blc_shipping_rate` WRITE;
/*!40000 ALTER TABLE `blc_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site`
--

DROP TABLE IF EXISTS `blc_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_site` (
  `SITE_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DEACTIVATED` bit(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_TYPE` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SITE_ID`),
  KEY `BLC_SITE_ID_VAL_INDEX` (`SITE_IDENTIFIER_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site`
--

LOCK TABLES `blc_site` WRITE;
/*!40000 ALTER TABLE `blc_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_catalog`
--

DROP TABLE IF EXISTS `blc_site_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_site_catalog` (
  `SITE_CATALOG_XREF_ID` bigint NOT NULL,
  `CATALOG_ID` bigint NOT NULL,
  `SITE_ID` bigint NOT NULL,
  PRIMARY KEY (`SITE_CATALOG_XREF_ID`),
  KEY `FKho5bxxfvt21ijan47er38vnyu` (`CATALOG_ID`),
  KEY `FKmktxeb1okchyhs2mxat1nk6s5` (`SITE_ID`),
  CONSTRAINT `FKho5bxxfvt21ijan47er38vnyu` FOREIGN KEY (`CATALOG_ID`) REFERENCES `blc_catalog` (`CATALOG_ID`),
  CONSTRAINT `FKmktxeb1okchyhs2mxat1nk6s5` FOREIGN KEY (`SITE_ID`) REFERENCES `blc_site` (`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_catalog`
--

LOCK TABLES `blc_site_catalog` WRITE;
/*!40000 ALTER TABLE `blc_site_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_cfg`
--

DROP TABLE IF EXISTS `blc_site_map_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_site_map_cfg` (
  `INDEXED_SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `INDEXED_SITE_MAP_FILE_PATTERN` varchar(255) DEFAULT NULL,
  `MAX_URL_ENTRIES_PER_FILE` int DEFAULT NULL,
  `SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`),
  CONSTRAINT `FKdskgdyr42vk7c8g92bxir3wej` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_module_configuration` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_cfg`
--

LOCK TABLES `blc_site_map_cfg` WRITE;
/*!40000 ALTER TABLE `blc_site_map_cfg` DISABLE KEYS */;
INSERT INTO `blc_site_map_cfg` VALUES (NULL,NULL,NULL,NULL,-1);
/*!40000 ALTER TABLE `blc_site_map_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_site_map_gen_cfg` (
  `GEN_CONFIG_ID` bigint NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `DISABLED` bit(1) NOT NULL,
  `GENERATOR_TYPE` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FKmw4fb38sdenx8kjrxg5v8mjei` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FKmw4fb38sdenx8kjrxg5v8mjei` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_site_map_cfg` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_gen_cfg`
--

LOCK TABLES `blc_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_site_map_gen_cfg` VALUES (-8,'HOURLY',_binary '','SKU','0.5',-1),(-7,'HOURLY',_binary '\0','CATEGORY','0.5',-1),(-6,'HOURLY',_binary '\0','CATEGORY','0.5',-1),(-5,'HOURLY',_binary '\0','CATEGORY','0.5',-1),(-4,'HOURLY',_binary '\0','CATEGORY','0.5',-1),(-3,'HOURLY',_binary '\0','PAGE','0.5',-1),(-2,'HOURLY',_binary '\0','PRODUCT','0.5',-1),(-1,'HOURLY',_binary '\0','CUSTOM','0.5',-1);
/*!40000 ALTER TABLE `blc_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_url_entry`
--

DROP TABLE IF EXISTS `blc_site_map_url_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_site_map_url_entry` (
  `URL_ENTRY_ID` bigint NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `LAST_MODIFIED` datetime NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) NOT NULL,
  `GEN_CONFIG_ID` bigint NOT NULL,
  PRIMARY KEY (`URL_ENTRY_ID`),
  KEY `FKrvkeinfysjshg9ulmxno9rhla` (`GEN_CONFIG_ID`),
  CONSTRAINT `FKrvkeinfysjshg9ulmxno9rhla` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_cust_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_url_entry`
--

LOCK TABLES `blc_site_map_url_entry` WRITE;
/*!40000 ALTER TABLE `blc_site_map_url_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site_map_url_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku`
--

DROP TABLE IF EXISTS `blc_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku` (
  `SKU_ID` bigint NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `AVAILABLE_FLAG` char(1) DEFAULT NULL,
  `COST` decimal(19,5) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTAINER_SHAPE` varchar(255) DEFAULT NULL,
  `DEPTH` decimal(19,2) DEFAULT NULL,
  `DIMENSION_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `GIRTH` decimal(19,2) DEFAULT NULL,
  `HEIGHT` decimal(19,2) DEFAULT NULL,
  `CONTAINER_SIZE` varchar(255) DEFAULT NULL,
  `WIDTH` decimal(19,2) DEFAULT NULL,
  `DISCOUNTABLE_FLAG` char(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `IS_MACHINE_SORTABLE` bit(1) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `QUANTITY_AVAILABLE` int DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE_FLAG` char(1) DEFAULT NULL,
  `UPC` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `WEIGHT` decimal(19,2) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `DEFAULT_PRODUCT_ID` bigint DEFAULT NULL,
  `ADDL_PRODUCT_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SKU_ID`),
  KEY `SKU_ACTIVE_END_INDEX` (`ACTIVE_END_DATE`),
  KEY `SKU_ACTIVE_START_INDEX` (`ACTIVE_START_DATE`),
  KEY `SKU_AVAILABLE_INDEX` (`AVAILABLE_FLAG`),
  KEY `SKU_DISCOUNTABLE_INDEX` (`DISCOUNTABLE_FLAG`),
  KEY `SKU_EXTERNAL_ID_INDEX` (`EXTERNAL_ID`),
  KEY `SKU_NAME_INDEX` (`NAME`),
  KEY `SKU_TAXABLE_INDEX` (`TAXABLE_FLAG`),
  KEY `SKU_UPC_INDEX` (`UPC`),
  KEY `SKU_URL_KEY_INDEX` (`URL_KEY`),
  KEY `FKdowfc15iv11csxhs4itbfbowh` (`CURRENCY_CODE`),
  KEY `FK9akww2wqlf0xt7rvupxtv193c` (`DEFAULT_PRODUCT_ID`),
  KEY `FKseqmjfh1kdphq3eeplsuf6nj4` (`ADDL_PRODUCT_ID`),
  CONSTRAINT `FK9akww2wqlf0xt7rvupxtv193c` FOREIGN KEY (`DEFAULT_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKdowfc15iv11csxhs4itbfbowh` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FKseqmjfh1kdphq3eeplsuf6nj4` FOREIGN KEY (`ADDL_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku`
--

LOCK TABLES `blc_sku` WRITE;
/*!40000 ALTER TABLE `blc_sku` DISABLE KEYS */;
INSERT INTO `blc_sku` VALUES (645,NULL,'2021-04-28 15:05:55',NULL,11.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','<p>龍巖產品001</p>','LY產品',NULL,1.00000,111.00000,NULL,'Y',NULL,NULL,NULL,'KILOGRAMS',NULL,611,NULL),(696,'2022-05-30 16:46:00','2021-04-29 16:07:12',NULL,100000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','<p>自民國86年起，經歷20年的禮儀服務，每一年，龍巖都不斷地精進、創新，從禮儀精品的研發到服務流程的改良，我們站在客戶立場嚴格把關每個環節的高品質。作為華人殯葬文化的領導先驅，龍巖明白頂級客層的期待與要求。從家人於治喪期間獨立、舒適的空間；到莊嚴典雅的奠禮花山、告別式場，我們深深明白客戶的託付。</p><p><strong>「風華生前契約」</strong>就是龍巖歷經萃煉，全新打造專屬尊榮客戶的頂級精品！</p>','ly01基本型',NULL,160000.00000,140000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,661,NULL),(745,NULL,'2021-04-29 16:53:03',NULL,125000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','<ol><li>服務內容、價格透明化，輕鬆付費，讓未來更加有備無患。</li><li>及早購買，享受會員優惠價格權益，且可自由轉讓，增加理財彈性。</li><li>依個人理財方式選擇最有利的繳款方式，讓資金運用更合理、更具效率。</li></ol>','ly02星動圓融',NULL,1800000.00000,150000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,711,NULL),(746,NULL,'2021-04-29 16:56:08',NULL,160000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','重視服務滿意度以回饋消費者 龍巖為亞洲第一家通過ISO 9001國際品保驗證標準及股票公開發行之殯葬企業。也是台灣第一家引進日本殯葬經營模式，以「資訊公開化」、「價格透明化」、「服務人性化」及「經營企業化」四大經營理念用心經營，一貫化禮儀精緻服務作為號召的殯葬企業。','ly03福氣圓融',NULL,200000.00000,188000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,712,NULL),(795,NULL,'2021-05-01 04:40:21',NULL,50000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','<h2>搭載回憶的聚光寶盒</h2><p>梯廳區地坪以大理石材拼花的星芒圖騰，以正圓為環，天地呼應。正中以稀有的藍色石材為整體空間畫龍點睛。圓形天穹透出光環，周圍以半圓螺旋木紋飾板與壁面層疊連接，以多層次的造型細節，象徵永恆不滅、迴環運轉的星辰。</p><p>....</p>','cb01星辰館典雅型個人骨灰室',NULL,150000.00000,100000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,761,NULL),(797,NULL,'2021-05-01 04:44:04',NULL,45000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','<p>倘若至親離世後，住進一個坐擁秀麗風水、雕樑畫棟的天上宮殿，富麗氣派的金黃色屋瓦與雲霧虛幻縹緲的襯托下顯得純淨幽美。天然景致搭配人文的感性創作，那必定成為一段令人詠歎的傳奇。</p><p>向日館中的「向日」代表著兩個意義，其一是朝著陽光，象徵具有太陽般明朗、快樂的心。另一意義則是往日、昔日的意思，代表著對從前的思念。</p><p>火代表溫熱、向上等性質，傳統文化中火的燃燒代表將祭品上達天庭，民間信仰常常為祖先燒紙錢，繼續侍奉在陰間的祖先。因此也具有「傳承」之意，有薪火相傳、生生不息的意思。</p>','cb02向日館個人骨灰室',NULL,120000.00000,95000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,762,NULL),(845,NULL,'2021-05-01 05:43:26',NULL,50000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','塔位面板中央鑽雕玻璃噴砂之金色典雅花草圖騰，為藥師佛種子字及藥王草的圖案；包圍藥王草的六瓣形金屬鑲鑽飾條，代表藥師佛持物之藥壺。在玻璃鏡面及飾條上鑲嵌寶石，環繞中央種子字及藥王草圖紋，則象徵由藥師佛身上所發出的光明如清淨琉璃一般，亦代表由淨琉璃所舖成的莊嚴琉璃淨土世界，令修持者身心受到藥師佛清淨慈悲的護佑。','cb03御品豪華型雙人骨灰室',NULL,88000.00000,80000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,811,NULL),(895,NULL,'2021-05-03 01:12:01',NULL,1.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,'123',NULL,13.00000,11.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,861,NULL),(896,NULL,'2021-05-03 03:10:38',NULL,123.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,'111',NULL,123.00000,123.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,862,NULL),(947,NULL,'2021-05-04 02:00:19',NULL,1.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','test01','test01',NULL,1.00000,1.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,911,NULL),(948,NULL,'2021-05-04 02:31:55',NULL,2.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','belowTest01','belowTest01',NULL,2.00000,2.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,912,NULL),(995,NULL,'2021-05-04 08:18:42',NULL,25000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,_binary '\0','個人骨灰室第一層','cb04個人骨灰室第一層',NULL,55000.00000,50000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,961,NULL),(1045,NULL,'2021-05-04 08:36:39',NULL,25000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,_binary '\0','個人骨灰室第二層','cb05個人骨灰室第二層',NULL,54000.00000,50000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1011,NULL),(1046,NULL,'2021-05-04 08:46:44',NULL,20000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','升等新西式第5層','cb06升等新西式第5層',NULL,35000.00000,30000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1012,NULL),(1047,NULL,'2021-05-04 09:16:27',NULL,80000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',_binary '\0','<div>夫妻室第一層</div><div><br></div>','cb07夫妻室第一層',NULL,160000.00000,150000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1013,NULL),(1095,NULL,'2021-05-04 09:26:15',NULL,120000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,_binary '\0','夫妻室第五層','cb08夫妻室第五層',NULL,250000.00000,230000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1061,NULL),(1096,NULL,'2021-05-04 09:37:28',NULL,30000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','夫妻1,8層升4,5層','cb09夫妻1,8層升4,5層',NULL,90000.00000,80000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1062,NULL),(1145,NULL,'2021-05-05 05:10:19',NULL,100000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','風華履約升等憑證','uc01風華履約升等憑證',NULL,180000.00000,150000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1111,NULL),(1146,NULL,'2021-05-05 05:19:18',NULL,150000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','豪華式場升等憑證','uc02豪華式場升等憑證',NULL,250000.00000,230000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1112,NULL),(1147,NULL,'2021-05-05 05:26:26',NULL,200000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','骨罐三選一認購憑證','uc03骨罐三選一認購憑證',NULL,250000.00000,230000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1113,NULL),(1195,NULL,'2021-05-06 03:13:36',NULL,NULL,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0','<p>test</p>','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1161,NULL),(1245,NULL,'2021-05-07 02:20:49',NULL,130000.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'ALWAYS_AVAILABLE',_binary '\0','pb01生前契約(組合)','pb01生前契約(組合)',NULL,300000.00000,260000.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,1211,NULL);
/*!40000 ALTER TABLE `blc_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_attribute`
--

DROP TABLE IF EXISTS `blc_sku_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_attribute` (
  `SKU_ATTR_ID` bigint NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `SKU_ID` bigint NOT NULL,
  PRIMARY KEY (`SKU_ATTR_ID`),
  KEY `SKUATTR_NAME_INDEX` (`NAME`),
  KEY `SKUATTR_SKU_INDEX` (`SKU_ID`),
  CONSTRAINT `FK6w8gul2489hdbmxha9ftu6qbq` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_attribute`
--

LOCK TABLES `blc_sku_attribute` WRITE;
/*!40000 ALTER TABLE `blc_sku_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_availability`
--

DROP TABLE IF EXISTS `blc_sku_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_availability` (
  `SKU_AVAILABILITY_ID` bigint NOT NULL,
  `AVAILABILITY_DATE` datetime DEFAULT NULL,
  `AVAILABILITY_STATUS` varchar(255) DEFAULT NULL,
  `LOCATION_ID` bigint DEFAULT NULL,
  `QTY_ON_HAND` int DEFAULT NULL,
  `RESERVE_QTY` int DEFAULT NULL,
  `SKU_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`SKU_AVAILABILITY_ID`),
  KEY `SKUAVAIL_STATUS_INDEX` (`AVAILABILITY_STATUS`),
  KEY `SKUAVAIL_LOCATION_INDEX` (`LOCATION_ID`),
  KEY `SKUAVAIL_SKU_INDEX` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_availability`
--

LOCK TABLES `blc_sku_availability` WRITE;
/*!40000 ALTER TABLE `blc_sku_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_bundle_item`
--

DROP TABLE IF EXISTS `blc_sku_bundle_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_bundle_item` (
  `SKU_BUNDLE_ITEM_ID` bigint NOT NULL,
  `ITEM_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int NOT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `PRODUCT_BUNDLE_ID` bigint NOT NULL,
  `SKU_ID` bigint NOT NULL,
  PRIMARY KEY (`SKU_BUNDLE_ITEM_ID`),
  KEY `FK78yrrdqjalrqrei5kfnybkrs8` (`PRODUCT_BUNDLE_ID`),
  KEY `FKbhe93esmsur5uyhl0v6dj392t` (`SKU_ID`),
  CONSTRAINT `FK78yrrdqjalrqrei5kfnybkrs8` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `blc_product_bundle` (`PRODUCT_ID`),
  CONSTRAINT `FKbhe93esmsur5uyhl0v6dj392t` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_bundle_item`
--

LOCK TABLES `blc_sku_bundle_item` WRITE;
/*!40000 ALTER TABLE `blc_sku_bundle_item` DISABLE KEYS */;
INSERT INTO `blc_sku_bundle_item` VALUES (1,400.00000,4,1.000000,1161,696),(52,150000.00000,1,2.000000,1211,746),(53,150000.00000,1,3.000000,1211,745),(54,150000.00000,1,4.000000,1211,696),(55,150000.00000,1,5.000000,1211,1145);
/*!40000 ALTER TABLE `blc_sku_bundle_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fee`
--

DROP TABLE IF EXISTS `blc_sku_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_fee` (
  `SKU_FEE_ID` bigint NOT NULL,
  `AMOUNT` decimal(19,5) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXPRESSION` longtext,
  `FEE_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TAXABLE` bit(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SKU_FEE_ID`),
  KEY `FKm9vf5c5ktjqu4wilne2f6926k` (`CURRENCY_CODE`),
  CONSTRAINT `FKm9vf5c5ktjqu4wilne2f6926k` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fee`
--

LOCK TABLES `blc_sku_fee` WRITE;
/*!40000 ALTER TABLE `blc_sku_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fee_xref`
--

DROP TABLE IF EXISTS `blc_sku_fee_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_fee_xref` (
  `SKU_FEE_ID` bigint NOT NULL,
  `SKU_ID` bigint NOT NULL,
  KEY `FK3vmkt7ojjlpk2fle4cp8eq55f` (`SKU_ID`),
  KEY `FKky8dxmeg4o49qyc7kiwojnuek` (`SKU_FEE_ID`),
  CONSTRAINT `FK3vmkt7ojjlpk2fle4cp8eq55f` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKky8dxmeg4o49qyc7kiwojnuek` FOREIGN KEY (`SKU_FEE_ID`) REFERENCES `blc_sku_fee` (`SKU_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fee_xref`
--

LOCK TABLES `blc_sku_fee_xref` WRITE;
/*!40000 ALTER TABLE `blc_sku_fee_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fee_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fulfillment_excluded`
--

DROP TABLE IF EXISTS `blc_sku_fulfillment_excluded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_fulfillment_excluded` (
  `SKU_ID` bigint NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint NOT NULL,
  KEY `FKbf81qj596ta3xs2erw4o7m1ft` (`FULFILLMENT_OPTION_ID`),
  KEY `FKs0toanodthismt1hugerli3e8` (`SKU_ID`),
  CONSTRAINT `FKbf81qj596ta3xs2erw4o7m1ft` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKs0toanodthismt1hugerli3e8` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fulfillment_excluded`
--

LOCK TABLES `blc_sku_fulfillment_excluded` WRITE;
/*!40000 ALTER TABLE `blc_sku_fulfillment_excluded` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fulfillment_excluded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fulfillment_flat_rates`
--

DROP TABLE IF EXISTS `blc_sku_fulfillment_flat_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_fulfillment_flat_rates` (
  `SKU_ID` bigint NOT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint NOT NULL,
  PRIMARY KEY (`SKU_ID`,`FULFILLMENT_OPTION_ID`),
  KEY `FKklcbu8knfitgnhlj1sa2vyd30` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK1ruxosbsx27uicd9dny1ls9td` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKklcbu8knfitgnhlj1sa2vyd30` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fulfillment_flat_rates`
--

LOCK TABLES `blc_sku_fulfillment_flat_rates` WRITE;
/*!40000 ALTER TABLE `blc_sku_fulfillment_flat_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fulfillment_flat_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_media_map`
--

DROP TABLE IF EXISTS `blc_sku_media_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_media_map` (
  `SKU_MEDIA_ID` bigint NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `MEDIA_ID` bigint DEFAULT NULL,
  `BLC_SKU_SKU_ID` bigint NOT NULL,
  PRIMARY KEY (`SKU_MEDIA_ID`),
  KEY `FKl3netvy66i56mjj6bo43mjmn2` (`MEDIA_ID`),
  KEY `FKc3mu07614ovbqwbnd1lxdg2ac` (`BLC_SKU_SKU_ID`),
  CONSTRAINT `FKc3mu07614ovbqwbnd1lxdg2ac` FOREIGN KEY (`BLC_SKU_SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKl3netvy66i56mjj6bo43mjmn2` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_media_map`
--

LOCK TABLES `blc_sku_media_map` WRITE;
/*!40000 ALTER TABLE `blc_sku_media_map` DISABLE KEYS */;
INSERT INTO `blc_sku_media_map` VALUES (2,'primary',60015,696),(51,'primary',60064,745),(52,'primary',60065,746),(101,'primary',60114,795),(103,'primary',60116,797),(151,'primary',60164,845),(201,'primary',60214,895),(253,'primary',60266,947),(254,'primary',60267,948),(301,'primary',60314,995),(302,'primary',60315,995),(351,'primary',60364,1045),(352,'primary',60365,1046),(353,'primary',60366,1047),(401,'primary',60414,1095),(402,'primary',60415,1096),(451,'primary',60464,1145),(452,'primary',60465,1146),(453,'primary',60466,1147),(501,'primary',60514,1245);
/*!40000 ALTER TABLE `blc_sku_media_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_option_value_xref`
--

DROP TABLE IF EXISTS `blc_sku_option_value_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_sku_option_value_xref` (
  `SKU_OPTION_VALUE_XREF_ID` bigint NOT NULL,
  `PRODUCT_OPTION_VALUE_ID` bigint NOT NULL,
  `SKU_ID` bigint NOT NULL,
  PRIMARY KEY (`SKU_OPTION_VALUE_XREF_ID`),
  KEY `FKc9e8sa4v1mqlbhd9hjp6bxujh` (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FKci6tv12pfsh2srrakx3ridy8v` (`SKU_ID`),
  CONSTRAINT `FKc9e8sa4v1mqlbhd9hjp6bxujh` FOREIGN KEY (`PRODUCT_OPTION_VALUE_ID`) REFERENCES `blc_product_option_value` (`PRODUCT_OPTION_VALUE_ID`),
  CONSTRAINT `FKci6tv12pfsh2srrakx3ridy8v` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_option_value_xref`
--

LOCK TABLES `blc_sku_option_value_xref` WRITE;
/*!40000 ALTER TABLE `blc_sku_option_value_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_option_value_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_state`
--

DROP TABLE IF EXISTS `blc_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_state` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `STATE_NAME_INDEX` (`NAME`),
  KEY `FKr63uepn8p8qx02xcg43851gno` (`COUNTRY`),
  CONSTRAINT `FKr63uepn8p8qx02xcg43851gno` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_state`
--

LOCK TABLES `blc_state` WRITE;
/*!40000 ALTER TABLE `blc_state` DISABLE KEYS */;
INSERT INTO `blc_state` VALUES ('AA','ARMED FORCES AMERICA','US'),('AB','ALBERTA','CA'),('AE','ARMED FORCES','US'),('AK','ALASKA','US'),('AL','ALABAMA','US'),('AP','ARMED FORCES PACIFIC','US'),('AR','ARKANSAS','US'),('AS','AMERICAN SAMOA','US'),('AZ','ARIZONA','US'),('BC','BRITISH COLUMBIA','CA'),('CA','CALIFORNIA','US'),('CO','COLORADO','US'),('CT','CONNECTICUT','US'),('DC','DISTRICT OF COLUMBIA','US'),('DE','DELAWARE','US'),('FL','FLORIDA','US'),('FM','FEDERATED STATES OF MICRONESIA','US'),('GA','GEORGIA','US'),('GU','GUAM','US'),('HI','HAWAII','US'),('IA','IOWA','US'),('ID','IDAHO','US'),('IL','ILLINOIS','US'),('IN','INDIANA','US'),('KS','KANSAS','US'),('KY','KENTUCKY','US'),('LA','LOUISIANA','US'),('MA','MASSACHUSETTS','US'),('MB','MANITOBA','CA'),('MD','MARYLAND','US'),('ME','MAINE','US'),('MH','MARSHALL ISLANDS','US'),('MI','MICHIGAN','US'),('MN','MINNESOTA','US'),('MO','MISSOURI','US'),('MP','NORTHERN MARIANA ISLANDS','US'),('MS','MISSISSIPPI','US'),('MT','MONTANA','US'),('NB','NEW BRUNSWICK','CA'),('NC','NORTH CAROLINA','US'),('ND','NORTH DAKOTA','US'),('NE','NEBRASKA','US'),('NH','NEW HAMPSHIRE','US'),('NJ','NEW JERSEY','US'),('NL','NEWFOUNDLAND','CA'),('NM','NEW MEXICO','US'),('NS','NOVA SCOTIA','CA'),('NT','NORTHWEST TERRITORIES','CA'),('NU','NUNAVUT','CA'),('NV','NEVADA','US'),('NY','NEW YORK','US'),('OH','OHIO','US'),('OK','OKLAHOMA','US'),('ON','ONTARIO','CA'),('OR','OREGON','US'),('PA','PENNSYLVANIA','US'),('PE','PRINCE EDWARD ISLAND','CA'),('PR','PUERTO RICO','US'),('PW','PALAU','US'),('QC','QUEBEC','CA'),('RI','RHODE ISLAND','US'),('SC','SOUTH CAROLINA','US'),('SD','SOUTH DAKOTA','US'),('SK','SASKATCHEWAN','CA'),('TN','TENNESSEE','US'),('TX','TEXAS','US'),('UT','UTAH','US'),('VA','VIRGINIA','US'),('VI','VIRGIN ISLANDS','US'),('VT','VERMONT','US'),('WA','WASHINGTON','US'),('WI','WISCONSIN','US'),('WV','WEST VIRGINIA','US'),('WY','WYOMING','US'),('YT','YUKON','CA');
/*!40000 ALTER TABLE `blc_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset`
--

DROP TABLE IF EXISTS `blc_static_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_static_asset` (
  `STATIC_ASSET_ID` bigint NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `FILE_EXTENSION` varchar(255) DEFAULT NULL,
  `FILE_SIZE` bigint DEFAULT NULL,
  `FULL_URL` varchar(255) NOT NULL,
  `MIME_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STORAGE_TYPE` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `ASST_FULL_URL_INDX` (`FULL_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset`
--

LOCK TABLES `blc_static_asset` WRITE;
/*!40000 ALTER TABLE `blc_static_asset` DISABLE KEYS */;
INSERT INTO `blc_static_asset` VALUES (60264,NULL,-1,'2021-05-04 02:00:49','2021-05-04 02:00:49',-1,'png',33824,'/product/apple-touch-icon.png','image/png','apple-touch-icon.png','FILESYSTEM',NULL),(60764,NULL,-1,'2021-05-06 08:42:05','2021-05-06 08:42:05',-1,'jpg',92477,'/ly01.jpg','image/jpeg','ly01.jpg','FILESYSTEM',NULL),(60765,NULL,-1,'2021-05-06 08:44:50','2021-05-06 08:44:50',-1,'jpg',82156,'/ly02.jpg','image/jpeg','ly02.jpg','FILESYSTEM',NULL),(60766,NULL,-1,'2021-05-06 08:44:58','2021-05-06 08:44:58',-1,'jpg',33496,'/ly03.jpg','image/jpeg','ly03.jpg','FILESYSTEM',NULL),(60767,NULL,-1,'2021-05-06 08:45:06','2021-05-06 08:45:06',-1,'jpg',114772,'/cb01.jpg','image/jpeg','cb01.jpg','FILESYSTEM',NULL),(60768,NULL,-1,'2021-05-06 08:45:11','2021-05-06 08:45:11',-1,'jpg',92691,'/cb02.jpg','image/jpeg','cb02.jpg','FILESYSTEM',NULL),(60769,NULL,-1,'2021-05-06 08:45:16','2021-05-06 08:45:16',-1,'jpg',68379,'/cb04.jpg','image/jpeg','cb04.jpg','FILESYSTEM',NULL),(60770,NULL,-1,'2021-05-06 08:45:22','2021-05-06 08:45:22',-1,'jpg',145695,'/cb03.jpg','image/jpeg','cb03.jpg','FILESYSTEM',NULL),(60771,NULL,-1,'2021-05-06 08:45:27','2021-05-06 08:45:27',-1,'jpg',145743,'/cb05.jpg','image/jpeg','cb05.jpg','FILESYSTEM',NULL),(60772,NULL,-1,'2021-05-06 08:45:31','2021-05-06 08:45:31',-1,'jpg',93611,'/cb06.jpg','image/jpeg','cb06.jpg','FILESYSTEM',NULL),(60773,NULL,-1,'2021-05-06 08:45:35','2021-05-06 08:45:35',-1,'jpg',103808,'/cb07.jpg','image/jpeg','cb07.jpg','FILESYSTEM',NULL),(60774,NULL,-1,'2021-05-06 08:45:42','2021-05-06 08:45:42',-1,'jpg',94756,'/cb08.jpg','image/jpeg','cb08.jpg','FILESYSTEM',NULL),(60775,NULL,-1,'2021-05-06 08:45:46','2021-05-06 08:45:46',-1,'jpg',115711,'/cb09.jpg','image/jpeg','cb09.jpg','FILESYSTEM',NULL),(60776,NULL,-1,'2021-05-06 08:45:52','2021-05-06 08:45:52',-1,'jpg',56315,'/uc01.jpg','image/jpeg','uc01.jpg','FILESYSTEM',NULL),(60777,NULL,-1,'2021-05-06 08:45:56','2021-05-06 08:45:56',-1,'jpg',69305,'/uc02.jpg','image/jpeg','uc02.jpg','FILESYSTEM',NULL),(60778,NULL,-1,'2021-05-06 08:46:00','2021-05-06 08:46:00',-1,'jpg',102902,'/uc03.jpg','image/jpeg','uc03.jpg','FILESYSTEM',NULL),(60779,NULL,-1,'2021-05-07 02:42:06','2021-05-07 02:42:06',-1,'jpg',252202,'/product/1211/product_bundle01.jpg','image/jpeg','product_bundle01.jpg','FILESYSTEM',NULL);
/*!40000 ALTER TABLE `blc_static_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset_desc`
--

DROP TABLE IF EXISTS `blc_static_asset_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_static_asset_desc` (
  `STATIC_ASSET_DESC_ID` bigint NOT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset_desc`
--

LOCK TABLES `blc_static_asset_desc` WRITE;
/*!40000 ALTER TABLE `blc_static_asset_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_static_asset_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset_strg`
--

DROP TABLE IF EXISTS `blc_static_asset_strg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_static_asset_strg` (
  `STATIC_ASSET_STRG_ID` bigint NOT NULL,
  `FILE_DATA` longblob,
  `STATIC_ASSET_ID` bigint NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_STRG_ID`),
  KEY `STATIC_ASSET_ID_INDEX` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset_strg`
--

LOCK TABLES `blc_static_asset_strg` WRITE;
/*!40000 ALTER TABLE `blc_static_asset_strg` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_static_asset_strg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_store`
--

DROP TABLE IF EXISTS `blc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_store` (
  `STORE_ID` bigint NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `STORE_NAME` varchar(255) NOT NULL,
  `STORE_OPEN` bit(1) DEFAULT NULL,
  `STORE_HOURS` varchar(255) DEFAULT NULL,
  `STORE_NUMBER` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `FKg65fln1wkn5rai85klf8ei1uy` (`ADDRESS_ID`),
  CONSTRAINT `FKg65fln1wkn5rai85klf8ei1uy` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_store`
--

LOCK TABLES `blc_store` WRITE;
/*!40000 ALTER TABLE `blc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_system_property`
--

DROP TABLE IF EXISTS `blc_system_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_system_property` (
  `BLC_SYSTEM_PROPERTY_ID` bigint NOT NULL,
  `FRIENDLY_GROUP` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `FRIENDLY_TAB` varchar(255) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` bit(1) DEFAULT NULL,
  `PROPERTY_TYPE` varchar(255) DEFAULT NULL,
  `PROPERTY_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BLC_SYSTEM_PROPERTY_ID`),
  KEY `IDX_BLSYPR_PROPERTY_NAME` (`PROPERTY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_system_property`
--

LOCK TABLES `blc_system_property` WRITE;
/*!40000 ALTER TABLE `blc_system_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_system_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_tar_crit_offer_xref`
--

DROP TABLE IF EXISTS `blc_tar_crit_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_tar_crit_offer_xref` (
  `OFFER_TAR_CRIT_ID` bigint NOT NULL,
  `OFFER_ID` bigint NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`OFFER_TAR_CRIT_ID`),
  KEY `FK5n28fyhs3hvqqn38rap5yns9i` (`OFFER_ID`),
  KEY `FKj44eau35bu6hfq5w53civq01y` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK5n28fyhs3hvqqn38rap5yns9i` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKj44eau35bu6hfq5w53civq01y` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `blc_offer_item_criteria` (`OFFER_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_tar_crit_offer_xref`
--

LOCK TABLES `blc_tar_crit_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_tar_crit_offer_xref` DISABLE KEYS */;
INSERT INTO `blc_tar_crit_offer_xref` VALUES (4,14,15);
/*!40000 ALTER TABLE `blc_tar_crit_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_tax_detail`
--

DROP TABLE IF EXISTS `blc_tax_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_tax_detail` (
  `TAX_DETAIL_ID` bigint NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `TAX_COUNTRY` varchar(255) DEFAULT NULL,
  `JURISDICTION_NAME` varchar(255) DEFAULT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `TAX_REGION` varchar(255) DEFAULT NULL,
  `TAX_NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`TAX_DETAIL_ID`),
  KEY `FK7rwcm52210yymslbjj8m25cvi` (`CURRENCY_CODE`),
  KEY `FK53heksajqlpbnfd8yrbudum8a` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK53heksajqlpbnfd8yrbudum8a` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_module_configuration` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK7rwcm52210yymslbjj8m25cvi` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_tax_detail`
--

LOCK TABLES `blc_tax_detail` WRITE;
/*!40000 ALTER TABLE `blc_tax_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_tax_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_trans_additnl_fields`
--

DROP TABLE IF EXISTS `blc_trans_additnl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_trans_additnl_fields` (
  `PAYMENT_TRANSACTION_ID` bigint NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`,`FIELD_NAME`),
  CONSTRAINT `FKdmq1toto9pwrhw5uife2ssq45` FOREIGN KEY (`PAYMENT_TRANSACTION_ID`) REFERENCES `blc_order_payment_transaction` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_trans_additnl_fields`
--

LOCK TABLES `blc_trans_additnl_fields` WRITE;
/*!40000 ALTER TABLE `blc_trans_additnl_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_trans_additnl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_translation`
--

DROP TABLE IF EXISTS `blc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_translation` (
  `TRANSLATION_ID` bigint NOT NULL,
  `ENTITY_ID` varchar(255) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  `TRANSLATED_VALUE` longtext,
  PRIMARY KEY (`TRANSLATION_ID`),
  KEY `TRANSLATION_INDEX` (`ENTITY_TYPE`,`ENTITY_ID`,`FIELD_NAME`,`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_translation`
--

LOCK TABLES `blc_translation` WRITE;
/*!40000 ALTER TABLE `blc_translation` DISABLE KEYS */;
INSERT INTO `blc_translation` VALUES (-1003,'3','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2>'),(-1002,'2','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2><h4 style=\"text-align:center;\">Haga <a href=\"http://www.broadleafcommerce.com/features/content\">click aqu&iacute;</a> para mas informaci&oacute;n.</h4>'),(-1001,'1','Page','pageTemplate|body','es','prueba de contenido'),(-1000,'1','Page','pageTemplate|title','es','Espa&ntilde;ol G&eacute;nerico'),(-398,'6','MenuItem','label','fr','FAQ'),(-397,'5','MenuItem','label','fr','Nouveau Hot Sauce?'),(-396,'3','FulfillmentOption','longDescription','fr','1 - 2 Journ&eacute;es'),(-395,'3','FulfillmentOption','name','fr','Express'),(-394,'2','FulfillmentOption','longDescription','fr','3 - 5 Journ&eacute;es'),(-393,'2','FulfillmentOption','name','fr','Priorit&eacute;'),(-392,'1','FulfillmentOption','longDescription','fr','5 - 7 Journ&eacute;es'),(-391,'1','FulfillmentOption','name','fr','Norme'),(-382,'3','SearchFacet','label','fr','Prix'),(-381,'2','SearchFacet','label','fr','Degr&eacute; de chaleur'),(-380,'1','SearchFacet','label','fr','Fabricant'),(-300,'600','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-299,'600','Sku','name','fr','Mascot Clinique chaleur (Femmes)'),(-298,'500','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-297,'500','Sku','name','fr','Mascot Clinique chaleur (Hommes)'),(-296,'400','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les femmes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-295,'400','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Femmes)'),(-294,'300','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les hommes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-293,'300','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Hommes)'),(-292,'200','Sku','longDescription','fr','Collecte de femmes Habanero standards chemise &agrave; manches courtes shirt s&eacute;rigraphi&eacute; &agrave; 30 coton doux singles en coupe regular.'),(-291,'200','Sku','name','fr','Hawt comme une chemise Habanero (Femmes)'),(-290,'100','Sku','longDescription','fr','Collecte Hommes Habanero standards chemise &agrave; manches courtes t s&eacute;rigraphi&eacute;es en 30 coton doux singles en coupe regular.'),(-289,'100','Sku','name','fr','Hawt comme une chemise Habanero (Hommes)'),(-288,'19','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-287,'19','Sku','name','fr','Sauce chaudes Chipotle'),(-286,'18','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-285,'18','Sku','name','fr','Sauces chaudes Jalapeno'),(-284,'17','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-283,'17','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-282,'16','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-281,'16','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-280,'15','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-279,'15','Sku','name','fr','Sauce &agrave; l\'ail r繫ti chaud'),(-278,'14','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-277,'14','Sku','name','fr','Frais Poivre de Cayenne Hot Sauce'),(-276,'13','Sku','longDescription','fr','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Tout est plus grand au Texas, m&ecirc;me la br羶lure de Hot Sauce une Snortin Bull! douche sur le Texas Steak taille qu\'ils appellent le 96er Ole ou vos l&eacute;gumes Jane avion. Si vous &ecirc;tes un fan sur faire de la sauce barbecue &agrave; partir de z&eacute;ro comme je suis, vous pouvez utiliser la sauce Bull amygdales Snort Smokin \'Hot tant qu\'additif. Red hot habaneros et piments donner &agrave; cette tingler amygdales sa saveur c&eacute;l&egrave;bre et rouge de chaleur chaud. Bull Snort Smokin \'Hot amygdales Sauce\'ll avoir vos entrailles buckin 罈avec une goutte d\'eau.'),(-275,'13','Sku','name','fr','Bull Snort Smokin \'Hot Sauce Toncils'),(-274,'12','Sku','longDescription','fr','L\'une des sauces les plus insolites que nous vendons. L\'original &eacute;tait un vieux style sauce cajun et c\'est 癟a le noircissement &agrave; jour de version. C\'est gentil, mais vous obtenez un grand succ&egrave;s de cannelle et de clou de girofle avec un coup de chaleur agr&eacute;able de Cayenne. Utilisez-le sur tous les aliments &agrave; donner cette ambiance cajun.'),(-273,'12','Sku','name','fr','Caf&eacute; Cajun Louisiane Douce Sauce Blackening'),(-272,'11','Sku','longDescription','fr','Been there, encord&eacute;s cela. Hotter than jument buckin \'en chaleur! Saupoudrez de plats de viande, de fruits de mer et l&eacute;gumes. Utilisation comme additif dans une sauce barbecue ou tout aliment qui a besoin d\'une saveur &eacute;pic&eacute;e. Commencez avec quelques gouttes et travailler jusqu\'&agrave; la saveur d&eacute;sir&eacute;e.'),(-271,'11','Sku','name','fr','Bull Snort Cowboy poivre de Cayenne Hot Sauce'),(-270,'10','Sku','longDescription','fr','Voici la prescription pour ceux qui aiment la chaleur intol&eacute;rable. Dr Chilemeister potion de malades et mal mortel doit &ecirc;tre utilis&eacute; avec prudence. La douleur peut devenir une d&eacute;pendance!'),(-269,'10','Sku','name','fr','Dr Chilemeister Sauce Hot Insane'),(-268,'9','Sku','longDescription','fr','Tout l\'enfer se d&eacute;cha簾ne, le feu et le soufre pleuvoir? se pr&eacute;parer &agrave; rencontrer votre machine?'),(-267,'9','Sku','name','fr','Armageddon Le Hot Sauce To End All'),(-266,'8','Sku','longDescription','fr','Vous misez vos bottes, cette sauce chaude valu son nom de gens qui appr&eacute;cient une sauce chaude exceptionnel. Ce que vous trouverez ici est une saveur piquante vraiment original, pas un piquant irr&eacute;sistible que l\'on retrouve dans les sauces au poivre Tabasco ordinaires - m&ecirc;me si le piment utilis&eacute; dans ce produit a &eacute;t&eacute; test&eacute; &agrave; 285.000 unit&eacute;s Scoville. Alors, en selle pour une balade inoubliable. Pour vous assurer que nous vous avons apport&eacute; la plus belle sauce au poivre de Habanero, nous sommes all&eacute;s aux contreforts des montagnes mayas au Belize, en Am&eacute;rique centrale. Ce produit est pr&eacute;par&eacute; enti&egrave;rement &agrave; la main en utilisant uniquement des l&eacute;gumes frais et de tous les ingr&eacute;dients naturels.'),(-265,'8','Sku','name','fr','Blazin \'Selle XXX Hot Habanero sauce au poivre'),(-264,'7','Sku','longDescription','fr','Fabriqu&eacute; avec Naga Bhut Jolokia, plus chaud poivre dans le monde.'),(-263,'7','Sku','name','fr','Green Ghost'),(-262,'6','Sku','longDescription','fr','Souvent confondu avec le Habanero, le Scotch Bonnet a une pointe profond&eacute;ment invers&eacute;e par rapport &agrave; l\'extr&eacute;mit&eacute; pointue de l\'Habanero. Allant dans de nombreuses couleurs allant du vert au jaune-orange, le Scotch Bonnet est un aliment de base dans les Antilles et sauces au poivre de style Barbade.'),(-261,'6','Sku','name','fr','Jour de la sauce Scotch Bonnet Hot Morte'),(-260,'5','Sku','longDescription','fr','Si vous voulez chaud, c\'est le piment de choisir. Originaire de la Cara簿be, du Yucatan et du Nord C繫te de l\'Am&eacute;rique du Sud, le Habanero se pr&eacute;sente dans une vari&eacute;t&eacute; de couleurs allant du vert p&acirc;le au rouge vif. La chaleur gras Habanero, la saveur et l\'ar繫me unique, en a fait le favori des amateurs de chili.'),(-259,'5','Sku','name','fr','Jour de la sauce Habanero Hot Morte'),(-258,'4','Sku','longDescription','fr','Lorsque tout le poivre est s&eacute;ch&eacute; et fum&eacute;, il est consid&eacute;r&eacute; comme un Chipotle. Normalement, avec un aspect froiss&eacute;, drak brun, le chipotle fum&eacute; offre une saveur douce qui est g&eacute;n&eacute;ralement utilis&eacute; pour ajouter un smokey, saveur r繫tie aux salsas, les rago羶ts et marinades.'),(-257,'4','Sku','name','fr','Jour de la sauce chaude Morte Chipotle'),(-256,'3','Sku','longDescription','fr','Tangy, venu de Cayenne poivron flux avec l\'ail, l\'oignon p&acirc;te de tomate, et un soup癟on de sucre de canne pour en faire une sauce onctueuse avec une morsure. Magnifique sur les �fs, la volaille, le porc ou le poisson, cette sauce marie pour faire des marinades et des soupes riches.'),(-255,'3','Sku','name','fr','Hot Sauce Hoppin'),(-254,'2','Sku','longDescription','fr','Le parfait topper pour le poulet, le poisson, des hamburgers ou une pizza. Un grand m&eacute;lange de Habanero, mangue, fruits de la passion et de plus faire cette sauce Mort d\'un festin incroyable tropicale'),(-253,'2','Sku','name','fr','Sauce Sweet Death'),(-252,'1','Sku','longDescription','fr','Comme mes Chilipals sais, je suis pas du genre &agrave; &ecirc;tre satisfaite. Par cons&eacute;quent, la cr&eacute;ation de la mort subite. Lorsque vous avez besoin d\'aller au-del&agrave; ... Mort subite livrera!'),(-251,'1','Sku','name','fr','Sauce mort subite'),(-247,'14','ProdOptionVal','attributeValue','fr','XG'),(-246,'13','ProdOptionVal','attributeValue','fr','G'),(-245,'12','ProdOptionVal','attributeValue','fr','M'),(-244,'11','ProdOptionVal','attributeValue','fr','P'),(-243,'3','ProdOptionVal','attributeValue','fr','Argent'),(-242,'2','ProdOptionVal','attributeValue','fr','Rouge'),(-241,'1','ProdOptionVal','attributeValue','fr','Noir'),(-232,'2','ProdOption','label','fr','Shirt Taille'),(-231,'1','ProdOption','label','fr','Shirt Couleur'),(-215,'2005','Category','description','fr','Cartes Cadeaux'),(-214,'2004','Category','description','fr','Soldes'),(-213,'2003','Category','description','fr','Goodies'),(-212,'2002','Category','description','fr','Sauces piquantes'),(-211,'2001','Category','description','fr','Accueil'),(-205,'2005','Category','name','fr','Cartes Cadeaux'),(-204,'2004','Category','name','fr','Soldes'),(-203,'2003','Category','name','fr','Goodies'),(-202,'2002','Category','name','fr','Sauces piquantes'),(-201,'2001','Category','name','fr','Accueil'),(-198,'6','MenuItem','label','es','FAQ'),(-197,'5','MenuItem','label','aes','Nuevo a la Salsa?'),(-196,'3','FulfillmentOption','longDescription','es','1 - 2 D&iacute;as'),(-195,'3','FulfillmentOption','name','es','Express'),(-194,'2','FulfillmentOption','longDescription','es','3 - 5 D&iacute;as'),(-193,'2','FulfillmentOption','name','es','Ejecutiva'),(-192,'1','FulfillmentOption','longDescription','es','5 - 7 D&iacute;as'),(-191,'1','FulfillmentOption','name','es','Est獺ndar'),(-182,'3','SearchFacet','label','es','Precio'),(-181,'2','SearchFacet','label','es','Rango de Calor'),(-180,'1','SearchFacet','label','es','Fabricante'),(-100,'600','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-99,'600','Sku','name','es','Mascota de Heat Clinic (Mujeres)'),(-98,'500','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-97,'500','Sku','name','es','Mascota de Heat Clinic (Hombres)'),(-96,'400','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-95,'400','Sku','name','es','Heat Clinic dibujado a mano (Mujeres)'),(-94,'300','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-93,'300','Sku','name','es','Heat Clinic dibujado a mano (Hombres)'),(-92,'200','Sku','longDescription','es','Colecci&oacute;n de Mujeres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-91,'200','Sku','name','es','Camisa de Habanero Hawt (Mujeres)'),(-90,'100','Sku','longDescription','es','Colecci&oacute;n de Hombres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-89,'100','Sku','name','es','Camisa de Habanero Hawt (Hombres)'),(-88,'19','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-87,'19','Sku','name','es','Salsa de Pimienta Roja y Chipotle'),(-86,'18','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-85,'18','Sku','name','es','Salsa de Jalape&ntilde;o Ardiente'),(-84,'17','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-83,'17','Sku','name','es','Salsa de Locura'),(-82,'16','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-81,'16','Sku','name','es','Salsa de Locura'),(-80,'15','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-79,'15','Sku','name','es','Salsa de Ajo Tostado'),(-78,'14','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-77,'14','Sku','name','es','Salsa de Cayene Fresco'),(-76,'13','Sku','longDescription','es','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Si usted es un fan de hacer la salsa de barbacoa a partir de cero, como yo, puede utilizar la Salsa de Snortin Bull como aditivo. Habaneros ardientes y los pimientos de cayena dan a la garganta un sabor y calor al rojo vivo.'),(-75,'13','Sku','name','es','Salsa Mata-Gargantas de Bull Snort'),(-74,'12','Sku','longDescription','es','Una de las salsas m&aacute;s inusuales que vendemos. La original era un viejo estilo salsa caj&uacute;n y esto versi&oacute;n actualizada ennegrecimiento. Es dulce, pero se obtiene un gran sabor de canela y clavo de olor con un tiro agradable de piacnte de Cayena. Use en todos los alimentos para dar ese toque caj&uacute;n.'),(-73,'12','Sku','name','es','Salsa Dulce de Cajun de Lousiane'),(-72,'11','Sku','longDescription','es','Espolvorear con platos de carne, pescado y verduras. Use como aditivo en la salsa de barbacoa o cualquier alimento que necesita un sabor picante. Comience con unas gotas y aumente hasta llegar al sabor deseado.'),(-71,'11','Sku','name','es','Salsa Picante del Vaquero'),(-70,'10','Sku','longDescription','es','Aqu穩 est&aacute; la receta para aquellos que disfrutan de picante intolerable. Esta salsa macabra y mortal del Dr. Chilemeister se debe utilizar con precauci&oacute;n. El dolor puede llegar a ser adictivo!'),(-69,'10','Sku','name','es','Salsa Loca del Dr. Chilemeister'),(-68,'9','Sku','longDescription','es','Todo el infierno se ha desatado, fuego y azufre. Est&aacute; listo para el fin?'),(-67,'9','Sku','name','es','Fin del Mundo Salsa'),(-66,'8','Sku','longDescription','es','Esta salsa caliente recibe su nombre por la gente que aprecian una salsa picante. Lo que vas a encontrar aqu穩 es un sabor picante realmente original, no una acritud abrumador que se encuentra en las salsas de chile Tabasco ordinarios - a pesar de la pimienta usado en este producto ha sido probado en 285.000 unidades Scoville. Por lo tanto, ensillar a dar un paseo para recordar. Para asegurarnos de que usted trajo s&oacute;lo la mejor salsa de pimiento habanero, nos fuimos a las faldas de las monta&ntilde;as mayas en Belice, Am&eacute;rica Central. Este producto se prepara totalmente a mano utilizando s&oacute;lo las verduras frescas y solo ingredientes naturales.'),(-65,'8','Sku','name','es','Salsa de Habanero de la Silla Ardiente'),(-64,'7','Sku','longDescription','es','Hecho con Naga Jolokia Bhut, el chile m&aacute;s picante del mundo.'),(-63,'7','Sku','name','es','Fantasma Verde'),(-62,'6','Sku','longDescription','es','Parecido al Habanero, el Bonnet Escoc&eacute;s tiene una punta profundamente invertidas en comparaci&oacute;n con el extremo puntiagudo del Habanero. Van en colores de verde a amarillo-naranja, el Bonnet Escoc&eacute;s es un alimento b&aacute;sico en West Indies, en Barbados y salsas estilo pimienta.'),(-61,'6','Sku','name','es','Salsa del D&iacute;a de los Muertos de Bonnet Escoc&eacute;s'),(-60,'5','Sku','longDescription','es','Si quieres picante, este es el Chile a elegir. Originario del Caribe, Yucat&aacute;n y la Costa norte de Am&eacute;rica del Sur, el habanero se presenta en una variedad de colores que van desde el verde claro a un rojo brillante. El calor, sabor y aroma &uacute;nicos del Habanero ha convertido el chile en el favorito de los amantes del picante.'),(-59,'5','Sku','name','es','Salsa del D&iacute;a de los Muertos de Habanero'),(-58,'4','Sku','longDescription','es','Cuando cualquier pimienta se seca y se fuma, se refiere como un Chipotle. Por lo general, con una apariencia arrugada, caf&eacute; oscuro, el Chipotle ofrece un sabor ahumado y dulce que se utiliza generalmente para agregar un sabor asado a las salsas, guisos y adobos.'),(-57,'4','Sku','name','es','Salsa del D&iacute;a de los Muertos de Chipotle'),(-56,'3','Sku','longDescription','es','Picante, maduro pimienta que se mezcla junto con el ajo, la cebolla, pasta de tomate y una pizca de az&uacute;car de ca&ntilde;a para hacer de esto una salsa suave. Maravilloso en huevos, aves de corral, carne de cerdo o pescado, esta salsa se ��ezcla para hacer los adobos y sopas ricas.'),(-55,'3','Sku','name','es','Salsa de la Muerte Saltante'),(-54,'2','Sku','longDescription','es','El perfecto acompa&ntilde;ante para el pollo, el pescado, hamburguesas o pizza. Una gran mezcla de habanero, mango, fruta de la pasi&oacute;n y mucho m&aacute;s hacen de esta salsa de la Muerte una delicia tropical incre&iacute;ble.'),(-53,'2','Sku','name','es','Salsa de la Muerte Dulce'),(-52,'1','Sku','longDescription','es','Como mis amigos salseros saben, nunca soy f&aacute;cil de satisfacer. Por lo tanto, naci&oacute; la creaci&oacute;n de la Muerte S&uacute;bita. Cuando este listo para saborear al m&aacute;s all&aacute; ... Muerte s&uacute;bita entregar&aacute;!'),(-51,'1','Sku','name','es','Salsa de la Muerte S&uacute;bita'),(-47,'14','ProdOptionVal','attributeValue','es','XG'),(-46,'13','ProdOptionVal','attributeValue','es','G'),(-45,'12','ProdOptionVal','attributeValue','es','M'),(-44,'11','ProdOptionVal','attributeValue','es','CH'),(-43,'3','ProdOptionVal','attributeValue','es','Plateado'),(-42,'2','ProdOptionVal','attributeValue','es','Rojo'),(-41,'1','ProdOptionVal','attributeValue','es','Negro'),(-32,'2','ProdOption','label','es','Tama&ntilde;o de Camisa'),(-31,'1','ProdOption','label','es','Color de Camisa'),(-15,'2005','Category','description','es','Tarjetas de Regalo'),(-14,'2004','Category','description','es','Descuento'),(-13,'2003','Category','description','es','Mercanc&iacute;a'),(-12,'2002','Category','description','es','Salsas Picantes'),(-11,'2001','Category','description','es','Inicio'),(-5,'2005','Category','name','es','Tarjetas de Regalo'),(-4,'2004','Category','name','es','Descuento'),(-3,'2003','Category','name','es','Mercanc&iacute;a'),(-2,'2002','Category','name','es','Salsas'),(-1,'2001','Category','name','es','Inicio'),(1,'2001','Category','name','zh_TW','首頁'),(2,'2004','Category','name','zh_TW','下架區'),(51,'100','Sku','name','zh_TW','T雪'),(101,'1','Menu','name','zh_TW','首頁導覽列'),(102,'3','MenuItem','label','zh_TW','商品'),(103,'1','MenuItem','label','zh_TW','首頁'),(151,'1','Page','pageTemplate|title','zh_TW','關於我們'),(152,'2','Page','pageTemplate|title','zh_TW','常見問答集'),(153,'2019','Category','name','en_US','Pre-mortem contract'),(154,'2019','Category','name','zh_TW','生前契約'),(201,'696','Sku','name','zh_TW','基本型'),(251,'2069','Category','name','zh_TW','龍巖塔位服務'),(301,'2069','Category','longDescription','zh_TW','龍巖股份有限公司提供之塔位服務'),(351,'795','Sku','name','zh_TW','星辰館典雅型個人骨灰室'),(401,'1','Page','pageTemplate|body','zh_TW','<p>龍巖自1992年創立以來，致力於生命服務產業的突破與創新，率先採用最高規格的SRC鋼骨建造「真龍殿」，歷時十年打造出莊嚴安穩之生命殿堂，更引進日本專業的禮體淨身、造型花山等技術，帶動了台灣身後市場的服務品質大躍進，於2000年成為亞洲第一家通過ISO 9001國際品保驗證的生命服務企業。</p><p>2011年併購大漢建設成為上櫃公司，龍巖對於財務透明和公司治理的要求更趨嚴謹，目前服務範疇涵蓋塔墓營運、殯葬設施、禮儀服務、生前契約與生命教育等領域。近年來為了讓優質服務能更深耕在地，龍巖在全台共有七座墓園、廣設禮儀服務據點與會館，並攜手日本國際級建築大師打造頂級的生命藝術殿堂，提供全方位的生命服務。龍巖自2017年起跨足彼岸，以溫州瑞安為首站據點規劃國際級的生命園區，持續為「成為大中華區生命禮儀服務的最佳託付者」而努力。</p>'),(402,'14','Page','pageTemplate|title','zh_TW','隱私權政策'),(403,'14','Page','pageTemplate|body','zh_TW','<p>非常歡迎您光臨「龍巖股份有限公司網站」（以下簡稱本網站），為了讓您能夠安心使用本網站的各項服務與資訊，特此向您說明本網站的隱私權保護政策，以保障您的權益，請您詳閱下列內容：</p><p><strong>一、隱私權保護政策的適用範圍</strong></p><p>隱私權保護政策內容，包括本網站如何處理在您使用網站服務時收集到的個人識別資料。隱私權保護政策不適用於本網站以外的相關連結網站，也不適用於非本網站所委託或參與管理的人員。</p><p><strong>二、個人資料的蒐集、處理及利用方式</strong></p><ul><li>當您造訪本網站或使用本網站所提供之功能服務時，我們將視該服務功能性質，請您提供必要的個人資料，並在該特定目的範圍內處理及利用您的個人資料。</li><li>本網站在您使用服務信箱、問卷調查等互動性功能時，會保留您所提供的姓名、電子郵件地址、聯絡方式及使用時間等。</li><li>於一般瀏覽時，伺服器會自行記錄相關行徑，包括您使用連線設備的IP位址、使用時間、使用的瀏覽器、瀏覽及點選資料記錄等，做為我們增進網站服務的參考依據，此記錄為內部應用並依法處理，絕不對外公佈。</li><li>為提供精確的服務，我們會將收集的問卷調查內容進行統計與分析，分析結果之統計數據或說明文字呈現，除供內部研究外，我們會視需要公佈統計數據及說明文字，但不涉及特定個人之資料。</li></ul><p><strong>三、資料之保護</strong></p><ul><li>本網站主機均設有防火牆、防毒系統等相關的各項資訊安全設備及必要的安全防護措施，加以保護網站及您的個人資料採用嚴格的保護措施，只由經過授權的人員才能接觸您的個人資料，相關處理人員皆簽有保密合約，如有違反保密義務者，將負起相關的法律責任。</li><li>如因業務需要有必要委託其他單位提供服務時，本網站亦會嚴格要求其遵守保密義務，並且採取必要檢查程序以確定其將確實遵守。</li></ul><p><strong>四、網站對外的相關連結</strong></p><p>本網站的網頁提供其他網站的網路連結，您也可經由本網站所提供的連結，點選進入其他網站。但該連結網站不適用本網站的隱私權保護政策，您必須參考該連結網站中的隱私權保護政策。</p><p><strong>五、與第三人共用個人資料之政策</strong></p><p>本網站絕不會提供、交換、出租或出售任何您的個人資料給其他個人、團體、私人企業或公務機關，但有法律依據或合約義務者，不在此限。</p><p>前項但書之情形包括不限於：</p><ul><li>經由您書面同意。</li><li>法律明文規定。</li><li>為免除您生命、身體、自由或財產上之危險。</li><li>與公務機關或學術研究機構合作，基於公共利益為統計或學術研究而有必要，且資料經過提供者處理或蒐集著依其揭露方式無從識別特定之當事人。</li><li>當您在網站的行為，違反服務條款或可能損害或妨礙網站與其他使用者權益或導致任何人遭受損害時，經網站管理單位研析揭露您的個人資料是為了辨識、聯絡或採取法律行動所必要者。</li><li>有利於您的權益。</li><li>本網站委託廠商協助蒐集、處理或利用您的個人資料時，將對委外廠商或個人善盡監督管理之責。</li></ul><p><strong>六、Cookie之使用</strong></p><p>為了提供您最佳的服務，本網站會在您的電腦中放置並取用我們的Cookie，若您不願接受Cookie的寫入，您可在您使用的瀏覽器功能項中設定隱私權等級為高，即可拒絕Cookie的寫入，但可能會導至網站某些功能無法正常執行 。</p><p><strong>七、第三方應用程式</strong></p><p>第三方應用程式供應商所收集的資訊，則受其隱私權政策規範。目前本網站上使用第三方應用程式如下： Google Analytics – 本網站經由 Google Analytics 收集及分析網站流量。</p><p><strong>八、隱私權保護政策之修正</strong></p><p>本網站隱私權保護政策將因應需求隨時進行修正，修正後的條款將刊登於網站上。</p>'),(451,'2119','Category','name','zh_TW','白沙灣園區'),(452,'65','MenuItem','label','zh_TW','龍巖塔位服務'),(501,'2120','Category','name','zh_TW','真龍殿'),(502,'12','Menu','name','zh_TW','白沙灣園區'),(503,'2170','Category','name','zh_TW','寶池觀優雅雙位室'),(504,'995','Sku','name','zh_TW','個人骨灰室第一層'),(505,'2169','Category','name','zh_TW','塔位'),(506,'2171','Category','name','zh_TW','彌陀光個人骨灰室'),(551,'1045','Sku','name','zh_TW','個人骨灰室第二層'),(552,'2219','Category','name','zh_TW','塔位憑證'),(553,'2220','Category','name','zh_TW','真龍殿骨灰室升等憑證'),(554,'1046','Sku','name','zh_TW','升等新西式第5層'),(555,'2221','Category','name','zh_TW','光之殿堂'),(556,'25','ProdOptionVal','attributeValue','zh_TW','指定'),(557,'2222','Category','name','zh_TW','戶外墓園'),(558,'2223','Category','name','zh_TW','墓園'),(559,'2224','Category','name','zh_TW','龍泰陵個人墓園'),(560,'1047','Sku','name','zh_TW','夫妻室第一層'),(561,'2225','Category','name','zh_TW','龍泰陵夫妻室'),(601,'2269','Category','name','zh_TW','寵物墓園'),(602,'2270','Category','name','zh_TW','墓園憑證'),(603,'2271','Category','name','zh_TW','龍泰陵升等憑證'),(604,'1096','Sku','name','zh_TW','夫妻1,8層升4,5層'),(651,'1095','Sku','name','zh_TW','夫妻室第五層'),(652,'62','Menu','name','zh_TW','測試'),(653,'2319','Category','name','zh_TW','契約/憑證'),(654,'2320','Category','name','zh_TW','憑證'),(655,'2321','Category','name','zh_TW','生前契約(產品線)'),(701,'2369','Category','name','zh_TW','圓融生前契約'),(702,'745','Sku','name','zh_TW','星動圓融'),(703,'746','Sku','name','zh_TW','福氣圓融'),(704,'2370','Category','name','zh_TW','會館憑證'),(705,'2371','Category','name','zh_TW','認購憑證'),(706,'2373','Category','name','zh_TW','風華履約升等憑證'),(707,'2372','Category','name','zh_TW','契約憑證'),(708,'2374','Category','name','zh_TW','花開富貴憑證'),(709,'2375','Category','name','zh_TW','骨罐三選一認購憑證'),(751,'1145','Sku','name','zh_TW','風華履約升等憑證'),(752,'1146','Sku','name','zh_TW','豪華式場升等憑證'),(753,'1147','Sku','name','zh_TW','骨罐認購憑證'),(801,'60615','StaticAsset','altText','zh_TW','primary'),(802,'60616','StaticAsset','altText','zh_TW','primary'),(851,'1','Offer','name','zh_TW','消費券優惠'),(852,'1','Offer','marketingMessage','zh_TW','現在購買兩項享10000元折扣'),(853,'12','Offer','name','zh_TW','打八折'),(854,'13','Offer','name','zh_TW','總額折扣1萬'),(855,'14','Offer','name','zh_TW','龍巖產品兩件7折'),(856,'1245','Sku','name','zh_TW','生前契約組合');
/*!40000 ALTER TABLE `blc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_url_handler`
--

DROP TABLE IF EXISTS `blc_url_handler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_url_handler` (
  `URL_HANDLER_ID` bigint NOT NULL,
  `INCOMING_URL` varchar(255) NOT NULL,
  `IS_REGEX` bit(1) DEFAULT NULL,
  `NEW_URL` varchar(255) NOT NULL,
  `URL_REDIRECT_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`URL_HANDLER_ID`),
  KEY `INCOMING_URL_INDEX` (`INCOMING_URL`),
  KEY `IS_REGEX_HANDLER_INDEX` (`IS_REGEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_url_handler`
--

LOCK TABLES `blc_url_handler` WRITE;
/*!40000 ALTER TABLE `blc_url_handler` DISABLE KEYS */;
INSERT INTO `blc_url_handler` VALUES (1,'/googlePerm',NULL,'http://www.google.com','REDIRECT_PERM'),(2,'/googleTemp',NULL,'http://www.google.com','REDIRECT_TEMP');
/*!40000 ALTER TABLE `blc_url_handler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_userconnection`
--

DROP TABLE IF EXISTS `blc_userconnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_userconnection` (
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `expireTime` bigint DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(255) DEFAULT NULL,
  `rank` int NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`providerId`,`providerUserId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_userconnection`
--

LOCK TABLES `blc_userconnection` WRITE;
/*!40000 ALTER TABLE `blc_userconnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_userconnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_zip_code`
--

DROP TABLE IF EXISTS `blc_zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blc_zip_code` (
  `ZIP_CODE_ID` varchar(255) NOT NULL,
  `ZIP_CITY` varchar(255) DEFAULT NULL,
  `ZIP_LATITUDE` double DEFAULT NULL,
  `ZIP_LONGITUDE` double DEFAULT NULL,
  `ZIP_STATE` varchar(255) DEFAULT NULL,
  `ZIPCODE` int DEFAULT NULL,
  PRIMARY KEY (`ZIP_CODE_ID`),
  KEY `ZIPCODE_CITY_INDEX` (`ZIP_CITY`),
  KEY `ZIPCODE_LATITUDE_INDEX` (`ZIP_LATITUDE`),
  KEY `ZIPCODE_LONGITUDE_INDEX` (`ZIP_LONGITUDE`),
  KEY `ZIPCODE_STATE_INDEX` (`ZIP_STATE`),
  KEY `ZIPCODE_ZIP_INDEX` (`ZIPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_zip_code`
--

LOCK TABLES `blc_zip_code` WRITE;
/*!40000 ALTER TABLE `blc_zip_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_zip_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_generator`
--

DROP TABLE IF EXISTS `sequence_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_generator` (
  `ID_NAME` varchar(255) NOT NULL,
  `ID_VAL` bigint DEFAULT NULL,
  PRIMARY KEY (`ID_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_generator`
--

LOCK TABLES `sequence_generator` WRITE;
/*!40000 ALTER TABLE `sequence_generator` DISABLE KEYS */;
INSERT INTO `sequence_generator` VALUES ('AddressImpl',50),('AdminModuleImpl',0),('AdminPermissionEntityImpl',0),('AdminPermissionImpl',0),('AdminRoleImpl',0),('AdminSectionImpl',0),('AdminUserAttributeImpl',0),('AdminUserImpl',0),('BundleOrderItemFeePriceImpl',0),('CandidateFulfillmentGroupOfferImpl',0),('CandidateItemOfferImpl',0),('CandidateOrderOfferImpl',0),('CatalogImpl',0),('CategoryAttributeImpl',100),('CategoryExcludedSearchFacetImpl',0),('CategoryImpl',2468),('CategoryMediaXrefImpl',0),('CategoryProductXrefImpl',800),('CategorySearchFacetImpl',217),('CategoryXrefImpl',319),('ChallengeQuestionImpl',19),('CodeTypeImpl',0),('CountrySubdivisionCategoryImpl',96),('CrossSaleProductImpl',0),('CustomerAddressImpl',0),('CustomerAttributeImpl',0),('CustomerOfferImpl',0),('CustomerPaymentImpl',0),('CustomerPhoneImpl',0),('CustomerRoleImpl',0),('DataDrivenEnumerationImpl',0),('DataDrivenEnumerationValueImpl',0),('DiscreteOrderItemFeePriceImpl',0),('EmailTrackingClicksImpl',0),('EmailTrackingImpl',0),('EmailTrackingOpensImpl',0),('FeaturedProductImpl',71),('FieldDefinitionImpl',20),('FieldEnumerationImpl',0),('FieldEnumerationItemImpl',0),('FieldGroupImpl',16),('FieldImpl',19),('FulfillmentGroupAdjustmentImpl',0),('FulfillmentGroupFeeImpl',0),('FulfillmentGroupImpl',200),('FulfillmentGroupItemImpl',200),('FulfillmentOptionImpl',13),('FulfillmentPriceBandImpl',0),('FulfillmentWeightBandImpl',0),('IndexFieldImpl',19),('IndexFieldTypeImpl',21),('MediaImpl',60563),('MenuImpl',111),('MenuItemImpl',314),('ModuleConfigurationImpl',0),('OfferAuditImpl',0),('OfferCodeImpl',0),('OfferImpl',61),('OfferInfoImpl',0),('OfferItemCriteriaImpl',61),('OfferOfferRuleXrefImpl',0),('OfferPriceDataImpl',0),('OfferQualifyingCriteriaXrefImpl',0),('OfferRuleImpl',0),('OfferTargetCriteriaXrefImpl',50),('OrderAdjustmentImpl',50),('OrderAttributeImpl',0),('OrderImpl',200),('OrderItemAdjustmentImpl',0),('OrderItemAttributeImpl',0),('OrderItemImpl',200),('OrderItemPriceDetailAdjustmentImpl',50),('OrderItemPriceDetailImpl',200),('OrderItemQualifierImpl',0),('OrderMultishipOptionImpl',0),('OrderPaymentImpl',0),('PageAttributeImpl',0),('PageFieldImpl',114),('PageImpl',63),('PageItemCriteriaImpl',0),('PageRuleImpl',0),('PageTemplateFieldGroupXrefImpl',0),('PageTemplateImpl',12),('PaymentLogImpl',0),('PaymentTransactionImpl',0),('PersonalMessageImpl',0),('PhoneImpl',0),('ProductAttributeImpl',79),('ProductImpl',1260),('ProductOptionImpl',63),('ProductOptionValueImpl',74),('ProductOptionXrefImpl',73),('PromotionMessageImpl',0),('ProratedOrderItemAdjustmentImpl',0),('RatingDetailImpl',0),('RatingSummaryImpl',0),('RequiredFacetImpl',0),('ReviewDetailImpl',0),('ReviewFeedbackImpl',0),('RoleImpl',11),('SandBoxImpl',50),('SandBoxManagementImpl',50),('SearchFacetImpl',14),('SearchFacetRangeImpl',14),('SearchRedirectImpl',0),('SearchSynonymImpl',0),('ShippingRateImpl',0),('SiteCatalogXrefImpl',0),('SiteImpl',0),('SiteMapGeneratorConfigurationImpl',0),('SiteMapURLEntryImpl',0),('SkuAttributeImpl',79),('SkuAvailabilityImpl',0),('SkuBundleItemImpl',100),('SkuFeeImpl',0),('SkuImpl',1294),('SkuMediaXrefImpl',550),('SkuProductOptionValueXrefImpl',154),('StaticAssetDescriptionImpl',0),('StaticAssetImpl',60813),('StoreImpl',0),('StructuredContentFieldGroupXrefImpl',0),('StructuredContentFieldImpl',68),('StructuredContentFieldTemplateImpl',0),('StructuredContentFieldXrefImpl',0),('StructuredContentImpl',166),('StructuredContentItemCriteriaImpl',0),('StructuredContentRuleImpl',0),('StructuredContentTypeImpl',14),('SystemPropertyImpl',0),('TaxDetailImpl',0),('TranslationImpl',900),('UpSaleProductImpl',50),('URLHandlerImpl',14);
/*!40000 ALTER TABLE `sequence_generator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07 12:00:57
