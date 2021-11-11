-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql:3306
-- Généré le : jeu. 11 nov. 2021 à 14:00
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `smartengo`
--
CREATE DATABASE IF NOT EXISTS `smartengo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `smartengo`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--
-- Création : jeu. 11 nov. 2021 à 11:28
-- Dernière modification : jeu. 11 nov. 2021 à 11:35
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL,
  `users_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `draft` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `users_id`, `name`, `reference`, `content`, `draft`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem Ipsum', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec velit justo, viverra ac metus at, commodo vehicula elit. Cras pharetra enim diam, non porttitor lectus pharetra a. Maecenas sem erat, convallis sit amet efficitur nec, dignissim sit amet justo. Aliquam nec consequat sapien. Aliquam erat volutpat. Cras sit amet dictum dui. Quisque porttitor faucibus mi vitae consequat. Etiam eget enim vel neque faucibus volutpat. Aenean ac elit malesuada, vulputate sapien in, imperdiet velit. Nullam consequat pulvinar odio, quis consequat sem luctus ut. Pellentesque interdum lorem dolor, ac scelerisque dolor sagittis nec. Sed sed faucibus odio, sed accumsan nulla. Fusce pellentesque orci nibh, aliquam eleifend erat posuere sed. Aliquam placerat, ante id luctus condimentum, nunc diam aliquam enim, vitae efficitur risus arcu in ante. Nulla vitae arcu porta, luctus velit non, dignissim nulla.\n\nInteger placerat arcu nisi, ac molestie risus porta ac. Phasellus et augue dolor. Aenean placerat scelerisque ultricies. Ut sollicitudin nisi urna, id sagittis nisi dapibus id. Nam non leo pretium, molestie libero eu, aliquet lorem. Etiam interdum diam non sem aliquet, in laoreet diam sagittis. Integer imperdiet venenatis tortor id ullamcorper. Nam sit amet suscipit felis, at consequat est. Sed condimentum sagittis orci, placerat semper urna commodo tempus. Aenean ut sem ut sem egestas ultricies at in erat. Integer egestas nibh eget nisl congue viverra.', NULL, '2021-11-11 11:33:55', '2021-11-11 12:06:56'),
