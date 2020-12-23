/*
Navicat MySQL Data Transfer

Source Server         : localhost_mysql
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_etamu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-12-23 17:35:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('562');
INSERT INTO `hibernate_sequence` VALUES ('562');

-- ----------------------------
-- Table structure for `persistent_logins`
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for `t_master_loket`
-- ----------------------------
DROP TABLE IF EXISTS `t_master_loket`;
CREATE TABLE `t_master_loket` (
  `nama_loket` varchar(500) NOT NULL,
  `inisial` int(1) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `last_modified` date DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL,
  `grouping` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`inisial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_master_loket
-- ----------------------------
INSERT INTO `t_master_loket` VALUES ('Direksi', '1', 'Direksi', '2019-08-20', null, 'Direksi');
INSERT INTO `t_master_loket` VALUES ('Direktur Operasional', '15', 'Direktur Operasional', null, null, 'Direksi');
INSERT INTO `t_master_loket` VALUES ('Direktur Dana & Jasa', '16', 'Direktur Dana & Jasa', null, null, 'Direksi');
INSERT INTO `t_master_loket` VALUES ('Direktur Kredit & Syariah', '17', 'Direktur Kredit & Syariah', null, null, 'Direksi');
INSERT INTO `t_master_loket` VALUES ('Direktur Utama', '18', 'Direktur Utama', null, null, 'Direksi');
INSERT INTO `t_master_loket` VALUES ('Direktur Kepatuhan', '19', 'Direktur Kepatuhan', null, null, 'Direksi');
INSERT INTO `t_master_loket` VALUES ('Receptionist', '20', 'Receptionist', null, null, 'Receptionist');

-- ----------------------------
-- Table structure for `t_registrasi_tamu`
-- ----------------------------
DROP TABLE IF EXISTS `t_registrasi_tamu`;
CREATE TABLE `t_registrasi_tamu` (
  `id_registrasi` varchar(500) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `kabupaten` varchar(200) DEFAULT NULL,
  `provinsi` varchar(200) DEFAULT NULL,
  `tgl_registrasi` datetime DEFAULT NULL,
  `unit_kerja_dituju` varchar(200) DEFAULT NULL,
  `tujuan_datang` varchar(200) DEFAULT NULL,
  `lantai_dituju` varchar(200) DEFAULT NULL,
  `poto` varchar(600) DEFAULT NULL,
  `input_by` varchar(200) DEFAULT NULL,
  `update_by` varchar(200) DEFAULT NULL,
  `nomor_handphone` varchar(200) DEFAULT NULL,
  `nomor_ktp` varchar(200) DEFAULT NULL,
  `rt_rw` varchar(10) DEFAULT NULL,
  `kelurahan` varchar(200) DEFAULT NULL,
  `kecamatan` varchar(200) DEFAULT NULL,
  `jekel` varchar(10) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(200) DEFAULT NULL,
  `warga_negara` varchar(200) DEFAULT NULL,
  `expired_warganegara` date DEFAULT NULL,
  `tempat_lahir` varchar(200) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  PRIMARY KEY (`id_registrasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_registrasi_tamu
-- ----------------------------
INSERT INTO `t_registrasi_tamu` VALUES ('1592323508569', 'VALENTINO ROSSI', 'PERUM SIDOMULYO RESIDENCE BLOK J7 NO 14', 'PEKANBARU', 'RIAU', '2020-06-16 23:08:01', 'Direktur Operasional', 'PRESENTASI PRODUK', null, '1592323508569.png', 'taufik', null, '08537630876', '1471098080808008', '01', '06', 'MARPOYAN DAMAI', 'Pria', 'Islam', 'SWASTA', 'INDONESIA', '2020-06-16', 'MEDANG', '2020-06-01');
INSERT INTO `t_registrasi_tamu` VALUES ('1592323828120', 'MARC MARQUEZ', 'PERUMAHAN SIDOMULTO RESIDENCE BLOK J7	', 'PEKANBARU KOTA', 'RIAU', '2020-06-16 23:12:07', 'Direktur Utama', 'ADA KEPERLUAN DEH....', null, '1592323828120.png', 'taufik', null, '08537630879', '14710909090', '001', '006', 'MARPOYAN DAMAI', 'Pria', 'Islam', 'SWASTA', 'INDONESIA', null, 'PEKANBARU', '2020-06-26');
INSERT INTO `t_registrasi_tamu` VALUES ('1592325404914', 'DONI PEDROSA', 'SIDOMULSYO RESIDENCE BLOK J8', 'PEKANBARU', 'RIAU', '2020-06-16 23:38:41', 'Direktur Operasional', 'MENYAMPAIKAN KABAR GEMBIRA', null, '1592325404914.png', 'taufik', null, '085376308796', '147166767676767', '001', '005', 'MARPOYAN', 'Pria', 'Islam', 'SWASTA', 'INDOENSIA', null, 'PEKANBARU', '1987-06-02');
INSERT INTO `t_registrasi_tamu` VALUES ('1592325524947', 'JACK MILLER', 'JALAN MELATI', 'PEKANBARU', 'RIAU', '2020-06-16 23:41:09', 'Direktur Operasional', 'MENYAMPAIKAN KABAR GEMBIRA', null, '1592325524947.png', 'taufik', null, '0866767676767', '12345667', '006', '007', 'SENAPELAN', 'Pria', 'Islam', 'SWASTA', 'INDONESIA', null, 'PADANG', '1983-08-09');
INSERT INTO `t_registrasi_tamu` VALUES ('1592325673957', 'PETRUCI', 'JALAN SELAMETAN', 'PEKANBARU', 'RIAU', '2020-06-16 23:44:17', 'Direktur Operasional', 'ADA URUSAN PRIBADI DGN DIREKSI', null, '1592325673957.png', 'taufik', null, '0853656565665', '12345656788', '008', '010', 'PAYUNG SEKAKI', 'Pria', 'Islam', 'SWASTA', 'INDONESIA', null, 'PEKANBARU', '1983-08-09');
INSERT INTO `t_registrasi_tamu` VALUES ('1592325861559', 'MIKE TYSON', 'JALAN  KALIMANTAN RAYA', 'PEKANBARU', 'RIAU', '2020-06-16 23:50:21', 'Direktur Operasional', 'ADA URUSAN PRIBADI DGN DIREKSI', null, '1592325861559.png', 'taufik', null, '1471787878787878787', '1471090900900', '001', '002', 'MAHARATU', 'Pria', 'Islam', 'SWASTA', 'INDOENSIA', null, 'JAKARTA', '1976-06-07');
INSERT INTO `t_registrasi_tamu` VALUES ('1592326226438', 'RICHARD SAMBERA', 'JALAN  KUANTAN  RAYA', 'PEKANBARU', 'RIAU', '2020-06-16 23:54:19', 'Direktur Operasional', 'ADA URUSAN PRIBADI DGN DIREKSI', null, '1592326226438.png', 'taufik', null, '471090909090909', '989898989', '006', '002', 'SAIL', 'Pria', 'Islam', 'SWASTA', 'INDONESIA', null, 'DUMAI', '1980-06-10');

-- ----------------------------
-- Table structure for `t_roles`
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO `t_roles` VALUES ('1', 'ROLE_ADMIN');
INSERT INTO `t_roles` VALUES ('3', 'ROLE_USER');

-- ----------------------------
-- Table structure for `t_text_berjalan`
-- ----------------------------
DROP TABLE IF EXISTS `t_text_berjalan`;
CREATE TABLE `t_text_berjalan` (
  `text_display` varchar(500) NOT NULL,
  `text_tiket` varchar(500) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_text_berjalan
-- ----------------------------
INSERT INTO `t_text_berjalan` VALUES ('SELAMAT DATANG DI BAPENDA  KOTA DUMAI JLN RAJA ALI HAJI', 'SELAMAT DATANG DI DISPENDA', '1');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `id_loket` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('466', 'Administrator', '$2a$10$9ik4o6gGnlJK7jK6bbXf2.gPXIQ1PvyzaemJOLN8k9gskxBbabtr.', 'admin@gmail.com', '1');
INSERT INTO `t_users` VALUES ('561', 'User 1', '$2a$10$ObBc1wlplt.c.wNrfl/PGuGbowfbZr.4xFT9WkKJQHppAJleppxZa', 'user1', '20');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKoi707ac3cjbh0sv6ynijqes1v` (`role_id`),
  CONSTRAINT `t_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `t_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('466', '1');
INSERT INTO `t_user_role` VALUES ('561', '3');
