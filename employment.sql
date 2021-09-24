/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : employment

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 24/09/2021 14:11:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for e_city
-- ----------------------------
DROP TABLE IF EXISTS `e_city`;
CREATE TABLE `e_city`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'cid',
  `cname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cname',
  `cpid` int(11) NOT NULL COMMENT 'cpid',
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `cpid`(`cpid`) USING BTREE,
  CONSTRAINT `e_city_ibfk_1` FOREIGN KEY (`cpid`) REFERENCES `e_province` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_city' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `e_enterprise`;
CREATE TABLE `e_enterprise`  (
  `eid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'eid',
  `ename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ename',
  `eno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '企业编号',
  `epwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'epwd',
  `elicense` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '营业执照',
  `einfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '企业信息',
  `ecid` int(11) NOT NULL COMMENT '所在城市',
  `ephone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ephone',
  `eemail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'eemail',
  `eflag` int(11) NOT NULL COMMENT '企业状态：\r\n0未审核、1已通过、2未通过',
  PRIMARY KEY (`eid`) USING BTREE,
  INDEX `ecid`(`ecid`) USING BTREE,
  CONSTRAINT `e_enterprise_ibfk_1` FOREIGN KEY (`ecid`) REFERENCES `e_city` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_enterprise' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_faculty
-- ----------------------------
DROP TABLE IF EXISTS `e_faculty`;
CREATE TABLE `e_faculty`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系',
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'fname',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_faculty' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_hiring
-- ----------------------------
DROP TABLE IF EXISTS `e_hiring`;
CREATE TABLE `e_hiring`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'hid',
  `hname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '招聘名称',
  `hnum` int(11) NOT NULL COMMENT '招聘人数',
  `hmajor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专业',
  `hexperience` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学历',
  `hprice` double(16, 4) NOT NULL COMMENT '招聘薪资',
  `hetime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '招聘结束时间',
  `hflag` int(11) NOT NULL COMMENT '招聘信息状态\n     * 0未审核、1未通过、2进行中、3已过期',
  `hjid` int(11) NOT NULL COMMENT '招聘岗位',
  PRIMARY KEY (`hid`) USING BTREE,
  INDEX `hjid`(`hjid`) USING BTREE,
  CONSTRAINT `e_hiring_ibfk_1` FOREIGN KEY (`hjid`) REFERENCES `e_job` (`jid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_hiring' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_job
-- ----------------------------
DROP TABLE IF EXISTS `e_job`;
CREATE TABLE `e_job`  (
  `jid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'jid',
  `jname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `jinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位信息',
  `jeid` int(11) NOT NULL COMMENT '所属企业',
  PRIMARY KEY (`jid`) USING BTREE,
  INDEX `jeid`(`jeid`) USING BTREE,
  CONSTRAINT `e_job_ibfk_1` FOREIGN KEY (`jeid`) REFERENCES `e_enterprise` (`eid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_job' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_major
-- ----------------------------
DROP TABLE IF EXISTS `e_major`;
CREATE TABLE `e_major`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mid',
  `mname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专业名称',
  `mfid` int(11) NOT NULL COMMENT '所属院系',
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `e_major_ibfk_1`(`mfid`) USING BTREE,
  CONSTRAINT `e_major_ibfk_1` FOREIGN KEY (`mfid`) REFERENCES `e_faculty` (`fid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_major' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_note
-- ----------------------------
DROP TABLE IF EXISTS `e_note`;
CREATE TABLE `e_note`  (
  `nid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'nid',
  `nsid` int(11) NOT NULL COMMENT '学生id',
  `nhid` int(11) NOT NULL COMMENT '招聘信息id',
  `nflag` int(11) NOT NULL COMMENT '记录状态\n     * 0未面试、1未通过、2已通过3、未入职4、已入职',
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `nsid`(`nsid`) USING BTREE,
  INDEX `nhid`(`nhid`) USING BTREE,
  CONSTRAINT `e_note_ibfk_1` FOREIGN KEY (`nsid`) REFERENCES `e_student` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `e_note_ibfk_2` FOREIGN KEY (`nhid`) REFERENCES `e_hiring` (`hid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_note' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_obtain
-- ----------------------------
DROP TABLE IF EXISTS `e_obtain`;
CREATE TABLE `e_obtain`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'oid',
  `osid` int(11) NOT NULL COMMENT '学生信息',
  `oself` int(11) NOT NULL COMMENT '是否自主就业',
  `oename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '就业企业',
  `ojname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '就业职位',
  `otime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结业时间',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `osid`(`osid`) USING BTREE,
  CONSTRAINT `e_obtain_ibfk_1` FOREIGN KEY (`osid`) REFERENCES `e_student` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_obtain' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_province
-- ----------------------------
DROP TABLE IF EXISTS `e_province`;
CREATE TABLE `e_province`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pid',
  `pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'pname',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_province' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of e_province
-- ----------------------------
INSERT INTO `e_province` VALUES (1, '北京');

-- ----------------------------
-- Table structure for e_resume
-- ----------------------------
DROP TABLE IF EXISTS `e_resume`;
CREATE TABLE `e_resume`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'rid',
  `rjobs` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '期望岗位',
  `rprice` double(16, 4) NOT NULL COMMENT '期望薪资',
  `rcid` int(11) NOT NULL COMMENT '期望城市',
  `rskill` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '技能',
  `rsid` int(11) NOT NULL COMMENT '学生',
  PRIMARY KEY (`rid`) USING BTREE,
  INDEX `rsid`(`rsid`) USING BTREE,
  INDEX `rcid`(`rcid`) USING BTREE,
  CONSTRAINT `e_resume_ibfk_1` FOREIGN KEY (`rsid`) REFERENCES `e_student` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `e_resume_ibfk_2` FOREIGN KEY (`rcid`) REFERENCES `e_city` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_resume' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_student
-- ----------------------------
DROP TABLE IF EXISTS `e_student`;
CREATE TABLE `e_student`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'sid',
  `sname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'sname',
  `sno` int(11) NOT NULL COMMENT '学号',
  `sidcard` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号',
  `sage` int(11) NOT NULL COMMENT 'sage',
  `ssex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ssex',
  `sphone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'sphone',
  `semail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'semail',
  `spwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'spwd',
  `smid` int(11) NOT NULL COMMENT '所属专业',
  `sbgdate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '入学年份',
  `seducation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学历',
  `sflag` int(11) NOT NULL COMMENT '学生状态\n     * 0未就业、1求职中、2已就业、3离职、4再次就业',
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `smid`(`smid`) USING BTREE,
  CONSTRAINT `e_student_ibfk_1` FOREIGN KEY (`smid`) REFERENCES `e_major` (`mid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_student' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_through
-- ----------------------------
DROP TABLE IF EXISTS `e_through`;
CREATE TABLE `e_through`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'tid',
  `tname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `tcontent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目内容',
  `ttime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目时间',
  `trid` int(11) NOT NULL COMMENT '简历id',
  PRIMARY KEY (`tid`) USING BTREE,
  INDEX `trid`(`trid`) USING BTREE,
  CONSTRAINT `e_through_ibfk_1` FOREIGN KEY (`trid`) REFERENCES `e_resume` (`rid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_through' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for e_university
-- ----------------------------
DROP TABLE IF EXISTS `e_university`;
CREATE TABLE `e_university`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'uid',
  `uname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'uname',
  `uno` int(11) NOT NULL COMMENT 'uno',
  `upwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'upwd',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_university' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
