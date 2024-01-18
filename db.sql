/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootc8v27
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootc8v27` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootc8v27`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootc8v27/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootc8v27/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootc8v27/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jianzhixinxi` */

DROP TABLE IF EXISTS `jianzhixinxi`;

CREATE TABLE `jianzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) NOT NULL COMMENT '职位名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhiweijianjie` longtext COMMENT '职位简介',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614996820453 DEFAULT CHARSET=utf8 COMMENT='兼职信息';

/*Data for the table `jianzhixinxi` */

insert  into `jianzhixinxi`(`id`,`addtime`,`zhiweimingcheng`,`tupian`,`zhaopinrenshu`,`xinzidaiyu`,`zhiweijianjie`,`gongzuoneirong`,`faburiqi`,`qiyehao`,`qiyemingcheng`,`lianxiren`,`lianxifangshi`,`dizhi`) values (31,'2021-03-06 10:03:48','职位名称1','http://localhost:8080/springbootc8v27/upload/jianzhixinxi_tupian1.jpg',1,'薪资待遇1','职位简介1','工作内容1','2021-03-06','企业号1','企业名称1','联系人1','联系方式1','地址1'),(32,'2021-03-06 10:03:48','职位名称2','http://localhost:8080/springbootc8v27/upload/jianzhixinxi_tupian2.jpg',2,'薪资待遇2','职位简介2','工作内容2','2021-03-06','企业号2','企业名称2','联系人2','联系方式2','地址2'),(33,'2021-03-06 10:03:49','职位名称3','http://localhost:8080/springbootc8v27/upload/jianzhixinxi_tupian3.jpg',3,'薪资待遇3','职位简介3','工作内容3','2021-03-06','企业号3','企业名称3','联系人3','联系方式3','地址3'),(34,'2021-03-06 10:03:49','职位名称4','http://localhost:8080/springbootc8v27/upload/jianzhixinxi_tupian4.jpg',4,'薪资待遇4','职位简介4','工作内容4','2021-03-06','企业号4','企业名称4','联系人4','联系方式4','地址4'),(35,'2021-03-06 10:03:49','职位名称5','http://localhost:8080/springbootc8v27/upload/jianzhixinxi_tupian5.jpg',5,'薪资待遇5','职位简介5','工作内容5','2021-03-06','企业号5','企业名称5','联系人5','联系方式5','地址5'),(36,'2021-03-06 10:03:49','职位名称6','http://localhost:8080/springbootc8v27/upload/jianzhixinxi_tupian6.jpg',6,'薪资待遇6','职位简介6','工作内容6','2021-03-06','企业号6','企业名称6','联系人6','联系方式6','地址6'),(1614996820452,'2021-03-06 10:13:40','文员','http://localhost:8080/springbootc8v27/upload/1614996795663.jpg',3,'3000-4000','sfdfs','sdfsdfdfdfdf','2021-03-06','企业1','企业名称1','联系人1','13823888881','地址1');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (51,'2021-03-06 10:03:49',1,'用户名1','留言内容1','回复内容1'),(52,'2021-03-06 10:03:49',2,'用户名2','留言内容2','回复内容2'),(53,'2021-03-06 10:03:49',3,'用户名3','留言内容3','回复内容3'),(54,'2021-03-06 10:03:49',4,'用户名4','留言内容4','回复内容4'),(55,'2021-03-06 10:03:49',5,'用户名5','留言内容5','回复内容5'),(56,'2021-03-06 10:03:49',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyehao` varchar(200) NOT NULL COMMENT '企业号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyehao` (`qiyehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`qiyehao`,`mima`,`qiyemingcheng`,`tupian`,`lianxiren`,`lianxifangshi`,`youxiang`,`dizhi`) values (21,'2021-03-06 10:03:48','企业1','123456','企业名称1','http://localhost:8080/springbootc8v27/upload/qiye_tupian1.jpg','联系人1','13823888881','773890001@qq.com','地址1'),(22,'2021-03-06 10:03:48','企业2','123456','企业名称2','http://localhost:8080/springbootc8v27/upload/qiye_tupian2.jpg','联系人2','13823888882','773890002@qq.com','地址2'),(23,'2021-03-06 10:03:48','企业3','123456','企业名称3','http://localhost:8080/springbootc8v27/upload/qiye_tupian3.jpg','联系人3','13823888883','773890003@qq.com','地址3'),(24,'2021-03-06 10:03:48','企业4','123456','企业名称4','http://localhost:8080/springbootc8v27/upload/qiye_tupian4.jpg','联系人4','13823888884','773890004@qq.com','地址4'),(25,'2021-03-06 10:03:48','企业5','123456','企业名称5','http://localhost:8080/springbootc8v27/upload/qiye_tupian5.jpg','联系人5','13823888885','773890005@qq.com','地址5'),(26,'2021-03-06 10:03:48','企业6','123456','企业名称6','http://localhost:8080/springbootc8v27/upload/qiye_tupian6.jpg','联系人6','13823888886','773890006@qq.com','地址6');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'企业1','qiye','企业','zttxtua87ulta54qy6txlfm3o2q3cbd0','2021-03-06 10:07:18','2021-03-06 11:15:33'),(2,1,'abo','users','管理员','glw7tmzzmwjxzhlly152xn32k8ctunc0','2021-03-06 10:07:39','2021-03-06 11:17:47'),(3,11,'用户1','yonghu','用户','phb17n7917efie0rooiyly1kzuk3hf0l','2021-03-06 10:11:38','2021-03-06 11:17:22');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-06 10:03:49');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (11,'2021-03-06 10:03:48','用户1','123456','用户姓名1','http://localhost:8080/springbootc8v27/upload/yonghu_touxiang1.jpg','女','13823888881','773890001@qq.com'),(12,'2021-03-06 10:03:48','用户2','123456','用户姓名2','http://localhost:8080/springbootc8v27/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-06 10:03:48','用户3','123456','用户姓名3','http://localhost:8080/springbootc8v27/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-06 10:03:48','用户4','123456','用户姓名4','http://localhost:8080/springbootc8v27/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-06 10:03:48','用户5','123456','用户姓名5','http://localhost:8080/springbootc8v27/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-06 10:03:48','用户6','123456','用户姓名6','http://localhost:8080/springbootc8v27/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com');

/*Table structure for table `zhiweishenqing` */

DROP TABLE IF EXISTS `zhiweishenqing`;

CREATE TABLE `zhiweishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhiweijianjie` varchar(200) DEFAULT NULL COMMENT '职位简介',
  `gongzuoneirong` varchar(200) DEFAULT NULL COMMENT '工作内容',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614996903441 DEFAULT CHARSET=utf8 COMMENT='职位申请';

/*Data for the table `zhiweishenqing` */

insert  into `zhiweishenqing`(`id`,`addtime`,`zhiweimingcheng`,`zhaopinrenshu`,`xinzidaiyu`,`zhiweijianjie`,`gongzuoneirong`,`qiyehao`,`qiyemingcheng`,`shenqingriqi`,`jianli`,`yonghuming`,`yonghuxingming`,`shoujihaoma`,`sfsh`,`shhf`) values (41,'2021-03-06 10:03:49','职位名称1','招聘人数1','薪资待遇1','职位简介1','工作内容1','企业号1','企业名称1','2021-03-06','','用户名1','用户姓名1','手机号码1','是',''),(42,'2021-03-06 10:03:49','职位名称2','招聘人数2','薪资待遇2','职位简介2','工作内容2','企业号2','企业名称2','2021-03-06','','用户名2','用户姓名2','手机号码2','是',''),(43,'2021-03-06 10:03:49','职位名称3','招聘人数3','薪资待遇3','职位简介3','工作内容3','企业号3','企业名称3','2021-03-06','','用户名3','用户姓名3','手机号码3','是',''),(44,'2021-03-06 10:03:49','职位名称4','招聘人数4','薪资待遇4','职位简介4','工作内容4','企业号4','企业名称4','2021-03-06','','用户名4','用户姓名4','手机号码4','是',''),(45,'2021-03-06 10:03:49','职位名称5','招聘人数5','薪资待遇5','职位简介5','工作内容5','企业号5','企业名称5','2021-03-06','','用户名5','用户姓名5','手机号码5','是',''),(46,'2021-03-06 10:03:49','职位名称6','招聘人数6','薪资待遇6','职位简介6','工作内容6','企业号6','企业名称6','2021-03-06','','用户名6','用户姓名6','手机号码6','是',''),(1614996903440,'2021-03-06 10:15:03','文员','3','3000-4000','sfdfs','sdfsdfdfdfdf','企业1','企业名称1','2021-03-07','http://localhost:8080/springbootc8v27/upload/1614996898800.jpg','用户1','用户姓名1','13823888881','是','请于3月8号下午3点来公司面试');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
