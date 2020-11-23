/*
Navicat MySQL Data Transfer

Source Server         : Myconection
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : applaravelpersonajes

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-11-23 07:34:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_11_22_155024_create_personajes_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personajes
-- ----------------------------
DROP TABLE IF EXISTS `personajes`;
CREATE TABLE `personajes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personajes
-- ----------------------------
INSERT INTO `personajes` VALUES ('1', 'Leonor Rippin', 'Ducimus blanditiis asperiores qui veritatis vel.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('2', 'Dr. Lawson Vandervort', 'Quis est dolorem dolorem laborum unde in.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('3', 'Malinda Reynolds', 'Est est sed ratione esse numquam odio.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('4', 'Alysson Bednar Jr.', 'Quibusdam libero asperiores totam velit aut non ut.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('5', 'Prof. Kaley Wisozk', 'Sed quo rerum in soluta.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('6', 'Christa Nikolaus', 'Repellat voluptatibus nesciunt dolores aperiam ipsum et consectetur.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('7', 'Kaylie Hermiston', 'Adipisci voluptatem consequatur culpa dignissimos.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('8', 'Reuben Rutherford', 'Laborum eveniet nihil odio voluptatum aut enim ipsam nesciunt.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('9', 'Destini Medhurst', 'Et ut mollitia omnis unde dolorum et ut.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('10', 'Mr. Enos Wilderman IV', 'Autem recusandae distinctio est.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('11', 'Prof. Alexanne Dooley III', 'Assumenda qui velit id voluptate.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('12', 'Emmitt Dietrich', 'Pariatur et ipsam voluptatibus vitae temporibus.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('13', 'Mavis Bayer', 'Facere perspiciatis nobis ad iusto.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('14', 'Ms. Destiny Mante IV', 'Quam placeat dolor eos deserunt.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('15', 'Prof. Jerrod Bernier I', 'Qui perspiciatis non cupiditate quasi minus.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('16', 'Meggie Sanford Sr.', 'Qui earum praesentium molestiae vel.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('17', 'Zelda Monahan', 'Sit dolor sit qui fugit sint tempore.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('18', 'Robert Leffler I', 'Sunt id aut quisquam sed quia.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('19', 'Dr. Henderson Turner PhD', 'Quasi exercitationem atque ut sit repellat ad.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('20', 'Oliver O\'Kon', 'Ex deleniti quaerat non aperiam dolorum autem.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('21', 'Christine Hoppe', 'Ipsum quaerat aperiam ut libero repellat rerum.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('22', 'Bernard Gottlieb', 'Est libero nulla unde reprehenderit hic nam.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('23', 'Prof. Torrance Rowe I', 'In sed qui nostrum aut qui quisquam.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('24', 'Mr. Sofia Blanda', 'Veritatis debitis est nihil.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('25', 'Deonte Koepp', 'Rem quae voluptatum vero exercitationem et.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('26', 'Jazlyn Dooley', 'Qui et quia veniam illum est nemo repellat.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('27', 'Mr. Brennon Langosh', 'Nihil aut ipsa libero.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('28', 'Prof. Giles Gerlach', 'Nisi distinctio non sed praesentium earum consequatur non.', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
INSERT INTO `personajes` VALUES ('31', 'Iroman', 'Iroman es un personaje que usa traje de hierro.', 'personajes/RKSxqRyY70Hx9m2DqTLIDKr95g0vOlHkKmn7bWlq.jpeg', '2020-11-22 16:41:33', '2020-11-22 17:00:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Frank Lisboa Abad', 'franklisboaabad@gmail.com', null, '$2y$10$/ZKRC6gAmAQcG7q4UVA85utMDLvzfvMxyIa/gjgrAOhB4/cSlLnCC', null, '2020-11-22 15:53:13', '2020-11-22 15:53:13');
