/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.24-log : Database - yii-aws-test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('亚马逊s3管理员','1',1569314590),
('亚马逊s3管理员','3',1569314613),
('亚马逊s3管理员','4',1569314629),
('亚马逊s3管理员','5',1569314643),
('超级管理员','2',1519364455);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
('/admin/*',2,NULL,NULL,NULL,1519364260,1519364260),
('/admin/assignment/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/assignment/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/assignment/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/assignment/revoke',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/assignment/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/default/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/default/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/menu/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/*',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/remove',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/role/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/remove',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/route/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/refresh',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/remove',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/rule/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/user/activate',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/change-password',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/login',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/logout',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/request-password-reset',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/reset-password',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/signup',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/blog/*',2,NULL,NULL,NULL,1547791664,1547791664),
('/blog/category/index',2,NULL,NULL,NULL,1547792253,1547792253),
('/blog/default/index',2,NULL,NULL,NULL,1547791741,1547791741),
('/blog/post/index',2,NULL,NULL,NULL,1547792263,1547792263),
('/blog/type/index',2,NULL,NULL,NULL,1547792232,1547792232),
('/site/deletedir',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/deletefile',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/deletefiles',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/deletefiles2',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/filesajax',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/index',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/searchdir',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/showfiles',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/showfiles2',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/upload',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/zip',2,NULL,NULL,NULL,1569290330,1569290330),
('/site/zippost',2,NULL,NULL,NULL,1569290330,1569290330),
('aws s3管理',2,NULL,NULL,NULL,1569290705,1569290705),
('亚马逊s3管理员',1,NULL,NULL,NULL,1569290843,1569290843),
('公用权限',2,NULL,NULL,NULL,1569314741,1569314741),
('系统管理',2,NULL,NULL,NULL,1519363858,1569290609),
('超级管理员',1,NULL,NULL,NULL,1519363298,1569290815);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values 
('系统管理','/admin/*'),
('系统管理','/admin/assignment/*'),
('系统管理','/admin/assignment/assign'),
('系统管理','/admin/assignment/index'),
('系统管理','/admin/assignment/revoke'),
('系统管理','/admin/assignment/view'),
('系统管理','/admin/default/*'),
('系统管理','/admin/default/index'),
('系统管理','/admin/menu/*'),
('系统管理','/admin/menu/create'),
('系统管理','/admin/menu/delete'),
('系统管理','/admin/menu/index'),
('系统管理','/admin/menu/update'),
('系统管理','/admin/menu/view'),
('系统管理','/admin/permission/*'),
('系统管理','/admin/permission/assign'),
('系统管理','/admin/permission/create'),
('系统管理','/admin/permission/delete'),
('系统管理','/admin/permission/index'),
('系统管理','/admin/permission/remove'),
('系统管理','/admin/permission/update'),
('系统管理','/admin/permission/view'),
('系统管理','/admin/role/*'),
('系统管理','/admin/role/assign'),
('系统管理','/admin/role/create'),
('系统管理','/admin/role/delete'),
('系统管理','/admin/role/index'),
('系统管理','/admin/role/remove'),
('系统管理','/admin/role/update'),
('系统管理','/admin/role/view'),
('系统管理','/admin/route/*'),
('系统管理','/admin/route/assign'),
('系统管理','/admin/route/create'),
('系统管理','/admin/route/index'),
('系统管理','/admin/route/refresh'),
('系统管理','/admin/route/remove'),
('系统管理','/admin/rule/*'),
('系统管理','/admin/rule/create'),
('系统管理','/admin/rule/delete'),
('系统管理','/admin/rule/index'),
('系统管理','/admin/rule/update'),
('系统管理','/admin/rule/view'),
('系统管理','/admin/user/*'),
('系统管理','/admin/user/activate'),
('公用权限','/admin/user/change-password'),
('系统管理','/admin/user/change-password'),
('系统管理','/admin/user/delete'),
('系统管理','/admin/user/index'),
('系统管理','/admin/user/login'),
('公用权限','/admin/user/logout'),
('系统管理','/admin/user/logout'),
('系统管理','/admin/user/request-password-reset'),
('系统管理','/admin/user/reset-password'),
('系统管理','/admin/user/signup'),
('系统管理','/admin/user/view'),
('aws s3管理','/site/deletedir'),
('aws s3管理','/site/deletefile'),
('aws s3管理','/site/deletefiles'),
('aws s3管理','/site/deletefiles2'),
('aws s3管理','/site/filesajax'),
('aws s3管理','/site/index'),
('aws s3管理','/site/searchdir'),
('aws s3管理','/site/showfiles'),
('aws s3管理','/site/showfiles2'),
('aws s3管理','/site/upload'),
('aws s3管理','/site/zip'),
('aws s3管理','/site/zippost'),
('亚马逊s3管理员','aws s3管理'),
('超级管理员','aws s3管理'),
('亚马逊s3管理员','公用权限'),
('超级管理员','系统管理');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
(9,'亚马逊s3管理',NULL,'/site/index',NULL,NULL,1),
(10,'目录列表',9,'/site/index',NULL,NULL,1),
(11,'文件列表',9,'/site/showfiles2',NULL,NULL,1),
(12,'上传Zip',9,'/site/zip',NULL,NULL,1);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1519357116),
('m140506_102106_rbac_init',1519357365),
('m140526_193056_create_module_tbl',1547779576),
('m140602_111327_create_menu_table',1519357123),
('m141107_230213_create_blog_category_table',1547782537),
('m141107_230742_create_blog_post_table',1547782537),
('m141107_232305_add_blog_post_ref_category_fk',1547782538),
('m141108_110957_create_blog_type_table',1547782538),
('m141108_111436_add_blog_post_ref_type_fk',1547782538),
('m141129_130551_create_filemanager_mediafile_table',1547783476),
('m141203_173402_create_filemanager_owners_table',1547783476),
('m141203_175538_add_filemanager_owners_ref_mediafile_fk',1547783476),
('m160312_050000_create_user',1519357123),
('m160616_000010_add_filemanager_tags',1547783477),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1519357365);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values 
(1,'admin1','Ij208jUVshN5NPTkkzSrA0qrAOOch1a8','$2y$13$TrxoY2RZe9zrN8/PryFPmOzd6Fg07yxZTicSwtbv45vZ4Pv.JsnCW',NULL,'admin1@test.com',10,1519362783,1519362783),
(2,'admin','qTuvHmUhZPpIxdU3RpHhgBg3ieTG7rIh','$2y$13$EFKMrsp1MMRHF7E0KXnFJ.x5VZCK.FcLjVEy7AF7KTdDr5iagrnfC',NULL,'admin@t.cn',10,1519363368,1569311663),
(3,'admin2','uQEUbw6bQ6aDDJojATN8uNp-qqFPSzZU','$2y$13$l3cJM8H716H0jZPK0Bf2Z.rjDwbNlAGxkN8kY4Tvs1TIakViVAQvq',NULL,'admin2@a.cn',10,1569313776,1569314881),
(4,'admin3','4k-sGtjqu2I5bwNAbnygWYwA1XpXqiXw','$2y$13$rNAbeq93IrLJRmWWvFeFEOoQlBgwPpFF6TCn.36PM42JZSjqyWAIC',NULL,'3@2.cn',10,1569314521,1569314521),
(5,'admin4','arRK0OumBzwgB6miepJSd98p28YC_jn5','$2y$13$EnelXANI1EP5sSYJPDK5SeFgr8b4sWZqy9aSdfvJQAW/aGV.LY7aa',NULL,'13@2.cn',10,1569314548,1569314548);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
