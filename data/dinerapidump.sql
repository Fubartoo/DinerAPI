CREATE DATABASE  IF NOT EXISTS `dinerapi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dinerapi`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dinerapi
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('d','Drinks','Purees made from the finest of Venusian insects, government-inspected.','catd.png'),('m','Mains','Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium \"meat\".','catm.png'),('s','Sides','Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.','cats.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('cc6696229a732a5513efc6787915becf095144f8','127.0.0.1',1491446688,'__ci_last_regenerate|i:1491446688;'),('4b39c14ff75b33a9770dbf641f10d0b672cb615c','127.0.0.1',1491445853,'__ci_last_regenerate|i:1491445853;'),('9419dd34cb420c86cf1ba5e75e5118ce3dcb98c1','127.0.0.1',1491445858,'__ci_last_regenerate|i:1491445858;'),('b270ff631cb18a617d875b5c9a1ea6cba62f783f','127.0.0.1',1491445862,'__ci_last_regenerate|i:1491445862;'),('16b458326e3004ec68036eb2dd76c40aae7a66e6','127.0.0.1',1491445867,'__ci_last_regenerate|i:1491445867;'),('5501d554434c8a42c1aeaa4f0acc3f9c94385634','127.0.0.1',1491445872,'__ci_last_regenerate|i:1491445872;'),('f7d4e449d340356c846e94d89b4cbceb291321d5','127.0.0.1',1491445876,'__ci_last_regenerate|i:1491445876;'),('2dd286ece3f6c49c33a27025b5a4479cfe4d0b18','127.0.0.1',1491446347,'__ci_last_regenerate|i:1491446347;'),('b931bcdb5adc51f6b0bf6b5b6e1f35712ccd6ba8','127.0.0.1',1491446352,'__ci_last_regenerate|i:1491446352;'),('cfdf012be9ca375020aaf3c92be1986ed25dd4cd','127.0.0.1',1491446357,'__ci_last_regenerate|i:1491446357;'),('5daa959bbd0656ddaf4264f84d39a3550f6fc2df','127.0.0.1',1491447046,'__ci_last_regenerate|i:1491447046;'),('577a102a45c9443c5e89a382e802a6e21a1d9a1a','127.0.0.1',1491446869,'__ci_last_regenerate|i:1491446869;'),('8d618d9c258566543087c2851fedf07d29692394','127.0.0.1',1491446932,'__ci_last_regenerate|i:1491446932;'),('294da700384a73c178af3ddf0905ff353878657d','127.0.0.1',1491446975,'__ci_last_regenerate|i:1491446975;'),('2e24a649a5e41a06bf588d1ba38359f0daa3e5a2','127.0.0.1',1491447040,'__ci_last_regenerate|i:1491447040;'),('58c9fe9fa8692e99a999cb9dbcfb884bd9e8e859','127.0.0.1',1491447045,'__ci_last_regenerate|i:1491447045;'),('d2827a87b873eb670ac0e3a457e690ba338484ba','127.0.0.1',1491449813,'__ci_last_regenerate|i:1491449813;'),('5a2cb7375fdd7f62539549e0f40f1191f9af0345','127.0.0.1',1491447291,'__ci_last_regenerate|i:1491447291;'),('4f7c8e166ee5f3f5b661d2c0885d0fec364890a0','127.0.0.1',1491447410,'__ci_last_regenerate|i:1491447410;'),('de0f6512fcb9a3a344e98ab7d4a9e2995171ea03','127.0.0.1',1491447426,'__ci_last_regenerate|i:1491447426;'),('7a3ad93a0b638b675caca8ff09683bdc353891ab','127.0.0.1',1491447431,'__ci_last_regenerate|i:1491447431;'),('1efdff5aa90387afcae63b265737db7d2e13c41a','127.0.0.1',1491447436,'__ci_last_regenerate|i:1491447436;'),('713815581435a3bd484633afbf0b26918f00946e','127.0.0.1',1491448010,'__ci_last_regenerate|i:1491448009;'),('82d02375966e2157a1e38955255d661ed8c57079','127.0.0.1',1491448014,'__ci_last_regenerate|i:1491448014;'),('7872f37d69e1985a07fbba592d211bd7d99ec816','127.0.0.1',1491448019,'__ci_last_regenerate|i:1491448019;'),('6d563052f6ac5e958fe9f1e4157aabb6d8817151','127.0.0.1',1491448252,'__ci_last_regenerate|i:1491448252;'),('2d95adc4f6df9085686569131de3502122ec6f59','127.0.0.1',1491448276,'__ci_last_regenerate|i:1491448276;'),('ca41eeb486eb8cb866150afecd9d57dff73658d6','127.0.0.1',1491448466,'__ci_last_regenerate|i:1491448466;'),('0d7d131dcd22c862b9a3d60348607793e0ae43de','127.0.0.1',1491448466,'__ci_last_regenerate|i:1491448466;'),('5d874ad51ed02359896a15fc921f7ae02d37a37d','127.0.0.1',1491448512,'__ci_last_regenerate|i:1491448512;'),('629b8625df7e3074efce4b8b3b53273a490e3560','127.0.0.1',1491448529,'__ci_last_regenerate|i:1491448529;'),('4168589fb3df0e5ec210f7f9456ead8879a79dae','127.0.0.1',1491449192,'__ci_last_regenerate|i:1491449192;'),('e58c61273c71a772a3a08f6fa888d4b68dc99c5f','127.0.0.1',1491449197,'__ci_last_regenerate|i:1491449197;'),('91e4474782993a9f3feca43b8db6d914dd9fa3fa','127.0.0.1',1491449202,'__ci_last_regenerate|i:1491449202;'),('c643fe8de97217787fce45eef8dbacb9ccda1c2b','127.0.0.1',1491449667,'__ci_last_regenerate|i:1491449667;'),('9cf9a8b702725e0875be0217efc2036fde1dddfc','127.0.0.1',1491449684,'__ci_last_regenerate|i:1491449684;'),('0f82629d9af48ca329c326ea2ab15c3c4bec482a','127.0.0.1',1491449688,'__ci_last_regenerate|i:1491449688;'),('854d32c68fac308d82a9f71ac2b407c5e54c5b0a','127.0.0.1',1491449693,'__ci_last_regenerate|i:1491449693;'),('8e992ad54c3b421c834f2d25c53348a3a8065043','127.0.0.1',1491450892,'__ci_last_regenerate|i:1491450892;'),('b0441003813c4780d1f275a99faec7aed9665bb5','127.0.0.1',1491449842,'__ci_last_regenerate|i:1491449842;'),('c18df9de35d1e17467799b8dd4256a3cffec6a58','127.0.0.1',1491449968,'__ci_last_regenerate|i:1491449968;'),('5a2c02d4c320194a77f651eeb1d32e644f8cd016','127.0.0.1',1491450127,'__ci_last_regenerate|i:1491450127;'),('a0d120a84b19e300c2e180b59aaef58def61e60e','127.0.0.1',1491450208,'__ci_last_regenerate|i:1491450208;'),('c5a9047833acb7dcef00e1ae9cc78a3f604cba36','127.0.0.1',1491450221,'__ci_last_regenerate|i:1491450221;'),('7b2cd12bd6d600a4df9de712bc8c43961f0af1f5','127.0.0.1',1491450225,'__ci_last_regenerate|i:1491450225;'),('3bd1552637cc9753985f0adbfb83e08669065836','127.0.0.1',1491450230,'__ci_last_regenerate|i:1491450230;'),('cfaf0ee22f7b583252d593049247b9a03315c610','127.0.0.1',1491450260,'__ci_last_regenerate|i:1491450260;'),('34fcb573274303480890c0558d6deb0cdaff32a4','127.0.0.1',1491450265,'__ci_last_regenerate|i:1491450265;'),('d6d6a3c96f0cce0c871ce9f5543d14646d5a211e','127.0.0.1',1491450269,'__ci_last_regenerate|i:1491450269;'),('3d2c7041da0ce66fde5a7ead298b2dd12eb361e5','127.0.0.1',1491451132,'__ci_last_regenerate|i:1491450892;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Cheese','Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.',2.95,'1.png','s'),(2,'Turkey','Roasted, succulent, stuffed, lovingly sliced turkey breast',5.95,'2.png','m'),(6,'Donut','Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust',1.25,'6.png','s'),(10,'Bubbly','1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.',14.50,'10.png','d'),(11,'Ice Cream','Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle',3.75,'11.png','s'),(8,'Hot Dog','Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.',6.90,'8.png','m'),(25,'Burger','Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill\'s own unique special sauce.',9.99,'burger.png','m'),(21,'Coffee','A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don\'t want to know where they came from!',2.95,'coffee.png','d');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL,
  PRIMARY KEY (`order`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dinerapi'
--

--
-- Dumping routines for database 'dinerapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-08 22:59:35
