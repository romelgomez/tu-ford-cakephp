-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-04-2015 a las 12:15:39
-- Versión del servidor: 5.5.37-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tu-ford-cakephp`
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
('55366eff-5790-4f06-a96a-17307f00000d', '55366eff-8044-468d-bdd2-17307f00000d', '553663ab-ac70-4623-b043-17bd7f00000d', 'facebook', '784afcf3-eb73-48f9-acf4-129263635200.jpg', 'Directivos-en-Zaragoza-Car.jpg', 1, 0, '2015-04-21 11:08:39', '2015-04-21 11:08:41'),
('55366eff-8044-468d-bdd2-17307f00000d', NULL, '553663ab-ac70-4623-b043-17bd7f00000d', 'small', '7ee45751-bced-4474-9f5a-5a0217ed2123.jpg', 'Directivos-en-Zaragoza-Car.jpg', 0, 0, '2015-04-21 11:08:39', '2015-04-21 11:08:40');

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
('19ho6satuitn85dd3jah4fu2h3', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1428611343;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";N;s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-01-19 14:11:04";}}}', 1428611343),
('0bqdhu09bmb7b59tk5mgv5sjj0', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1429891417;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"553663ab-ac70-4623-b043-17bd7f00000d";s:8:"password";s:60:"$2a$10$LgtmvBkR9uheJg8QUE61duUXdmAXv6DUNcb2EhQMx0dgzoLQu5k7G";s:13:"temp_password";s:60:"$2a$10$4MZ4/YXum5rfjUYqBxziqeDUZzxbtMiSZhFyVufAfL.QCobgNUhGW";s:4:"name";s:5:"Romel";s:5:"email";s:27:"bmxquiksilver7185@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";N;s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-04-21 10:20:19";s:8:"modified";s:19:"2015-04-21 10:20:19";}}}', 1429891417);

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
('5522d0fc-f338-45c7-8551-11247f00000c', '5522d0fc-6d54-48e8-af27-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '1edd0d9b-850e-48da-af12-cc7b900495ff.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('55366b46-1500-4ba7-af3a-1acd7f00000d', '55366b46-f4c8-4bc3-a604-1acd7f00000d', '55366b45-8f54-4954-8eff-1acd7f00000d', 'facebook', '0de3d44c-a111-4b22-9d63-a3922710c139.jpg', '2015-Ford-F-250-Lariat.jpg', 0, '2015-04-21 10:52:46', '2015-04-21 10:52:46'),
('55366b46-34b4-45cc-b5af-1a777f00000d', '55366b46-b5a8-4702-935f-1a777f00000d', '55366b45-8f54-4954-8eff-1acd7f00000d', 'facebook', '05ffe749-0c3b-4a7a-977e-d1adcbb7dae9.jpeg', '2015-Ford-F-250-Super-Duty-Images-Picture-HD-Wallpaper.jpeg', 0, '2015-04-21 10:52:46', '2015-04-21 10:52:46'),
('55366b46-a314-4414-9c62-1acd7f00000d', '55366b46-f4c8-4bc3-a604-1acd7f00000d', '55366b45-8f54-4954-8eff-1acd7f00000d', 'large', 'd28c2cf7-2932-4398-880b-fecc8c41ed63.jpg', '2015-Ford-F-250-Lariat.jpg', 0, '2015-04-21 10:52:46', '2015-04-21 10:52:46'),
('55366b46-b5a8-4702-935f-1a777f00000d', NULL, '55366b45-8f54-4954-8eff-1acd7f00000d', 'small', '815cdc58-b540-458e-899b-a58c289abf80.jpeg', '2015-Ford-F-250-Super-Duty-Images-Picture-HD-Wallpaper.jpeg', 0, '2015-04-21 10:52:46', '2015-04-21 10:52:46'),
('55366b46-ca14-4bac-8063-1a777f00000d', '55366b46-b5a8-4702-935f-1a777f00000d', '55366b45-8f54-4954-8eff-1acd7f00000d', 'large', 'c0e76ff5-8e47-46b6-a1a1-b4e4aa692894.jpeg', '2015-Ford-F-250-Super-Duty-Images-Picture-HD-Wallpaper.jpeg', 0, '2015-04-21 10:52:46', '2015-04-21 10:52:46'),
('55366b46-f4c8-4bc3-a604-1acd7f00000d', NULL, '55366b45-8f54-4954-8eff-1acd7f00000d', 'small', 'd985c702-eb92-4e18-b117-352bcf942641.jpg', '2015-Ford-F-250-Lariat.jpg', 0, '2015-04-21 10:52:46', '2015-04-21 10:52:46'),
('55366d5d-4e88-4706-b0ed-1c567f00000d', '55366d5d-64e8-48bb-98b4-1c567f00000d', '55366d5c-a658-4fbd-9b4e-1c567f00000d', 'facebook', '12787444-d563-481d-8435-c598d188ec9d.jpg', '2015-ford-f-series-super-duty-king-ranch-closer-view.jpg', 0, '2015-04-21 11:01:41', '2015-04-21 11:01:41'),
('55366d5d-64e8-48bb-98b4-1c567f00000d', NULL, '55366d5c-a658-4fbd-9b4e-1c567f00000d', 'small', '31954c13-0c7e-4b41-b324-6bd3e0ddeb00.jpg', '2015-ford-f-series-super-duty-king-ranch-closer-view.jpg', 0, '2015-04-21 11:01:41', '2015-04-21 11:01:41'),
('55366d5d-a6d4-4e63-b8b4-1c567f00000d', '55366d5d-64e8-48bb-98b4-1c567f00000d', '55366d5c-a658-4fbd-9b4e-1c567f00000d', 'large', '2df27128-7f97-40da-8b26-f737990add20.jpg', '2015-ford-f-series-super-duty-king-ranch-closer-view.jpg', 0, '2015-04-21 11:01:41', '2015-04-21 11:01:41'),
('55366d7b-efe4-4744-ac0d-1acd7f00000d', NULL, '55366d5c-a658-4fbd-9b4e-1c567f00000d', 'small', '7ff29e56-4051-4718-89a9-6ca27cbbed00.jpg', '2015-Ford-F-250-XLT.jpg', 0, '2015-04-21 11:02:11', '2015-04-21 11:02:11'),
('55366d7c-6638-4fb4-be07-1acd7f00000d', '55366d7b-efe4-4744-ac0d-1acd7f00000d', '55366d5c-a658-4fbd-9b4e-1c567f00000d', 'facebook', 'fb605d58-0601-49f6-84c4-fabb5abf444b.jpg', '2015-Ford-F-250-XLT.jpg', 0, '2015-04-21 11:02:12', '2015-04-21 11:02:12'),
('55366d7c-c548-460b-bdad-1acd7f00000d', '55366d7b-efe4-4744-ac0d-1acd7f00000d', '55366d5c-a658-4fbd-9b4e-1c567f00000d', 'large', 'f3db27e3-bb3e-49e5-9b70-98f6cdca9b17.jpg', '2015-Ford-F-250-XLT.jpg', 0, '2015-04-21 11:02:12', '2015-04-21 11:02:12'),
('55366e47-1118-42c6-bb5a-1e617f00000d', '55366e47-4ea8-4465-b519-1e617f00000d', '55366e46-b02c-4fe0-bd2d-17bd7f00000d', 'facebook', 'b74d9285-40f2-4a0e-a632-a52d62084b7c.jpg', 'photo.jpg', 0, '2015-04-21 11:05:35', '2015-04-21 11:05:35'),
('55366e47-17e8-4409-9d83-17bd7f00000d', '55366e47-d9e4-4ff2-a2ce-17bd7f00000d', '55366e46-b02c-4fe0-bd2d-17bd7f00000d', 'large', '94d308f4-d31d-418b-9b49-7f2009dec459.jpg', '2015-Ford-F-250-King-Ranch-Review.jpg', 0, '2015-04-21 11:05:35', '2015-04-21 11:05:35'),
('55366e47-1b00-42ba-bfc8-1e617f00000d', '55366e47-4ea8-4465-b519-1e617f00000d', '55366e46-b02c-4fe0-bd2d-17bd7f00000d', 'large', '4bced92e-4832-49e9-bbd4-32eb1d48518b.jpg', 'photo.jpg', 0, '2015-04-21 11:05:35', '2015-04-21 11:05:35'),
('55366e47-4ea8-4465-b519-1e617f00000d', NULL, '55366e46-b02c-4fe0-bd2d-17bd7f00000d', 'small', '5f31eed9-add5-4f38-912e-201bdb4aef7b.jpg', 'photo.jpg', 0, '2015-04-21 11:05:35', '2015-04-21 11:05:35'),
('55366e47-d9e4-4ff2-a2ce-17bd7f00000d', NULL, '55366e46-b02c-4fe0-bd2d-17bd7f00000d', 'small', '4fa1586f-dfab-4e5c-9d41-7e7e4f156d22.jpg', '2015-Ford-F-250-King-Ranch-Review.jpg', 0, '2015-04-21 11:05:35', '2015-04-21 11:05:35'),
('55366e47-eec0-4d5e-bac8-17bd7f00000d', '55366e47-d9e4-4ff2-a2ce-17bd7f00000d', '55366e46-b02c-4fe0-bd2d-17bd7f00000d', 'facebook', 'de59fe00-0ab8-42e9-85a6-9129f4ae383e.jpg', '2015-Ford-F-250-King-Ranch-Review.jpg', 0, '2015-04-21 11:05:35', '2015-04-21 11:05:35');

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
('55366b45-8f54-4954-8eff-1acd7f00000d', '553663ab-ac70-4623-b043-17bd7f00000d', 'Ford 250 2015', '<p>Nice card on Sale</p>\n', 24993, 3, 1, 1, 0, 0, '2015-04-21 10:52:45', '2015-04-21 10:52:56'),
('55366d5c-a658-4fbd-9b4e-1c567f00000d', '553663ab-ac70-4623-b043-17bd7f00000d', 'Ford 250 2015', '<p>Nice card on sale</p>\n', 26995, 2, 1, 1, 0, 0, '2015-04-21 11:01:40', '2015-04-21 11:02:14'),
('55366e46-b02c-4fe0-bd2d-17bd7f00000d', '553663ab-ac70-4623-b043-17bd7f00000d', 'Ford 250 2014', '<p>nice card on sale</p>\n', 23999, 2, 1, 1, 0, 0, '2015-04-21 11:05:34', '2015-04-21 11:05:37');

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
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `banned_reason` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `password`, `temp_password`, `name`, `email`, `email_verified`, `phone`, `banned`, `banned_reason`, `suspended`, `suspended_reason`, `deleted`, `created`, `modified`) VALUES
('54bd4fc0-45f0-464f-82f1-33007f000008', '$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa', '$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu', 'Maria', 'mia@gmail.com', 1, NULL, 0, NULL, 0, NULL, 0, '2015-01-19 14:11:04', '2015-04-06 14:08:38'),
('553663ab-ac70-4623-b043-17bd7f00000d', '$2a$10$LgtmvBkR9uheJg8QUE61duUXdmAXv6DUNcb2EhQMx0dgzoLQu5k7G', '$2a$10$4MZ4/YXum5rfjUYqBxziqeDUZzxbtMiSZhFyVufAfL.QCobgNUhGW', 'Romel', 'bmxquiksilver7185@gmail.com', 1, NULL, 0, NULL, 0, NULL, 0, '2015-04-21 10:20:19', '2015-04-21 10:20:19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
