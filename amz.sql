/*
Navicat MySQL Data Transfer

Source Server         : binary
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : binary

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-09-26 09:25:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for amz_comment
-- ----------------------------
DROP TABLE IF EXISTS `amz_comment`;
CREATE TABLE `amz_comment` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reply_time` timestamp NULL DEFAULT NULL,
  `nick_name` varchar(50) NOT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_comment
-- ----------------------------
INSERT INTO `amz_comment` VALUES ('1', '', '最新酷睿笔记本', 'i7超强配置，赶快下手啦!', '2012-08-03 20:56:57', '2012-08-03 20:56:57', '天天', null);
INSERT INTO `amz_comment` VALUES ('2', '1212', null, '1212', '2018-09-20 00:21:13', null, '221', null);
INSERT INTO `amz_comment` VALUES ('3', 'aaaaaaaa', null, 'aaaaaaaaaaaaaaa', '2018-09-25 11:37:55', null, 'aaaaaaaaaaaa', null);
INSERT INTO `amz_comment` VALUES ('4', 'asdfasdf', null, 'asdfsadfsadf', '2018-09-25 11:38:04', null, 'asdfasdf', null);
INSERT INTO `amz_comment` VALUES ('5', 'sadfasdf', null, 'asdfasdf', '2018-09-25 11:38:30', null, 'asdfasdf', null);
INSERT INTO `amz_comment` VALUES ('6', '11111111111111111', null, '111111111111111', '2018-09-25 14:24:30', null, '1111111111', null);

-- ----------------------------
-- Table structure for amz_news
-- ----------------------------
DROP TABLE IF EXISTS `amz_news`;
CREATE TABLE `amz_news` (
  `id` bigint(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_news
-- ----------------------------
INSERT INTO `amz_news` VALUES ('1', '会员特惠月开始', '积分大返利，机不可失失不再来!', '2012-08-03 20:56:50');
INSERT INTO `amz_news` VALUES ('2', '加入会员，赢千万大礼包', '我是会员我快乐啦啦啦啦啦', '2012-08-22 20:56:52');
INSERT INTO `amz_news` VALUES ('3', '积分兑换开始了', '积分兑换开始了积分兑换开始了积分兑换开始了', '2012-08-08 20:56:52');
INSERT INTO `amz_news` VALUES ('4', '配货通知', '开始配货开始配货开始配货开始配货!', '2012-08-18 20:56:52');
INSERT INTO `amz_news` VALUES ('5', '团购阿迪1折起', '团购阿迪1折起团购阿迪1折起团购阿迪1折起！', '2012-08-01 20:56:52');
INSERT INTO `amz_news` VALUES ('6', '汇源果汁大甩卖', '甩卖甩卖甩卖甩卖甩卖甩卖', '2012-08-30 20:56:52');
INSERT INTO `amz_news` VALUES ('7', '苹果手机不要钱', '不要不要钱不要钱不要钱不要钱', '2012-08-29 20:56:52');

-- ----------------------------
-- Table structure for amz_order
-- ----------------------------
DROP TABLE IF EXISTS `amz_order`;
CREATE TABLE `amz_order` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `uaddress` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `money` decimal(10,2) NOT NULL,
  `status` int(6) NOT NULL,
  `type` int(6) NOT NULL,
  `findorderid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_order
-- ----------------------------
INSERT INTO `amz_order` VALUES ('29', '12', 'binaryshi', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-09-26 09:08:17', '276.00', '1', '0', '1');

-- ----------------------------
-- Table structure for amz_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `amz_order_detail`;
CREATE TABLE `amz_order_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `oid` bigint(11) NOT NULL,
  `pid` bigint(11) NOT NULL,
  `quantity` bigint(10) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for amz_product
-- ----------------------------
DROP TABLE IF EXISTS `amz_product`;
CREATE TABLE `amz_product` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` bigint(10) NOT NULL,
  `major_id` bigint(11) NOT NULL,
  `minor_id` bigint(11) NOT NULL,
  `abc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_product
-- ----------------------------
INSERT INTO `amz_product` VALUES ('1', '乐扣普通型保鲜盒圣诞7件套', '圣诞7件套', '69.00', '1975', '2', '7', 'images/product/2.jpg');
INSERT INTO `amz_product` VALUES ('2', '欧珀莱均衡保湿四件套', '均衡保湿四件套', '279.00', '0', '2', '8', 'images/product/3.jpg');
INSERT INTO `amz_product` VALUES ('3', '联想笔记本电脑 高速独立显存', '高速独立显存 I7处理器', '4199.00', '40', '2', '16', 'images/product/4.jpg');
INSERT INTO `amz_product` VALUES ('4', '德菲丝巧克力', '108.00', '100.00', '0', '1', '4', 'images/product/1.jpg');
INSERT INTO `amz_product` VALUES ('5', 'Genius925纯银施华洛世奇水晶吊坠', '华洛世奇水晶吊坠', '69.00', '40', '2', '12', 'images/product/6.jpg');
INSERT INTO `amz_product` VALUES ('6', '利仁2018M福满堂电饼铛 好用实惠', '福满堂电饼铛 好用实惠', '268.00', '49', '2', '15', 'images/product/7.jpg');
INSERT INTO `amz_product` VALUES ('7', '达派高档拉杆箱20寸 经典款式', '高档拉杆箱20寸 经典款式', '198.00', '39', '2', '14', 'images/product/8.jpg');
INSERT INTO `amz_product` VALUES ('8', '爱国者MP4 全屏触摸多格式播放 4G', '全屏触摸多格式播放 4G', '289.00', '39', '2', '11', 'images/product/0.jpg');
INSERT INTO `amz_product` VALUES ('9', '多美滋金装金盾3阶段幼儿配方奶粉', '金盾3阶段幼儿配方奶粉', '186.00', '50', '1', '10', 'images/product/10.jpg');
INSERT INTO `amz_product` VALUES ('10', '德菲丝巧克力', '巧克力500g/盒', '108.00', '91', '1', '10', 'images/product/1.jpg');
INSERT INTO `amz_product` VALUES ('11', '乐扣普通型保鲜盒圣诞7件套', '圣诞7件套', '69.00', '1997', '2', '7', 'images/product/2.jpg');
INSERT INTO `amz_product` VALUES ('12', '欧珀莱均衡保湿四件套', '均衡保湿四件套', '279.00', '47', '2', '8', 'images/product/3.jpg');
INSERT INTO `amz_product` VALUES ('13', '联想笔记本电脑 高速独立显存', '高速独立显存 I7处理器', '4199.00', '50', '2', '16', 'images/product/4.jpg');
INSERT INTO `amz_product` VALUES ('14', '上衣', '红色上衣', '199.00', '92', '2', '19', 'images/product/clothes2.jpg');
INSERT INTO `amz_product` VALUES ('15', 'Genius925纯银施华洛世奇水晶吊坠', '华洛世奇水晶吊坠', '69.00', '50', '2', '12', 'images/product/6.jpg');
INSERT INTO `amz_product` VALUES ('16', '利仁2018M福满堂电饼铛 好用实惠', '福满堂电饼铛 好用实惠', '268.00', '50', '2', '15', 'images/product/7.jpg');
INSERT INTO `amz_product` VALUES ('17', '达派高档拉杆箱20寸 经典款式', '高档拉杆箱20寸 经典款式', '198.00', '50', '2', '14', 'images/product/8.jpg');
INSERT INTO `amz_product` VALUES ('18', '爱国者MP4 全屏触摸多格式播放 4G', '全屏触摸多格式播放 4G', '289.00', '50', '2', '11', 'images/product/0.jpg');
INSERT INTO `amz_product` VALUES ('19', '多美滋金装金盾3阶段幼儿配方奶粉', '金盾3阶段幼儿配方奶粉', '186.00', '50', '1', '10', 'images/product/10.jpg');
INSERT INTO `amz_product` VALUES ('20', '上衣', '夹克', '99.00', '100', '2', '19', 'images/product/clothes3.jpg');
INSERT INTO `amz_product` VALUES ('21', '上衣', '粉色上衣', '96.00', '100', '2', '19', 'images/product/clothes5.jpg');
INSERT INTO `amz_product` VALUES ('22', '上衣', '灰色上衣', '299.00', '100', '2', '19', 'images/product/clothes6.jpg');
INSERT INTO `amz_product` VALUES ('23', '上衣', '红色上衣', '199.00', '100', '2', '19', 'images/product/clothes7.jpg');
INSERT INTO `amz_product` VALUES ('24', '上衣', '银色上衣', '599.00', '91', '2', '19', 'images/product/clothes8.jpg');
INSERT INTO `amz_product` VALUES ('25', '上衣', '蓝色上衣', '399.00', '100', '2', '19', 'images/product/clothes9.jpg');
INSERT INTO `amz_product` VALUES ('26', '上衣', '浅蓝色上衣', '499.00', '100', '2', '19', 'images/product/clothes10.jpg');
INSERT INTO `amz_product` VALUES ('27', '上衣', '白色上衣', '68.00', '100', '2', '19', 'images/product/clothes4.jpg');
INSERT INTO `amz_product` VALUES ('28', '皮鞋', '黑色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes1.jpg');
INSERT INTO `amz_product` VALUES ('29', '皮鞋', '灰色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes2.jpg');
INSERT INTO `amz_product` VALUES ('30', '皮鞋', '蓝色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes3.jpg');
INSERT INTO `amz_product` VALUES ('31', '皮鞋', '灰色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes4.jpg');
INSERT INTO `amz_product` VALUES ('32', '皮鞋', '棕色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes5.jpg');
INSERT INTO `amz_product` VALUES ('33', '皮鞋', '黑色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes6.jpg');
INSERT INTO `amz_product` VALUES ('34', '皮鞋', '黑色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes7.jpg');
INSERT INTO `amz_product` VALUES ('35', '皮鞋', '黑色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes8.jpg');
INSERT INTO `amz_product` VALUES ('36', '皮鞋', '黑色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes9.jpg');
INSERT INTO `amz_product` VALUES ('37', '皮鞋', '黑色皮鞋', '299.00', '100', '21', '14', 'images/product/shoes10.jpg');
INSERT INTO `amz_product` VALUES ('38', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass1.jpg');
INSERT INTO `amz_product` VALUES ('39', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass2.jpg');
INSERT INTO `amz_product` VALUES ('40', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass3.jpg');
INSERT INTO `amz_product` VALUES ('41', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass4.jpg');
INSERT INTO `amz_product` VALUES ('42', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass5.jpg');
INSERT INTO `amz_product` VALUES ('43', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass6.jpg');
INSERT INTO `amz_product` VALUES ('44', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass7.jpg');
INSERT INTO `amz_product` VALUES ('45', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass8.jpg');
INSERT INTO `amz_product` VALUES ('46', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass9.jpg');
INSERT INTO `amz_product` VALUES ('47', '眼镜', '太阳镜', '299.00', '100', '2', '12', 'images/product/sunglass10.jpg');
INSERT INTO `amz_product` VALUES ('48', '电视', '彩电', '1299.00', '100', '2', '15', 'images/product/television1.jpg');
INSERT INTO `amz_product` VALUES ('49', '电视', '彩电', '1299.00', '100', '2', '15', 'images/product/television2.jpg');
INSERT INTO `amz_product` VALUES ('50', '电视', '彩电', '2299.00', '100', '2', '15', 'images/product/television3.jpg');
INSERT INTO `amz_product` VALUES ('51', '电视', '彩电', '2299.00', '100', '2', '15', 'images/product/television4.jpg');
INSERT INTO `amz_product` VALUES ('52', '电视', '彩电', '3299.00', '100', '2', '15', 'images/product/television5.jpg');
INSERT INTO `amz_product` VALUES ('53', '电视', '彩电', '2299.00', '100', '2', '15', 'images/product/television6.jpg');
INSERT INTO `amz_product` VALUES ('54', '电视', '彩电', '4299.00', '100', '2', '15', 'images/product/television7.jpg');
INSERT INTO `amz_product` VALUES ('55', '电视', '彩电', '5299.00', '100', '2', '15', 'images/product/television8.jpg');
INSERT INTO `amz_product` VALUES ('56', '电视', '彩电', '2299.00', '100', '2', '15', 'images/product/television9.jpg');
INSERT INTO `amz_product` VALUES ('57', '电视', '彩电', '6299.00', '100', '2', '15', 'images/product/television10.jpg');
INSERT INTO `amz_product` VALUES ('58', '卡地亚', '见证你的爱情', '22122.00', '100', '2', '13', 'images/product/20.jpg');
INSERT INTO `amz_product` VALUES ('59', '卡地亚', '见证你的爱情', '22122.00', '100', '22', '22', 'images/product/20.jpg');
INSERT INTO `amz_product` VALUES ('60', '双色球', '来吧', '2.00', '1000', '2', '20', 'images/product/21.jpg');
INSERT INTO `amz_product` VALUES ('61', '变形金刚', '大黄蜂', '222.00', '1000', '21', '17', 'images/product/23.jpg');
INSERT INTO `amz_product` VALUES ('62', 'GPS', '导航仪', '2222.00', '1000', '21', '18', 'images/product/24.jpg');

-- ----------------------------
-- Table structure for amz_product_category
-- ----------------------------
DROP TABLE IF EXISTS `amz_product_category`;
CREATE TABLE `amz_product_category` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_product_category
-- ----------------------------
INSERT INTO `amz_product_category` VALUES ('1', '图音', '1');
INSERT INTO `amz_product_category` VALUES ('2', '百货', '2');
INSERT INTO `amz_product_category` VALUES ('4', '音乐', '1');
INSERT INTO `amz_product_category` VALUES ('5', '运动健康', '0');
INSERT INTO `amz_product_category` VALUES ('7', '家居', '2');
INSERT INTO `amz_product_category` VALUES ('8', '美妆', '22');
INSERT INTO `amz_product_category` VALUES ('9', '母婴', '2');
INSERT INTO `amz_product_category` VALUES ('10', '食品', '2');
INSERT INTO `amz_product_category` VALUES ('11', '手机数码', '2');
INSERT INTO `amz_product_category` VALUES ('12', '家居首饰', '2');
INSERT INTO `amz_product_category` VALUES ('13', '手表饰品', '2');
INSERT INTO `amz_product_category` VALUES ('14', '鞋包', '21');
INSERT INTO `amz_product_category` VALUES ('15', '家电', '2');
INSERT INTO `amz_product_category` VALUES ('16', '电脑办公', '2');
INSERT INTO `amz_product_category` VALUES ('17', '玩具文具', '21');
INSERT INTO `amz_product_category` VALUES ('18', '汽车用品', '21');
INSERT INTO `amz_product_category` VALUES ('19', '服饰', '2');
INSERT INTO `amz_product_category` VALUES ('20', '彩票充值', '2');
INSERT INTO `amz_product_category` VALUES ('21', '品牌', '21');
INSERT INTO `amz_product_category` VALUES ('22', '团购', '22');
INSERT INTO `amz_product_category` VALUES ('23', '易买社区', '23');
INSERT INTO `amz_product_category` VALUES ('28', 'qq', '1');

-- ----------------------------
-- Table structure for amz_shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `amz_shop_cart`;
CREATE TABLE `amz_shop_cart` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(11) NOT NULL,
  `pnum` int(9) NOT NULL,
  `uid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_shop_cart
-- ----------------------------

-- ----------------------------
-- Table structure for amz_user
-- ----------------------------
DROP TABLE IF EXISTS `amz_user`;
CREATE TABLE `amz_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(210) NOT NULL,
  `sex` int(1) NOT NULL,
  `birthday` date NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(36) NOT NULL,
  `address` varchar(255) NOT NULL,
  `utype` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `idcardfile` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amz_user
-- ----------------------------
INSERT INTO `amz_user` VALUES ('15', 'admin', '96E79218965EB72C92A549DD5A330112', '0', '1990-01-01', '411484555555555555', 'admin@sina.com', '13598345658', '上海', '0', '1', '', '96350a5f0d37467fa2fda2eeefac4796');

-- ----------------------------
-- View structure for comment
-- ----------------------------
DROP VIEW IF EXISTS `comment`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `comment` AS select `amz_comment`.`id` AS `id`,`amz_comment`.`title` AS `title`,`amz_comment`.`reply` AS `reply`,`amz_comment`.`content` AS `content`,`amz_comment`.`create_time` AS `create_time`,`amz_comment`.`reply_time` AS `reply_time`,`amz_comment`.`nick_name` AS `nick_name`,`amz_comment`.`state` AS `state` from `amz_comment` order by `amz_comment`.`create_time` desc ;

-- ----------------------------
-- View structure for first
-- ----------------------------
DROP VIEW IF EXISTS `first`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `first` AS select `p1`.`id` AS `id`,`p2`.`name` AS `scategory`,`p1`.`name` AS `name`,`p1`.`description` AS `description`,`p1`.`price` AS `price`,`p1`.`stock` AS `stock`,`p1`.`major_id` AS `major_id`,`p1`.`abc` AS `abc`,`p1`.`minor_id` AS `minor_id` from (`amz_product` `p1` join `amz_product_category` `p2`) where (`p1`.`minor_id` = `p2`.`id`) ;

-- ----------------------------
-- View structure for news
-- ----------------------------
DROP VIEW IF EXISTS `news`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `news` AS select `amz_news`.`id` AS `id`,`amz_news`.`title` AS `title`,`amz_news`.`content` AS `content`,`amz_news`.`create_time` AS `create_time` from `amz_news` order by `amz_news`.`create_time` desc ;

-- ----------------------------
-- View structure for second
-- ----------------------------
DROP VIEW IF EXISTS `second`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `second` AS select `first`.`id` AS `id`,`p`.`name` AS `mcategory`,`first`.`scategory` AS `scategory`,`first`.`name` AS `name`,`first`.`description` AS `description`,`first`.`price` AS `price`,`first`.`major_id` AS `majorId`,`first`.`minor_id` AS `minorId`,`first`.`stock` AS `stock`,`first`.`abc` AS `abc`,`p`.`parent_id` AS `parentId` from (`first` left join `amz_product_category` `p` on((`p`.`id` = `first`.`major_id`))) ;
