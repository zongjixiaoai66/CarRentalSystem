/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t296`;
CREATE DATABASE IF NOT EXISTS `t296` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t296`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 1, '1111', '2022-04-05 11:14:44', NULL, NULL, 2, 1, '2022-04-05 11:14:45'),
	(2, 1, NULL, NULL, '222222', '2022-04-05 11:15:05', NULL, 2, '2022-04-05 11:15:06');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/qichezulinwangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/qichezulinwangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/qichezulinwangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-05 08:31:59'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-05 08:31:59'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-05 08:31:59'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-05 08:31:59'),
	(5, 'qiche_types', '汽车租赁类型', 1, '汽车租赁类型1', NULL, NULL, '2022-04-05 08:31:59'),
	(6, 'qiche_types', '汽车租赁类型', 2, '汽车租赁类型2', NULL, NULL, '2022-04-05 08:31:59'),
	(7, 'qiche_types', '汽车租赁类型', 3, '汽车租赁类型3', NULL, NULL, '2022-04-05 08:31:59'),
	(8, 'qiche_types', '汽车租赁类型', 4, '汽车租赁类型4', NULL, NULL, '2022-04-05 08:31:59'),
	(9, 'qiche_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-05 08:31:59'),
	(10, 'qiche_order_types', '订单类型', 1, '已预约', NULL, NULL, '2022-04-05 08:31:59'),
	(11, 'qiche_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-04-05 08:31:59'),
	(12, 'qiche_order_types', '订单类型', 3, '已取走', NULL, NULL, '2022-04-05 08:31:59'),
	(13, 'qiche_order_types', '订单类型', 4, '已还车', NULL, NULL, '2022-04-05 08:31:59'),
	(14, 'qiche_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-04-05 08:31:59'),
	(15, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-05 08:32:00'),
	(16, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-05 08:32:00'),
	(17, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-04-05 08:32:00'),
	(18, 'single_seach_types', '单页数据类型', 2, '联系我们', NULL, NULL, '2022-04-05 08:32:00'),
	(19, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2022-04-05 08:32:00'),
	(20, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2022-04-05 08:32:00'),
	(21, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2022-04-05 08:32:00'),
	(22, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2022-04-05 08:32:00');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/qichezulinwangzhan/upload/gonggao1.jpg', 2, '2022-04-05 08:34:25', '公告详情1', '2022-04-05 08:34:25'),
	(2, '公告名称2', 'http://localhost:8080/qichezulinwangzhan/upload/gonggao2.jpg', 2, '2022-04-05 08:34:25', '公告详情2', '2022-04-05 08:34:25'),
	(3, '公告名称3', 'http://localhost:8080/qichezulinwangzhan/upload/gonggao3.jpg', 2, '2022-04-05 08:34:25', '公告详情3', '2022-04-05 08:34:25'),
	(4, '公告名称4', 'http://localhost:8080/qichezulinwangzhan/upload/gonggao4.jpg', 1, '2022-04-05 08:34:25', '公告详情4', '2022-04-05 08:34:25'),
	(5, '公告名称5', 'http://localhost:8080/qichezulinwangzhan/upload/gonggao5.jpg', 2, '2022-04-05 08:34:25', '公告详情5', '2022-04-05 08:34:25');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, '留言标题1', '留言内容1', '2022-04-05 08:34:25', '回复信息1', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(2, 1, '留言标题2', '留言内容2', '2022-04-05 08:34:25', '回复信息2', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(3, 1, '留言标题3', '留言内容3', '2022-04-05 08:34:25', '回复信息3', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(4, 2, '留言标题4', '留言内容4', '2022-04-05 08:34:25', '回复信息4', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(5, 1, '留言标题5', '留言内容5', '2022-04-05 08:34:25', '回复信息5', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(6, 1, '标题111', '内容111', '2022-04-05 11:15:35', '少时诵诗书付过过', '2022-04-05 11:16:56', '2022-04-05 11:15:35'),
	(7, 1, '66', '666', '2024-07-24 03:47:14', NULL, NULL, '2024-07-24 03:47:14');

DROP TABLE IF EXISTS `qiche`;
CREATE TABLE IF NOT EXISTS `qiche` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiche_uuid_number` varchar(200) DEFAULT NULL COMMENT '汽车编号  Search111 ',
  `qiche_name` varchar(200) DEFAULT NULL COMMENT '汽车名称  Search111 ',
  `qiche_photo` varchar(200) DEFAULT NULL COMMENT '汽车照片',
  `qiche_types` int DEFAULT NULL COMMENT '汽车类型 Search111',
  `qiche_kucun_number` int DEFAULT NULL COMMENT '汽车库存数量',
  `qiche_old_money` decimal(10,2) DEFAULT NULL COMMENT '租赁原价/天',
  `qiche_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/天 ',
  `qiche_clicknum` int DEFAULT NULL COMMENT '热度',
  `qiche_content` text COMMENT '汽车详细介绍',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `qiche_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='汽车租赁';

DELETE FROM `qiche`;
INSERT INTO `qiche` (`id`, `qiche_uuid_number`, `qiche_name`, `qiche_photo`, `qiche_types`, `qiche_kucun_number`, `qiche_old_money`, `qiche_new_money`, `qiche_clicknum`, `qiche_content`, `shangxia_types`, `qiche_delete`, `create_time`) VALUES
	(1, '164914766528812', '汽车名称1', 'http://localhost:8080/qichezulinwangzhan/upload/qiche1.jpg', 2, 101, 701.43, 54.48, 252, '汽车详细介绍1', 1, 1, '2022-04-05 08:34:25'),
	(2, '16491476652886', '汽车名称2', 'http://localhost:8080/qichezulinwangzhan/upload/qiche2.jpg', 2, 102, 685.06, 267.83, 259, '汽车详细介绍2', 1, 1, '2022-04-05 08:34:25'),
	(3, '16491476652885', '汽车名称3', 'http://localhost:8080/qichezulinwangzhan/upload/qiche3.jpg', 1, 103, 610.78, 93.83, 109, '汽车详细介绍3', 1, 1, '2022-04-05 08:34:25'),
	(4, '16491476652886', '汽车名称4', 'http://localhost:8080/qichezulinwangzhan/upload/qiche4.jpg', 1, 104, 583.50, 473.88, 355, '汽车详细介绍4', 1, 1, '2022-04-05 08:34:25'),
	(5, '16491476652886', '汽车名称5', 'http://localhost:8080/qichezulinwangzhan/upload/qiche5.jpg', 3, 105, 866.93, 402.46, 340, '汽车详细介绍5', 1, 1, '2022-04-05 08:34:25');

DROP TABLE IF EXISTS `qiche_collection`;
CREATE TABLE IF NOT EXISTS `qiche_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_id` int DEFAULT NULL COMMENT '汽车租赁',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiche_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='汽车租赁收藏';

DELETE FROM `qiche_collection`;
INSERT INTO `qiche_collection` (`id`, `qiche_id`, `yonghu_id`, `qiche_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(2, 2, 1, 1, '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(3, 3, 2, 1, '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(4, 4, 2, 1, '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(5, 5, 1, 1, '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(6, 4, 1, 1, '2024-07-24 03:47:21', '2024-07-24 03:47:21');

DROP TABLE IF EXISTS `qiche_commentback`;
CREATE TABLE IF NOT EXISTS `qiche_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_id` int DEFAULT NULL COMMENT '汽车租赁',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiche_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='汽车租赁评价';

DELETE FROM `qiche_commentback`;
INSERT INTO `qiche_commentback` (`id`, `qiche_id`, `yonghu_id`, `qiche_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2022-04-05 08:34:25', '回复信息1', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(2, 2, 3, '评价内容2', '2022-04-05 08:34:25', '回复信息2', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(3, 3, 3, '评价内容3', '2022-04-05 08:34:25', '回复信息3', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(4, 4, 2, '评价内容4', '2022-04-05 08:34:25', '回复信息4', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(5, 5, 1, '评价内容5', '2022-04-05 08:34:25', '回复信息5', '2022-04-05 08:34:25', '2022-04-05 08:34:25'),
	(6, 5, 1, '很不错', '2022-04-05 11:19:46', NULL, NULL, '2022-04-05 11:19:46');

DROP TABLE IF EXISTS `qiche_order`;
CREATE TABLE IF NOT EXISTS `qiche_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `qiche_id` int DEFAULT NULL COMMENT '汽车租赁',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zuche_time` date DEFAULT NULL COMMENT '租车日期',
  `yujihuanche_time` date DEFAULT NULL COMMENT '预计还车日期',
  `shijihuanche_time` date DEFAULT NULL COMMENT '实际还车日期',
  `shiyongtianshu` int DEFAULT NULL COMMENT '使用天数',
  `huafei_money` decimal(10,2) DEFAULT NULL COMMENT '花费总额',
  `qiche_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='汽车租赁订单';

DELETE FROM `qiche_order`;
INSERT INTO `qiche_order` (`id`, `qiche_order_uuid_number`, `qiche_id`, `yonghu_id`, `zuche_time`, `yujihuanche_time`, `shijihuanche_time`, `shiyongtianshu`, `huafei_money`, `qiche_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1649148986789', 5, 1, '2022-04-06', '2022-04-14', NULL, NULL, NULL, 3, '2022-04-05 08:56:27', '2022-04-05 08:56:27'),
	(2, '1649157355166', 5, 1, '2022-04-06', '2022-04-21', '2022-04-05', 1, 402.46, 5, '2022-04-05 11:15:55', '2022-04-05 11:15:55');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '联系我们', 2, '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们</p>', '2022-04-05 08:37:31'),
	(2, '网站介绍', 1, '<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍</p>', '2022-04-05 08:37:44');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'fs30hhp3n9d5t636f0kspgohiab2rcye', '2022-04-05 08:36:37', '2024-07-24 04:45:26'),
	(2, 1, 'a1', 'yonghu', '用户', 's1jxlb4o7wgej08nciewyb6lxlhawk4p', '2022-04-05 08:38:04', '2024-07-24 04:47:00');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `new_money`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/qichezulinwangzhan/upload/yonghu1.jpg', 1, 99963.49, '1@qq.com', '2022-04-05 08:34:25'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/qichezulinwangzhan/upload/yonghu2.jpg', 1, 499.49, '2@qq.com', '2022-04-05 08:34:25'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/qichezulinwangzhan/upload/yonghu3.jpg', 2, 354.78, '3@qq.com', '2022-04-05 08:34:25');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
