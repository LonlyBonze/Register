/*
Navicat MySQL Data Transfer

Source Server         : 个人数据库
Source Server Version : 80015
Source Host           : 47.94.15.133:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-05-03 12:06:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL AUTO_INCREMENT,
  `departmentcode` varchar(32) NOT NULL,
  `departmentname` varchar(32) NOT NULL,
  `pinyincode` varchar(32) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `isregister` int(1) NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '001', '院办', 'YB', '办公楼3楼301', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('2', '002', '党办', 'DB', '办公楼3楼302', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('3', '003', '住院办', 'ZYB', '办公楼3楼303', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('4', '004', '内科', 'NK', '门诊楼1楼101', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('5', '005', '外科', 'WK', '门诊楼1楼102', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('6', '006', '儿科', 'EK', '门诊楼1楼103', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('7', '007', '妇产科', 'FCK', '门诊楼2楼201', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('8', '008', '眼科', 'YK', '门诊楼3楼301', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('9', '009', '牙科', 'YK', '门诊楼3楼302', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('10', '010', '五官科', 'WGK', '门诊楼3楼303', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('11', '011', '泌尿科', 'MNK', '门诊楼3楼304', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('12', '012', '消化科', 'XHK', '门诊楼3楼305', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('13', '013', '检验科', 'JYK', '门诊楼3楼306', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('14', '014', '急诊科', 'JZK', '门诊楼3楼307', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('15', '015', '保健科', 'BJK', '门诊楼3楼308', '1', '测试数据', '1');
INSERT INTO `department` VALUES ('16', '016', '药剂科', 'YJK', '检验楼3楼301', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('17', '017', '放射科', 'FSK', '检验楼3楼302', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('18', '018', '临床科', 'LCK', '检验楼3楼303', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('19', '019', '功能科', 'GNK', '检验楼3楼304', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('20', '020', '病理科', 'BLK', '检验楼2楼201', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('21', '021', '手术室', 'SSS', '检验楼2楼202', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('22', '022', '护理部', 'HLB', '检验楼2楼203', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('23', '023', '营养科', 'YYK', '检验楼2楼204', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('24', '024', '消毒器材供应室', 'XDQCGYS', '检验楼2楼205', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('25', '025', '质控科', 'ZGK', '检验楼2楼206', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('26', '026', '院感科', 'YGK', '检验楼2楼207', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('27', '027', '药学部', 'YXB', '检验楼2楼208', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('28', '028', '医务科', 'YWK', '检验楼2楼209', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('29', '029', '人事科', 'RSK', '检验楼2楼210', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('30', '030', '财务科', 'CWK', '检验楼1楼101', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('31', '031', '科教科', 'KJK', '检验楼1楼102', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('32', '032', '总务科', 'ZWK', '检验楼1楼103', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('33', '033', '保卫科', 'BWK', '检验楼1楼104', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('34', '034', '设备科', 'SBK', '检验楼1楼105', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('35', '035', '供应科', 'GYK', '检验楼1楼106', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('36', '036', '膳食科', 'SSK', '检验楼1楼107', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('37', '037', '后勤部', 'HQB', '检验楼1楼108', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('38', '038', '病案室', 'BAS', '检验楼1楼109', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('39', '039', '统计室', 'TJS', '检验楼1楼110', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('40', '040', '图书室', 'TSS', '检验楼1楼111', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('41', '041', '健康教育科', 'JKJYK', '检验楼1楼112', '0', '测试数据', '1');
INSERT INTO `department` VALUES ('42', '042', '计算机中心', 'JSJZX', '检验楼1楼113', '0', '测试数据', '1');

-- ----------------------------
-- Table structure for `departsche`
-- ----------------------------
DROP TABLE IF EXISTS `departsche`;
CREATE TABLE `departsche` (
  `departscheid` int(10) NOT NULL AUTO_INCREMENT,
  `departschename` varchar(32) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `departsche` varchar(21) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`departscheid`),
  UNIQUE KEY `departschename` (`departschename`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departsche
-- ----------------------------
INSERT INTO `departsche` VALUES ('1', '内科2017年排班表', '4', '101010110101011010101', '2019-05-02 21:22:35', '测试数据', '1');
INSERT INTO `departsche` VALUES ('2', '内科2018年排班表', '4', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('3', '内科2019年排班表', '4', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('4', '外科2017年排班表', '5', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('5', '外科2018年排班表', '5', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('6', '外科2019年排班表', '5', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('7', '儿科2017年排班表', '6', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('8', '儿科2018年排班表', '6', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('9', '儿科2019年排班表', '6', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('10', '妇产科2017年排班表', '7', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('11', '妇产科2018年排班表', '7', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('12', '妇产科2019年排班表', '7', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('13', '眼科2017年排班表', '8', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('14', '眼科2018年排班表', '8', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('15', '眼科2019年排班表', '8', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('16', '牙科2017年排班表', '9', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('17', '牙科2018年排班表', '9', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('18', '牙科2019年排班表', '9', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('19', '五官科2017年排班表', '10', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('20', '五官科2018年排班表', '10', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('21', '五官科2019年排班表', '10', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('22', '泌尿科2017年排班表', '11', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('23', '泌尿科2018年排班表', '11', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('24', '泌尿科2019年排班表', '11', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('25', '消化科2017年排班表', '12', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('26', '消化科2018年排班表', '12', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('27', '消化科2019年排班表', '12', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('28', '检验科2017年排班表', '13', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('29', '检验科2018年排班表', '13', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('30', '检验科2019年排班表', '13', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('31', '急诊科2017年排班表', '14', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('32', '急诊科2018年排班表', '14', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('33', '急诊科2019年排班表', '14', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('34', '保健科2017年排班表', '15', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('35', '保健科2018年排班表', '15', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');
INSERT INTO `departsche` VALUES ('36', '保健科2019年排班表', '15', '101010110101011010101', '2019-05-02 22:25:38', '测试数据', '1');

-- ----------------------------
-- Table structure for `departscheex`
-- ----------------------------
DROP TABLE IF EXISTS `departscheex`;
CREATE TABLE `departscheex` (
  `departscheexid` int(10) NOT NULL AUTO_INCREMENT,
  `departscheexname` varchar(32) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `departsche` varchar(21) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`departscheexid`),
  UNIQUE KEY `departscheexname` (`departscheexname`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departscheex
-- ----------------------------
INSERT INTO `departscheex` VALUES ('1', '内科2017年排班表模板', '4', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('2', '内科2018年排班表模板', '4', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('3', '内科2019年排班表模板', '4', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('4', '外科2017年排班表模板', '5', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('5', '外科2018年排班表模板', '5', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('6', '外科2019年排班表模板', '5', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('7', '儿科2017年排班表模板', '6', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('8', '儿科2018年排班表模板', '6', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('9', '儿科2019年排班表模板', '6', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('10', '妇产科2017年排班表模板', '7', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('11', '妇产科2018年排班表模板', '7', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('12', '妇产科2019年排班表模板', '7', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('13', '眼科2017年排班表模板', '8', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('14', '眼科2018年排班表模板', '8', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('15', '眼科2019年排班表模板', '8', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('16', '牙科2017年排班表模板', '9', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('17', '牙科2018年排班表模板', '9', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('18', '牙科2019年排班表模板', '9', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('19', '五官科2017年排班表模板', '10', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('20', '五官科2018年排班表模板', '10', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('21', '五官科2019年排班表模板', '10', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('22', '泌尿科2017年排班表模板', '11', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('23', '泌尿科2018年排班表模板', '11', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('24', '泌尿科2019年排班表模板', '11', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('25', '消化科2017年排班表模板', '12', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('26', '消化科2018年排班表模板', '12', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('27', '消化科2019年排班表模板', '12', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('28', '检验科2017年排班表模板', '13', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('29', '检验科2018年排班表模板', '13', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('30', '检验科2019年排班表模板', '13', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('31', '急诊科2017年排班表模板', '14', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('32', '急诊科2018年排班表模板', '14', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('33', '急诊科2019年排班表模板', '14', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('34', '保健科2017年排班表模板', '15', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('35', '保健科2018年排班表模板', '15', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');
INSERT INTO `departscheex` VALUES ('36', '保健科2019年排班表模板', '15', '101010110101011010101', '2019-05-02 22:30:21', '测试数据', '1');

-- ----------------------------
-- Table structure for `doctortitle`
-- ----------------------------
DROP TABLE IF EXISTS `doctortitle`;
CREATE TABLE `doctortitle` (
  `doctortitleid` int(10) NOT NULL AUTO_INCREMENT,
  `doctortitlename` varchar(32) NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doctortitleid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctortitle
-- ----------------------------
INSERT INTO `doctortitle` VALUES ('1', '医士', '测试数据', '1');
INSERT INTO `doctortitle` VALUES ('2', '医师', '测试数据', '1');
INSERT INTO `doctortitle` VALUES ('3', '主治医师', '测试数据', '1');
INSERT INTO `doctortitle` VALUES ('4', '副主任医师', '测试数据', '1');
INSERT INTO `doctortitle` VALUES ('5', '主任医师', '测试数据', '1');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employeecode` varchar(32) NOT NULL,
  `employeename` varchar(32) NOT NULL,
  `psw` varchar(32) DEFAULT NULL,
  `pinyincode` varchar(32) NOT NULL,
  `jobtitleid` int(2) NOT NULL,
  `doctortitleid` int(10) NOT NULL DEFAULT '0',
  `sex` int(1) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `idcard` varchar(18) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `birthday` date NOT NULL,
  `inductiontime` datetime NOT NULL,
  `dimissiontime` datetime DEFAULT NULL,
  `maxeducation` int(2) DEFAULT NULL,
  `majorid` int(4) DEFAULT NULL,
  `politicsstatusid` int(2) DEFAULT NULL,
  `picturepath` varchar(128) DEFAULT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tel` (`tel`),
  UNIQUE KEY `employeecode` (`employeecode`),
  UNIQUE KEY `idcard` (`idcard`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'AD00001', '张三', '1111', 'ZHANGSAN', '0', '0', '0', '13811112222', '1', '111111@qq.com', '121314199711112019', '测试数据', '1997-11-11', '2019-01-01 09:00:00', null, '4', '50', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('3', 'GH00001', '张一', '1111', 'ZHANGYI', '1', '0', '1', '13800001111', '42', '111113@qq.com', '101112199111112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '4', '50', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('4', 'GH00002', '张二', '1111', 'ZHANGER', '1', '0', '0', '13800002222', '42', '111112@qq.com', '101112199211112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '4', '50', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('5', 'GH00003', '张四', '1111', 'ZHANGSI', '1', '0', '1', '13800004444', '42', '111114@qq.com', '101112199411112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '4', '50', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('6', 'GH00004', '张五', '1111', 'ZHANGWU', '1', '0', '0', '13800005555', '42', '111115@qq.com', '101112199511112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '4', '50', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('7', 'YS00001', '李一', null, 'LIYI', '2', '1', '1', '13822221111', '4', 'LI1@qq.com', '111213199111112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('8', 'YS00002', '李二', null, 'LIER', '2', '2', '0', '13822222222', '5', 'LI2@qq.com', '111213199211112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('10', 'YS00003', '李三', null, 'LISAN', '2', '3', '1', '13822223333', '6', 'LI3@qq.com', '111213199311112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('11', 'YS00004', '李四', null, 'LISI', '2', '4', '0', '13822224444', '7', 'LI4@qq.com', '111213199411112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '4', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('12', 'YS00005', '李五', null, 'LIWU', '2', '5', '1', '13822225555', '8', 'LI5@qq.com', '111213199511112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '5', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('13', 'YS00006', '李六', null, 'LILIU', '2', '1', '0', '13822226666', '9', 'LI6@qq.com', '111213199611112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('14', 'YS00007', '李七', null, 'LIQI', '2', '2', '1', '13822227777', '10', 'LI7@qq.com', '111213199711112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('15', 'YS00008', '李八', null, 'LIBA', '2', '3', '0', '13822228888', '11', 'LI8@qq.com', '111213199811112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('16', 'YS00009', '李九', null, 'LIJIU', '2', '4', '1', '13822229999', '12', 'LI9@qq.com', '111213199911112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('17', 'YS00010', '李十', null, 'LISHI', '2', '5', '0', '13822220000', '14', 'LI0@qq.com', '111213199011112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('18', 'YS00011', '赵一', null, 'ZHAOYI', '2', '1', '1', '13833331111', '4', 'ZHAO1@qq.com', '131415199111112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('19', 'YS00012', '赵二', null, 'ZHAOER', '2', '2', '0', '13833332222', '5', 'ZHAO2@qq.com', '131415199211112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('20', 'YS00013', '赵三', null, 'ZHAOSAN', '2', '3', '1', '13833333333', '6', 'ZHAO3@qq.com', '131415199311112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('21', 'YS00014', '赵四', null, 'ZHAOSI', '2', '4', '0', '13833334444', '7', 'ZHAO4@qq.com', '131415199411112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '4', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('22', 'YS00015', '赵五', null, 'ZHAOWU', '2', '5', '1', '13833335555', '8', 'ZHAO5@qq.com', '131415199511112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '5', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('23', 'YS00016', '赵六', null, 'ZHAOLIU', '2', '1', '0', '13833336666', '9', 'ZHAO6@qq.com', '131415199611112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('24', 'YS00017', '赵七', null, 'ZHAOQI', '2', '2', '1', '13833337777', '10', 'ZHAO7@qq.com', '131415199711112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('25', 'YS00018', '赵八', null, 'ZHAOBA', '2', '3', '0', '13833338888', '11', 'ZHAO8@qq.com', '131415199811112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('26', 'YS00019', '赵九', null, 'ZHAOJIU', '2', '4', '1', '13833339999', '12', 'ZHAO9@qq.com', '131415199911112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('27', 'YS00020', '赵十', null, 'ZHAOSHI', '2', '5', '0', '13833330000', '14', 'ZHAO0@qq.com', '131415199011112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('28', 'YS00021', '朱一', null, 'ZHUYI', '2', '1', '1', '13844441111', '4', 'ZHU1@qq.com', '141516199111112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('29', 'YS00022', '朱二', null, 'ZHUER', '2', '2', '0', '13844442222', '5', 'ZHU2@qq.com', '141516199211112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('30', 'YS00023', '朱三', null, 'ZHUSAN', '2', '3', '1', '13844443333', '6', 'ZHU3@qq.com', '141516199311112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('31', 'YS00024', '朱四', null, 'ZHUSI', '2', '4', '0', '13844444444', '7', 'ZHU4@qq.com', '141516199411112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '4', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('32', 'YS00025', '朱五', null, 'ZHUWU', '2', '5', '1', '13844445555', '8', 'ZHU5@qq.com', '141516199511112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '5', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('33', 'YS00026', '朱六', null, 'ZHULIU', '2', '1', '0', '13844446666', '9', 'ZHU6@qq.com', '141516199611112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('34', 'YS00027', '朱七', null, 'ZHUQI', '2', '2', '1', '13844447777', '10', 'ZHU7@qq.com', '141516199711112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('35', 'YS00028', '朱八', null, 'ZHUBA', '2', '3', '0', '13844448888', '11', 'ZHU8@qq.com', '141516199811112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('36', 'YS00029', '朱九', null, 'ZHUJIU', '2', '4', '1', '13844449999', '12', 'ZHU9@qq.com', '141516199911112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('37', 'YS00030', '朱十', null, 'ZHUSHI', '2', '5', '0', '13844440000', '14', 'ZHU0@qq.com', '141516199011112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('38', 'YS00031', '周一', null, 'ZHOUYI', '2', '1', '1', '13855551111', '4', 'ZHOU1@qq.com', '151617199111112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('39', 'YS00032', '周二', null, 'ZHOUER', '2', '2', '0', '13855552222', '5', 'ZHOU2@qq.com', '151617199211112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('40', 'YS00033', '周三', null, 'ZHOUSAN', '2', '3', '1', '13855553333', '6', 'ZHOU3@qq.com', '151617199311112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('41', 'YS00034', '周四', null, 'ZHOUSI', '2', '4', '0', '13855554444', '7', 'ZHOU4@qq.com', '151617199411112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '4', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('42', 'YS00035', '周五', null, 'ZHOUWU', '2', '5', '1', '13855555555', '8', 'ZHOU5@qq.com', '151617199511112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '5', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('43', 'YS00036', '周六', null, 'ZHOULIU', '2', '1', '0', '13855556666', '9', 'ZHOU6@qq.com', '151617199611112019', '测试数据', '1991-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('44', 'YS00037', '周七', null, 'ZHOUQI', '2', '2', '1', '13855557777', '10', 'ZHOU7@qq.com', '151617199711112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '4', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('45', 'YS00038', '周八', null, 'ZHOUBA', '2', '3', '0', '13855558888', '11', 'ZHOU8@qq.com', '151617199811112019', '测试数据', '1992-11-11', '2019-01-01 09:00:00', null, '5', '56', '2', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('46', 'YS00039', '周九', null, 'ZHOUJIU', '2', '4', '1', '13855559999', '12', 'ZHOU9@qq.com', '151617199911112019', '测试数据', '1994-11-11', '2019-01-01 09:00:00', null, '6', '56', '1', null, '测试数据', '1');
INSERT INTO `employee` VALUES ('47', 'YS00040', '周十', null, 'ZHOUSHI', '2', '5', '0', '13855550000', '14', 'ZHOU0@qq.com', '151617199011112019', '测试数据', '1995-11-11', '2019-01-01 09:00:00', null, '6', '56', '2', null, '测试数据', '1');

-- ----------------------------
-- Table structure for `expertsche`
-- ----------------------------
DROP TABLE IF EXISTS `expertsche`;
CREATE TABLE `expertsche` (
  `expertscheid` int(10) NOT NULL AUTO_INCREMENT,
  `expertschename` varchar(32) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `expertsche` varchar(21) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `note` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`expertscheid`),
  UNIQUE KEY `expertschename` (`expertschename`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expertsche
-- ----------------------------
INSERT INTO `expertsche` VALUES ('1', '2017年李四排班表', '11', '100001000010000000000', '2019-05-03 11:52:18', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('2', '2018年李四排班表', '11', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('3', '2019年李四排班表', '11', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('4', '2017年李五排班表', '12', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('5', '2018年李五排班表', '12', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('6', '2019年李五排班表', '12', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('7', '2017年李九排班表', '16', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('8', '2018年李九排班表', '16', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('9', '2019年李九排班表', '16', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('10', '2017年李十排班表', '17', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('11', '2018年李十排班表', '17', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('12', '2019年李十排班表', '17', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('13', '2017年赵四排班表', '21', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('14', '2018年赵四排班表', '21', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('15', '2019年赵四排班表', '21', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('16', '2017年赵五排班表', '22', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('17', '2018年赵五排班表', '22', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('18', '2019年赵五排班表', '22', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('19', '2017年赵九排班表', '26', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('20', '2018年赵九排班表', '26', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('21', '2019年赵九排班表', '26', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('22', '2017年赵十排班表', '27', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('23', '2018年赵十排班表', '27', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('24', '2019年赵十排班表', '27', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('25', '2017年朱四排班表', '31', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('26', '2018年朱四排班表', '31', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('27', '2019年朱四排班表', '31', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('28', '2017年朱五排班表', '32', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('29', '2018年朱五排班表', '32', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('30', '2019年朱五排班表', '32', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('31', '2017年朱九排班表', '36', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('32', '2018年朱九排班表', '36', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('33', '2019年朱九排班表', '36', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('34', '2017年朱十排班表', '37', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('35', '2018年朱十排班表', '37', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('36', '2019年朱十排班表', '37', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('37', '2017年周四排班表', '41', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('38', '2018年周四排班表', '41', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('39', '2019年周四排班表', '41', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('40', '2017年周五排班表', '42', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('41', '2018年周五排班表', '42', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('42', '2019年周五排班表', '42', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('43', '2017年周九排班表', '46', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('44', '2018年周九排班表', '46', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('45', '2019年周九排班表', '46', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('46', '2017年周十排班表', '47', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('47', '2018年周十排班表', '47', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');
INSERT INTO `expertsche` VALUES ('48', '2019年周十排班表', '47', '100001000010000000000', '2019-05-03 12:01:40', '测试数据', '1');

-- ----------------------------
-- Table structure for `expertscheex`
-- ----------------------------
DROP TABLE IF EXISTS `expertscheex`;
CREATE TABLE `expertscheex` (
  `expertscheexid` int(10) NOT NULL AUTO_INCREMENT,
  `expertscheexname` varchar(32) NOT NULL,
  `expertid` int(10) NOT NULL,
  `expertsche` varchar(21) NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`expertscheexid`),
  UNIQUE KEY `expertscheexname` (`expertscheexname`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expertscheex
-- ----------------------------
INSERT INTO `expertscheex` VALUES ('1', '2018年李四排班表', '11', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('2', '2019年李四排班表', '11', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('3', '2017年李五排班表', '12', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('4', '2018年李五排班表', '12', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('5', '2019年李五排班表', '12', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('6', '2017年李九排班表', '16', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('7', '2018年李九排班表', '16', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('8', '2019年李九排班表', '16', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('9', '2017年李十排班表', '17', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('10', '2018年李十排班表', '17', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('11', '2019年李十排班表', '17', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('12', '2017年赵四排班表', '21', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('13', '2018年赵四排班表', '21', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('14', '2019年赵四排班表', '21', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('15', '2017年赵五排班表', '22', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('16', '2018年赵五排班表', '22', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('17', '2019年赵五排班表', '22', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('18', '2017年赵九排班表', '26', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('19', '2018年赵九排班表', '26', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('20', '2019年赵九排班表', '26', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('21', '2017年赵十排班表', '27', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('22', '2018年赵十排班表', '27', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('23', '2019年赵十排班表', '27', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('24', '2017年朱四排班表', '31', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('25', '2018年朱四排班表', '31', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('26', '2019年朱四排班表', '31', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('27', '2017年朱五排班表', '32', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('28', '2018年朱五排班表', '32', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('29', '2019年朱五排班表', '32', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('30', '2017年朱九排班表', '36', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('31', '2018年朱九排班表', '36', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('32', '2019年朱九排班表', '36', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('33', '2017年朱十排班表', '37', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('34', '2018年朱十排班表', '37', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('35', '2019年朱十排班表', '37', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('36', '2017年周四排班表', '41', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('37', '2018年周四排班表', '41', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('38', '2019年周四排班表', '41', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('39', '2017年周五排班表', '42', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('40', '2018年周五排班表', '42', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('41', '2019年周五排班表', '42', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('42', '2017年周九排班表', '46', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('43', '2018年周九排班表', '46', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('44', '2019年周九排班表', '46', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('45', '2017年周十排班表', '47', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('46', '2018年周十排班表', '47', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');
INSERT INTO `expertscheex` VALUES ('47', '2019年周十排班表', '47', '100001000010000000000', '2019-05-03 12:05:18', '测试数据', '1');

-- ----------------------------
-- Table structure for `jobtitleid`
-- ----------------------------
DROP TABLE IF EXISTS `jobtitleid`;
CREATE TABLE `jobtitleid` (
  `jobtitleid` int(10) NOT NULL,
  `jobtitlename` varchar(32) NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`jobtitleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobtitleid
-- ----------------------------
INSERT INTO `jobtitleid` VALUES ('0', '系统管理员', '测试数据', '1');
INSERT INTO `jobtitleid` VALUES ('1', '挂号员', '测试数据', '1');
INSERT INTO `jobtitleid` VALUES ('2', '医生', '测试数据', '1');
INSERT INTO `jobtitleid` VALUES ('3', '护士', '测试数据', '1');

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `majorid` int(4) NOT NULL AUTO_INCREMENT,
  `majorname` varchar(32) NOT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`majorid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '哲学', '1');
INSERT INTO `major` VALUES ('2', '逻辑学', '1');
INSERT INTO `major` VALUES ('3', '宗教学', '1');
INSERT INTO `major` VALUES ('4', '经济学', '1');
INSERT INTO `major` VALUES ('5', '经济统计学', '1');
INSERT INTO `major` VALUES ('6', '财政学', '1');
INSERT INTO `major` VALUES ('7', '税收学', '1');
INSERT INTO `major` VALUES ('8', '金融学', '1');
INSERT INTO `major` VALUES ('9', '金融工程', '1');
INSERT INTO `major` VALUES ('10', '保险学', '1');
INSERT INTO `major` VALUES ('11', '投资学', '1');
INSERT INTO `major` VALUES ('12', '国际经济与贸易', '1');
INSERT INTO `major` VALUES ('13', '贸易经济', '1');
INSERT INTO `major` VALUES ('14', '法学', '1');
INSERT INTO `major` VALUES ('15', '政治学与行政学', '1');
INSERT INTO `major` VALUES ('16', '国际政治', '1');
INSERT INTO `major` VALUES ('17', '外交学', '1');
INSERT INTO `major` VALUES ('18', '社会学', '1');
INSERT INTO `major` VALUES ('19', '社会工作', '1');
INSERT INTO `major` VALUES ('20', '民族学', '1');
INSERT INTO `major` VALUES ('21', '科学社会主义', '1');
INSERT INTO `major` VALUES ('22', '中国共产党历史', '1');
INSERT INTO `major` VALUES ('23', '思想政治教育', '1');
INSERT INTO `major` VALUES ('24', '治安学', '1');
INSERT INTO `major` VALUES ('25', '侦查学', '1');
INSERT INTO `major` VALUES ('26', '边防管理', '1');
INSERT INTO `major` VALUES ('27', '教育学', '1');
INSERT INTO `major` VALUES ('28', '科学教育', '1');
INSERT INTO `major` VALUES ('29', '人文教育', '1');
INSERT INTO `major` VALUES ('30', '教育技术学', '1');
INSERT INTO `major` VALUES ('31', '艺术教育', '1');
INSERT INTO `major` VALUES ('32', '学前教育', '1');
INSERT INTO `major` VALUES ('33', '小学教育', '1');
INSERT INTO `major` VALUES ('34', '特殊教育', '1');
INSERT INTO `major` VALUES ('35', '体育教育', '1');
INSERT INTO `major` VALUES ('36', '运动训练', '1');
INSERT INTO `major` VALUES ('37', '汉语言文学', '1');
INSERT INTO `major` VALUES ('38', '中国少数民族语言文学', '1');
INSERT INTO `major` VALUES ('39', '英语', '1');
INSERT INTO `major` VALUES ('40', '俄语', '1');
INSERT INTO `major` VALUES ('41', '德语', '1');
INSERT INTO `major` VALUES ('42', '法语', '1');
INSERT INTO `major` VALUES ('43', '护理学', '1');
INSERT INTO `major` VALUES ('44', '药学', '1');
INSERT INTO `major` VALUES ('45', '卫生事业管理', '1');
INSERT INTO `major` VALUES ('46', '应用心理学', '1');
INSERT INTO `major` VALUES ('47', '中药学', '1');
INSERT INTO `major` VALUES ('48', '医学综合', '1');
INSERT INTO `major` VALUES ('49', '中药学', '1');
INSERT INTO `major` VALUES ('50', '临床医学', '1');
INSERT INTO `major` VALUES ('51', '中医学', '1');
INSERT INTO `major` VALUES ('52', '高级护理', '1');
INSERT INTO `major` VALUES ('53', '生物制药专业', '1');
INSERT INTO `major` VALUES ('54', '药品管理与营销', '1');
INSERT INTO `major` VALUES ('55', '眼视光学', '1');
INSERT INTO `major` VALUES ('56', '临床医学', '1');
INSERT INTO `major` VALUES ('57', '口腔医学', '1');
INSERT INTO `major` VALUES ('58', '中西医结合', '1');
INSERT INTO `major` VALUES ('59', '应用心理学', '1');
INSERT INTO `major` VALUES ('60', '软件工程', '1');

-- ----------------------------
-- Table structure for `maxeducation`
-- ----------------------------
DROP TABLE IF EXISTS `maxeducation`;
CREATE TABLE `maxeducation` (
  `maxeducationid` int(2) NOT NULL AUTO_INCREMENT,
  `maxeducationname` varchar(32) NOT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`maxeducationid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maxeducation
-- ----------------------------
INSERT INTO `maxeducation` VALUES ('1', '小学', '1');
INSERT INTO `maxeducation` VALUES ('2', '初中', '1');
INSERT INTO `maxeducation` VALUES ('3', '中专/高中', '1');
INSERT INTO `maxeducation` VALUES ('4', '专科/本科', '1');
INSERT INTO `maxeducation` VALUES ('5', '硕士研究生', '1');
INSERT INTO `maxeducation` VALUES ('6', '博士研究生', '1');

-- ----------------------------
-- Table structure for `patient`
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL AUTO_INCREMENT,
  `patientname` varchar(32) NOT NULL,
  `sex` int(1) NOT NULL,
  `idcard` varchar(18) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `allergieshistory` varchar(256) DEFAULT NULL,
  `medicalcard` varchar(32) DEFAULT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`patientid`),
  UNIQUE KEY `idcard` (`idcard`),
  UNIQUE KEY `tel` (`tel`),
  UNIQUE KEY `medicalcard` (`medicalcard`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('3', '张一', '1', '121314199011112019', '18700000000', 'X路X号', '无', 'bangdingka001', '测试数据', '1');
INSERT INTO `patient` VALUES ('4', '张二', '1', '121314199111112019', '18700001111', 'X路X号', '无', 'bangdingka002', '测试数据', '1');
INSERT INTO `patient` VALUES ('5', '张三', '1', '121314199211112019', '18700002222', 'X路X号', '无', 'bangdingka003', '测试数据', '1');
INSERT INTO `patient` VALUES ('6', '张四', '1', '121314199311112019', '18700003333', 'X路X号', '无', 'bangdingka004', '测试数据', '1');
INSERT INTO `patient` VALUES ('7', '张五', '1', '121314199411112019', '18700004444', 'X路X号', '无', 'bangdingka005', '测试数据', '1');
INSERT INTO `patient` VALUES ('8', '张六', '0', '121314199511112019', '18700005555', 'X路X号', '无', 'bangdingka006', '测试数据', '1');
INSERT INTO `patient` VALUES ('9', '张七', '0', '121314199611112019', '18700006666', 'X路X号', '无', 'bangdingka007', '测试数据', '1');
INSERT INTO `patient` VALUES ('10', '张八', '0', '121314199711112019', '18700007777', 'X路X号', '无', 'bangdingka008', '测试数据', '1');
INSERT INTO `patient` VALUES ('11', '张九', '0', '121314199811112019', '18700008888', 'X路X号', '无', 'bangdingka009', '测试数据', '1');
INSERT INTO `patient` VALUES ('12', '张十', '0', '121314199911112019', '18700009999', 'X路X号', '无', 'bangdingka010', '测试数据', '1');
INSERT INTO `patient` VALUES ('13', '李一', '1', '131415199011112019', '18711110000', 'X路X号', '无', 'bangdingka101', '测试数据', '1');
INSERT INTO `patient` VALUES ('14', '李二', '1', '131415199111112019', '18711111111', 'X路X号', '无', 'bangdingka102', '测试数据', '1');
INSERT INTO `patient` VALUES ('15', '李三', '1', '131415199211112019', '18711112222', 'X路X号', '无', 'bangdingka103', '测试数据', '1');
INSERT INTO `patient` VALUES ('16', '李四', '1', '131415199311112019', '18711113333', 'X路X号', '无', 'bangdingka104', '测试数据', '1');
INSERT INTO `patient` VALUES ('17', '李五', '1', '131415199411112019', '18711114444', 'X路X号', '无', 'bangdingka105', '测试数据', '1');
INSERT INTO `patient` VALUES ('18', '李六', '0', '131415199511112019', '18711115555', 'X路X号', '无', 'bangdingka106', '测试数据', '1');
INSERT INTO `patient` VALUES ('19', '李七', '0', '131415199611112019', '18711116666', 'X路X号', '无', 'bangdingka107', '测试数据', '1');
INSERT INTO `patient` VALUES ('20', '李八', '0', '131415199711112019', '18711117777', 'X路X号', '无', 'bangdingka108', '测试数据', '1');
INSERT INTO `patient` VALUES ('21', '李九', '0', '131415199811112019', '18711118888', 'X路X号', '无', 'bangdingka109', '测试数据', '1');
INSERT INTO `patient` VALUES ('22', '李十', '0', '131415199911112019', '18711119999', 'X路X号', '无', 'bangdingka110', '测试数据', '1');
INSERT INTO `patient` VALUES ('23', '赵一', '1', '141516199011112019', '18722220000', 'X路X号', '无', 'bangdingka201', '测试数据', '1');
INSERT INTO `patient` VALUES ('24', '赵二', '1', '141516199111112019', '18722221111', 'X路X号', '无', 'bangdingka202', '测试数据', '1');
INSERT INTO `patient` VALUES ('25', '赵三', '1', '141516199211112019', '18722222222', 'X路X号', '无', 'bangdingka203', '测试数据', '1');
INSERT INTO `patient` VALUES ('26', '赵四', '1', '141516199311112019', '18722223333', 'X路X号', '无', 'bangdingka204', '测试数据', '1');
INSERT INTO `patient` VALUES ('27', '赵五', '1', '141516199411112019', '18722224444', 'X路X号', '无', 'bangdingka205', '测试数据', '1');
INSERT INTO `patient` VALUES ('28', '赵六', '0', '141516199511112019', '18722225555', 'X路X号', '无', 'bangdingka206', '测试数据', '1');
INSERT INTO `patient` VALUES ('29', '赵七', '0', '141516199611112019', '18722226666', 'X路X号', '无', 'bangdingka207', '测试数据', '1');
INSERT INTO `patient` VALUES ('30', '赵八', '0', '141516199711112019', '18722227777', 'X路X号', '无', 'bangdingka208', '测试数据', '1');
INSERT INTO `patient` VALUES ('31', '赵九', '0', '141516199811112019', '18722228888', 'X路X号', '无', 'bangdingka209', '测试数据', '1');
INSERT INTO `patient` VALUES ('32', '赵十', '0', '141516199911112019', '18722229999', 'X路X号', '无', 'bangdingka210', '测试数据', '1');
INSERT INTO `patient` VALUES ('33', '朱一', '1', '151617199011112019', '18733330000', 'X路X号', '无', 'bangdingka301', '测试数据', '1');
INSERT INTO `patient` VALUES ('34', '朱二', '1', '151617199111112019', '18733331111', 'X路X号', '无', 'bangdingka302', '测试数据', '1');
INSERT INTO `patient` VALUES ('35', '朱三', '1', '151617199211112019', '18733332222', 'X路X号', '无', 'bangdingka303', '测试数据', '1');
INSERT INTO `patient` VALUES ('36', '朱四', '1', '151617199311112019', '18733333333', 'X路X号', '无', 'bangdingka304', '测试数据', '1');
INSERT INTO `patient` VALUES ('37', '朱五', '1', '151617199411112019', '18733334444', 'X路X号', '无', 'bangdingka305', '测试数据', '1');
INSERT INTO `patient` VALUES ('38', '朱六', '0', '151617199511112019', '18733335555', 'X路X号', '无', 'bangdingka306', '测试数据', '1');
INSERT INTO `patient` VALUES ('39', '朱七', '0', '151617199611112019', '18733336666', 'X路X号', '无', 'bangdingka307', '测试数据', '1');
INSERT INTO `patient` VALUES ('40', '朱八', '0', '151617199711112019', '18733337777', 'X路X号', '无', 'bangdingka308', '测试数据', '1');
INSERT INTO `patient` VALUES ('41', '朱九', '0', '151617199811112019', '18733338888', 'X路X号', '无', 'bangdingka309', '测试数据', '1');
INSERT INTO `patient` VALUES ('42', '朱十', '0', '151617199911112019', '18733339999', 'X路X号', '无', 'bangdingka310', '测试数据', '1');

-- ----------------------------
-- Table structure for `politicsstatus`
-- ----------------------------
DROP TABLE IF EXISTS `politicsstatus`;
CREATE TABLE `politicsstatus` (
  `politicsstatusid` int(2) NOT NULL AUTO_INCREMENT,
  `politicsstatusname` varchar(16) NOT NULL,
  PRIMARY KEY (`politicsstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of politicsstatus
-- ----------------------------
INSERT INTO `politicsstatus` VALUES ('1', '中共党员');
INSERT INTO `politicsstatus` VALUES ('2', '中共预备党员');
INSERT INTO `politicsstatus` VALUES ('3', '共青团员');
INSERT INTO `politicsstatus` VALUES ('4', '民革党员');
INSERT INTO `politicsstatus` VALUES ('5', '民盟盟员');
INSERT INTO `politicsstatus` VALUES ('6', '民建会员');
INSERT INTO `politicsstatus` VALUES ('7', '民进会员');
INSERT INTO `politicsstatus` VALUES ('8', '农工党党员');
INSERT INTO `politicsstatus` VALUES ('9', '致公党党员');
INSERT INTO `politicsstatus` VALUES ('10', '九三学社社员');
INSERT INTO `politicsstatus` VALUES ('11', '台盟盟员');
INSERT INTO `politicsstatus` VALUES ('12', '无党派人士');
INSERT INTO `politicsstatus` VALUES ('13', '普通居民');

-- ----------------------------
-- Table structure for `registercharge`
-- ----------------------------
DROP TABLE IF EXISTS `registercharge`;
CREATE TABLE `registercharge` (
  `chargeid` int(10) NOT NULL AUTO_INCREMENT,
  `doctortitleid` int(10) NOT NULL,
  `charge` float(6,0) NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`chargeid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registercharge
-- ----------------------------
INSERT INTO `registercharge` VALUES ('1', '1', '10', '测试数据', '1');
INSERT INTO `registercharge` VALUES ('2', '2', '10', '测试数据', '1');
INSERT INTO `registercharge` VALUES ('3', '3', '15', '测试数据', '1');
INSERT INTO `registercharge` VALUES ('4', '4', '30', '测试数据', '1');
INSERT INTO `registercharge` VALUES ('5', '5', '50', '测试数据', '1');

-- ----------------------------
-- Table structure for `registerform`
-- ----------------------------
DROP TABLE IF EXISTS `registerform`;
CREATE TABLE `registerform` (
  `registerformid` int(10) NOT NULL AUTO_INCREMENT,
  `patientid` int(10) NOT NULL,
  `registerlevelid` int(10) NOT NULL,
  `departmentid` int(10) DEFAULT NULL,
  `doctorid` int(10) DEFAULT NULL,
  `chargeid` int(10) NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`registerformid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registerform
-- ----------------------------
INSERT INTO `registerform` VALUES ('2', '3', '1', '4', '7', '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('3', '4', '2', '5', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('4', '5', '3', '6', '8', '2', '测试数据', '1');
INSERT INTO `registerform` VALUES ('5', '6', '4', '7', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('6', '7', '5', '8', '10', '3', '测试数据', '1');
INSERT INTO `registerform` VALUES ('7', '8', '1', '9', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('8', '9', '2', '10', '11', '4', '测试数据', '1');
INSERT INTO `registerform` VALUES ('9', '10', '3', '11', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('10', '11', '4', '12', '12', '5', '测试数据', '1');
INSERT INTO `registerform` VALUES ('11', '12', '5', '14', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('12', '13', '1', '4', '7', '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('13', '14', '2', '5', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('14', '15', '3', '6', '8', '2', '测试数据', '1');
INSERT INTO `registerform` VALUES ('15', '16', '4', '7', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('16', '17', '5', '8', '10', '3', '测试数据', '1');
INSERT INTO `registerform` VALUES ('17', '18', '1', '9', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('18', '19', '2', '10', '11', '4', '测试数据', '1');
INSERT INTO `registerform` VALUES ('19', '20', '3', '11', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('20', '21', '4', '12', '12', '5', '测试数据', '1');
INSERT INTO `registerform` VALUES ('21', '22', '5', '14', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('22', '23', '1', '4', '7', '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('23', '24', '2', '5', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('24', '25', '3', '6', '8', '2', '测试数据', '1');
INSERT INTO `registerform` VALUES ('25', '26', '4', '7', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('26', '27', '5', '8', '10', '3', '测试数据', '1');
INSERT INTO `registerform` VALUES ('27', '28', '1', '9', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('28', '29', '2', '10', '11', '4', '测试数据', '1');
INSERT INTO `registerform` VALUES ('29', '30', '3', '11', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('30', '31', '4', '12', '12', '5', '测试数据', '1');
INSERT INTO `registerform` VALUES ('31', '32', '5', '14', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('32', '33', '1', '4', '7', '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('33', '34', '2', '5', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('34', '35', '3', '6', '8', '2', '测试数据', '1');
INSERT INTO `registerform` VALUES ('35', '36', '4', '7', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('36', '37', '5', '8', '10', '3', '测试数据', '1');
INSERT INTO `registerform` VALUES ('37', '38', '1', '9', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('38', '39', '2', '10', '11', '4', '测试数据', '1');
INSERT INTO `registerform` VALUES ('39', '40', '3', '11', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('40', '41', '4', '12', '12', '5', '测试数据', '1');
INSERT INTO `registerform` VALUES ('41', '42', '5', '14', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('42', '3', '1', '4', '18', '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('43', '3', '2', '5', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('44', '5', '3', '6', '20', '3', '测试数据', '1');
INSERT INTO `registerform` VALUES ('45', '5', '4', '7', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('46', '7', '5', '8', '22', '5', '测试数据', '1');
INSERT INTO `registerform` VALUES ('47', '7', '1', '9', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('48', '9', '2', '10', '24', '2', '测试数据', '1');
INSERT INTO `registerform` VALUES ('49', '9', '3', '11', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('50', '11', '4', '12', '26', '4', '测试数据', '1');
INSERT INTO `registerform` VALUES ('51', '11', '5', '14', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('52', '4', '1', '4', '28', '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('53', '4', '2', '5', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('54', '6', '3', '6', '30', '3', '测试数据', '1');
INSERT INTO `registerform` VALUES ('55', '6', '4', '7', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('56', '8', '5', '8', '32', '5', '测试数据', '1');
INSERT INTO `registerform` VALUES ('57', '8', '1', '9', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('58', '10', '2', '7', '31', '4', '测试数据', '1');
INSERT INTO `registerform` VALUES ('59', '10', '3', '11', null, '1', '测试数据', '1');
INSERT INTO `registerform` VALUES ('60', '12', '4', '5', '29', '2', '测试数据', '1');
INSERT INTO `registerform` VALUES ('61', '12', '5', '14', null, '1', '测试数据', '1');

-- ----------------------------
-- Table structure for `registerlevel`
-- ----------------------------
DROP TABLE IF EXISTS `registerlevel`;
CREATE TABLE `registerlevel` (
  `registerlevelid` int(4) NOT NULL AUTO_INCREMENT,
  `registerlevelname` varchar(32) NOT NULL,
  `priority` int(4) NOT NULL,
  `discount` int(3) NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `isvalid` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`registerlevelid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registerlevel
-- ----------------------------
INSERT INTO `registerlevel` VALUES ('1', '普通', '1', '100', '测试数据', '1');
INSERT INTO `registerlevel` VALUES ('2', '老年', '2', '70', '测试数据', '1');
INSERT INTO `registerlevel` VALUES ('3', '免费', '3', '0', '测试数据', '1');
INSERT INTO `registerlevel` VALUES ('4', '急诊', '4', '100', '测试数据', '1');
INSERT INTO `registerlevel` VALUES ('5', 'VIP', '5', '85', '测试数据', '1');
INSERT INTO `registerlevel` VALUES ('6', '本院职工', '6', '50', '测试数据', '1');