(2, 1, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et metus id eros rhoncus faucibus tristique nec augue. Sed porttitor orci quis lacus egestas pellentesque. Etiam ut est tortor. Morbi porta pretium libero sit amet convallis. Pellentesque sodales arcu id elit volutpat, ut scelerisque diam eleifend. Praesent dignissim, nisi sed finibus pretium, lectus turpis volutpat mi, et euismod purus libero eu nibh. Fusce iaculis, justo quis vulputate varius, nisi ex mollis sem, laoreet vulputate erat nibh id neque. Suspendisse sit amet elementum augue. Curabitur mi libero, porttitor ut leo malesuada, aliquam malesuada risus. Curabitur posuere purus felis, in efficitur augue aliquet sed. Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis.\n\nDonec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. Fusce iaculis maximus felis at gravida. Nunc tempus sodales pellentesque. Donec ipsum urna, hendrerit ut urna sed, laoreet fringilla tellus. Sed eget nibh est. Sed elementum, dui et interdum mattis, neque eros dignissim erat, id commodo magna lorem vitae elit. Proin sagittis ligula non urna ornare hendrerit.', NULL, '2021-11-11 11:34:30', NULL),
(3, 1, 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a scelerisque augue, quis luctus augue. Duis consequat elit id ex vulputate, at convallis eros facilisis. Nunc tristique dictum augue non finibus. Praesent nec elit sit amet metus efficitur finibus. Aliquam sagittis velit ac ultrices suscipit. Quisque in libero leo. Vestibulum fringilla pretium arcu tincidunt semper. Donec ut elementum ex, sit amet ornare sem. Donec posuere vestibulum blandit. Aliquam non metus sed tortor egestas lacinia. Aliquam erat volutpat. Curabitur vehicula sapien elit, vel sodales elit egestas in.\n\nQuisque porta purus vel orci luctus, hendrerit malesuada erat dictum. Pellentesque eleifend ornare erat eu interdum. Ut non turpis eget sapien maximus accumsan eu sit amet lectus. Proin placerat, ligula a dapibus ornare, ex tortor tincidunt quam, eget molestie ipsum est ut tellus. Ut in gravida justo. Vivamus ac est eu enim finibus viverra. Suspendisse venenatis, elit eget feugiat eleifend, ex elit euismod ipsum, vestibulum mattis ligula turpis in neque. Praesent scelerisque lacus sed risus aliquam interdum. In vestibulum nibh at ex commodo, vitae porttitor neque elementum. Quisque at lacinia eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras sed suscipit augue. Fusce posuere eleifend purus ac ornare. Sed vitae neque aliquam, fringilla leo eu, pharetra ipsum. Nam volutpat urna quis mauris fringilla lacinia.', NULL, '2021-11-11 11:34:50', NULL),
(4, 1, 'Lorem Ipsum', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a scelerisque augue, quis luctus augue. Duis consequat elit id ex vulputate, at convallis eros facilisis. Nunc tristique dictum augue non finibus. Praesent nec elit sit amet metus efficitur finibus. Aliquam sagittis velit ac ultrices suscipit. Quisque in libero leo. Vestibulum fringilla pretium arcu tincidunt semper. Donec ut elementum ex, sit amet ornare sem. Donec posuere vestibulum blandit. Aliquam non metus sed tortor egestas lacinia. Aliquam erat volutpat. Curabitur vehicula sapien elit, vel sodales elit egestas in.\n\nQuisque porta purus vel orci luctus, hendrerit malesuada erat dictum. Pellentesque eleifend ornare erat eu interdum. Ut non turpis eget sapien maximus accumsan eu sit amet lectus. Proin placerat, ligula a dapibus ornare, ex tortor tincidunt quam, eget molestie ipsum est ut tellus. Ut in gravida justo. Vivamus ac est eu enim finibus viverra. Suspendisse venenatis, elit eget feugiat eleifend, ex elit euismod ipsum, vestibulum mattis ligula turpis in neque. Praesent scelerisque lacus sed risus aliquam interdum. In vestibulum nibh at ex commodo, vitae porttitor neque elementum. Quisque at lacinia eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras sed suscipit augue. Fusce posuere eleifend purus ac ornare. Sed vitae neque aliquam, fringilla leo eu, pharetra ipsum. Nam volutpat urna quis mauris fringilla lacinia.', NULL, '2021-11-11 11:35:06', NULL),
(5, 3, 'Rhoncus aliquet neque', NULL, 'Nunc hendrerit nisl vestibulum orci auctor feugiat. Suspendisse a sodales purus. Ut congue, odio eu consequat volutpat, purus nisl ullamcorper felis, a pretium erat felis ut nunc. Fusce a auctor libero. Duis orci neque, gravida eget finibus non, egestas in leo. Nam fermentum augue nisl, ac imperdiet justo pretium at. Nullam convallis varius leo et aliquam. Proin ac elementum urna. Ut ligula enim, fermentum eget sagittis at, eleifend non risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin maximus imperdiet sollicitudin. Nam bibendum efficitur libero, a consequat magna fringilla ut. In eu accumsan nisl, in vestibulum ligula. Nulla tempor orci a lectus commodo, tristique euismod ipsum suscipit. Aliquam quis volutpat augue, at auctor metus. Vestibulum vehicula luctus ultrices.\n\nAenean aliquam velit sapien, rhoncus aliquet neque ultrices ut. Nunc tempor bibendum libero, ultrices luctus sem aliquam vitae. Morbi molestie gravida tellus, ut pretium dolor tempor ac. Morbi aliquet arcu mauris, a faucibus sapien semper in. Aliquam erat volutpat. Phasellus porta dolor augue, a ultricies elit ullamcorper non. Integer et consectetur eros. Praesent fringilla aliquet arcu vel eleifend. Praesent consectetur tempor malesuada.\n\nQuisque interdum eros mi, id iaculis sapien interdum sit amet. Fusce at accumsan libero. Curabitur sed sapien hendrerit, vulputate mauris in, efficitur leo. Donec luctus efficitur fermentum. Nulla malesuada ipsum ligula. Vestibulum elementum tincidunt turpis eget eleifend. Quisque vitae tempus nisl. Fusce dictum odio eget egestas tincidunt.', NULL, '2021-11-11 13:31:35', NULL),
(6, 3, 'Praesent consectetur tempor malesuada', NULL, 'Nunc hendrerit nisl vestibulum orci auctor feugiat. Suspendisse a sodales purus. Ut congue, odio eu consequat volutpat, purus nisl ullamcorper felis, a pretium erat felis ut nunc. Fusce a auctor libero. Duis orci neque, gravida eget finibus non, egestas in leo. Nam fermentum augue nisl, ac imperdiet justo pretium at. Nullam convallis varius leo et aliquam. Proin ac elementum urna. Ut ligula enim, fermentum eget sagittis at, eleifend non risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin maximus imperdiet sollicitudin. Nam bibendum efficitur libero, a consequat magna fringilla ut. In eu accumsan nisl, in vestibulum ligula. Nulla tempor orci a lectus commodo, tristique euismod ipsum suscipit. Aliquam quis volutpat augue, at auctor metus. Vestibulum vehicula luctus ultrices.\n\nAenean aliquam velit sapien, rhoncus aliquet neque ultrices ut. Nunc tempor bibendum libero, ultrices luctus sem aliquam vitae. Morbi molestie gravida tellus, ut pretium dolor tempor ac. Morbi aliquet arcu mauris, a faucibus sapien semper in. Aliquam erat volutpat. Phasellus porta dolor augue, a ultricies elit ullamcorper non. Integer et consectetur eros. Praesent fringilla aliquet arcu vel eleifend. Praesent consectetur tempor malesuada.\n\nQuisque interdum eros mi, id iaculis sapien interdum sit amet. Fusce at accumsan libero. Curabitur sed sapien hendrerit, vulputate mauris in, efficitur leo. Donec luctus efficitur fermentum. Nulla malesuada ipsum ligula. Vestibulum elementum tincidunt turpis eget eleifend. Quisque vitae tempus nisl. Fusce dictum odio eget egestas tincidunt.', NULL, '2021-11-11 13:32:02', NULL),
(7, 3, 'Mauris in volutpat arcu, quis dignissim mi.', NULL, 'Sed quis tellus sed nisi feugiat pellentesque. Sed volutpat eros id mi sagittis, quis dapibus metus aliquam. Curabitur dignissim ante et rhoncus consequat. Aenean a lorem at augue gravida molestie id eget velit. Maecenas rhoncus eleifend rutrum. Maecenas laoreet facilisis mauris, nec maximus ante dignissim eget. Mauris in volutpat arcu, quis dignissim mi.\n\nNunc hendrerit nisl vestibulum orci auctor feugiat. Suspendisse a sodales purus. Ut congue, odio eu consequat volutpat, purus nisl ullamcorper felis, a pretium erat felis ut nunc. Fusce a auctor libero. Duis orci neque, gravida eget finibus non, egestas in leo. Nam fermentum augue nisl, ac imperdiet justo pretium at. Nullam convallis varius leo et aliquam. Proin ac elementum urna. Ut ligula enim, fermentum eget sagittis at, eleifend non risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin maximus imperdiet sollicitudin. Nam bibendum efficitur libero, a consequat magna fringilla ut. In eu accumsan nisl, in vestibulum ligula. Nulla tempor orci a lectus commodo, tristique euismod ipsum suscipit. Aliquam quis volutpat augue, at auctor metus. Vestibulum vehicula luctus ultrices.', NULL, '2021-11-11 13:32:29', NULL),
(8, 2, 'hasellus et augue dolor. Aenean placerat scelerisque ultricies.', NULL, 'Quisque porttitor faucibus mi vitae consequat. Etiam eget enim vel neque faucibus volutpat. Aenean ac elit malesuada, vulputate sapien in, imperdiet velit. Nullam consequat pulvinar odio, quis consequat sem luctus ut. Pellentesque interdum lorem dolor, ac scelerisque dolor sagittis nec. Sed sed faucibus odio, sed accumsan nulla. Fusce pellentesque orci nibh, aliquam eleifend erat posuere sed. Aliquam placerat, ante id luctus condimentum, nunc diam aliquam enim, vitae efficitur risus arcu in ante. Nulla vitae arcu porta, luctus velit non, dignissim nulla. Integer placerat arcu nisi, ac molestie risus porta ac. Phasellus et augue dolor. Aenean placerat scelerisque ultricies. Ut sollicitudin nisi urna, id sagittis nisi dapibus id. Nam non leo pretium, molestie libero eu, aliquet lorem. Etiam interdum diam non sem aliquet, in laoreet diam sagittis. Integer imperdiet venenatis tortor id ullamcorper. Nam sit amet suscipit felis, at consequat est. Sed condimentum sagittis orci, placerat semper urna commodo tempus. Aenean ut sem ut sem egestas ultricies at in erat. Integer egestas nibh eget nisl congue viverra.', NULL, '2021-11-11 13:49:54', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--
-- Création : jeu. 11 nov. 2021 à 11:28
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL,
  `articles_id` int DEFAULT NULL,
  `users_id` int DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `articles_id`, `users_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 'Nulla malesuada ipsum ligula.', '2021-11-11 13:32:45', NULL),
(2, 1, 3, 'Aenean placerat scelerisque ultricies. Ut sollicitudin nisi urna, id sagittis nisi dapibus id. Nam non leo pretium, molestie libero eu, aliquet lorem. Etiam interdum diam non sem aliquet, in laoreet diam sagittis. Integer imperdiet venenatis tortor id ullamcorper. Nam sit amet suscipit felis, at consequat est', '2021-11-11 13:35:35', NULL),
(3, 8, 2, 'Etiam interdum diam non sem aliquet, in laoreet diam sagittis. Integer imperdiet venenatis tortor id ullamcorper. Nam sit amet suscipit felis, at consequat est. Sed condimentum sagittis orci, placerat semper urna commodo tempus. Aenean ut sem ut sem egestas ultricies at in erat. Integer egestas nibh eget nisl congue viverra.', '2021-11-11 13:50:08', NULL),
(4, 2, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:52:40', NULL),
(5, 3, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:52:47', NULL),
(6, 4, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:52:55', NULL),
(7, 5, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:53:03', NULL),
(8, 8, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:53:26', NULL),
(9, 1, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:53:57', NULL),
(10, 8, 2, 'Mauris ultricies pellentesque mollis. Phasellus eu purus nibh. Pellentesque efficitur lorem eros, sed vestibulum ante accumsan quis. Donec at mattis augue, ac euismod diam. Mauris accumsan, magna sed scelerisque tempor, urna tortor commodo nulla, ut auctor neque nulla eu ligula. Morbi ac consectetur ex, eget congue risus. Duis eget aliquam nisl. Fusce hendrerit enim ante, eu pulvinar neque volutpat eu. Curabitur vulputate metus a felis placerat porttitor. Integer euismod vestibulum vestibulum. ', '2021-11-11 13:54:16', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reaction`
--
-- Création : jeu. 11 nov. 2021 à 11:28
--

DROP TABLE IF EXISTS `reaction`;
CREATE TABLE `reaction` (
  `id` int NOT NULL,
  `articles_id` int DEFAULT NULL,
  `users_id` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reaction`
--

INSERT INTO `reaction` (`id`, `articles_id`, `users_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'hand-thumbs-up', '2021-11-11 13:35:36', NULL),
(2, 1, 3, 'lightbulb', '2021-11-11 13:35:36', NULL),
(3, 1, 3, 'heart', '2021-11-11 13:35:37', NULL),
(4, 4, 3, 'lightbulb', '2021-11-11 13:35:47', NULL),
(5, 4, 3, 'heart', '2021-11-11 13:35:47', NULL),
(6, 7, 3, 'lightbulb', '2021-11-11 13:35:51', NULL),
(7, 2, 3, 'hand-thumbs-up', '2021-11-11 13:35:54', NULL),
(8, 2, 3, 'heart', '2021-11-11 13:35:54', NULL),
(9, 1, 2, 'lightbulb', '2021-11-11 13:36:31', NULL),
(10, 3, 2, 'lightbulb', '2021-11-11 13:38:59', NULL),
(11, 3, 2, 'hand-thumbs-up', '2021-11-11 13:39:16', NULL),
(12, 3, 2, 'heart', '2021-11-11 13:39:20', NULL),
(13, 7, 2, 'hand-thumbs-up', '2021-11-11 13:39:36', NULL),
(14, 1, 2, 'heart', '2021-11-11 13:53:59', NULL),
(15, 8, 2, 'hand-thumbs-up', '2021-11-11 13:54:17', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--
-- Création : jeu. 11 nov. 2021 à 11:26
-- Dernière modification : jeu. 11 nov. 2021 à 11:26
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2021-11-11', '2021-11-11'),
(2, 'admin', '2021-11-11', '2021-11-11');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--
-- Création : jeu. 11 nov. 2021 à 11:28
-- Dernière modification : jeu. 11 nov. 2021 à 11:29
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Software', '2021-11-11 11:29:40', NULL),
(2, 'Development', '2021-11-11 11:29:40', NULL),
(3, 'Cooking', '2021-11-11 11:29:40', NULL),
(4, 'Cars', '2021-11-11 11:29:40', NULL),
(5, 'Cinema', '2021-11-11 11:29:40', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tag_article`
--
-- Création : jeu. 11 nov. 2021 à 11:28
--

DROP TABLE IF EXISTS `tag_article`;
CREATE TABLE `tag_article` (
  `tag_id` int NOT NULL,
  `article_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag_article`
--

INSERT INTO `tag_article` (`tag_id`, `article_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--
-- Création : jeu. 11 nov. 2021 à 11:28
-- Dernière modification : jeu. 11 nov. 2021 à 11:30
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'kamel', 'kamel@smartengo.com', '$2a$08$Cc16ZAxTyWuiG03O0ea4beNzi0WkJCSZzUFauYGFGqYrglEf6kuPe', '2021-11-11 11:30:27', '2021-11-11 11:30:27'),
(2, 'jean', 'jean@smartengo.com', '$2a$08$CCxkkh1jeVHs7UpAnOBQ0ujbCLaaarUVFjEAPiKND9Ngd1sSiT.r.', '2021-11-11 13:28:45', '2021-11-11 13:28:45'),
(3, 'philippine', 'pleroy@smartengo.com', '$2a$08$rDGPeagh4A54vquenEX9qOWye.dv/5RHU4Li.7tM6PebvxXgwYJuq', '2021-11-11 13:29:19', '2021-11-11 13:29:19');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--
-- Création : jeu. 11 nov. 2021 à 11:28
-- Dernière modification : jeu. 11 nov. 2021 à 11:30
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roles_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`createdAt`, `updatedAt`, `roles_id`, `user_id`) VALUES
('2021-11-11 11:30:27', '2021-11-11 11:30:27', 1, 1),
('2021-11-11 13:28:45', '2021-11-11 13:28:45', 1, 2),
('2021-11-11 13:29:19', '2021-11-11 13:29:19', 1, 3),
('2021-11-11 11:30:27', '2021-11-11 11:30:27', 2, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6667B3B43D` (`users_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C1EBAF6CC` (`articles_id`),
  ADD KEY `IDX_9474526C67B3B43D` (`users_id`);

--
-- Index pour la table `reaction`
--
ALTER TABLE `reaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A4D707F71EBAF6CC` (`articles_id`),
  ADD KEY `IDX_A4D707F767B3B43D` (`users_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag_article`
--
ALTER TABLE `tag_article`
  ADD PRIMARY KEY (`tag_id`,`article_id`),
  ADD KEY `IDX_300B23CCBAD26311` (`tag_id`),
  ADD KEY `IDX_300B23CC7294869C` (`article_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`roles_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reaction`
--
ALTER TABLE `reaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
