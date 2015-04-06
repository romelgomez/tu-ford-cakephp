-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-04-2015 a las 16:12:01
-- Versión del servidor: 5.5.37-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cakephp-store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `selected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `parent_id`, `user_id`, `size`, `name`, `name_tag`, `selected`, `deleted`, `created`, `modified`) VALUES
('5522d119-5700-40a3-a9ec-236a7f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'e86a1cd6-555f-4fe5-9aa9-19cee55f9f06.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, 0, '2015-04-06 14:01:53', '2015-04-06 14:59:26'),
('5522d119-7d08-41b0-b922-23607f00000c', '5522d119-9ac0-4cd2-ad16-23607f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '31520745-a081-4309-ae42-c16a787ebdb8.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:01:53', '2015-04-06 14:59:26'),
('5522d119-9ac0-4cd2-ad16-23607f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '314da80a-91f3-4a02-bde9-cf6935045296.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:01:53', '2015-04-06 14:59:26'),
('5522d119-c140-4a1f-9e67-236a7f00000c', '5522d119-5700-40a3-a9ec-236a7f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'c3e65357-6146-4daf-b339-c66f6ea5e1be.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, 0, '2015-04-06 14:01:53', '2015-04-06 14:59:26'),
('5522d13c-634c-4a20-b69f-12787f00000c', '5522d13c-ba38-47e5-8b20-12787f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'c2410b08-f58c-43d0-9b1e-f89100b75467.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, 0, '2015-04-06 14:02:28', '2015-04-06 14:59:26'),
('5522d13c-8f9c-4841-b460-23607f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '9385808b-b85a-4293-a752-99f9b921e7b4.jpg', '120-PG-0750-GR_LG_4.jpg', 0, 0, '2015-04-06 14:02:28', '2015-04-06 14:59:26'),
('5522d13c-ba38-47e5-8b20-12787f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'ec18d75c-d0f0-4f5f-b0f7-81e20864a28f.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, 0, '2015-04-06 14:02:28', '2015-04-06 14:59:26'),
('5522d13c-fb38-42a5-ac2f-23607f00000c', '5522d13c-8f9c-4841-b460-23607f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'ace59b73-5c4d-4412-b1b0-e2d48fe10929.jpg', '120-PG-0750-GR_LG_4.jpg', 0, 0, '2015-04-06 14:02:28', '2015-04-06 14:59:26'),
('5522d237-4400-4c76-a1d3-24a77f00000c', '5522d237-8c80-4e34-93ee-24a77f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '1dd48567-f864-4eff-96d5-30c0a05abafe.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, 0, '2015-04-06 14:06:39', '2015-04-06 14:59:26'),
('5522d237-55b8-4bff-b7ca-11247f00000c', '5522d237-7de4-4d3c-9744-11247f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '2b7f546b-06c4-40e8-b9f3-bef817b9fb74.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, 0, '2015-04-06 14:06:39', '2015-04-06 14:59:26'),
('5522d237-7de4-4d3c-9744-11247f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '5f8420fc-96b6-414c-95e5-46cd35246716.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, 0, '2015-04-06 14:06:39', '2015-04-06 14:59:26'),
('5522d237-8c80-4e34-93ee-24a77f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'e32436cb-f5c8-42ce-bfab-c8c44f96301f.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, 0, '2015-04-06 14:06:39', '2015-04-06 14:59:26'),
('5522d2aa-b90c-4c3b-981d-12787f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '59fa2008-f5e4-4fa3-89ea-606b944a13af.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:08:34', '2015-04-06 14:59:27'),
('5522d2ab-2df0-470d-aa86-218a7f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '577ef968-737f-4966-9b81-688ddaf4fe45.jpg', '120-PG-1500-XR_LG_7.jpg', 0, 0, '2015-04-06 14:08:35', '2015-04-06 14:59:27'),
('5522d2ab-63c4-441e-9df0-12787f00000c', '5522d2aa-b90c-4c3b-981d-12787f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'd5f05ea3-5359-4e17-a484-f82ece2f75d8.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:08:35', '2015-04-06 14:59:27'),
('5522d2ab-67ec-4308-aae3-218a7f00000c', '5522d2ab-2df0-470d-aa86-218a7f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg', '120-PG-1500-XR_LG_7.jpg', 0, 0, '2015-04-06 14:08:35', '2015-04-06 14:59:27'),
('5522d6c6-b85c-49e3-8230-24de7f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '14a97b60-9866-4112-84b8-964f3d468521.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:26:06', '2015-04-06 14:59:27'),
('5522d6c7-ebe8-495e-94f9-24de7f00000c', '5522d6c6-b85c-49e3-8230-24de7f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'e96ddb7c-1f52-470f-ac16-a24c0218d5b4.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:26:07', '2015-04-06 14:59:27'),
('5522de94-e7d8-4801-b9a5-29647f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '9e9057f2-2abb-4d8b-984f-93f9f4a86eab.jpg', 'hero-1.jpg', 0, 0, '2015-04-06 14:59:24', '2015-04-06 14:59:27'),
('5522de95-53e8-4986-80f3-29647f00000c', '5522de94-e7d8-4801-b9a5-29647f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '8a726a00-2490-48b8-9f5c-dd360989049b.jpg', 'hero-1.jpg', 1, 0, '2015-04-06 14:59:25', '2015-04-06 14:59:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cake_sessions`
--

