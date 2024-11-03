/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shiyanshikaoqin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiyanshikaoqin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiyanshikaoqin`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banji_name` varchar(200) DEFAULT NULL COMMENT '班级名称 Search111',
  `banji_number` int(11) DEFAULT NULL COMMENT '班级人数',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`banji_name`,`banji_number`,`create_time`) values (22,'一一班',20,'2021-04-09 16:51:58'),(23,'二二班',50,'2021-04-09 16:52:11');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-09 16:44:53'),(2,'sex_types','性别',2,'女',NULL,'2021-04-09 16:44:53'),(3,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-09 16:44:53'),(4,'news_types','公告类型名称',2,'娱乐公告',NULL,'2021-04-09 16:44:53'),(5,'yuyue_types','是否同意',1,'同意',NULL,'2021-04-09 17:28:54'),(6,'yuyue_types','是否同意',2,'拒绝',NULL,'2021-04-09 17:29:03');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'555','123456','张老师',2,'411325198811220523','13526236232','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617958520135.JPG','2021-04-09 16:55:21'),(2,'666','123456','王老师',2,'411325198811221111','13526231111','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617958540897.JPG','2021-04-09 16:55:42'),(3,'222','123456','李老师',2,'411325198811220532','13526236223','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617970563845.jpg','2021-04-09 20:16:42');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',1,'http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617970738863.jpg','2021-04-09 20:19:01','公告详情111\r\n','2021-04-09 20:19:01');

/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuyue_id` int(11) DEFAULT NULL COMMENT '签到课程',
  `qiandao_name` varchar(200) DEFAULT NULL COMMENT '签到人',
  `qiandao_time` timestamp NULL DEFAULT NULL COMMENT '签到时间',
  `qiantui_time` timestamp NULL DEFAULT NULL COMMENT '签退时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='签到';

/*Data for the table `qiandao` */

insert  into `qiandao`(`id`,`yuyue_id`,`qiandao_name`,`qiandao_time`,`qiantui_time`,`create_time`) values (26,23,'王五','2021-04-09 20:10:26',NULL,'2021-04-09 20:10:26'),(27,25,'张三','2021-04-09 20:25:08','2021-04-09 20:29:34','2021-04-09 20:25:08'),(28,22,'张三','2021-04-09 20:25:21','2021-04-09 20:29:39','2021-04-09 20:25:21');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_name` varchar(200) DEFAULT NULL COMMENT '实验室名称 Search111',
  `shiyanshi_weizhi` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `shiyanshi_photo` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `shiyanshi_content` varchar(200) DEFAULT NULL COMMENT '实验室详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`shiyanshi_name`,`shiyanshi_weizhi`,`shiyanshi_photo`,`shiyanshi_content`,`create_time`) values (22,'物理实验室1','三栋一楼','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617958590158.jpg','22222222\r\n','2021-04-09 16:56:33'),(23,'物理实验室2','三栋二楼','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617958603551.jpg','22222222222\r\n','2021-04-09 16:56:46'),(24,'化学实验室1','三栋五楼','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617970693152.jpg','实验室详情实验室详情\r\n','2021-04-09 20:18:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'张老师','jiaoshi','教师','s8tnyi58g4vr4yj0obqk77696i70933e','2021-04-09 19:56:56','2021-04-09 21:05:44'),(4,3,'王五','yonghu','学生','gd5iy7yxslqkrfljwk2x0oc716ft7aqj','2021-04-09 20:10:17','2021-04-09 21:24:29'),(5,1,'admin','users','管理员','ps0f9gjqveceohv88zanrxg3wc5un898','2021-04-09 20:10:36','2021-04-09 21:32:59'),(6,3,'李老师','jiaoshi','教师','ucdejg4amyig10sqe97v3jvoskajk1ht','2021-04-09 20:19:42','2021-04-09 21:19:42'),(7,2,'张三','yonghu','学生','gyycd39pdcq8j1584mr2egva3ur6zpax','2021-04-09 20:24:54','2021-04-09 21:24:55');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `banji_id` int(11) DEFAULT NULL COMMENT '所在班级 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`banji_id`,`create_time`) values (2,'333','123456','张三',1,'411324198011220111','13526235211','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617958477656.JPG',23,'2021-04-09 16:53:47'),(3,'111','123456','王五',2,'411324198011220122','13526235244','http://localhost:8080/shiyanshikaoqin/file/download?fileName=1617958455274.JPG',22,'2021-04-09 16:54:16');

/*Table structure for table `yuyue` */

DROP TABLE IF EXISTS `yuyue`;

CREATE TABLE `yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_id` int(11) DEFAULT NULL COMMENT '预约实验室',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '预约教师',
  `banji_id` int(11) DEFAULT NULL COMMENT '班级',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yuyue_name` varchar(200) DEFAULT NULL COMMENT '所上课程 Search111',
  `yuyue_types` int(11) DEFAULT NULL COMMENT '是否同意 Search111',
  `yuyue_yingdao` int(11) DEFAULT NULL COMMENT '应到人数',
  `yuyue_yidao` int(11) DEFAULT NULL COMMENT '已签到人数',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='实验室预约';

/*Data for the table `yuyue` */

insert  into `yuyue`(`id`,`shiyanshi_id`,`jiaoshi_id`,`banji_id`,`yuyue_time`,`yuyue_name`,`yuyue_types`,`yuyue_yingdao`,`yuyue_yidao`,`create_time`) values (22,23,1,23,'2021-04-10 15:00:00','物理课',1,50,1,'2021-04-09 18:55:06'),(23,22,1,22,'2021-04-06 18:00:00','化学课',1,20,1,'2021-04-09 19:47:00'),(24,22,1,22,'2021-04-09 00:00:00','xxxx课',2,20,0,'2021-04-09 20:06:52'),(25,24,3,23,'2021-04-21 21:00:00','化学课111111111',1,12,1,'2021-04-09 20:21:15'),(26,23,3,22,'2021-04-16 12:00:00','化学课222222222',2,20,0,'2021-04-09 20:21:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
