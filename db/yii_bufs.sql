/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yii_bufs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-11-14 17:02:29
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
  `position_category` int(11) DEFAULT NULL,
  `education` int(11) DEFAULT NULL,
  `education_category` int(11) DEFAULT NULL,
  `language1` int(11) DEFAULT NULL,
  `language2` int(11) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', 'จิรายุ_1', 'คุ้มกายใจ_1', 'FNAME_1', 'LNAME_1', '20', 'male', '2', 'การตลาด', 'มัคคุเทศก์', 'เจ้าหน้าที่งานธุรการ', '6', '2', '7', '3', '2', '2', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('2', 'จิรายุ_2', 'คุ้มกายใจ_2', 'FNAME_2', 'LNAME_2', '47', 'male', '2', 'เจ้าหน้าที่งานธุรการ', 'ประชาสัมพันธ์', 'Graphic Design', '7', '3', '7', '1', '2', '3', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('3', 'จิรายุ_3', 'คุ้มกายใจ_3', 'FNAME_3', 'LNAME_3', '42', 'male', '2', 'จัดซื้อ', 'วิเคราะห์การเงิน', 'การเงิน', '6', '2', '4', '2', '2', '4', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('4', 'จิรายุ_4', 'คุ้มกายใจ_4', 'FNAME_4', 'LNAME_4', '30', 'male', '2', 'คีย์ข้อมูล', 'Suparvisor', 'Web Programming', '7', '4', '6', '1', '3', '4', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('5', 'จิรายุ_5', 'คุ้มกายใจ_5', 'FNAME_5', 'LNAME_5', '22', 'male', '2', 'เจ้าหน้าที่งานธุรการ', 'ติดต่อต่างประเทศ', 'นิติกร', '2', '1', '6', '2', '2', '1', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('6', 'จิรายุ_6', 'คุ้มกายใจ_6', 'FNAME_6', 'LNAME_6', '43', 'male', '2', 'เลขานุการ', 'ทนายความ', 'การตลาด', '5', '2', '2', '3', '3', '2', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('7', 'จิรายุ_7', 'คุ้มกายใจ_7', 'FNAME_7', 'LNAME_7', '37', 'male', '2', 'พนักงานต้อนรับ', 'Web Design', 'คีย์ข้อมูล', '6', '1', '5', '2', '2', '2', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('8', 'จิรายุ_8', 'คุ้มกายใจ_8', 'FNAME_8', 'LNAME_8', '28', 'male', '1', 'จัดซื้อ', 'ติดต่อต่างประเทศ', 'ทนายความ', '2', '4', '5', '1', '2', '3', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('9', 'จิรายุ_9', 'คุ้มกายใจ_9', 'FNAME_9', 'LNAME_9', '27', 'female', '1', 'วิเคราะห์การเงิน', 'คีย์ข้อมูล', 'ประชาสัมพันธ์', '3', '3', '3', '1', '3', '2', '2014-11-14 15:09:07');
