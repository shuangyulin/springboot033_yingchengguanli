/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootm3kwm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootm3kwm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootm3kwm`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-25 12:40:23',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-25 12:40:23',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-25 12:40:23',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-25 12:40:23',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-25 12:40:23',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-25 12:40:23',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616650174628 DEFAULT CHARSET=utf8 COMMENT='在线咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-25 12:40:23',1,1,'提问1','回复1',1),(62,'2021-03-25 12:40:23',2,2,'提问2','回复2',2),(63,'2021-03-25 12:40:23',3,3,'提问3','回复3',3),(64,'2021-03-25 12:40:23',4,4,'提问4','回复4',4),(65,'2021-03-25 12:40:23',5,5,'提问5','回复5',5),(66,'2021-03-25 12:40:23',6,6,'提问6','回复6',6),(1616650148365,'2021-03-25 13:29:07',1616649991364,NULL,'请问古董局中局什么时候上映',NULL,0),(1616650174627,'2021-03-25 13:29:34',1616649991364,1,NULL,'5月1日',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootm3kwm/upload/1616649800746.jpg'),(2,'picture2','http://localhost:8080/springbootm3kwm/upload/1616649964821.jpg'),(3,'picture3','http://localhost:8080/springbootm3kwm/upload/1616649971607.jpeg'),(6,'homepage',NULL);

/*Table structure for table `dianyingleixing` */

DROP TABLE IF EXISTS `dianyingleixing`;

CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1616649850355 DEFAULT CHARSET=utf8 COMMENT='电影类型';

/*Data for the table `dianyingleixing` */

insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (21,'2021-03-25 12:40:23','爱情片'),(22,'2021-03-25 12:40:23','动作片'),(23,'2021-03-25 12:40:23','科幻片'),(24,'2021-03-25 12:40:23','文艺片'),(25,'2021-03-25 12:40:23','动漫片'),(26,'2021-03-25 12:40:23','悬疑片'),(1616649850354,'2021-03-25 13:24:09','喜剧片');

/*Table structure for table `dianyingxinxi` */

DROP TABLE IF EXISTS `dianyingxinxi`;

CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616649921033 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianyingxinxi` */

insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (41,'2021-03-25 12:40:23','电影名称1','动作片','http://localhost:8080/springbootm3kwm/upload/1616649682125.jpg','导演1','主演1','2021-03-25 12:40:23','片长1','','<p>电影简介1</p>','放映厅1','2021-03-25 12:40:23','2021-03-25 13:27:15',11,99.9,20,'1,3,5,7,9'),(42,'2021-03-25 12:40:23','电影名称2','动漫片','http://localhost:8080/springbootm3kwm/upload/1616649694923.jpg','导演2','主演2','2021-03-25 12:40:23','片长2','','<p>电影简介2</p>','放映厅2','2021-03-25 12:40:23','2021-03-25 13:23:25',5,99.9,20,'1,3,5,7,9'),(43,'2021-03-25 12:40:23','电影名称3','悬疑片','http://localhost:8080/springbootm3kwm/upload/1616649704095.jpg','导演3','主演3','2021-03-25 12:40:23','片长3','','<p>电影简介3</p>','放映厅3','2021-03-25 12:40:23','2021-03-25 13:21:38',4,99.9,20,'1,3,5,7,9'),(44,'2021-03-25 12:40:23','电影名称4','文艺片','http://localhost:8080/springbootm3kwm/upload/1616649713713.jpg','导演4','主演4','2021-03-25 12:40:23','片长4','','<p>电影简介4</p>','放映厅4','2021-03-25 12:40:23','2021-03-25 13:21:48',5,99.9,20,'1,3,5,7,9'),(45,'2021-03-25 12:40:23','电影名称5','爱情片','http://localhost:8080/springbootm3kwm/upload/1616649724206.jpg','导演5','主演5','2021-03-25 12:40:23','片长5','','<p>电影简介5</p>','放映厅5','2021-03-25 12:40:23','2021-03-25 13:21:58',6,99.9,20,'1,3,5,7,9'),(46,'2021-03-25 12:40:23','电影名称6','科幻片','http://localhost:8080/springbootm3kwm/upload/1616649737033.jpg','导演6','主演6','2021-03-25 12:40:23','片长6','','<p>电影简介6</p>','放映厅6','2021-03-25 12:40:23','2021-03-25 13:22:08',7,99.9,20,'1,3,5,7,9'),(1616649921032,'2021-03-25 13:25:20','你好，李焕英','喜剧片','http://localhost:8080/springbootm3kwm/upload/1616649874410.jpg','贾玲','贾玲张小斐','2021-02-12 08:00:00','128分钟','http://localhost:8080/springbootm3kwm/upload/1616649902137.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','1号厅','2021-03-26 10:00:00','2021-03-25 13:32:38',5,45,40,'1,2,3,15,16');

