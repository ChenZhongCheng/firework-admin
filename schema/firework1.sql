/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : firework1

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-10-16 13:39:10
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
  `sku_code` varchar(64) NOT NULL COMMENT 'Sku Code',
  `sku_name` varchar(128) NOT NULL COMMENT 'Sku Name',
  `cost` decimal(19,3) DEFAULT NULL COMMENT 'Money spent',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid User: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_orderid` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Order';

-- ----------------------------
-- Records of f_order
-- ----------------------------
INSERT INTO `f_order` VALUES ('1', 'OL2016100100001', '1', 'David C. Jones', '1', '8928324491', '704-595-4770', '20 Clinton Lane, Snellville, GA', '30039', '6669702011', 'Bullko Men\'s Pin Buckle 7058 Genuine Leather Belt', '23.790', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 12:58:15');
INSERT INTO `f_order` VALUES ('2', 'OL2016100100002', '1', 'Thomas E. McKeown', '1', '8928344496', '718-870-1071', '1173 Patterson Road, New York, NY', '10001', '6669702012', 'Melissa & Doug Wooden Jigsaw Puzzles in a Box - Vehicles', '8.160', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:00:10');
INSERT INTO `f_order` VALUES ('3', 'OL2016100100003', '1', 'Sybil J. Metz', '2', '6202923323', '360-533-5733', '815 Honeysuckle Lane, Aberdeen, WA', '98520', '6669702013', 'Wonder Woman Superhero Socks', '8.450', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 12:58:50');
INSERT INTO `f_order` VALUES ('4', 'OL2016100100004', '1', 'Patrick T. Grabill', '1', '2205424983', '253-565-1967', '613 Horizon Circle, University Place, WA', '98466', '6669702014', 'All-New Kindle E-reader - Black, 6\" Glare-Free Touchscreen Display, Wi-Fi ', '79.990', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:00:49');
INSERT INTO `f_order` VALUES ('5', 'OL2016100100005', '1', 'Barbara T. Lloyd', '2', '9679284710', '608-313-1158', '3593 Comfort Court, Madison, WI', '53705', '6669702015', 'NatureWise Whole Body Vitality Drinks with Organic Tea', '3.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:02:51');
INSERT INTO `f_order` VALUES ('6', 'OL2016100100006', '1', 'Gerald C. Rivera', '1', '1528975162', '510-269-4091', '1051 Wayside Lane, Hayward, CA', '94545', '6669702016', 'Nestle Coffee-mate Coffee Creamer 56oz. canister', '6.940', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:03:20');
INSERT INTO `f_order` VALUES ('7', 'OL2016100100007', '1', 'Anita C. Barber', '2', '2209140635', '602-685-4853', '4831 Dogwood Road, Phoenix, AZ', '85008', '6669702017', 'Tracy Reese Women\'s Flounced Maxi Dress', '598.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:01:24');
INSERT INTO `f_order` VALUES ('8', 'OL2016100100008', '1', 'Wilma C. Morris', '2', '5178146003', '602-685-4853', '4773 Tree Frog Lane, Kansas City, MO', '64106', '6669702018', 'Shoshanna Women\'s Alina Dres-Persian Paisley', '350.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:01:52');
INSERT INTO `f_order` VALUES ('9', 'OL2016100100009', '1', 'Edward J. Black', '1', '8873013476', '917-778-3943', '2409 Settlers Lane, New York, NY', '10007', '6669702019', 'The Organic Coffee Co. Ground, Breakfast Blend, 12 Ounce', '8.980', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:03:47');
INSERT INTO `f_order` VALUES ('10', 'OL2016100100010', '1', 'Chanel W. Reeder', '2', '1090673361', '920-573-5056', '810 Tail Ends Road, Green Bay, WI', '54303', '6669702020', 'HALSTON HERITAGE Women\'s Strapless Structured Gown with Tiered Skirt', '695.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:02:07');
INSERT INTO `f_order` VALUES ('11', 'OL2016100100011', '1', 'Alan T. Fenton', '1', '5913414461', '\r\n802-433-8716', '974 Duff Avenue, Williamstown, VT', '05679', '6669702021', 'Mini Cow Tales, 2 Pound', '12.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:04:08');
INSERT INTO `f_order` VALUES ('12', 'OL2016100100012', '1', 'Christopher C. Villa', '1', '8254115348', '573-241-5316', '4363 Penn Street, O Fallon, MO', '63366', '6669702022', 'Fire HDX 8.9 Tablet, 8.9\" HDX Display, Wi-Fi and 4G LTE, 32 GB', '469.990', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:05:23');
INSERT INTO `f_order` VALUES ('13', 'OL2016100100013', '2', 'David C. Jones', '1', '8928324491', '704-595-4770', '20 Clinton Lane, Snellville, GA', '30039', '6669702023', 'Samsung Galaxy J7 - No Contract Phone - White', '174.990', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:06:01');
INSERT INTO `f_order` VALUES ('14', 'OL2016100100014', '2', 'Thomas E. McKeown', '1', '8928344496', '718-870-1071', '1173 Patterson Road, New York, NY', '10001', '6669702024', 'Kindle Fire HD 8.9\" 4G LTE Wireless, Dolby Audio, Dual-Band Wi-Fi, 32 GB', '85.380', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:05:41');
INSERT INTO `f_order` VALUES ('15', 'OL2016100100015', '2', 'Sybil J. Metz', '2', '6202923323', '360-533-5733', '815 Honeysuckle Lane, Aberdeen, WA', '98520', '6669702025', 'Donna Morgan Women\'s Printed Dress', '158.000', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:02:19');
INSERT INTO `f_order` VALUES ('16', 'OL2016100100016', '2', 'Patrick T. Grabill', '1', '2205424983', '253-565-1967', '613 Horizon Circle, University Place, WA', '98466', '6669702026', 'HTC Desire 626S No Contract Phone White', '59.990', '1', 'system', '2016-10-12 16:30:45', null, '2016-10-16 13:06:22');