CREATE TABLE IF NOT EXISTS `cake_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cake_sessions`
--

INSERT INTO `cake_sessions` (`id`, `data`, `expires`) VALUES
('4sk1i43ume1701q27enh6gfb01', 'Config|a:3:{s:9:"userAgent";s:32:"55f6b1fe2e3fe037781160074d23dbdc";s:4:"time";i:1421955675;s:9:"countdown";i:10;}Auth|a:1:{s:8:"redirect";s:1:"/";}Message|a:1:{s:4:"auth";a:3:{s:7:"message";s:47:"You are not authorized to access that location.";s:7:"element";s:7:"default";s:6:"params";a:0:{}}}', 1421955675),
('19ho6satuitn85dd3jah4fu2h3', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1428611343;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";N;s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-01-19 14:11:04";}}}', 1428611343);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `parent_id`, `product_id`, `size`, `name`, `name_tag`, `deleted`, `created`, `modified`) VALUES
('54bd5007-4e04-4d2c-8f39-30277f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '4623c957-7843-4eec-9eb6-03f0cec92c4d.jpg', '04G-P4-2699-K2_LG_6.jpg', 1, '2015-01-19 14:12:15', '2015-04-06 14:01:17'),
('54bd5007-5768-4660-97c9-303d7f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '52794aea-4e21-456c-a266-9d3d46ee7156.jpg', '02G-P4-2689-KR_LG_7.jpg', 1, '2015-01-19 14:12:15', '2015-01-19 14:13:01'),
('54bd5007-e378-4423-9068-30277f000008', '54bd5007-4e04-4d2c-8f39-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'cda26c41-e49a-45b2-bf5c-924610634859.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:12:15', '2015-01-19 14:12:15'),
('54bd5008-0a94-4015-b8b2-30277f000008', '54bd5008-2c28-4da9-9efb-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '9bd81baf-043d-4c0d-9dfa-8ba8d346d31d.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-0be4-4957-a786-30277f000008', '54bd5008-47e8-42d1-b58c-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '397abf89-90ce-4e06-9453-5bed99ca9ff4.jpg', '151-SE-E779-K2_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-1990-462d-83da-30277f000008', '54bd5007-4e04-4d2c-8f39-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '08eb44fd-ec99-4264-9405-fdea97ada4be.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-2c28-4da9-9efb-30277f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'ce894b02-6f3d-4e89-b93f-5a33a9ad012c.jpg', '04G-P4-3688-KR_LG_4.jpg', 1, '2015-01-19 14:12:16', '2015-04-06 14:01:17'),
('54bd5008-413c-49f2-8232-303d7f000008', '54bd5008-58e0-4bd9-b1b2-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'd369f96c-ec05-4c47-afc1-366e21b30f9a.jpg', '120-PG-0750-GR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-47e8-42d1-b58c-30277f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'b7ee7556-0166-46bc-b483-867f091dadfc.jpg', '151-SE-E779-K2_LG_4.jpg', 1, '2015-01-19 14:12:16', '2015-04-06 14:01:17'),
('54bd5008-52b4-4476-ae0e-30277f000008', '54bd5008-2c28-4da9-9efb-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '82a3c8a7-021d-4040-88d4-e1c54d389e8a.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-58e0-4bd9-b1b2-303d7f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '208f6c5c-f728-4332-b996-d37b0a847221.jpg', '120-PG-0750-GR_LG_4.jpg', 1, '2015-01-19 14:12:16', '2015-04-06 14:01:18'),
('54bd5008-6fa4-4b57-9bf8-30277f000008', '54bd5008-47e8-42d1-b58c-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '8695ea63-7b5b-4947-af98-34aefe1512e6.jpg', '151-SE-E779-K2_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-92a4-43c4-95b9-303d7f000008', '54bd5007-5768-4660-97c9-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '35cae1b0-c388-44c6-bb1b-a4acaa51edf4.jpg', '02G-P4-2689-KR_LG_7.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-9e78-4ed2-9ad9-303d7f000008', '54bd5007-5768-4660-97c9-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '82b18f9e-8e3b-4bb5-a467-ec6d8f14ee9c.jpg', '02G-P4-2689-KR_LG_7.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-f3e0-4196-80d4-303d7f000008', '54bd5008-58e0-4bd9-b1b2-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '1a480ce5-6844-4a13-8598-360bcb5f48d5.jpg', '120-PG-0750-GR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd583a-4ea0-42ba-abb6-3c1c7f000008', '54bd583a-a5a4-4de3-8a4e-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '53c53c55-38da-4e96-ba81-0ef20fc820ad.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-907c-4397-a545-303d7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '668b45fc-5ec6-4fa1-95c2-bd94b41ba415.jpg', '04G-P4-2699-K2_LG_6.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:02'),
('54bd583a-9d04-4d53-96e8-303d7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '99a37470-37ac-4b92-b86e-c3ff2b7eaa71.jpg', '04G-P4-3688-KR_LG_4.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:02'),
('54bd583a-a5a4-4de3-8a4e-3c1c7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', 'd2d20a68-0ec7-4ce3-b4cd-52e014ef9380.jpg', '04G-P4-2690-KR_LG_4.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:03'),
('54bd583a-b498-4721-b19b-3c1c7f000008', '54bd583a-dea8-4fd1-b740-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '91d752f6-538f-4c7a-bb8a-289b1fbae811.jpg', '04G-P4-2699-K2_LG_7.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-c220-4bd7-8399-303d7f000008', '54bd583a-9d04-4d53-96e8-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '5ec330ad-ffbf-4a20-a15e-84bcf5e8cab4.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-dea8-4fd1-b740-3c1c7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '689f1232-6d8e-45c4-974c-b0fd9190bb2e.jpg', '04G-P4-2699-K2_LG_7.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:03'),
('54bd583a-dfdc-4a3a-8a0d-3c1c7f000008', '54bd583a-a5a4-4de3-8a4e-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '98da58c1-3fa8-4da0-8bfc-e29ae65f22fb.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-e524-40cd-a468-303d7f000008', '54bd583a-907c-4397-a545-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '33c103b7-7c69-49b0-8fda-7049cd42ae20.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-ed20-40fd-be9c-303d7f000008', '54bd583a-907c-4397-a545-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', 'ad4405c3-5d09-4487-89a3-ec62de04dc0b.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583b-0f90-4fb5-97b3-303d7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '8fec37f1-abf4-4537-a8fe-ae6194529890.jpg', '120-PG-1500-XR_LG_4.jpg', 1, '2015-01-19 14:47:15', '2015-04-06 14:01:03'),
('54bd583b-4008-45eb-99a0-303d7f000008', '54bd583b-0f90-4fb5-97b3-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'c59f3020-01ed-485c-8b86-53df0d357700.jpg', '120-PG-1500-XR_LG_4.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-4e5c-4534-86d6-3c1c7f000008', '54bd583a-dea8-4fd1-b740-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '4f6d28bd-85ea-4f92-b7eb-41ca48126f2b.jpg', '04G-P4-2699-K2_LG_7.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-9c58-466b-a803-303d7f000008', '54bd583a-9d04-4d53-96e8-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'ce817c86-6283-4352-99c4-74754c3f36b8.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-aa6c-48d2-ab91-3c1c7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '3554e672-acb6-426e-957c-d053158fdb15.jpg', '120-PG-0750-GR_LG_1.jpg', 1, '2015-01-19 14:47:15', '2015-04-06 14:01:03'),
('54bd583b-b45c-4843-8c76-3c1c7f000008', '54bd583b-aa6c-48d2-ab91-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '3ede507a-6c02-4c2e-a655-c1b1363c4dff.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-d8f0-4ac2-8df8-3c1c7f000008', '54bd583b-aa6c-48d2-ab91-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '31a0962e-a31a-41db-b5d8-29c9b5281c59.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-fb6c-4847-be39-303d7f000008', '54bd583b-0f90-4fb5-97b3-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', 'ebd15355-0e3b-4258-aa14-5c2ce5d50c66.jpg', '120-PG-1500-XR_LG_4.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd5869-24fc-4cee-b02e-3a597f000008', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'e5129e96-d4fb-46b5-a3eb-c791b6f5a5ed.jpg', '04G-P4-2699-K2_LG_4.jpg', 1, '2015-01-19 14:48:01', '2015-04-06 14:00:44'),
('54bd5869-2a20-4022-b19a-3a597f000008', '54bd5869-24fc-4cee-b02e-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '3b1bb2b3-2d86-4aed-a910-71e6738b3eb5.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-703c-467c-a0fc-399d7f000008', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '1f77b265-c0f7-4f92-9a01-536a8a51f73e.jpg', '04G-P4-3688-KR_LG_6.jpg', 1, '2015-01-19 14:48:01', '2015-04-06 14:00:45'),
('54bd5869-7d08-42d8-bed9-3a597f000008', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'efd3bfc6-2d93-4803-a543-f5ab92e2db36.jpg', '120-PG-1500-XR_LG_3.jpg', 1, '2015-01-19 14:48:01', '2015-04-06 14:00:45'),
('54bd5869-88b0-4d90-90c3-399d7f000008', '54bd5869-703c-467c-a0fc-399d7f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '10e49159-1afc-4010-b084-5b8ccffc19e1.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-b814-4546-b908-3a597f000008', '54bd5869-24fc-4cee-b02e-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '10877024-f399-4693-9bcb-2a9212ffe220.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-ede8-47c8-8f76-3a597f000008', '54bd5869-7d08-42d8-bed9-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', 'e1fb975b-cad0-483a-bbbd-56c8ece80e62.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-eeac-4a19-aaf2-3a597f000008', '54bd5869-7d08-42d8-bed9-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'd30047e2-6472-4db6-a1b9-d5bbe6cee840.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-f980-4cda-873d-399d7f000008', '54bd5869-703c-467c-a0fc-399d7f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'f8d63c8a-4e9e-420c-84dc-5992787ec779.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('5522d0db-0958-41cc-a95c-218a7f00000c', '5522d0db-09fc-42a5-be50-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'af0f7d27-81aa-4d84-873f-9225b7f96cd9.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-09fc-42a5-be50-218a7f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'a18f5080-f436-4e1c-b888-2bcf36568f73.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-0bf0-42db-a1c3-21867f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '62c403b3-8a58-48a2-854a-91d63932e640.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-7e48-478b-86bc-21867f00000c', '5522d0db-0bf0-42db-a1c3-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '3ad37a04-c374-4672-882c-cd7d1ff91918.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-9640-483a-ade8-218a7f00000c', '5522d0db-09fc-42a5-be50-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', 'ec7580e1-0e32-4b59-9cd8-f8a90284721c.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-b4f4-46f1-9ee1-21867f00000c', '5522d0db-0bf0-42db-a1c3-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '29c452bb-46e6-4675-b97e-29726718b63f.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0dc-2414-416c-8323-218a7f00000c', '5522d0dc-b834-4d8b-9b92-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '5a52effa-60d8-4e3a-9e27-f87078b170ea.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-2c24-45d0-8932-218a7f00000c', '5522d0dc-b834-4d8b-9b92-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '677127cc-ad8d-4cd2-8c7d-5490a945e722.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-6ea8-4781-bd38-21867f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '0cef97ca-5e19-4a1b-91a6-8b02061777d1.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-9108-447a-8591-21867f00000c', '5522d0dc-6ea8-4781-bd38-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '36a840fd-c179-4f07-96ee-b34807bd1f54.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-b834-4d8b-9b92-218a7f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'd3dfab9a-190a-4b49-b4b0-2ea72eb1b0a8.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-bad0-46dc-a9ce-21867f00000c', '5522d0dc-6ea8-4781-bd38-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'e95ab243-ff88-436d-b23d-69d2c0e983e7.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0ed-0f80-46c7-978b-11237f00000c', '5522d0ed-7acc-482e-a411-11237f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '0b263dae-0267-4d0e-a059-f5bfe1437b8c.jpg', '120-PG-1500-XR_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-181c-4dd1-b42b-10e17f00000c', '5522d0ed-a1b0-4f59-97ff-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'b2ab2e59-7c5d-4275-ba50-bb53360223b9.jpg', '151-SE-E779-K2_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-3058-4256-af91-10e17f00000c', '5522d0ed-a1b0-4f59-97ff-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '04f7c0b6-2e95-461a-875a-aceda8ad4b23.jpg', '151-SE-E779-K2_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-69e0-4aeb-9fdb-10e17f00000c', '5522d0ed-7cc0-46cf-a6cd-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'e7d27e97-0ee8-41a2-8a47-58d1a8cce25c.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-7acc-482e-a411-11237f00000c', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '8bb0e2ff-c403-4b9d-8925-2ef79e7ddef2.jpg', '120-PG-1500-XR_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-7cc0-46cf-a6cd-10e17f00000c', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', 'd7547b44-4e03-49f3-8b99-46674612b212.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-a1b0-4f59-97ff-10e17f00000c', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '1400b914-4a4e-45f5-b500-43acbbcfb418.jpg', '151-SE-E779-K2_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-b2d0-4c88-9ce6-10e17f00000c', '5522d0ed-7cc0-46cf-a6cd-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '7cdf99ed-efd7-4291-a058-7d2125a3e9b2.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-c720-45f6-ab4e-11237f00000c', '5522d0ed-7acc-482e-a411-11237f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '6023f45f-c6f5-4ca8-8e75-5a2c9e19cc2c.jpg', '120-PG-1500-XR_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0fc-0738-47ab-becb-24797f00000c', '5522d0fc-0c34-4d47-a3e2-24797f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '261c4e51-df6d-4df1-8afe-29b62bfcf9e8.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-0c34-4d47-a3e2-24797f00000c', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '44da642b-78e8-4ec2-a266-e9459e990da4.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-2890-4eac-8f01-11247f00000c', '5522d0fc-6d54-48e8-af27-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '7116c7a9-31a7-4d76-bdbd-2330693fa6b6.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-6d54-48e8-af27-11247f00000c', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'b4ffa9d5-c4d7-472d-ac9b-865279864305.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-8a9c-4d08-b3b4-11247f00000c', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'bab89d90-99da-429a-a3f7-2faa3c2152c2.jpg', '151-SE-E779-K2_LG_7.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-8ea8-4ed3-a4ff-24797f00000c', '5522d0fc-0c34-4d47-a3e2-24797f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'd13f8417-a815-4894-b182-3e1145fb543f.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-d15c-4e98-b90a-11247f00000c', '5522d0fc-8a9c-4d08-b3b4-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '5c3fd36e-7009-4a55-9c39-690c5588e1f5.jpg', '151-SE-E779-K2_LG_7.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-d2e8-459e-89ab-11247f00000c', '5522d0fc-8a9c-4d08-b3b4-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '3f5b8305-3780-46dc-8df7-9f39acbfc613.jpg', '151-SE-E779-K2_LG_7.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-f338-45c7-8551-11247f00000c', '5522d0fc-6d54-48e8-af27-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '1edd0d9b-850e-48da-af12-cc7b900495ff.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `price` int(10) unsigned DEFAULT '0',
  `quantity` int(10) unsigned DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'esta publicado o no, 1 es publicado  ',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 es eliminado',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='nodes';

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `body`, `price`, `quantity`, `status`, `published`, `banned`, `deleted`, `created`, `modified`) VALUES
('54bd5007-81e8-4ea7-b04d-303d7f000008', '54bd4fc0-45f0-464f-82f1-33007f000008', 'Case corsair', '<p>ok la ase&nbsp;</p>', 11, 11, 1, 1, 0, 0, '2015-01-19 14:12:15', '2015-04-06 14:01:24'),
('54bd583a-f4d8-4937-b992-3c1c7f000008', '54bd4fc0-45f0-464f-82f1-33007f000008', 'case', '<p>asasa xalskma., salksmnc</p>', 2121, 212, 1, 1, 0, 0, '2015-01-19 14:47:14', '2015-04-06 14:01:09'),
('54bd5868-2ff8-403a-a06e-3a597f000008', '54bd4fc0-45f0-464f-82f1-33007f000008', 'dcsdcsd', '<p>sdcsdcsdcs</p>', 2, 221, 1, 1, 0, 0, '2015-01-19 14:48:00', '2015-04-06 14:00:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `temp_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `banned_reason` varchar(300) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended_reason` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `password`, `temp_password`, `name`, `email`, `email_verified`, `phone`, `banner`, `banned`, `banned_reason`, `suspended`, `suspended_reason`, `deleted`, `created`, `modified`) VALUES
('54bd4fc0-45f0-464f-82f1-33007f000008', '$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa', '$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu', 'Maria', 'mia@gmail.com', 1, NULL, '3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg', 0, NULL, 0, NULL, 0, '2015-01-19 14:11:04', '2015-04-06 14:08:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
