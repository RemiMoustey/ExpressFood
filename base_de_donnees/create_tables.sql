-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 07 août 2020 à 13:06
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `administrator`
--

INSERT INTO `administrator` (`id`, `login`, `password`, `number`, `name`) VALUES
(1, 'admin', 'openclassrooms', 1, 'Administrator');

-- --------------------------------------------------------

--
-- Structure de la table `chef`
--

DROP TABLE IF EXISTS `chef`;
CREATE TABLE IF NOT EXISTS `chef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `chef`
--

INSERT INTO `chef` (`id`, `login`, `password`, `number`, `name`) VALUES
(1, 'chef1', 'openclassrooms', 101, 'Jean'),
(2, 'chef2', 'openclassrooms', 102, 'Jacques'),
(3, 'chef3', 'openclassrooms', 103, 'Francine');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `login`, `password`, `number`, `name`) VALUES
(1, 'remim', 'openclassrooms', 8561, 'Rémi Moustey'),
(2, 'gerardb', 'openclassrooms', 45162, 'Gérard B'),
(3, 'elodiec', 'openclassrooms', 65561, 'Elodie C'),
(4, 'guyh', 'openclassrooms', 4554, 'Guy H'),
(5, 'renej', 'openclassrooms', 79526545, 'René J'),
(6, 'arthurd', 'openclassrooms', 16884, 'Arthur D'),
(7, 'huguettel', 'openclassrooms', 48561, 'Huguette L'),
(8, 'brahima', 'openclassrooms', 58721, 'Brahim A'),
(9, 'akimp', 'openclassrooms', 289416, 'Akim P'),
(10, 'hectorv', 'openclassrooms', 18941854, 'Hector V'),
(11, 'rozaliao', 'openclassrooms', 784521, 'Rozalia O'),
(12, 'jeanclauden', 'openclassrooms', 35489, 'Jean-Claude N');

-- --------------------------------------------------------

--
-- Structure de la table `delivery_address`
--

DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE IF NOT EXISTS `delivery_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `way` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `locality` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_address_fk` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `way`, `complement`, `postal_code`, `locality`, `customer_id`) VALUES
(1, '3 rue des couloirs', NULL, '75000', 'Paris', 2),
(2, '10 quai de Charente', NULL, '75019', 'Paris', 3),
(3, '7 Cité Paradis', NULL, '75010', 'Paris', 3),
(4, '15 avenue des Champs-Élysées', NULL, '75008', 'Paris', 4),
(5, '5 Allée Anne-de-Beaujeu', NULL, '75019', 'Paris', 4),
(6, '10 Avenue Benoît Frachon', NULL, '75020', 'Paris', 4);

-- --------------------------------------------------------

--
-- Structure de la table `delivery_man`
--

DROP TABLE IF EXISTS `delivery_man`;
CREATE TABLE IF NOT EXISTS `delivery_man` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_delivery_man_delivery_man_fk` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `delivery_man`
--

INSERT INTO `delivery_man` (`id`, `login`, `password`, `number`, `name`, `status_id`) VALUES
(1, 'jeanj', 'openclassrooms', 201, 'Jean J', 1),
(2, 'ernestw', 'openclassrooms', 202, 'Ernest W', 1),
(3, 'joelleq', 'openclassrooms', 203, 'Joëlle Q', 3);

-- --------------------------------------------------------

--
-- Structure de la table `dish`
--

DROP TABLE IF EXISTS `dish`;
CREATE TABLE IF NOT EXISTS `dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDessert` tinyint(1) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `day_of_dish` date NOT NULL,
  `creator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `dish`
--

INSERT INTO `dish` (`id`, `name`, `isDessert`, `price`, `day_of_dish`, `creator`) VALUES
(1, 'Saumon grillé', 0, '19', '2020-08-10', 'Jean'),
(2, 'Île flottante', 1, '6', '2020-08-10', 'Jean'),
(3, 'Bœuf bourguignon', 0, '22', '2020-08-10', 'Francine'),
(4, 'Tarte aux pommes', 1, '5', '2020-08-10', 'Jacques');

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `request_id` int(11) NOT NULL,
  `numberDelivery` text COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  KEY `type_payment_payment_fk` (`type_id`),
  KEY `order_payment_fk` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `payment`
--

INSERT INTO `payment` (`request_id`, `numberDelivery`, `type_id`) VALUES
(1, '54887MLG56', 2);

-- --------------------------------------------------------

--
-- Structure de la table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_order` int(11) NOT NULL,
  `date` date NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_order_order_fk` (`status_id`),
  KEY `delivery_man_order_fk` (`delivery_man_id`),
  KEY `delivery_address_order_fk` (`delivery_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `request`
--

INSERT INTO `request` (`id`, `number_order`, `date`, `delivery_man_id`, `delivery_address_id`, `status_id`) VALUES
(1, 15879468, '2020-08-10', 2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `requested_dish`
--

DROP TABLE IF EXISTS `requested_dish`;
CREATE TABLE IF NOT EXISTS `requested_dish` (
  `dish_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  KEY `dish_ordered_dish_fk` (`dish_id`),
  KEY `order_ordered_dish_fk` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `requested_dish`
--

INSERT INTO `requested_dish` (`dish_id`, `request_id`, `quantity`, `total_price`) VALUES
(1, 1, 1, '19'),
(2, 1, 2, '12');

-- --------------------------------------------------------

--
-- Structure de la table `status_delivery_man`
--

DROP TABLE IF EXISTS `status_delivery_man`;
CREATE TABLE IF NOT EXISTS `status_delivery_man` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `status_delivery_man`
--

INSERT INTO `status_delivery_man` (`id`, `status`) VALUES
(1, 'Disponible'),
(2, 'Occupé'),
(3, 'Non disponible');

-- --------------------------------------------------------

--
-- Structure de la table `status_request`
--

DROP TABLE IF EXISTS `status_request`;
CREATE TABLE IF NOT EXISTS `status_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `status_request`
--

INSERT INTO `status_request` (`id`, `status`) VALUES
(1, 'En cours de livraison'),
(2, 'Livrée');

-- --------------------------------------------------------

--
-- Structure de la table `stock_dish`
--

DROP TABLE IF EXISTS `stock_dish`;
CREATE TABLE IF NOT EXISTS `stock_dish` (
  `dish_id` int(11) NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  KEY `dish_stock_dish_fk` (`dish_id`),
  KEY `delivery_man_stock_dish_fk` (`delivery_man_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `stock_dish`
--

INSERT INTO `stock_dish` (`dish_id`, `delivery_man_id`, `quantity`) VALUES
(1, 1, 15),
(1, 2, 25),
(1, 3, 30),
(2, 1, 35),
(2, 2, 23),
(2, 3, 28),
(3, 1, 25),
(3, 2, 20),
(3, 3, 10),
(4, 1, 17),
(4, 2, 18),
(4, 3, 17);

-- --------------------------------------------------------

--
-- Structure de la table `type_payment`
--

DROP TABLE IF EXISTS `type_payment`;
CREATE TABLE IF NOT EXISTS `type_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `type_payment`
--

INSERT INTO `type_payment` (`id`, `type`) VALUES
(1, 'Carte bancaire'),
(2, 'Paypal'),
(3, 'Chèque'),
(4, 'Espèces');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
