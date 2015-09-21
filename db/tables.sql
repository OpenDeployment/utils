-- MySQL dump 10.14  Distrib 5.5.41-MariaDB, for Linux (x86_64)
--
-- Host: 10.160.37.101    Database: neutron
-- ------------------------------------------------------
-- Server version	5.5.41-MariaDB

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
-- Table structure for table `fortinet_firewall_addresses`
--

DROP TABLE IF EXISTS `fortinet_firewall_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_firewall_addresses` (
  `name` varchar(36) NOT NULL DEFAULT '',
  `vdom_name` varchar(11) DEFAULT NULL,
  `subnet` varchar(32) DEFAULT NULL,
  `associated_interface` varchar(11) DEFAULT NULL,
  `group` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_firewall_ippools`
--

DROP TABLE IF EXISTS `fortinet_firewall_ippools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_firewall_ippools` (
  `name` varchar(36) NOT NULL DEFAULT '',
  `vdom_name` varchar(11) DEFAULT NULL,
  `startip` varchar(32) DEFAULT NULL,
  `endip` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT 'one-to-one',
  `comments` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_firewall_policies`
--

DROP TABLE IF EXISTS `fortinet_firewall_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_firewall_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vdom_name` varchar(11) DEFAULT NULL,
  `srcintf` varchar(11) DEFAULT NULL,
  `dstintf` varchar(11) DEFAULT NULL,
  `srcaddr` varchar(32) DEFAULT 'all',
  `dstaddr` varchar(32) DEFAULT 'all',
  `poolname` varchar(32) DEFAULT NULL,
  `nat` varchar(7) DEFAULT 'disable',
  `edit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_floatingip_allocations`
--

DROP TABLE IF EXISTS `fortinet_floatingip_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_floatingip_allocations` (
  `ip_subnet` varchar(32) NOT NULL DEFAULT '',
  `vdom_name` varchar(11) DEFAULT NULL,
  `floating_ip_address` varchar(36) DEFAULT NULL,
  `vip_name` varchar(50) DEFAULT NULL,
  `allocated` tinyint(1) DEFAULT NULL,
  `bound` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ip_subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_interface_subips`
--

DROP TABLE IF EXISTS `fortinet_interface_subips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_interface_subips` (
  `ip` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(11) DEFAULT NULL,
  `vdom` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_interfaces`
--

DROP TABLE IF EXISTS `fortinet_interfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_interfaces` (
  `name` varchar(36) NOT NULL DEFAULT '',
  `vdom_name` varchar(11) DEFAULT NULL,
  `vlan_id` int(11) DEFAULT NULL,
  `interface` varchar(11) DEFAULT NULL,
  `type` varchar(32) DEFAULT 'vlan',
  `ip` varchar(32) DEFAULT NULL,
  `secondary_ip` varchar(11) DEFAULT 'enable',
  `alias` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_ml2_namespaces`
--

DROP TABLE IF EXISTS `fortinet_ml2_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_ml2_namespaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` varchar(36) NOT NULL,
  `vdom_name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_ml2_reservedips`
--

DROP TABLE IF EXISTS `fortinet_ml2_reservedips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_ml2_reservedips` (
  `port_id` varchar(36) NOT NULL,
  `subnet_id` varchar(36) NOT NULL,
  `mac` varchar(32) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `vdom_name` varchar(11) DEFAULT NULL,
  `edit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`port_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_ml2_subnets`
--

DROP TABLE IF EXISTS `fortinet_ml2_subnets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_ml2_subnets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subnet_id` varchar(36) NOT NULL,
  `vdom_name` varchar(11) NOT NULL,
  `mkey` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`subnet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_static_routers`
--

DROP TABLE IF EXISTS `fortinet_static_routers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_static_routers` (
  `subnet_id` varchar(36) NOT NULL,
  `vdom_name` varchar(11) DEFAULT NULL,
  `edit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`subnet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_vlink_ip_allocations`
--

DROP TABLE IF EXISTS `fortinet_vlink_ip_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_vlink_ip_allocations` (
  `vlink_ip_subnet` varchar(32) NOT NULL DEFAULT '',
  `vdom_name` varchar(11) DEFAULT NULL,
  `vlan_id` int(11) DEFAULT NULL,
  `allocated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vlink_ip_subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortinet_vlink_vlan_allocations`
--

DROP TABLE IF EXISTS `fortinet_vlink_vlan_allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fortinet_vlink_vlan_allocations` (
  `vlan_id` int(11) NOT NULL,
  `vdom_name` varchar(11) DEFAULT NULL,
  `inf_name_int_vdom` varchar(11) DEFAULT NULL,
  `inf_name_ext_vdom` varchar(11) DEFAULT NULL,
  `allocated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vlan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-21 16:10:05
