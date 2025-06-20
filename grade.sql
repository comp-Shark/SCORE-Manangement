/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : grade

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2025-05-10 22:41:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `choice`
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(15) DEFAULT NULL,
  `CourseId` varchar(10) DEFAULT NULL,
  `ChoiceDate` date DEFAULT NULL,
  `ChoiceStatus` enum('已注册','未注册') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentId` (`StudentId`),
  KEY `CourseId` (`CourseId`),
  CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`),
  CONSTRAINT `choice_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES ('1', '2025010101', '001', '2025-09-02', '已注册');
INSERT INTO `choice` VALUES ('2', '2025010101', '002', '2025-09-03', '未注册');
INSERT INTO `choice` VALUES ('3', '2025010102', '003', '2025-09-04', '已注册');
INSERT INTO `choice` VALUES ('4', '2025010102', '004', '2025-09-05', '未注册');
INSERT INTO `choice` VALUES ('5', '2025010103', '005', '2025-09-06', '已注册');
INSERT INTO `choice` VALUES ('6', '2025010103', '006', '2025-09-07', '未注册');
INSERT INTO `choice` VALUES ('7', '2025010104', '001', '2025-09-08', '已注册');
INSERT INTO `choice` VALUES ('8', '2025010104', '002', '2025-09-09', '未注册');
INSERT INTO `choice` VALUES ('9', '2025010105', '003', '2025-09-10', '已注册');
INSERT INTO `choice` VALUES ('10', '2025010105', '004', '2025-09-11', '未注册');
INSERT INTO `choice` VALUES ('11', '2025010106', '005', '2025-09-12', '已注册');
INSERT INTO `choice` VALUES ('12', '2025010106', '006', '2025-09-13', '未注册');
INSERT INTO `choice` VALUES ('13', '2025010107', '001', '2025-09-14', '已注册');
INSERT INTO `choice` VALUES ('14', '2025010107', '002', '2025-09-15', '未注册');
INSERT INTO `choice` VALUES ('15', '2025010108', '003', '2025-09-16', '已注册');
INSERT INTO `choice` VALUES ('16', '2025010108', '004', '2025-09-17', '未注册');
INSERT INTO `choice` VALUES ('17', '2025010109', '005', '2025-09-18', '已注册');
INSERT INTO `choice` VALUES ('18', '2025010109', '006', '2025-09-19', '未注册');
INSERT INTO `choice` VALUES ('19', '2025010110', '001', '2025-09-20', '已注册');
INSERT INTO `choice` VALUES ('20', '2025010110', '002', '2025-09-21', '未注册');
INSERT INTO `choice` VALUES ('21', '2025010111', '003', '2025-09-22', '已注册');
INSERT INTO `choice` VALUES ('22', '2025010111', '004', '2025-09-23', '未注册');
INSERT INTO `choice` VALUES ('23', '2025010112', '005', '2025-09-24', '已注册');
INSERT INTO `choice` VALUES ('24', '2025010112', '006', '2025-09-25', '未注册');
INSERT INTO `choice` VALUES ('25', '2025010113', '001', '2025-09-26', '已注册');
INSERT INTO `choice` VALUES ('26', '2025010113', '002', '2025-09-27', '未注册');
INSERT INTO `choice` VALUES ('27', '2025010114', '003', '2025-09-28', '已注册');
INSERT INTO `choice` VALUES ('28', '2025010114', '004', '2025-09-29', '未注册');
INSERT INTO `choice` VALUES ('29', '2025010115', '005', '2025-09-30', '已注册');
INSERT INTO `choice` VALUES ('30', '2025010115', '006', '2025-10-01', '未注册');
INSERT INTO `choice` VALUES ('31', '2025010116', '001', '2025-10-02', '已注册');
INSERT INTO `choice` VALUES ('32', '2025010116', '002', '2025-10-03', '未注册');
INSERT INTO `choice` VALUES ('33', '2025010117', '003', '2025-10-04', '已注册');
INSERT INTO `choice` VALUES ('34', '2025010117', '004', '2025-10-05', '未注册');
INSERT INTO `choice` VALUES ('35', '2025010118', '005', '2025-10-06', '已注册');
INSERT INTO `choice` VALUES ('36', '2025010118', '006', '2025-10-07', '未注册');
INSERT INTO `choice` VALUES ('37', '2025010119', '001', '2025-10-08', '已注册');
INSERT INTO `choice` VALUES ('38', '2025010119', '002', '2025-10-09', '未注册');
INSERT INTO `choice` VALUES ('39', '2025010120', '003', '2025-10-10', '已注册');
INSERT INTO `choice` VALUES ('40', '2025010120', '004', '2025-10-11', '未注册');
INSERT INTO `choice` VALUES ('41', '2025010121', '005', '2025-10-12', '已注册');
INSERT INTO `choice` VALUES ('42', '2025010121', '006', '2025-10-13', '未注册');
INSERT INTO `choice` VALUES ('43', '2025010122', '001', '2025-10-14', '已注册');
INSERT INTO `choice` VALUES ('44', '2025010122', '002', '2025-10-15', '未注册');
INSERT INTO `choice` VALUES ('45', '2025010123', '003', '2025-10-16', '已注册');
INSERT INTO `choice` VALUES ('46', '2025010123', '004', '2025-10-17', '未注册');
INSERT INTO `choice` VALUES ('47', '2025010124', '005', '2025-10-18', '已注册');
INSERT INTO `choice` VALUES ('48', '2025010124', '006', '2025-10-19', '未注册');
INSERT INTO `choice` VALUES ('49', '2025010125', '001', '2025-10-20', '已注册');
INSERT INTO `choice` VALUES ('50', '2025010125', '002', '2025-10-21', '未注册');
INSERT INTO `choice` VALUES ('51', '2025010126', '003', '2025-10-22', '已注册');
INSERT INTO `choice` VALUES ('52', '2025010126', '004', '2025-10-23', '未注册');
INSERT INTO `choice` VALUES ('53', '2025010127', '005', '2025-10-24', '已注册');
INSERT INTO `choice` VALUES ('54', '2025010127', '006', '2025-10-25', '未注册');
INSERT INTO `choice` VALUES ('55', '2025010128', '001', '2025-10-26', '已注册');
INSERT INTO `choice` VALUES ('56', '2025010128', '002', '2025-10-27', '未注册');
INSERT INTO `choice` VALUES ('57', '2025010129', '003', '2025-10-28', '已注册');
INSERT INTO `choice` VALUES ('58', '2025010129', '004', '2025-10-29', '未注册');
INSERT INTO `choice` VALUES ('59', '2025010130', '005', '2025-10-30', '已注册');
INSERT INTO `choice` VALUES ('60', '2025010130', '006', '2025-11-01', '未注册');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `College` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `ClassSize` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '计算机科学与技术1班', '计算机与自动化学院', '计算机科学与技术', '30');
INSERT INTO `class` VALUES ('2', '英语1班', '外语学院', '英语', '30');
INSERT INTO `class` VALUES ('3', '法学1班', '文法学院', '法学', '30');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CourseId` varchar(10) NOT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `CourseCredit` decimal(3,1) DEFAULT NULL,
  `TeacherJobId` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CourseId`),
  KEY `TeacherJobId` (`TeacherJobId`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`TeacherJobId`) REFERENCES `teacher` (`JobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('001', '数据结构', '4.0', 't2025010101');
