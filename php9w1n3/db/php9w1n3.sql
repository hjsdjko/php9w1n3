-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: php9w1n3
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/php9w1n3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/php9w1n3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/php9w1n3/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinwenxinxi`
--

DROP TABLE IF EXISTS `discussxinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinwenxinxi`
--

LOCK TABLES `discussxinwenxinxi` WRITE;
/*!40000 ALTER TABLE `discussxinwenxinxi` DISABLE KEYS */;
INSERT INTO `discussxinwenxinxi` VALUES (61,'2021-02-21 11:18:34',1,1,'评论内容1','回复内容1'),(62,'2021-02-21 11:18:34',2,2,'评论内容2','回复内容2'),(63,'2021-02-21 11:18:34',3,3,'评论内容3','回复内容3'),(64,'2021-02-21 11:18:34',4,4,'评论内容4','回复内容4'),(65,'2021-02-21 11:18:34',5,5,'评论内容5','回复内容5'),(66,'2021-02-21 11:18:34',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (51,'2021-02-21 11:18:34','标题1','简介1','http://localhost:8080/php9w1n3/upload/news_picture1.jpg','内容1'),(52,'2021-02-21 11:18:34','标题2','简介2','http://localhost:8080/php9w1n3/upload/news_picture2.jpg','内容2'),(53,'2021-02-21 11:18:34','标题3','简介3','http://localhost:8080/php9w1n3/upload/news_picture3.jpg','内容3'),(54,'2021-02-21 11:18:34','标题4','简介4','http://localhost:8080/php9w1n3/upload/news_picture4.jpg','内容4'),(55,'2021-02-21 11:18:34','标题5','简介5','http://localhost:8080/php9w1n3/upload/news_picture5.jpg','内容5'),(56,'2021-02-21 11:18:34','标题6','简介6','http://localhost:8080/php9w1n3/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-21 11:18:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenleibie`
--

DROP TABLE IF EXISTS `xinwenleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenleibie` varchar(200) NOT NULL COMMENT '新闻类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinwenleibie` (`xinwenleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='新闻类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenleibie`
--

LOCK TABLES `xinwenleibie` WRITE;
/*!40000 ALTER TABLE `xinwenleibie` DISABLE KEYS */;
INSERT INTO `xinwenleibie` VALUES (11,'2021-02-21 11:18:34','新闻类别1'),(12,'2021-02-21 11:18:34','新闻类别2'),(13,'2021-02-21 11:18:34','新闻类别3'),(14,'2021-02-21 11:18:34','新闻类别4'),(15,'2021-02-21 11:18:34','新闻类别5'),(16,'2021-02-21 11:18:34','新闻类别6');
/*!40000 ALTER TABLE `xinwenleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenxinxi`
--

DROP TABLE IF EXISTS `xinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenleibie` varchar(200) NOT NULL COMMENT '新闻类别',
  `xinwentupian` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `xinwenshipin` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `xinwenxiangqing` longtext COMMENT '新闻详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='新闻信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenxinxi`
--

LOCK TABLES `xinwenxinxi` WRITE;
/*!40000 ALTER TABLE `xinwenxinxi` DISABLE KEYS */;
INSERT INTO `xinwenxinxi` VALUES (21,'2021-02-21 11:18:34','新闻标题1','新闻类别1','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian1.jpg','','新闻详情1','2021-02-21',1,1,'2021-02-21 19:18:34',1),(22,'2021-02-21 11:18:34','新闻标题2','新闻类别2','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian2.jpg','','新闻详情2','2021-02-21',2,2,'2021-02-21 19:18:34',2),(23,'2021-02-21 11:18:34','新闻标题3','新闻类别3','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian3.jpg','','新闻详情3','2021-02-21',3,3,'2021-02-21 19:18:34',3),(24,'2021-02-21 11:18:34','新闻标题4','新闻类别4','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian4.jpg','','新闻详情4','2021-02-21',4,4,'2021-02-21 19:18:34',4),(25,'2021-02-21 11:18:34','新闻标题5','新闻类别5','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian5.jpg','','新闻详情5','2021-02-21',5,5,'2021-02-21 19:18:34',5),(26,'2021-02-21 11:18:34','新闻标题6','新闻类别6','http://localhost:8080/php9w1n3/upload/xinwenxinxi_xinwentupian6.jpg','','新闻详情6','2021-02-21',6,6,'2021-02-21 19:18:34',6);
/*!40000 ALTER TABLE `xinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2021-02-21 11:18:34','用户1','123456','姓名1','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(32,'2021-02-21 11:18:34','用户2','123456','姓名2','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(33,'2021-02-21 11:18:34','用户3','123456','姓名3','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(34,'2021-02-21 11:18:34','用户4','123456','姓名4','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(35,'2021-02-21 11:18:34','用户5','123456','姓名5','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(36,'2021-02-21 11:18:34','用户6','123456','姓名6','男','http://localhost:8080/php9w1n3/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 21:46:38
