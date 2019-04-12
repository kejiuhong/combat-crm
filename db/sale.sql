/*
Navicat MySQL Data Transfer

Source Server         : combat
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : sale

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-12 17:52:52
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
  `status` varchar(255) DEFAULT NULL COMMENT '''状态[1:没有意向,2:意向一般,3:意向强烈,4:完成销售,5:取消销售]''',
  `time` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clue
-- ----------------------------
INSERT INTO `clue` VALUES ('32', '用户1', '14356897333', 'baidu', null, null, '2147483647', null);
INSERT INTO `clue` VALUES ('33', '用户2', '18356897333', '360', null, null, '2147483647', null);
INSERT INTO `clue` VALUES ('34', '用户3', '15356897333', 'sina', null, null, '2147483647', null);
INSERT INTO `clue` VALUES ('35', '用户6', '13256897333', 'baidu', null, null, '2147483647', null);
INSERT INTO `clue` VALUES ('31', '用户11', '13356897333', '360', null, null, '2147483647', null);

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_tel` varchar(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', '13845264444', '跟踪内容1', '2019-04-09 21:08:40');
INSERT INTO `note` VALUES ('2', '13845264444', '跟踪内容2', '2019-04-10 21:10:18');
INSERT INTO `note` VALUES ('3', '15845264444', '跟踪内容1', '2019-04-09 21:15:28');
INSERT INTO `note` VALUES ('10', '13845264444', '  跟踪内容3', '2019-04-10 00:43:57');
INSERT INTO `note` VALUES ('12', '13845264444', '跟踪内容5', '2019-04-12 17:18:32');

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
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '测试1', '13856897333', '123456', '管理', '2019');
INSERT INTO `user` VALUES ('4', '测试2', '14856897333', '123456', '销售', '2019');
INSERT INTO `user` VALUES ('5', '测试3', '17856897333', '123456', '销售', '2019');
INSERT INTO `user` VALUES ('6', '测试4', '15856897333', '123456', '销售', '2019');
