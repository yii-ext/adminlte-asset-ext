/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.18-log : Database - yii-basic-blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values 
(1,'系统管理',NULL,'/admin/default/index',NULL,NULL,1),
(2,'分配权限',1,'/admin/assignment/index',NULL,NULL,1),
(3,'菜单列表',1,'/admin/menu/index',NULL,NULL,1),
(4,'用户列表',1,'/admin/user/index',NULL,NULL,1),
(5,'角色列表',1,'/admin/role/index',NULL,NULL,1),
(6,'权限列表',1,'/admin/permission/index',NULL,NULL,1),
(7,'路由列表',1,'/admin/route/index',NULL,NULL,1),
(8,'规则列表',1,'/admin/rule/index',NULL,NULL,1),
(9,'博客',NULL,'/adminblog/default/index',NULL,NULL,1),
(10,'分类',9,'/adminblog/catalog/index',NULL,NULL,1),
(11,'文章',9,'/adminblog/post/index',NULL,NULL,1),
(12,'评论',9,'/adminblog/comment/index',NULL,NULL,1),
(13,'标签',9,'/adminblog/tag/index',NULL,NULL,1),
(14,'添加分类',9,'/adminblog/catalog/create',NULL,NULL,0),
(15,'更新分类',9,'/adminblog/catalog/update',NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
