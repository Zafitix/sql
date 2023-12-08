-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 déc. 2023 à 20:17
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `signup`
--

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance_pending` decimal(10,2) NOT NULL DEFAULT '0.00',
  `xp` int NOT NULL DEFAULT '0',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'member',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `register_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` int NOT NULL DEFAULT '0',
  `lifetime_earnings` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lifetime_withdrawn` decimal(10,2) NOT NULL DEFAULT '0.00',
  `completed_offers` int NOT NULL DEFAULT '0',
  `users_refered` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `balance`, `balance_pending`, `xp`, `role`, `banned`, `register_ip`, `join_date`, `level`, `lifetime_earnings`, `lifetime_withdrawn`, `completed_offers`, `users_refered`) VALUES
(1, 'admin667', 'admin667@gmail.com', '125', '667.00', '667.00', 667, 'admin667', 1, '667', '2023-08-08 20:42:26', 667, '667.00', '667.00', 667, 667),
(38, 'Owner', 'owner@gmail.com', '$2b$10$tBeoQ5.vlCfLSEAFB0.sw.PbJGbtWelUKYoul/.Pi/AsN6LL9ZyMe', '0.00', '0.00', 0, 'owner', 0, '', '2023-12-03 18:36:28', 0, '0.00', '0.00', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
