/*
Navicat MySQL Data Transfer

Source Server         : combat-crm
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sale

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-10 00:48:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clue
-- ----------------------------
DROP TABLE IF EXISTS `clue`;
CREATE TABLE `clue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(22) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '''状态[1:没有意向,2:意向一般,3:意向强烈,4:完成销售,5:取消销售]''',
  `time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clue
-- ----------------------------
INSERT INTO `clue` VALUES ('20', '用户1', '111', 'baidu', '测试3', '意向一般', '2019-04-10 00:48:13', '      多多少少\n  \n  \n  ');
INSERT INTO `clue` VALUES ('21', '用户2', '2222', 'baidu', '测试2', '意向一般', '2019-04-09 14:14:16', '   2222\n  \n  ');
INSERT INTO `clue` VALUES ('22', '用户3', '3333', 'baidu', '测试2', '有兴趣', '2019-04-09 14:14:22', '3333\n  ');
INSERT INTO `clue` VALUES ('23', '用户4', '4444', '360', '测试3', '准备购买', '2019-04-09 14:14:34', '4444\n  \n  ');

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_tel` varchar(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', '111', '跟踪内容1', '2019-04-09 21:08:40');
INSERT INTO `note` VALUES ('2', '111', '跟踪内容2', '2019-04-10 21:10:18');
INSERT INTO `note` VALUES ('3', '2222', '跟踪内容1', '2019-04-09 21:15:28');
INSERT INTO `note` VALUES ('10', '111', '  跟踪内容3', '2019-04-10 00:43:57');

-- ----------------------------
-- Table structure for user
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '测试1', '123456', '123456', '管理', '2019-04-08 11:53:58');
INSERT INTO `user` VALUES ('4', '测试2', '12', '12', '销售', '2019-04-08 11:54:15');
INSERT INTO `user` VALUES ('5', '测试3', '123', '123', '销售', '2019-04-09 21:10:57');
INSERT INTO `user` VALUES ('6', '测试4', '1234', '1234', '销售', '2019-04-09 22:11:29');
