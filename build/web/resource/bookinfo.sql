/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50709

*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bookinfo`
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookname` varchar(100) NOT NULL DEFAULT '',
  `author` varchar(20) NOT NULL DEFAULT '',
  `press` varchar(50) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO bookinfo VALUES ('1', 'XM详解', '王红丽', '吉林大学出版社', '35');
INSERT INTO bookinfo VALUES ('2', 'JSP技术大全', '张勇', '清华大学出版社', '45');
INSERT INTO bookinfo VALUES ('3', 'Java编程快速入门', '赵坤', '东软电子出版社', '39');
INSERT INTO bookinfo VALUES ('4', '测试1', '张三1', '清华大学出版社1', '34');
INSERT INTO bookinfo VALUES ('9', '测试修改', '李四1', '东软电子出版社1', '26');
