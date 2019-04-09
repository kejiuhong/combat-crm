/*
Navicat MySQL Data Transfer

Source Server         : combat
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : sale

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-09 15:20:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `clue`
-- ----------------------------
DROP TABLE IF EXISTS `clue`;
CREATE TABLE `clue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(22) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '''状态[1:没有意向,2:意向一般,3:意向强烈,4:完成销售,5:取消销售]''',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clue
-- ----------------------------
INSERT INTO `clue` VALUES ('20', '用户1', '111', 'baidu', null, null, '2019-04-09 14:14:11');
INSERT INTO `clue` VALUES ('21', '用户2', '2222', 'baidu', null, null, '2019-04-09 14:14:16');
INSERT INTO `clue` VALUES ('22', '用户3', '3333', 'baidu', null, null, '2019-04-09 14:14:22');
INSERT INTO `clue` VALUES ('23', '用户4', '4444', '360', null, null, '2019-04-09 14:14:34');

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(22) DEFAULT NULL,
  `password` varchar(9) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '测试1', '123456', '123456', '管理', '2019-04-08 11:53:58');
INSERT INTO `user` VALUES ('4', '测试2', '12', '12', '销售', '2019-04-08 11:54:15');
