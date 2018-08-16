-- MySQL dump 10.13  Distrib 5.5.56, for Linux (x86_64)
--
-- Host: localhost    Database: monitor
-- ------------------------------------------------------
-- Server version	5.5.56-log

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_author` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `FKbjqhp85wjv8vpr0beygh6jsgo` (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dash_board_target`
--

DROP TABLE IF EXISTS `dash_board_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dash_board_target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dashboard_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf22ayoqf3bgwf5pnn6u8hc207` (`dashboard_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dash_board_target`
--

LOCK TABLES `dash_board_target` WRITE;
/*!40000 ALTER TABLE `dash_board_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `dash_board_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (5,'test');
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashtarget`
--

DROP TABLE IF EXISTS `dashtarget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashtarget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boardid` int(11) DEFAULT NULL,
  `hostid` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history` int(11) DEFAULT NULL,
  `itemid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9nqkch2orrpa6tuifqigsrecs` (`boardid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashtarget`
--

LOCK TABLES `dashtarget` WRITE;
/*!40000 ALTER TABLE `dashtarget` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashtarget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_manage`
--

DROP TABLE IF EXISTS `dev_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsetting` varchar(20000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `hostcount` int(11) DEFAULT NULL,
  `Managekey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_manage`
--

LOCK TABLES `dev_manage` WRITE;
/*!40000 ALTER TABLE `dev_manage` DISABLE KEYS */;
INSERT INTO `dev_manage` VALUES (43,'Windows','imgupload\\1527560517937windows.png','[true,true,true,true]','[]',1,NULL,'perf_counter[\\Processor(_Total)\\% Processor Time]'),(44,'Linux','imgupload\\1527560694411linux.png','[true,true,true,true]','[]',1,NULL,'systemcpu'),(45,'Network','imgupload\\1527561186590net.png','[true,true,true,true]','[]',1,NULL,'sysName'),(46,'Esxi','imgupload\\1527662179750vsphere.png','[false,false,false,false]','[{\"name\":\"CPU使用情况\",\"pic\":\"0\",\"key\":\"cpu.use.hz[CPU]\",\"flag\":\"true\"},{\"name\":\"总内存\",\"pic\":\"0\",\"key\":\"memory.total.bytes[MEMORY]\",\"flag\":\"true\"},{\"name\":\"已使用内存\",\"pic\":\"0\",\"key\":\"memory.use.mb[MEMORY]\",\"flag\":\"true\"}]',1,NULL,'cpu.use.hz[CPU]');
/*!40000 ALTER TABLE `dev_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `create_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_group_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` text COLLATE utf8_unicode_ci,
  `parent_templates` text COLLATE utf8_unicode_ci,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (10084,0,NULL,NULL,'monitor','39.3841','{\"interfaces\":[{\"ip\":\"127.0.0.1\"}]}',NULL,'15','1','Linux');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_process`
--

DROP TABLE IF EXISTS `host_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicationname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `hostgroupid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostgroupname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `hostid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `itemid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_process`
--

LOCK TABLES `host_process` WRITE;
/*!40000 ALTER TABLE `host_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `host_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostgroup`
--

DROP TABLE IF EXISTS `hostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostgroupid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `create_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostid` (`hostgroupid`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostgroup`
--

LOCK TABLES `hostgroup` WRITE;
/*!40000 ALTER TABLE `hostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostmark`
--

DROP TABLE IF EXISTS `hostmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostid` int(11) DEFAULT NULL,
  `createdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostidmark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`hostidmark`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostmark`
--

LOCK TABLES `hostmark` WRITE;
/*!40000 ALTER TABLE `hostmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyvalue`
--

DROP TABLE IF EXISTS `keyvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyvalue` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyvalue`
--

LOCK TABLES `keyvalue` WRITE;
/*!40000 ALTER TABLE `keyvalue` DISABLE KEYS */;
INSERT INTO `keyvalue` VALUES ('ifAdminStatus[{#SNMPVALUE}]','管理接口状态',0),('vfs.fs.size','磁盘容量',1),('net.if.out','网卡出口流量',2),('net.if.in','网卡入口流量',3),('icmppingsec','PING响应时间',4),('agent.ping','监测agent是否存活',5),('vm.memory.size','内存容量',6),('system.uptime','系统运行时间',7),('icmppingloss','PING丢包率',8),('system.swap.size','虚拟内存容量',9),('icmpping','PING存活',10),('custom.vfs.dev.iostats.avgqu','平均请求队列的长度',11),('tcp.status','TCP连接数',12),('systemcpu','CPU使用率',13),('custom.vfs.dev.iostats.util','平均每次请求的服务时间',14),('vfs.fs.inode','目录索引',15),('custom.vfs.dev.iostats.rps','读IO请求数',16),('custom.vfs.dev.iostats.wrqm','队列中每秒钟合并的写请求数量',17),('custom.vfs.dev.iostats.rkB','每秒钟完成的读请求吞吐',18),('custom.vfs.dev.iostats.wps','设备的利用率',19),('custom.vfs.dev.iostats.rrqm','队列中每秒钟合并的读请求数量',20),('system.cpu.util','CPU使用率',21),('custom.vfs.dev.iostats.avgrq','平均请求扇区大小',22),('perf_counter[\\Processor(_Total)\\% Processor Time]','CPU使用率',23),('ifAdminStatus','管理接口状态',24),('ifOutOctets','出口流量',25),('ifInErrors','输入丢包数',26),('ifInOctets','入口流量',27),('ifOutErrors','输出丢包数',28),('ifOperStatus','当前接口状态',29),('dianyuan','电源',30),('fshan','风扇',31),('ifNumber','网络接口数',32),('cpuUtilization5m','5分钟CPU利用率',33),('MemoryPoolUsed','已使用内存',34),('MemoryPoolFree','空闲内存',35),('sysUpTime','系统启动时间',36);
/*!40000 ALTER TABLE `keyvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostgroupid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermedia`
--

DROP TABLE IF EXISTS `usermedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermedia` (
  `id` int(10) NOT NULL,
  `mediatypeid` int(10) DEFAULT NULL,
  `sendto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `severity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(255) NOT NULL,
  `mediaid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermedia`
--

LOCK TABLES `usermedia` WRITE;
/*!40000 ALTER TABLE `usermedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `usermedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zabbixuser`
--

DROP TABLE IF EXISTS `zabbixuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zabbixuser` (
  `id` int(10) unsigned NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `type` int(11) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `groupid` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailmedia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobweixin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messagemedia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wechatmeida` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medias` varchar(1255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mediatype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zabbixuser`
--

LOCK TABLES `zabbixuser` WRITE;
/*!40000 ALTER TABLE `zabbixuser` DISABLE KEYS */;
INSERT INTO `zabbixuser` VALUES (1,'Admin','Administrator','',3,'administrators','7',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL),(2,'guest','','',1,'Guests','8',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zabbixuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-25 15:43:58
