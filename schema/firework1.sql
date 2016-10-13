/*
Navicat MySQL Data Transfer

Source Server         : local-guest
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : firework1

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-10-13 10:55:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for f_order
-- ----------------------------
DROP TABLE IF EXISTS `f_order`;
CREATE TABLE `f_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `order_no` varchar(32) NOT NULL COMMENT 'Order Number',
  `order_type` int(1) DEFAULT '1' COMMENT 'Order type: 1 Online Self-Run 2 Online outsource 3 Offline',
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Order';

-- ----------------------------
-- Records of f_order
-- ----------------------------
INSERT INTO `f_order` VALUES ('1', 'OL2016100100001', '1', 'David C. Jones', '1', '8928324491', '704-595-4770', '20 Clinton Lane, Snellville, GA', '30039', '10.500', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:50:46');
INSERT INTO `f_order` VALUES ('2', 'OL2016100100002', '1', 'Thomas E. McKeown', '1', '8928344496', '718-870-1071', '1173 Patterson Road, New York, NY', '10001', '4.500', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:50:50');
INSERT INTO `f_order` VALUES ('3', 'OL2016100100003', '1', 'Sybil J. Metz', '2', '6202923323', '360-533-5733', '815 Honeysuckle Lane, Aberdeen, WA', '98520', '20.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:50:55');
INSERT INTO `f_order` VALUES ('4', 'OL2016100100004', '1', 'Patrick T. Grabill', '1', '2205424983', '253-565-1967', '613 Horizon Circle, University Place, WA', '98466', '31.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:51:00');
INSERT INTO `f_order` VALUES ('5', 'OL2016100100005', '1', 'Barbara T. Lloyd', '2', '9679284710', '608-313-1158', '3593 Comfort Court, Madison, WI', '53705', '24.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:51:05');
INSERT INTO `f_order` VALUES ('6', 'OL2016100100006', '1', 'Gerald C. Rivera', '1', '1528975162', '510-269-4091', '1051 Wayside Lane, Hayward, CA', '94545', '27.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:51:10');
INSERT INTO `f_order` VALUES ('7', 'OL2016100100007', '1', 'Anita C. Barber', '2', '2209140635', '602-685-4853', '4831 Dogwood Road, Phoenix, AZ', '85008', '45.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:51:15');
INSERT INTO `f_order` VALUES ('8', 'OL2016100100008', '1', 'Wilma C. Morris', '2', '5178146003', '602-685-4853', '4773 Tree Frog Lane, Kansas City, MO', '64106', '41.400', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:52:02');
INSERT INTO `f_order` VALUES ('9', 'OL2016100100009', '1', 'Edward J. Black', '1', '8873013476', '917-778-3943', '2409 Settlers Lane, New York, NY', '10007', '23.200', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:52:02');
INSERT INTO `f_order` VALUES ('10', 'OL2016100100010', '1', 'Chanel W. Reeder', '2', '1090673361', '920-573-5056', '810 Tail Ends Road, Green Bay, WI', '54303', '18.700', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:52:02');
INSERT INTO `f_order` VALUES ('11', 'OL2016100100011', '1', 'Alan T. Fenton', '1', '5913414461', '\r\n802-433-8716', '974 Duff Avenue, Williamstown, VT', '05679', '21.600', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:52:02');
INSERT INTO `f_order` VALUES ('12', 'OL2016100100012', '1', 'Christopher C. Villa', '1', '8254115348', '573-241-5316', '4363 Penn Street, O Fallon, MO', '63366', '19.600', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-13 09:52:02');
