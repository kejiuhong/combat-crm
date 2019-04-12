/*
Navicat MySQL Data Transfer

Source Server         : combat-crm
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sale

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-13 00:04:08
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
  `time` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clue
-- ----------------------------
INSERT INTO `clue` VALUES ('36', '用户1', '13859689564', 'baidu', '销售2', '意向一般', '1555077613730', '备注');
INSERT INTO `clue` VALUES ('37', '用户2', '14859689564', 'sina', '销售4', '意向一般', '1555077682039', '');
INSERT INTO `clue` VALUES ('48', '用户3', '13836547894', 'baidu', '销售3', '意向一般', '1555077649394', '');
INSERT INTO `clue` VALUES ('49', '用户4', '17836547894', 'google', '销售2', '意向强烈', '1555083364988', '备注');

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_tel` varchar(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('13', '17836547894', '跟踪内容1', '1555078393817');
INSERT INTO `note` VALUES ('14', '17836547894', '跟踪内容2', '1555078401141');

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
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('17', '管理1', '13856897333', '123456', '管理', '1555074624462');
INSERT INTO `user` VALUES ('16', '销售2', '13587569858', '123456', '销售', '1555074532795');
INSERT INTO `user` VALUES ('18', '销售4', '18587569858', '123456', '销售', '1555076737909');
INSERT INTO `user` VALUES ('19', '销售3', '14587569858', '123456', '销售', '1555076980026');
