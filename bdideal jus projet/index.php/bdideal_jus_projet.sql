-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 16 Octobre 2023 à 20:35
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bdideal jus projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `IDCOMMANDE` int(50) NOT NULL AUTO_INCREMENT,
  `IDCLIENT` int(20) NOT NULL,
  `DATECOMMANDE` date NOT NULL,
  `TOTALCOMMANDE` decimal(10,0) NOT NULL,
  `STATUTCOMMANDE` varchar(100) NOT NULL,
  `MODEPAYEMENT` varchar(20) NOT NULL,
  `ADRESSELIVRAISON` varchar(100) NOT NULL,
  `ADRESSEFACTURE` varchar(50) NOT NULL,
  `LISTEPRODUIT` varchar(100) NOT NULL,
  PRIMARY KEY (`IDCOMMANDE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `contacte`
--

CREATE TABLE IF NOT EXISTS `contacte` (
  `IDCONTACTE` int(50) NOT NULL AUTO_INCREMENT,
  `IDCLIENT` int(20) NOT NULL,
  `PRENOMCLIENT` varchar(50) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `NUMERO TELPHONE` varchar(20) NOT NULL,
  `COMMENTAIRE` text NOT NULL,
  `DATE CONTACTE` date NOT NULL,
  `SUJET CONTACTE` varchar(100) NOT NULL,
  PRIMARY KEY (`IDCONTACTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `IDPRODUIT` int(50) NOT NULL,
  `NOM` varchar(20) NOT NULL,
  `PRIX PRODUITS` varchar(50) NOT NULL,
  `CARACTÉRISTIQUESPRODUITS` varchar(100) NOT NULL,
  PRIMARY KEY (`IDPRODUIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`IDPRODUIT`, `NOM`, `PRIX PRODUITS`, `CARACTÉRISTIQUESPRODUITS`) VALUES
(1, 'jus d''orange ', '1250fcfa', 'Le jus d’orange est excellent pour la santé. Il apporte peu, très peu de calories '),
(2, 'jus de bissap', '1500fcfa', 'C’est une boisson 100 % naturelle et elle est reconnaissable.Le bissap a aussi la réputation de dimi'),
(3, 'jus de bouye', '1500fcfa', ' Le bouye a un apport nutritif inestimable. Il est utilisé comme antibiotique.'),
(4, 'jus de ditakh', '1250fcfa', 'Le fruit est caractérisé par sa pulpe verte très riche en vitamine C'),
(5, 'jus de sow', '1250fcfa', 'Le lait est un liquide biologiquecomestible généralement de couleur blanchâtre produit par les gland');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
