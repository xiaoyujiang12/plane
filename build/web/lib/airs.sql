/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : airs

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2021-12-19 10:05:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for airticket
-- ----------------------------
DROP TABLE IF EXISTS `airticket`;
CREATE TABLE `airticket` (
  `aflightnumber` varchar(50) NOT NULL,
  `aseat` varchar(20) NOT NULL,
  `price` float(20,2) NOT NULL,
  PRIMARY KEY (`aflightnumber`,`aseat`),
  KEY `aseat` (`aseat`),
  CONSTRAINT `airticket_ibfk_1` FOREIGN KEY (`aflightnumber`) REFERENCES `flight` (`flightnumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of airticket
-- ----------------------------
INSERT INTO `airticket` VALUES ('12', '5', '45.00');
INSERT INTO `airticket` VALUES ('15', '2', '500.00');

-- ----------------------------
-- Table structure for dinggou
-- ----------------------------
DROP TABLE IF EXISTS `dinggou`;
CREATE TABLE `dinggou` (
  `ss` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xm` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flightnumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dinggou
-- ----------------------------
INSERT INTO `dinggou` VALUES ('efw', 'wgw', 'eg', '15');
INSERT INTO `dinggou` VALUES ('efw', 'wgw', 'eg', '15');
INSERT INTO `dinggou` VALUES ('1258', 'xxx', '15011', '15');
INSERT INTO `dinggou` VALUES ('1258', 'siufh', '5215', '12');
INSERT INTO `dinggou` VALUES ('1254', 'vhkk', '15889', '12');
INSERT INTO `dinggou` VALUES ('111111', 'hhhh', '1456', '12');
INSERT INTO `dinggou` VALUES ('1598', 'kmk', '1594', '12');
INSERT INTO `dinggou` VALUES ('12165', 'dfzf', '1565', '12');

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `flightnumber` varchar(50) NOT NULL,
  `start` varchar(50) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `finish` varchar(50) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `starttime` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `finishtime` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  PRIMARY KEY (`flightnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES ('12', '北京', '天津', '14', '15');
INSERT INTO `flight` VALUES ('14', '北京', '天津', '15', '2');
INSERT INTO `flight` VALUES ('15', '天津', '北京', '1', '2');
INSERT INTO `flight` VALUES ('1836', '天津', '新疆', '16', '24');
INSERT INTO `flight` VALUES ('227', '成都', '西藏', '5', '19');
INSERT INTO `flight` VALUES ('23', '天津', '北京', '16', '17');
INSERT INTO `flight` VALUES ('24', '济南', '上海', '19', '10');
INSERT INTO `flight` VALUES ('27', '天津', '北京', '12', '13');
INSERT INTO `flight` VALUES ('28', '天津', '上海', '10', '15');
INSERT INTO `flight` VALUES ('346', '北京', '成都', '12', '15');
INSERT INTO `flight` VALUES ('5', '成都', '西藏', '7', '23');
INSERT INTO `flight` VALUES ('5489', '天津', '新疆', '8', '12');

-- ----------------------------
-- Table structure for guanliyuan
-- ----------------------------
DROP TABLE IF EXISTS `guanliyuan`;
CREATE TABLE `guanliyuan` (
  `user` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of guanliyuan
-- ----------------------------
INSERT INTO `guanliyuan` VALUES ('12345678912345678', '123');
INSERT INTO `guanliyuan` VALUES ('12345678923456789', '123');
INSERT INTO `guanliyuan` VALUES ('54689678912345678', '123');
INSERT INTO `guanliyuan` VALUES ('123', '123');

-- ----------------------------
-- Table structure for liuyanban
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `liuyan` varchar(500) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('11', 'dshvuf');
INSERT INTO `liuyanban` VALUES ('1222', 'dshvuf');
INSERT INTO `liuyanban` VALUES ('333', 'vvv');
INSERT INTO `liuyanban` VALUES ('243432', 'wfef');
INSERT INTO `liuyanban` VALUES ('332623', 'efefew');
INSERT INTO `liuyanban` VALUES ('', '请说明您要投诉的内容');
INSERT INTO `liuyanban` VALUES ('asjhuasg', 'hcutcvhufhjbhj');
INSERT INTO `liuyanban` VALUES ('sajuiah', '座位增宽');
INSERT INTO `liuyanban` VALUES ('555', 'jnjnp');
INSERT INTO `liuyanban` VALUES ('eergre', 'regregeg');
INSERT INTO `liuyanban` VALUES ('fddf', 'fdgzdf');

-- ----------------------------
-- Table structure for zhuce
-- ----------------------------
DROP TABLE IF EXISTS `zhuce`;
CREATE TABLE `zhuce` (
  `user` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of zhuce
-- ----------------------------
INSERT INTO `zhuce` VALUES ('123', '123');
INSERT INTO `zhuce` VALUES ('12345', '123');
INSERT INTO `zhuce` VALUES ('123456', '123');
INSERT INTO `zhuce` VALUES ('123456789123487854', '123');
INSERT INTO `zhuce` VALUES ('123456789987654321', '123');
INSERT INTO `zhuce` VALUES ('128356777383716663', '123');
INSERT INTO `zhuce` VALUES ('128373654383444663', '456');
INSERT INTO `zhuce` VALUES ('128373654383716663', '456');
INSERT INTO `zhuce` VALUES ('128376777383716663', '123');
INSERT INTO `zhuce` VALUES ('198386376488333566', '123');