INSERT INTO `course` VALUES ('002', '操作系统', '4.0', 't2025010101');
INSERT INTO `course` VALUES ('003', '英语口语', '3.0', 't2025010103');
INSERT INTO `course` VALUES ('004', '高级英语', '3.0', 't2025010103');
INSERT INTO `course` VALUES ('005', '宪法学', '2.5', 't2025010105');
INSERT INTO `course` VALUES ('006', '民法学', '2.5', 't2025010105');

-- ----------------------------
-- Table structure for `gradeinfo_student`
-- ----------------------------
DROP TABLE IF EXISTS `gradeinfo_student`;
CREATE TABLE `gradeinfo_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(15) DEFAULT NULL,
  `CourseId` varchar(10) DEFAULT NULL,
  `Grade` decimal(5,2) DEFAULT NULL,
  `IsPass` enum('Yes','No') DEFAULT NULL,
  `PassCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentId` (`StudentId`),
  KEY `CourseId` (`CourseId`),
  CONSTRAINT `gradeinfo_student_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`),
  CONSTRAINT `gradeinfo_student_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gradeinfo_student
-- ----------------------------
INSERT INTO `gradeinfo_student` VALUES ('1', '2025010101', '001', '85.50', 'Yes', '25');
INSERT INTO `gradeinfo_student` VALUES ('2', '2025010101', '002', '80.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('3', '2025010101', '003', '75.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('4', '2025010101', '004', '90.00', 'Yes', '27');
INSERT INTO `gradeinfo_student` VALUES ('5', '2025010101', '005', '70.00', 'No', '22');
INSERT INTO `gradeinfo_student` VALUES ('6', '2025010106', '005', '85.00', 'Yes', '29');
INSERT INTO `gradeinfo_student` VALUES ('7', '2025010107', '001', '78.00', 'Yes', '25');
INSERT INTO `gradeinfo_student` VALUES ('8', '2025010108', '003', '82.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('9', '2025010109', '005', '88.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('10', '2025010110', '001', '76.00', 'Yes', '27');
INSERT INTO `gradeinfo_student` VALUES ('11', '2025010111', '003', '79.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('12', '2025010112', '005', '84.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('13', '2025010113', '001', '81.00', 'Yes', '25');
INSERT INTO `gradeinfo_student` VALUES ('14', '2025010114', '003', '83.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('15', '2025010115', '005', '87.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('16', '2025010116', '001', '77.00', 'Yes', '27');
INSERT INTO `gradeinfo_student` VALUES ('17', '2025010117', '003', '86.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('18', '2025010118', '005', '73.00', 'No', '22');
INSERT INTO `gradeinfo_student` VALUES ('19', '2025010119', '001', '92.00', 'Yes', '25');
INSERT INTO `gradeinfo_student` VALUES ('20', '2025010120', '003', '75.00', 'No', '22');
INSERT INTO `gradeinfo_student` VALUES ('21', '2025010121', '005', '80.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('22', '2025010122', '001', '84.00', 'Yes', '27');
INSERT INTO `gradeinfo_student` VALUES ('23', '2025010123', '003', '78.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('24', '2025010124', '005', '82.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('25', '2025010125', '001', '79.00', 'Yes', '25');
INSERT INTO `gradeinfo_student` VALUES ('26', '2025010126', '003', '85.00', 'Yes', '28');
INSERT INTO `gradeinfo_student` VALUES ('27', '2025010127', '005', '89.00', 'Yes', '26');
INSERT INTO `gradeinfo_student` VALUES ('28', '2025010128', '001', '83.00', 'Yes', '27');
INSERT INTO `gradeinfo_student` VALUES ('29', '2025010129', '003', '77.00', 'No', '22');
INSERT INTO `gradeinfo_student` VALUES ('30', '2025010130', '005', '81.00', 'Yes', '26');

-- ----------------------------
-- Table structure for `gradeinfo_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `gradeinfo_teacher`;
CREATE TABLE `gradeinfo_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` varchar(10) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `Grade` decimal(5,2) DEFAULT NULL,
  `IsPass` enum('Yes','No') DEFAULT NULL,
  `PassCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CourseId` (`CourseId`),
  KEY `ClassId` (`ClassId`),
  CONSTRAINT `gradeinfo_teacher_ibfk_1` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`),
  CONSTRAINT `gradeinfo_teacher_ibfk_2` FOREIGN KEY (`ClassId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gradeinfo_teacher
-- ----------------------------
INSERT INTO `gradeinfo_teacher` VALUES ('1', '001', '1', '85.50', 'Yes', '25');
INSERT INTO `gradeinfo_teacher` VALUES ('2', '003', '2', '80.00', 'Yes', '28');
INSERT INTO `gradeinfo_teacher` VALUES ('3', '005', '3', '75.00', 'Yes', '26');
INSERT INTO `gradeinfo_teacher` VALUES ('4', '002', '1', '90.00', 'Yes', '27');
INSERT INTO `gradeinfo_teacher` VALUES ('5', '004', '2', '70.00', 'No', '22');
INSERT INTO `gradeinfo_teacher` VALUES ('6', '006', '3', '85.00', 'Yes', '29');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(15) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` enum('男','女') DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `EnrollDate` date DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`),
  KEY `ClassId` (`ClassId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`ClassId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2025010101', '林小燕', '女', '2005-01-01', '2025-09-01', '13800138010', '1');
INSERT INTO `student` VALUES ('2', '2025010102', '张博文', '男', '2005-02-01', '2025-09-01', '13800138011', '1');
INSERT INTO `student` VALUES ('3', '2025010103', '李思琪', '女', '2005-03-01', '2025-09-01', '13800138012', '1');
INSERT INTO `student` VALUES ('4', '2025010104', '王浩然', '男', '2005-04-01', '2025-09-01', '13800138013', '1');
INSERT INTO `student` VALUES ('5', '2025010105', '陈雨桐', '女', '2005-05-01', '2025-09-01', '13800138014', '1');
INSERT INTO `student` VALUES ('6', '2025010106', '赵梓轩', '男', '2005-06-01', '2025-09-01', '13800138015', '1');
INSERT INTO `student` VALUES ('7', '2025010107', '黄雅诗', '女', '2005-07-01', '2025-09-01', '13800138016', '1');
INSERT INTO `student` VALUES ('8', '2025010108', '周俊杰', '男', '2005-08-01', '2025-09-01', '13800138017', '1');
INSERT INTO `student` VALUES ('9', '2025010109', '吴佳怡', '女', '2005-09-01', '2025-09-01', '13800138018', '1');
INSERT INTO `student` VALUES ('10', '2025010110', '徐梦琪', '女', '2005-10-01', '2025-09-01', '13800138019', '1');
INSERT INTO `student` VALUES ('11', '2025010111', '郭子轩', '男', '2005-11-01', '2025-09-01', '13800138020', '2');
INSERT INTO `student` VALUES ('12', '2025010112', '孙雨婷', '女', '2005-12-01', '2025-09-01', '13800138021', '2');
INSERT INTO `student` VALUES ('13', '2025010113', '曹睿', '男', '2005-01-02', '2025-09-01', '13800138022', '2');
INSERT INTO `student` VALUES ('14', '2025010114', '刘雅萱', '女', '2005-02-02', '2025-09-01', '13800138023', '2');
INSERT INTO `student` VALUES ('15', '2025010115', '杨思源', '男', '2005-03-02', '2025-09-01', '13800138024', '2');
INSERT INTO `student` VALUES ('16', '2025010116', '李依娜', '女', '2005-04-02', '2025-09-01', '13800138025', '2');
INSERT INTO `student` VALUES ('17', '2025010117', '张泽洋', '男', '2005-05-02', '2025-09-01', '13800138026', '2');
INSERT INTO `student` VALUES ('18', '2025010118', '王诗晴', '女', '2005-06-02', '2025-09-01', '13800138027', '2');
INSERT INTO `student` VALUES ('19', '2025010119', '赵天宇', '男', '2005-07-02', '2025-09-01', '13800138028', '2');
INSERT INTO `student` VALUES ('20', '2025010120', '陈佳怡', '女', '2005-08-02', '2025-09-01', '13800138029', '2');
INSERT INTO `student` VALUES ('21', '2025010121', '周子涵', '女', '2005-09-02', '2025-09-01', '13800138030', '3');
INSERT INTO `student` VALUES ('22', '2025010122', '吴宇轩', '男', '2005-10-02', '2025-09-01', '13800138031', '3');
INSERT INTO `student` VALUES ('23', '2025010123', '郑婉婷', '女', '2005-11-02', '2025-09-01', '13800138032', '3');
INSERT INTO `student` VALUES ('24', '2025010124', '张梓豪', '男', '2005-12-02', '2025-09-01', '13800138033', '3');
INSERT INTO `student` VALUES ('25', '2025010125', '林诗雨', '女', '2005-01-03', '2025-09-01', '13800138034', '3');
INSERT INTO `student` VALUES ('26', '2025010126', '陈浩然', '男', '2005-02-03', '2025-09-01', '13800138035', '3');
INSERT INTO `student` VALUES ('27', '2025010127', '王思琪', '女', '2005-03-03', '2025-09-01', '13800138036', '3');
INSERT INTO `student` VALUES ('28', '2025010128', '李嘉诚', '男', '2005-04-03', '2025-09-01', '13800138037', '3');
INSERT INTO `student` VALUES ('29', '2025010129', '赵梓萱', '女', '2005-05-03', '2025-09-01', '13800138038', '3');
INSERT INTO `student` VALUES ('30', '2025010130', '张雨桐', '女', '2005-06-03', '2025-09-01', '13800138039', '3');

-- ----------------------------
-- Table structure for `student_course_record`
-- ----------------------------
DROP TABLE IF EXISTS `student_course_record`;
CREATE TABLE `student_course_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(15) DEFAULT NULL,
  `StudentName` varchar(50) DEFAULT NULL,
  `CourseId` varchar(10) DEFAULT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `ChoiceStatus` enum('已注册','未注册') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentId` (`StudentId`),
  KEY `CourseId` (`CourseId`),
  CONSTRAINT `student_course_record_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`),
  CONSTRAINT `student_course_record_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course_record
-- ----------------------------
INSERT INTO `student_course_record` VALUES ('1', '2025010101', '林小燕', '001', '数据结构', '已注册');
INSERT INTO `student_course_record` VALUES ('2', '2025010101', '林小燕', '002', '操作系统', '未注册');
INSERT INTO `student_course_record` VALUES ('3', '2025010101', '林小燕', '003', '英语口语', '已注册');
INSERT INTO `student_course_record` VALUES ('4', '2025010101', '林小燕', '004', '高级英语', '未注册');
INSERT INTO `student_course_record` VALUES ('5', '2025010101', '林小燕', '005', '宪法学', '已注册');
INSERT INTO `student_course_record` VALUES ('6', '2025010101', '林小燕', '006', '民法学', '未注册');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `JobId` varchar(15) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` enum('男','女') DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `JobId` (`JobId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 't2025010101', '李明', '男', '计算机与自动化学院', '13800138000', '2025-01-01');
INSERT INTO `teacher` VALUES ('2', 't2025010102', '张华', '女', '计算机与自动化学院', '13800138001', '2025-02-01');
INSERT INTO `teacher` VALUES ('3', 't2025010103', '王芳', '女', '外语学院', '13800138002', '2025-03-01');
INSERT INTO `teacher` VALUES ('4', 't2025010104', '赵强', '男', '外语学院', '13800138003', '2025-04-01');
INSERT INTO `teacher` VALUES ('5', 't2025010105', '刘洋', '男', '文法学院', '13800138004', '2025-05-01');
INSERT INTO `teacher` VALUES ('6', 't2025010106', '陈静', '女', '文法学院', '13800138005', '2025-06-01');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `JobId` varchar(15) DEFAULT NULL,
  `StudentId` varchar(15) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` enum('男','女') DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123456', '123456', '2', 't2025010101', null, '李明', '男', '19784645687');
INSERT INTO `user` VALUES ('2', 'teacher2@example.com', 'password2', '2', 't2025010102', null, '张华', '女', '13800138001');
INSERT INTO `user` VALUES ('3', '123', '123', '1', null, '2025010101', '林小燕', '女', '13800138010');
INSERT INTO `user` VALUES ('4', 'zhangbowen@example.com', 'password2', '1', null, '2025010102', '张博文', '男', '13800138011');
INSERT INTO `user` VALUES ('5', 'lisiqi@example.com', 'password3', '1', null, '2025010103', '李思琪', '女', '13800138012');
INSERT INTO `user` VALUES ('6', 'wanghaoran@example.com', 'password4', '1', null, '2025010104', '王浩然', '男', '13800138013');
INSERT INTO `user` VALUES ('7', 'chenyutong@example.com', 'password5', '1', null, '2025010105', '陈雨桐', '女', '13800138014');
INSERT INTO `user` VALUES ('8', 'zhaozixuan@example.com', 'password6', '1', null, '2025010106', '赵梓轩', '男', '13800138015');
INSERT INTO `user` VALUES ('9', 'huangyashi@example.com', 'password7', '1', null, '2025010107', '黄雅诗', '女', '13800138016');
INSERT INTO `user` VALUES ('10', 'zhoujunjie@example.com', 'password8', '1', null, '2025010108', '周俊杰', '男', '13800138017');
INSERT INTO `user` VALUES ('11', 'wujiayi@example.com', 'password9', '1', null, '2025010109', '吴佳怡', '女', '13800138018');
INSERT INTO `user` VALUES ('12', 'xumengqi@example.com', 'password10', '1', null, '2025010110', '徐梦琪', '女', '13800138019');
INSERT INTO `user` VALUES ('13', 'guozixuan@example.com', 'password11', '1', null, '2025010111', '郭子轩', '男', '13800138020');
INSERT INTO `user` VALUES ('14', 'sunyuting@example.com', 'password12', '1', null, '2025010112', '孙雨婷', '女', '13800138021');
INSERT INTO `user` VALUES ('15', 'caorui@example.com', 'password13', '1', null, '2025010113', '曹睿', '男', '13800138022');
INSERT INTO `user` VALUES ('16', 'liuyaxuan@example.com', 'password14', '1', null, '2025010114', '刘雅萱', '女', '13800138023');
INSERT INTO `user` VALUES ('17', 'yangsiyuan@example.com', 'password15', '1', null, '2025010115', '杨思源', '男', '13800138024');
INSERT INTO `user` VALUES ('18', 'liyina@example.com', 'password16', '1', null, '2025010116', '李依娜', '女', '13800138025');
INSERT INTO `user` VALUES ('19', 'zhangzeyang@example.com', 'password17', '1', null, '2025010117', '张泽洋', '男', '13800138026');
INSERT INTO `user` VALUES ('20', 'wangshiqing@example.com', 'password18', '1', null, '2025010118', '王诗晴', '女', '13800138027');
INSERT INTO `user` VALUES ('21', 'zhaotianyu@example.com', 'password19', '1', null, '2025010119', '赵天宇', '男', '13800138028');
INSERT INTO `user` VALUES ('22', 'chenjiayi@example.com', 'password20', '1', null, '2025010120', '陈佳怡', '女', '13800138029');
INSERT INTO `user` VALUES ('23', 'zhouzihan@example.com', 'password21', '1', null, '2025010121', '周子涵', '女', '13800138030');
INSERT INTO `user` VALUES ('24', 'wuyuxuan@example.com', 'password22', '1', null, '2025010122', '吴宇轩', '男', '13800138031');
INSERT INTO `user` VALUES ('25', 'zhengwanting@example.com', 'password23', '1', null, '2025010123', '郑婉婷', '女', '13800138032');
INSERT INTO `user` VALUES ('26', 'zhangzihao@example.com', 'password24', '1', null, '2025010124', '张梓豪', '男', '13800138033');
INSERT INTO `user` VALUES ('27', 'linsiyu@example.com', 'password25', '1', null, '2025010125', '林诗雨', '女', '13800138034');
INSERT INTO `user` VALUES ('28', 'chenhaoran@example.com', 'password26', '1', null, '2025010126', '陈浩然', '男', '13800138035');
INSERT INTO `user` VALUES ('29', 'wangsiqi@example.com', 'password27', '1', null, '2025010127', '王思琪', '女', '13800138036');
INSERT INTO `user` VALUES ('30', 'lizijia@example.com', 'password28', '1', null, '2025010128', '李嘉诚', '男', '13800138037');
INSERT INTO `user` VALUES ('31', 'zhaozixuan@example.com', 'password29', '1', null, '2025010129', '赵梓萱', '女', '13800138038');
INSERT INTO `user` VALUES ('32', 'zhangyutong@example.com', 'password30', '1', null, '2025010130', '张雨桐', '女', '13800138039');
