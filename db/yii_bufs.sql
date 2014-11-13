/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yii_bufs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-11-13 17:09:50
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
  `gender` enum('male','female') DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `interest_position1` varchar(255) DEFAULT NULL,
  `interest_position2` varchar(255) DEFAULT NULL,
  `interest_position3` varchar(255) DEFAULT NULL,
  `education` int(11) DEFAULT NULL,
  `education_category` int(11) DEFAULT NULL,
  `language1` int(11) DEFAULT NULL,
  `language2` int(11) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `jobs_education_category`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_education_category`;
CREATE TABLE `jobs_education_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_en_name` varchar(255) DEFAULT NULL,
  `category_th_name` varchar(255) DEFAULT NULL,
  `category_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_education_category
-- ----------------------------
INSERT INTO `jobs_education_category` VALUES ('1', 'Management/Human Resource', 'การบริหาร/การจัดการ/บุคคล', null);
INSERT INTO `jobs_education_category` VALUES ('2', 'Marketing/Sale', 'การตลาด/การขาย', null);
INSERT INTO `jobs_education_category` VALUES ('3', 'Hotel/Tourism', 'การโรงแรม/ท่องเที่ยว', null);
INSERT INTO `jobs_education_category` VALUES ('4', 'Legal', 'กฎหมาย', null);
INSERT INTO `jobs_education_category` VALUES ('5', 'Education/Teaching', 'ครุศาสตร์/ศึกษาศาสตร์', null);
INSERT INTO `jobs_education_category` VALUES ('6', 'Accounting/Banking/Finance', 'บัญชี/การเงิน/การธนาคาร', null);
INSERT INTO `jobs_education_category` VALUES ('7', 'Programmer/Computer Sciences/IT', 'โปรแกรมเมอร์/วิทยาศาสตร์คอมพิวเตอร์/IT', null);
INSERT INTO `jobs_education_category` VALUES ('8', 'Economics', 'เศรษฐศาสตร์', null);

-- ----------------------------
-- Table structure for `jobs_education_degree`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_education_degree`;
CREATE TABLE `jobs_education_degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `degree_en_name` varchar(255) DEFAULT NULL,
  `degree_th_name` varchar(255) DEFAULT NULL,
  `degree_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_education_degree
-- ----------------------------
INSERT INTO `jobs_education_degree` VALUES ('1', 'High School / Vocational School', 'ต่ำกว่าปริญญาตรี', null);
INSERT INTO `jobs_education_degree` VALUES ('2', 'Bachelor\'s Degree', 'ปริญญาตรี', null);
INSERT INTO `jobs_education_degree` VALUES ('3', 'Master\'s Degree', 'ปริญญาโท', null);
INSERT INTO `jobs_education_degree` VALUES ('4', 'Doctorate', 'ปริญญาเอก', null);

-- ----------------------------
-- Table structure for `jobs_language`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_language`;
CREATE TABLE `jobs_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_en_name` varchar(255) DEFAULT NULL,
  `language_th_name` varchar(255) DEFAULT NULL,
  `language_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_language
-- ----------------------------
INSERT INTO `jobs_language` VALUES ('1', 'English', 'ภาษาอังกฤษ', null);
INSERT INTO `jobs_language` VALUES ('2', 'Thai', 'ภาษาไทย', null);
INSERT INTO `jobs_language` VALUES ('3', 'Korea', 'ภาษาเกาหลี', null);

-- ----------------------------
-- Table structure for `jobs_nationality`
-- ----------------------------
DROP TABLE IF EXISTS `jobs_nationality`;
CREATE TABLE `jobs_nationality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nation_en_name` varchar(255) DEFAULT NULL,
  `nation_th_name` varchar(255) DEFAULT NULL,
  `nation_kr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_nationality
-- ----------------------------
INSERT INTO `jobs_nationality` VALUES ('1', 'Thai', 'ไทย', null);
INSERT INTO `jobs_nationality` VALUES ('2', 'Korean', 'เกาหลี', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_position
-- ----------------------------
INSERT INTO `jobs_position` VALUES ('1', 'Legal', 'กฎหมาย', null);
INSERT INTO `jobs_position` VALUES ('2', 'Marketing', 'การตลาด', null);
INSERT INTO `jobs_position` VALUES ('3', 'Sales', 'การขาย', null);
INSERT INTO `jobs_position` VALUES ('4', 'Computer/IT/Programmer', 'คอมพิวเตอร์/IT/โปรแกรมเมอร์', null);
INSERT INTO `jobs_position` VALUES ('5', 'Musician/Actor/Singer', 'งานบันเทิง/นักแสดง/นางแบบ/นักร้อง/Stylist/Costume', null);
INSERT INTO `jobs_position` VALUES ('6', 'Finance/Accounting', 'บัญชี/การเงิน', null);
INSERT INTO `jobs_position` VALUES ('7', 'Training/HR/Recruiting', 'บุคคล/ฝึกอบรม', null);
INSERT INTO `jobs_position` VALUES ('8', 'Interpreter/Tourist Guide/Reservation', 'ล่าม/มัคคุเทศก์/จองห้อง/จองตั๋ว', null);
INSERT INTO `jobs_position` VALUES ('9', 'Education/Teachers', 'อาจารย์/ครู/งานวิชาการ', null);

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
