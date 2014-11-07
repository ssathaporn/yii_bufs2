/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yii_bufs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-11-07 16:43:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `community`
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `author` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `view` int(50) DEFAULT NULL,
  `pinning` enum('yes','no') DEFAULT 'no',
  `category` enum('notice','document','news','qna') DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------

-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------

-- ----------------------------
-- Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_fname` varchar(255) DEFAULT NULL,
  `local_lname` varchar(255) DEFAULT NULL,
  `en_fname` varchar(255) DEFAULT NULL,
  `en_lname` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` enum('th','kr') DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `interest_job1` int(11) DEFAULT NULL,
  `interest_job2` int(11) DEFAULT NULL,
  `interest_job3` int(11) DEFAULT NULL,
  `education` int(11) DEFAULT NULL,
  `education_branch` int(11) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `jobs_branch`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_branch`;
CREATE TABLE `jobs_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_en_name` varchar(255) DEFAULT NULL,
  `branch_th_name` varchar(255) DEFAULT NULL,
  `branch_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_branch
-- ----------------------------
INSERT INTO `jobs_branch` VALUES ('1', 'Management', 'การจัดการ', null);
INSERT INTO `jobs_branch` VALUES ('2', 'Business Administration', 'บริหารธุรกิจ', null);
INSERT INTO `jobs_branch` VALUES ('3', 'Accounting', 'การบัญชี', null);
INSERT INTO `jobs_branch` VALUES ('4', 'Tourism', 'การท่องเที่ยว', null);

-- ----------------------------
-- Table structure for `jobs_education`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_education`;
CREATE TABLE `jobs_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `education_en_name` varchar(255) DEFAULT NULL,
  `education_th_name` varchar(255) DEFAULT NULL,
  `education_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_education
-- ----------------------------
INSERT INTO `jobs_education` VALUES ('1', 'Master\'s Degree or Higher', 'ต่ำกว่าปริญญาตรี', null);
INSERT INTO `jobs_education` VALUES ('2', 'Bachelor\'s Degree', 'ปริญญาตรี', null);
INSERT INTO `jobs_education` VALUES ('3', 'High School / Vocational School', 'สูงกว่าปริญญาตรี', null);

-- ----------------------------
-- Table structure for `jobs_position`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_position`;
CREATE TABLE `jobs_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_en_name` varchar(255) DEFAULT NULL,
  `position_th_name` varchar(255) DEFAULT NULL,
  `position_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_position
-- ----------------------------
INSERT INTO `jobs_position` VALUES ('1', 'Marketting', 'การตลาด', null);
INSERT INTO `jobs_position` VALUES ('2', 'Guide', 'มัคคุเทศก์', null);
INSERT INTO `jobs_position` VALUES ('3', 'Accouting', 'การเงิน', null);
INSERT INTO `jobs_position` VALUES ('4', 'IT', 'ไอที', null);
INSERT INTO `jobs_position` VALUES ('5', 'Sales', 'งานขาย', null);
INSERT INTO `jobs_position` VALUES ('6', 'Law', 'กฏหมาย', null);
INSERT INTO `jobs_position` VALUES ('7', 'Translator', 'ล่าม', null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_fname` varchar(255) DEFAULT NULL,
  `local_lname` varchar(255) DEFAULT NULL,
  `en_fname` varchar(255) DEFAULT NULL,
  `en_lname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nationality` enum('th','kr') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `status` enum('admin','member') DEFAULT 'member',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'สถาพร', 'สำราญ', 'Sathaporn ', 'Samran', 'smokers', '19861', 'th', 'bbird_ss@outlook.com', '0805799619', 'male', '1990-02-22', '2014-11-05 09:22:58', 'member');
