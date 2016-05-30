/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : recruit

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2016-05-25 22:38:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `auserid` varchar(255) NOT NULL,
  `ausername` varchar(255) NOT NULL,
  `auserpwd` varchar(255) NOT NULL,
  `adept` varchar(255) DEFAULT NULL,
  `acompany` varchar(255) DEFAULT NULL,
  `apow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('', '', '', '', '', '');
INSERT INTO `adminuser` VALUES ('111', '111', '111', '111', '111', '1');
INSERT INTO `adminuser` VALUES ('1234', '123', '123', '123', '123', '超级管理员');
INSERT INTO `adminuser` VALUES ('222', '222', '222', '222', '222', '1');
INSERT INTO `adminuser` VALUES ('333', '333', '333', '333', '333', '超级管理员');
INSERT INTO `adminuser` VALUES ('444', '444', '444', '444', '444', '1');
INSERT INTO `adminuser` VALUES ('456', '456', '456', '456', '456', '超级管理员');
INSERT INTO `adminuser` VALUES ('555', '555', '555', '555', '55', '1');
INSERT INTO `adminuser` VALUES ('666', '666', '666', '666', '666', '1');
INSERT INTO `adminuser` VALUES ('777', '777', '777', '777', '777', '1');
INSERT INTO `adminuser` VALUES ('789', '789', '789', '789', '789', '超级管理员');
INSERT INTO `adminuser` VALUES ('888', '888', '888', '888', '888', '1');
INSERT INTO `adminuser` VALUES ('999', '999', '999', '999', '999', '1');

-- ----------------------------
-- Table structure for `eduinfo`
-- ----------------------------
DROP TABLE IF EXISTS `eduinfo`;
CREATE TABLE `eduinfo` (
  `eduinfoid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `school` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `edutype` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eduinfoid`),
  KEY `useredu` (`userid`),
  CONSTRAINT `useredu` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eduinfo
-- ----------------------------
INSERT INTO `eduinfo` VALUES ('1', '1', '2016-05-17', '2016-05-27', '1111', '1111', '1111', '1111', '1111');
INSERT INTO `eduinfo` VALUES ('2', '1', '2016-05-27', '2016-06-04', '2222', '2222', '2222', '2222', '2222');

-- ----------------------------
-- Table structure for `evainfo`
-- ----------------------------
DROP TABLE IF EXISTS `evainfo`;
CREATE TABLE `evainfo` (
  `evainfoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `evaluation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evainfoid`),
  KEY `usereva` (`userid`),
  CONSTRAINT `usereva` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evainfo
-- ----------------------------

-- ----------------------------
-- Table structure for `expinfo`
-- ----------------------------
DROP TABLE IF EXISTS `expinfo`;
CREATE TABLE `expinfo` (
  `expinfoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `company` varchar(255) NOT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`expinfoid`),
  KEY `userexp` (`userid`),
  CONSTRAINT `userexp` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `jobapp`
-- ----------------------------
DROP TABLE IF EXISTS `jobapp`;
CREATE TABLE `jobapp` (
  `jobappid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `posnum` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobappid`),
  KEY `userpos` (`userid`),
  KEY `posjob` (`posnum`),
  CONSTRAINT `jobpos` FOREIGN KEY (`posnum`) REFERENCES `positioninfo` (`posnum`),
  CONSTRAINT `jobuser` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobapp
-- ----------------------------

-- ----------------------------
-- Table structure for `langinfo`
-- ----------------------------
DROP TABLE IF EXISTS `langinfo`;
CREATE TABLE `langinfo` (
  `langinfoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`langinfoid`),
  KEY `userlang` (`userid`),
  CONSTRAINT `userlang` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of langinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `positioninfo`
-- ----------------------------
DROP TABLE IF EXISTS `positioninfo`;
CREATE TABLE `positioninfo` (
  `posnum` varchar(11) NOT NULL,
  `posname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `num` varchar(255) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `posdesc` varchar(255) DEFAULT NULL,
  `posreq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`posnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of positioninfo
-- ----------------------------
INSERT INTO `positioninfo` VALUES ('1', '总经理', '曹磊', '营销', '北京', '15', '2016-05-20 00:00:00', '没有', '哈哈哈哈');
INSERT INTO `positioninfo` VALUES ('2', '副经理', '曹磊', '营销', '北京', '23', '2016-05-26 00:00:00', '有没有', '哈哈哈');

-- ----------------------------
-- Table structure for `resume`
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `resumeid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tall` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `politicalstatus` varchar(255) DEFAULT NULL,
  `maritalstatus` varchar(255) DEFAULT NULL,
  `idcardnum` varchar(255) DEFAULT NULL,
  `expricesyears` varchar(255) DEFAULT NULL,
  `nowposition` varchar(255) DEFAULT NULL,
  `wishmonthsalary` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resumeid`),
  KEY `userres` (`userid`),
  CONSTRAINT `userres` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('3', '1', '', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('4', '1', '', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('5', '1', '', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('6', '1', '', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('7', '1', '', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('8', '1', 'ssssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('9', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('10', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('11', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('12', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('13', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('14', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('15', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('16', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');
INSERT INTO `resume` VALUES ('17', '1', 'ssssssssssss', '0', '', null, null, '', '', null, '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1196585084@qq.com', 'tian', '123456');
INSERT INTO `user` VALUES ('6', '123@qq.com', '用户123', '123123');
INSERT INTO `user` VALUES ('7', '456@q.com', '用户456', '456456');
INSERT INTO `user` VALUES ('8', '456456@q.com', '用户456456', '456456456');
INSERT INTO `user` VALUES ('9', '4564576@q.com', '用户456456', '123455');
INSERT INTO `user` VALUES ('10', '4564576123@q.com', '用户456456', '111111');
INSERT INTO `user` VALUES ('11', '456457612312@q.com', '用户456456', '111111');
INSERT INTO `user` VALUES ('12', '4564576123121@q.com', '用户456456333', '333333');
INSERT INTO `user` VALUES ('13', '45645276123121@q.com', '用户4564526333', '222222');
