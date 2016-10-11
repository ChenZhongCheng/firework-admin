/*
Navicat MySQL Data Transfer

Source Server         : local-guest
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : firework1

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-10-11 18:07:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for f_order
-- ----------------------------
DROP TABLE IF EXISTS `f_order`;
CREATE TABLE `f_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `order_no` varchar(32) NOT NULL COMMENT 'Order Number',
  `customer_name` varchar(64) DEFAULT NULL COMMENT 'Customer Name',
  `customer_gender` int(1) DEFAULT NULL COMMENT 'Gender：1 Male 2 Female',
  `customer_id_number` varchar(32) DEFAULT NULL COMMENT 'Identification Number',
  `customer_mobile` varchar(32) DEFAULT NULL COMMENT 'Mobile Number',
  `customer_address` varchar(256) DEFAULT NULL COMMENT 'Address',
  `customer_zip` varchar(32) DEFAULT NULL COMMENT 'Zip Code',
  `cost` decimal(19,3) DEFAULT NULL COMMENT 'Money spent',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid User: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_orderid` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Order';

-- ----------------------------
-- Records of f_order
-- ----------------------------
INSERT INTO `f_order` VALUES ('1', 'OF2016100100001', 'Tom', '1', '0241000321312', '13100000001', 'Street1, A district, B city, C Province', '10001', '10.500', '1', 'system', '2016-10-11 14:50:03', null, '2016-10-11 14:50:03');