/*Table structure for table `discussdianyingxinxi` */

DROP TABLE IF EXISTS `discussdianyingxinxi`;

CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616650355326 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

/*Data for the table `discussdianyingxinxi` */

insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-25 12:40:23',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-25 12:40:23',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-25 12:40:23',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-25 12:40:23',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-25 12:40:23',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-25 12:40:23',6,6,'用户名6','评论内容6','回复内容6'),(1616650355325,'2021-03-25 13:32:35',1616649921032,1616649991364,'1','看了你好，李焕英，让我想起了小时候跟妈妈去工厂车间的场景，感谢贾玲，让我想起萦绕在脑海中的那句话，一定要让妈妈高兴',NULL);

/*Table structure for table `fangyingting` */

DROP TABLE IF EXISTS `fangyingting`;

CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1616649857729 DEFAULT CHARSET=utf8 COMMENT='放映厅';

/*Data for the table `fangyingting` */

insert  into `fangyingting`(`id`,`addtime`,`fangyingting`) values (31,'2021-03-25 12:40:23','放映厅1'),(32,'2021-03-25 12:40:23','放映厅2'),(33,'2021-03-25 12:40:23','放映厅3'),(34,'2021-03-25 12:40:23','放映厅4'),(35,'2021-03-25 12:40:23','放映厅5'),(36,'2021-03-25 12:40:23','放映厅6'),(1616649857728,'2021-03-25 13:24:16','1号厅');

/*Table structure for table `goupiaotongji` */

DROP TABLE IF EXISTS `goupiaotongji`;