INSERT INTO `jobs` VALUES ('10', 'จิรายุ_10', 'คุ้มกายใจ_10', 'FNAME_10', 'LNAME_10', '45', 'male', '2', 'วิเคราะห์การเงิน', 'นิติกร', 'Suparvisor', '3', '1', '8', '2', '3', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('11', 'จิรายุ_11', 'คุ้มกายใจ_11', 'FNAME_11', 'LNAME_11', '45', 'male', '1', 'Web Design', 'การขาย', 'มัคคุเทศก์', '2', '4', '7', '2', '3', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('12', 'จิรายุ_12', 'คุ้มกายใจ_12', 'FNAME_12', 'LNAME_12', '26', 'female', '2', 'Graphic Design', 'การตลาด', 'ติดต่อต่างประเทศ', '2', '1', '5', '3', '2', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('13', 'จิรายุ_13', 'คุ้มกายใจ_13', 'FNAME_13', 'LNAME_13', '47', 'male', '2', 'คีย์ข้อมูล', 'การตลาด', 'ติดต่อต่างประเทศ', '6', '2', '6', '3', '2', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('14', 'จิรายุ_14', 'คุ้มกายใจ_14', 'FNAME_14', 'LNAME_14', '45', 'female', '1', 'การขาย', 'Suparvisor', 'Web Design', '8', '3', '5', '2', '1', '1', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('15', 'จิรายุ_15', 'คุ้มกายใจ_15', 'FNAME_15', 'LNAME_15', '40', 'male', '1', 'เจ้าหน้าที่ Q.C', 'Web Programming', 'ประชาสัมพันธ์', '2', '1', '4', '3', '1', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('16', 'จิรายุ_16', 'คุ้มกายใจ_16', 'FNAME_16', 'LNAME_16', '47', 'female', '2', 'พนักงานต้อนรับ', 'การเงิน', 'เจ้าหน้าที่งานธุรการ', '1', '3', '8', '2', '3', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('17', 'จิรายุ_17', 'คุ้มกายใจ_17', 'FNAME_17', 'LNAME_17', '20', 'male', '1', 'มัคคุเทศก์', 'เจ้าหน้าที่ Q.C', 'เจ้าหน้าที่ Q.C', '1', '2', '1', '1', '1', '2', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('18', 'จิรายุ_18', 'คุ้มกายใจ_18', 'FNAME_18', 'LNAME_18', '18', 'female', '2', 'มัคคุเทศก์', 'จัดซื้อ', 'เลขานุการ', '7', '3', '1', '3', '1', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('19', 'จิรายุ_19', 'คุ้มกายใจ_19', 'FNAME_19', 'LNAME_19', '33', 'female', '2', 'ติดต่อต่างประเทศ', 'call center', 'Graphic Design', '7', '3', '6', '1', '1', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('20', 'จิรายุ_20', 'คุ้มกายใจ_20', 'FNAME_20', 'LNAME_20', '32', 'male', '2', 'ติดต่อต่างประเทศ', 'ติดต่อต่างประเทศ', 'พนักงานต้อนรับ', '3', '3', '6', '1', '1', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('21', 'จิรายุ_21', 'คุ้มกายใจ_21', 'FNAME_21', 'LNAME_21', '50', 'female', '2', 'Legal Officer', 'Suparvisor', 'การเงิน', '3', '3', '7', '2', '3', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('22', 'จิรายุ_22', 'คุ้มกายใจ_22', 'FNAME_22', 'LNAME_22', '34', 'female', '2', 'การขาย', 'พนักงานต้อนรับ', 'พนักงานต้อนรับ', '2', '2', '4', '2', '1', '2', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('23', 'จิรายุ_23', 'คุ้มกายใจ_23', 'FNAME_23', 'LNAME_23', '50', 'male', '2', 'นิติกร', 'Suparvisor', 'มัคคุเทศก์', '3', '1', '4', '1', '1', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('24', 'จิรายุ_24', 'คุ้มกายใจ_24', 'FNAME_24', 'LNAME_24', '30', 'male', '2', 'เจ้าหน้าที่งานธุรการ', 'Graphic Design', 'มัคคุเทศก์', '4', '1', '2', '1', '1', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('25', 'จิรายุ_25', 'คุ้มกายใจ_25', 'FNAME_25', 'LNAME_25', '23', 'male', '2', 'เจ้าหน้าที่ Q.C', 'ทนายความ', 'ประชาสัมพันธ์', '6', '3', '1', '3', '3', '1', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('26', 'จิรายุ_26', 'คุ้มกายใจ_26', 'FNAME_26', 'LNAME_26', '22', 'female', '1', 'Legal Officer', 'เลขานุการ', 'คีย์ข้อมูล', '6', '4', '3', '3', '1', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('27', 'จิรายุ_27', 'คุ้มกายใจ_27', 'FNAME_27', 'LNAME_27', '46', 'female', '1', 'มัคคุเทศก์', 'ประชาสัมพันธ์', 'การขาย', '7', '3', '7', '3', '1', '3', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('28', 'จิรายุ_28', 'คุ้มกายใจ_28', 'FNAME_28', 'LNAME_28', '36', 'male', '2', 'จัดซื้อ', 'ติดต่อต่างประเทศ', 'ประชาสัมพันธ์', '6', '4', '8', '1', '2', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('29', 'จิรายุ_29', 'คุ้มกายใจ_29', 'FNAME_29', 'LNAME_29', '25', 'female', '1', 'พนักงานต้อนรับ', 'พนักงานต้อนรับ', 'call center', '6', '3', '7', '1', '3', '2', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('30', 'จิรายุ_30', 'คุ้มกายใจ_30', 'FNAME_30', 'LNAME_30', '26', 'male', '2', 'Web Programming', 'Graphic Design', 'Web Design', '9', '4', '7', '1', '1', '2', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('31', 'จิรายุ_31', 'คุ้มกายใจ_31', 'FNAME_31', 'LNAME_31', '46', 'female', '1', 'Legal Officer', 'ทนายความ', 'จัดซื้อ', '3', '3', '7', '1', '2', '2', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('32', 'จิรายุ_32', 'คุ้มกายใจ_32', 'FNAME_32', 'LNAME_32', '24', 'male', '1', 'เลขานุการ', 'เจ้าหน้าที่ Q.C', 'คีย์ข้อมูล', '9', '4', '1', '1', '3', '4', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('33', 'จิรายุ_33', 'คุ้มกายใจ_33', 'FNAME_33', 'LNAME_33', '40', 'female', '1', 'การขาย', 'Web Programming', 'นิติกร', '5', '3', '3', '1', '2', '1', '2014-11-14 15:09:08');
INSERT INTO `jobs` VALUES ('34', 'จิรายุ_34', 'คุ้มกายใจ_34', 'FNAME_34', 'LNAME_34', '18', 'male', '2', 'การตลาด', 'ทนายความ', 'การเงิน', '7', '1', '6', '1', '1', '3', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('35', 'จิรายุ_35', 'คุ้มกายใจ_35', 'FNAME_35', 'LNAME_35', '23', 'female', '2', 'จัดซื้อ', 'เจ้าหน้าที่ Q.C', 'คีย์ข้อมูล', '9', '1', '5', '2', '3', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('36', 'จิรายุ_36', 'คุ้มกายใจ_36', 'FNAME_36', 'LNAME_36', '33', 'male', '1', 'พนักงานต้อนรับ', 'Legal Officer', 'วิเคราะห์การเงิน', '6', '2', '5', '1', '1', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('37', 'จิรายุ_37', 'คุ้มกายใจ_37', 'FNAME_37', 'LNAME_37', '35', 'male', '2', 'เลขานุการ', 'Web Programming', 'ประชาสัมพันธ์', '8', '3', '2', '3', '3', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('38', 'จิรายุ_38', 'คุ้มกายใจ_38', 'FNAME_38', 'LNAME_38', '38', 'female', '1', 'เลขานุการ', 'ประชาสัมพันธ์', 'พนักงานต้อนรับ', '5', '1', '4', '1', '1', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('39', 'จิรายุ_39', 'คุ้มกายใจ_39', 'FNAME_39', 'LNAME_39', '26', 'female', '1', 'การตลาด', 'เจ้าหน้าที่ Q.C', 'Suparvisor', '2', '1', '8', '1', '2', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('40', 'จิรายุ_40', 'คุ้มกายใจ_40', 'FNAME_40', 'LNAME_40', '34', 'female', '2', 'Legal Officer', 'Suparvisor', 'Suparvisor', '7', '3', '8', '3', '3', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('41', 'จิรายุ_41', 'คุ้มกายใจ_41', 'FNAME_41', 'LNAME_41', '38', 'female', '1', 'เจ้าหน้าที่งานธุรการ', 'call center', 'มัคคุเทศก์', '5', '4', '3', '2', '1', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('42', 'จิรายุ_42', 'คุ้มกายใจ_42', 'FNAME_42', 'LNAME_42', '23', 'female', '1', 'call center', 'เจ้าหน้าที่ Q.C', 'คีย์ข้อมูล', '2', '1', '4', '1', '1', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('43', 'จิรายุ_43', 'คุ้มกายใจ_43', 'FNAME_43', 'LNAME_43', '24', 'female', '2', 'เลขานุการ', 'ติดต่อต่างประเทศ', 'call center', '4', '4', '3', '3', '3', '3', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('44', 'จิรายุ_44', 'คุ้มกายใจ_44', 'FNAME_44', 'LNAME_44', '18', 'male', '2', 'นิติกร', 'การตลาด', 'การตลาด', '5', '4', '2', '2', '1', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('45', 'จิรายุ_45', 'คุ้มกายใจ_45', 'FNAME_45', 'LNAME_45', '48', 'male', '1', 'จัดซื้อ', 'การเงิน', 'เลขานุการ', '9', '2', '6', '1', '2', '2', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('46', 'จิรายุ_46', 'คุ้มกายใจ_46', 'FNAME_46', 'LNAME_46', '49', 'male', '2', 'Graphic Design', 'การตลาด', 'Graphic Design', '6', '1', '8', '3', '2', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('47', 'จิรายุ_47', 'คุ้มกายใจ_47', 'FNAME_47', 'LNAME_47', '45', 'male', '2', 'คีย์ข้อมูล', 'มัคคุเทศก์', 'Legal Officer', '2', '3', '6', '1', '1', '2', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('48', 'จิรายุ_48', 'คุ้มกายใจ_48', 'FNAME_48', 'LNAME_48', '47', 'male', '2', 'เจ้าหน้าที่ Q.C', 'Graphic Design', 'เจ้าหน้าที่ Q.C', '5', '3', '3', '2', '1', '3', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('49', 'จิรายุ_49', 'คุ้มกายใจ_49', 'FNAME_49', 'LNAME_49', '46', 'female', '2', 'นิติกร', 'คีย์ข้อมูล', 'การเงิน', '6', '3', '3', '2', '1', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('50', 'จิรายุ_50', 'คุ้มกายใจ_50', 'FNAME_50', 'LNAME_50', '18', 'female', '1', 'ประชาสัมพันธ์', 'คีย์ข้อมูล', 'Legal Officer', '8', '3', '3', '3', '1', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('51', 'จิรายุ_51', 'คุ้มกายใจ_51', 'FNAME_51', 'LNAME_51', '45', 'male', '2', 'เลขานุการ', 'Web Programming', 'จัดซื้อ', '7', '3', '1', '3', '3', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('52', 'จิรายุ_52', 'คุ้มกายใจ_52', 'FNAME_52', 'LNAME_52', '31', 'female', '1', 'ติดต่อต่างประเทศ', 'เจ้าหน้าที่ Q.C', 'เจ้าหน้าที่งานธุรการ', '6', '1', '2', '2', '3', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('53', 'จิรายุ_53', 'คุ้มกายใจ_53', 'FNAME_53', 'LNAME_53', '49', 'male', '1', 'เจ้าหน้าที่งานธุรการ', 'เจ้าหน้าที่ Q.C', 'นิติกร', '2', '3', '4', '2', '2', '3', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('54', 'จิรายุ_54', 'คุ้มกายใจ_54', 'FNAME_54', 'LNAME_54', '21', 'male', '2', 'Graphic Design', 'ติดต่อต่างประเทศ', 'Graphic Design', '7', '4', '4', '2', '3', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('55', 'จิรายุ_55', 'คุ้มกายใจ_55', 'FNAME_55', 'LNAME_55', '50', 'male', '1', 'ประชาสัมพันธ์', 'Legal Officer', 'การเงิน', '5', '1', '5', '3', '3', '1', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('56', 'จิรายุ_56', 'คุ้มกายใจ_56', 'FNAME_56', 'LNAME_56', '31', 'male', '1', 'เจ้าหน้าที่งานธุรการ', 'นิติกร', 'ติดต่อต่างประเทศ', '1', '4', '6', '2', '3', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('57', 'จิรายุ_57', 'คุ้มกายใจ_57', 'FNAME_57', 'LNAME_57', '46', 'male', '1', 'เจ้าหน้าที่ Q.C', 'เจ้าหน้าที่ Q.C', 'วิเคราะห์การเงิน', '7', '4', '2', '3', '2', '3', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('58', 'จิรายุ_58', 'คุ้มกายใจ_58', 'FNAME_58', 'LNAME_58', '25', 'female', '2', 'พนักงานต้อนรับ', 'มัคคุเทศก์', 'Suparvisor', '2', '1', '1', '1', '1', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('59', 'จิรายุ_59', 'คุ้มกายใจ_59', 'FNAME_59', 'LNAME_59', '45', 'male', '1', 'Suparvisor', 'จัดซื้อ', 'ประชาสัมพันธ์', '5', '3', '1', '2', '3', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('60', 'จิรายุ_60', 'คุ้มกายใจ_60', 'FNAME_60', 'LNAME_60', '39', 'female', '2', 'การเงิน', 'Web Programming', 'วิเคราะห์การเงิน', '1', '2', '3', '1', '1', '2', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('61', 'จิรายุ_61', 'คุ้มกายใจ_61', 'FNAME_61', 'LNAME_61', '25', 'female', '2', 'มัคคุเทศก์', 'Graphic Design', 'การตลาด', '2', '3', '4', '1', '3', '2', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('62', 'จิรายุ_62', 'คุ้มกายใจ_62', 'FNAME_62', 'LNAME_62', '30', 'male', '1', 'จัดซื้อ', 'การขาย', 'Web Programming', '4', '2', '5', '1', '1', '4', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('63', 'จิรายุ_63', 'คุ้มกายใจ_63', 'FNAME_63', 'LNAME_63', '34', 'male', '2', 'จัดซื้อ', 'นิติกร', 'การขาย', '3', '2', '3', '1', '2', '3', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('64', 'จิรายุ_64', 'คุ้มกายใจ_64', 'FNAME_64', 'LNAME_64', '18', 'female', '2', 'Web Programming', 'การตลาด', 'เจ้าหน้าที่งานธุรการ', '6', '3', '1', '3', '2', '2', '2014-11-14 15:09:09');
INSERT INTO `jobs` VALUES ('65', 'จิรายุ_65', 'คุ้มกายใจ_65', 'FNAME_65', 'LNAME_65', '37', 'female', '1', 'ประชาสัมพันธ์', 'เจ้าหน้าที่ Q.C', 'Graphic Design', '1', '2', '6', '2', '3', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('66', 'จิรายุ_66', 'คุ้มกายใจ_66', 'FNAME_66', 'LNAME_66', '32', 'female', '1', 'นิติกร', 'Legal Officer', 'คีย์ข้อมูล', '1', '4', '5', '2', '2', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('67', 'จิรายุ_67', 'คุ้มกายใจ_67', 'FNAME_67', 'LNAME_67', '38', 'female', '1', 'การขาย', 'call center', 'การเงิน', '8', '2', '6', '3', '2', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('68', 'จิรายุ_68', 'คุ้มกายใจ_68', 'FNAME_68', 'LNAME_68', '50', 'male', '2', 'เจ้าหน้าที่งานธุรการ', 'คีย์ข้อมูล', 'การขาย', '1', '1', '1', '2', '2', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('69', 'จิรายุ_69', 'คุ้มกายใจ_69', 'FNAME_69', 'LNAME_69', '34', 'male', '1', 'วิเคราะห์การเงิน', 'เจ้าหน้าที่งานธุรการ', 'การเงิน', '2', '3', '3', '3', '3', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('70', 'จิรายุ_70', 'คุ้มกายใจ_70', 'FNAME_70', 'LNAME_70', '31', 'female', '2', 'Graphic Design', 'การตลาด', 'จัดซื้อ', '5', '2', '1', '2', '2', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('71', 'จิรายุ_71', 'คุ้มกายใจ_71', 'FNAME_71', 'LNAME_71', '26', 'female', '2', 'เจ้าหน้าที่งานธุรการ', 'Graphic Design', 'Suparvisor', '8', '2', '1', '1', '1', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('72', 'จิรายุ_72', 'คุ้มกายใจ_72', 'FNAME_72', 'LNAME_72', '50', 'female', '1', 'จัดซื้อ', 'ติดต่อต่างประเทศ', 'จัดซื้อ', '4', '4', '1', '2', '3', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('73', 'จิรายุ_73', 'คุ้มกายใจ_73', 'FNAME_73', 'LNAME_73', '20', 'male', '2', 'ทนายความ', 'ทนายความ', 'วิเคราะห์การเงิน', '9', '2', '4', '1', '2', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('74', 'จิรายุ_74', 'คุ้มกายใจ_74', 'FNAME_74', 'LNAME_74', '24', 'male', '1', 'Legal Officer', 'เจ้าหน้าที่งานธุรการ', 'พนักงานต้อนรับ', '7', '1', '8', '2', '2', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('75', 'จิรายุ_75', 'คุ้มกายใจ_75', 'FNAME_75', 'LNAME_75', '30', 'female', '2', 'Legal Officer', 'นิติกร', 'นิติกร', '8', '3', '8', '2', '1', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('76', 'จิรายุ_76', 'คุ้มกายใจ_76', 'FNAME_76', 'LNAME_76', '28', 'male', '2', 'Graphic Design', 'Web Design', 'การเงิน', '9', '2', '5', '3', '3', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('77', 'จิรายุ_77', 'คุ้มกายใจ_77', 'FNAME_77', 'LNAME_77', '22', 'female', '1', 'call center', 'วิเคราะห์การเงิน', 'ติดต่อต่างประเทศ', '8', '4', '1', '2', '1', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('78', 'จิรายุ_78', 'คุ้มกายใจ_78', 'FNAME_78', 'LNAME_78', '32', 'female', '1', 'วิเคราะห์การเงิน', 'การตลาด', 'Legal Officer', '6', '4', '1', '1', '3', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('79', 'จิรายุ_79', 'คุ้มกายใจ_79', 'FNAME_79', 'LNAME_79', '37', 'female', '1', 'Web Programming', 'การเงิน', 'Web Programming', '6', '4', '8', '1', '1', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('80', 'จิรายุ_80', 'คุ้มกายใจ_80', 'FNAME_80', 'LNAME_80', '19', 'male', '2', 'call center', 'ประชาสัมพันธ์', 'เลขานุการ', '5', '3', '2', '1', '1', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('81', 'จิรายุ_81', 'คุ้มกายใจ_81', 'FNAME_81', 'LNAME_81', '37', 'male', '1', 'คีย์ข้อมูล', 'การตลาด', 'ทนายความ', '5', '3', '1', '3', '1', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('82', 'จิรายุ_82', 'คุ้มกายใจ_82', 'FNAME_82', 'LNAME_82', '34', 'female', '2', 'นิติกร', 'ประชาสัมพันธ์', 'มัคคุเทศก์', '8', '1', '5', '1', '2', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('83', 'จิรายุ_83', 'คุ้มกายใจ_83', 'FNAME_83', 'LNAME_83', '20', 'female', '1', 'วิเคราะห์การเงิน', 'ติดต่อต่างประเทศ', 'เลขานุการ', '8', '2', '4', '2', '2', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('84', 'จิรายุ_84', 'คุ้มกายใจ_84', 'FNAME_84', 'LNAME_84', '48', 'female', '2', 'คีย์ข้อมูล', 'call center', 'คีย์ข้อมูล', '1', '1', '7', '2', '2', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('85', 'จิรายุ_85', 'คุ้มกายใจ_85', 'FNAME_85', 'LNAME_85', '28', 'male', '1', 'มัคคุเทศก์', 'การขาย', 'คีย์ข้อมูล', '5', '2', '1', '1', '3', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('86', 'จิรายุ_86', 'คุ้มกายใจ_86', 'FNAME_86', 'LNAME_86', '33', 'female', '2', 'เจ้าหน้าที่งานธุรการ', 'การขาย', 'เลขานุการ', '3', '3', '3', '2', '3', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('87', 'จิรายุ_87', 'คุ้มกายใจ_87', 'FNAME_87', 'LNAME_87', '33', 'male', '2', 'มัคคุเทศก์', 'การตลาด', 'Suparvisor', '1', '1', '1', '3', '3', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('88', 'จิรายุ_88', 'คุ้มกายใจ_88', 'FNAME_88', 'LNAME_88', '19', 'male', '1', 'Web Design', 'ประชาสัมพันธ์', 'Web Design', '9', '2', '8', '3', '2', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('89', 'จิรายุ_89', 'คุ้มกายใจ_89', 'FNAME_89', 'LNAME_89', '27', 'male', '2', 'ติดต่อต่างประเทศ', 'Web Programming', 'การขาย', '9', '1', '3', '3', '3', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('90', 'จิรายุ_90', 'คุ้มกายใจ_90', 'FNAME_90', 'LNAME_90', '29', 'male', '1', 'จัดซื้อ', 'ติดต่อต่างประเทศ', 'จัดซื้อ', '3', '3', '4', '1', '2', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('91', 'จิรายุ_91', 'คุ้มกายใจ_91', 'FNAME_91', 'LNAME_91', '47', 'male', '1', 'การตลาด', 'Web Programming', 'มัคคุเทศก์', '3', '1', '8', '2', '2', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('92', 'จิรายุ_92', 'คุ้มกายใจ_92', 'FNAME_92', 'LNAME_92', '20', 'male', '2', 'มัคคุเทศก์', 'มัคคุเทศก์', 'การตลาด', '7', '2', '1', '2', '3', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('93', 'จิรายุ_93', 'คุ้มกายใจ_93', 'FNAME_93', 'LNAME_93', '35', 'female', '2', 'call center', 'Web Design', 'ประชาสัมพันธ์', '4', '2', '7', '2', '3', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('94', 'จิรายุ_94', 'คุ้มกายใจ_94', 'FNAME_94', 'LNAME_94', '36', 'male', '2', 'คีย์ข้อมูล', 'Web Programming', 'วิเคราะห์การเงิน', '3', '2', '4', '3', '1', '3', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('95', 'จิรายุ_95', 'คุ้มกายใจ_95', 'FNAME_95', 'LNAME_95', '26', 'male', '1', 'Web Design', 'นิติกร', 'Graphic Design', '2', '1', '1', '1', '2', '4', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('96', 'จิรายุ_96', 'คุ้มกายใจ_96', 'FNAME_96', 'LNAME_96', '40', 'male', '1', 'มัคคุเทศก์', 'Graphic Design', 'จัดซื้อ', '8', '1', '5', '2', '1', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('97', 'จิรายุ_97', 'คุ้มกายใจ_97', 'FNAME_97', 'LNAME_97', '30', 'female', '1', 'จัดซื้อ', 'call center', 'call center', '9', '2', '7', '1', '1', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('98', 'จิรายุ_98', 'คุ้มกายใจ_98', 'FNAME_98', 'LNAME_98', '46', 'male', '2', 'Graphic Design', 'การตลาด', 'การตลาด', '8', '4', '6', '2', '2', '1', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('99', 'จิรายุ_99', 'คุ้มกายใจ_99', 'FNAME_99', 'LNAME_99', '32', 'female', '1', 'พนักงานต้อนรับ', 'Legal Officer', 'วิเคราะห์การเงิน', '4', '4', '2', '1', '3', '2', '2014-11-14 15:09:10');
INSERT INTO `jobs` VALUES ('100', 'จิรายุ_100', 'คุ้มกายใจ_100', 'FNAME_100', 'LNAME_100', '38', 'male', '1', 'Legal Officer', 'เลขานุการ', 'Web Programming', '9', '3', '3', '3', '1', '2', '2014-11-14 15:09:11');

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
