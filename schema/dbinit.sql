-- Create Database
CREATE DATABASE IF NOT EXISTS firework1 DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

-- Use Database
USE firework1;

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

-- Create Database
CREATE DATABASE IF NOT EXISTS firework2 DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

-- Use Database
USE firework2;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for f_login_history
-- ----------------------------
DROP TABLE IF EXISTS `f_login_history`;
CREATE TABLE `f_login_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` varchar(32) NOT NULL COMMENT 'Login ID',
  `device_id` varchar(64) DEFAULT NULL COMMENT 'Device token',
  `platform` varchar(32) NOT NULL COMMENT 'Platform: 1 Portal 2 Android 3 iOS',
  `login_time` datetime NOT NULL COMMENT 'Login time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Login History';

-- ----------------------------
-- Records of f_login_history
-- ----------------------------

-- ----------------------------
-- Table structure for f_module
-- ----------------------------
DROP TABLE IF EXISTS `f_module`;
CREATE TABLE `f_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `code` varchar(32) NOT NULL COMMENT 'Module Code',
  `name` varchar(64) NOT NULL COMMENT 'Module Name',
  `parent` bigint(20) DEFAULT NULL COMMENT 'Parent Module ID',
  `url` varchar(64) DEFAULT NULL COMMENT 'URL',
  `controller` varchar(128) DEFAULT NULL COMMENT 'Related AngularJS Controller',
  `template` varchar(256) DEFAULT NULL COMMENT 'Related AngularJS Temlate',
  `order_id` int(11) DEFAULT '1' COMMENT 'Sequence In current module depth',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Module';

-- ----------------------------
-- Records of f_module
-- ----------------------------
INSERT INTO `f_module` VALUES ('1', 'order', 'Orders', null, '#', null, null, '1', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 16:43:02');
INSERT INTO `f_module` VALUES ('2', 'statistics', 'Statistics', null, '#', null, null, '1', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 16:43:03');
INSERT INTO `f_module` VALUES ('3', 'order-online', 'Online Orders', '1', '#', null, null, '1', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 16:45:46');
INSERT INTO `f_module` VALUES ('4', 'order-offline', 'Offline Orders', '1', '#', null, null, '2', '0', 'system', '2016-10-07 13:57:01', null, '2016-10-07 16:46:51');
INSERT INTO `f_module` VALUES ('5', 'order-online-selfrun', 'Self-Run Online Orders', '3', '/order-online-selfrun', 'onlineSelfRunController', 'views/order/online-selfrun-order.html', '1', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 18:51:34');
INSERT INTO `f_module` VALUES ('6', 'order-online-outsource', 'Outsourcing Online Orders', '3', '/order-online-outsource', 'onlineOutsourceController', 'views/order/online-outsource-order.html', '2', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 18:51:38');
INSERT INTO `f_module` VALUES ('7', 'user-statistics', 'User', '2', '#', null, null, '1', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 16:45:55');
INSERT INTO `f_module` VALUES ('8', 'user-statistics-new', 'New Users Statistics', '7', '/user-statistics-new', 'newUserController', 'views/statistics/new-user.html', '1', '1', 'system', '2016-10-07 13:57:01', null, '2016-10-07 18:51:27');
INSERT INTO `f_module` VALUES ('9', 'user-statistics-region', 'User Regions Statistics', '7', '/user-statistics-region', 'userRegionController', 'views/statistics/user-region.html', '2', '1', 'system', '2016-10-07 14:27:51', null, '2016-10-07 18:52:09');

-- ----------------------------
-- Table structure for f_role
-- ----------------------------
DROP TABLE IF EXISTS `f_role`;
CREATE TABLE `f_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `role_name` varchar(32) NOT NULL COMMENT 'Role Name',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid User: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_role` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Role';

-- ----------------------------
-- Records of f_role
-- ----------------------------
INSERT INTO `f_role` VALUES ('1', 'GUEST', '1', 'system', '2016-10-07 14:33:36', null, '2016-10-07 14:33:38');
INSERT INTO `f_role` VALUES ('2', 'USER', '1', 'system', '2016-10-07 14:34:10', null, '2016-10-07 14:34:13');
INSERT INTO `f_role` VALUES ('3', 'ADMIN', '1', 'system', '2016-10-07 14:35:01', null, '2016-10-07 14:35:03');

-- ----------------------------
-- Table structure for f_role_module
-- ----------------------------
DROP TABLE IF EXISTS `f_role_module`;
CREATE TABLE `f_role_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `role_name` varchar(32) NOT NULL COMMENT 'Role Name',
  `module_code` varchar(32) NOT NULL COMMENT 'Module Code',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid User: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_role_module` (`role_name`,`module_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Role Module Mapping';