CREATE TABLE `goupiaotongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `goupiaoshuliang` int(11) DEFAULT NULL COMMENT '购票数量',
  `goupiaojine` int(11) DEFAULT NULL COMMENT '购票金额',
  `goupiaoriqi` date DEFAULT NULL COMMENT '购票日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616650419056 DEFAULT CHARSET=utf8 COMMENT='购票统计';

/*Data for the table `goupiaotongji` */

insert  into `goupiaotongji`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`yonghuming`,`lianxidianhua`,`goupiaoshuliang`,`goupiaojine`,`goupiaoriqi`,`beizhu`) values (51,'2021-03-25 12:40:23','电影名称1','类型1','http://localhost:8080/springbootm3kwm/upload/goupiaotongji_haibao1.jpg','导演1','用户名1','联系电话1',1,1,'2021-03-25','备注1'),(52,'2021-03-25 12:40:23','电影名称2','类型2','http://localhost:8080/springbootm3kwm/upload/goupiaotongji_haibao2.jpg','导演2','用户名2','联系电话2',2,2,'2021-03-25','备注2'),(53,'2021-03-25 12:40:23','电影名称3','类型3','http://localhost:8080/springbootm3kwm/upload/goupiaotongji_haibao3.jpg','导演3','用户名3','联系电话3',3,3,'2021-03-25','备注3'),(54,'2021-03-25 12:40:23','电影名称4','类型4','http://localhost:8080/springbootm3kwm/upload/goupiaotongji_haibao4.jpg','导演4','用户名4','联系电话4',4,4,'2021-03-25','备注4'),(55,'2021-03-25 12:40:23','电影名称5','类型5','http://localhost:8080/springbootm3kwm/upload/goupiaotongji_haibao5.jpg','导演5','用户名5','联系电话5',5,5,'2021-03-25','备注5'),(56,'2021-03-25 12:40:23','电影名称6','类型6','http://localhost:8080/springbootm3kwm/upload/goupiaotongji_haibao6.jpg','导演6','用户名6','联系电话6',6,6,'2021-03-25','备注6'),(1616650419055,'2021-03-25 13:33:38','你好，李焕英','喜剧片','http://localhost:8080/springbootm3kwm/upload/1616649874410.jpg','贾玲','1','12312312312',2,90,'2021-03-29',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616649952035 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-25 12:40:23','标题1','简介1','http://localhost:8080/springbootm3kwm/upload/1616649745448.jpg','<p>内容1</p>'),(102,'2021-03-25 12:40:23','标题2','简介2','http://localhost:8080/springbootm3kwm/upload/1616649752646.jpg','<p>内容2</p>'),(103,'2021-03-25 12:40:23','标题3','简介3','http://localhost:8080/springbootm3kwm/upload/1616649768004.jpg','<p>内容3</p>'),(104,'2021-03-25 12:40:23','标题4','简介4','http://localhost:8080/springbootm3kwm/upload/1616649774890.jpg','<p>内容4</p>'),(105,'2021-03-25 12:40:23','标题5','简介5','http://localhost:8080/springbootm3kwm/upload/1616649782205.jpg','<p>内容5</p>'),(106,'2021-03-25 12:40:23','标题6','简介6','http://localhost:8080/springbootm3kwm/upload/1616649790263.jpg','<p>内容6</p>'),(1616649952034,'2021-03-25 13:25:51','新电影上映','新电影','http://localhost:8080/springbootm3kwm/upload/1616649939494.jpg','<p>影片上映资讯</p><p><img src=\"http://localhost:8080/springbootm3kwm/upload/1616649950007.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616650126099 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616650126098,'2021-03-25 13:28:45','202132513284448935864','dianyingxinxi',1616649991364,1616649921032,'你好，李焕英','http://localhost:8080/springbootm3kwm/upload/1616649874410.jpg',2,45,45,90,90,1,'已完成','15,16');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616650099991 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616650099990,'2021-03-25 13:28:19',1616649991364,1616649921032,'dianyingxinxi','你好，李焕英','http://localhost:8080/springbootm3kwm/upload/1616649874410.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,12,'用户2','yonghu','用户','ddb2uwhrauh0prlw7ut191gpwb8h96jb','2021-03-25 12:41:27','2021-03-25 13:41:28'),(2,1,'abo','users','管理员','r7rvsv6pg1h6h9dp7q8q6i0f318tj4pr','2021-03-25 13:20:27','2021-03-25 14:32:47'),(3,1616649991364,'1','yonghu','用户','ihc1c5zdsemb968dku2rm9cw4lrz8csa','2021-03-25 13:26:36','2021-03-25 14:31:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-25 12:40:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616649991365 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-03-25 12:40:23','用户1','123456','姓名1','http://localhost:8080/springbootm3kwm/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-25 12:40:23','用户2','123456','姓名2','http://localhost:8080/springbootm3kwm/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-25 12:40:23','用户3','123456','姓名3','http://localhost:8080/springbootm3kwm/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-25 12:40:23','用户4','123456','姓名4','http://localhost:8080/springbootm3kwm/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-25 12:40:23','用户5','123456','姓名5','http://localhost:8080/springbootm3kwm/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-25 12:40:23','用户6','123456','姓名6','http://localhost:8080/springbootm3kwm/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616649991364,'2021-03-25 13:26:31','1','1','陈一','http://localhost:8080/springbootm3kwm/upload/1616650004741.jpg','女','12312312312',210);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
