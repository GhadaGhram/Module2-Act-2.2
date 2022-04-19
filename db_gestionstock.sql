-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 avr. 2022 à 14:45
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_gestionstock`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int NOT NULL AUTO_INCREMENT,
  `nomclient` varchar(128) NOT NULL,
  `telephone` int NOT NULL,
  `abonnement` enum('premium','vip','classique','') NOT NULL,
  `interet` set('sport','cinema','musique','') NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `nomclient`, `telephone`, `abonnement`, `interet`) VALUES
(1, 'Ghada Ghram', 99737510, 'premium', 'sport,musique'),
(2, 'Ayoub Youssef', 99737511, 'vip', 'sport'),
(3, 'Aziz Ouni', 99737512, 'classique', 'musique'),
(4, 'Jihene Saidene', 99737513, 'vip', 'cinema'),
(5, 'Moez Taleb', 99737514, 'premium', 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `idfournisseur` int NOT NULL AUTO_INCREMENT,
  `nomfournisseur` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idfournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`idfournisseur`, `nomfournisseur`) VALUES
(1, 'conservatoire municipale'),
(2, 'california gym');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `idproduit` int NOT NULL AUTO_INCREMENT,
  `nomproduit` varchar(128) NOT NULL,
  `type` varchar(256) NOT NULL,
  `marque` varchar(128) NOT NULL,
  `réference_au_fournisseur` varchar(128) NOT NULL,
  PRIMARY KEY (`idproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`idproduit`, `nomproduit`, `type`, `marque`, `réference_au_fournisseur`) VALUES
(1, 'groupe de chant', 'act musicale', 'adulte', 'conservatoire municipale'),
(2, 'corale', 'act musicale', 'enfant', 'conservatoire municipale'),
(3, 'bluepasssport', 'act sportive', 'adulte', 'california gym'),
(4, 'islandkids', 'act sportive', 'enfant', 'california gym');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
