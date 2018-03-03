/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : yantu

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2018-03-02 20:24:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `toSchool` varchar(255) NOT NULL COMMENT '报考学院',
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tuMoney` int(255) DEFAULT NULL COMMENT '兔币',
  `createTime` timestamp NULL DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL COMMENT '微信',
  `university` varchar(255) NOT NULL COMMENT '报考学校',
  `item` tinyint(255) DEFAULT NULL COMMENT '同意条款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', 'admin', '123456', '13588756403', '2464798819', '经管学院', 'luliang931@sina.com', '男', null, '2018-03-02 14:48:59', 'Evan', '杭州电子科技大学', '1');
INSERT INTO `user` VALUES ('6', 'luliang', 'll319ll319', '13588756403', '2464798819', '通信学院', 'luliang931@sina.com', '男', null, '2018-03-02 17:10:43', 'Evan', '杭州电子科技大学', '1');
