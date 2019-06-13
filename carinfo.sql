/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : carinfo

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2019-01-13 11:05:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `carid` int(6) NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(10) DEFAULT NULL,
  `describe` varchar(100) DEFAULT NULL,
  `price` double(255,0) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `state` int(3) DEFAULT NULL,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '鲁A88888', 'miaoshu4', '55', '大众', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('2', '鲁J56246', 'test', '112', '奥迪', 'images/2.jpg', '0');
INSERT INTO `car` VALUES ('3', '鲁A56264', '描述3', '110', '奔驰', 'images/car1.jpg', '1');
INSERT INTO `car` VALUES ('4', '鲁B16413', 'miaoshu5', '123', '雷克萨斯', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('5', '鲁C85462', 'miaoshu6', '100', '凯迪拉克', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('6', '鲁AH4651', 'miaoshu7', '112', '玛莎拉蒂', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('7', '鲁J46164', '描述8', '132', '法拉利', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('8', '鲁A12345', 'desc', '111', '奥迪', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('9', '鲁J12345', 'ldfnls', '123', '奔驰', 'images/2.jpg', '1');
INSERT INTO `car` VALUES ('10', '鲁J54321', 'miaoshu', '102', '奔驰', 'images/car1.jpg', '1');
INSERT INTO `car` VALUES ('11', '鲁A85236', 'fffff', '111', '奥迪', 'images/car1.jpg', '1');
INSERT INTO `car` VALUES ('12', '鲁B55555', 'desc', '123', '奔驰', 'images/uploadfiles/1547341787582.png', '1');

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manager` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `actiontime` datetime DEFAULT NULL,
  `ltable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('1', 'admin', 'Log in system', '2019-01-03 16:37:06', 'manager');
INSERT INTO `logs` VALUES ('2', 'admin', 'Log in system', '2019-01-04 14:25:44', 'manager');
INSERT INTO `logs` VALUES ('3', 'admin', 'Log in system', '2019-01-04 16:49:28', 'manager');
INSERT INTO `logs` VALUES ('4', 'admin', 'Log in system', '2019-01-05 10:17:44', 'manager');
INSERT INTO `logs` VALUES ('5', 'admin', 'Log in system', '2019-01-05 15:27:23', 'manager');
INSERT INTO `logs` VALUES ('6', 'admin', 'Log in system', '2019-01-05 16:02:53', 'manager');
INSERT INTO `logs` VALUES ('7', 'admin', 'Change user\'s information', '2019-01-05 16:21:23', 'users');
INSERT INTO `logs` VALUES ('8', 'admin', 'Delete a car', '2019-01-05 16:22:59', 'cars');
INSERT INTO `logs` VALUES ('9', 'admin', 'Log in system', '2019-01-05 16:24:46', 'manager');
INSERT INTO `logs` VALUES ('10', 'admin', 'Change user\'s information', '2019-01-05 16:25:21', 'users');
INSERT INTO `logs` VALUES ('11', 'admin', 'Log out system', '2019-01-05 16:42:54', 'no tables');
INSERT INTO `logs` VALUES ('12', 'admin', 'Log in system', '2019-01-05 16:45:36', 'manager');
INSERT INTO `logs` VALUES ('13', 'admin', 'Log out system', '2019-01-05 16:45:39', 'no tables');
INSERT INTO `logs` VALUES ('14', null, 'Log out system', '2019-01-06 09:17:28', 'no tables');
INSERT INTO `logs` VALUES ('15', null, 'Log out system', '2019-01-06 09:36:19', 'no tables');
INSERT INTO `logs` VALUES ('16', null, 'Log out system', '2019-01-06 10:21:58', 'no tables');
INSERT INTO `logs` VALUES ('17', null, 'Log out system', '2019-01-06 10:22:06', 'no tables');
INSERT INTO `logs` VALUES ('18', null, 'Log out system', '2019-01-06 14:37:06', 'no tables');
INSERT INTO `logs` VALUES ('19', 'admin', 'Log in system', '2019-01-06 14:37:16', 'manager');
INSERT INTO `logs` VALUES ('20', 'admin', 'Log out system', '2019-01-06 15:41:59', 'no tables');
INSERT INTO `logs` VALUES ('21', null, 'Log out system', '2019-01-06 15:47:10', 'no tables');
INSERT INTO `logs` VALUES ('22', 'admin', 'Log in system', '2019-01-06 15:47:23', 'manager');
INSERT INTO `logs` VALUES ('23', 'admin', 'Log in system', '2019-01-06 15:49:25', 'manager');
INSERT INTO `logs` VALUES ('24', 'admin', 'Log in system', '2019-01-06 15:50:20', 'manager');
INSERT INTO `logs` VALUES ('25', 'admin', 'Log in system', '2019-01-06 15:50:31', 'manager');
INSERT INTO `logs` VALUES ('26', 'admin', 'Log in system', '2019-01-06 16:39:12', 'manager');
INSERT INTO `logs` VALUES ('27', 'admin', 'Log in system', '2019-01-07 14:24:17', 'manager');
INSERT INTO `logs` VALUES ('28', 'admin', 'Log in system', '2019-01-07 14:43:16', 'manager');
INSERT INTO `logs` VALUES ('29', 'admin', 'Log in system', '2019-01-07 14:53:06', 'manager');
INSERT INTO `logs` VALUES ('30', 'admin', 'Log in system', '2019-01-07 15:01:52', 'manager');
INSERT INTO `logs` VALUES ('31', 'admin', 'Log in system', '2019-01-07 15:46:40', 'manager');
INSERT INTO `logs` VALUES ('32', 'admin', 'Return a car', '2019-01-07 16:15:41', 'orders');
INSERT INTO `logs` VALUES ('33', 'admin', 'Log in system', '2019-01-07 16:48:45', 'manager');
INSERT INTO `logs` VALUES ('34', 'admin', 'Add a narmal user', '2019-01-07 16:48:58', 'users');
INSERT INTO `logs` VALUES ('35', 'admin', 'Change user\'s information', '2019-01-07 16:59:33', 'users');
INSERT INTO `logs` VALUES ('36', 'admin', 'Log out system', '2019-01-07 17:04:52', 'no tables');
INSERT INTO `logs` VALUES ('37', 'admin', 'Log in system', '2019-01-07 17:07:03', 'manager');
INSERT INTO `logs` VALUES ('38', 'admin', 'Log in system', '2019-01-08 08:33:27', 'manager');
INSERT INTO `logs` VALUES ('39', 'admin', 'Add a narmal user', '2019-01-08 08:36:46', 'users');
INSERT INTO `logs` VALUES ('40', 'admin', 'Log in system', '2019-01-08 15:30:32', 'manager');
INSERT INTO `logs` VALUES ('41', 'admin', 'Log in system', '2019-01-08 16:34:06', 'manager');
INSERT INTO `logs` VALUES ('42', 'admin', 'Log in system', '2019-01-08 16:43:40', 'manager');
INSERT INTO `logs` VALUES ('43', 'admin', 'Log in system', '2019-01-08 17:09:39', 'manager');
INSERT INTO `logs` VALUES ('44', 'admin', 'Log in system', '2019-01-08 17:12:03', 'manager');
INSERT INTO `logs` VALUES ('45', 'admin', 'Log in system', '2019-01-09 08:28:21', 'manager');
INSERT INTO `logs` VALUES ('46', 'admin', 'Log in system', '2019-01-09 09:00:58', 'manager');
INSERT INTO `logs` VALUES ('47', 'admin', 'Log in system', '2019-01-09 10:52:26', 'manager');
INSERT INTO `logs` VALUES ('48', 'admin', 'Log in system', '2019-01-09 15:22:28', 'manager');
INSERT INTO `logs` VALUES ('49', 'admin', 'Log in system', '2019-01-09 15:56:43', 'manager');
INSERT INTO `logs` VALUES ('50', 'admin', 'Change user\'s information', '2019-01-09 16:04:25', 'users');
INSERT INTO `logs` VALUES ('51', 'admin', 'Return a car', '2019-01-09 16:13:13', 'orders');
INSERT INTO `logs` VALUES ('52', 'admin', 'Return a car', '2019-01-09 16:15:26', 'orders');
INSERT INTO `logs` VALUES ('53', 'admin', 'Return a car', '2019-01-09 16:17:20', 'orders');
INSERT INTO `logs` VALUES ('54', 'admin', 'Log in system', '2019-01-09 16:21:19', 'manager');
INSERT INTO `logs` VALUES ('55', 'admin', 'Log in system', '2019-01-09 16:34:03', 'manager');
INSERT INTO `logs` VALUES ('56', 'admin', 'Log in system', '2019-01-10 08:43:00', 'manager');
INSERT INTO `logs` VALUES ('57', 'admin', 'Log in system', '2019-01-10 09:00:02', 'manager');
INSERT INTO `logs` VALUES ('58', 'admin', 'Log in system', '2019-01-10 09:30:20', 'manager');
INSERT INTO `logs` VALUES ('59', 'admin', 'Log in system', '2019-01-10 09:41:08', 'manager');
INSERT INTO `logs` VALUES ('60', 'admin', 'Log out system', '2019-01-10 10:21:46', 'no tables');
INSERT INTO `logs` VALUES ('61', 'admin', 'Log in system', '2019-01-10 10:22:25', 'manager');
INSERT INTO `logs` VALUES ('62', 'admin', 'Log in system', '2019-01-10 10:23:42', 'manager');
INSERT INTO `logs` VALUES ('63', 'admin', 'Log in system', '2019-01-10 16:06:41', 'manager');
INSERT INTO `logs` VALUES ('64', 'admin', 'Add a new car', '2019-01-10 16:07:52', 'car');
INSERT INTO `logs` VALUES ('65', 'admin', 'Log in system', '2019-01-11 14:38:05', 'manager');
INSERT INTO `logs` VALUES ('66', 'admin', 'Log in system', '2019-01-11 15:25:46', 'manager');
INSERT INTO `logs` VALUES ('67', 'admin', 'Log in system', '2019-01-11 15:47:29', 'manager');
INSERT INTO `logs` VALUES ('68', 'admin', 'Log in system', '2019-01-11 15:55:29', 'manager');
INSERT INTO `logs` VALUES ('69', 'admin', 'Log in system', '2019-01-11 15:57:17', 'manager');
INSERT INTO `logs` VALUES ('70', 'admin', 'Log in system', '2019-01-11 16:09:25', 'manager');
INSERT INTO `logs` VALUES ('71', 'admin', 'Log in system', '2019-01-11 16:44:48', 'manager');
INSERT INTO `logs` VALUES ('72', 'admin', 'Log in system', '2019-01-11 16:45:03', 'manager');
INSERT INTO `logs` VALUES ('73', 'admin', 'Log in system', '2019-01-11 16:55:16', 'manager');
INSERT INTO `logs` VALUES ('74', 'admin', 'Log out system', '2019-01-11 16:59:49', 'no tables');
INSERT INTO `logs` VALUES ('75', 'admin', 'Log in system', '2019-01-13 08:35:53', 'manager');
INSERT INTO `logs` VALUES ('76', 'admin', 'Log out system', '2019-01-13 08:36:18', 'no tables');
INSERT INTO `logs` VALUES ('77', 'admin', 'Log in system', '2019-01-13 08:36:35', 'manager');
INSERT INTO `logs` VALUES ('78', 'admin', 'Log out system', '2019-01-13 08:38:43', 'no tables');
INSERT INTO `logs` VALUES ('79', 'admin', 'Log in system', '2019-01-13 09:00:18', 'manager');
INSERT INTO `logs` VALUES ('80', 'admin', 'Log in system', '2019-01-13 09:03:09', 'manager');
INSERT INTO `logs` VALUES ('81', 'admin', 'Log out system', '2019-01-13 09:04:23', 'no tables');
INSERT INTO `logs` VALUES ('82', 'admin', 'Log in system', '2019-01-13 09:04:29', 'manager');
INSERT INTO `logs` VALUES ('83', 'admin', 'Log in system', '2019-01-13 09:05:57', 'manager');
INSERT INTO `logs` VALUES ('84', 'admin', 'Log in system', '2019-01-13 09:06:40', 'manager');
INSERT INTO `logs` VALUES ('85', 'admin', 'Log out system', '2019-01-13 09:07:03', 'no tables');
INSERT INTO `logs` VALUES ('86', 'admin', 'Log out system', '2019-01-13 09:07:29', 'no tables');
INSERT INTO `logs` VALUES ('87', null, 'Add a new car', '2019-01-13 09:09:50', 'car');
INSERT INTO `logs` VALUES ('88', 'admin', 'Log in system', '2019-01-13 09:14:35', 'manager');
INSERT INTO `logs` VALUES ('89', null, 'Add a order', '2019-01-13 09:25:02', 'orders');
INSERT INTO `logs` VALUES ('90', 'admin', 'Log in system', '2019-01-13 09:26:02', 'manager');
INSERT INTO `logs` VALUES ('91', 'admin', 'Log out system', '2019-01-13 09:32:30', 'no tables');
INSERT INTO `logs` VALUES ('92', null, 'Log out system', '2019-01-13 09:33:00', 'no tables');
INSERT INTO `logs` VALUES ('93', 'admin', 'Log in system', '2019-01-13 09:33:08', 'manager');
INSERT INTO `logs` VALUES ('94', null, 'Add a order', '2019-01-13 09:37:08', 'orders');
INSERT INTO `logs` VALUES ('95', 'admin', 'Return a car', '2019-01-13 10:01:12', 'orders');
INSERT INTO `logs` VALUES ('96', 'admin', 'Log in system', '2019-01-13 10:02:45', 'manager');
INSERT INTO `logs` VALUES ('97', null, 'Add a order', '2019-01-13 10:03:47', 'orders');
INSERT INTO `logs` VALUES ('98', 'admin', 'Log in system', '2019-01-13 10:52:38', 'manager');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('admin', 'hello');
INSERT INTO `manager` VALUES ('ch', 'hello');
INSERT INTO `manager` VALUES ('cuihui', '123456');
INSERT INTO `manager` VALUES ('hhh', '123');
INSERT INTO `manager` VALUES ('mytest', '123456');
INSERT INTO `manager` VALUES ('test', '1223');
INSERT INTO `manager` VALUES ('zhanghao', '123456');
INSERT INTO `manager` VALUES ('王五', 'hello');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `carid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `returntime` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `state` int(3) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '7', '2', '2019-01-09 00:00:00', '2019-01-09 16:13:13', '132', '1');
INSERT INTO `orders` VALUES ('2', '2', '11', '2019-01-09 00:00:00', '2019-01-09 16:15:26', '112', '1');
INSERT INTO `orders` VALUES ('3', '4', '2', '2019-01-09 00:00:00', '2019-01-09 16:17:20', '123', '1');
INSERT INTO `orders` VALUES ('4', '3', '11', '2019-01-09 00:00:00', '2019-01-13 10:01:43', '440', '1');
INSERT INTO `orders` VALUES ('5', '2', '2', '2019-01-13 00:00:00', '2019-01-14 00:00:00', '110', '1');
INSERT INTO `orders` VALUES ('6', '3', '2', '2019-01-13 00:00:00', '2019-01-13 10:01:12', '110', '1');
INSERT INTO `orders` VALUES ('7', '2', '2', '2019-01-13 00:00:00', '2019-01-15 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for `userpwd`
-- ----------------------------
DROP TABLE IF EXISTS `userpwd`;
CREATE TABLE `userpwd` (
  `qmail` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`qmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userpwd
-- ----------------------------
INSERT INTO `userpwd` VALUES ('508902084@qq.com', 'hello');
INSERT INTO `userpwd` VALUES ('956622792@qq.com', 'hello');
INSERT INTO `userpwd` VALUES ('bbb@qq.com', 'q');
INSERT INTO `userpwd` VALUES ('ccc@qq.com', 'hello');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `idcard` varchar(19) DEFAULT NULL,
  `qmail` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '张三', '12345678912', '山东省泰安市', '88888', '991136904@qq.com');
INSERT INTO `users` VALUES ('2', 'tom', '777777', '山东省', '123456', '508902084@qq.com');
INSERT INTO `users` VALUES ('4', '李四', '88888', '山东省', '566215622', 'kkkkkk@qq.com');
INSERT INTO `users` VALUES ('5', '王佳庆', '53161633', '济南市', '132491', 'aaa@qq.com');
INSERT INTO `users` VALUES ('6', '赵汉卿', '166264916', 'usa', '1646296416', 'bbbbb@qq.com');
INSERT INTO `users` VALUES ('11', 'helloworld', '77777', '山东省', '88888888', '956622792@qq.com');
