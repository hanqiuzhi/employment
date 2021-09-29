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

<<<<<<< HEAD
 Date: 29/09/2021 16:13:03
=======
 Date: 27/09/2021 10:01:17
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0
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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 353 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_city' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_city' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_city
-- ----------------------------
INSERT INTO `e_city` VALUES (1, '北京市', 1);
<<<<<<< HEAD
INSERT INTO `e_city` VALUES (2, '天津市', 2);
INSERT INTO `e_city` VALUES (3, '上海市', 3);
INSERT INTO `e_city` VALUES (4, '重庆市', 4);
INSERT INTO `e_city` VALUES (5, '呼和浩特市', 5);
INSERT INTO `e_city` VALUES (6, '包头市', 5);
INSERT INTO `e_city` VALUES (7, '鄂尔多斯市', 5);
INSERT INTO `e_city` VALUES (8, '乌海市', 5);
INSERT INTO `e_city` VALUES (9, '赤峰市', 5);
INSERT INTO `e_city` VALUES (10, '通辽市', 5);
INSERT INTO `e_city` VALUES (11, '呼伦贝尔市', 5);
INSERT INTO `e_city` VALUES (12, '巴彦淖尔市', 5);
INSERT INTO `e_city` VALUES (13, '乌兰察布市', 5);
INSERT INTO `e_city` VALUES (14, '兴安盟', 5);
INSERT INTO `e_city` VALUES (15, '锡林郭勒市', 5);
INSERT INTO `e_city` VALUES (16, '阿拉善', 5);
INSERT INTO `e_city` VALUES (17, '南宁市', 6);
INSERT INTO `e_city` VALUES (18, '柳州市', 6);
INSERT INTO `e_city` VALUES (19, '桂林市', 6);
INSERT INTO `e_city` VALUES (20, '梧州市', 6);
INSERT INTO `e_city` VALUES (21, '北海市', 6);
INSERT INTO `e_city` VALUES (22, '防城港', 6);
INSERT INTO `e_city` VALUES (23, '钦州市', 6);
INSERT INTO `e_city` VALUES (24, '贵港市', 6);
INSERT INTO `e_city` VALUES (25, '玉林市', 6);
INSERT INTO `e_city` VALUES (26, '百色市', 6);
INSERT INTO `e_city` VALUES (27, '贺州市', 6);
INSERT INTO `e_city` VALUES (28, '河池市', 6);
INSERT INTO `e_city` VALUES (29, '来宾市', 6);
INSERT INTO `e_city` VALUES (30, '崇左市', 6);
INSERT INTO `e_city` VALUES (31, '拉萨市', 7);
INSERT INTO `e_city` VALUES (32, '昌都市', 7);
INSERT INTO `e_city` VALUES (33, '山南市', 7);
INSERT INTO `e_city` VALUES (34, '日喀则市', 7);
INSERT INTO `e_city` VALUES (35, '那曲市', 7);
INSERT INTO `e_city` VALUES (36, '阿里市', 7);
INSERT INTO `e_city` VALUES (37, '林芝市', 7);
INSERT INTO `e_city` VALUES (38, '银川市', 8);
INSERT INTO `e_city` VALUES (39, '石嘴山市', 8);
INSERT INTO `e_city` VALUES (40, '吴忠市', 8);
INSERT INTO `e_city` VALUES (41, '固原市', 8);
INSERT INTO `e_city` VALUES (42, '中卫市', 8);
INSERT INTO `e_city` VALUES (43, '乌鲁木齐市', 9);
INSERT INTO `e_city` VALUES (44, '克拉玛依市', 9);
INSERT INTO `e_city` VALUES (45, '吐鲁番市', 9);
INSERT INTO `e_city` VALUES (46, '哈密市', 9);
INSERT INTO `e_city` VALUES (47, '和田市', 9);
INSERT INTO `e_city` VALUES (48, '阿克苏市', 9);
INSERT INTO `e_city` VALUES (49, '喀什市', 9);
INSERT INTO `e_city` VALUES (53, '克孜勒苏柯尔克孜市', 9);
INSERT INTO `e_city` VALUES (54, '巴音郭楞市', 9);
INSERT INTO `e_city` VALUES (55, '昌吉市', 9);
INSERT INTO `e_city` VALUES (56, '博尔塔拉蒙古市', 9);
INSERT INTO `e_city` VALUES (57, '伊犁哈萨克市', 9);
INSERT INTO `e_city` VALUES (58, '塔城市', 9);
INSERT INTO `e_city` VALUES (59, '阿勒泰市', 9);
INSERT INTO `e_city` VALUES (60, '香港市', 10);
INSERT INTO `e_city` VALUES (61, '澳门市', 11);
INSERT INTO `e_city` VALUES (62, '石家庄市', 12);
INSERT INTO `e_city` VALUES (63, '唐山市', 12);
INSERT INTO `e_city` VALUES (64, '秦皇岛市', 12);
INSERT INTO `e_city` VALUES (65, '邯郸市', 12);
INSERT INTO `e_city` VALUES (66, '邢台市', 12);
INSERT INTO `e_city` VALUES (67, '保定市', 12);
INSERT INTO `e_city` VALUES (68, '张家口市', 12);
INSERT INTO `e_city` VALUES (69, '承德市', 12);
INSERT INTO `e_city` VALUES (70, '沧州市', 12);
INSERT INTO `e_city` VALUES (71, '廊坊市', 12);
INSERT INTO `e_city` VALUES (72, '衡水市', 12);
INSERT INTO `e_city` VALUES (73, '太原市', 13);
INSERT INTO `e_city` VALUES (74, '大同市', 13);
INSERT INTO `e_city` VALUES (75, '阳泉市', 13);
INSERT INTO `e_city` VALUES (76, '长治市', 13);
INSERT INTO `e_city` VALUES (77, '晋城市', 13);
INSERT INTO `e_city` VALUES (78, '朔州市', 13);
INSERT INTO `e_city` VALUES (79, '晋中市', 13);
INSERT INTO `e_city` VALUES (80, '运城市', 13);
INSERT INTO `e_city` VALUES (81, '忻州市', 13);
INSERT INTO `e_city` VALUES (82, '临汾市', 13);
INSERT INTO `e_city` VALUES (83, '吕梁市', 13);
INSERT INTO `e_city` VALUES (84, '沈阳市', 14);
INSERT INTO `e_city` VALUES (85, '大连市', 14);
INSERT INTO `e_city` VALUES (86, '鞍山市', 14);
INSERT INTO `e_city` VALUES (87, '抚顺市', 14);
INSERT INTO `e_city` VALUES (88, '本溪市', 14);
INSERT INTO `e_city` VALUES (89, '丹东市', 14);
INSERT INTO `e_city` VALUES (90, '锦州市', 14);
INSERT INTO `e_city` VALUES (91, '营口市', 14);
INSERT INTO `e_city` VALUES (93, '阜新市', 14);
INSERT INTO `e_city` VALUES (94, '辽阳市', 14);
INSERT INTO `e_city` VALUES (95, '盘锦市', 14);
INSERT INTO `e_city` VALUES (96, '铁岭市', 14);
INSERT INTO `e_city` VALUES (97, '朝阳市', 14);
INSERT INTO `e_city` VALUES (98, '葫芦岛市', 14);
INSERT INTO `e_city` VALUES (99, '长春市', 15);
INSERT INTO `e_city` VALUES (100, '吉林市', 15);
INSERT INTO `e_city` VALUES (101, '四平市', 15);
INSERT INTO `e_city` VALUES (102, '辽源市', 15);
INSERT INTO `e_city` VALUES (103, '通化市', 15);
INSERT INTO `e_city` VALUES (104, '白山市', 15);
INSERT INTO `e_city` VALUES (105, '松原市', 15);
INSERT INTO `e_city` VALUES (106, '白城市', 15);
INSERT INTO `e_city` VALUES (107, '延边市', 15);
INSERT INTO `e_city` VALUES (108, '哈尔滨市', 16);
INSERT INTO `e_city` VALUES (109, '齐齐哈尔市', 16);
INSERT INTO `e_city` VALUES (110, '鸡西市', 16);
INSERT INTO `e_city` VALUES (111, '鹤岗市', 16);
INSERT INTO `e_city` VALUES (112, '双鸭山市', 16);
INSERT INTO `e_city` VALUES (113, '大庆市', 16);
INSERT INTO `e_city` VALUES (114, '佳木斯市', 16);
INSERT INTO `e_city` VALUES (115, '七台河市', 16);
INSERT INTO `e_city` VALUES (116, '牡丹江市', 16);
INSERT INTO `e_city` VALUES (117, '黑河市', 16);
INSERT INTO `e_city` VALUES (118, '绥化市', 16);
INSERT INTO `e_city` VALUES (119, '大兴安岭市', 16);
INSERT INTO `e_city` VALUES (120, '南京市', 17);
INSERT INTO `e_city` VALUES (121, '无锡市', 17);
INSERT INTO `e_city` VALUES (122, '徐州市', 17);
INSERT INTO `e_city` VALUES (123, '常州市', 17);
INSERT INTO `e_city` VALUES (124, '苏州市', 17);
INSERT INTO `e_city` VALUES (125, '南通市', 17);
INSERT INTO `e_city` VALUES (126, '连云港市', 17);
INSERT INTO `e_city` VALUES (127, '淮安市', 17);
INSERT INTO `e_city` VALUES (128, '盐城市', 17);
INSERT INTO `e_city` VALUES (129, '扬州市', 17);
INSERT INTO `e_city` VALUES (130, '镇江市', 17);
INSERT INTO `e_city` VALUES (131, '泰州市', 17);
INSERT INTO `e_city` VALUES (132, '宿迁市', 17);
INSERT INTO `e_city` VALUES (133, '杭州市', 18);
INSERT INTO `e_city` VALUES (134, '宁波市', 18);
INSERT INTO `e_city` VALUES (135, '温州市', 18);
INSERT INTO `e_city` VALUES (136, '嘉兴市', 18);
INSERT INTO `e_city` VALUES (137, '湖州市', 18);
INSERT INTO `e_city` VALUES (138, '绍兴市', 18);
INSERT INTO `e_city` VALUES (139, '金华市', 18);
INSERT INTO `e_city` VALUES (140, '衢州市', 18);
INSERT INTO `e_city` VALUES (141, '舟山市', 18);
INSERT INTO `e_city` VALUES (142, '台州市', 18);
INSERT INTO `e_city` VALUES (143, '丽水市', 18);
INSERT INTO `e_city` VALUES (144, '合肥市', 19);
INSERT INTO `e_city` VALUES (145, '芜湖市', 19);
INSERT INTO `e_city` VALUES (146, '蚌埠市', 19);
INSERT INTO `e_city` VALUES (147, '淮安市', 19);
INSERT INTO `e_city` VALUES (148, '马鞍山市', 19);
INSERT INTO `e_city` VALUES (149, '淮北市', 19);
INSERT INTO `e_city` VALUES (150, '铜陵市', 19);
INSERT INTO `e_city` VALUES (151, '安庆市', 19);
INSERT INTO `e_city` VALUES (152, '黄山市', 19);
INSERT INTO `e_city` VALUES (153, '滁州市', 19);
INSERT INTO `e_city` VALUES (154, '阜阳市', 19);
INSERT INTO `e_city` VALUES (155, '宿州市', 19);
INSERT INTO `e_city` VALUES (157, '巢湖市', 19);
INSERT INTO `e_city` VALUES (158, '六安市', 19);
INSERT INTO `e_city` VALUES (159, '亳州市', 19);
INSERT INTO `e_city` VALUES (161, '池州市', 19);
INSERT INTO `e_city` VALUES (162, '宣城市', 19);
INSERT INTO `e_city` VALUES (163, '福州市', 20);
INSERT INTO `e_city` VALUES (164, '厦门市', 20);
INSERT INTO `e_city` VALUES (165, '莆田市', 20);
INSERT INTO `e_city` VALUES (166, '三明市', 20);
INSERT INTO `e_city` VALUES (167, '泉州市', 20);
INSERT INTO `e_city` VALUES (168, '漳州市', 20);
INSERT INTO `e_city` VALUES (169, '南平市', 20);
INSERT INTO `e_city` VALUES (170, '龙岩市', 20);
INSERT INTO `e_city` VALUES (171, '宁德市', 20);
INSERT INTO `e_city` VALUES (172, '南昌市', 21);
INSERT INTO `e_city` VALUES (173, '景德镇市', 21);
INSERT INTO `e_city` VALUES (174, '萍乡市', 21);
INSERT INTO `e_city` VALUES (175, '九江市', 21);
INSERT INTO `e_city` VALUES (176, '新余市', 21);
INSERT INTO `e_city` VALUES (177, '鹰潭市', 21);
INSERT INTO `e_city` VALUES (178, '赣州市', 21);
INSERT INTO `e_city` VALUES (179, '吉安市', 21);
INSERT INTO `e_city` VALUES (180, '宜春市', 21);
INSERT INTO `e_city` VALUES (182, '抚州市', 21);
INSERT INTO `e_city` VALUES (183, '上饶市', 21);
INSERT INTO `e_city` VALUES (184, '济南市', 22);
INSERT INTO `e_city` VALUES (186, '青岛市', 22);
INSERT INTO `e_city` VALUES (187, '淄博市', 22);
INSERT INTO `e_city` VALUES (188, '枣庄市', 22);
INSERT INTO `e_city` VALUES (189, '东营市', 22);
INSERT INTO `e_city` VALUES (190, '烟台市', 22);
INSERT INTO `e_city` VALUES (191, '潍坊市', 22);
INSERT INTO `e_city` VALUES (192, '威海市', 22);
INSERT INTO `e_city` VALUES (193, '济宁市', 22);
INSERT INTO `e_city` VALUES (194, '泰安市', 22);
INSERT INTO `e_city` VALUES (195, '日照市', 22);
INSERT INTO `e_city` VALUES (196, '莱芜市', 22);
INSERT INTO `e_city` VALUES (197, '临沂市', 22);
INSERT INTO `e_city` VALUES (198, '德州市', 22);
INSERT INTO `e_city` VALUES (199, '聊城市', 22);
INSERT INTO `e_city` VALUES (200, '菏泽市', 22);
INSERT INTO `e_city` VALUES (201, '滨州市', 22);
INSERT INTO `e_city` VALUES (202, '郑州市', 23);
INSERT INTO `e_city` VALUES (203, '开封市', 23);
INSERT INTO `e_city` VALUES (204, '洛阳市', 23);
INSERT INTO `e_city` VALUES (205, '平顶山市', 23);
INSERT INTO `e_city` VALUES (207, '焦作市', 23);
INSERT INTO `e_city` VALUES (208, '鹤壁市', 23);
INSERT INTO `e_city` VALUES (209, '新乡市', 23);
INSERT INTO `e_city` VALUES (210, '安阳市', 23);
INSERT INTO `e_city` VALUES (211, '濮阳市', 23);
INSERT INTO `e_city` VALUES (212, '许昌市', 23);
INSERT INTO `e_city` VALUES (213, '漯河市', 23);
INSERT INTO `e_city` VALUES (214, '三门峡市', 23);
INSERT INTO `e_city` VALUES (215, '南阳市', 23);
INSERT INTO `e_city` VALUES (216, '商丘市', 23);
INSERT INTO `e_city` VALUES (217, '信阳市', 23);
INSERT INTO `e_city` VALUES (218, '周口市', 23);
INSERT INTO `e_city` VALUES (219, '驻马店市', 23);
INSERT INTO `e_city` VALUES (220, '武汉市', 24);
INSERT INTO `e_city` VALUES (221, '黄石市', 24);
INSERT INTO `e_city` VALUES (222, '襄樊市', 24);
INSERT INTO `e_city` VALUES (223, '十堰市', 24);
INSERT INTO `e_city` VALUES (224, '荆州市', 24);
INSERT INTO `e_city` VALUES (225, '宜昌市', 24);
INSERT INTO `e_city` VALUES (226, '荆门市', 24);
INSERT INTO `e_city` VALUES (227, '鄂州市', 24);
INSERT INTO `e_city` VALUES (228, '孝感市', 24);
INSERT INTO `e_city` VALUES (229, '黄冈市', 24);
INSERT INTO `e_city` VALUES (230, '咸宁市', 24);
INSERT INTO `e_city` VALUES (231, '随州市', 24);
INSERT INTO `e_city` VALUES (232, '恩施市', 24);
INSERT INTO `e_city` VALUES (233, '长沙市', 25);
INSERT INTO `e_city` VALUES (234, '株洲市', 25);
INSERT INTO `e_city` VALUES (235, '湘潭市', 25);
INSERT INTO `e_city` VALUES (236, '衡阳市', 25);
INSERT INTO `e_city` VALUES (237, '邵阳市', 25);
INSERT INTO `e_city` VALUES (238, '岳阳市', 25);
INSERT INTO `e_city` VALUES (239, '常德市', 25);
INSERT INTO `e_city` VALUES (240, '张家界市', 25);
INSERT INTO `e_city` VALUES (241, '益阳市', 25);
INSERT INTO `e_city` VALUES (242, '郴州市', 25);
INSERT INTO `e_city` VALUES (243, '永化市', 25);
INSERT INTO `e_city` VALUES (244, '怀化市', 25);
INSERT INTO `e_city` VALUES (245, '娄底市', 25);
INSERT INTO `e_city` VALUES (246, '湘西市', 25);
INSERT INTO `e_city` VALUES (247, '广州市', 26);
INSERT INTO `e_city` VALUES (248, '深圳市', 26);
INSERT INTO `e_city` VALUES (249, '珠海市', 26);
INSERT INTO `e_city` VALUES (250, '汕头市', 26);
INSERT INTO `e_city` VALUES (251, '韶关市', 26);
INSERT INTO `e_city` VALUES (252, '佛山市', 26);
INSERT INTO `e_city` VALUES (253, '江门市', 26);
INSERT INTO `e_city` VALUES (254, '湛江市', 26);
INSERT INTO `e_city` VALUES (255, '茂名市', 26);
INSERT INTO `e_city` VALUES (256, '肇庆市', 26);
INSERT INTO `e_city` VALUES (257, '惠州市', 26);
INSERT INTO `e_city` VALUES (258, '梅州市', 26);
INSERT INTO `e_city` VALUES (259, '汕尾市', 26);
INSERT INTO `e_city` VALUES (260, '河源市', 26);
INSERT INTO `e_city` VALUES (261, '阳江市', 26);
INSERT INTO `e_city` VALUES (262, '清远市', 26);
INSERT INTO `e_city` VALUES (263, '东莞市', 26);
INSERT INTO `e_city` VALUES (264, '中山市', 26);
INSERT INTO `e_city` VALUES (265, '潮州市', 26);
INSERT INTO `e_city` VALUES (266, '揭阳市', 26);
INSERT INTO `e_city` VALUES (267, '云浮市', 26);
INSERT INTO `e_city` VALUES (268, '海口市', 27);
INSERT INTO `e_city` VALUES (269, '三亚市', 27);
INSERT INTO `e_city` VALUES (270, '成都市', 28);
INSERT INTO `e_city` VALUES (276, '自贡市', 28);
INSERT INTO `e_city` VALUES (277, '攀枝花市', 28);
INSERT INTO `e_city` VALUES (278, '泸州市', 28);
INSERT INTO `e_city` VALUES (279, '德阳市', 28);
INSERT INTO `e_city` VALUES (280, '绵阳市', 28);
INSERT INTO `e_city` VALUES (281, '广元市', 28);
INSERT INTO `e_city` VALUES (282, '遂宁市', 28);
INSERT INTO `e_city` VALUES (283, '内江市', 28);
INSERT INTO `e_city` VALUES (284, '乐山市', 28);
INSERT INTO `e_city` VALUES (285, '南充市', 28);
INSERT INTO `e_city` VALUES (286, '宜宾市', 28);
INSERT INTO `e_city` VALUES (287, '广安市', 28);
INSERT INTO `e_city` VALUES (288, '雅安市', 28);
INSERT INTO `e_city` VALUES (289, '巴中市', 28);
INSERT INTO `e_city` VALUES (290, '资阳市', 28);
INSERT INTO `e_city` VALUES (291, '阿坝市', 28);
INSERT INTO `e_city` VALUES (292, '甘孜市', 28);
INSERT INTO `e_city` VALUES (293, '凉山市', 28);
INSERT INTO `e_city` VALUES (294, '贵阳市', 29);
INSERT INTO `e_city` VALUES (295, '六盘水市', 29);
INSERT INTO `e_city` VALUES (296, '遵义', 29);
INSERT INTO `e_city` VALUES (297, '安顺市', 29);
INSERT INTO `e_city` VALUES (298, '铜仁市', 29);
INSERT INTO `e_city` VALUES (299, '毕节市', 29);
INSERT INTO `e_city` VALUES (300, '黔西南', 29);
INSERT INTO `e_city` VALUES (301, '黔东南', 29);
INSERT INTO `e_city` VALUES (302, '黔南', 29);
INSERT INTO `e_city` VALUES (303, '昆明市', 30);
INSERT INTO `e_city` VALUES (304, '曲靖市', 30);
INSERT INTO `e_city` VALUES (305, '玉溪市', 30);
INSERT INTO `e_city` VALUES (306, '保山市', 30);
INSERT INTO `e_city` VALUES (307, '邵通市', 30);
INSERT INTO `e_city` VALUES (308, '丽江市', 30);
INSERT INTO `e_city` VALUES (309, '普洱市', 30);
INSERT INTO `e_city` VALUES (310, '临沧市', 30);
INSERT INTO `e_city` VALUES (311, '文山市', 30);
INSERT INTO `e_city` VALUES (312, '红河市', 30);
INSERT INTO `e_city` VALUES (313, '西双版纳市', 30);
INSERT INTO `e_city` VALUES (314, '楚雄市', 30);
INSERT INTO `e_city` VALUES (315, '大理市', 30);
INSERT INTO `e_city` VALUES (316, '德宏市', 30);
INSERT INTO `e_city` VALUES (317, '怒江市', 30);
INSERT INTO `e_city` VALUES (318, '迪庆市', 30);
INSERT INTO `e_city` VALUES (319, '西安市', 31);
INSERT INTO `e_city` VALUES (320, '铜川市', 31);
INSERT INTO `e_city` VALUES (321, '宝鸡市', 31);
INSERT INTO `e_city` VALUES (322, '咸阳市', 31);
INSERT INTO `e_city` VALUES (323, '渭南市', 31);
INSERT INTO `e_city` VALUES (324, '延安市', 31);
INSERT INTO `e_city` VALUES (325, '汉中市', 31);
INSERT INTO `e_city` VALUES (326, '榆林市', 31);
INSERT INTO `e_city` VALUES (327, '安康市', 31);
INSERT INTO `e_city` VALUES (328, '商洛市', 31);
INSERT INTO `e_city` VALUES (329, '兰州市', 32);
INSERT INTO `e_city` VALUES (330, '嘉峪关市', 32);
INSERT INTO `e_city` VALUES (331, '金昌市', 32);
INSERT INTO `e_city` VALUES (332, '白银市', 32);
INSERT INTO `e_city` VALUES (333, '天水市', 32);
INSERT INTO `e_city` VALUES (334, '武威市', 32);
INSERT INTO `e_city` VALUES (335, '张掖市', 32);
INSERT INTO `e_city` VALUES (336, '平凉市', 32);
INSERT INTO `e_city` VALUES (337, '酒泉市', 32);
INSERT INTO `e_city` VALUES (338, '庆阳市', 32);
INSERT INTO `e_city` VALUES (339, '定西市', 32);
INSERT INTO `e_city` VALUES (340, '陇南市', 32);
INSERT INTO `e_city` VALUES (341, '临夏市', 32);
INSERT INTO `e_city` VALUES (342, '甘南市', 32);
INSERT INTO `e_city` VALUES (343, '西宁市', 33);
INSERT INTO `e_city` VALUES (344, '海东市', 33);
INSERT INTO `e_city` VALUES (345, '海北市', 33);
INSERT INTO `e_city` VALUES (346, '黄南市', 33);
INSERT INTO `e_city` VALUES (347, '海南市', 33);
INSERT INTO `e_city` VALUES (348, '果洛市', 33);
INSERT INTO `e_city` VALUES (349, '玉树市', 33);
INSERT INTO `e_city` VALUES (350, '海西市', 33);
INSERT INTO `e_city` VALUES (352, '台湾市', 34);
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_enterprise' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_enterprise' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_enterprise
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `e_enterprise` VALUES (1, '北京xx有限公司', '01001', '123456', '7ad680c6-4e62-4177-a6c5-4277f2d3ea74.jpg', '描述', 1, '13011112222', '123@168.com', 1);
INSERT INTO `e_enterprise` VALUES (2, '腾讯公司', '01002', '123456', '81c04695-b76f-49d0-865d-eab0c65ecea7.jpg', '有钱', 1, '1069070069', '666@qq.com', 1);
INSERT INTO `e_enterprise` VALUES (3, '阿里巴巴', '01003', '123456', '95d9ddd9-2ef4-4a08-b5e0-9db664552b49.jpg', '超级有钱', 1, '12345678910', 'alibaba.com', 1);
=======
INSERT INTO `e_enterprise` VALUES (1, '北京xx有限公司', '01001', '123456', 'xx.jpg', '描述', 1, '13011112222', '123@168.com', 1);
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Table structure for e_faculty
-- ----------------------------
DROP TABLE IF EXISTS `e_faculty`;
CREATE TABLE `e_faculty`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系',
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'fname',
  PRIMARY KEY (`fid`) USING BTREE
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_faculty' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_faculty' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_faculty
-- ----------------------------
INSERT INTO `e_faculty` VALUES (1, '信息科学与技术学院');
<<<<<<< HEAD
INSERT INTO `e_faculty` VALUES (2, '哲学学院');
INSERT INTO `e_faculty` VALUES (3, '理论经济学院');
INSERT INTO `e_faculty` VALUES (4, '教育学院');
INSERT INTO `e_faculty` VALUES (5, '心理学学院');
INSERT INTO `e_faculty` VALUES (6, '核科学与技术学院');
INSERT INTO `e_faculty` VALUES (7, '环境科学与工程');
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_hiring' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_hiring' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_hiring
-- ----------------------------
INSERT INTO `e_hiring` VALUES (1, '招聘信息', 5, '计算机科学与技术', '本科', 5000.0000, '2021-9-28', 0, 1);
<<<<<<< HEAD
INSERT INTO `e_hiring` VALUES (2, '腾讯招聘', 3, '计算机科学与技术', '本科', 7000.0000, '2021-9-28', 0, 2);
INSERT INTO `e_hiring` VALUES (3, '腾讯招聘', 1, '车辆专业', '本科', 10000.0000, '2021-9-28', 0, 5);
INSERT INTO `e_hiring` VALUES (4, '阿里招聘', 1, '车辆专业', '研究生', 15000.0000, '2021-9-28', 0, 4);
INSERT INTO `e_hiring` VALUES (5, '阿里招聘', 12, '计算机科学与技术', '本科', 7000.0000, '2021-10-1', 0, 3);
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_job' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_job' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_job
-- ----------------------------
INSERT INTO `e_job` VALUES (1, '测试岗位', '测试。。。', 1);
<<<<<<< HEAD
INSERT INTO `e_job` VALUES (2, 'java开发', '开发程序', 2);
INSERT INTO `e_job` VALUES (3, '运维', '运维', 3);
INSERT INTO `e_job` VALUES (4, '司机', '马云的私人司机', 3);
INSERT INTO `e_job` VALUES (5, '司机', '马化腾的私人司机', 2);
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_major' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_major' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_major
-- ----------------------------
INSERT INTO `e_major` VALUES (1, '计算机科学与技术', 1);
<<<<<<< HEAD
INSERT INTO `e_major` VALUES (2, '计算机软件与理论', 1);
INSERT INTO `e_major` VALUES (3, '计算机应用技术', 1);
INSERT INTO `e_major` VALUES (4, '马克思主义哲学', 2);
INSERT INTO `e_major` VALUES (5, '逻辑学', 2);
INSERT INTO `e_major` VALUES (6, '科学技术哲学', 2);
INSERT INTO `e_major` VALUES (7, '政治经济学', 3);
INSERT INTO `e_major` VALUES (8, '经济史', 3);
INSERT INTO `e_major` VALUES (9, '世界经济', 3);
INSERT INTO `e_major` VALUES (10, '教育学原理', 4);
INSERT INTO `e_major` VALUES (11, '教育史', 4);
INSERT INTO `e_major` VALUES (12, '基础心理学', 5);
INSERT INTO `e_major` VALUES (13, '应用心理学', 5);
INSERT INTO `e_major` VALUES (14, '核能科学与工程', 6);
INSERT INTO `e_major` VALUES (15, '核技术及应用', 6);
INSERT INTO `e_major` VALUES (16, '环境科学', 7);
INSERT INTO `e_major` VALUES (17, '环境工程', 7);
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_note' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of e_note
-- ----------------------------
INSERT INTO `e_note` VALUES (1, 1, 1, 0);

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
<<<<<<< HEAD
  `otime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '就业时间',
  `oflag` int(11) NOT NULL COMMENT '就业信息状态\r\n0未审核、1已通过、2未通过',
=======
  `otime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结业时间',
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `osid`(`osid`) USING BTREE,
  CONSTRAINT `e_obtain_ibfk_1` FOREIGN KEY (`osid`) REFERENCES `e_student` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_obtain' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of e_obtain
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `e_obtain` VALUES (1, 1, 1, 'xx公司', 'xx职位', '2020-1-1', 0);
=======
INSERT INTO `e_obtain` VALUES (1, 1, 1, 'xx公司', 'xx职位', '2020-1-1');
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Table structure for e_province
-- ----------------------------
DROP TABLE IF EXISTS `e_province`;
CREATE TABLE `e_province`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pid',
  `pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'pname',
  PRIMARY KEY (`pid`) USING BTREE
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_province' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_province' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_province
-- ----------------------------
INSERT INTO `e_province` VALUES (1, '北京市');
<<<<<<< HEAD
INSERT INTO `e_province` VALUES (2, '天津市');
INSERT INTO `e_province` VALUES (3, '上海市');
INSERT INTO `e_province` VALUES (4, '重庆市');
INSERT INTO `e_province` VALUES (5, '内蒙古自治区');
INSERT INTO `e_province` VALUES (6, '广西壮族自治区');
INSERT INTO `e_province` VALUES (7, '西藏自治区');
INSERT INTO `e_province` VALUES (8, '宁夏回族自治区');
INSERT INTO `e_province` VALUES (9, '新疆维吾尔自治区');
INSERT INTO `e_province` VALUES (10, '香港特别行政区');
INSERT INTO `e_province` VALUES (11, '澳门特别行政区');
INSERT INTO `e_province` VALUES (12, '河北省');
INSERT INTO `e_province` VALUES (13, '山西省');
INSERT INTO `e_province` VALUES (14, '辽宁省');
INSERT INTO `e_province` VALUES (15, '吉林省');
INSERT INTO `e_province` VALUES (16, '黑龙江省');
INSERT INTO `e_province` VALUES (17, '江苏省');
INSERT INTO `e_province` VALUES (18, '浙江省');
INSERT INTO `e_province` VALUES (19, '安徽省');
INSERT INTO `e_province` VALUES (20, '福建省');
INSERT INTO `e_province` VALUES (21, '江西省');
INSERT INTO `e_province` VALUES (22, '山东省');
INSERT INTO `e_province` VALUES (23, '河南省');
INSERT INTO `e_province` VALUES (24, '湖北省');
INSERT INTO `e_province` VALUES (25, '湖南省');
INSERT INTO `e_province` VALUES (26, '广东省');
INSERT INTO `e_province` VALUES (27, '海南省');
INSERT INTO `e_province` VALUES (28, '四川省');
INSERT INTO `e_province` VALUES (29, '贵州省');
INSERT INTO `e_province` VALUES (30, '云南省');
INSERT INTO `e_province` VALUES (31, '陕西省');
INSERT INTO `e_province` VALUES (32, '甘肃省');
INSERT INTO `e_province` VALUES (33, '青海省');
INSERT INTO `e_province` VALUES (34, '台湾省');
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_resume' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of e_resume
-- ----------------------------
INSERT INTO `e_resume` VALUES (1, '职位1', 10000.0000, 1, '啥也会', 1);

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_student' ROW_FORMAT = Dynamic;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_student' ROW_FORMAT = Dynamic;
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

-- ----------------------------
-- Records of e_student
-- ----------------------------
INSERT INTO `e_student` VALUES (1, '韩秋智', 1814490077, '152106199909080057', 22, '1', '17614931406', 'hanqiuzhi666@163.com', '123456', 1, '2018', '本科', 0);
<<<<<<< HEAD
INSERT INTO `e_student` VALUES (2, '梁佐旭', 1814110012, '152701200002160936', 22, '1', '18547757113', '1586318059@qq.com', '153356', 1, '2018', '本科', 0);
INSERT INTO `e_student` VALUES (3, '彭于晏', 1814411011, '152415123154776748', 30, '1', '13310318382', '15315813@qq.com', '123456', 1, '2001', '本科', 1);
INSERT INTO `e_student` VALUES (10, '陈冠希', 1815432215, '156168561321561465', 33, '1', '18475751363', '1516cgx@163.om', '123789', 1, '2003', '本科', 2);
=======
>>>>>>> 777555282b2e523a1c703aceb504400d0fd4abd0

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_through' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of e_through
-- ----------------------------
INSERT INTO `e_through` VALUES (1, '项目一', '描述111', '2021-1-1', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'e_university' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of e_university
-- ----------------------------
INSERT INTO `e_university` VALUES (1, '包头师范学院', 15012, '123456');

SET FOREIGN_KEY_CHECKS = 1;