-- ----------------------------
-- Records of f_role_module
-- ----------------------------
INSERT INTO `f_role_module` VALUES ('1', 'GUEST', 'order', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:01');
INSERT INTO `f_role_module` VALUES ('2', 'GUEST', 'statistics', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:02');
INSERT INTO `f_role_module` VALUES ('3', 'GUEST', 'order-online', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:02');
INSERT INTO `f_role_module` VALUES ('4', 'GUEST', 'order-offline', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:03');
INSERT INTO `f_role_module` VALUES ('5', 'GUEST', 'order-online-selfrun', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:04');
INSERT INTO `f_role_module` VALUES ('6', 'GUEST', 'order-online-outsource', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:05');
INSERT INTO `f_role_module` VALUES ('7', 'GUEST', 'user-statistics', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:06');
INSERT INTO `f_role_module` VALUES ('8', 'GUEST', 'user-statistics-new', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:07');
INSERT INTO `f_role_module` VALUES ('9', 'GUEST', 'user-statistics-region', '1', 'system', '2016-10-07 14:37:29', null, '2016-10-07 16:45:10');

-- ----------------------------
-- Table structure for f_user
-- ----------------------------
DROP TABLE IF EXISTS `f_user`;
CREATE TABLE `f_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` varchar(32) NOT NULL COMMENT 'Login ID',
  `user_pwd` varchar(64) NOT NULL COMMENT 'Password',
  `user_name` varchar(64) DEFAULT NULL COMMENT 'Password',
  `gender` int(1) DEFAULT NULL COMMENT 'Gender：1 Male 2 Female',
  `id_number` varchar(32) DEFAULT NULL COMMENT 'Identification Number',
  `mobile` varchar(32) DEFAULT NULL COMMENT 'Mobile Number',
  `email` varchar(64) DEFAULT NULL COMMENT 'Email',
  `zip` varchar(32) DEFAULT NULL COMMENT 'Zip Code',
  `address` varchar(256) DEFAULT NULL COMMENT 'Address',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid User: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_userid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='User';

-- ----------------------------
-- Records of f_user
-- ----------------------------
INSERT INTO `f_user` VALUES ('1', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', '1', '310000198511050000', '13111111111', 'demo@gmail.com', '210000', 'Nanjing, Jiangsu Province, China', '1', 'system', '2016-10-05 20:49:23', null, '2016-10-05 20:49:23');

-- ----------------------------
-- Table structure for f_user_role
-- ----------------------------
DROP TABLE IF EXISTS `f_user_role`;
CREATE TABLE `f_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `user_id` varchar(32) NOT NULL COMMENT 'Login ID',
  `role_name` varchar(32) NOT NULL COMMENT 'Role Name',
  `valid` int(1) DEFAULT '1' COMMENT 'Valid User: 1 Yes 0 No',
  `create_user` varchar(50) NOT NULL COMMENT 'Create by',
  `create_time` datetime NOT NULL COMMENT 'Create time',
  `update_user` varchar(50) DEFAULT NULL COMMENT 'Update by',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_user_role` (`user_id`,`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='User Role Mapping';

-- ----------------------------
-- Records of f_user_role
-- ----------------------------
INSERT INTO `f_user_role` VALUES ('1', 'demo', 'GUEST', '1', 'system', '2016-10-07 14:47:16', null, '2016-10-07 14:47:19');