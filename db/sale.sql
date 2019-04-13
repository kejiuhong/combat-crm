/*
Navicat MySQL Data Transfer

Source Server         : combat-crm
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sale

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-13 23:01:51
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
INSERT INTO `clue` VALUES ('36', '雨里', '13859689564', 'baidu', '清风', '意向一般', '1555167647364', '');
INSERT INTO `clue` VALUES ('37', '何炅', '14859689564', 'sina', '网易', '意向一般', '1555167641151', '');
INSERT INTO `clue` VALUES ('48', '为佳', '13836547894', 'baidu', '网易', '意向一般', '1555167625514', '');
INSERT INTO `clue` VALUES ('49', '园艺', '17836547894', 'google', '黎明', '意向强烈', '1555167633627', 'Nils客观冷静啊了几个开朗零距离感受两个说了句阿拉斯加公路joie叫我给我几个关键我');

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('14', '17836547894', '跟踪内容2', '1555078401141');
INSERT INTO `note` VALUES ('16', '13836547894', '跟踪内容2', '1555164081893');

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
INSERT INTO `user` VALUES ('17', '掌心', '13856897333', '123456', '管理', '1555074624462');
INSERT INTO `user` VALUES ('16', '网易', '13587569858', '123456', '销售', '1555074532795');
INSERT INTO `user` VALUES ('18', '黎明', '18587569858', '123456', '销售', '1555076737909');
