/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : bookshelf

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2018-10-27 10:01:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float(11,2) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `ISBN` varchar(50) NOT NULL,
  `coursecode` varchar(50) NOT NULL,
  `picturepath` varchar(100) NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('9', 'zhangbin', '10.00', '0', 'asdf', '1232', '8\\13', '0', '8QMUDFDEE83V0J5B8GHR1Y3UJ0SK7EZO.jpg');
INSERT INTO `book` VALUES ('11', 'sdf', '10.00', '0', 'asdf', '1232', '1\\9', '1', 'DQFGJW12O035YGB9NNTVM7SBBPV15I02.jpg');
INSERT INTO `book` VALUES ('12', 'shujujiegou', '10.00', '0', 'asdf', '1232', '13\\0', '1', 'JXQUGADETG4Y5AWFH6BSD8848NNKLFHF.jpg');
INSERT INTO `book` VALUES ('13', 'haahh', '11.00', '0', 'asdf', '1232', '0\\0', '1', 'L3FM3U7QIU7JE2S6BZCR5CBYNF4DJO72.jpg');
INSERT INTO `book` VALUES ('14', 'test', '11.00', '0', 'asdf', '1232', '11\\14', '1', 'HO6QD2CWAEKCQ8JCP3N8IAFD8XFRWNSE.jpg');
INSERT INTO `book` VALUES ('15', 'test1', '0.00', '0', 'asdf', '1232', '2\\4', '1', '5I2Y3LOFLWR9G5AU3CDIXYTUTZELPE0G.jpg');
INSERT INTO `book` VALUES ('16', 'adf', '10.00', '0', 'asdf', '1232', '15\\15', '1', '2C0OX3DDO4MYI7SMD7C8P5FL20BL0SFP.jpg');
INSERT INTO `book` VALUES ('17', 'zhangbin', '10.00', '0', 'asdf', '1232', '1\\8', '1', 'Q9M3G7RCZQU0XV9JPNK1HXTVPRQD409V.jar');
INSERT INTO `book` VALUES ('18', 'chang', '10.00', '0', 'asdf', '1232', '10\\3', '1', 'CSE5ZPJYTJQ0R1U9R91I2NQV5E4A0PO2.js');
INSERT INTO `book` VALUES ('19', '', '0.00', '0', '', '', '4\\2', '1', '75HVF345V7B724GR6EE3JBLD7VHX39SK.jar');
INSERT INTO `book` VALUES ('20', '456', '11.00', '0', '456', '456', '8\\10', '1', 'IMNM9532661KB5CUREL7TEZOVTM5867G.jpg');
INSERT INTO `book` VALUES ('21', '456', '0.00', '0', '456', '456', '9\\13', '1', 'O5BGKE0HLQS447KT3BNMJJAXCHRDIUJY.jpg');
INSERT INTO `book` VALUES ('22', '456', '0.00', '0', '456', '456', '14\\13', '1', 'K2EWVZ5ZCSQ8JI51KT56M01059EIDMX2.jpg');
INSERT INTO `book` VALUES ('23', 'asdf', '0.00', '0', 'asd', 'asd', '15\\15', '1', '84L1Z6L73C8SYBRQYWPFS6322ZNKPQEZ.jpg');

-- ----------------------------
-- Table structure for `likebook`
-- ----------------------------
DROP TABLE IF EXISTS `likebook`;
CREATE TABLE `likebook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likebook
-- ----------------------------
INSERT INTO `likebook` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailaddress` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('zhangbin', '123', '123', '1', '');
INSERT INTO `userinfo` VALUES ('d', 'asdf', '123', '2', '');
INSERT INTO `userinfo` VALUES ('z', 'asd', '156', '3', '');
INSERT INTO `userinfo` VALUES ('z', 'asd', '156', '4', '');
INSERT INTO `userinfo` VALUES ('a', 'a', 'a', '9', '');
INSERT INTO `userinfo` VALUES ('b', 'b', 'b', '10', '');
INSERT INTO `userinfo` VALUES ('null', 'null', 'null', '11', '');
INSERT INTO `userinfo` VALUES ('zhang', '1', '123', '12', '');
INSERT INTO `userinfo` VALUES ('bin', '1', '13213', '13', '');
INSERT INTO `userinfo` VALUES ('wang', 'asd', '456', '14', '913604843@qq.com');
INSERT INTO `userinfo` VALUES ('li', '123', '12321233', '15', 'asdf@w.con');
INSERT INTO `userinfo` VALUES ('wangpin', '123', '12321233', '16', 'asdf@w.con');
INSERT INTO `userinfo` VALUES ('wanbin', '123', '12321233', '17', 'asdf@w.con');
INSERT INTO `userinfo` VALUES ('wangping', '123', '12341324', '18', '913604843@qq.com');
INSERT INTO `userinfo` VALUES ('hkjhk', '123', '13241234', '19', '913604843@qq.com');

-- ----------------------------
-- Table structure for `userorder`
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buyerID` int(10) DEFAULT NULL,
  `payment` decimal(10,2) DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES ('1', '1', '10.00', '2018-10-19 14:06:44');
INSERT INTO `userorder` VALUES ('2', '1', '10.00', '2018-10-19 14:06:44');
INSERT INTO `userorder` VALUES ('3', '1', '10.00', '2018-10-19 14:06:44');
INSERT INTO `userorder` VALUES ('4', '3', '20.00', '2018-10-19 14:34:39');
